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
  %6 = alloca %"class.std::vector", align 8       ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %5, align 8, !tbaa !16     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.v

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !16     ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit66, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit66

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit66: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !37 ; 2 uses
  %i.ao = mul nsw i32 %.054, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !19
  %i.as = mul nsw i32 %.053, %i.an
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !19
  %i.aw = fsub double 1.000000e+00, %.052         ; 2 uses
  %i.ax = fpext float %i.ar to double
  %i.ay = fpext float %i.av to double
  %i.az = fmul double %.052, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ax, double %i.az) ; 2 uses
  %i.bb = fptrunc double %i.ba to float
  %i.bc = fcmp ogt double %i.ba, f0x3FE0000010000000
  br i1 %i.bc, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bd = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11
          to label %.noexc68 unwind label %.loopexit.split-lp ; 3 uses

.noexc68:                                         ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) @__const._ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE.intersection, i64 16, i1 false), !tbaa.struct !23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !24
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !17
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc68, %bb.h
  %.promoted97 = phi ptr [ null, %bb.h ], [ %i.bg, %.noexc68 ] ; 2 uses
  %.promoted = phi ptr [ null, %bb.h ], [ %i.bd, %.noexc68 ] ; 2 uses
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !12
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %.lr.ph, label %bb.i

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78
  store ptr %i.dn, ptr %i.bj, align 8
  store ptr %i.dm, ptr %i.bk, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit
  %.lcssa = phi ptr [ %i.do, %._crit_edge ], [ %.promoted, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ]
  store ptr %.lcssa, ptr %6, align 8
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.t unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78 ] ; 3 uses
  %i.bl = phi ptr [ %.promoted97, %.lr.ph ], [ %i.dm, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78 ] ; 7 uses
  %i.bm = phi ptr [ %.promoted97, %.lr.ph ], [ %i.dn, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78 ] ; 8 uses
  %.05091 = phi i32 [ 0, %.lr.ph ], [ %i.dp, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78 ] ; 2 uses
  %.05190 = phi float [ %i.bb, %.lr.ph ], [ %i.ce, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78 ] ; 3 uses
  %i.bn = phi ptr [ %.promoted, %.lr.ph ], [ %i.do, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78 ] ; 10 uses
  %i.bo = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.bp = load i32, ptr %i.am, align 8, !tbaa !37 ; 2 uses
  %i.bq = mul nsw i32 %i.bp, %.054
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !19
  %i.bv = mul nsw i32 %i.bp, %.053
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !19
  %i.ca = fpext float %i.bu to double
  %i.cb = fpext float %i.bz to double
  %i.cc = fmul double %.052, %i.cb
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ca, double %i.cc)
  %i.ce = fptrunc double %i.cd to float           ; 3 uses
  %i.cf = fcmp une float %.05190, %i.ce
  br i1 %i.cf, label %bb.k, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78

bb.k:                                             ; preds = %bb.j
  %i.cg = fsub float 5.000000e-01, %.05190
  %i.ch = fpext float %i.cg to double
  %i.ci = fsub float %i.ce, %.05190               ; 3 uses
  %i.cj = fpext float %i.ci to double
  %i.ck = fdiv double %i.ch, %i.cj                ; 3 uses
  %i.cl = fcmp oge double %i.ck, 0.000000e+00
  %i.cm = fcmp ole double %i.ck, 1.000000e+00
  %or.cond = and i1 %i.cl, %i.cm
  br i1 %or.cond, label %bb.l, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78

bb.l:                                             ; preds = %bb.k
  %i.cn = uitofp nneg i32 %.05091 to double
  %i.co = fadd double %i.ck, %i.cn
  %i.cp = fadd double %i.co, 5.000000e-01
  %i.cq = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.cp)
          to label %bb.m unwind label %.loopexit  ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.cr = fcmp ogt float %i.ci, 0.000000e+00
  %i.cs = zext i1 %i.cr to i32
  %i.ct = fcmp olt float %i.ci, 0.000000e+00
  %.neg.i = sext i1 %i.ct to i32
  %i.cu = add nsw i32 %.neg.i, %i.cs              ; 2 uses
  %.not.i69 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i69, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double %i.cq, ptr %i.bm, align 8, !tbaa !21
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 %i.cu, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !22
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78

bb.o:                                             ; preds = %bb.m
  %i.cw = ptrtoint ptr %i.bl to i64
  %i.cx = ptrtoint ptr %i.bn to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 6 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775792
  br i1 %i.cz, label %bb.p, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i70

bb.p:                                             ; preds = %bb.o
  store ptr %i.bm, ptr %i.bj, align 8
  store ptr %i.bl, ptr %i.bk, align 8
  store ptr %i.bn, ptr %6, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc76 unwind label %.loopexit.split-lp

.noexc76:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i70: ; preds = %bb.o
  %i.da = ashr exact i64 %i.cy, 4                 ; 3 uses
  %.sroa.speculated.i.i.i71 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i71, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 576460752303423487)
  %i.de = select i1 %i.dc, i64 576460752303423487, i64 %i.dd ; 3 uses
  %.not.i.i.i72 = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i.i72)
  %i.df = shl nuw nsw i64 %i.de, 4
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #11
          to label %.noexc77 unwind label %.loopexit ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i70
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy ; 3 uses
  store double %i.cq, ptr %i.dh, align 8, !tbaa !21
  %.sroa.6.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %i.cu, ptr %.sroa.6.0..sroa_idx84, align 8, !tbaa !22
  %i.di = icmp sgt i64 %i.cy, 0
  br i1 %i.di, label %bb.q, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i73

