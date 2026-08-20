inline.NumInlined: 93
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::allocator" = type { i8 }

$_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

@.str = private unnamed_addr constant [60 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/math/do_fit.cpp\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"calc_fit_R called with ndim=%d instead of 3 or 2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"omega\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"om\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"omega[i]\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"om[i]\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"IROT=0\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"incons\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"More than 3 dimensions not supported.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef float @_Z16calc_similar_indbiPKiPKfPA3_fS4_(i1 noundef zeroext %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %wide.trip.count111 = zext nneg i32 %1 to i64   ; 6 uses
  br i1 %0, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not, label %.split.us.us.us, label %.split.us.us

.split.us.us.us:                                  ; preds = %.lr.ph.split.us, %.split.us.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %.split.us.us.us ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %.054.us.us = phi float [ %i.ad, %.split.us.us.us ], [ 0.000000e+00, %.lr.ph.split.us ]
  %.03753.us.us = phi float [ %i.ag, %.split.us.us.us ], [ 0.000000e+00, %.lr.ph.split.us ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv108
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 6 uses
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv108 ; 3 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv108 ; 3 uses
  %i.f = load float, ptr %i.d, align 4, !tbaa !9  ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !9  ; 2 uses
  %i.h = fsub float %i.f, %i.g                    ; 2 uses
  %i.i = fmul float %i.h, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.c, float %i.i, float %.054.us.us)
  %i.k = fadd float %i.f, %i.g                    ; 2 uses
  %i.l = fmul float %i.k, %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.c, float %i.l, float %.03753.us.us)
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !9  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !9  ; 2 uses
  %i.r = fsub float %i.o, %i.q                    ; 2 uses
  %i.s = fmul float %i.r, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.c, float %i.s, float %i.j)
  %i.u = fadd float %i.o, %i.q                    ; 2 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.c, float %i.v, float %i.m)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !9  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !9 ; 2 uses
  %i.ab = fsub float %i.y, %i.aa                  ; 2 uses
  %i.ac = fmul float %i.ab, %i.ab
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.c, float %i.ac, float %i.t) ; 2 uses
  %i.ae = fadd float %i.y, %i.aa                  ; 2 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.c, float %i.af, float %i.w) ; 2 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge.thread, label %.split.us.us.us, !llvm.loop !11

.split.us.us:                                     ; preds = %.lr.ph.split.us, %.split.us.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.split.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.054.us = phi float [ %i.bm, %.split.us.us ], [ 0.000000e+00, %.lr.ph.split.us ]
  %.03753.us = phi float [ %i.bp, %.split.us.us ], [ 0.000000e+00, %.lr.ph.split.us ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv99
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !13
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %3, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !9 ; 6 uses
  %i.am = getelementptr inbounds [12 x i8], ptr %4, i64 %i.aj ; 3 uses
  %i.an = getelementptr inbounds [12 x i8], ptr %5, i64 %i.aj ; 3 uses
  %i.ao = load float, ptr %i.am, align 4, !tbaa !9 ; 2 uses
  %i.ap = load float, ptr %i.an, align 4, !tbaa !9 ; 2 uses
  %i.aq = fsub float %i.ao, %i.ap                 ; 2 uses
  %i.ar = fmul float %i.aq, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ar, float %.054.us)
  %i.at = fadd float %i.ao, %i.ap                 ; 2 uses
  %i.au = fmul float %i.at, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %i.al, float %i.au, float %.03753.us)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !9 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !9 ; 2 uses
  %i.ba = fsub float %i.ax, %i.az                 ; 2 uses
  %i.bb = fmul float %i.ba, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bb, float %i.as)
  %i.bd = fadd float %i.ax, %i.az                 ; 2 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.al, float %i.be, float %i.av)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !9 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !9 ; 2 uses
  %i.bk = fsub float %i.bh, %i.bj                 ; 2 uses
  %i.bl = fmul float %i.bk, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bl, float %i.bc) ; 2 uses
  %i.bn = fadd float %i.bh, %i.bj                 ; 2 uses
  %i.bo = fmul float %i.bn, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bo, float %i.bf) ; 2 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count111
  br i1 %exitcond103.not, label %._crit_edge.thread, label %.split.us.us, !llvm.loop !11

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %.lr.ph.split
  %xtraiter = and i64 %wide.trip.count111, 1
  %i.bq = icmp eq i32 %1, 1
  br i1 %i.bq, label %.split.epil.preheader, label %.split.preheader.new

.split.preheader.new:                             ; preds = %.split.preheader
  %unroll_iter = and i64 %wide.trip.count111, 2147483646
  br label %.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %xtraiter157 = and i64 %wide.trip.count111, 1
  %i.br = icmp eq i32 %1, 1
  br i1 %i.br, label %.split.us.epil.preheader, label %.split.us.preheader.new

.split.us.preheader.new:                          ; preds = %.split.us.preheader
  %unroll_iter162 = and i64 %wide.trip.count111, 2147483646
  br label %.split.us

.split.us:                                        ; preds = %.split.us, %.split.us.preheader.new
  %indvars.iv90 = phi i64 [ 0, %.split.us.preheader.new ], [ %indvars.iv.next91.1, %.split.us ] ; 5 uses
  %.054.us60 = phi float [ 0.000000e+00, %.split.us.preheader.new ], [ %i.de, %.split.us ]
  %.03952.us61 = phi float [ 0.000000e+00, %.split.us.preheader.new ], [ %i.df, %.split.us ]
  %niter163 = phi i64 [ 0, %.split.us.preheader.new ], [ %niter163.next.1, %.split.us ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv90
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !9 ; 4 uses
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv90 ; 2 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv90 ; 2 uses
  %i.bw = load float, ptr %i.bu, align 4, !tbaa !9
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !9
  %i.by = fsub float %i.bw, %i.bx                 ; 2 uses
  %i.bz = fmul float %i.by, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bz, float %.054.us60)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cd = load <2 x float>, ptr %i.cb, align 4, !tbaa !9
  %i.ce = load <2 x float>, ptr %i.cc, align 4, !tbaa !9
  %i.cf = fsub <2 x float> %i.cd, %i.ce           ; 2 uses
  %i.cg = fmul <2 x float> %i.cf, %i.cf           ; 2 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 0
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.ch, float %i.ca)
  %i.cj = extractelement <2 x float> %i.cg, i64 1
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.cj, float %i.ci)
  %i.cl = fadd float %.03952.us61, %i.bt
  %indvars.iv.next91 = or disjoint i64 %indvars.iv90, 1 ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next91
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !9 ; 4 uses
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv.next91 ; 2 uses
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv.next91 ; 2 uses
  %i.cq = load float, ptr %i.co, align 4, !tbaa !9
  %i.cr = load float, ptr %i.cp, align 4, !tbaa !9
  %i.cs = fsub float %i.cq, %i.cr                 ; 2 uses
  %i.ct = fmul float %i.cs, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.ct, float %i.ck)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cx = load <2 x float>, ptr %i.cv, align 4, !tbaa !9
  %i.cy = load <2 x float>, ptr %i.cw, align 4, !tbaa !9
  %i.cz = fsub <2 x float> %i.cx, %i.cy           ; 2 uses
  %i.da = fmul <2 x float> %i.cz, %i.cz           ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.db, float %i.cu)
  %i.dd = extractelement <2 x float> %i.da, i64 1
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.dd, float %i.dc) ; 3 uses
  %i.df = fadd float %i.cl, %i.cn                 ; 3 uses
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 2 ; 2 uses
  %niter163.next.1 = add nuw i64 %niter163, 2     ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %._crit_edge.thread121.loopexit.unr-lcssa, label %.split.us, !llvm.loop !11

.split:                                           ; preds = %.split, %.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.split.preheader.new ], [ %indvars.iv.next.1, %.split ] ; 3 uses
  %.054 = phi float [ 0.000000e+00, %.split.preheader.new ], [ %i.ez, %.split ]
  %.03952 = phi float [ 0.000000e+00, %.split.preheader.new ], [ %i.fa, %.split ]
  %niter = phi i64 [ 0, %.split.preheader.new ], [ %niter.next.1, %.split ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !13
  %i.di = sext i32 %i.dh to i64                   ; 3 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !9 ; 4 uses
  %i.dl = getelementptr inbounds [12 x i8], ptr %4, i64 %i.di ; 2 uses
  %i.dm = getelementptr inbounds [12 x i8], ptr %5, i64 %i.di ; 2 uses
  %i.dn = load float, ptr %i.dl, align 4, !tbaa !9
  %i.do = load float, ptr %i.dm, align 4, !tbaa !9
  %i.dp = fsub float %i.dn, %i.do                 ; 2 uses
  %i.dq = fmul float %i.dp, %i.dp
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dq, float %.054)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.du = load <2 x float>, ptr %i.ds, align 4, !tbaa !9
  %i.dv = load <2 x float>, ptr %i.dt, align 4, !tbaa !9
  %i.dw = fsub <2 x float> %i.du, %i.dv           ; 2 uses
  %i.dx = fmul <2 x float> %i.dw, %i.dw           ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dy, float %i.dr)
  %i.ea = extractelement <2 x float> %i.dx, i64 1
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.ea, float %i.dz)
  %i.ec = fadd float %.03952, %i.dk
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !13
  %i.eg = sext i32 %i.ef to i64                   ; 3 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !9 ; 4 uses
  %i.ej = getelementptr inbounds [12 x i8], ptr %4, i64 %i.eg ; 2 uses
  %i.ek = getelementptr inbounds [12 x i8], ptr %5, i64 %i.eg ; 2 uses
  %i.el = load float, ptr %i.ej, align 4, !tbaa !9
  %i.em = load float, ptr %i.ek, align 4, !tbaa !9
  %i.en = fsub float %i.el, %i.em                 ; 2 uses
  %i.eo = fmul float %i.en, %i.en
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.eo, float %i.eb)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.es = load <2 x float>, ptr %i.eq, align 4, !tbaa !9
  %i.et = load <2 x float>, ptr %i.er, align 4, !tbaa !9
  %i.eu = fsub <2 x float> %i.es, %i.et           ; 2 uses
  %i.ev = fmul <2 x float> %i.eu, %i.eu           ; 2 uses
  %i.ew = extractelement <2 x float> %i.ev, i64 0
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ew, float %i.ep)
  %i.ey = extractelement <2 x float> %i.ev, i64 1
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ey, float %i.ex) ; 3 uses
  %i.fa = fadd float %i.ec, %i.ei                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread121.loopexit151.unr-lcssa, label %.split, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.a
  br i1 %0, label %._crit_edge.thread, label %._crit_edge.thread121

._crit_edge.thread:                               ; preds = %.split.us.us, %.split.us.us.us, %._crit_edge
  %.0.lcssa118 = phi float [ 0.000000e+00, %._crit_edge ], [ %i.ad, %.split.us.us.us ], [ %i.bm, %.split.us.us ]
  %.037.lcssa117 = phi float [ 0.000000e+00, %._crit_edge ], [ %i.ag, %.split.us.us.us ], [ %i.bp, %.split.us.us ]
  %i.fb = fdiv float %.0.lcssa118, %.037.lcssa117
  %i.fc = tail call noundef float @sqrtf(float noundef %i.fb) #16
  %i.fd = fmul float %i.fc, 2.000000e+00
  br label %bb.b

._crit_edge.thread121.loopexit.unr-lcssa:         ; preds = %.split.us
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.thread121, label %.split.us.epil.preheader

.split.us.epil.preheader:                         ; preds = %._crit_edge.thread121.loopexit.unr-lcssa, %.split.us.preheader
  %indvars.iv90.epil.init = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next91.1, %._crit_edge.thread121.loopexit.unr-lcssa ] ; 3 uses
  %.054.us60.epil.init = phi float [ 0.000000e+00, %.split.us.preheader ], [ %i.de, %._crit_edge.thread121.loopexit.unr-lcssa ]
  %.03952.us61.epil.init = phi float [ 0.000000e+00, %.split.us.preheader ], [ %i.df, %._crit_edge.thread121.loopexit.unr-lcssa ]
  %lcmp.mod161 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv90.epil.init
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !9 ; 4 uses
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv90.epil.init ; 2 uses
  %i.fh = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv90.epil.init ; 2 uses
  %i.fi = load float, ptr %i.fg, align 4, !tbaa !9
  %i.fj = load float, ptr %i.fh, align 4, !tbaa !9
  %i.fk = fsub float %i.fi, %i.fj                 ; 2 uses
  %i.fl = fmul float %i.fk, %i.fk
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.fl, float %.054.us60.epil.init)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fp = load <2 x float>, ptr %i.fn, align 4, !tbaa !9
  %i.fq = load <2 x float>, ptr %i.fo, align 4, !tbaa !9
  %i.fr = fsub <2 x float> %i.fp, %i.fq           ; 2 uses
  %i.fs = fmul <2 x float> %i.fr, %i.fr           ; 2 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 0
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.ft, float %i.fm)
  %i.fv = extractelement <2 x float> %i.fs, i64 1
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.fv, float %i.fu)
  %i.fx = fadd float %.03952.us61.epil.init, %i.ff
  br label %._crit_edge.thread121

._crit_edge.thread121.loopexit151.unr-lcssa:      ; preds = %.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread121, label %.split.epil.preheader

