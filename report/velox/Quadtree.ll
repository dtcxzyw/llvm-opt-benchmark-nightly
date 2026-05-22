inline.NumInlined: 97
inline.NumDeleted: 73
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN4geos5index8quadtree8QuadtreeD2Ev = comdat any

$_ZN4geos5index8quadtree8QuadtreeD0Ev = comdat any

$_ZN4geos5index8quadtree8Quadtree5queryEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE = comdat any

$_ZTIN4geos5index12SpatialIndexE = comdat any

$_ZTSN4geos5index12SpatialIndexE = comdat any

@_ZTVN4geos5index8quadtree8QuadtreeE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN4geos5index8quadtree8QuadtreeE, ptr @_ZN4geos5index8quadtree8QuadtreeD2Ev, ptr @_ZN4geos5index8quadtree8QuadtreeD0Ev, ptr @_ZN4geos5index8quadtree8Quadtree6insertEPKNS_4geom8EnvelopeEPv, ptr @_ZN4geos5index8quadtree8Quadtree5queryEPKNS_4geom8EnvelopeERSt6vectorIPvSaIS8_EE, ptr @_ZN4geos5index8quadtree8Quadtree5queryEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE, ptr @_ZN4geos5index8quadtree8Quadtree6removeEPKNS_4geom8EnvelopeEPv] }, align 8
@_ZTIN4geos5index8quadtree8QuadtreeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos5index8quadtree8QuadtreeE, ptr @_ZTIN4geos5index12SpatialIndexE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos5index8quadtree8QuadtreeE = constant [32 x i8] c"N4geos5index8quadtree8QuadtreeE\00", align 1
@_ZTIN4geos5index12SpatialIndexE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos5index12SpatialIndexE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4geos5index12SpatialIndexE = linkonce_odr constant [28 x i8] c"N4geos5index12SpatialIndexE\00", comdat, align 1
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd(ptr noundef readonly captures(ret: address, provenance) %0, double noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !7 ; 4 uses
  %i.c = load <4 x double>, ptr %0, align 8, !tbaa !7 ; 2 uses
  %i.d = shufflevector <4 x double> %i.c, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 4 uses
  %2 = fcmp une <2 x double> %i.b, %i.d           ; 2 uses
  %shift = shufflevector <2 x i1> %2, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = and <2 x i1> %2, %shift
  %or.cond = extractelement <2 x i1> %foldExtExtBinop, i64 0
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq <2 x double> %i.b, %i.d         ; 3 uses
  %i.f = fmul double %1, 5.000000e-01
  %i.g = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 2 uses
  %i.h = shufflevector <2 x double> %i.d, <2 x double> %i.b, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.i = insertelement <2 x double> poison, double %i.f, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.k = fsub <2 x double> %i.h, %i.j             ; 3 uses
  %i.l = fadd <2 x double> %i.j, %i.k             ; 2 uses
  %i.m = select <2 x i1> %i.e, <2 x double> %i.k, <2 x double> %i.h ; 2 uses
  %i.n = shufflevector <2 x double> %i.b, <2 x double> %i.d, <2 x i32> <i32 0, i32 3>
  %i.o = select <2 x i1> %i.e, <2 x double> %i.l, <2 x double> %i.n ; 2 uses
  %i.p = shufflevector <2 x i1> %i.e, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.q = shufflevector <2 x double> %i.k, <2 x double> %i.l, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.r = select <4 x i1> %i.p, <4 x double> %i.q, <4 x double> %i.c
  %i.s = fcmp olt <2 x double> %i.m, %i.o
  %i.t = shufflevector <2 x i1> %i.s, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.u = shufflevector <2 x double> %i.o, <2 x double> %i.m, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.v = select <4 x i1> %i.t, <4 x double> %i.r, <4 x double> %i.u
  store <4 x double> %i.v, ptr %i.g, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.g, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, 4294967296) i64 @_ZN4geos5index8quadtree8Quadtree5depthEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i32 @_ZNK4geos5index8quadtree8NodeBase5depthEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

declare noundef i32 @_ZNK4geos5index8quadtree8NodeBase5depthEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN4geos5index8quadtree8Quadtree4sizeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZNK4geos5index8quadtree8NodeBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  ret i64 %i.b
}

