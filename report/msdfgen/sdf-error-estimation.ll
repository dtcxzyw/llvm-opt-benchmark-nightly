Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/sdf-error-estimation?download=true
inline.NumInlined: 166
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.msdfgen::Scanline::Intersection" = type { double, i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<msdfgen::Scanline::Intersection, std::allocator<msdfgen::Scanline::Intersection>>::_Vector_impl" }
%"struct.std::_Vector_base<msdfgen::Scanline::Intersection, std::allocator<msdfgen::Scanline::Intersection>>::_Vector_impl" = type { %"struct.std::_Vector_base<msdfgen::Scanline::Intersection, std::allocator<msdfgen::Scanline::Intersection>>::_Vector_impl_data" }
%"struct.std::_Vector_base<msdfgen::Scanline::Intersection, std::allocator<msdfgen::Scanline::Intersection>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.msdfgen::Scanline" = type <{ %"class.std::vector", i32, [4 x i8] }>
%"class.msdfgen::Projection" = type { %"struct.msdfgen::Vector2", %"struct.msdfgen::Vector2" }
%"struct.msdfgen::Vector2" = type { double, double }

$_ZN7msdfgen12scanlineMSDFILi3EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE = comdat any

$_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE = comdat any

$_ZN7msdfgen21estimateSDFErrorInnerILi1EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE = comdat any

$_ZN7msdfgen21estimateSDFErrorInnerILi3EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE = comdat any

$_ZN7msdfgen21estimateSDFErrorInnerILi4EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__const._ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE.intersection = private unnamed_addr constant %"struct.msdfgen::Scanline::Intersection" { double -1.000000e+240, i32 1 }, align 8

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi1EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector", align 8       ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %5, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.u

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit66, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit66

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit66: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.x

bb.h:                                             ; preds = %bb.b
  %i.t = tail call noundef double @_ZNK7msdfgen10Projection8projectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3)
  %i.u = fadd double %i.t, -5.000000e-01          ; 4 uses
  %i.v = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  %i.w = add nsw i32 %i.v, -1                     ; 3 uses
  %i.x = sitofp i32 %i.w to double                ; 3 uses
  %i.y = fcmp ult double %i.u, 0.000000e+00
  %i.z = fcmp ugt double %i.u, %i.x
  %or.cond.i = or i1 %i.y, %i.z
  %i.aa = fcmp ogt double %i.u, 0.000000e+00
  %i.ab = uitofp i1 %i.aa to double
  %i.ac = fmul nnan double %i.x, %i.ab
  %i.ad = select i1 %or.cond.i, double %i.ac, double %i.u ; 2 uses
  %i.ae = icmp eq i32 %4, 1
  %i.af = fsub double %i.x, %i.ad
  %.055 = select i1 %i.ae, double %i.af, double %i.ad ; 2 uses
  %i.ag = tail call double @llvm.floor.f64(double %.055)
  %i.ah = fptosi double %i.ag to i32              ; 3 uses
  %i.ai = add nsw i32 %i.ah, 1                    ; 2 uses
  %i.aj = sitofp i32 %i.ah to double
  %i.ak = fsub double %.055, %i.aj
  %.not = icmp slt i32 %i.ai, %i.v                ; 2 uses
  %.054 = select i1 %.not, i32 %i.ah, i32 %i.w    ; 2 uses
  %.053 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.w) ; 2 uses
  %.052 = select i1 %.not, double %i.ak, double 1.000000e+00 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.ao = mul nsw i32 %.054, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !20
  %i.as = mul nsw i32 %.053, %i.an
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !20
  %i.aw = fsub double 1.000000e+00, %.052         ; 2 uses
  %i.ax = fpext float %i.ar to double
  %i.ay = fpext float %i.av to double
  %i.az = fmul double %.052, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ax, double %i.az) ; 2 uses
  %i.bb = fptrunc double %i.ba to float
  %i.bc = fcmp ogt double %i.ba, f0x3FE0000010000000
  br i1 %i.bc, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bd = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10
          to label %.noexc68 unwind label %.thread ; 4 uses

.noexc68:                                         ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) @__const._ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE.intersection, i64 16, i1 false), !tbaa.struct !22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  store ptr %i.bd, ptr %6, align 8, !tbaa !14
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !26
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !17
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %6, align 8, !tbaa !14
  br label %bb.v

.thread:                                          ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit82

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc68, %bb.h
  %i.bj = phi ptr [ null, %bb.h ], [ %i.bd, %.noexc68 ]
  %i.bk = phi ptr [ null, %bb.h ], [ %i.bg, %.noexc68 ] ; 2 uses
  %i.bl = load i32, ptr %i.a, align 8, !tbaa !8
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.s unwind label %bb.i

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78
  %i.bp = phi ptr [ %i.bj, %.lr.ph ], [ %i.dp, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78 ] ; 9 uses
  %i.bq = phi ptr [ %i.bk, %.lr.ph ], [ %i.dq, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78 ] ; 5 uses
  %i.br = phi ptr [ %i.bk, %.lr.ph ], [ %i.dr, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78 ] ; 6 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78 ] ; 3 uses
  %.05089 = phi i32 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78 ] ; 2 uses
  %.05188 = phi float [ %i.bb, %.lr.ph ], [ %i.ci, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78 ] ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.bt = load i32, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.bu = mul nsw i32 %i.bt, %.054
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = load float, ptr %i.bx, align 4, !tbaa !20
  %i.bz = mul nsw i32 %i.bt, %.053
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !20
  %i.ce = fpext float %i.by to double
  %i.cf = fpext float %i.cd to double
  %i.cg = fmul double %.052, %i.cf
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ce, double %i.cg)
  %i.ci = fptrunc double %i.ch to float           ; 3 uses
  %i.cj = fcmp une float %.05188, %i.ci
  br i1 %i.cj, label %bb.k, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78

bb.k:                                             ; preds = %bb.j
  %i.ck = fsub float 5.000000e-01, %.05188
  %i.cl = fpext float %i.ck to double
  %i.cm = fsub float %i.ci, %.05188               ; 3 uses
  %i.cn = fpext float %i.cm to double
  %i.co = fdiv double %i.cl, %i.cn                ; 3 uses
  %i.cp = fcmp oge double %i.co, 0.000000e+00
  %i.cq = fcmp ole double %i.co, 1.000000e+00
  %or.cond = and i1 %i.cp, %i.cq
  br i1 %or.cond, label %bb.l, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78

bb.l:                                             ; preds = %bb.k
  %i.cr = uitofp nneg i32 %.05089 to double
  %i.cs = fadd double %i.co, %i.cr
  %i.ct = fadd double %i.cs, 5.000000e-01
  %i.cu = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.ct)
          to label %bb.m unwind label %.loopexit  ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.cv = fcmp ogt float %i.cm, 0.000000e+00
  %i.cw = zext i1 %i.cv to i32
  %i.cx = fcmp olt float %i.cm, 0.000000e+00
  %.neg.i = sext i1 %i.cx to i32
  %i.cy = add nsw i32 %.neg.i, %i.cw              ; 2 uses
  %.not.i69 = icmp eq ptr %i.br, %i.bq
  br i1 %.not.i69, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double %i.cu, ptr %i.br, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.cy, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  store ptr %i.cz, ptr %i.bn, align 8, !tbaa !26
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78

bb.o:                                             ; preds = %bb.m
  %i.da = ptrtoint ptr %i.bq to i64
  %i.db = ptrtoint ptr %i.bp to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 6 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775792
  br i1 %i.dd, label %bb.p, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i70

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
          to label %.noexc76 unwind label %.loopexit.split-lp

.noexc76:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i70: ; preds = %bb.o
  %i.de = ashr exact i64 %i.dc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i71 = tail call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i71, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 576460752303423487)
  %i.di = select i1 %i.dg, i64 576460752303423487, i64 %i.dh ; 2 uses
  %i.dj = shl nuw nsw i64 %i.di, 4
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #10
          to label %.noexc77 unwind label %.loopexit ; 5 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i70
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dc ; 3 uses
  store double %i.cu, ptr %i.dl, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 %i.cy, ptr %.sroa.6.0..sroa_idx84, align 8, !tbaa !25
  %i.dm = icmp sgt i64 %i.dc, 0
  br i1 %i.dm, label %bb.q, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i73

bb.q:                                             ; preds = %.noexc77
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %i.bp, i64 %i.dc, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i73

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i73: ; preds = %bb.q, %.noexc77
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %.not.i17.i.i74 = icmp eq ptr %i.bp, null
  br i1 %.not.i17.i.i74, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i73
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.dc) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75: ; preds = %bb.r, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i73
  store ptr %i.dk, ptr %6, align 8, !tbaa !14
  store ptr %i.dn, ptr %i.bn, align 8, !tbaa !26
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.di ; 2 uses
  store ptr %i.do, ptr %i.bo, align 8, !tbaa !17
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78

.loopexit:                                        ; preds = %bb.l, %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i70
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78: ; preds = %bb.n, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75, %bb.k, %bb.j
  %i.dp = phi ptr [ %i.bp, %bb.n ], [ %i.dk, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75 ], [ %i.bp, %bb.k ], [ %i.bp, %bb.j ]
  %i.dq = phi ptr [ %i.bq, %bb.n ], [ %i.do, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75 ], [ %i.bq, %bb.k ], [ %i.bq, %bb.j ]
  %i.dr = phi ptr [ %i.cz, %bb.n ], [ %i.dn, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75 ], [ %i.br, %bb.k ], [ %i.br, %bb.j ]
  %i.ds = add nuw nsw i32 %.05089, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dt = load i32, ptr %i.a, align 8, !tbaa !8
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next, %i.du
  br i1 %i.dv, label %bb.j, label %._crit_edge, !llvm.loop !27

