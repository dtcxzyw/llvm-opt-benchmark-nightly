Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/energyterm?download=true
inline.NumInlined: 325
inline.NumDeleted: 194
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gmx::EnumerationArray" = type { [95 x %struct.t_interaction_function] }
%struct.t_interaction_function = type { ptr, ptr, i32, i32, i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf = comdat any

@interaction_function = external local_unnamed_addr global %"struct.gmx::EnumerationArray", align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [50 x i8] c"WARNING: frame %s out of range (0 <= frame < %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"WARNING: energy frames not stored.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"i == numFrames()\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Number of steps in drift() is too large\00", align 1
@"__PRETTY_FUNCTION__._ZZNK3gmx10EnergyTerm16slopeOfLinearFitEvENK3$_0clEv" = private unnamed_addr constant [71 x i8] c"auto gmx::EnergyTerm::slopeOfLinearFit()::(lambda)::operator()() const\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/energyanalysis/energyterm.cpp\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

@_ZN3gmx10EnergyTermC1EjbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ = unnamed_addr alias void (ptr, i32, i1, ptr, ptr), ptr @_ZN3gmx10EnergyTermC2EjbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx10EnergyTermC2EjbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(177) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !44
  %i.e = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 %i.g, ptr %i.c, align 8, !tbaa !13
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !45
  %i.j = load i64, ptr %i.c, align 8, !tbaa !13
  store i64 %i.j, ptr %i.d, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !47
  store i8 %i.l, ptr %i.k, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !46
  %i.o = load ptr, ptr %0, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !44
  %i.s = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 %i.u, ptr %i.b, align 8, !tbaa !13
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i32, label %._crit_edge.i.i31

.noexc.i32:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i32
  store ptr %i.w, ptr %i.q, align 8, !tbaa !45
  %i.x = load i64, ptr %i.b, align 8, !tbaa !13
  store i64 %i.x, ptr %i.r, align 8, !tbaa !47
  br label %._crit_edge.i.i31

._crit_edge.i.i31:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i31
  %i.z = load i8, ptr %i.s, align 1, !tbaa !47
  store i8 %i.z, ptr %i.y, align 1, !tbaa !47
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i31
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !46
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ae = zext i1 %2 to i8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store i32 %1, ptr %i.ag, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ah, i8 0, i64 33, i1 false)
  store i8 %i.ae, ptr %i.ai, align 1, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.aj, i8 0, i64 41, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %.critedge30
  ret void

bb.h:                                             ; preds = %.noexc.i32
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.i:                                             ; preds = %bb.f, %.critedge30
  %indvars.iv = phi i64 [ 0, %bb.f ], [ %indvars.iv.next, %.critedge30 ] ; 2 uses
  %i.ao = load i8, ptr %i.ak, align 8, !tbaa !49, !range !23, !noundef !24
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.a, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !51 ; 4 uses
  store ptr %i.al, ptr %5, align 8, !tbaa !44
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #15
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.au = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.au, ptr %i.a, align 8, !tbaa !13
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc.i35, label %._crit_edge.i.i34

.noexc.i35:                                       ; preds = %bb.l
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc37:                                         ; preds = %.noexc.i35
  store ptr %i.aw, ptr %5, align 8, !tbaa !45
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.ax, ptr %i.al, align 8, !tbaa !47
  br label %._crit_edge.i.i34

._crit_edge.i.i34:                                ; preds = %.noexc37, %bb.l
  %i.ay = phi ptr [ %i.aw, %.noexc37 ], [ %i.al, %bb.l ] ; 2 uses
  switch i64 %i.au, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i34
  %i.az = load i8, ptr %i.as, align 1, !tbaa !47
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !47
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr nonnull align 1 %i.as, i64 %i.au, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i34
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  store i64 %i.ba, ptr %i.am, align 8, !tbaa !46
  %i.bb = load ptr, ptr %5, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  store i8 0, ptr %i.bc, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.bd = invoke noundef zeroext i1 @_ZN3gmx15equalIgnoreDashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = zext i1 %i.bd to i8
  store i8 %i.be, ptr %i.ak, align 8, !tbaa !49
  %i.bf = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.al
  br i1 %i.bg, label %.critedge28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bh = load i64, ptr %i.al, align 8, !tbaa !47
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #16
  br label %.critedge28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.a: ; preds = %bb.i
  store i8 1, ptr %i.ak, align 8, !tbaa !49
  br label %.critedge30