.split.epil.preheader:                            ; preds = %._crit_edge.thread121.loopexit151.unr-lcssa, %.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.thread121.loopexit151.unr-lcssa ]
  %.054.epil.init = phi float [ 0.000000e+00, %.split.preheader ], [ %i.ez, %._crit_edge.thread121.loopexit151.unr-lcssa ]
  %.03952.epil.init = phi float [ 0.000000e+00, %.split.preheader ], [ %i.fa, %._crit_edge.thread121.loopexit151.unr-lcssa ]
  %lcmp.mod156 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !13
  %i.ga = sext i32 %i.fz to i64                   ; 3 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !9 ; 4 uses
  %i.gd = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ga ; 2 uses
  %i.ge = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ga ; 2 uses
  %i.gf = load float, ptr %i.gd, align 4, !tbaa !9
  %i.gg = load float, ptr %i.ge, align 4, !tbaa !9
  %i.gh = fsub float %i.gf, %i.gg                 ; 2 uses
  %i.gi = fmul float %i.gh, %i.gh
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.gi, float %.054.epil.init)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gm = load <2 x float>, ptr %i.gk, align 4, !tbaa !9
  %i.gn = load <2 x float>, ptr %i.gl, align 4, !tbaa !9
  %i.go = fsub <2 x float> %i.gm, %i.gn           ; 2 uses
  %i.gp = fmul <2 x float> %i.go, %i.go           ; 2 uses
  %i.gq = extractelement <2 x float> %i.gp, i64 0
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.gq, float %i.gj)
  %i.gs = extractelement <2 x float> %i.gp, i64 1
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.gs, float %i.gr)
  %i.gu = fadd float %.03952.epil.init, %i.gc
  br label %._crit_edge.thread121

._crit_edge.thread121:                            ; preds = %.split.epil.preheader, %._crit_edge.thread121.loopexit151.unr-lcssa, %.split.us.epil.preheader, %._crit_edge.thread121.loopexit.unr-lcssa, %._crit_edge
  %.0.lcssa126 = phi float [ 0.000000e+00, %._crit_edge ], [ %i.fw, %.split.us.epil.preheader ], [ %i.de, %._crit_edge.thread121.loopexit.unr-lcssa ], [ %i.ez, %._crit_edge.thread121.loopexit151.unr-lcssa ], [ %i.gt, %.split.epil.preheader ]
  %.039.lcssa125 = phi float [ 0.000000e+00, %._crit_edge ], [ %i.fx, %.split.us.epil.preheader ], [ %i.df, %._crit_edge.thread121.loopexit.unr-lcssa ], [ %i.fa, %._crit_edge.thread121.loopexit151.unr-lcssa ], [ %i.gu, %.split.epil.preheader ]
  %i.gv = fdiv float %.0.lcssa126, %.039.lcssa125
  %i.gw = tail call noundef float @sqrtf(float noundef %i.gv) #16
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread121, %._crit_edge.thread
  %.043 = phi float [ %i.fd, %._crit_edge.thread ], [ %i.gw, %._crit_edge.thread121 ]
  ret float %.043
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef float @_Z10rmsdev_indiPiPfPA3_fS2_(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.i, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  %wide.trip.count111.i = zext nneg i32 %0 to i64 ; 4 uses
  br i1 %.not.i, label %.split.us.i.preheader, label %.split.i.preheader

.split.i.preheader:                               ; preds = %.lr.ph.i
  %xtraiter = and i64 %wide.trip.count111.i, 1
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.split.i.epil.preheader, label %.split.i.preheader.new

.split.i.preheader.new:                           ; preds = %.split.i.preheader
  %unroll_iter = and i64 %wide.trip.count111.i, 2147483646
  br label %.split.i

.split.us.i.preheader:                            ; preds = %.lr.ph.i
  %xtraiter28 = and i64 %wide.trip.count111.i, 1
  %i.c = icmp eq i32 %0, 1
  br i1 %i.c, label %.split.us.i.epil.preheader, label %.split.us.i.preheader.new

.split.us.i.preheader.new:                        ; preds = %.split.us.i.preheader
  %unroll_iter33 = and i64 %wide.trip.count111.i, 2147483646
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %.split.us.i.preheader.new
  %indvars.iv90.i = phi i64 [ 0, %.split.us.i.preheader.new ], [ %indvars.iv.next91.i.1, %.split.us.i ] ; 5 uses
  %.054.us60.i = phi float [ 0.000000e+00, %.split.us.i.preheader.new ], [ %i.ap, %.split.us.i ]
  %.03952.us61.i = phi float [ 0.000000e+00, %.split.us.i.preheader.new ], [ %i.aq, %.split.us.i ]
  %niter34 = phi i64 [ 0, %.split.us.i.preheader.new ], [ %niter34.next.1, %.split.us.i ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv90.i
  %i.e = load float, ptr %i.d, align 4, !tbaa !9  ; 4 uses
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv90.i ; 2 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv90.i ; 2 uses
  %i.h = load float, ptr %i.f, align 4, !tbaa !9
  %i.i = load float, ptr %i.g, align 4, !tbaa !9
  %i.j = fsub float %i.h, %i.i                    ; 2 uses
  %i.k = fmul float %i.j, %i.j
  %i.l = tail call float @llvm.fmuladd.f32(float %i.e, float %i.k, float %.054.us60.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.o = load <2 x float>, ptr %i.m, align 4, !tbaa !9
  %i.p = load <2 x float>, ptr %i.n, align 4, !tbaa !9
  %i.q = fsub <2 x float> %i.o, %i.p              ; 2 uses
  %i.r = fmul <2 x float> %i.q, %i.q              ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = tail call float @llvm.fmuladd.f32(float %i.e, float %i.s, float %i.l)
  %i.u = extractelement <2 x float> %i.r, i64 1
  %i.v = tail call float @llvm.fmuladd.f32(float %i.e, float %i.u, float %i.t)
  %i.w = fadd float %.03952.us61.i, %i.e
  %indvars.iv.next91.i = or disjoint i64 %indvars.iv90.i, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next91.i
  %i.y = load float, ptr %i.x, align 4, !tbaa !9  ; 4 uses
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next91.i ; 2 uses
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv.next91.i ; 2 uses
  %i.ab = load float, ptr %i.z, align 4, !tbaa !9
  %i.ac = load float, ptr %i.aa, align 4, !tbaa !9
  %i.ad = fsub float %i.ab, %i.ac                 ; 2 uses
  %i.ae = fmul float %i.ad, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ae, float %i.v)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ai = load <2 x float>, ptr %i.ag, align 4, !tbaa !9
  %i.aj = load <2 x float>, ptr %i.ah, align 4, !tbaa !9
  %i.ak = fsub <2 x float> %i.ai, %i.aj           ; 2 uses
  %i.al = fmul <2 x float> %i.ak, %i.ak           ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = tail call float @llvm.fmuladd.f32(float %i.y, float %i.am, float %i.af)
  %i.ao = extractelement <2 x float> %i.al, i64 1
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ao, float %i.an) ; 3 uses
  %i.aq = fadd float %i.w, %i.y                   ; 3 uses
  %indvars.iv.next91.i.1 = add nuw nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %niter34.next.1 = add nuw i64 %niter34, 2       ; 2 uses
  %niter34.ncmp.1 = icmp eq i64 %niter34.next.1, %unroll_iter33
  br i1 %niter34.ncmp.1, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa, label %.split.us.i, !llvm.loop !11

.split.i:                                         ; preds = %.split.i, %.split.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.split.i.preheader.new ], [ %indvars.iv.next.i.1, %.split.i ] ; 3 uses
  %.054.i = phi float [ 0.000000e+00, %.split.i.preheader.new ], [ %i.ck, %.split.i ]
  %.03952.i = phi float [ 0.000000e+00, %.split.i.preheader.new ], [ %i.cl, %.split.i ]
  %niter = phi i64 [ 0, %.split.i.preheader.new ], [ %niter.next.1, %.split.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13
  %i.at = sext i32 %i.as to i64                   ; 3 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !9 ; 4 uses
  %i.aw = getelementptr inbounds [12 x i8], ptr %3, i64 %i.at ; 2 uses
  %i.ax = getelementptr inbounds [12 x i8], ptr %4, i64 %i.at ; 2 uses
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !9
  %i.az = load float, ptr %i.ax, align 4, !tbaa !9
  %i.ba = fsub float %i.ay, %i.az                 ; 2 uses
  %i.bb = fmul float %i.ba, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.av, float %i.bb, float %.054.i)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !9
  %i.bg = load <2 x float>, ptr %i.be, align 4, !tbaa !9
  %i.bh = fsub <2 x float> %i.bf, %i.bg           ; 2 uses
  %i.bi = fmul <2 x float> %i.bh, %i.bh           ; 2 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.av, float %i.bj, float %i.bc)
  %i.bl = extractelement <2 x float> %i.bi, i64 1
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.av, float %i.bl, float %i.bk)
  %i.bn = fadd float %.03952.i, %i.av
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !13
  %i.br = sext i32 %i.bq to i64                   ; 3 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %2, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !9 ; 4 uses
  %i.bu = getelementptr inbounds [12 x i8], ptr %3, i64 %i.br ; 2 uses
  %i.bv = getelementptr inbounds [12 x i8], ptr %4, i64 %i.br ; 2 uses
  %i.bw = load float, ptr %i.bu, align 4, !tbaa !9
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !9
  %i.by = fsub float %i.bw, %i.bx                 ; 2 uses
  %i.bz = fmul float %i.by, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bz, float %i.bm)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cd = load <2 x float>, ptr %i.cb, align 4, !tbaa !9
  %i.ce = load <2 x float>, ptr %i.cc, align 4, !tbaa !9
  %i.cf = fsub <2 x float> %i.cd, %i.ce           ; 2 uses
  %i.cg = fmul <2 x float> %i.cf, %i.cf           ; 2 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 0
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.ch, float %i.ca)
  %i.cj = extractelement <2 x float> %i.cg, i64 1
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.cj, float %i.ci) ; 3 uses
  %i.cl = fadd float %i.bn, %i.bt                 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit22.unr-lcssa, label %.split.i, !llvm.loop !11

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa: ; preds = %.split.us.i
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit, label %.split.us.i.epil.preheader

.split.us.i.epil.preheader:                       ; preds = %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa, %.split.us.i.preheader
  %indvars.iv90.i.epil.init = phi i64 [ 0, %.split.us.i.preheader ], [ %indvars.iv.next91.i.1, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ] ; 3 uses
  %.054.us60.i.epil.init = phi float [ 0.000000e+00, %.split.us.i.preheader ], [ %i.ap, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ]
  %.03952.us61.i.epil.init = phi float [ 0.000000e+00, %.split.us.i.preheader ], [ %i.aq, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ]
  %lcmp.mod32 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv90.i.epil.init
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !9 ; 4 uses
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv90.i.epil.init ; 2 uses
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv90.i.epil.init ; 2 uses
  %i.cq = load float, ptr %i.co, align 4, !tbaa !9
  %i.cr = load float, ptr %i.cp, align 4, !tbaa !9
  %i.cs = fsub float %i.cq, %i.cr                 ; 2 uses
  %i.ct = fmul float %i.cs, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.ct, float %.054.us60.i.epil.init)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cx = load <2 x float>, ptr %i.cv, align 4, !tbaa !9
  %i.cy = load <2 x float>, ptr %i.cw, align 4, !tbaa !9
  %i.cz = fsub <2 x float> %i.cx, %i.cy           ; 2 uses
  %i.da = fmul <2 x float> %i.cz, %i.cz           ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.db, float %i.cu)
  %i.dd = extractelement <2 x float> %i.da, i64 1
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.dd, float %i.dc)
  %i.df = fadd float %.03952.us61.i.epil.init, %i.cn
  br label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit22.unr-lcssa: ; preds = %.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit, label %.split.i.epil.preheader