bb.s:                                             ; preds = %._crit_edge
  %i.dw = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i79.a = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i79.a, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit80.a, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !17
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit80.a

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit80.a: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit80.a, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit
  ret void

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %i.ec = phi ptr [ %i.bp, %.loopexit.split-lp ], [ %.pre, %bb.i ], [ %i.bp, %.loopexit ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.bh, %bb.i ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit82, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !17
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit82

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit82: ; preds = %.thread, %bb.v, %bb.w
  %.pn103 = phi { ptr, i32 } [ %i.bi, %.thread ], [ %.pn, %bb.v ], [ %.pn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit82, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit66
  %.pn.pn = phi { ptr, i32 } [ %.pn103, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit82 ], [ %i.m, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit66 ]
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef double @_ZNK7msdfgen10Projection8projectYEd(ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7msdfgen12scanlineMSDFILi3EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7msdfgen12scanlineMSDFILi3EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector", align 8       ; 17 uses
  %7 = alloca [4 x %"struct.msdfgen::Scanline::Intersection"], align 16 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %5, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.av

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i123 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.ay

bb.h:                                             ; preds = %bb.b
  %i.t = tail call noundef double @_ZNK7msdfgen10Projection8projectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3)
  %i.u = fadd double %i.t, -5.000000e-01          ; 4 uses
  %i.v = load i32, ptr %i.d, align 4, !tbaa !31   ; 2 uses
  %i.w = add nsw i32 %i.v, -1                     ; 3 uses
  %i.x = sitofp i32 %i.w to double                ; 3 uses
  %i.y = fcmp ult double %i.u, 0.000000e+00
  %i.z = fcmp ugt double %i.u, %i.x
  %or.cond.i = or i1 %i.y, %i.z
  %i.aa = fcmp ogt double %i.u, 0.000000e+00
  %i.ab = uitofp i1 %i.aa to double
  %i.ac = fmul nnan double %i.x, %i.ab
  %i.ad = select i1 %or.cond.i, double %i.ac, double %i.u ; 2 uses
  %i.ae = icmp eq i32 %4, 1
  %i.af = fsub double %i.x, %i.ad
  %.0107 = select i1 %i.ae, double %i.af, double %i.ad ; 2 uses
  %i.ag = tail call double @llvm.floor.f64(double %.0107)
  %i.ah = fptosi double %i.ag to i32              ; 3 uses
  %i.ai = add nsw i32 %i.ah, 1                    ; 2 uses
  %i.aj = sitofp i32 %i.ah to double
  %i.ak = fsub double %.0107, %i.aj
  %.not = icmp slt i32 %i.ai, %i.v                ; 2 uses
  %.0106 = select i1 %.not, i32 %i.ah, i32 %i.w   ; 2 uses
  %.0105 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.w) ; 2 uses
  %.0104 = select i1 %.not, double %i.ak, double 1.000000e+00 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %1, align 8, !tbaa !32    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !33 ; 2 uses
  %i.ao = mul nsw i32 %.0106, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ap ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !20
  %i.as = mul nsw i32 %.0105, %i.an
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.at ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !20
  %i.aw = fsub double 1.000000e+00, %.0104        ; 3 uses
  %i.ax = fpext float %i.ar to double
  %i.ay = fpext float %i.av to double
  %i.az = fmul double %.0104, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ax, double %i.az)
  %i.bb = fptrunc double %i.ba to float           ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !20
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !20
  %i.bg = fpext <2 x float> %i.be to <2 x double>
  %i.bh = fpext <2 x float> %i.bf to <2 x double>
  %i.bi = insertelement <2 x double> poison, double %.0104, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = fmul <2 x double> %i.bj, %i.bh
  %i.bl = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bg, <2 x double> %i.bk)
  %i.bo = fptrunc <2 x double> %i.bn to <2 x float> ; 3 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0 ; 4 uses
  %i.bq = fcmp olt float %i.bp, %i.bb
  %i.br = select i1 %i.bq, float %i.bp, float %i.bb ; 2 uses
  %i.bs = fcmp ogt float %i.bp, %i.bb
  %i.bt = select i1 %i.bs, float %i.bp, float %i.bb ; 2 uses
  %i.bu = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.bv = fcmp ogt float %i.bt, %i.bu
  %i.bw = select i1 %i.bv, float %i.bu, float %i.bt ; 2 uses
  %i.bx = fcmp olt float %i.br, %i.bw
  %i.by = select i1 %i.bx, float %i.bw, float %i.br
  %i.bz = fcmp ogt float %i.by, 5.000000e-01      ; 2 uses
  %i.ca = zext i1 %i.bz to i8
  br i1 %i.bz, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.cb = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10
          to label %.noexc126 unwind label %bb.j  ; 3 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) @__const._ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE.intersection, i64 16, i1 false), !tbaa.struct !22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 3 uses
  store ptr %i.cb, ptr %6, align 8, !tbaa !14
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !26
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !17
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %._crit_edge152
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.j:                                             ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc126, %bb.h
  %i.ch = phi ptr [ null, %bb.h ], [ %i.ce, %.noexc126 ] ; 2 uses
  %i.ci = load i32, ptr %i.a, align 8, !tbaa !29
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.k

._crit_edge152:                                   ; preds = %bb.ar, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.at unwind label %bb.i

bb.k:                                             ; preds = %.lr.ph151, %bb.ar
  %i.cq = phi ptr [ %i.ch, %.lr.ph151 ], [ %i.li, %bb.ar ] ; 2 uses
  %i.cr = phi ptr [ %i.ch, %.lr.ph151 ], [ %i.lj, %bb.ar ] ; 2 uses
  %indvars.iv154 = phi i64 [ 1, %.lr.ph151 ], [ %indvars.iv.next155, %bb.ar ] ; 2 uses
  %i.cs = phi float [ %i.bb, %.lr.ph151 ], [ %i.dl, %bb.ar ] ; 4 uses
  %.099149 = phi i32 [ 0, %.lr.ph151 ], [ %i.lk, %bb.ar ] ; 2 uses
  %.0100148 = phi i8 [ %i.ca, %.lr.ph151 ], [ %.3103, %bb.ar ] ; 2 uses
  %i.ct = phi <2 x float> [ %i.bo, %.lr.ph151 ], [ %i.du, %bb.ar ] ; 4 uses
  %i.cu = load ptr, ptr %1, align 8, !tbaa !32    ; 2 uses
  %i.cv = load i32, ptr %i.am, align 8, !tbaa !33 ; 2 uses
  %i.cw = mul nsw i32 %i.cv, %.0106
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = mul nuw nsw i64 %indvars.iv154, 3       ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !20
  %i.dc = mul nsw i32 %i.cv, %.0105
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cz ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !20
  %i.dh = fpext float %i.db to double
  %i.di = fpext float %i.dg to double
  %i.dj = fmul double %.0104, %i.di
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.dh, double %i.dj)
  %i.dl = fptrunc double %i.dk to float           ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.do = load <2 x float>, ptr %i.dm, align 4, !tbaa !20
  %i.dp = load <2 x float>, ptr %i.dn, align 4, !tbaa !20
  %i.dq = fpext <2 x float> %i.do to <2 x double>
  %i.dr = fpext <2 x float> %i.dp to <2 x double>
  %i.ds = fmul <2 x double> %i.bj, %i.dr
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.dq, <2 x double> %i.ds)
  %i.du = fptrunc <2 x double> %i.dt to <2 x float> ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.dv = fpext float %i.cs to double             ; 3 uses
  %i.dw = fpext float %i.dl to double             ; 3 uses
  %i.dx = fpext <2 x float> %i.ct to <2 x double> ; 3 uses
  %i.dy = fpext <2 x float> %i.du to <2 x double> ; 3 uses
  %i.dz = uitofp nneg i32 %.099149 to double      ; 3 uses
  %i.ea = fcmp une float %i.cs, %i.dl
  br i1 %i.ea, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.eb = fsub float 5.000000e-01, %i.cs
  %i.ec = fpext float %i.eb to double
  %i.ed = fsub float %i.dl, %i.cs                 ; 3 uses
  %i.ee = fpext float %i.ed to double
  %i.ef = fdiv double %i.ec, %i.ee                ; 6 uses
  %i.eg = fcmp oge double %i.ef, 0.000000e+00
  %i.eh = fcmp ole double %i.ef, 1.000000e+00
  %or.cond = and i1 %i.eg, %i.eh
  br i1 %or.cond, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ei = fsub double 1.000000e+00, %i.ef         ; 2 uses
  %i.ej = fmul double %i.ef, %i.dw
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.dv, double %i.ej)
  %i.el = fptrunc double %i.ek to float           ; 4 uses
  %i.em = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x double> %i.en, %i.dy
  %i.ep = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.dx, <2 x double> %i.eo)
  %i.es = fptrunc <2 x double> %i.er to <2 x float> ; 3 uses
  %i.et = extractelement <2 x float> %i.es, i64 0 ; 2 uses
  %i.eu = fcmp ogt float %i.et, %i.el
  %i.ev = select i1 %i.eu, float %i.et, float %i.el
  %i.ew = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %i.ev, i64 1 ; 2 uses
  %i.ey = fcmp ogt <2 x float> %i.ex, %i.es
  %i.ez = select <2 x i1> %i.ey, <2 x float> %i.es, <2 x float> %i.ex ; 2 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0 ; 2 uses
  %i.fb = extractelement <2 x float> %i.ez, i64 1 ; 2 uses
  %i.fc = fcmp olt float %i.fa, %i.fb
  %i.fd = select i1 %i.fc, float %i.fb, float %i.fa
  %i.fe = fcmp oeq float %i.fd, %i.el
  br i1 %i.fe, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ff = fadd double %i.ef, %i.dz
  %i.fg = fadd double %i.ff, 5.000000e-01
  %i.fh = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.fg)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  store double %i.fh, ptr %7, align 16, !tbaa !34
  %i.fi = fcmp ogt float %i.ed, 0.000000e+00
  %i.fj = zext i1 %i.fi to i32
  %i.fk = fcmp olt float %i.ed, 0.000000e+00
  %.neg.i = sext i1 %i.fk to i32
  %i.fl = add nsw i32 %.neg.i, %i.fj
  store i32 %i.fl, ptr %i.cp, align 8, !tbaa !36
  br label %bb.q