bb.q:                                             ; preds = %.noexc77
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr align 8 %i.bn, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i73

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i73: ; preds = %bb.q, %.noexc77
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.not.i17.i.i74 = icmp eq ptr %i.bn, null
  br i1 %.not.i17.i.i74, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i73
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.cy) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75: ; preds = %bb.r, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i73
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.de
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78

.loopexit:                                        ; preds = %bb.l, %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i70
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bm, ptr %i.bj, align 8
  store ptr %i.bl, ptr %i.bk, align 8
  store ptr %i.bn, ptr %6, align 8
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.p, %bb.i, %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %6, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.dl = phi ptr [ %i.bn, %.loopexit ], [ %.pre, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i81 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit82, label %bb.w

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit78: ; preds = %bb.n, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75, %bb.k, %bb.j
  %i.dm = phi ptr [ %i.bl, %bb.n ], [ %i.dk, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75 ], [ %i.bl, %bb.k ], [ %i.bl, %bb.j ] ; 2 uses
  %i.dn = phi ptr [ %i.cv, %bb.n ], [ %i.dj, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75 ], [ %i.bm, %bb.k ], [ %i.bm, %bb.j ] ; 2 uses
  %i.do = phi ptr [ %i.bn, %bb.n ], [ %i.dg, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i75 ], [ %i.bn, %bb.k ], [ %i.bn, %bb.j ] ; 2 uses
  %i.dp = add nuw nsw i32 %.05091, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dq = load i32, ptr %i.a, align 8, !tbaa !12
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next, %i.dr
  br i1 %i.ds, label %bb.j, label %._crit_edge, !llvm.loop !35

bb.t:                                             ; preds = %bb.i
  %i.dt = load ptr, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit80, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !17
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit80

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit80: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit80, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit
  ret void

bb.w:                                             ; preds = %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !17
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dl to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.ed) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit82

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit82: ; preds = %bb.s, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit82, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit66
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit82 ], [ %i.m, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit66 ]
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %5, align 8, !tbaa !16     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.aw

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !16     ; 3 uses
  %.not.i.i.i123 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.az

bb.h:                                             ; preds = %bb.b
  %i.t = tail call noundef double @_ZNK7msdfgen10Projection8projectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3)
  %i.u = fadd double %i.t, -5.000000e-01          ; 4 uses
  %i.v = load i32, ptr %i.d, align 4, !tbaa !28   ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !41 ; 2 uses
  %i.ao = mul nsw i32 %.0106, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ap ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7msdfgen12scanlineMSDFILi3EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE:bb.a
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.fe, ptr %7, align 16, !tbaa !30
  %i.ff = fcmp ogt float %i.ea, 0.000000e+00
  %i.fg = zext i1 %i.ff to i32
  %i.fh = fcmp olt float %i.ea, 0.000000e+00
  %.neg.i = sext i1 %i.fh to i32
  %i.fi = add nsw i32 %.neg.i, %i.fg
  store i32 %i.fi, ptr %i.cn, align 8, !tbaa !31
  br label %bb.p