declare noundef i64 @_ZNK4geos5index8quadtree8NodeBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index8quadtree8Quadtree6insertEPKNS_4geom8EnvelopeEPv(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x double>, ptr %1, align 8       ; 4 uses
  %i.c = load double, ptr %i.a, align 8, !tbaa !9 ; 3 uses
  %i.d = fcmp uno double %i.c, 0.000000e+00       ; 2 uses
  %i.e = extractelement <2 x double> %i.b, i64 0  ; 2 uses
  %i.f = fsub double %i.c, %i.e
  %.0.i.i = select i1 %i.d, double 0.000000e+00, double %i.f ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !11 ; 2 uses
  %i.i = fcmp olt double %.0.i.i, %i.h
  %i.j = fcmp ogt double %.0.i.i, 0.000000e+00
  %or.cond.i = and i1 %i.i, %i.j
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %.0.i.i, ptr %i.g, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi double [ %.0.i.i, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load <2 x double>, ptr %i.m, align 8     ; 4 uses
  %i.o = load double, ptr %i.l, align 8           ; 2 uses
  %i.p = extractelement <2 x double> %i.n, i64 0  ; 2 uses
  %i.q = fsub double %i.o, %i.p
  %.0.i13.i = select i1 %i.d, double 0.000000e+00, double %i.q ; 4 uses
  %i.r = fcmp olt double %.0.i13.i, %i.k
  %i.s = fcmp ogt double %.0.i13.i, 0.000000e+00
  %or.cond3.i = and i1 %i.r, %i.s
  br i1 %or.cond3.i, label %bb.d, label %_ZN4geos5index8quadtree8Quadtree12collectStatsERKNS_4geom8EnvelopeE.exit

bb.d:                                             ; preds = %bb.c
  store double %.0.i13.i, ptr %i.g, align 8, !tbaa !11
  br label %_ZN4geos5index8quadtree8Quadtree12collectStatsERKNS_4geom8EnvelopeE.exit

_ZN4geos5index8quadtree8Quadtree12collectStatsERKNS_4geom8EnvelopeE.exit: ; preds = %bb.c, %bb.d
  %i.t = phi double [ %i.k, %bb.c ], [ %.0.i13.i, %bb.d ]
  %i.u = fcmp une double %i.e, %i.c
  %i.v = fcmp une double %i.p, %i.o
  %or.cond.i5 = and i1 %i.u, %i.v
  br i1 %or.cond.i5, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEEvDpOT_.exit, label %_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit

_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit: ; preds = %_ZN4geos5index8quadtree8Quadtree12collectStatsERKNS_4geom8EnvelopeE.exit
  %i.w = shufflevector <2 x double> %i.b, <2 x double> %i.n, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.x = shufflevector <2 x double> %i.b, <2 x double> %i.n, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.y = fcmp oeq <2 x double> %i.w, %i.x         ; 3 uses
  %i.z = fmul double %i.t, 5.000000e-01
  %i.aa = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 7 uses
  %i.ab = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = fsub <2 x double> %i.w, %i.ac           ; 3 uses
  %i.ae = fadd <2 x double> %i.ac, %i.ad          ; 2 uses
  %i.af = select <2 x i1> %i.y, <2 x double> %i.ad, <2 x double> %i.w ; 2 uses
  %i.ag = select <2 x i1> %i.y, <2 x double> %i.ae, <2 x double> %i.x ; 2 uses
  %i.ah = shufflevector <2 x i1> %i.y, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ai = shufflevector <2 x double> %i.ad, <2 x double> %i.ae, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aj = shufflevector <2 x double> %i.b, <2 x double> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ak = select <4 x i1> %i.ah, <4 x double> %i.ai, <4 x double> %i.aj
  %i.al = fcmp olt <2 x double> %i.af, %i.ag
  %i.am = shufflevector <2 x i1> %i.al, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.an = shufflevector <2 x double> %i.ag, <2 x double> %i.af, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ao = select <4 x i1> %i.am, <4 x double> %i.ak, <4 x double> %i.an
  store <4 x double> %i.ao, ptr %i.aa, align 8, !tbaa !7
  %.not = icmp eq ptr %i.aa, %1
  br i1 %.not, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEEvDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.aa, ptr %i.ar, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !28
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEEvDpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 12 uses
  %i.aw = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #12 ; 12 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store ptr %i.aa, ptr %i.bh, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.av, %i.ar
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = add i64 %i.aw, -8
  %i.bj = sub i64 %i.bi, %i.ax                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bj, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bm = add i64 %i.aw, -8
  %i.bn = sub i64 %i.bm, %i.ax
  %i.bo = and i64 %i.bn, -8
  %i.bp = add i64 %i.bo, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bg, i64 %i.bp
  %scevgep15 = getelementptr i8, ptr %i.av, i64 %i.bp
  %bound0 = icmp ult ptr %i.bg, %scevgep15
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check16 = icmp ult i64 %i.bj, 120
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bl, 12
  %n.vec = and i64 %i.bl, 4611686018427387888     ; 4 uses
  %i.bq = shl i64 %n.vec, 3                       ; 2 uses
  %i.br = getelementptr i8, ptr %i.bg, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.av, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.bt ; 4 uses
  %next.gep17 = getelementptr i8, ptr %i.av, i64 %i.bt ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.bu = getelementptr i8, ptr %next.gep17, i64 32
  %i.bv = getelementptr i8, ptr %next.gep17, i64 64
  %i.bw = getelementptr i8, ptr %next.gep17, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep17, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  %wide.load18 = load <4 x i64>, ptr %i.bu, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  %wide.load19 = load <4 x i64>, ptr %i.bv, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  %wide.load20 = load <4 x i64>, ptr %i.bw, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  %i.bx = getelementptr i8, ptr %next.gep, i64 32
  %i.by = getelementptr i8, ptr %next.gep, i64 64
  %i.bz = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !30, !alias.scope !41, !noalias !38
  store <4 x i64> %wide.load18, ptr %i.bx, align 8, !tbaa !30, !alias.scope !41, !noalias !38
  store <4 x i64> %wide.load19, ptr %i.by, align 8, !tbaa !30, !alias.scope !41, !noalias !38
  store <4 x i64> %wide.load20, ptr %i.bz, align 8, !tbaa !30, !alias.scope !41, !noalias !38
  %i.ca = getelementptr i8, ptr %next.gep17, i64 32
  %i.cb = getelementptr i8, ptr %next.gep17, i64 64
  %i.cc = getelementptr i8, ptr %next.gep17, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  store <4 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  store <4 x ptr> splat (ptr null), ptr %i.cb, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  store <4 x ptr> splat (ptr null), ptr %i.cc, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.bl, 4611686018427387900   ; 3 uses
  %i.ce = shl i64 %n.vec23, 3                     ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bg, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.av, i64 %i.ce
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 2 uses
  %i.ch = shl i64 %index24, 3                     ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.bg, i64 %i.ch
  %next.gep26 = getelementptr i8, ptr %i.av, i64 %i.ch ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %wide.load27 = load <4 x i64>, ptr %next.gep26, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  store <4 x i64> %wide.load27, ptr %next.gep25, align 8, !tbaa !30, !alias.scope !41, !noalias !38
  store <4 x ptr> splat (ptr null), ptr %next.gep26, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  %index.next28 = add nuw i64 %index24, 4         ; 2 uses
  %i.ci = icmp eq i64 %index.next28, %n.vec23
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %i.bl, %n.vec23
  br i1 %cmp.n29, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bg, %vector.memcheck ], [ %i.br, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.av, %iter.check ], [ %i.av, %vector.memcheck ], [ %i.bs, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !30, !alias.scope !36, !noalias !33
  store i64 %i.cj, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !30, !alias.scope !33, !noalias !36
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !30, !alias.scope !36, !noalias !33
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.ar
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cf, %vec.epilog.middle.block ], [ %i.br, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.av) #14
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.bg, ptr %i.ap, align 8, !tbaa !32
  store ptr %i.cm, ptr %i.aq, align 8, !tbaa !28
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.cn, ptr %i.as, align 8, !tbaa !29
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEEvDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEEvDpOT_.exit: ; preds = %_ZN4geos5index8quadtree8Quadtree12collectStatsERKNS_4geom8EnvelopeE.exit, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.f, %_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit
  %.0.i10 = phi ptr [ %i.aa, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %i.aa, %_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit ], [ %i.aa, %bb.f ], [ %1, %_ZN4geos5index8quadtree8Quadtree12collectStatsERKNS_4geom8EnvelopeE.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4geos5index8quadtree4Root6insertEPKNS_4geom8EnvelopeEPv(ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr noundef nonnull %.0.i10, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos5index8quadtree8Quadtree12collectStatsERKNS_4geom8EnvelopeE(ptr noundef nonnull align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !9 ; 2 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00       ; 2 uses
  %i.d = load double, ptr %1, align 8
  %i.e = fsub double %i.b, %i.d
  %.0.i = select i1 %i.c, double 0.000000e+00, double %i.e ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %i.h = fcmp olt double %.0.i, %i.g
  %i.i = fcmp ogt double %.0.i, 0.000000e+00
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %.0.i, ptr %i.f, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi double [ %.0.i, %bb.b ], [ %i.g, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load double, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load double, ptr %i.m, align 8
  %i.o = fsub double %i.l, %i.n
  %.0.i13 = select i1 %i.c, double 0.000000e+00, double %i.o ; 3 uses
  %i.p = fcmp olt double %.0.i13, %i.j
  %i.q = fcmp ogt double %.0.i13, 0.000000e+00
  %or.cond3 = and i1 %i.p, %i.q
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %.0.i13, ptr %i.f, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN4geos5index8quadtree4Root6insertEPKNS_4geom8EnvelopeEPv(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index8quadtree8Quadtree5queryEPKNS_4geom8EnvelopeERSt6vectorIPvSaIS8_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNK4geos5index8quadtree8NodeBase26addAllItemsFromOverlappingERKNS_4geom8EnvelopeERSt6vectorIPvSaIS8_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

declare void @_ZNK4geos5index8quadtree8NodeBase26addAllItemsFromOverlappingERKNS_4geom8EnvelopeERSt6vectorIPvSaIS8_EE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN4geos5index8quadtree8Quadtree8queryAllEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4geos5index8quadtree8NodeBase11addAllItemsERSt6vectorIPvSaIS4_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4geos5index8quadtree8NodeBase11addAllItemsERSt6vectorIPvSaIS4_EE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos5index8quadtree8Quadtree6removeEPKNS_4geom8EnvelopeEPv(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !7 ; 4 uses
  %i.c = load <4 x double>, ptr %1, align 8, !tbaa !7 ; 2 uses
  %i.d = shufflevector <4 x double> %i.c, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 4 uses
  %3 = fcmp une <2 x double> %i.b, %i.d           ; 2 uses
  %shift = shufflevector <2 x i1> %3, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = and <2 x i1> %3, %shift
  %or.cond.i = extractelement <2 x i1> %foldExtExtBinop, i64 0
  br i1 %or.cond.i, label %_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit.thread, label %_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit

_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call noundef zeroext i1 @_ZN4geos5index8quadtree8NodeBase6removeEPKNS_4geom8EnvelopeEPv(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.c

_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load double, ptr %i.g, align 8, !tbaa !11
  %i.i = fcmp oeq <2 x double> %i.b, %i.d         ; 3 uses
  %i.j = fmul double %i.h, 5.000000e-01
  %i.k = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12 ; 4 uses
  %i.l = shufflevector <2 x double> %i.d, <2 x double> %i.b, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.j, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.o = fsub <2 x double> %i.l, %i.n             ; 3 uses
  %i.p = fadd <2 x double> %i.n, %i.o             ; 2 uses
  %i.q = select <2 x i1> %i.i, <2 x double> %i.o, <2 x double> %i.l ; 2 uses
  %i.r = shufflevector <2 x double> %i.b, <2 x double> %i.d, <2 x i32> <i32 0, i32 3>
  %i.s = select <2 x i1> %i.i, <2 x double> %i.p, <2 x double> %i.r ; 2 uses
  %i.t = shufflevector <2 x i1> %i.i, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.u = shufflevector <2 x double> %i.o, <2 x double> %i.p, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.v = select <4 x i1> %i.t, <4 x double> %i.u, <4 x double> %i.c
  %i.w = fcmp olt <2 x double> %i.q, %i.s
  %i.x = shufflevector <2 x i1> %i.w, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.y = shufflevector <2 x double> %i.s, <2 x double> %i.q, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.z = select <4 x i1> %i.x, <4 x double> %i.v, <4 x double> %i.y
  store <4 x double> %i.z, ptr %i.k, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = tail call noundef zeroext i1 @_ZN4geos5index8quadtree8NodeBase6removeEPKNS_4geom8EnvelopeEPv(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull %i.k, ptr noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.k, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #14
  br label %bb.c

bb.c:                                             ; preds = %_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit.thread, %bb.b, %_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit
  %i.ac = phi i1 [ %i.f, %_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit.thread ], [ %i.ab, %bb.b ], [ %i.ab, %_ZN4geos5index8quadtree8Quadtree12ensureExtentEPKNS_4geom8EnvelopeEd.exit ]
  ret i1 %i.ac
}

declare noundef zeroext i1 @_ZN4geos5index8quadtree8NodeBase6removeEPKNS_4geom8EnvelopeEPv(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos5index8quadtree8Quadtree8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZNK4geos5index8quadtree8NodeBase8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  ret void
}

declare void @_ZNK4geos5index8quadtree8NodeBase8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos5index8quadtree8QuadtreeD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4geos5index8quadtree8QuadtreeE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4geos5index8quadtree8NodeBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #14
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.h = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.c, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #14
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos5index8quadtree8QuadtreeD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4geos5index8quadtree8QuadtreeE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4geos5index8quadtree8NodeBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #15, !inline_history !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #14, !inline_history !53
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZN4geos5index8quadtree8QuadtreeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #14, !inline_history !53
  br label %_ZN4geos5index8quadtree8QuadtreeD2Ev.exit

_ZN4geos5index8quadtree8QuadtreeD2Ev.exit:        ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos5index8quadtree8Quadtree5queryEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4geos5index8quadtree8NodeBase5visitEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %1, ptr noundef nonnull align 1 %2)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4geos5index8quadtree8NodeBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #7

declare void @_ZN4geos5index8quadtree8NodeBase5visitEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 1) unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
end_hunk_0