bb.p:                                             ; preds = %bb.y, %bb.t, %bb.n
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.q:                                             ; preds = %bb.m, %bb.o, %bb.l, %bb.k
  %.3 = phi i32 [ 0, %bb.k ], [ 0, %bb.l ], [ 1, %bb.o ], [ 0, %bb.m ] ; 5 uses
  %i.fn = extractelement <2 x float> %i.du, i64 0 ; 3 uses
  %i.fo = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.fp = fcmp une float %i.fo, %i.fn
  br i1 %i.fp, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.fq = fsub float 5.000000e-01, %i.fo
  %i.fr = fpext float %i.fq to double
  %foldExtExtBinop = fsub <2 x float> %i.du, %i.ct
  %i.fs = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ft = fpext float %i.fs to double
  %i.fu = fdiv double %i.fr, %i.ft                ; 6 uses
  %i.fv = fcmp oge double %i.fu, 0.000000e+00
  %i.fw = fcmp ole double %i.fu, 1.000000e+00
  %or.cond.1 = and i1 %i.fv, %i.fw
  br i1 %or.cond.1, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.fx = fsub double 1.000000e+00, %i.fu         ; 2 uses
  %i.fy = fmul double %i.fu, %i.dw
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.dv, double %i.fy)
  %i.ga = fptrunc double %i.fz to float           ; 3 uses
  %i.gb = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x double> %i.gc, %i.dy
  %i.ge = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.dx, <2 x double> %i.gd)
  %i.gh = fptrunc <2 x double> %i.gg to <2 x float> ; 3 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 0 ; 3 uses
  %i.gj = fcmp ogt float %i.gi, %i.ga
  %i.gk = select i1 %i.gj, float %i.gi, float %i.ga
  %i.gl = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.gk, i64 1 ; 2 uses
  %i.gn = fcmp ogt <2 x float> %i.gm, %i.gh
  %i.go = select <2 x i1> %i.gn, <2 x float> %i.gh, <2 x float> %i.gm ; 2 uses
  %i.gp = extractelement <2 x float> %i.go, i64 0 ; 2 uses
  %i.gq = extractelement <2 x float> %i.go, i64 1 ; 2 uses
  %i.gr = fcmp olt float %i.gp, %i.gq
  %i.gs = select i1 %i.gr, float %i.gq, float %i.gp
  %i.gt = fcmp oeq float %i.gs, %i.gi
  br i1 %i.gt, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.gu = fadd double %i.fu, %i.dz
  %i.gv = fadd double %i.gu, 5.000000e-01
  %i.gw = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.gv)
          to label %bb.u unwind label %bb.p

bb.u:                                             ; preds = %bb.t
  %i.gx = zext nneg i32 %.3 to i64
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.gx ; 2 uses
  store double %i.gw, ptr %i.gy, align 16, !tbaa !34
  %i.gz = fcmp ogt float %i.fs, 0.000000e+00
  %i.ha = zext i1 %i.gz to i32
  %i.hb = fcmp olt float %i.fs, 0.000000e+00
  %.neg.i.1 = sext i1 %i.hb to i32
  %i.hc = add nsw i32 %.neg.i.1, %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i32 %i.hc, ptr %i.hd, align 8, !tbaa !36
  %i.he = add nuw nsw i32 %.3, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.r, %bb.q
  %.3.1 = phi i32 [ %.3, %bb.q ], [ %.3, %bb.r ], [ %i.he, %bb.u ], [ %.3, %bb.s ] ; 5 uses
  %i.hf = extractelement <2 x float> %i.du, i64 1 ; 2 uses
  %i.hg = extractelement <2 x float> %i.ct, i64 1 ; 3 uses
  %i.hh = fcmp une float %i.hg, %i.hf
  br i1 %i.hh, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.hi = fsub float 5.000000e-01, %i.hg
  %i.hj = fpext float %i.hi to double
  %i.hk = fsub float %i.hf, %i.hg                 ; 3 uses
  %i.hl = fpext float %i.hk to double
  %i.hm = fdiv double %i.hj, %i.hl                ; 6 uses
  %i.hn = fcmp oge double %i.hm, 0.000000e+00
  %i.ho = fcmp ole double %i.hm, 1.000000e+00
  %or.cond.2 = and i1 %i.hn, %i.ho
  br i1 %or.cond.2, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.hp = fsub double 1.000000e+00, %i.hm         ; 2 uses
  %i.hq = fmul double %i.hm, %i.dw
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.dv, double %i.hq)
  %i.hs = fptrunc double %i.hr to float           ; 3 uses
  %i.ht = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hv = fmul <2 x double> %i.hu, %i.dy
  %i.hw = insertelement <2 x double> poison, double %i.hp, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.dx, <2 x double> %i.hv)
  %i.hz = fptrunc <2 x double> %i.hy to <2 x float> ; 4 uses
  %i.ia = extractelement <2 x float> %i.hz, i64 0 ; 2 uses
  %i.ib = fcmp ogt float %i.ia, %i.hs
  %i.ic = select i1 %i.ib, float %i.ia, float %i.hs
  %i.id = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.ie = insertelement <2 x float> %i.id, float %i.ic, i64 1 ; 2 uses
  %i.if = fcmp ogt <2 x float> %i.ie, %i.hz
  %i.ig = select <2 x i1> %i.if, <2 x float> %i.hz, <2 x float> %i.ie ; 2 uses
  %i.ih = extractelement <2 x float> %i.ig, i64 0 ; 2 uses
  %i.ii = extractelement <2 x float> %i.ig, i64 1 ; 2 uses
  %i.ij = fcmp olt float %i.ih, %i.ii
  %i.ik = select i1 %i.ij, float %i.ii, float %i.ih
  %i.il = extractelement <2 x float> %i.hz, i64 1
  %i.im = fcmp oeq float %i.ik, %i.il
  br i1 %i.im, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.in = fadd double %i.hm, %i.dz
  %i.io = fadd double %i.in, 5.000000e-01
  %i.ip = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.io)
          to label %bb.z unwind label %bb.p

bb.z:                                             ; preds = %bb.y
  %i.iq = zext nneg i32 %.3.1 to i64
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.iq ; 2 uses
  store double %i.ip, ptr %i.ir, align 16, !tbaa !34
  %i.is = fcmp ogt float %i.hk, 0.000000e+00
  %i.it = zext i1 %i.is to i32
  %i.iu = fcmp olt float %i.hk, 0.000000e+00
  %.neg.i.2 = sext i1 %i.iu to i32
  %i.iv = add nsw i32 %.neg.i.2, %i.it
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i32 %i.iv, ptr %i.iw, align 8, !tbaa !36
  %i.ix = add nuw nsw i32 %.3.1, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.w, %bb.v
  %.3.2 = phi i32 [ %.3.1, %bb.v ], [ %.3.1, %bb.w ], [ %i.ix, %bb.z ], [ %.3.1, %bb.x ] ; 4 uses
  %i.iy = icmp samesign ugt i32 %.3.2, 1
  br i1 %i.iy, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.iz = load double, ptr %7, align 16, !tbaa !34
  %i.ja = load double, ptr %i.ck, align 16, !tbaa !34
  %i.jb = fcmp ogt double %i.iz, %i.ja
  br i1 %i.jb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not119 = icmp eq i32 %.3.2, 2
  br i1 %.not119, label %.lr.ph.preheader, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jc = load double, ptr %i.ck, align 16, !tbaa !34
  %i.jd = load double, ptr %i.cm, align 16, !tbaa !34
  %i.je = fcmp ogt double %i.jc, %i.jd
  br i1 %i.je, label %bb.af, label %.lr.ph.preheader

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cm, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !22
  %i.jf = load double, ptr %7, align 16, !tbaa !34
  %i.jg = load double, ptr %i.ck, align 16, !tbaa !34
  %i.jh = fcmp ogt double %i.jf, %i.jg
  br i1 %i.jh, label %bb.ag, label %.lr.ph.preheader

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !22
  br label %.lr.ph.preheader