bb.o:                                             ; preds = %bb.x, %bb.s, %bb.m
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.k, %bb.j
  %.3 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ 1, %bb.n ], [ 0, %bb.l ] ; 5 uses
  %i.fk = extractelement <2 x float> %i.dr, i64 0 ; 3 uses
  %i.fl = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  %i.fm = fcmp une float %i.fl, %i.fk
  br i1 %i.fm, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fn = fsub float 5.000000e-01, %i.fl
  %i.fo = fpext float %i.fn to double
  %foldExtExtBinop = fsub <2 x float> %i.dr, %i.cq
  %i.fp = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.fq = fpext float %i.fp to double
  %i.fr = fdiv double %i.fo, %i.fq                ; 6 uses
  %i.fs = fcmp oge double %i.fr, 0.000000e+00
  %i.ft = fcmp ole double %i.fr, 1.000000e+00
  %or.cond.1 = and i1 %i.fs, %i.ft
  br i1 %or.cond.1, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.fu = fsub double 1.000000e+00, %i.fr         ; 2 uses
  %i.fv = fmul double %i.fr, %i.dt
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fu, double %i.ds, double %i.fv)
  %i.fx = fptrunc double %i.fw to float           ; 3 uses
  %i.fy = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = fmul <2 x double> %i.fz, %i.dv
  %i.gb = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %i.du, <2 x double> %i.ga)
  %i.ge = fptrunc <2 x double> %i.gd to <2 x float> ; 3 uses
  %i.gf = extractelement <2 x float> %i.ge, i64 0 ; 3 uses
  %i.gg = fcmp ogt float %i.gf, %i.fx
  %i.gh = select i1 %i.gg, float %i.gf, float %i.fx
  %i.gi = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.gh, i64 1 ; 2 uses
  %i.gk = fcmp ogt <2 x float> %i.gj, %i.ge
  %i.gl = select <2 x i1> %i.gk, <2 x float> %i.ge, <2 x float> %i.gj ; 2 uses
  %i.gm = extractelement <2 x float> %i.gl, i64 0 ; 2 uses
  %i.gn = extractelement <2 x float> %i.gl, i64 1 ; 2 uses
  %i.go = fcmp olt float %i.gm, %i.gn
  %i.gp = select i1 %i.go, float %i.gn, float %i.gm
  %i.gq = fcmp oeq float %i.gp, %i.gf
  br i1 %i.gq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.gr = fadd double %i.fr, %i.dw
  %i.gs = fadd double %i.gr, 5.000000e-01
  %i.gt = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.gs)
          to label %bb.t unwind label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.gu = zext nneg i32 %.3 to i64
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.gu ; 2 uses
  store double %i.gt, ptr %i.gv, align 16, !tbaa !30
  %i.gw = fcmp ogt float %i.fp, 0.000000e+00
  %i.gx = zext i1 %i.gw to i32
  %i.gy = fcmp olt float %i.fp, 0.000000e+00
  %.neg.i.1 = sext i1 %i.gy to i32
  %i.gz = add nsw i32 %.neg.i.1, %i.gx
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i32 %i.gz, ptr %i.ha, align 8, !tbaa !31
  %i.hb = add nuw nsw i32 %.3, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.q, %bb.p
  %.3.1 = phi i32 [ %.3, %bb.p ], [ %.3, %bb.q ], [ %i.hb, %bb.t ], [ %.3, %bb.r ] ; 5 uses
  %i.hc = extractelement <2 x float> %i.dr, i64 1 ; 2 uses
  %i.hd = extractelement <2 x float> %i.cq, i64 1 ; 3 uses
  %i.he = fcmp une float %i.hd, %i.hc
  br i1 %i.he, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.hf = fsub float 5.000000e-01, %i.hd
  %i.hg = fpext float %i.hf to double
  %i.hh = fsub float %i.hc, %i.hd                 ; 3 uses
  %i.hi = fpext float %i.hh to double
  %i.hj = fdiv double %i.hg, %i.hi                ; 6 uses
  %i.hk = fcmp oge double %i.hj, 0.000000e+00
  %i.hl = fcmp ole double %i.hj, 1.000000e+00
  %or.cond.2 = and i1 %i.hk, %i.hl
  br i1 %or.cond.2, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.hm = fsub double 1.000000e+00, %i.hj         ; 2 uses
  %i.hn = fmul double %i.hj, %i.dt
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.ds, double %i.hn)
  %i.hp = fptrunc double %i.ho to float           ; 3 uses
  %i.hq = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x double> %i.hr, %i.dv
  %i.ht = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.du, <2 x double> %i.hs)
  %i.hw = fptrunc <2 x double> %i.hv to <2 x float> ; 4 uses
  %i.hx = extractelement <2 x float> %i.hw, i64 0 ; 2 uses
  %i.hy = fcmp ogt float %i.hx, %i.hp
  %i.hz = select i1 %i.hy, float %i.hx, float %i.hp
  %i.ia = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.ib = insertelement <2 x float> %i.ia, float %i.hz, i64 1 ; 2 uses
  %i.ic = fcmp ogt <2 x float> %i.ib, %i.hw
  %i.id = select <2 x i1> %i.ic, <2 x float> %i.hw, <2 x float> %i.ib ; 2 uses
  %i.ie = extractelement <2 x float> %i.id, i64 0 ; 2 uses
  %i.if = extractelement <2 x float> %i.id, i64 1 ; 2 uses
  %i.ig = fcmp olt float %i.ie, %i.if
  %i.ih = select i1 %i.ig, float %i.if, float %i.ie
  %i.ii = extractelement <2 x float> %i.hw, i64 1
  %i.ij = fcmp oeq float %i.ih, %i.ii
  br i1 %i.ij, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ik = fadd double %i.hj, %i.dw
  %i.il = fadd double %i.ik, 5.000000e-01
  %i.im = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.il)
          to label %bb.y unwind label %bb.o

bb.y:                                             ; preds = %bb.x
  %i.in = zext nneg i32 %.3.1 to i64
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.in ; 2 uses
  store double %i.im, ptr %i.io, align 16, !tbaa !30
  %i.ip = fcmp ogt float %i.hh, 0.000000e+00
  %i.iq = zext i1 %i.ip to i32
  %i.ir = fcmp olt float %i.hh, 0.000000e+00
  %.neg.i.2 = sext i1 %i.ir to i32
  %i.is = add nsw i32 %.neg.i.2, %i.iq
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store i32 %i.is, ptr %i.it, align 8, !tbaa !31
  %i.iu = add nuw nsw i32 %.3.1, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y, %bb.v, %bb.u
  %.3.2 = phi i32 [ %.3.1, %bb.u ], [ %.3.1, %bb.v ], [ %i.iu, %bb.y ], [ %.3.1, %bb.w ] ; 4 uses
  %i.iv = icmp samesign ugt i32 %.3.2, 1
  br i1 %i.iv, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.iw = load double, ptr %7, align 16, !tbaa !30
  %i.ix = load double, ptr %i.ci, align 16, !tbaa !30
  %i.iy = fcmp ogt double %i.iw, %i.ix
  br i1 %i.iy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cj, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ci, ptr noundef nonnull align 16 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not119 = icmp eq i32 %.3.2, 2
  br i1 %.not119, label %.lr.ph, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.iz = load double, ptr %i.ci, align 16, !tbaa !30
  %i.ja = load double, ptr %i.ck, align 16, !tbaa !30
  %i.jb = fcmp ogt double %i.iz, %i.ja
  br i1 %i.jb, label %bb.ae, label %.lr.ph

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cj, ptr noundef nonnull align 16 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ci, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !23
  %i.jc = load double, ptr %7, align 16, !tbaa !30
  %i.jd = load double, ptr %i.ci, align 16, !tbaa !30
  %i.je = fcmp ogt double %i.jc, %i.jd
  br i1 %i.je, label %bb.af, label %.lr.ph

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cj, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ci, ptr noundef nonnull align 16 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !23
  br label %.lr.ph