.split.i.epil.preheader:                          ; preds = %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit22.unr-lcssa, %.split.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.split.i.preheader ], [ %indvars.iv.next.i.1, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit22.unr-lcssa ]
  %.054.i.epil.init = phi float [ 0.000000e+00, %.split.i.preheader ], [ %i.ck, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit22.unr-lcssa ]
  %.03952.i.epil.init = phi float [ 0.000000e+00, %.split.i.preheader ], [ %i.cl, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit22.unr-lcssa ]
  %lcmp.mod27 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !13
  %i.di = sext i32 %i.dh to i64                   ; 3 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !9 ; 4 uses
  %i.dl = getelementptr inbounds [12 x i8], ptr %3, i64 %i.di ; 2 uses
  %i.dm = getelementptr inbounds [12 x i8], ptr %4, i64 %i.di ; 2 uses
  %i.dn = load float, ptr %i.dl, align 4, !tbaa !9
  %i.do = load float, ptr %i.dm, align 4, !tbaa !9
  %i.dp = fsub float %i.dn, %i.do                 ; 2 uses
  %i.dq = fmul float %i.dp, %i.dp
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dq, float %.054.i.epil.init)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.du = load <2 x float>, ptr %i.ds, align 4, !tbaa !9
  %i.dv = load <2 x float>, ptr %i.dt, align 4, !tbaa !9
  %i.dw = fsub <2 x float> %i.du, %i.dv           ; 2 uses
  %i.dx = fmul <2 x float> %i.dw, %i.dw           ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dy, float %i.dr)
  %i.ea = extractelement <2 x float> %i.dx, i64 1
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.ea, float %i.dz)
  %i.ec = fadd float %.03952.i.epil.init, %i.dk
  br label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit:        ; preds = %.split.i.epil.preheader, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit22.unr-lcssa, %.split.us.i.epil.preheader, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa, %bb.a
  %.0.lcssa126.i = phi float [ %i.de, %.split.us.i.epil.preheader ], [ 0.000000e+00, %bb.a ], [ %i.ap, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ], [ %i.ck, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit22.unr-lcssa ], [ %i.eb, %.split.i.epil.preheader ]
  %.039.lcssa125.i = phi float [ %i.df, %.split.us.i.epil.preheader ], [ 0.000000e+00, %bb.a ], [ %i.aq, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ], [ %i.cl, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit22.unr-lcssa ], [ %i.ec, %.split.i.epil.preheader ]
  %i.ed = fdiv float %.0.lcssa126.i, %.039.lcssa125.i
  %i.ee = tail call noundef float @sqrtf(float noundef %i.ed) #16
  ret float %i.ee
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef float @_Z6rmsdeviPfPA3_fS1_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.i, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count111.i = zext nneg i32 %0 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count111.i, 1
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.split.us.i.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count111.i, 2147483646
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %.lr.ph.i.new
  %indvars.iv90.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next91.i.1, %.split.us.i ] ; 5 uses
  %.054.us60.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ao, %.split.us.i ]
  %.03952.us61.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ap, %.split.us.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %.split.us.i ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv90.i
  %i.d = load float, ptr %i.c, align 4, !tbaa !9  ; 4 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv90.i ; 2 uses
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv90.i ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !9
  %i.h = load float, ptr %i.f, align 4, !tbaa !9
  %i.i = fsub float %i.g, %i.h                    ; 2 uses
  %i.j = fmul float %i.i, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.d, float %i.j, float %.054.us60.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !9
  %i.o = load <2 x float>, ptr %i.m, align 4, !tbaa !9
  %i.p = fsub <2 x float> %i.n, %i.o              ; 2 uses
  %i.q = fmul <2 x float> %i.p, %i.p              ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.d, float %i.r, float %i.k)
  %i.t = extractelement <2 x float> %i.q, i64 1
  %i.u = tail call float @llvm.fmuladd.f32(float %i.d, float %i.t, float %i.s)
  %i.v = fadd float %.03952.us61.i, %i.d
  %indvars.iv.next91.i = or disjoint i64 %indvars.iv90.i, 1 ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next91.i
  %i.x = load float, ptr %i.w, align 4, !tbaa !9  ; 4 uses
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv.next91.i ; 2 uses
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next91.i ; 2 uses
  %i.aa = load float, ptr %i.y, align 4, !tbaa !9
  %i.ab = load float, ptr %i.z, align 4, !tbaa !9
  %i.ac = fsub float %i.aa, %i.ab                 ; 2 uses
  %i.ad = fmul float %i.ac, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.x, float %i.ad, float %i.u)
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !9
  %i.ai = load <2 x float>, ptr %i.ag, align 4, !tbaa !9
  %i.aj = fsub <2 x float> %i.ah, %i.ai           ; 2 uses
  %i.ak = fmul <2 x float> %i.aj, %i.aj           ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  %i.am = tail call float @llvm.fmuladd.f32(float %i.x, float %i.al, float %i.ae)
  %i.an = extractelement <2 x float> %i.ak, i64 1
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.x, float %i.an, float %i.am) ; 3 uses
  %i.ap = fadd float %i.v, %i.x                   ; 3 uses
  %indvars.iv.next91.i.1 = add nuw nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa, label %.split.us.i, !llvm.loop !11

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa: ; preds = %.split.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit, label %.split.us.i.epil.preheader

.split.us.i.epil.preheader:                       ; preds = %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv90.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next91.i.1, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ] ; 3 uses
  %.054.us60.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ao, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ]
  %.03952.us61.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ap, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv90.i.epil.init
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !9 ; 4 uses
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv90.i.epil.init ; 2 uses
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv90.i.epil.init ; 2 uses
  %i.au = load float, ptr %i.as, align 4, !tbaa !9
  %i.av = load float, ptr %i.at, align 4, !tbaa !9
  %i.aw = fsub float %i.au, %i.av                 ; 2 uses
  %i.ax = fmul float %i.aw, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ax, float %.054.us60.i.epil.init)
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !9
  %i.bc = load <2 x float>, ptr %i.ba, align 4, !tbaa !9
  %i.bd = fsub <2 x float> %i.bb, %i.bc           ; 2 uses
  %i.be = fmul <2 x float> %i.bd, %i.bd           ; 2 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bf, float %i.ay)
  %i.bh = extractelement <2 x float> %i.be, i64 1
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bh, float %i.bg)
  %i.bj = fadd float %.03952.us61.i.epil.init, %i.ar
  br label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit: ; preds = %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa, %.split.us.i.epil.preheader
  %.lcssa7 = phi float [ %i.ao, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ], [ %i.bi, %.split.us.i.epil.preheader ]
  %.lcssa = phi float [ %i.ap, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit.unr-lcssa ], [ %i.bj, %.split.us.i.epil.preheader ]
  %i.bk = fdiv float %.lcssa7, %.lcssa
  br label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit:        ; preds = %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit, %bb.a
  %i.bl = phi float [ +qnan, %bb.a ], [ %i.bk, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit ]
  %i.bm = tail call noundef float @sqrtf(float noundef %i.bl) #16
  ret float %i.bm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef float @_Z10rhodev_indiPiPfPA3_fS2_(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_Z16calc_similar_indbiPKiPKfPA3_fS4_(i1 noundef zeroext true, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret float %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef float @_Z6rhodeviPfPA3_fS1_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.i, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count111.i = zext nneg i32 %0 to i64
  br label %.split.us.us.us.i

.split.us.us.us.i:                                ; preds = %.split.us.us.us.i, %.lr.ph.i
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %.split.us.us.us.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %.054.us.us.i = phi float [ %i.ad, %.split.us.us.us.i ], [ 0.000000e+00, %.lr.ph.i ]
  %.03753.us.us.i = phi float [ %i.ag, %.split.us.us.us.i ], [ 0.000000e+00, %.lr.ph.i ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv108.i
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 6 uses
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv108.i ; 3 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv108.i ; 3 uses
  %i.f = load float, ptr %i.d, align 4, !tbaa !9  ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !9  ; 2 uses
  %i.h = fsub float %i.f, %i.g                    ; 2 uses
  %i.i = fmul float %i.h, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.c, float %i.i, float %.054.us.us.i)
  %i.k = fadd float %i.f, %i.g                    ; 2 uses
  %i.l = fmul float %i.k, %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.c, float %i.l, float %.03753.us.us.i)
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !9  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !9  ; 2 uses
  %i.r = fsub float %i.o, %i.q                    ; 2 uses
  %i.s = fmul float %i.r, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.c, float %i.s, float %i.j)
  %i.u = fadd float %i.o, %i.q                    ; 2 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.c, float %i.v, float %i.m)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !9  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !9 ; 2 uses
  %i.ab = fsub float %i.y, %i.aa                  ; 2 uses
  %i.ac = fmul float %i.ab, %i.ab
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.c, float %i.ac, float %i.t) ; 2 uses
  %i.ae = fadd float %i.y, %i.aa                  ; 2 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.c, float %i.af, float %i.w) ; 2 uses
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 2 uses
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next109.i, %wide.trip.count111.i
  br i1 %exitcond112.not.i, label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit, label %.split.us.us.us.i, !llvm.loop !11

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit: ; preds = %.split.us.us.us.i
  %i.ah = fdiv float %i.ad, %i.ag
  br label %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit

_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit:        ; preds = %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit, %bb.a
  %i.ai = phi float [ +qnan, %bb.a ], [ %i.ah, %_Z16calc_similar_indbiPKiPKfPA3_fS4_.exit.loopexit ]
  %i.aj = tail call noundef float @sqrtf(float noundef %i.ai) #16
  %i.ak = fmul float %i.aj, 2.000000e+00
  ret float %i.ak
}

; Function Attrs: mustprogress uwtable
define void @_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [6 x double], align 16            ; 16 uses
  %i.c = alloca [3 x [3 x float]], align 16       ; 15 uses
  %i.d = alloca [3 x [3 x float]], align 16       ; 15 uses
  %i.e = alloca [3 x [3 x float]], align 16       ; 8 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.f = add i32 %0, -4
  %or.cond = icmp ult i32 %i.f, -2
  %.sink321.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink321.sroa.gep406 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br i1 %or.cond, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(60) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 128, ptr noundef nonnull @.str.1, i32 noundef %0) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %i.g

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = shl nuw nsw i32 %0, 1                    ; 2 uses
  %i.i = zext nneg i32 %i.h to i64                ; 9 uses
  %i.j = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 131, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8) ; 25 uses
  %i.k = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 132, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8) ; 15 uses
  br label %.lr.ph

.lr.ph178.preheader:                              ; preds = %.lr.ph
  %i.l = shl nuw nsw i64 %i.i, 3                  ; 12 uses
  store double 0.000000e+00, ptr %i.b, align 16, !tbaa !14
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.l, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.l, i1 false), !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.l, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.l, i1 false), !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double 0.000000e+00, ptr %i.t, align 16, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.l, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.l, i1 false), !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.l, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.l, i1 false), !tbaa !14
  %exitcond231.not.3 = icmp eq i32 %0, 2
  br i1 %exitcond231.not.3, label %._crit_edge, label %.lr.ph178.4

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.ae = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 135, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8)
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ag = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 136, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8)
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %.lr.ph178.preheader, label %.lr.ph, !llvm.loop !19

.lr.ph178.4:                                      ; preds = %.lr.ph178.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double 0.000000e+00, ptr %i.ah, align 16, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %i.l, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.l, i1 false), !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.l, i1 false), !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.l, i1 false), !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph178.4, %.lr.ph178.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.lr.ph187.split.us.preheader, label %.preheader171.preheader

.lr.ph187.split.us.preheader:                     ; preds = %._crit_edge
  %wide.trip.count245 = zext nneg i32 %1 to i64
  %wide.trip.count240 = zext nneg i32 %0 to i64   ; 2 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count240, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.as = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 9 uses
  %xtraiter = and i64 %wide.trip.count240, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod379 = trunc i32 %0 to i1
  br label %.lr.ph187.split.us

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv242 = phi i64 [ 0, %.lr.ph187.split.us.preheader ], [ %indvars.iv.next243, %..loopexit_crit_edge.us ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv242
  %i.au = load float, ptr %i.at, align 4, !tbaa !9 ; 2 uses
  %i.av = fpext float %i.au to double             ; 3 uses
  %i.aw = fcmp une float %i.au, 0.000000e+00
  br i1 %i.aw, label %.preheader173.us, label %..loopexit_crit_edge.us

.lr.ph181.us:                                     ; preds = %.lr.ph181.us, %.preheader173.us
  %indvars.iv237 = phi i64 [ 0, %.preheader173.us ], [ %indvars.iv.next238.1, %.lr.ph181.us ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader173.us ], [ %niter.next.1, %.lr.ph181.us ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv237
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !9
  %i.az = fpext float %i.ay to double
  %broadcast.splatinsert323 = insertelement <4 x double> poison, double %i.az, i64 0
  %broadcast.splat324 = shufflevector <4 x double> %broadcast.splatinsert323, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv237 ; 2 uses
  %wide.masked.load327 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.ba, <4 x i1> %i.as, <4 x float> poison), !tbaa !9
  %i.bb = fpext <4 x float> %wide.masked.load327 to <4 x double>
  %i.bc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %broadcast.splat324, <4 x double> %i.bb)
  %i.bd = fptrunc <4 x double> %i.bc to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bd, ptr align 8 %i.ba, <4 x i1> %i.as), !tbaa !9
  %indvars.iv.next238 = or disjoint i64 %indvars.iv237, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next238
  %i.bf = load float, ptr %i.be, align 4, !tbaa !9
  %i.bg = fpext float %i.bf to double
  %broadcast.splatinsert323.1 = insertelement <4 x double> poison, double %i.bg, i64 0
  %broadcast.splat324.1 = shufflevector <4 x double> %broadcast.splatinsert323.1, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next238 ; 2 uses
  %wide.masked.load327.1 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bh, <4 x i1> %i.as, <4 x float> poison), !tbaa !9
  %i.bi = fpext <4 x float> %wide.masked.load327.1 to <4 x double>
  %i.bj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bz, <4 x double> %broadcast.splat324.1, <4 x double> %i.bi)
  %i.bk = fptrunc <4 x double> %i.bj to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bk, ptr align 4 %i.bh, <4 x i1> %i.as), !tbaa !9
  %indvars.iv.next238.1 = add nuw nsw i64 %indvars.iv237, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, 0
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.loopexit.unr-lcssa, label %.lr.ph181.us, !llvm.loop !20

..loopexit_crit_edge.us.loopexit.unr-lcssa:       ; preds = %.lr.ph181.us
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us, label %.lr.ph181.us.epil.preheader