.critedge28:                                      ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.critedge30

.critedge30:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.a, %.critedge28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 82
  br i1 %exitcond.not, label %bb.g, label %bb.i, !llvm.loop !43

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i35, %bb.k
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.q:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.al
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.q
  %i.bm = load i64, ptr %i.al, align 8, !tbaa !47
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.q, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  %.pn = phi { ptr, i32 } [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %lpad.loopexit.split-lp61, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bj, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !27
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #16
  br label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.r
  %i.bu = load ptr, ptr %i.q, align 8, !tbaa !45  ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.r
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EED2Ev.exit
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !47
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.pn, %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EED2Ev.exit ]
  %i.by = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.d
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.ca = load i64, ptr %i.d, align 8, !tbaa !47
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  resume { ptr, i32 } %.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN3gmx15equalIgnoreDashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx10EnergyTerm8addFrameEdliddd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(177) %0, double noundef %1, i64 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !56, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %1, ptr %i.d, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.e, align 8, !tbaa !58
  store i8 1, ptr %i.a, align 8, !tbaa !56
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %1, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %2, ptr %i.g, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22, !range !23, !noundef !24
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12emplace_backIJRdRlS5_RiS5_S5_EEERS1_DpOT_.exit

bb.e:                                             ; preds = %bb.d
  %spec.select = tail call i32 @llvm.umax.i32(i32 %3, i32 1) ; 5 uses
  %i.k = fcmp oeq double %5, 0.000000e+00
  %i.l = sitofp i32 %spec.select to double
  %i.m = fmul double %6, %i.l
  %.033 = select i1 %i.k, double %i.m, double %4  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double %1, ptr %i.p, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %2, ptr %i.s, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store double %6, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %spec.select, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store double %.033, ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store double %5, ptr %i.w, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.x, ptr %i.o, align 8, !tbaa !28
  br label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12emplace_backIJRdRlS5_RiS5_S5_EEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !26   ; 5 uses
  %i.z = ptrtoint ptr %i.p to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %bb.h, label %_ZNKSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #15
  unreachable

_ZNKSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.ad = sdiv exact i64 %i.ab, 48                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 192153584101141162)
  %i.ah = select i1 %i.af, i64 192153584101141162, i64 %i.ag ; 3 uses
  %.not.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ai = mul nuw nsw i64 %i.ah, 48
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #17 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab ; 6 uses
  store double %1, ptr %i.ak, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %2, ptr %i.al, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store double %6, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 %spec.select, ptr %i.an, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store double %.033, ptr %i.ao, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store double %5, ptr %i.ap, align 8, !tbaa !62
  %.not10.i.i.i.i = icmp eq ptr %i.y, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.aj, %_ZNKSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.y, %_ZNKSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i64 48, i1 false), !tbaa.struct !65, !alias.scope !66
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i, label %.lr.ph.i.i.i.i, !llvm.loop !55

_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aj, %_ZNKSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.ar, %.lr.ph.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48
  %.not.i38.i = icmp eq ptr %i.y, null
  br i1 %.not.i38.i, label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE17_M_realloc_insertIJRdRlS5_RiS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.av) #16
  br label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE17_M_realloc_insertIJRdRlS5_RiS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE17_M_realloc_insertIJRdRlS5_RiS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i, %bb.i
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !26
  store ptr %i.as, ptr %i.o, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.aw, ptr %i.q, align 8, !tbaa !27
  br label %_ZNSt6vectorIN3gmx19EnergyAnalysisFrameESaIS1_EE12emplace_backIJRdRlS5_RiS5_S5_EEERS1_DpOT_.exit
end_hunk_0