bb.ag:                                            ; preds = %bb.z
  %i.jf = icmp eq i32 %.3.2, 1
  br i1 %i.jf, label %.lr.ph, label %bb.ap

.lr.ph:                                           ; preds = %bb.ae, %bb.af, %bb.ad, %bb.ac, %bb.ag
  %wide.trip.count = zext nneg i32 %.3.2 to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.ao
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
  %i.jg = phi ptr [ %.promoted157, %.lr.ph ], [ %i.kh, %bb.ao ] ; 6 uses
  %i.jh = phi ptr [ %.promoted151, %.lr.ph ], [ %i.ki, %bb.ao ] ; 6 uses
  %.1101148 = phi i8 [ %.0100163, %.lr.ph ], [ %.2102, %bb.ao ] ; 3 uses
  %i.ji = phi ptr [ %.promoted, %.lr.ph ], [ %i.kj, %bb.ao ] ; 10 uses
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !31
  %i.jm = icmp sgt i32 %i.jl, 0
  %i.jn = trunc nuw i8 %.1101148 to i1
  %i.jo = xor i1 %i.jm, %i.jn
  br i1 %i.jo, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %.not.i127 = icmp eq ptr %i.jh, %i.jg
  br i1 %.not.i127, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 16 dereferenceable(16) %i.jj, i64 16, i1 false), !tbaa.struct !23
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

bb.ak:                                            ; preds = %bb.ai
  %i.jp = ptrtoint ptr %i.jg to i64
  %i.jq = ptrtoint ptr %i.ji to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 6 uses
  %i.js = icmp eq i64 %i.jr, 9223372036854775792
  br i1 %i.js, label %bb.al, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128

bb.al:                                            ; preds = %bb.ak
  store ptr %i.jh, ptr %i.cl, align 8
  store ptr %i.jg, ptr %i.cm, align 8
  store ptr %i.ji, ptr %6, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc134 unwind label %.loopexit.split-lp

.noexc134:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128: ; preds = %bb.ak
  %i.jt = ashr exact i64 %i.jr, 4                 ; 3 uses
  %.sroa.speculated.i.i.i129 = tail call i64 @llvm.umax.i64(i64 %i.jt, i64 1)
  %i.ju = add nsw i64 %.sroa.speculated.i.i.i129, %i.jt ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jt
  %i.jw = tail call i64 @llvm.umin.i64(i64 %i.ju, i64 576460752303423487)
  %i.jx = select i1 %i.jv, i64 576460752303423487, i64 %i.jw ; 3 uses
  %.not.i.i.i130 = icmp ne i64 %i.jx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i130)
  %i.jy = shl nuw nsw i64 %i.jx, 4
  %i.jz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #11
          to label %.noexc135 unwind label %.loopexit ; 4 uses

.noexc135:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.jr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull align 16 dereferenceable(16) %i.jj, i64 16, i1 false), !tbaa.struct !23
  %i.kb = icmp sgt i64 %i.jr, 0
  br i1 %i.kb, label %bb.am, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