.lr.ph181.us.epil.preheader:                      ; preds = %..loopexit_crit_edge.us.loopexit.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod379)
  %broadcast.splatinsert325.epil = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat326.epil = shufflevector <4 x double> %broadcast.splatinsert325.epil, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next238.1
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !9
  %i.bn = fpext float %i.bm to double
  %broadcast.splatinsert323.epil = insertelement <4 x double> poison, double %i.bn, i64 0
  %broadcast.splat324.epil = shufflevector <4 x double> %broadcast.splatinsert323.epil, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next238.1 ; 2 uses
  %wide.masked.load.epil = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bv, <4 x i1> %i.as, <4 x float> poison), !tbaa !9
  %i.bp = fpext <4 x float> %wide.masked.load.epil to <4 x double>
  %i.bq = fmul <4 x double> %broadcast.splat326.epil, %i.bp
  %wide.masked.load327.epil = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bo, <4 x i1> %i.as, <4 x float> poison), !tbaa !9
  %i.br = fpext <4 x float> %wide.masked.load327.epil to <4 x double>
  %i.bs = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bq, <4 x double> %broadcast.splat324.epil, <4 x double> %i.br)
  %i.bt = fptrunc <4 x double> %i.bs to <4 x float>
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bt, ptr align 4 %i.bo, <4 x i1> %i.as), !tbaa !9
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %.lr.ph181.us.epil.preheader, %..loopexit_crit_edge.us.loopexit.unr-lcssa, %.lr.ph187.split.us
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count245
  br i1 %exitcond246.not, label %.preheader171.preheader, label %.lr.ph187.split.us, !llvm.loop !21

.preheader173.us:                                 ; preds = %.lr.ph187.split.us
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv242 ; 3 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv242 ; 3 uses
  %broadcast.splatinsert325.1 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat326.1 = shufflevector <4 x double> %broadcast.splatinsert325.1, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert325 = insertelement <4 x double> poison, double %i.av, i64 0
  %broadcast.splat326 = shufflevector <4 x double> %broadcast.splatinsert325, <4 x double> poison, <4 x i32> zeroinitializer
  %wide.masked.load = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bv, <4 x i1> %i.as, <4 x float> poison), !tbaa !9
  %i.bw = fpext <4 x float> %wide.masked.load to <4 x double>
  %i.bx = fmul <4 x double> %broadcast.splat326, %i.bw
  %wide.masked.load.1 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bv, <4 x i1> %i.as, <4 x float> poison), !tbaa !9
  %i.by = fpext <4 x float> %wide.masked.load.1 to <4 x double>
  %i.bz = fmul <4 x double> %broadcast.splat326.1, %i.by
  br label %.lr.ph181.us

.preheader171.preheader:                          ; preds = %..loopexit_crit_edge.us, %._crit_edge
  %i.ca = zext nneg i32 %0 to i64                 ; 6 uses
  br label %.preheader171

.preheader171:                                    ; preds = %.preheader171.preheader, %.split.us
  %indvars.iv261 = phi i64 [ 0, %.preheader171.preheader ], [ %indvars.iv.next262, %.split.us ] ; 19 uses
  %indvars.iv259 = phi i64 [ 1, %.preheader171.preheader ], [ %indvars.iv.next260, %.split.us ] ; 5 uses
  %i.cb = trunc nuw i64 %indvars.iv261 to i32     ; 2 uses
  %.not150.not = icmp sgt i32 %0, %i.cb
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv261 ; 3 uses
  %i.cd = sub nsw i32 %i.cb, %0
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.ce ; 5 uses
  br i1 %.not150.not, label %.preheader171.split.us, label %.preheader171.split.preheader

.preheader171.split.preheader:                    ; preds = %.preheader171
  %xtraiter380 = and i64 %indvars.iv259, 3        ; 3 uses
  %i.cg = icmp samesign ult i64 %indvars.iv261, 3
  br i1 %i.cg, label %.preheader171.split.epil.preheader, label %.preheader171.split.preheader.new

.preheader171.split.preheader.new:                ; preds = %.preheader171.split.preheader
  %unroll_iter383 = and i64 %indvars.iv259, -4
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !16 ; 4 uses
  br label %.preheader171.split

.preheader171.split.us:                           ; preds = %.preheader171
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !16 ; 9 uses
  %xtraiter385 = and i64 %indvars.iv259, 7        ; 3 uses
  %i.cj = icmp samesign ult i64 %indvars.iv261, 7
  br i1 %i.cj, label %.epil.preheader, label %.preheader171.split.us.new