bb.ah:                                            ; preds = %bb.aa
  %i.ji = icmp eq i32 %.3.2, 1
  br i1 %i.ji, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.af, %bb.ag, %bb.ae, %bb.ad, %bb.ah
  %wide.trip.count = zext nneg i32 %.3.2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %i.jj = phi ptr [ %i.cq, %.lr.ph.preheader ], [ %i.km, %bb.ao ]
  %i.jk = phi ptr [ %i.cr, %.lr.ph.preheader ], [ %i.kn, %bb.ao ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
  %.1101146 = phi i8 [ %.0100148, %.lr.ph.preheader ], [ %.2102, %bb.ao ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !36
  %i.jo = icmp sgt i32 %i.jn, 0
  %i.jp = trunc nuw i8 %.1101146 to i1
  %i.jq = xor i1 %i.jo, %i.jp
  br i1 %i.jq, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %.lr.ph
  %i.jr = load ptr, ptr %i.co, align 8, !tbaa !17
  %.not.i127 = icmp eq ptr %i.jk, %i.jr
  br i1 %.not.i127, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, ptr noundef nonnull align 16 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa.struct !22
  %i.js = load ptr, ptr %i.cn, align 8, !tbaa !26
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  store ptr %i.jt, ptr %i.cn, align 8, !tbaa !26
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

bb.ak:                                            ; preds = %bb.ai
  %i.ju = load ptr, ptr %6, align 8, !tbaa !14    ; 4 uses
  %i.jv = ptrtoint ptr %i.jk to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw                    ; 6 uses
  %i.jy = icmp eq i64 %i.jx, 9223372036854775792
  br i1 %i.jy, label %bb.al, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
          to label %.noexc134 unwind label %.loopexit.split-lp

.noexc134:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128: ; preds = %bb.ak
  %i.jz = ashr exact i64 %i.jx, 4                 ; 3 uses
  %.sroa.speculated.i.i.i129 = tail call i64 @llvm.umax.i64(i64 %i.jz, i64 1)
  %i.ka = add nsw i64 %.sroa.speculated.i.i.i129, %i.jz ; 2 uses
  %i.kb = icmp ult i64 %i.ka, %i.jz
  %i.kc = tail call i64 @llvm.umin.i64(i64 %i.ka, i64 576460752303423487)
  %i.kd = select i1 %i.kb, i64 576460752303423487, i64 %i.kc ; 2 uses
  %i.ke = shl nuw nsw i64 %i.kd, 4
  %i.kf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ke) #10
          to label %.noexc135 unwind label %.loopexit ; 4 uses

.noexc135:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %i.jx ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kg, ptr noundef nonnull align 16 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa.struct !22
  %i.kh = icmp sgt i64 %i.jx, 0
  br i1 %i.kh, label %bb.am, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

bb.am:                                            ; preds = %.noexc135
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kf, ptr align 8 %i.ju, i64 %i.jx, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131: ; preds = %bb.am, %.noexc135
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %.not.i17.i.i132 = icmp eq ptr %i.ju, null
  br i1 %.not.i17.i.i132, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jx) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133: ; preds = %bb.an, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  store ptr %i.kf, ptr %6, align 8, !tbaa !14
  store ptr %i.ki, ptr %i.cn, align 8, !tbaa !26
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %i.kd
  store ptr %i.kj, ptr %i.co, align 8, !tbaa !17
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, %bb.aj
  %i.kk = phi ptr [ %i.ki, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133 ], [ %i.jt, %bb.aj ] ; 2 uses
  %i.kl = xor i8 %.1101146, 1
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ao:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136
  %i.km = phi ptr [ %i.kk, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jj, %.lr.ph ] ; 2 uses
  %i.kn = phi ptr [ %i.kk, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jk, %.lr.ph ] ; 2 uses
  %.2102 = phi i8 [ %i.kl, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %.1101146, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.ao, %bb.ah
  %i.ko = phi ptr [ %i.cq, %bb.ah ], [ %i.km, %bb.ao ] ; 5 uses
  %i.kp = phi ptr [ %i.cr, %bb.ah ], [ %i.kn, %bb.ao ]
  %.1101.lcssa = phi i8 [ %.0100148, %bb.ah ], [ %.2102, %bb.ao ] ; 4 uses
  %i.kq = fcmp ogt float %i.fn, %i.dl
  %i.kr = select i1 %i.kq, float %i.fn, float %i.dl
  %i.ks = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.kt = insertelement <2 x float> %i.ks, float %i.kr, i64 1 ; 2 uses
  %i.ku = fcmp ogt <2 x float> %i.kt, %i.du
  %i.kv = select <2 x i1> %i.ku, <2 x float> %i.du, <2 x float> %i.kt ; 2 uses
  %i.kw = extractelement <2 x float> %i.kv, i64 0 ; 2 uses
  %i.kx = extractelement <2 x float> %i.kv, i64 1 ; 2 uses
  %i.ky = fcmp olt float %i.kw, %i.kx
  %i.kz = select i1 %i.ky, float %i.kx, float %i.kw ; 2 uses
  %i.la = fcmp ogt float %i.kz, 5.000000e-01
  %i.lb = trunc nuw i8 %.1101.lcssa to i1
  %i.lc = xor i1 %i.la, %i.lb
  %i.ld = fcmp une float %i.kz, 5.000000e-01
  %or.cond3 = and i1 %i.ld, %i.lc
  br i1 %or.cond3, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %._crit_edge
  %i.le = load ptr, ptr %6, align 8, !tbaa !38
  %i.lf = icmp eq ptr %i.le, %i.ko
  br i1 %i.lf, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lg = getelementptr inbounds i8, ptr %i.ko, i64 -16 ; 3 uses
  store ptr %i.lg, ptr %i.cn, align 8, !tbaa !26
  %i.lh = xor i8 %.1101.lcssa, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge
  %i.li = phi ptr [ %i.ko, %bb.ap ], [ %i.lg, %bb.aq ], [ %i.ko, %._crit_edge ]
  %i.lj = phi ptr [ %i.ko, %bb.ap ], [ %i.lg, %bb.aq ], [ %i.kp, %._crit_edge ]
  %.3103 = phi i8 [ %.1101.lcssa, %bb.ap ], [ %i.lh, %bb.aq ], [ %.1101.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.lk = add nuw nsw i32 %.099149, 1
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.ll = load i32, ptr %i.a, align 8, !tbaa !29
  %i.lm = sext i32 %i.ll to i64
  %i.ln = icmp slt i64 %indvars.iv.next155, %i.lm
  br i1 %i.ln, label %bb.k, label %._crit_edge152, !llvm.loop !39

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.p
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.aw

bb.at:                                            ; preds = %._crit_edge152
  %i.lo = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i137.a = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i137.a, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138.a, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !17
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lo to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.lt) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138.a

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138.a: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138.a, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit
  ret void

bb.aw:                                            ; preds = %bb.as, %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.as ], [ %i.cf, %bb.i ], [ %i.cg, %bb.j ]
  %i.lu = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i139 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !17
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lu to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lz) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140 ], [ %i.m, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector", align 8       ; 17 uses
  %7 = alloca [4 x %"struct.msdfgen::Scanline::Intersection"], align 16 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %5, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.av

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i123 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.ay

bb.h:                                             ; preds = %bb.b
  %i.t = tail call noundef double @_ZNK7msdfgen10Projection8projectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3)
  %i.u = fadd double %i.t, -5.000000e-01          ; 4 uses
  %i.v = load i32, ptr %i.d, align 4, !tbaa !42   ; 2 uses
  %i.w = add nsw i32 %i.v, -1                     ; 3 uses
  %i.x = sitofp i32 %i.w to double                ; 3 uses
  %i.y = fcmp ult double %i.u, 0.000000e+00
  %i.z = fcmp ugt double %i.u, %i.x
  %or.cond.i = or i1 %i.y, %i.z
  %i.aa = fcmp ogt double %i.u, 0.000000e+00
  %i.ab = uitofp i1 %i.aa to double
  %i.ac = fmul nnan double %i.x, %i.ab
  %i.ad = select i1 %or.cond.i, double %i.ac, double %i.u ; 2 uses
  %i.ae = icmp eq i32 %4, 1
  %i.af = fsub double %i.x, %i.ad
  %.0107 = select i1 %i.ae, double %i.af, double %i.ad ; 2 uses
  %i.ag = tail call double @llvm.floor.f64(double %.0107)
  %i.ah = fptosi double %i.ag to i32              ; 3 uses
  %i.ai = add nsw i32 %i.ah, 1                    ; 2 uses
  %i.aj = sitofp i32 %i.ah to double
  %i.ak = fsub double %.0107, %i.aj
  %.not = icmp slt i32 %i.ai, %i.v                ; 2 uses
  %.0106 = select i1 %.not, i32 %i.ah, i32 %i.w   ; 2 uses
  %.0105 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.w) ; 2 uses
  %.0104 = select i1 %.not, double %i.ak, double 1.000000e+00 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = mul nsw i32 %.0106, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ap ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !20
  %i.as = mul nsw i32 %.0105, %i.an
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.at ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !20
  %i.aw = fsub double 1.000000e+00, %.0104        ; 3 uses
  %i.ax = fpext float %i.ar to double
  %i.ay = fpext float %i.av to double
  %i.az = fmul double %.0104, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ax, double %i.az)
  %i.bb = fptrunc double %i.ba to float           ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !20
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !20
  %i.bg = fpext <2 x float> %i.be to <2 x double>
  %i.bh = fpext <2 x float> %i.bf to <2 x double>
  %i.bi = insertelement <2 x double> poison, double %.0104, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = fmul <2 x double> %i.bj, %i.bh
  %i.bl = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bg, <2 x double> %i.bk)
  %i.bo = fptrunc <2 x double> %i.bn to <2 x float> ; 3 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0 ; 4 uses
  %i.bq = fcmp olt float %i.bp, %i.bb
  %i.br = select i1 %i.bq, float %i.bp, float %i.bb ; 2 uses
  %i.bs = fcmp ogt float %i.bp, %i.bb
  %i.bt = select i1 %i.bs, float %i.bp, float %i.bb ; 2 uses
  %i.bu = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.bv = fcmp ogt float %i.bt, %i.bu
  %i.bw = select i1 %i.bv, float %i.bu, float %i.bt ; 2 uses
  %i.bx = fcmp olt float %i.br, %i.bw
  %i.by = select i1 %i.bx, float %i.bw, float %i.br
  %i.bz = fcmp ogt float %i.by, 5.000000e-01      ; 2 uses
  %i.ca = zext i1 %i.bz to i8
  br i1 %i.bz, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.cb = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10
          to label %.noexc126 unwind label %bb.j  ; 3 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) @__const._ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE.intersection, i64 16, i1 false), !tbaa.struct !22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 3 uses
  store ptr %i.cb, ptr %6, align 8, !tbaa !14
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !26
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !17
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %._crit_edge152
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.j:                                             ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc126, %bb.h
  %i.ch = phi ptr [ null, %bb.h ], [ %i.ce, %.noexc126 ] ; 2 uses
  %i.ci = load i32, ptr %i.a, align 8, !tbaa !40
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.k