bb.am:                                            ; preds = %.noexc135
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jz, ptr align 8 %i.ji, i64 %i.jr, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131: ; preds = %bb.am, %.noexc135
  %.not.i17.i.i132 = icmp eq ptr %i.ji, null
  br i1 %.not.i17.i.i132, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jr) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133: ; preds = %bb.an, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.jz, i64 %i.jx
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, %bb.aj
  %i.kd = phi ptr [ %i.kc, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133 ], [ %i.jg, %bb.aj ]
  %.pn168 = phi ptr [ %i.ka, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133 ], [ %i.jh, %bb.aj ]
  %i.ke = phi ptr [ %i.jz, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133 ], [ %i.ji, %bb.aj ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.pn168, i64 16
  %i.kg = xor i8 %.1101148, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ah, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136
  %i.kh = phi ptr [ %i.kd, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jg, %bb.ah ] ; 3 uses
  %i.ki = phi ptr [ %i.kf, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jh, %bb.ah ] ; 4 uses
  %i.kj = phi ptr [ %i.ke, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.ji, %bb.ah ] ; 2 uses
  %.2102 = phi i8 [ %i.kg, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %.1101148, %bb.ah ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ah, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.ao
  store ptr %i.ki, ptr %i.cl, align 8
  store ptr %i.kh, ptr %i.cm, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge, %bb.ag
  %i.kk = phi ptr [ %i.ki, %._crit_edge ], [ %i.co, %bb.ag ] ; 5 uses
  %.promoted157194 = phi ptr [ %i.kh, %._crit_edge ], [ %.promoted157, %bb.ag ]
  %.promoted151189 = phi ptr [ %i.ki, %._crit_edge ], [ %.promoted151, %bb.ag ]
  %i.kl = phi ptr [ %i.kj, %._crit_edge ], [ %.promoted, %bb.ag ] ; 3 uses
  %.1101.lcssa = phi i8 [ %.2102, %._crit_edge ], [ %.0100163, %bb.ag ] ; 4 uses
  store ptr %i.kl, ptr %6, align 8
  %i.km = fcmp ogt float %i.fk, %i.di
  %i.kn = select i1 %i.km, float %i.fk, float %i.di
  %i.ko = insertelement <2 x float> poison, float %i.di, i64 0
  %i.kp = insertelement <2 x float> %i.ko, float %i.kn, i64 1 ; 2 uses
  %i.kq = fcmp ogt <2 x float> %i.kp, %i.dr
  %i.kr = select <2 x i1> %i.kq, <2 x float> %i.dr, <2 x float> %i.kp ; 2 uses
  %i.ks = extractelement <2 x float> %i.kr, i64 0 ; 2 uses
  %i.kt = extractelement <2 x float> %i.kr, i64 1 ; 2 uses
  %i.ku = fcmp olt float %i.ks, %i.kt
  %i.kv = select i1 %i.ku, float %i.kt, float %i.ks ; 2 uses
  %i.kw = fcmp ogt float %i.kv, 5.000000e-01
  %i.kx = trunc nuw i8 %.1101.lcssa to i1
  %i.ky = xor i1 %i.kw, %i.kx
  %i.kz = fcmp une float %i.kv, 5.000000e-01
  %or.cond3 = and i1 %i.kz, %i.ky
  br i1 %or.cond3, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.la = icmp eq ptr %i.kl, %i.kk
  br i1 %i.la, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lb = getelementptr inbounds i8, ptr %i.kk, i64 -16 ; 3 uses
  store ptr %i.lb, ptr %i.cl, align 8, !tbaa !24
  %i.lc = xor i8 %.1101.lcssa, 1
  br label %bb.as

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jh, ptr %i.cl, align 8
  store ptr %i.jg, ptr %i.cm, align 8
  store ptr %i.ji, ptr %6, align 8
  br label %bb.at

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ld = phi ptr [ %i.kk, %bb.aq ], [ %i.lb, %bb.ar ], [ %i.kk, %bb.ap ]
  %.promoted151191 = phi ptr [ %i.kk, %bb.aq ], [ %i.lb, %bb.ar ], [ %.promoted151189, %bb.ap ]
  %.3103 = phi i8 [ %.1101.lcssa, %bb.aq ], [ %i.lc, %bb.ar ], [ %.1101.lcssa, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.le = add nuw nsw i32 %.099164, 1
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %i.lf = load i32, ptr %i.a, align 8, !tbaa !27
  %i.lg = sext i32 %i.lf to i64
  %i.lh = icmp slt i64 %indvars.iv.next183, %i.lg
  br i1 %i.lh, label %bb.j, label %._crit_edge167, !llvm.loop !39

bb.at:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.o
  %i.li = phi ptr [ %.promoted, %bb.o ], [ %i.ji, %.loopexit ], [ %i.ji, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.ax

bb.au:                                            ; preds = %._crit_edge167
  %i.lj = load ptr, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !17
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.lo) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit
  ret void

bb.ax:                                            ; preds = %bb.at, %bb.i
  %i.lp = phi ptr [ %i.li, %bb.at ], [ %.pre, %bb.i ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.at ], [ %i.cf, %bb.i ]
  %.not.i.i.i139 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !17
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lp to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %i.lp, i64 noundef %i.lu) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %5, align 8, !tbaa !16     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.aw

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !16     ; 3 uses
  %.not.i.i.i123 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #10
end_hunk_1
begin_hunk_2_@_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE:bb.a
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.fe, ptr %7, align 16, !tbaa !30
  %i.ff = fcmp ogt float %i.ea, 0.000000e+00
  %i.fg = zext i1 %i.ff to i32
  %i.fh = fcmp olt float %i.ea, 0.000000e+00
  %.neg.i = sext i1 %i.fh to i32
  %i.fi = add nsw i32 %.neg.i, %i.fg
  store i32 %i.fi, ptr %i.cn, align 8, !tbaa !31
  br label %bb.p

bb.o:                                             ; preds = %bb.x, %bb.s, %bb.m
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.k, %bb.j
  %.3 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ 1, %bb.n ], [ 0, %bb.l ] ; 5 uses
  %i.fk = extractelement <2 x float> %i.dr, i64 0 ; 3 uses
  %i.fl = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  %i.fm = fcmp une float %i.fl, %i.fk
  br i1 %i.fm, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fn = fsub float 5.000000e-01, %i.fl
  %i.fo = fpext float %i.fn to double
  %foldExtExtBinop = fsub <2 x float> %i.dr, %i.cq
  %i.fp = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.fq = fpext float %i.fp to double
  %i.fr = fdiv double %i.fo, %i.fq                ; 6 uses
  %i.fs = fcmp oge double %i.fr, 0.000000e+00
  %i.ft = fcmp ole double %i.fr, 1.000000e+00
  %or.cond.1 = and i1 %i.fs, %i.ft
  br i1 %or.cond.1, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.fu = fsub double 1.000000e+00, %i.fr         ; 2 uses
  %i.fv = fmul double %i.fr, %i.dt
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fu, double %i.ds, double %i.fv)
  %i.fx = fptrunc double %i.fw to float           ; 3 uses
  %i.fy = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = fmul <2 x double> %i.fz, %i.dv
  %i.gb = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %i.du, <2 x double> %i.ga)
  %i.ge = fptrunc <2 x double> %i.gd to <2 x float> ; 3 uses
  %i.gf = extractelement <2 x float> %i.ge, i64 0 ; 3 uses
  %i.gg = fcmp ogt float %i.gf, %i.fx
  %i.gh = select i1 %i.gg, float %i.gf, float %i.fx
  %i.gi = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.gh, i64 1 ; 2 uses
  %i.gk = fcmp ogt <2 x float> %i.gj, %i.ge
  %i.gl = select <2 x i1> %i.gk, <2 x float> %i.ge, <2 x float> %i.gj ; 2 uses
  %i.gm = extractelement <2 x float> %i.gl, i64 0 ; 2 uses
  %i.gn = extractelement <2 x float> %i.gl, i64 1 ; 2 uses
  %i.go = fcmp olt float %i.gm, %i.gn
  %i.gp = select i1 %i.go, float %i.gn, float %i.gm
  %i.gq = fcmp oeq float %i.gp, %i.gf
  br i1 %i.gq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.gr = fadd double %i.fr, %i.dw
  %i.gs = fadd double %i.gr, 5.000000e-01
  %i.gt = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.gs)
          to label %bb.t unwind label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.gu = zext nneg i32 %.3 to i64
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.gu ; 2 uses
  store double %i.gt, ptr %i.gv, align 16, !tbaa !30
  %i.gw = fcmp ogt float %i.fp, 0.000000e+00
  %i.gx = zext i1 %i.gw to i32
  %i.gy = fcmp olt float %i.fp, 0.000000e+00
  %.neg.i.1 = sext i1 %i.gy to i32
  %i.gz = add nsw i32 %.neg.i.1, %i.gx
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i32 %i.gz, ptr %i.ha, align 8, !tbaa !31
  %i.hb = add nuw nsw i32 %.3, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.q, %bb.p
  %.3.1 = phi i32 [ %.3, %bb.p ], [ %.3, %bb.q ], [ %i.hb, %bb.t ], [ %.3, %bb.r ] ; 5 uses
  %i.hc = extractelement <2 x float> %i.dr, i64 1 ; 2 uses
  %i.hd = extractelement <2 x float> %i.cq, i64 1 ; 3 uses
  %i.he = fcmp une float %i.hd, %i.hc
  br i1 %i.he, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.hf = fsub float 5.000000e-01, %i.hd
  %i.hg = fpext float %i.hf to double
  %i.hh = fsub float %i.hc, %i.hd                 ; 3 uses
  %i.hi = fpext float %i.hh to double
  %i.hj = fdiv double %i.hg, %i.hi                ; 6 uses
  %i.hk = fcmp oge double %i.hj, 0.000000e+00
  %i.hl = fcmp ole double %i.hj, 1.000000e+00
  %or.cond.2 = and i1 %i.hk, %i.hl
  br i1 %or.cond.2, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.hm = fsub double 1.000000e+00, %i.hj         ; 2 uses
  %i.hn = fmul double %i.hj, %i.dt
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.ds, double %i.hn)
  %i.hp = fptrunc double %i.ho to float           ; 3 uses
  %i.hq = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x double> %i.hr, %i.dv
  %i.ht = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.du, <2 x double> %i.hs)
  %i.hw = fptrunc <2 x double> %i.hv to <2 x float> ; 4 uses
  %i.hx = extractelement <2 x float> %i.hw, i64 0 ; 2 uses
  %i.hy = fcmp ogt float %i.hx, %i.hp
  %i.hz = select i1 %i.hy, float %i.hx, float %i.hp
  %i.ia = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.ib = insertelement <2 x float> %i.ia, float %i.hz, i64 1 ; 2 uses
  %i.ic = fcmp ogt <2 x float> %i.ib, %i.hw
  %i.id = select <2 x i1> %i.ic, <2 x float> %i.hw, <2 x float> %i.ib ; 2 uses
  %i.ie = extractelement <2 x float> %i.id, i64 0 ; 2 uses
  %i.if = extractelement <2 x float> %i.id, i64 1 ; 2 uses
  %i.ig = fcmp olt float %i.ie, %i.if
  %i.ih = select i1 %i.ig, float %i.if, float %i.ie
  %i.ii = extractelement <2 x float> %i.hw, i64 1
  %i.ij = fcmp oeq float %i.ih, %i.ii
  br i1 %i.ij, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ik = fadd double %i.hj, %i.dw
  %i.il = fadd double %i.ik, 5.000000e-01
  %i.im = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.il)
          to label %bb.y unwind label %bb.o