.preheader171.split.us.new:                       ; preds = %.preheader171.split.us
  %unroll_iter389 = and i64 %indvars.iv259, -8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader171.split.us.new
  %indvars.iv254 = phi i64 [ 0, %.preheader171.split.us.new ], [ %indvars.iv.next255.7, %bb.e ] ; 10 uses
  %niter390 = phi i64 [ 0, %.preheader171.split.us.new ], [ %niter390.next.7, %bb.e ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv254
  store double 0.000000e+00, ptr %i.ck, align 8, !tbaa !14
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv254
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !16
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.cn, align 8, !tbaa !14
  %indvars.iv.next255 = or disjoint i64 %indvars.iv254, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next255
  store double 0.000000e+00, ptr %i.co, align 8, !tbaa !14
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.cr, align 8, !tbaa !14
  %indvars.iv.next255.1 = or disjoint i64 %indvars.iv254, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next255.1
  store double 0.000000e+00, ptr %i.cs, align 8, !tbaa !14
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255.1
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !16
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.cv, align 8, !tbaa !14
  %indvars.iv.next255.2 = or disjoint i64 %indvars.iv254, 3 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next255.2
  store double 0.000000e+00, ptr %i.cw, align 8, !tbaa !14
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255.2
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !16
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.cz, align 8, !tbaa !14
  %indvars.iv.next255.3 = or disjoint i64 %indvars.iv254, 4 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next255.3
  store double 0.000000e+00, ptr %i.da, align 8, !tbaa !14
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255.3
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !16
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.dd, align 8, !tbaa !14
  %indvars.iv.next255.4 = or disjoint i64 %indvars.iv254, 5 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next255.4
  store double 0.000000e+00, ptr %i.de, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255.4
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !16
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.dh, align 8, !tbaa !14
  %indvars.iv.next255.5 = or disjoint i64 %indvars.iv254, 6 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next255.5
  store double 0.000000e+00, ptr %i.di, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255.5
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !16
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.dl, align 8, !tbaa !14
  %indvars.iv.next255.6 = or disjoint i64 %indvars.iv254, 7 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next255.6
  store double 0.000000e+00, ptr %i.dm, align 8, !tbaa !14
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next255.6
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !16
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.dp, align 8, !tbaa !14
  %indvars.iv.next255.7 = add nuw nsw i64 %indvars.iv254, 8 ; 2 uses
  %niter390.next.7 = add nuw i64 %niter390, 8     ; 2 uses
  %niter390.ncmp.7 = icmp eq i64 %niter390.next.7, %unroll_iter389
  br i1 %niter390.ncmp.7, label %.split.us.loopexit.unr-lcssa, label %bb.e, !llvm.loop !22

.preheader171.split:                              ; preds = %bb.j, %.preheader171.split.preheader.new
  %indvars.iv247 = phi i64 [ 0, %.preheader171.split.preheader.new ], [ %indvars.iv.next248.3, %bb.j ] ; 8 uses
  %niter384 = phi i64 [ 0, %.preheader171.split.preheader.new ], [ %niter384.next.3, %bb.j ]
  %i.dq = icmp samesign ult i64 %indvars.iv247, %i.ca
  br i1 %i.dq, label %bb.f, label %.preheader171.split.1

bb.f:                                             ; preds = %.preheader171.split
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv247
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !9
  %i.dt = fpext float %i.ds to double
  br label %.preheader171.split.1

.preheader171.split.1:                            ; preds = %.preheader171.split, %bb.f
  %.sink316 = phi double [ %i.dt, %bb.f ], [ 0.000000e+00, %.preheader171.split ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv247
  store double %.sink316, ptr %i.du, align 8, !tbaa !14
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv247
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !16
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv261
  store double %.sink316, ptr %i.dx, align 8, !tbaa !14
  %indvars.iv.next248 = or disjoint i64 %indvars.iv247, 1 ; 4 uses
  %i.dy = icmp samesign ult i64 %indvars.iv.next248, %i.ca
  br i1 %i.dy, label %bb.g, label %.preheader171.split.2

bb.g:                                             ; preds = %.preheader171.split.1
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next248
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !9
  %i.eb = fpext float %i.ea to double
  br label %.preheader171.split.2

.preheader171.split.2:                            ; preds = %bb.g, %.preheader171.split.1
  %.sink316.1 = phi double [ %i.eb, %bb.g ], [ 0.000000e+00, %.preheader171.split.1 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next248
  store double %.sink316.1, ptr %i.ec, align 8, !tbaa !14
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next248
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !16
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv261
  store double %.sink316.1, ptr %i.ef, align 8, !tbaa !14
  %indvars.iv.next248.1 = or disjoint i64 %indvars.iv247, 2 ; 4 uses
  %i.eg = icmp samesign ult i64 %indvars.iv.next248.1, %i.ca
  br i1 %i.eg, label %bb.h, label %.preheader171.split.3

bb.h:                                             ; preds = %.preheader171.split.2
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next248.1
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !9
  %i.ej = fpext float %i.ei to double
  br label %.preheader171.split.3

.preheader171.split.3:                            ; preds = %bb.h, %.preheader171.split.2
  %.sink316.2 = phi double [ %i.ej, %bb.h ], [ 0.000000e+00, %.preheader171.split.2 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next248.1
  store double %.sink316.2, ptr %i.ek, align 8, !tbaa !14
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next248.1
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !16
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv261
  store double %.sink316.2, ptr %i.en, align 8, !tbaa !14
  %indvars.iv.next248.2 = or disjoint i64 %indvars.iv247, 3 ; 4 uses
  %i.eo = icmp samesign ult i64 %indvars.iv.next248.2, %i.ca
  br i1 %i.eo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader171.split.3
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next248.2
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !9
  %i.er = fpext float %i.eq to double
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader171.split.3
  %.sink316.3 = phi double [ %i.er, %bb.i ], [ 0.000000e+00, %.preheader171.split.3 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.next248.2
  store double %.sink316.3, ptr %i.es, align 8, !tbaa !14
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next248.2
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !16
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv261
  store double %.sink316.3, ptr %i.ev, align 8, !tbaa !14
  %indvars.iv.next248.3 = add nuw nsw i64 %indvars.iv247, 4 ; 2 uses
  %niter384.next.3 = add nuw i64 %niter384, 4     ; 2 uses
  %niter384.ncmp.3 = icmp eq i64 %niter384.next.3, %unroll_iter383
  br i1 %niter384.ncmp.3, label %.split.us.loopexit378.unr-lcssa, label %.preheader171.split, !llvm.loop !22

.split.us.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod387.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod387.not, label %.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split.us.loopexit.unr-lcssa, %.preheader171.split.us
  %indvars.iv254.epil.init = phi i64 [ 0, %.preheader171.split.us ], [ %indvars.iv.next255.7, %.split.us.loopexit.unr-lcssa ]
  %lcmp.mod388 = icmp ne i64 %xtraiter385, 0
  tail call void @llvm.assume(i1 %lcmp.mod388)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv254.epil = phi i64 [ %indvars.iv.next255.epil, %bb.k ], [ %indvars.iv254.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter386 = phi i64 [ %epil.iter386.next, %bb.k ], [ 0, %.epil.preheader ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv254.epil
  store double 0.000000e+00, ptr %i.ew, align 8, !tbaa !14
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv254.epil
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !16
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv261
  store double 0.000000e+00, ptr %i.ez, align 8, !tbaa !14
  %indvars.iv.next255.epil = add nuw nsw i64 %indvars.iv254.epil, 1
  %epil.iter386.next = add i64 %epil.iter386, 1   ; 2 uses
  %epil.iter386.cmp.not = icmp eq i64 %epil.iter386.next, %xtraiter385
  br i1 %epil.iter386.cmp.not, label %.split.us, label %bb.k, !llvm.loop !23

.split.us.loopexit378.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %.split.us, label %.preheader171.split.epil.preheader

.preheader171.split.epil.preheader:               ; preds = %.split.us.loopexit378.unr-lcssa, %.preheader171.split.preheader
  %indvars.iv247.epil.init = phi i64 [ 0, %.preheader171.split.preheader ], [ %indvars.iv.next248.3, %.split.us.loopexit378.unr-lcssa ]
  %lcmp.mod382 = icmp ne i64 %xtraiter380, 0
  tail call void @llvm.assume(i1 %lcmp.mod382)
  %i.fa = load ptr, ptr %i.cc, align 8, !tbaa !16
  br label %.preheader171.split.epil

.preheader171.split.epil:                         ; preds = %bb.m, %.preheader171.split.epil.preheader
  %indvars.iv247.epil = phi i64 [ %indvars.iv.next248.epil, %bb.m ], [ %indvars.iv247.epil.init, %.preheader171.split.epil.preheader ] ; 5 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.m ], [ 0, %.preheader171.split.epil.preheader ]
  %i.fb = icmp samesign ult i64 %indvars.iv247.epil, %i.ca
  br i1 %i.fb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader171.split.epil
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv247.epil
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !9
  %i.fe = fpext float %i.fd to double
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader171.split.epil
  %.sink316.epil = phi double [ %i.fe, %bb.l ], [ 0.000000e+00, %.preheader171.split.epil ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv247.epil
  store double %.sink316.epil, ptr %i.ff, align 8, !tbaa !14
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv247.epil
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !16
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv261
  store double %.sink316.epil, ptr %i.fi, align 8, !tbaa !14
  %indvars.iv.next248.epil = add nuw nsw i64 %indvars.iv247.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter380
  br i1 %epil.iter.cmp.not, label %.split.us, label %.preheader171.split.epil, !llvm.loop !25

.split.us:                                        ; preds = %.split.us.loopexit378.unr-lcssa, %bb.m, %.split.us.loopexit.unr-lcssa, %bb.k
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %indvars.iv.next260 = add nuw i64 %indvars.iv259, 1
  %exitcond268.not = icmp eq i64 %indvars.iv.next262, %i.i
  br i1 %exitcond268.not, label %._crit_edge190, label %.preheader171, !llvm.loop !26

._crit_edge190:                                   ; preds = %.split.us
  call void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.j, i32 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a)
  %i.fj = load ptr, ptr @debug, align 8, !tbaa !27 ; 2 uses
  %i.fk = icmp ne ptr %i.fj, null
  %i.fl = load i32, ptr %i.a, align 4
  %i.fm = icmp eq i32 %i.fl, 0
  %or.cond3 = select i1 %i.fk, i1 %i.fm, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge190
  %i.fn = call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr nonnull %i.fj) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge190
  %i.fo = icmp sgt i32 %0, 1
  br i1 %i.fo, label %.preheader170.lr.ph, label %._crit_edge202

.preheader170.lr.ph:                              ; preds = %bb.o
  %i.fp = add nsw i32 %0, -1
  %i.fq = zext nneg i32 %0 to i64
  %wide.trip.count282 = zext nneg i32 %i.fp to i64
  %invariant.gep311 = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fq ; 4 uses
  %xtraiter391 = and i64 %i.i, 2                  ; 2 uses
  %lcmp.mod393.not = icmp eq i64 %xtraiter391, 0
  %lcmp.mod395 = icmp ne i64 %xtraiter391, 0
  %min.iters.check = icmp ult i32 %0, 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %gep312.1 = getelementptr inbounds nuw i8, ptr %invariant.gep311, i64 8
  %exitcond278.not.1 = icmp eq i32 %0, 2
  %i.fs = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %gep312.2 = getelementptr inbounds nuw i8, ptr %invariant.gep311, i64 16
  br label %.lr.ph194.preheader

.lr.ph194.preheader:                              ; preds = %._crit_edge199, %.preheader170.lr.ph
  %indvars.iv279 = phi i64 [ 0, %.preheader170.lr.ph ], [ %indvars.iv.next280, %._crit_edge199 ] ; 3 uses
  %.0132201 = phi i32 [ 0, %.preheader170.lr.ph ], [ %.2134.lcssa, %._crit_edge199 ]
  br label %.lr.ph194

.lr.ph194:                                        ; preds = %.lr.ph194, %.lr.ph194.preheader
  %indvars.iv269 = phi i64 [ 0, %.lr.ph194.preheader ], [ %indvars.iv.next270.3, %.lr.ph194 ] ; 6 uses
  %.0130193 = phi float [ -1.000000e+03, %.lr.ph194.preheader ], [ %.1131.3, %.lr.ph194 ] ; 2 uses
  %.1133192 = phi i32 [ %.0132201, %.lr.ph194.preheader ], [ %.2134.3, %.lr.ph194 ]
  %niter397 = phi i64 [ 0, %.lr.ph194.preheader ], [ %niter397.next.3, %.lr.ph194 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv269
  %i.fu = load double, ptr %i.ft, align 16, !tbaa !14 ; 2 uses
  %i.fv = fpext float %.0130193 to double
  %i.fw = fcmp ogt double %i.fu, %i.fv            ; 2 uses
  %i.fx = fptrunc double %i.fu to float
  %i.fy = trunc nuw nsw i64 %indvars.iv269 to i32
  %.2134 = select i1 %i.fw, i32 %i.fy, i32 %.1133192
  %.1131 = select i1 %i.fw, float %i.fx, float %.0130193 ; 2 uses
  %indvars.iv.next270 = or disjoint i64 %indvars.iv269, 1 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next270
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !14 ; 2 uses
  %i.gb = fpext float %.1131 to double
  %i.gc = fcmp ogt double %i.ga, %i.gb            ; 2 uses
  %i.gd = fptrunc double %i.ga to float
  %i.ge = trunc nuw nsw i64 %indvars.iv.next270 to i32
  %.2134.1 = select i1 %i.gc, i32 %i.ge, i32 %.2134
  %.1131.1 = select i1 %i.gc, float %i.gd, float %.1131 ; 2 uses
  %indvars.iv.next270.1 = or disjoint i64 %indvars.iv269, 2 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next270.1
  %i.gg = load double, ptr %i.gf, align 16, !tbaa !14 ; 2 uses
  %i.gh = fpext float %.1131.1 to double
  %i.gi = fcmp ogt double %i.gg, %i.gh            ; 2 uses
  %i.gj = fptrunc double %i.gg to float
  %i.gk = trunc nuw nsw i64 %indvars.iv.next270.1 to i32
  %.2134.2 = select i1 %i.gi, i32 %i.gk, i32 %.2134.1
  %.1131.2 = select i1 %i.gi, float %i.gj, float %.1131.1 ; 2 uses
  %indvars.iv.next270.2 = or disjoint i64 %indvars.iv269, 3 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next270.2
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !14 ; 2 uses
  %i.gn = fpext float %.1131.2 to double
  %i.go = fcmp ogt double %i.gm, %i.gn            ; 2 uses
  %i.gp = fptrunc double %i.gm to float
  %i.gq = trunc nuw nsw i64 %indvars.iv.next270.2 to i32
  %.2134.3 = select i1 %i.go, i32 %i.gq, i32 %.2134.2 ; 3 uses
  %.1131.3 = select i1 %i.go, float %i.gp, float %.1131.2 ; 2 uses
  %indvars.iv.next270.3 = add nuw nsw i64 %indvars.iv269, 4 ; 2 uses
  %niter397.next.3 = add nuw i64 %niter397, 4
  %niter397.ncmp.3 = icmp eq i64 %niter397, 0
  br i1 %niter397.ncmp.3, label %.lr.ph198.unr-lcssa, label %.lr.ph194, !llvm.loop !29

.lr.ph198.unr-lcssa:                              ; preds = %.lr.ph194
  br i1 %lcmp.mod393.not, label %.lr.ph198, label %.lr.ph194.epil.preheader

.lr.ph194.epil.preheader:                         ; preds = %.lr.ph198.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod395)
  br label %.lr.ph194.epil

.lr.ph194.epil:                                   ; preds = %.lr.ph194.epil, %.lr.ph194.epil.preheader
  %indvars.iv269.epil = phi i64 [ %indvars.iv.next270.3, %.lr.ph194.epil.preheader ], [ %indvars.iv.next270.epil, %.lr.ph194.epil ] ; 3 uses
  %.0130193.epil = phi float [ %.1131.3, %.lr.ph194.epil.preheader ], [ %.1131.epil, %.lr.ph194.epil ] ; 2 uses
  %.1133192.epil = phi i32 [ %.2134.3, %.lr.ph194.epil.preheader ], [ %.2134.epil, %.lr.ph194.epil ]
  %epil.iter392 = phi i64 [ 0, %.lr.ph194.epil.preheader ], [ %epil.iter392.next, %.lr.ph194.epil ]
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv269.epil
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !14 ; 2 uses
  %i.gt = fpext float %.0130193.epil to double
  %i.gu = fcmp ogt double %i.gs, %i.gt            ; 2 uses
  %i.gv = fptrunc double %i.gs to float
  %i.gw = trunc nuw nsw i64 %indvars.iv269.epil to i32
  %.2134.epil = select i1 %i.gu, i32 %i.gw, i32 %.1133192.epil ; 2 uses
  %.1131.epil = select i1 %i.gu, float %i.gv, float %.0130193.epil
  %indvars.iv.next270.epil = add nuw nsw i64 %indvars.iv269.epil, 1
  %epil.iter392.next = add i64 %epil.iter392, 1   ; 2 uses
  %epil.iter392.cmp.not = icmp eq i64 %epil.iter392.next, 2
  br i1 %epil.iter392.cmp.not, label %.lr.ph198, label %.lr.ph194.epil, !llvm.loop !30

.lr.ph198:                                        ; preds = %.lr.ph194.epil, %.lr.ph198.unr-lcssa
  %.2134.lcssa = phi i32 [ %.2134.3, %.lr.ph198.unr-lcssa ], [ %.2134.epil, %.lr.ph194.epil ] ; 2 uses
  %i.gx = zext nneg i32 %.2134.lcssa to i64       ; 9 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gx
  store double -1.000000e+04, ptr %i.gy, align 8, !tbaa !14
  %i.gz = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv279 ; 4 uses
  %i.ha = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv279 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.body330

vector.body330:                                   ; preds = %.lr.ph198, %vector.body330
  %index331 = phi i64 [ %index.next335, %vector.body330 ], [ 0, %.lr.ph198 ] ; 5 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index331
  %wide.load = load <4 x ptr>, ptr %i.hb, align 8, !tbaa !16
  %wide.gep = getelementptr inbounds nuw [8 x i8], <4 x ptr> %wide.load, i64 %i.gx
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !14
  %i.hc = fmul <4 x double> %wide.masked.gather, splat (double f0x3FF6A09E667F3BCD)
  %i.hd = fptrunc <4 x double> %i.hc to <4 x float>
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %index331
  store <4 x float> %i.hd, ptr %i.he, align 4, !tbaa !9
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep311, i64 %index331
  %wide.load332 = load <4 x ptr>, ptr %i.hf, align 8, !tbaa !16
  %wide.gep333 = getelementptr inbounds nuw [8 x i8], <4 x ptr> %wide.load332, i64 %i.gx
  %wide.masked.gather334 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep333, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !14
  %i.hg = fmul <4 x double> %wide.masked.gather334, splat (double f0x3FF6A09E667F3BCD)
  %i.hh = fptrunc <4 x double> %i.hg to <4 x float>
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index331
  store <4 x float> %i.hh, ptr %i.hi, align 4, !tbaa !9
  %index.next335 = add nuw i64 %index331, 4
  br label %vector.body330, !llvm.loop !31

scalar.ph:                                        ; preds = %.lr.ph198
  %i.hj = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.gx
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !14
  %i.hm = fmul double %i.hl, f0x3FF6A09E667F3BCD
  %i.hn = fptrunc double %i.hm to float
  store float %i.hn, ptr %i.gz, align 4, !tbaa !9
  %i.ho = load ptr, ptr %invariant.gep311, align 8, !tbaa !16
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.gx
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !14
  %i.hr = fmul double %i.hq, f0x3FF6A09E667F3BCD
  %i.hs = fptrunc double %i.hr to float
  store float %i.hs, ptr %i.ha, align 4, !tbaa !9
  %i.ht = load ptr, ptr %i.fr, align 8, !tbaa !16
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.gx
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !14
  %i.hw = fmul double %i.hv, f0x3FF6A09E667F3BCD
  %i.hx = fptrunc double %i.hw to float
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store float %i.hx, ptr %i.hy, align 4, !tbaa !9
  %i.hz = load ptr, ptr %gep312.1, align 8, !tbaa !16
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.gx
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !14
  %i.ic = fmul double %i.ib, f0x3FF6A09E667F3BCD
  %i.id = fptrunc double %i.ic to float
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store float %i.id, ptr %i.ie, align 4, !tbaa !9
  br i1 %exitcond278.not.1, label %._crit_edge199, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph
  %i.if = load ptr, ptr %i.fs, align 8, !tbaa !16
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.gx
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !14
  %i.ii = fmul double %i.ih, f0x3FF6A09E667F3BCD
  %i.ij = fptrunc double %i.ii to float
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store float %i.ij, ptr %i.ik, align 4, !tbaa !9
  %i.il = load ptr, ptr %gep312.2, align 8, !tbaa !16
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.gx
  %i.in = load double, ptr %i.im, align 8, !tbaa !14
  %i.io = fmul double %i.in, f0x3FF6A09E667F3BCD
  %i.ip = fptrunc double %i.io to float
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store float %i.ip, ptr %i.iq, align 4, !tbaa !9
  br label %._crit_edge199

._crit_edge199:                                   ; preds = %scalar.ph.2, %scalar.ph
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count282
  br i1 %exitcond283.not, label %._crit_edge202, label %.lr.ph194.preheader, !llvm.loop !34

._crit_edge202:                                   ; preds = %._crit_edge199, %bb.o
  switch i32 %0, label %bb.r [
    i32 3, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %._crit_edge202
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.iv = load float, ptr %i.ir, align 4, !tbaa !9 ; 2 uses
  %i.iw = load float, ptr %i.c, align 16, !tbaa !9 ; 2 uses
  %i.ix = load <2 x float>, ptr %i.it, align 4, !tbaa !9 ; 3 uses
  %i.iy = load <2 x float>, ptr %i.iu, align 16, !tbaa !9 ; 3 uses
  %i.iz = fneg <2 x float> %i.iy
  %i.ja = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jb = insertelement <2 x float> %i.ja, float %i.iw, i64 1
  %i.jc = fmul <2 x float> %i.jb, %i.iz
  %i.jd = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.je = insertelement <2 x float> %i.jd, float %i.iv, i64 1
  %i.jf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.je, <2 x float> %i.jc)
  store <2 x float> %i.jf, ptr %i.is, align 8, !tbaa !9
  %i.jg = fneg float %i.iv
  %i.jh = extractelement <2 x float> %i.ix, i64 0
  %i.ji = fmul float %i.jh, %i.jg
  %i.jj = extractelement <2 x float> %i.iy, i64 0
  %i.jk = call float @llvm.fmuladd.f32(float %i.iw, float %i.jj, float %i.ji)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store float %i.jk, ptr %i.jl, align 16, !tbaa !9
  %i.jm = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.jn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.jq = load float, ptr %i.jm, align 4, !tbaa !9 ; 2 uses
  %i.jr = load float, ptr %i.d, align 16, !tbaa !9 ; 2 uses
  %i.js = load <2 x float>, ptr %i.jo, align 4, !tbaa !9 ; 3 uses
  %i.jt = load <2 x float>, ptr %i.jp, align 16, !tbaa !9 ; 3 uses
  %i.ju = fneg <2 x float> %i.jt
  %i.jv = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jw = insertelement <2 x float> %i.jv, float %i.jr, i64 1
  %i.jx = fmul <2 x float> %i.jw, %i.ju
  %i.jy = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jz = insertelement <2 x float> %i.jy, float %i.jq, i64 1
  %i.ka = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.jz, <2 x float> %i.jx)
  store <2 x float> %i.ka, ptr %i.jn, align 8, !tbaa !9
  %i.kb = fneg float %i.jq
  %i.kc = extractelement <2 x float> %i.js, i64 0
  %i.kd = fmul float %i.kc, %i.kb
  %i.ke = extractelement <2 x float> %i.jt, i64 0
  %i.kf = call float @llvm.fmuladd.f32(float %i.jr, float %i.ke, float %i.kd)
  br label %.thread

bb.q:                                             ; preds = %._crit_edge202
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !9
  %i.ki = fneg float %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float %i.ki, ptr %i.kj, align 4, !tbaa !9
  %i.kk = load float, ptr %i.c, align 16, !tbaa !9
  %i.kl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store float %i.kk, ptr %i.kl, align 16, !tbaa !9
  %i.km = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.kn = load float, ptr %i.km, align 4, !tbaa !9
  %i.ko = fneg float %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store float %i.ko, ptr %i.kp, align 4, !tbaa !9
  %i.kq = load float, ptr %i.d, align 16, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.p
  %.sink321.sroa.phi = phi ptr [ %.sink321.sroa.gep, %bb.q ], [ %.sink321.sroa.gep406, %bb.p ]
  %.sink319 = phi float [ %i.kq, %bb.q ], [ %i.kf, %bb.p ]
  store float %.sink319, ptr %.sink321.sroa.phi, align 16, !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i64 36, i1 false)
  br label %.preheader169.preheader

bb.r:                                             ; preds = %._crit_edge202
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i64 36, i1 false)
  %i.kr = icmp sgt i32 %0, 0
  br i1 %i.kr, label %.preheader169.preheader, label %iter.check

.preheader169.preheader:                          ; preds = %.thread, %bb.r
  %wide.trip.count297 = zext nneg i32 %0 to i64   ; 2 uses
  %i.ks = add nsw i32 %0, -1
  %i.kt = icmp ult i32 %i.ks, 7
  %lcmp.mod403 = icmp ne i32 %0, 0
  br label %.preheader169

.preheader169:                                    ; preds = %.preheader169.preheader, %._crit_edge209
  %indvars.iv294 = phi i64 [ 0, %.preheader169.preheader ], [ %indvars.iv.next295, %._crit_edge209 ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv294 ; 9 uses
  %i.ku = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv294
  br label %.preheader168

.preheader167:                                    ; preds = %._crit_edge209
  %i.kv = icmp slt i32 %0, 3
  br i1 %i.kv, label %iter.check, label %.lr.ph214.preheader

iter.check:                                       ; preds = %bb.r, %.preheader167
  %i.kw = zext nneg i32 %0 to i64
  br label %.lr.ph212

.preheader168:                                    ; preds = %.preheader169, %._crit_edge205
  %indvars.iv289 = phi i64 [ 0, %.preheader169 ], [ %indvars.iv.next290, %._crit_edge205 ] ; 3 uses
  %invariant.gep206 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv289 ; 9 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv289 ; 2 uses
  %.promoted = load float, ptr %i.kx, align 4, !tbaa !9 ; 2 uses
  br i1 %i.kt, label %.epil.preheader398, label %.preheader168.new

.preheader168.new:                                ; preds = %.preheader168, %.preheader168.new
  %indvars.iv284 = phi i64 [ %niter405.next.7, %.preheader168.new ], [ 0, %.preheader168 ] ; 10 uses
  %i.ky = phi float [ %i.lw, %.preheader168.new ], [ %.promoted, %.preheader168 ]
  %gep = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv284
  %i.kz = load float, ptr %gep, align 4, !tbaa !9
  %gep207 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep206, i64 %indvars.iv284
  %i.la = load float, ptr %gep207, align 4, !tbaa !9
  %i.lb = call float @llvm.fmuladd.f32(float %i.kz, float %i.la, float %i.ky)
  %indvars.iv.next285 = or disjoint i64 %indvars.iv284, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next285
  %i.lc = load float, ptr %gep.1, align 4, !tbaa !9
  %gep207.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep206, i64 %indvars.iv.next285
  %i.ld = load float, ptr %gep207.1, align 4, !tbaa !9
  %i.le = call float @llvm.fmuladd.f32(float %i.lc, float %i.ld, float %i.lb)
  %indvars.iv.next285.1 = or disjoint i64 %indvars.iv284, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next285.1
  %i.lf = load float, ptr %gep.2, align 4, !tbaa !9
  %gep207.2 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep206, i64 %indvars.iv.next285.1
  %i.lg = load float, ptr %gep207.2, align 4, !tbaa !9
  %i.lh = call float @llvm.fmuladd.f32(float %i.lf, float %i.lg, float %i.le)
  %indvars.iv.next285.2 = or disjoint i64 %indvars.iv284, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next285.2
  %i.li = load float, ptr %gep.3, align 4, !tbaa !9
  %gep207.3 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep206, i64 %indvars.iv.next285.2
  %i.lj = load float, ptr %gep207.3, align 4, !tbaa !9
  %i.lk = call float @llvm.fmuladd.f32(float %i.li, float %i.lj, float %i.lh)
  %indvars.iv.next285.3 = or disjoint i64 %indvars.iv284, 4 ; 2 uses
  %gep.4 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next285.3
  %i.ll = load float, ptr %gep.4, align 4, !tbaa !9
  %gep207.4 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep206, i64 %indvars.iv.next285.3
  %i.lm = load float, ptr %gep207.4, align 4, !tbaa !9
  %i.ln = call float @llvm.fmuladd.f32(float %i.ll, float %i.lm, float %i.lk)
  %indvars.iv.next285.4 = or disjoint i64 %indvars.iv284, 5 ; 2 uses
  %gep.5 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next285.4
  %i.lo = load float, ptr %gep.5, align 4, !tbaa !9
  %gep207.5 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep206, i64 %indvars.iv.next285.4
  %i.lp = load float, ptr %gep207.5, align 4, !tbaa !9
  %i.lq = call float @llvm.fmuladd.f32(float %i.lo, float %i.lp, float %i.ln)
  %indvars.iv.next285.5 = or disjoint i64 %indvars.iv284, 6 ; 2 uses
  %gep.6 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next285.5
  %i.lr = load float, ptr %gep.6, align 4, !tbaa !9
  %gep207.6 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep206, i64 %indvars.iv.next285.5
  %i.ls = load float, ptr %gep207.6, align 4, !tbaa !9
  %i.lt = call float @llvm.fmuladd.f32(float %i.lr, float %i.ls, float %i.lq)
  %indvars.iv.next285.6 = or disjoint i64 %indvars.iv284, 7 ; 2 uses
  %gep.7 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next285.6
  %i.lu = load float, ptr %gep.7, align 4, !tbaa !9
  %gep207.7 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep206, i64 %indvars.iv.next285.6
  %i.lv = load float, ptr %gep207.7, align 4, !tbaa !9
  %i.lw = call float @llvm.fmuladd.f32(float %i.lu, float %i.lv, float %i.lt)
  %niter405.next.7 = add nuw nsw i64 %indvars.iv284, 8
  br label %.preheader168.new, !llvm.loop !35

.epil.preheader398:                               ; preds = %.preheader168
  call void @llvm.assume(i1 %lcmp.mod403)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader398
  %indvars.iv284.epil = phi i64 [ 0, %.epil.preheader398 ], [ %indvars.iv.next285.epil, %bb.s ] ; 3 uses
  %i.lx = phi float [ %.promoted, %.epil.preheader398 ], [ %i.ma, %bb.s ]
  %epil.iter400 = phi i64 [ 0, %.epil.preheader398 ], [ %epil.iter400.next, %bb.s ]
  %gep.epil = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv284.epil
  %i.ly = load float, ptr %gep.epil, align 4, !tbaa !9
  %gep207.epil = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep206, i64 %indvars.iv284.epil
  %i.lz = load float, ptr %gep207.epil, align 4, !tbaa !9
  %i.ma = call float @llvm.fmuladd.f32(float %i.ly, float %i.lz, float %i.lx) ; 2 uses
  %indvars.iv.next285.epil = add nuw nsw i64 %indvars.iv284.epil, 1
  %epil.iter400.next = add i64 %epil.iter400, 1   ; 2 uses
  %epil.iter400.cmp.not = icmp eq i64 %epil.iter400.next, %i.ca
  br i1 %epil.iter400.cmp.not, label %._crit_edge205, label %bb.s, !llvm.loop !36

._crit_edge205:                                   ; preds = %bb.s
  store float %i.ma, ptr %i.kx, align 4, !tbaa !9
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count297
  br i1 %exitcond293.not, label %._crit_edge209, label %.preheader168, !llvm.loop !37

._crit_edge209:                                   ; preds = %._crit_edge205
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.preheader167, label %.preheader169, !llvm.loop !38

.lr.ph212:                                        ; preds = %iter.check, %.lr.ph212
  %indvars.iv299 = phi i64 [ %i.kw, %iter.check ], [ %indvars.iv.next300, %.lr.ph212 ] ; 4 uses
  %i.mb = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv299
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv299
  store float 1.000000e+00, ptr %i.mc, align 4, !tbaa !9
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1
  %i.md = trunc nuw i64 %indvars.iv299 to i32
  %i.me = icmp slt i32 %i.md, 2
  br i1 %i.me, label %.lr.ph212, label %.lr.ph214.preheader, !llvm.loop !39

.lr.ph214.preheader:                              ; preds = %.lr.ph212, %.preheader167
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %.lr.ph214
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %.lr.ph214 ], [ 0, %.lr.ph214.preheader ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv302
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !16
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 258, ptr noundef %i.mg)
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv302
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !16
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 259, ptr noundef %i.mi)
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next303, %i.i
  br i1 %exitcond307.not, label %._crit_edge215, label %.lr.ph214, !llvm.loop !40

._crit_edge215:                                   ; preds = %.lr.ph214
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 261, ptr noundef nonnull %i.j)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 262, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(60) %1, i8 noundef zeroext %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(60) %1) #16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.b, ptr %i.a, align 8, !tbaa !44
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !46
  %i.f = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.f, ptr %i.c, align 8, !tbaa !48
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !48
  store i8 %i.h, ptr %i.g, align 1, !tbaa !48
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !49
  %i.k = load ptr, ptr %0, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !48
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !48
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_Z6jacobiPPdiS_S0_Pi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #10

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_Z11do_fit_ndimiiPfPA3_KfPA3_f(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 16       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @_Z10calc_fit_RiiPKfPA3_S_PA3_fS4_(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.a)
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader29.preheader, label %._crit_edge

end_hunk_0
begin_hunk_1_@_Z6do_fitiPfPA3_KfPA3_f:bb.a
  %i.k = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat12, <8 x float> %strided.vec20, <8 x float> %i.j)
  %i.l = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat14, <8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.m = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat16, <8 x float> %strided.vec19, <8 x float> %i.l)
  %i.n = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat18, <8 x float> %strided.vec20, <8 x float> %i.m)
  %i.o = shufflevector <8 x float> %i.h, <8 x float> %i.k, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.p = shufflevector <8 x float> %i.n, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.o, <16 x float> %i.p, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.e, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_Z11do_fit_ndimiiPfPA3_KfPA3_f.exit, label %.preheader29.i.preheader