._crit_edge152:                                   ; preds = %bb.ar, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.at unwind label %bb.i

bb.k:                                             ; preds = %.lr.ph151, %bb.ar
  %i.cq = phi ptr [ %i.ch, %.lr.ph151 ], [ %i.li, %bb.ar ] ; 2 uses
  %i.cr = phi ptr [ %i.ch, %.lr.ph151 ], [ %i.lj, %bb.ar ] ; 2 uses
  %indvars.iv154 = phi i64 [ 1, %.lr.ph151 ], [ %indvars.iv.next155, %bb.ar ] ; 2 uses
  %i.cs = phi float [ %i.bb, %.lr.ph151 ], [ %i.dl, %bb.ar ] ; 4 uses
  %.099149 = phi i32 [ 0, %.lr.ph151 ], [ %i.lk, %bb.ar ] ; 2 uses
  %.0100148 = phi i8 [ %i.ca, %.lr.ph151 ], [ %.3103, %bb.ar ] ; 2 uses
  %i.ct = phi <2 x float> [ %i.bo, %.lr.ph151 ], [ %i.du, %bb.ar ] ; 4 uses
  %i.cu = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %i.cv = load i32, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.cw = mul nsw i32 %i.cv, %.0106
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = shl nuw nsw i64 %indvars.iv154, 2       ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !20
  %i.dc = mul nsw i32 %i.cv, %.0105
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cz ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !20
  %i.dh = fpext float %i.db to double
  %i.di = fpext float %i.dg to double
  %i.dj = fmul double %.0104, %i.di
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.dh, double %i.dj)
  %i.dl = fptrunc double %i.dk to float           ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.do = load <2 x float>, ptr %i.dm, align 4, !tbaa !20
  %i.dp = load <2 x float>, ptr %i.dn, align 4, !tbaa !20
  %i.dq = fpext <2 x float> %i.do to <2 x double>
  %i.dr = fpext <2 x float> %i.dp to <2 x double>
  %i.ds = fmul <2 x double> %i.bj, %i.dr
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.dq, <2 x double> %i.ds)
  %i.du = fptrunc <2 x double> %i.dt to <2 x float> ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.dv = fpext float %i.cs to double             ; 3 uses
  %i.dw = fpext float %i.dl to double             ; 3 uses
  %i.dx = fpext <2 x float> %i.ct to <2 x double> ; 3 uses
  %i.dy = fpext <2 x float> %i.du to <2 x double> ; 3 uses
  %i.dz = uitofp nneg i32 %.099149 to double      ; 3 uses
  %i.ea = fcmp une float %i.cs, %i.dl
  br i1 %i.ea, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.eb = fsub float 5.000000e-01, %i.cs
  %i.ec = fpext float %i.eb to double
  %i.ed = fsub float %i.dl, %i.cs                 ; 3 uses
  %i.ee = fpext float %i.ed to double
  %i.ef = fdiv double %i.ec, %i.ee                ; 6 uses
  %i.eg = fcmp oge double %i.ef, 0.000000e+00
  %i.eh = fcmp ole double %i.ef, 1.000000e+00
  %or.cond = and i1 %i.eg, %i.eh
  br i1 %or.cond, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ei = fsub double 1.000000e+00, %i.ef         ; 2 uses
  %i.ej = fmul double %i.ef, %i.dw
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.dv, double %i.ej)
  %i.el = fptrunc double %i.ek to float           ; 4 uses
  %i.em = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x double> %i.en, %i.dy
  %i.ep = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.dx, <2 x double> %i.eo)
  %i.es = fptrunc <2 x double> %i.er to <2 x float> ; 3 uses
  %i.et = extractelement <2 x float> %i.es, i64 0 ; 2 uses
  %i.eu = fcmp ogt float %i.et, %i.el
  %i.ev = select i1 %i.eu, float %i.et, float %i.el
  %i.ew = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %i.ev, i64 1 ; 2 uses
  %i.ey = fcmp ogt <2 x float> %i.ex, %i.es
  %i.ez = select <2 x i1> %i.ey, <2 x float> %i.es, <2 x float> %i.ex ; 2 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0 ; 2 uses
  %i.fb = extractelement <2 x float> %i.ez, i64 1 ; 2 uses
  %i.fc = fcmp olt float %i.fa, %i.fb
  %i.fd = select i1 %i.fc, float %i.fb, float %i.fa
  %i.fe = fcmp oeq float %i.fd, %i.el
  br i1 %i.fe, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ff = fadd double %i.ef, %i.dz
  %i.fg = fadd double %i.ff, 5.000000e-01
  %i.fh = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.fg)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  store double %i.fh, ptr %7, align 16, !tbaa !34
  %i.fi = fcmp ogt float %i.ed, 0.000000e+00
  %i.fj = zext i1 %i.fi to i32
  %i.fk = fcmp olt float %i.ed, 0.000000e+00
  %.neg.i = sext i1 %i.fk to i32
  %i.fl = add nsw i32 %.neg.i, %i.fj
  store i32 %i.fl, ptr %i.cp, align 8, !tbaa !36
  br label %bb.q

bb.p:                                             ; preds = %bb.y, %bb.t, %bb.n
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.q:                                             ; preds = %bb.m, %bb.o, %bb.l, %bb.k
  %.3 = phi i32 [ 0, %bb.k ], [ 0, %bb.l ], [ 1, %bb.o ], [ 0, %bb.m ] ; 5 uses
  %i.fn = extractelement <2 x float> %i.du, i64 0 ; 3 uses
  %i.fo = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.fp = fcmp une float %i.fo, %i.fn
  br i1 %i.fp, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.fq = fsub float 5.000000e-01, %i.fo
  %i.fr = fpext float %i.fq to double
  %foldExtExtBinop = fsub <2 x float> %i.du, %i.ct
  %i.fs = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ft = fpext float %i.fs to double
  %i.fu = fdiv double %i.fr, %i.ft                ; 6 uses
  %i.fv = fcmp oge double %i.fu, 0.000000e+00
  %i.fw = fcmp ole double %i.fu, 1.000000e+00
  %or.cond.1 = and i1 %i.fv, %i.fw
  br i1 %or.cond.1, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.fx = fsub double 1.000000e+00, %i.fu         ; 2 uses
  %i.fy = fmul double %i.fu, %i.dw
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.dv, double %i.fy)
  %i.ga = fptrunc double %i.fz to float           ; 3 uses
  %i.gb = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x double> %i.gc, %i.dy
  %i.ge = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.dx, <2 x double> %i.gd)
  %i.gh = fptrunc <2 x double> %i.gg to <2 x float> ; 3 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 0 ; 3 uses
  %i.gj = fcmp ogt float %i.gi, %i.ga
  %i.gk = select i1 %i.gj, float %i.gi, float %i.ga
  %i.gl = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.gk, i64 1 ; 2 uses
  %i.gn = fcmp ogt <2 x float> %i.gm, %i.gh
  %i.go = select <2 x i1> %i.gn, <2 x float> %i.gh, <2 x float> %i.gm ; 2 uses
  %i.gp = extractelement <2 x float> %i.go, i64 0 ; 2 uses
  %i.gq = extractelement <2 x float> %i.go, i64 1 ; 2 uses
  %i.gr = fcmp olt float %i.gp, %i.gq
  %i.gs = select i1 %i.gr, float %i.gq, float %i.gp
  %i.gt = fcmp oeq float %i.gs, %i.gi
  br i1 %i.gt, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.gu = fadd double %i.fu, %i.dz
  %i.gv = fadd double %i.gu, 5.000000e-01
  %i.gw = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.gv)
          to label %bb.u unwind label %bb.p