bb.y:                                             ; preds = %bb.x
  %i.in = zext nneg i32 %.3.1 to i64
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.in ; 2 uses
  store double %i.im, ptr %i.io, align 16, !tbaa !30
  %i.ip = fcmp ogt float %i.hh, 0.000000e+00
  %i.iq = zext i1 %i.ip to i32
  %i.ir = fcmp olt float %i.hh, 0.000000e+00
  %.neg.i.2 = sext i1 %i.ir to i32
  %i.is = add nsw i32 %.neg.i.2, %i.iq
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store i32 %i.is, ptr %i.it, align 8, !tbaa !31
  %i.iu = add nuw nsw i32 %.3.1, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y, %bb.v, %bb.u
  %.3.2 = phi i32 [ %.3.1, %bb.u ], [ %.3.1, %bb.v ], [ %i.iu, %bb.y ], [ %.3.1, %bb.w ] ; 4 uses
  %i.iv = icmp samesign ugt i32 %.3.2, 1
  br i1 %i.iv, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.iw = load double, ptr %7, align 16, !tbaa !30
  %i.ix = load double, ptr %i.ci, align 16, !tbaa !30
  %i.iy = fcmp ogt double %i.iw, %i.ix
  br i1 %i.iy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cj, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ci, ptr noundef nonnull align 16 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not119 = icmp eq i32 %.3.2, 2
  br i1 %.not119, label %.lr.ph, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.iz = load double, ptr %i.ci, align 16, !tbaa !30
  %i.ja = load double, ptr %i.ck, align 16, !tbaa !30
  %i.jb = fcmp ogt double %i.iz, %i.ja
  br i1 %i.jb, label %bb.ae, label %.lr.ph

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cj, ptr noundef nonnull align 16 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ci, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !23
  %i.jc = load double, ptr %7, align 16, !tbaa !30
  %i.jd = load double, ptr %i.ci, align 16, !tbaa !30
  %i.je = fcmp ogt double %i.jc, %i.jd
  br i1 %i.je, label %bb.af, label %.lr.ph

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cj, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ci, ptr noundef nonnull align 16 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !23
  br label %.lr.ph