.preheader29.i.preheader:                         ; preds = %.preheader29.preheader.i, %middle.block
  %indvar.i.ph = phi i64 [ 0, %.preheader29.preheader.i ], [ %n.vec, %middle.block ]
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.i.preheader, %.preheader29.i
  %indvar.i = phi i64 [ %indvar.next.i, %.preheader29.i ], [ %indvar.i.ph, %.preheader29.i.preheader ] ; 3 uses
  %i.r = mul nuw nsw i64 %indvar.i, 12
  %scevgep.i = getelementptr nuw i8, ptr %3, i64 %i.r ; 3 uses
  %.sroa.0.0.copyload.i = load float, ptr %scevgep.i, align 4, !tbaa !9 ; 3 uses
  %.sroa.6.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 4
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0.scevgep.sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %.sroa.9.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 8
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.9.0.scevgep.sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvar.i ; 3 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %.pre.i, float %.sroa.0.0.copyload.i, float 0.000000e+00)
  %i.u = tail call float @llvm.fmuladd.f32(float %.pre45.i, float %.sroa.6.0.copyload.i, float %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %.pre47.i, float %.sroa.9.0.copyload.i, float %i.u)
  store float %i.v, ptr %i.s, align 4, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.x = tail call float @llvm.fmuladd.f32(float %.pre49.i, float %.sroa.0.0.copyload.i, float 0.000000e+00)
  %i.y = tail call float @llvm.fmuladd.f32(float %.pre52.i, float %.sroa.6.0.copyload.i, float %i.x)
  %i.z = tail call float @llvm.fmuladd.f32(float %.pre55.i, float %.sroa.9.0.copyload.i, float %i.y)
  store float %i.z, ptr %i.w, align 4, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = tail call float @llvm.fmuladd.f32(float %.pre57.i, float %.sroa.0.0.copyload.i, float 0.000000e+00)
  %i.ac = tail call float @llvm.fmuladd.f32(float %.pre60.i, float %.sroa.6.0.copyload.i, float %i.ab)
  %i.ad = tail call float @llvm.fmuladd.f32(float %.pre63.i, float %.sroa.9.0.copyload.i, float %i.ac)
  store float %i.ad, ptr %i.aa, align 4, !tbaa !9
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvar.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z11do_fit_ndimiiPfPA3_KfPA3_f.exit, label %.preheader29.i, !llvm.loop !55