bb.u:                                             ; preds = %bb.t
  %i.gx = zext nneg i32 %.3 to i64
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.gx ; 2 uses
  store double %i.gw, ptr %i.gy, align 16, !tbaa !34
  %i.gz = fcmp ogt float %i.fs, 0.000000e+00
  %i.ha = zext i1 %i.gz to i32
  %i.hb = fcmp olt float %i.fs, 0.000000e+00
  %.neg.i.1 = sext i1 %i.hb to i32
  %i.hc = add nsw i32 %.neg.i.1, %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i32 %i.hc, ptr %i.hd, align 8, !tbaa !36
  %i.he = add nuw nsw i32 %.3, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.r, %bb.q
  %.3.1 = phi i32 [ %.3, %bb.q ], [ %.3, %bb.r ], [ %i.he, %bb.u ], [ %.3, %bb.s ] ; 5 uses
  %i.hf = extractelement <2 x float> %i.du, i64 1 ; 2 uses
  %i.hg = extractelement <2 x float> %i.ct, i64 1 ; 3 uses
  %i.hh = fcmp une float %i.hg, %i.hf
  br i1 %i.hh, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.hi = fsub float 5.000000e-01, %i.hg
  %i.hj = fpext float %i.hi to double
  %i.hk = fsub float %i.hf, %i.hg                 ; 3 uses
  %i.hl = fpext float %i.hk to double
  %i.hm = fdiv double %i.hj, %i.hl                ; 6 uses
  %i.hn = fcmp oge double %i.hm, 0.000000e+00
  %i.ho = fcmp ole double %i.hm, 1.000000e+00
  %or.cond.2 = and i1 %i.hn, %i.ho
  br i1 %or.cond.2, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.hp = fsub double 1.000000e+00, %i.hm         ; 2 uses
  %i.hq = fmul double %i.hm, %i.dw
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.dv, double %i.hq)
  %i.hs = fptrunc double %i.hr to float           ; 3 uses
  %i.ht = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hv = fmul <2 x double> %i.hu, %i.dy
  %i.hw = insertelement <2 x double> poison, double %i.hp, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.dx, <2 x double> %i.hv)
  %i.hz = fptrunc <2 x double> %i.hy to <2 x float> ; 4 uses
  %i.ia = extractelement <2 x float> %i.hz, i64 0 ; 2 uses
  %i.ib = fcmp ogt float %i.ia, %i.hs
  %i.ic = select i1 %i.ib, float %i.ia, float %i.hs
  %i.id = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.ie = insertelement <2 x float> %i.id, float %i.ic, i64 1 ; 2 uses
  %i.if = fcmp ogt <2 x float> %i.ie, %i.hz
  %i.ig = select <2 x i1> %i.if, <2 x float> %i.hz, <2 x float> %i.ie ; 2 uses
  %i.ih = extractelement <2 x float> %i.ig, i64 0 ; 2 uses
  %i.ii = extractelement <2 x float> %i.ig, i64 1 ; 2 uses
  %i.ij = fcmp olt float %i.ih, %i.ii
  %i.ik = select i1 %i.ij, float %i.ii, float %i.ih
  %i.il = extractelement <2 x float> %i.hz, i64 1
  %i.im = fcmp oeq float %i.ik, %i.il
  br i1 %i.im, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.in = fadd double %i.hm, %i.dz
  %i.io = fadd double %i.in, 5.000000e-01
  %i.ip = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.io)
          to label %bb.z unwind label %bb.p

bb.z:                                             ; preds = %bb.y
  %i.iq = zext nneg i32 %.3.1 to i64
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.iq ; 2 uses
  store double %i.ip, ptr %i.ir, align 16, !tbaa !34
  %i.is = fcmp ogt float %i.hk, 0.000000e+00
  %i.it = zext i1 %i.is to i32
  %i.iu = fcmp olt float %i.hk, 0.000000e+00
  %.neg.i.2 = sext i1 %i.iu to i32
  %i.iv = add nsw i32 %.neg.i.2, %i.it
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i32 %i.iv, ptr %i.iw, align 8, !tbaa !36
  %i.ix = add nuw nsw i32 %.3.1, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.w, %bb.v
  %.3.2 = phi i32 [ %.3.1, %bb.v ], [ %.3.1, %bb.w ], [ %i.ix, %bb.z ], [ %.3.1, %bb.x ] ; 4 uses
  %i.iy = icmp samesign ugt i32 %.3.2, 1
  br i1 %i.iy, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.iz = load double, ptr %7, align 16, !tbaa !34
  %i.ja = load double, ptr %i.ck, align 16, !tbaa !34
  %i.jb = fcmp ogt double %i.iz, %i.ja
  br i1 %i.jb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not119 = icmp eq i32 %.3.2, 2
  br i1 %.not119, label %.lr.ph.preheader, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jc = load double, ptr %i.ck, align 16, !tbaa !34
  %i.jd = load double, ptr %i.cm, align 16, !tbaa !34
  %i.je = fcmp ogt double %i.jc, %i.jd
  br i1 %i.je, label %bb.af, label %.lr.ph.preheader

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cm, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !22
  %i.jf = load double, ptr %7, align 16, !tbaa !34
  %i.jg = load double, ptr %i.ck, align 16, !tbaa !34
  %i.jh = fcmp ogt double %i.jf, %i.jg
  br i1 %i.jh, label %bb.ag, label %.lr.ph.preheader

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !22
  br label %.lr.ph.preheader

bb.ah:                                            ; preds = %bb.aa
  %i.ji = icmp eq i32 %.3.2, 1
  br i1 %i.ji, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.af, %bb.ag, %bb.ae, %bb.ad, %bb.ah
  %wide.trip.count = zext nneg i32 %.3.2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %i.jj = phi ptr [ %i.cq, %.lr.ph.preheader ], [ %i.km, %bb.ao ]
  %i.jk = phi ptr [ %i.cr, %.lr.ph.preheader ], [ %i.kn, %bb.ao ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
  %.1101146 = phi i8 [ %.0100148, %.lr.ph.preheader ], [ %.2102, %bb.ao ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !36
  %i.jo = icmp sgt i32 %i.jn, 0
  %i.jp = trunc nuw i8 %.1101146 to i1
  %i.jq = xor i1 %i.jo, %i.jp
  br i1 %i.jq, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %.lr.ph
  %i.jr = load ptr, ptr %i.co, align 8, !tbaa !17
  %.not.i127 = icmp eq ptr %i.jk, %i.jr
  br i1 %.not.i127, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, ptr noundef nonnull align 16 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa.struct !22
  %i.js = load ptr, ptr %i.cn, align 8, !tbaa !26
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  store ptr %i.jt, ptr %i.cn, align 8, !tbaa !26
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

bb.ak:                                            ; preds = %bb.ai
  %i.ju = load ptr, ptr %6, align 8, !tbaa !14    ; 4 uses
  %i.jv = ptrtoint ptr %i.jk to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw                    ; 6 uses
  %i.jy = icmp eq i64 %i.jx, 9223372036854775792
  br i1 %i.jy, label %bb.al, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
          to label %.noexc134 unwind label %.loopexit.split-lp

.noexc134:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128: ; preds = %bb.ak
  %i.jz = ashr exact i64 %i.jx, 4                 ; 3 uses
  %.sroa.speculated.i.i.i129 = tail call i64 @llvm.umax.i64(i64 %i.jz, i64 1)
  %i.ka = add nsw i64 %.sroa.speculated.i.i.i129, %i.jz ; 2 uses
  %i.kb = icmp ult i64 %i.ka, %i.jz
  %i.kc = tail call i64 @llvm.umin.i64(i64 %i.ka, i64 576460752303423487)
  %i.kd = select i1 %i.kb, i64 576460752303423487, i64 %i.kc ; 2 uses
  %i.ke = shl nuw nsw i64 %i.kd, 4
  %i.kf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ke) #10
          to label %.noexc135 unwind label %.loopexit ; 4 uses

.noexc135:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %i.jx ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kg, ptr noundef nonnull align 16 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa.struct !22
  %i.kh = icmp sgt i64 %i.jx, 0
  br i1 %i.kh, label %bb.am, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

bb.am:                                            ; preds = %.noexc135
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kf, ptr align 8 %i.ju, i64 %i.jx, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131: ; preds = %bb.am, %.noexc135
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %.not.i17.i.i132 = icmp eq ptr %i.ju, null
  br i1 %.not.i17.i.i132, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jx) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133: ; preds = %bb.an, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  store ptr %i.kf, ptr %6, align 8, !tbaa !14
  store ptr %i.ki, ptr %i.cn, align 8, !tbaa !26
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %i.kd
  store ptr %i.kj, ptr %i.co, align 8, !tbaa !17
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, %bb.aj
  %i.kk = phi ptr [ %i.ki, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133 ], [ %i.jt, %bb.aj ] ; 2 uses
  %i.kl = xor i8 %.1101146, 1
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ao:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136
  %i.km = phi ptr [ %i.kk, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jj, %.lr.ph ] ; 2 uses
  %i.kn = phi ptr [ %i.kk, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jk, %.lr.ph ] ; 2 uses
  %.2102 = phi i8 [ %i.kl, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %.1101146, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.ao, %bb.ah
  %i.ko = phi ptr [ %i.cq, %bb.ah ], [ %i.km, %bb.ao ] ; 5 uses
  %i.kp = phi ptr [ %i.cr, %bb.ah ], [ %i.kn, %bb.ao ]
  %.1101.lcssa = phi i8 [ %.0100148, %bb.ah ], [ %.2102, %bb.ao ] ; 4 uses
  %i.kq = fcmp ogt float %i.fn, %i.dl
  %i.kr = select i1 %i.kq, float %i.fn, float %i.dl
  %i.ks = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.kt = insertelement <2 x float> %i.ks, float %i.kr, i64 1 ; 2 uses
  %i.ku = fcmp ogt <2 x float> %i.kt, %i.du
  %i.kv = select <2 x i1> %i.ku, <2 x float> %i.du, <2 x float> %i.kt ; 2 uses
  %i.kw = extractelement <2 x float> %i.kv, i64 0 ; 2 uses
  %i.kx = extractelement <2 x float> %i.kv, i64 1 ; 2 uses
  %i.ky = fcmp olt float %i.kw, %i.kx
  %i.kz = select i1 %i.ky, float %i.kx, float %i.kw ; 2 uses
  %i.la = fcmp ogt float %i.kz, 5.000000e-01
  %i.lb = trunc nuw i8 %.1101.lcssa to i1
  %i.lc = xor i1 %i.la, %i.lb
  %i.ld = fcmp une float %i.kz, 5.000000e-01
  %or.cond3 = and i1 %i.ld, %i.lc
  br i1 %or.cond3, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %._crit_edge
  %i.le = load ptr, ptr %6, align 8, !tbaa !38
  %i.lf = icmp eq ptr %i.le, %i.ko
  br i1 %i.lf, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lg = getelementptr inbounds i8, ptr %i.ko, i64 -16 ; 3 uses
  store ptr %i.lg, ptr %i.cn, align 8, !tbaa !26
  %i.lh = xor i8 %.1101.lcssa, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge
  %i.li = phi ptr [ %i.ko, %bb.ap ], [ %i.lg, %bb.aq ], [ %i.ko, %._crit_edge ]
  %i.lj = phi ptr [ %i.ko, %bb.ap ], [ %i.lg, %bb.aq ], [ %i.kp, %._crit_edge ]
  %.3103 = phi i8 [ %.1101.lcssa, %bb.ap ], [ %i.lh, %bb.aq ], [ %.1101.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.lk = add nuw nsw i32 %.099149, 1
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.ll = load i32, ptr %i.a, align 8, !tbaa !40
  %i.lm = sext i32 %i.ll to i64
  %i.ln = icmp slt i64 %indvars.iv.next155, %i.lm
  br i1 %i.ln, label %bb.k, label %._crit_edge152, !llvm.loop !46

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.p
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.aw

bb.at:                                            ; preds = %._crit_edge152
  %i.lo = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i137.a = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i137.a, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138.a, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !17
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lo to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.lt) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138.a

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138.a: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138.a, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit
  ret void

bb.aw:                                            ; preds = %bb.as, %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.as ], [ %i.cf, %bb.i ], [ %i.cg, %bb.j ]
  %i.lu = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i139 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !17
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lu to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lz) #9
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140 ], [ %i.m, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi1EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi1EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi1EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %6 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = icmp slt i32 %i.e, 2
  %i.g = icmp slt i32 %3, 1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = uitofp nneg i32 %3 to double
  %i.i = fdiv nnan double 1.000000e+00, %i.h
  %i.j = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef 5.000000e-01) ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !8
  %i.l = sitofp i32 %i.k to double
  %i.m = fadd double %i.l, -5.000000e-01
  %i.n = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.m) ; 2 uses
  %i.o = fsub double %i.n, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  invoke void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %6)
          to label %.preheader51 unwind label %bb.l