bb.ag:                                            ; preds = %bb.z
  %i.jf = icmp eq i32 %.3.2, 1
  br i1 %i.jf, label %.lr.ph, label %bb.ap

.lr.ph:                                           ; preds = %bb.ae, %bb.af, %bb.ad, %bb.ac, %bb.ag
  %wide.trip.count = zext nneg i32 %.3.2 to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.ao
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
  %i.jg = phi ptr [ %.promoted157, %.lr.ph ], [ %i.kh, %bb.ao ] ; 6 uses
  %i.jh = phi ptr [ %.promoted151, %.lr.ph ], [ %i.ki, %bb.ao ] ; 6 uses
  %.1101148 = phi i8 [ %.0100163, %.lr.ph ], [ %.2102, %bb.ao ] ; 3 uses
  %i.ji = phi ptr [ %.promoted, %.lr.ph ], [ %i.kj, %bb.ao ] ; 10 uses
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !31
  %i.jm = icmp sgt i32 %i.jl, 0
  %i.jn = trunc nuw i8 %.1101148 to i1
  %i.jo = xor i1 %i.jm, %i.jn
  br i1 %i.jo, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %.not.i127 = icmp eq ptr %i.jh, %i.jg
  br i1 %.not.i127, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 16 dereferenceable(16) %i.jj, i64 16, i1 false), !tbaa.struct !23
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

bb.ak:                                            ; preds = %bb.ai
  %i.jp = ptrtoint ptr %i.jg to i64
  %i.jq = ptrtoint ptr %i.ji to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 6 uses
  %i.js = icmp eq i64 %i.jr, 9223372036854775792
  br i1 %i.js, label %bb.al, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128

bb.al:                                            ; preds = %bb.ak
  store ptr %i.jh, ptr %i.cl, align 8
  store ptr %i.jg, ptr %i.cm, align 8
  store ptr %i.ji, ptr %6, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc134 unwind label %.loopexit.split-lp

.noexc134:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128: ; preds = %bb.ak
  %i.jt = ashr exact i64 %i.jr, 4                 ; 3 uses
  %.sroa.speculated.i.i.i129 = tail call i64 @llvm.umax.i64(i64 %i.jt, i64 1)
  %i.ju = add nsw i64 %.sroa.speculated.i.i.i129, %i.jt ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jt
  %i.jw = tail call i64 @llvm.umin.i64(i64 %i.ju, i64 576460752303423487)
  %i.jx = select i1 %i.jv, i64 576460752303423487, i64 %i.jw ; 3 uses
  %.not.i.i.i130 = icmp ne i64 %i.jx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i130)
  %i.jy = shl nuw nsw i64 %i.jx, 4
  %i.jz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #11
          to label %.noexc135 unwind label %.loopexit ; 4 uses

.noexc135:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.jr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull align 16 dereferenceable(16) %i.jj, i64 16, i1 false), !tbaa.struct !23
  %i.kb = icmp sgt i64 %i.jr, 0
  br i1 %i.kb, label %bb.am, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