_Z11do_fit_ndimiiPfPA3_KfPA3_f.exit:              ; preds = %.preheader29.i, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z12reset_x_ndimiiPKiiS0_PA3_fPKf(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 16             ; 30 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp sgt i32 %0, 3
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(60) @.str, i8 noundef zeroext 2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 305) #17
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.c, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.e = load ptr, ptr %7, align 8, !tbaa !46     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.h = load i64, ptr %i.f, align 8, !tbaa !48
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.a
  store <2 x float> zeroinitializer, ptr %i.a, align 16, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.j, align 8, !tbaa !9
  %.not = icmp eq ptr %2, null
  %i.k = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader70, label %.preheader72

.preheader72:                                     ; preds = %bb.h
  br i1 %i.k, label %.lr.ph77, label %.loopexit71

.lr.ph77:                                         ; preds = %.preheader72
  %i.l = icmp sgt i32 %0, 0
  %wide.trip.count107 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %i.l, label %.lr.ph.us.preheader, label %._crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph77
  %wide.trip.count102 = zext nneg i32 %0 to i64
  %trip.count.minus.1 = add nsw i64 %wide.trip.count102, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.m = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 15 uses
  %xtraiter = and i64 %wide.trip.count107, 3      ; 3 uses
  %i.n = icmp ult i32 %1, 4
  br i1 %i.n, label %.lr.ph.us.epil.preheader, label %.lr.ph.us.preheader.new

.lr.ph.us.preheader.new:                          ; preds = %.lr.ph.us.preheader
  %unroll_iter = and i64 %wide.trip.count107, 2147483644
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us, %.lr.ph.us.preheader.new
  %indvars.iv104 = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %indvars.iv.next105.3, %.lr.ph.us ] ; 5 uses
  %.05476.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader.new ], [ %i.aw, %.lr.ph.us ]
  %niter = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %niter.next.3, %.lr.ph.us ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %6, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !9  ; 2 uses
  %broadcast.splatinsert157 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat158 = shufflevector <4 x float> %broadcast.splatinsert157, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = getelementptr inbounds [12 x i8], ptr %5, i64 %i.q
  %wide.masked.load = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.t, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158, <4 x float> %wide.masked.load, <4 x float> %wide.masked.load159)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.u, ptr align 16 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !13
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %6, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert157.1 = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat158.1 = shufflevector <4 x float> %broadcast.splatinsert157.1, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ab = getelementptr inbounds [12 x i8], ptr %5, i64 %i.y
  %wide.masked.load.1 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ab, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159.1 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158.1, <4 x float> %wide.masked.load.1, <4 x float> %wide.masked.load159.1)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ac, ptr align 16 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert157.2 = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat158.2 = shufflevector <4 x float> %broadcast.splatinsert157.2, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ag
  %wide.masked.load.2 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.aj, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159.2 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158.2, <4 x float> %wide.masked.load.2, <4 x float> %wide.masked.load159.2)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ak, ptr align 16 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert157.3 = insertelement <4 x float> poison, float %i.aq, i64 0
  %broadcast.splat158.3 = shufflevector <4 x float> %broadcast.splatinsert157.3, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ar = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ao
  %i.as = fadd float %.05476.us, %i.s
  %i.at = fadd float %i.as, %i.aa
  %i.au = fadd float %i.at, %i.ai
  %wide.masked.load.3 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ar, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159.3 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158.3, <4 x float> %wide.masked.load.3, <4 x float> %wide.masked.load159.3)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.av, ptr align 16 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.aw = fadd float %i.au, %i.aq                 ; 3 uses
  %indvars.iv.next105.3 = add nuw nsw i64 %indvars.iv104, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit71.loopexit213.unr-lcssa, label %.lr.ph.us, !llvm.loop !56

.preheader70:                                     ; preds = %bb.h
  br i1 %i.k, label %.lr.ph81, label %.loopexit71

.lr.ph81:                                         ; preds = %.preheader70
  %i.ax = icmp sgt i32 %0, 0
  %wide.trip.count122 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %i.ax, label %.lr.ph.us83.preheader, label %._crit_edge

.lr.ph.us83.preheader:                            ; preds = %.lr.ph81
  %wide.trip.count117 = zext nneg i32 %0 to i64
  %trip.count.minus.1163 = add nsw i64 %wide.trip.count117, -1
  %broadcast.splatinsert164 = insertelement <4 x i64> poison, i64 %trip.count.minus.1163, i64 0
  %broadcast.splat165 = shufflevector <4 x i64> %broadcast.splatinsert164, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ay = icmp uge <4 x i64> %broadcast.splat165, <i64 0, i64 1, i64 2, i64 3> ; 15 uses
  %xtraiter217 = and i64 %wide.trip.count122, 3   ; 3 uses
  %i.az = icmp ult i32 %1, 4
  br i1 %i.az, label %.lr.ph.us83.epil.preheader, label %.lr.ph.us83.preheader.new

.lr.ph.us83.preheader.new:                        ; preds = %.lr.ph.us83.preheader
  %unroll_iter222 = and i64 %wide.trip.count122, 2147483644
  br label %.lr.ph.us83

.lr.ph.us83:                                      ; preds = %.lr.ph.us83, %.lr.ph.us83.preheader.new
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.us83.preheader.new ], [ %indvars.iv.next120.3, %.lr.ph.us83 ] ; 6 uses
  %.15580.us = phi float [ 0.000000e+00, %.lr.ph.us83.preheader.new ], [ %i.bt, %.lr.ph.us83 ]
  %niter223 = phi i64 [ 0, %.lr.ph.us83.preheader.new ], [ %niter223.next.3, %.lr.ph.us83 ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv119
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert166 = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat167 = shufflevector <4 x float> %broadcast.splatinsert166, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv119
  %wide.masked.load171 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bc, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %wide.masked.load172 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat167, <4 x float> %wide.masked.load171, <4 x float> %wide.masked.load172)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bd, ptr align 16 %i.a, <4 x i1> %i.ay), !tbaa !9
  %indvars.iv.next120 = or disjoint i64 %indvars.iv119, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next120
  %i.bf = load float, ptr %i.be, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert166.1 = insertelement <4 x float> poison, float %i.bf, i64 0
  %broadcast.splat167.1 = shufflevector <4 x float> %broadcast.splatinsert166.1, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv.next120
  %wide.masked.load171.1 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bg, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %wide.masked.load172.1 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat167.1, <4 x float> %wide.masked.load171.1, <4 x float> %wide.masked.load172.1)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bh, ptr align 16 %i.a, <4 x i1> %i.ay), !tbaa !9
  %indvars.iv.next120.1 = or disjoint i64 %indvars.iv119, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next120.1
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert166.2 = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat167.2 = shufflevector <4 x float> %broadcast.splatinsert166.2, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv.next120.1
  %wide.masked.load171.2 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bk, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %wide.masked.load172.2 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat167.2, <4 x float> %wide.masked.load171.2, <4 x float> %wide.masked.load172.2)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bl, ptr align 16 %i.a, <4 x i1> %i.ay), !tbaa !9
  %indvars.iv.next120.2 = or disjoint i64 %indvars.iv119, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next120.2
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert166.3 = insertelement <4 x float> poison, float %i.bn, i64 0
  %broadcast.splat167.3 = shufflevector <4 x float> %broadcast.splatinsert166.3, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv.next120.2
  %i.bp = fadd float %.15580.us, %i.bb
  %i.bq = fadd float %i.bp, %i.bf
  %i.br = fadd float %i.bq, %i.bj
  %wide.masked.load171.3 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.bo, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %wide.masked.load172.3 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat167.3, <4 x float> %wide.masked.load171.3, <4 x float> %wide.masked.load172.3)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bs, ptr align 16 %i.a, <4 x i1> %i.ay), !tbaa !9
  %i.bt = fadd float %i.br, %i.bn                 ; 3 uses
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %niter223.next.3 = add nuw i64 %niter223, 4     ; 2 uses
  %niter223.ncmp.3 = icmp eq i64 %niter223.next.3, %unroll_iter222
  br i1 %niter223.ncmp.3, label %.loopexit71.loopexit.unr-lcssa, label %.lr.ph.us83, !llvm.loop !57

.loopexit71.loopexit.unr-lcssa:                   ; preds = %.lr.ph.us83
  %lcmp.mod219.not = icmp eq i64 %xtraiter217, 0
  br i1 %lcmp.mod219.not, label %.loopexit71, label %.lr.ph.us83.epil.preheader

.lr.ph.us83.epil.preheader:                       ; preds = %.loopexit71.loopexit.unr-lcssa, %.lr.ph.us83.preheader
  %indvars.iv119.epil.init = phi i64 [ 0, %.lr.ph.us83.preheader ], [ %indvars.iv.next120.3, %.loopexit71.loopexit.unr-lcssa ]
  %.15580.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.us83.preheader ], [ %i.bt, %.loopexit71.loopexit.unr-lcssa ]
  %lcmp.mod221 = icmp ne i64 %xtraiter217, 0
  tail call void @llvm.assume(i1 %lcmp.mod221)
  br label %.lr.ph.us83.epil

.lr.ph.us83.epil:                                 ; preds = %.lr.ph.us83.epil, %.lr.ph.us83.epil.preheader
  %indvars.iv119.epil = phi i64 [ %indvars.iv119.epil.init, %.lr.ph.us83.epil.preheader ], [ %indvars.iv.next120.epil, %.lr.ph.us83.epil ] ; 3 uses
  %.15580.us.epil = phi float [ %.15580.us.epil.init, %.lr.ph.us83.epil.preheader ], [ %i.by, %.lr.ph.us83.epil ]
  %epil.iter218 = phi i64 [ 0, %.lr.ph.us83.epil.preheader ], [ %epil.iter218.next, %.lr.ph.us83.epil ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv119.epil
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert166.epil = insertelement <4 x float> poison, float %i.bv, i64 0
  %broadcast.splat167.epil = shufflevector <4 x float> %broadcast.splatinsert166.epil, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv119.epil
  %wide.masked.load171.epil = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bw, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %wide.masked.load172.epil = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.ay, <4 x float> poison), !tbaa !9
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat167.epil, <4 x float> %wide.masked.load171.epil, <4 x float> %wide.masked.load172.epil)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.bx, ptr align 16 %i.a, <4 x i1> %i.ay), !tbaa !9
  %i.by = fadd float %.15580.us.epil, %i.bv       ; 2 uses
  %indvars.iv.next120.epil = add nuw nsw i64 %indvars.iv119.epil, 1
  %epil.iter218.next = add i64 %epil.iter218, 1   ; 2 uses
  %epil.iter218.cmp.not = icmp eq i64 %epil.iter218.next, %xtraiter217
  br i1 %epil.iter218.cmp.not, label %.loopexit71, label %.lr.ph.us83.epil, !llvm.loop !58

.loopexit71.loopexit213.unr-lcssa:                ; preds = %.lr.ph.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit71, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %.loopexit71.loopexit213.unr-lcssa, %.lr.ph.us.preheader
  %indvars.iv104.epil.init = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next105.3, %.loopexit71.loopexit213.unr-lcssa ]
  %.05476.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.preheader ], [ %i.aw, %.loopexit71.loopexit213.unr-lcssa ]
  %lcmp.mod216 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph.us.epil