.preheader51:                                     ; preds = %bb.c
  %i.p = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  %i.q = add nsw i32 %i.p, -1
  %i.r = icmp sgt i32 %i.p, 1
  br i1 %i.r, label %.preheader.us.preheader, label %._crit_edge59

.preheader.us.preheader:                          ; preds = %.preheader51
  %i.s = fdiv double -1.000000e+00, %i.o
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.03758.us = phi i32 [ %i.af, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.04057.us = phi double [ %i.ad, %._crit_edge.us ], [ 0.000000e+00, %.preheader.us.preheader ]
  %i.t = uitofp nneg i32 %.03758.us to double
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.i
  %.056.us = phi i32 [ 0, %.preheader.us ], [ %i.ae, %bb.i ] ; 2 uses
  %.155.us = phi double [ %.04057.us, %.preheader.us ], [ %i.ad, %bb.i ]
  %i.u = uitofp nneg i32 %.056.us to double
  %i.v = fadd nnan double %i.u, 5.000000e-01
  %i.w = fmul double %i.i, %i.v
  %i.x = fadd double %i.w, %i.t
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.y)
          to label %bb.e unwind label %.split.us  ; 2 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.z)
          to label %bb.f unwind label %.split.us

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.g unwind label %.split.us

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi1EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.z, i32 noundef %i.aa)
          to label %bb.h unwind label %.split.us

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef double @_ZN7msdfgen8Scanline7overlapERKS0_S2_ddNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %6, double noundef %i.j, double noundef %i.n, i32 noundef %4)
          to label %bb.i unwind label %.split.us

bb.i:                                             ; preds = %bb.h
  %i.ac = call double @llvm.fmuladd.f64(double %i.s, double %i.ab, double 1.000000e+00)
  %i.ad = fadd double %.155.us, %i.ac             ; 3 uses
  %i.ae = add nuw nsw i32 %.056.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %3
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !47

._crit_edge.us:                                   ; preds = %bb.i
  %i.af = add nuw nsw i32 %.03758.us, 1           ; 2 uses
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !13
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %.preheader.us, label %._crit_edge59, !llvm.loop !48

.split.us:                                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i47, label %_ZN7msdfgen8ScanlineD2Ev.exit48, label %bb.m

._crit_edge59:                                    ; preds = %._crit_edge.us, %.preheader51
  %.040.lcssa = phi double [ 0.000000e+00, %.preheader51 ], [ %i.ad, %._crit_edge.us ]
  %.lcssa = phi i32 [ %i.q, %.preheader51 ], [ %i.ah, %._crit_edge.us ]
  %i.al = mul nsw i32 %.lcssa, %3
  %i.am = sitofp i32 %i.al to double
  %i.an = fdiv double %.040.lcssa, %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7msdfgen8ScanlineD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge59
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #9
  br label %_ZN7msdfgen8ScanlineD2Ev.exit

_ZN7msdfgen8ScanlineD2Ev.exit:                    ; preds = %._crit_edge59, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.au = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i45, label %_ZN7msdfgen8ScanlineD2Ev.exit46, label %bb.k

bb.k:                                             ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #9
  br label %_ZN7msdfgen8ScanlineD2Ev.exit46

_ZN7msdfgen8ScanlineD2Ev.exit46:                  ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.o

bb.l:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7msdfgen8ScanlineD2Ev.exit48

bb.m:                                             ; preds = %.split.us
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ak to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bf) #9
  br label %_ZN7msdfgen8ScanlineD2Ev.exit48

_ZN7msdfgen8ScanlineD2Ev.exit48:                  ; preds = %bb.m, %.split.us, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %i.aj, %.split.us ], [ %i.aj, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.bg = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i49, label %_ZN7msdfgen8ScanlineD2Ev.exit50, label %bb.n

bb.n:                                             ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit48
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #9
  br label %_ZN7msdfgen8ScanlineD2Ev.exit50

_ZN7msdfgen8ScanlineD2Ev.exit50:                  ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit48, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %bb.a, %bb.b, %_ZN7msdfgen8ScanlineD2Ev.exit46
  %.041 = phi double [ %i.an, %_ZN7msdfgen8ScanlineD2Ev.exit46 ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.041
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi3EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi3EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %6 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  %i.f = icmp slt i32 %i.e, 2
  %i.g = icmp slt i32 %3, 1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = uitofp nneg i32 %3 to double
  %i.i = fdiv nnan double 1.000000e+00, %i.h
  %i.j = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef 5.000000e-01) ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !29
  %i.l = sitofp i32 %i.k to double
  %i.m = fadd double %i.l, -5.000000e-01
  %i.n = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.m) ; 2 uses
  %i.o = fsub double %i.n, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  invoke void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %6)
          to label %.preheader51 unwind label %bb.k

.preheader51:                                     ; preds = %bb.c
  %i.p = load i32, ptr %i.d, align 4, !tbaa !31   ; 2 uses
  %i.q = add nsw i32 %i.p, -1
  %i.r = icmp sgt i32 %i.p, 1
  br i1 %i.r, label %.preheader.us.preheader, label %._crit_edge59

.preheader.us.preheader:                          ; preds = %.preheader51
  %i.s = fdiv double -1.000000e+00, %i.o
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.03758.us = phi i32 [ %i.af, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.04057.us = phi double [ %i.ad, %._crit_edge.us ], [ 0.000000e+00, %.preheader.us.preheader ]
  %i.t = uitofp nneg i32 %.03758.us to double
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.h
  %.056.us = phi i32 [ 0, %.preheader.us ], [ %i.ae, %bb.h ] ; 2 uses
  %.155.us = phi double [ %.04057.us, %.preheader.us ], [ %i.ad, %bb.h ]
  %i.u = uitofp nneg i32 %.056.us to double
  %i.v = fadd nnan double %i.u, 5.000000e-01
  %i.w = fmul double %i.i, %i.v
  %i.x = fadd double %i.w, %i.t
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.y)
          to label %bb.e unwind label %.split.us  ; 2 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.z)
          to label %bb.f unwind label %.split.us

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.g unwind label %.split.us

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7msdfgen12scanlineMSDFILi3EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.z, i32 noundef %i.aa)
          to label %_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us unwind label %.split.us

_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us: ; preds = %bb.g
  %i.ab = invoke noundef double @_ZN7msdfgen8Scanline7overlapERKS0_S2_ddNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %6, double noundef %i.j, double noundef %i.n, i32 noundef %4)
          to label %bb.h unwind label %.split.us

bb.h:                                             ; preds = %_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us
  %i.ac = call double @llvm.fmuladd.f64(double %i.s, double %i.ab, double 1.000000e+00)
  %i.ad = fadd double %.155.us, %i.ac             ; 3 uses
  %i.ae = add nuw nsw i32 %.056.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %3
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !49

._crit_edge.us:                                   ; preds = %bb.h
  %i.af = add nuw nsw i32 %.03758.us, 1           ; 2 uses
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !31
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %.preheader.us, label %._crit_edge59, !llvm.loop !50

.split.us:                                        ; preds = %_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us, %bb.g, %bb.f, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i47, label %_ZN7msdfgen8ScanlineD2Ev.exit48, label %bb.l