bb.am:                                            ; preds = %.noexc135
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jz, ptr align 8 %i.ji, i64 %i.jr, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131: ; preds = %bb.am, %.noexc135
  %.not.i17.i.i132 = icmp eq ptr %i.ji, null
  br i1 %.not.i17.i.i132, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jr) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133: ; preds = %bb.an, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.jz, i64 %i.jx
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, %bb.aj
  %i.kd = phi ptr [ %i.kc, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133 ], [ %i.jg, %bb.aj ]
  %.pn168 = phi ptr [ %i.ka, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133 ], [ %i.jh, %bb.aj ]
  %i.ke = phi ptr [ %i.jz, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133 ], [ %i.ji, %bb.aj ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.pn168, i64 16
  %i.kg = xor i8 %.1101148, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ah, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136
  %i.kh = phi ptr [ %i.kd, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jg, %bb.ah ] ; 3 uses
  %i.ki = phi ptr [ %i.kf, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jh, %bb.ah ] ; 4 uses
  %i.kj = phi ptr [ %i.ke, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.ji, %bb.ah ] ; 2 uses
  %.2102 = phi i8 [ %i.kg, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %.1101148, %bb.ah ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ah, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.ao
  store ptr %i.ki, ptr %i.cl, align 8
  store ptr %i.kh, ptr %i.cm, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge, %bb.ag
  %i.kk = phi ptr [ %i.ki, %._crit_edge ], [ %i.co, %bb.ag ] ; 5 uses
  %.promoted157194 = phi ptr [ %i.kh, %._crit_edge ], [ %.promoted157, %bb.ag ]
  %.promoted151189 = phi ptr [ %i.ki, %._crit_edge ], [ %.promoted151, %bb.ag ]
  %i.kl = phi ptr [ %i.kj, %._crit_edge ], [ %.promoted, %bb.ag ] ; 3 uses
  %.1101.lcssa = phi i8 [ %.2102, %._crit_edge ], [ %.0100163, %bb.ag ] ; 4 uses
  store ptr %i.kl, ptr %6, align 8
  %i.km = fcmp ogt float %i.fk, %i.di
  %i.kn = select i1 %i.km, float %i.fk, float %i.di
  %i.ko = insertelement <2 x float> poison, float %i.di, i64 0
  %i.kp = insertelement <2 x float> %i.ko, float %i.kn, i64 1 ; 2 uses
  %i.kq = fcmp ogt <2 x float> %i.kp, %i.dr
  %i.kr = select <2 x i1> %i.kq, <2 x float> %i.dr, <2 x float> %i.kp ; 2 uses
  %i.ks = extractelement <2 x float> %i.kr, i64 0 ; 2 uses
  %i.kt = extractelement <2 x float> %i.kr, i64 1 ; 2 uses
  %i.ku = fcmp olt float %i.ks, %i.kt
  %i.kv = select i1 %i.ku, float %i.kt, float %i.ks ; 2 uses
  %i.kw = fcmp ogt float %i.kv, 5.000000e-01
  %i.kx = trunc nuw i8 %.1101.lcssa to i1
  %i.ky = xor i1 %i.kw, %i.kx
  %i.kz = fcmp une float %i.kv, 5.000000e-01
  %or.cond3 = and i1 %i.kz, %i.ky
  br i1 %or.cond3, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.la = icmp eq ptr %i.kl, %i.kk
  br i1 %i.la, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lb = getelementptr inbounds i8, ptr %i.kk, i64 -16 ; 3 uses
  store ptr %i.lb, ptr %i.cl, align 8, !tbaa !24
  %i.lc = xor i8 %.1101.lcssa, 1
  br label %bb.as

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jh, ptr %i.cl, align 8
  store ptr %i.jg, ptr %i.cm, align 8
  store ptr %i.ji, ptr %6, align 8
  br label %bb.at

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ld = phi ptr [ %i.kk, %bb.aq ], [ %i.lb, %bb.ar ], [ %i.kk, %bb.ap ]
  %.promoted151191 = phi ptr [ %i.kk, %bb.aq ], [ %i.lb, %bb.ar ], [ %.promoted151189, %bb.ap ]
  %.3103 = phi i8 [ %.1101.lcssa, %bb.aq ], [ %i.lc, %bb.ar ], [ %.1101.lcssa, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.le = add nuw nsw i32 %.099164, 1
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %i.lf = load i32, ptr %i.a, align 8, !tbaa !33
  %i.lg = sext i32 %i.lf to i64
  %i.lh = icmp slt i64 %indvars.iv.next183, %i.lg
  br i1 %i.lh, label %bb.j, label %._crit_edge167, !llvm.loop !43

bb.at:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.o
  %i.li = phi ptr [ %.promoted, %bb.o ], [ %i.ji, %.loopexit ], [ %i.ji, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.ax

bb.au:                                            ; preds = %._crit_edge167
  %i.lj = load ptr, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !17
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.lo) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit
  ret void

bb.ax:                                            ; preds = %bb.at, %bb.i
  %i.lp = phi ptr [ %i.li, %bb.at ], [ %.pre, %bb.i ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.at ], [ %i.cf, %bb.i ]
  %.not.i.i.i139 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !17
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lp to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %i.lp, i64 noundef %i.lu) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
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
  %i.k = load i32, ptr %i.a, align 8, !tbaa !12
  %i.l = sitofp i32 %i.k to double
  %i.m = fadd double %i.l, -5.000000e-01
  %i.n = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.m) ; 2 uses
  %i.o = fsub double %i.n, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
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
end_hunk_2