.lr.ph.us.epil:                                   ; preds = %.lr.ph.us.epil, %.lr.ph.us.epil.preheader
  %indvars.iv104.epil = phi i64 [ %indvars.iv104.epil.init, %.lr.ph.us.epil.preheader ], [ %indvars.iv.next105.epil, %.lr.ph.us.epil ] ; 2 uses
  %.05476.us.epil = phi float [ %.05476.us.epil.init, %.lr.ph.us.epil.preheader ], [ %i.cg, %.lr.ph.us.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.us.epil.preheader ], [ %epil.iter.next, %.lr.ph.us.epil ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104.epil
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !9 ; 2 uses
  %broadcast.splatinsert157.epil = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat158.epil = shufflevector <4 x float> %broadcast.splatinsert157.epil, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = getelementptr inbounds [12 x i8], ptr %5, i64 %i.cb
  %wide.masked.load.epil = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ce, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %wide.masked.load159.epil = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 16 %i.a, <4 x i1> %i.m, <4 x float> poison), !tbaa !9
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat158.epil, <4 x float> %wide.masked.load.epil, <4 x float> %wide.masked.load159.epil)
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.cf, ptr align 16 %i.a, <4 x i1> %i.m), !tbaa !9
  %i.cg = fadd float %.05476.us.epil, %i.cd       ; 2 uses
  %indvars.iv.next105.epil = add nuw nsw i64 %indvars.iv104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit71, label %.lr.ph.us.epil, !llvm.loop !59

.loopexit71:                                      ; preds = %.loopexit71.loopexit213.unr-lcssa, %.lr.ph.us.epil, %.loopexit71.loopexit.unr-lcssa, %.lr.ph.us83.epil, %.preheader72, %.preheader70
  %.2 = phi float [ %i.by, %.lr.ph.us83.epil ], [ 0.000000e+00, %.preheader70 ], [ 0.000000e+00, %.preheader72 ], [ %i.bt, %.loopexit71.loopexit.unr-lcssa ], [ %i.aw, %.loopexit71.loopexit213.unr-lcssa ], [ %i.cg, %.lr.ph.us.epil ] ; 3 uses
  %i.ch = icmp sgt i32 %0, 0
  br i1 %i.ch, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.loopexit71
  %wide.trip.count127 = zext nneg i32 %0 to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check176 = icmp ult i32 %0, 32
  br i1 %min.iters.check176, label %vec.epilog.ph, label %vector.ph177

vector.ph177:                                     ; preds = %vector.main.loop.iter.check
  %i.ci = and i64 %wide.trip.count127, 28
  %n.vec178 = and i64 %wide.trip.count127, 2147483616 ; 4 uses
  %broadcast.splatinsert179 = insertelement <8 x float> poison, float %.2, i64 0
  %broadcast.splat180 = shufflevector <8 x float> %broadcast.splatinsert179, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next186, %vector.body181 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index182 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 64 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.cj, align 16, !tbaa !9
  %wide.load183 = load <8 x float>, ptr %i.ck, align 16, !tbaa !9
  %wide.load184 = load <8 x float>, ptr %i.cl, align 16, !tbaa !9
  %wide.load185 = load <8 x float>, ptr %i.cm, align 16, !tbaa !9
  %i.cn = fdiv <8 x float> %wide.load, %broadcast.splat180
  %i.co = fdiv <8 x float> %wide.load183, %broadcast.splat180
  %i.cp = fdiv <8 x float> %wide.load184, %broadcast.splat180
  %i.cq = fdiv <8 x float> %wide.load185, %broadcast.splat180
  store <8 x float> %i.cn, ptr %i.cj, align 16, !tbaa !9
  store <8 x float> %i.co, ptr %i.ck, align 16, !tbaa !9
  store <8 x float> %i.cp, ptr %i.cl, align 16, !tbaa !9
  store <8 x float> %i.cq, ptr %i.cm, align 16, !tbaa !9
  %index.next186 = add nuw i64 %index182, 32      ; 2 uses
  %i.cr = icmp eq i64 %index.next186, %n.vec178
  br i1 %i.cr, label %middle.block187, label %vector.body181, !llvm.loop !60

middle.block187:                                  ; preds = %vector.body181
  %cmp.n = icmp eq i64 %n.vec178, %wide.trip.count127
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block187
  %min.epilog.iters.check = icmp eq i64 %i.ci, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec178, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec188 = and i64 %wide.trip.count127, 2147483644 ; 3 uses
  %broadcast.splatinsert189 = insertelement <4 x float> poison, float %.2, i64 0
  %broadcast.splat190 = shufflevector <4 x float> %broadcast.splatinsert189, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index191 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next193, %vec.epilog.vector.body ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index191 ; 2 uses
  %wide.load192 = load <4 x float>, ptr %i.cs, align 16, !tbaa !9
  %i.ct = fdiv <4 x float> %wide.load192, %broadcast.splat190
  store <4 x float> %i.ct, ptr %i.cs, align 16, !tbaa !9
  %index.next193 = add nuw i64 %index191, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.cu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n194 = icmp eq i64 %n.vec188, %wide.trip.count127
  br i1 %cmp.n194, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv124.ph = phi i64 [ 0, %iter.check ], [ %n.vec178, %vec.epilog.iter.check ], [ %n.vec188, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %.lr.ph ], [ %indvars.iv124.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv124 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !9
  %i.cx = fdiv float %i.cw, %.2
  store float %i.cx, ptr %i.cv, align 4, !tbaa !9
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph77, %.lr.ph81, %middle.block187, %vec.epilog.middle.block, %.loopexit71
  %.not65 = icmp eq ptr %4, null
  %i.cy = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %.not65, label %.preheader, label %.preheader68

.preheader68:                                     ; preds = %._crit_edge
  br i1 %i.cy, label %.lr.ph88, label %.loopexit

.lr.ph88:                                         ; preds = %.preheader68
  %i.cz = load <2 x float>, ptr %i.a, align 16, !tbaa !9 ; 5 uses
  %i.da = load float, ptr %i.j, align 8, !tbaa !9 ; 5 uses
  %wide.trip.count132 = zext nneg i32 %3 to i64   ; 2 uses
  %xtraiter224 = and i64 %wide.trip.count132, 3   ; 3 uses
  %i.db = icmp ult i32 %3, 4
  br i1 %i.db, label %.epil.preheader, label %.lr.ph88.new

.lr.ph88.new:                                     ; preds = %.lr.ph88
  %unroll_iter228 = and i64 %wide.trip.count132, 2147483644
  br label %bb.i

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.cy, label %.lr.ph90, label %.loopexit

.lr.ph90:                                         ; preds = %.preheader
  %i.dc = load <2 x float>, ptr %i.a, align 16, !tbaa !9 ; 3 uses
  %i.dd = load float, ptr %i.j, align 8, !tbaa !9 ; 2 uses
  %wide.trip.count137 = zext nneg i32 %3 to i64   ; 3 uses
  %min.iters.check195 = icmp ult i32 %3, 8
  br i1 %min.iters.check195, label %scalar.ph.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph90
  %n.vec197 = and i64 %wide.trip.count137, 2147483640 ; 3 uses
  %broadcast.splat199 = shufflevector <2 x float> %i.dc, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat201 = shufflevector <2 x float> %i.dc, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert202 = insertelement <8 x float> poison, float %i.dd, i64 0
  %i.de = shufflevector <8 x float> %broadcast.splatinsert202, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph196
  %index205 = phi i64 [ 0, %vector.ph196 ], [ %index.next208, %vector.body204 ] ; 2 uses
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %index205 ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.df, align 4, !tbaa !9 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec206 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.dg = fsub <8 x float> %strided.vec, %broadcast.splat199
  %i.dh = fsub <8 x float> %strided.vec206, %broadcast.splat201
  %i.di = shufflevector <8 x float> %i.dg, <8 x float> %i.dh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dj = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = fsub <16 x float> %i.dj, %i.de
  %interleaved.vec = shufflevector <16 x float> %i.di, <16 x float> %i.dk, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.df, align 4, !tbaa !9
  %index.next208 = add nuw i64 %index205, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next208, %n.vec197
  br i1 %i.dl, label %middle.block209, label %vector.body204, !llvm.loop !64

middle.block209:                                  ; preds = %vector.body204
  %cmp.n210 = icmp eq i64 %n.vec197, %wide.trip.count137
  br i1 %cmp.n210, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph90, %middle.block209
  %indvars.iv134.ph = phi i64 [ 0, %.lr.ph90 ], [ %n.vec197, %middle.block209 ]
  br label %scalar.ph

bb.i:                                             ; preds = %bb.i, %.lr.ph88.new
  %indvars.iv129 = phi i64 [ 0, %.lr.ph88.new ], [ %indvars.iv.next130.3, %bb.i ] ; 5 uses
  %niter229 = phi i64 [ 0, %.lr.ph88.new ], [ %niter229.next.3, %bb.i ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv129
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !13
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [12 x i8], ptr %5, i64 %i.do ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !9
  %i.ds = fsub float %i.dr, %i.da
  %i.dt = load <2 x float>, ptr %i.dp, align 4, !tbaa !9
  %i.du = fsub <2 x float> %i.dt, %i.cz
  store <2 x float> %i.du, ptr %i.dp, align 4, !tbaa !9
  store float %i.ds, ptr %i.dq, align 4, !tbaa !9
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv129
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !13
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [12 x i8], ptr %5, i64 %i.dy ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !9
  %i.ec = fsub float %i.eb, %i.da
  %i.ed = load <2 x float>, ptr %i.dz, align 4, !tbaa !9
  %i.ee = fsub <2 x float> %i.ed, %i.cz
  store <2 x float> %i.ee, ptr %i.dz, align 4, !tbaa !9
  store float %i.ec, ptr %i.ea, align 4, !tbaa !9
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv129
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !13
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [12 x i8], ptr %5, i64 %i.ei ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !9
  %i.em = fsub float %i.el, %i.da
  %i.en = load <2 x float>, ptr %i.ej, align 4, !tbaa !9
  %i.eo = fsub <2 x float> %i.en, %i.cz
  store <2 x float> %i.eo, ptr %i.ej, align 4, !tbaa !9
  store float %i.em, ptr %i.ek, align 4, !tbaa !9
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv129
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !13
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [12 x i8], ptr %5, i64 %i.es ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !9
  %i.ew = fsub float %i.ev, %i.da
  %i.ex = load <2 x float>, ptr %i.et, align 4, !tbaa !9
  %i.ey = fsub <2 x float> %i.ex, %i.cz
  store <2 x float> %i.ey, ptr %i.et, align 4, !tbaa !9
  store float %i.ew, ptr %i.eu, align 4, !tbaa !9
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  %niter229.next.3 = add nuw i64 %niter229, 4     ; 2 uses
  %niter229.ncmp.3 = icmp eq i64 %niter229.next.3, %unroll_iter228
  br i1 %niter229.ncmp.3, label %.loopexit.loopexit212.unr-lcssa, label %bb.i, !llvm.loop !65

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %scalar.ph ], [ %indvars.iv134.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv134 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !9
  %i.fc = fsub float %i.fb, %i.dd
  %i.fd = load <2 x float>, ptr %i.ez, align 4, !tbaa !9
  %i.fe = fsub <2 x float> %i.fd, %i.dc
  store <2 x float> %i.fe, ptr %i.ez, align 4, !tbaa !9
  store float %i.fc, ptr %i.fa, align 4, !tbaa !9
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %.loopexit, label %scalar.ph, !llvm.loop !66

.loopexit.loopexit212.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod226.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod226.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit212.unr-lcssa, %.lr.ph88
  %indvars.iv129.epil.init = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next130.3, %.loopexit.loopexit212.unr-lcssa ]
  %lcmp.mod227 = icmp ne i64 %xtraiter224, 0
  tail call void @llvm.assume(i1 %lcmp.mod227)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv129.epil = phi i64 [ %indvars.iv129.epil.init, %.epil.preheader ], [ %indvars.iv.next130.epil, %bb.j ] ; 2 uses
  %epil.iter225 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter225.next, %bb.j ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv129.epil
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !13
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [12 x i8], ptr %5, i64 %i.fh ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !9
  %i.fl = fsub float %i.fk, %i.da
  %i.fm = load <2 x float>, ptr %i.fi, align 4, !tbaa !9
  %i.fn = fsub <2 x float> %i.fm, %i.cz
  store <2 x float> %i.fn, ptr %i.fi, align 4, !tbaa !9
  store float %i.fl, ptr %i.fj, align 4, !tbaa !9
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter225.next = add i64 %epil.iter225, 1   ; 2 uses
  %epil.iter225.cmp.not = icmp eq i64 %epil.iter225.next, %xtraiter224
  br i1 %epil.iter225.cmp.not, label %.loopexit, label %bb.j, !llvm.loop !67

.loopexit:                                        ; preds = %.loopexit.loopexit212.unr-lcssa, %bb.j, %scalar.ph, %middle.block209, %.preheader68, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !41
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !44
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !46
  %i.g = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.g, ptr %i.b, align 8, !tbaa !48
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !48
  store i8 %i.i, ptr %i.h, align 1, !tbaa !48
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !49
  %i.l = load ptr, ptr %0, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  tail call void @_Z12reset_x_ndimiiPKiiS0_PA3_fPKf(i32 noundef 3, i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 double", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !12}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !24}
end_hunk_1