._crit_edge59:                                    ; preds = %._crit_edge.us, %.preheader51
  %.040.lcssa = phi double [ 0.000000e+00, %.preheader51 ], [ %i.ad, %._crit_edge.us ]
  %.lcssa = phi i32 [ %i.q, %.preheader51 ], [ %i.ah, %._crit_edge.us ]
  %i.al = mul nsw i32 %.lcssa, %3
  %i.am = sitofp i32 %i.al to double
  %i.an = fdiv double %.040.lcssa, %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7msdfgen8ScanlineD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge59
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #9
  br label %_ZN7msdfgen8ScanlineD2Ev.exit

_ZN7msdfgen8ScanlineD2Ev.exit:                    ; preds = %._crit_edge59, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.au = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i45, label %_ZN7msdfgen8ScanlineD2Ev.exit46, label %bb.j

bb.j:                                             ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #9
  br label %_ZN7msdfgen8ScanlineD2Ev.exit46

_ZN7msdfgen8ScanlineD2Ev.exit46:                  ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7msdfgen8ScanlineD2Ev.exit48

bb.l:                                             ; preds = %.split.us
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ak to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bf) #9
  br label %_ZN7msdfgen8ScanlineD2Ev.exit48

_ZN7msdfgen8ScanlineD2Ev.exit48:                  ; preds = %bb.l, %.split.us, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.aj, %.split.us ], [ %i.aj, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.bg = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i49, label %_ZN7msdfgen8ScanlineD2Ev.exit50, label %bb.m

bb.m:                                             ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit48
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #9
  br label %_ZN7msdfgen8ScanlineD2Ev.exit50

_ZN7msdfgen8ScanlineD2Ev.exit50:                  ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit48, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.a, %bb.b, %_ZN7msdfgen8ScanlineD2Ev.exit46
  %.041 = phi double [ %i.an, %_ZN7msdfgen8ScanlineD2Ev.exit46 ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.041
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi4EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi4EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %6 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42
  %i.f = icmp slt i32 %i.e, 2
  %i.g = icmp slt i32 %3, 1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = uitofp nneg i32 %3 to double
  %i.i = fdiv nnan double 1.000000e+00, %i.h
  %i.j = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef 5.000000e-01) ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !40
  %i.l = sitofp i32 %i.k to double
  %i.m = fadd double %i.l, -5.000000e-01
  %i.n = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.m) ; 2 uses
  %i.o = fsub double %i.n, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  invoke void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %6)
          to label %.preheader51 unwind label %bb.k

.preheader51:                                     ; preds = %bb.c
  %i.p = load i32, ptr %i.d, align 4, !tbaa !42   ; 2 uses
  %i.q = add nsw i32 %i.p, -1
  %i.r = icmp sgt i32 %i.p, 1
  br i1 %i.r, label %.preheader.us.preheader, label %._crit_edge59

.preheader.us.preheader:                          ; preds = %.preheader51
  %i.s = fdiv double -1.000000e+00, %i.o
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.03758.us = phi i32 [ %i.af, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.04057.us = phi double [ %i.ad, %._crit_edge.us ], [ 0.000000e+00, %.preheader.us.preheader ]
  %i.t = uitofp nneg i32 %.03758.us to double
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.h
  %.056.us = phi i32 [ 0, %.preheader.us ], [ %i.ae, %bb.h ] ; 2 uses
  %.155.us = phi double [ %.04057.us, %.preheader.us ], [ %i.ad, %bb.h ]
  %i.u = uitofp nneg i32 %.056.us to double
  %i.v = fadd nnan double %i.u, 5.000000e-01
  %i.w = fmul double %i.i, %i.v
  %i.x = fadd double %i.w, %i.t
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.y)
          to label %bb.e unwind label %.split.us  ; 2 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.z)
          to label %bb.f unwind label %.split.us

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.g unwind label %.split.us

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.z, i32 noundef %i.aa)
          to label %_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us unwind label %.split.us

_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us: ; preds = %bb.g
  %i.ab = invoke noundef double @_ZN7msdfgen8Scanline7overlapERKS0_S2_ddNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %6, double noundef %i.j, double noundef %i.n, i32 noundef %4)
          to label %bb.h unwind label %.split.us

bb.h:                                             ; preds = %_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us
  %i.ac = call double @llvm.fmuladd.f64(double %i.s, double %i.ab, double 1.000000e+00)
  %i.ad = fadd double %.155.us, %i.ac             ; 3 uses
  %i.ae = add nuw nsw i32 %.056.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %3
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !51

._crit_edge.us:                                   ; preds = %bb.h
  %i.af = add nuw nsw i32 %.03758.us, 1           ; 2 uses
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !42
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %.preheader.us, label %._crit_edge59, !llvm.loop !52

.split.us:                                        ; preds = %_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_10ProjectionEdNS_16YAxisOrientationE.exit.us, %bb.g, %bb.f, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i47, label %_ZN7msdfgen8ScanlineD2Ev.exit48, label %bb.l

._crit_edge59:                                    ; preds = %._crit_edge.us, %.preheader51
  %.040.lcssa = phi double [ 0.000000e+00, %.preheader51 ], [ %i.ad, %._crit_edge.us ]
  %.lcssa = phi i32 [ %i.q, %.preheader51 ], [ %i.ah, %._crit_edge.us ]
  %i.al = mul nsw i32 %.lcssa, %3
  %i.am = sitofp i32 %i.al to double
  %i.an = fdiv double %.040.lcssa, %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7msdfgen8ScanlineD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge59
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #9
  br label %_ZN7msdfgen8ScanlineD2Ev.exit

_ZN7msdfgen8ScanlineD2Ev.exit:                    ; preds = %._crit_edge59, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.au = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i45, label %_ZN7msdfgen8ScanlineD2Ev.exit46, label %bb.j

bb.j:                                             ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #9
  br label %_ZN7msdfgen8ScanlineD2Ev.exit46

_ZN7msdfgen8ScanlineD2Ev.exit46:                  ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7msdfgen8ScanlineD2Ev.exit48

bb.l:                                             ; preds = %.split.us
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ak to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bf) #9
  br label %_ZN7msdfgen8ScanlineD2Ev.exit48

_ZN7msdfgen8ScanlineD2Ev.exit48:                  ; preds = %bb.l, %.split.us, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.aj, %.split.us ], [ %i.aj, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.bg = load ptr, ptr %5, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i49, label %_ZN7msdfgen8ScanlineD2Ev.exit50, label %bb.m

bb.m:                                             ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit48
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #9
  br label %_ZN7msdfgen8ScanlineD2Ev.exit50

_ZN7msdfgen8ScanlineD2Ev.exit50:                  ; preds = %_ZN7msdfgen8ScanlineD2Ev.exit48, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.a, %bb.b, %_ZN7msdfgen8ScanlineD2Ev.exit46
  %.041 = phi double [ %i.an, %_ZN7msdfgen8ScanlineD2Ev.exit46 ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.041
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi1EEERKNS_10ProjectionEdb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %4 to i32
  tail call void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi1EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_10ProjectionEdb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %4 to i32
  tail call void @_ZN7msdfgen12scanlineMSDFILi3EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_10ProjectionEdb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %4 to i32
  tail call void @_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi1EEERKNS_7Vector2ES8_bd(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = zext i1 %4 to i32
  call void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi1EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, double noundef %5, i32 noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void
}

declare void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi3EEERKNS_7Vector2ES8_bd(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = zext i1 %4 to i32
  call void @_ZN7msdfgen12scanlineMSDFILi3EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, double noundef %5, i32 noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_7Vector2ES8_bd(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = zext i1 %4 to i32
  call void @_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, double noundef %5, i32 noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi1EEERKNS_5ShapeERKNS_7Vector2ES9_iNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi1EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi3EEERKNS_5ShapeERKNS_7Vector2ES9_iNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi3EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi4EEERKNS_5ShapeERKNS_7Vector2ES9_iNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @_ZN7msdfgen10ProjectionC1ERKNS_7Vector2ES3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi4EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret double %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

declare noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #1

declare void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(28), double noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #1

declare noundef double @_ZN7msdfgen8Scanline7overlapERKS0_S2_ddNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(28), double noundef, double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi1EEE", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 20}
!10 = !{!"p1 float", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTSN7msdfgen16YAxisOrientationE", !6, i64 0}
!13 = !{!9, !5, i64 12}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"p1 _ZTSN7msdfgen8Scanline12IntersectionE", !11, i64 0}
!17 = !{!15, !16, i64 16}
!18 = !{!9, !10, i64 0}
!19 = !{!9, !5, i64 16}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !6, i64 0}
!22 = !{i64 0, i64 8, !23, i64 8, i64 4, !25}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !6, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!15, !16, i64 8}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !5, i64 8}
!30 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi3EEE", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 20}
!31 = !{!30, !5, i64 12}
!32 = !{!30, !10, i64 0}
!33 = !{!30, !5, i64 16}
!34 = !{!35, !24, i64 0}
!35 = !{!"_ZTSN7msdfgen8Scanline12IntersectionE", !24, i64 0, !5, i64 8}
!36 = !{!35, !5, i64 8}
!37 = distinct !{!37, !28}
!38 = !{!16, !16, i64 0}
!39 = distinct !{!39, !28}
!40 = !{!41, !5, i64 8}
!41 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi4EEE", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 20}
!42 = !{!41, !5, i64 12}
!43 = !{!41, !10, i64 0}
!44 = !{!41, !5, i64 16}
!45 = distinct !{!45, !28}
!46 = distinct !{!46, !28}
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28}
end_hunk_0
