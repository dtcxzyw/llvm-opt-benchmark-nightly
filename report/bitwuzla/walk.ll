Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/walk?download=true
inline.NumInlined: 365
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.CaDiCaL::Terminal" = type <{ ptr, i8, i8, i8, [5 x i8] }>
%"struct.CaDiCaL::Walker" = type { ptr, %"class.CaDiCaL::Random", i64, i64, %"class.std::vector", double, %"class.std::vector.0", %"class.std::vector.0" }
%"class.CaDiCaL::Random" = type { i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Vector_impl" }
%"struct.std::_Vector_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Vector_impl" = type { %"struct.std::_Vector_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN7CaDiCaL6WalkerD2Ev = comdat any

$_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm = comdat any

@.str = private unnamed_addr constant [5 x i8] c"walk\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"CB %.2f with inverse %.2f as base and table size %zd\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"random walk limit of %ld propagations\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%ld clauses average size %.2f over %d variables\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"starting with %ld unsatisfied clauses (%.0f%% out of %ld)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"new phase minimum %ld after %ld flips\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"%snew global minimum %ld%s in %ld flips and %ld propagations\00", align 1
@_ZN7CaDiCaL4toutE = external local_unnamed_addr global %"class.CaDiCaL::Terminal", align 8
@.str.7 = private unnamed_addr constant [57 x i8] c"best phase minimum %ld in %ld flips and %ld propagations\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"%.2f million propagations per second\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"%.2f thousand flips per second\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"aborted due to inconsistent assumptions\00", align 1
@_ZN7CaDiCaLL6cbvalsE = internal unnamed_addr constant [6 x [2 x double]] [[2 x double] [double 0.000000e+00, double 2.000000e+00], [2 x double] [double 3.000000e+00, double 2.500000e+00], [2 x double] [double 4.000000e+00, double 2.850000e+00], [2 x double] [double 5.000000e+00, double 3.700000e+00], [2 x double] [double 6.000000e+00, double 5.100000e+00], [2 x double] [double 7.000000e+00, double 7.400000e+00]], align 16
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"new global minimum %ld\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"\1B[1;33m\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN7CaDiCaL6WalkerC1EPNS_8InternalEdl = unnamed_addr alias void (ptr, ptr, double, i64), ptr @_ZN7CaDiCaL6WalkerC2EPNS_8InternalEdl

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL6WalkerC2EPNS_8InternalEdl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) initializes((0, 112)) %0, ptr noundef %1, double noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3708
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !159
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.f, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  %i.k = load i64, ptr %i.j, align 8, !tbaa !161  ; 2 uses
  %i.l = add i64 %i.k, %i.d
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = mul i64 %spec.select.i.i, 6364136223846793005
  %i.n = add i64 %i.m, 1442695040888963407
  store i64 %i.n, ptr %i.a, align 8, !tbaa !162
  %i.o = and i64 %i.k, 1
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = fcmp olt double %2, 0.000000e+00
  %i.q = fcmp ogt double %2, 3.000000e+00
  %or.cond.i = or i1 %i.p, %i.q
  br i1 %or.cond.i, label %.critedge2.i, label %_ZN7CaDiCaLL8fitcbvalEd.exit

.critedge2.i:                                     ; preds = %bb.b
  %i.r = fcmp olt double %2, 3.000000e+00
  %i.s = fcmp ogt double %2, 4.000000e+00
  %or.cond24.i = or i1 %i.r, %i.s
  br i1 %or.cond24.i, label %.critedge2.1.i, label %_ZN7CaDiCaLL8fitcbvalEd.exit

.critedge2.1.i:                                   ; preds = %.critedge2.i
  %i.t = fcmp olt double %2, 4.000000e+00
  %i.u = fcmp ogt double %2, 5.000000e+00
  %or.cond25.i = or i1 %i.t, %i.u
  br i1 %or.cond25.i, label %.critedge2.2.i, label %_ZN7CaDiCaLL8fitcbvalEd.exit

.critedge2.2.i:                                   ; preds = %.critedge2.1.i
  %i.v = fcmp olt double %2, 5.000000e+00
  %i.w = fcmp ogt double %2, 6.000000e+00
  %or.cond26.i = or i1 %i.v, %i.w
  %spec.select.i = select i1 %or.cond26.i, i64 4, i64 3
  br label %_ZN7CaDiCaLL8fitcbvalEd.exit

_ZN7CaDiCaLL8fitcbvalEd.exit:                     ; preds = %bb.b, %.critedge2.i, %.critedge2.1.i, %.critedge2.2.i
  %.0.lcssa.i = phi i64 [ 2, %.critedge2.1.i ], [ 0, %bb.b ], [ 1, %.critedge2.i ], [ %spec.select.i, %.critedge2.2.i ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr @_ZN7CaDiCaLL6cbvalsE, i64 %.0.lcssa.i ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load double, ptr %i.y, align 16, !tbaa !163
  %i.aa = load double, ptr %i.x, align 16, !tbaa !163 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !163
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !163 ; 2 uses
  %i.af = fsub double %i.z, %i.aa
  %i.ag = fsub double %i.ac, %i.ae
  %i.ah = fsub double %2, %i.aa
  %i.ai = fmul double %i.ah, %i.ag
  %i.aj = fdiv double %i.ai, %i.af
  %i.ak = fadd double %i.ae, %i.aj
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN7CaDiCaLL8fitcbvalEd.exit
  %i.al = phi double [ %i.ak, %_ZN7CaDiCaLL8fitcbvalEd.exit ], [ 2.000000e+00, %bb.a ] ; 2 uses
  %i.am = fdiv double 1.000000e+00, %i.al         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !164
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %i.aq = phi ptr [ null, %bb.c ], [ %i.bj, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 5 uses
  %i.ar = phi ptr [ null, %bb.c ], [ %i.bk, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %i.as = phi ptr [ null, %bb.c ], [ %i.bl, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %.023 = phi double [ 1.000000e+00, %bb.c ], [ %i.bn, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 2 uses
  store double %.023, ptr %i.an, align 8, !tbaa !164
  %.not.i = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store double %.023, ptr %i.as, align 8, !tbaa !163
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !165
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.f:                                             ; preds = %bb.d
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 5 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.g, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #13
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #14
          to label %.noexc18 unwind label %.loopexit ; 5 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  %4 = load double, ptr %i.an, align 8, !tbaa !163
  store double %4, ptr %i.bf, align 8, !tbaa !163
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.h, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.aq, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aq) #15
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.be, ptr %i.h, align 8, !tbaa !166
  store ptr %i.bh, ptr %i.ao, align 8, !tbaa !165
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc ; 2 uses
  store ptr %i.bi, ptr %i.ap, align 8, !tbaa !167
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.e
  %i.bj = phi ptr [ %i.be, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.aq, %bb.e ] ; 2 uses
  %i.bk = phi ptr [ %i.bi, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.ar, %bb.e ]
  %i.bl = phi ptr [ %i.bh, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.at, %bb.e ] ; 2 uses
  %i.bm = load double, ptr %i.an, align 8, !tbaa !164
  %i.bn = fmul double %i.am, %i.bm                ; 2 uses
  %i.bo = fcmp une double %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.d, label %bb.k, !llvm.loop !168

.loopexit:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.l, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !166 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.n

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %i.bq = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %.not16 = icmp eq ptr %i.bq, null
  br i1 %.not16, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4440
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !161
  %i.bt = ptrtoint ptr %i.bl to i64
  %i.bu = ptrtoint ptr %i.bj to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.bq, ptr noundef nonnull @.str, i64 noundef %i.bs, ptr noundef nonnull @.str.1, double noundef %i.al, double noundef %i.am, i64 noundef %i.bw)
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void

bb.n:                                             ; preds = %bb.j
  tail call void @_ZdlPv(ptr noundef nonnull %i.bp) #15
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.j, %bb.n
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !166 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIdSaIdEED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.bx) #15
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit21

_ZNSt6vectorIdSaIdEED2Ev.exit21:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.o
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !170 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit21
  tail call void @_ZdlPv(ptr noundef nonnull %i.by) #15
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit21, %bb.p
  resume { ptr, i32 } %lpad.phi
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN7CaDiCaL8Internal16walk_pick_clauseERNS_6WalkerE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(7288) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.h, i64 2147483647)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = trunc i64 %spec.store.select to i32      ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !162
  %i.l = mul i64 %i.k, 6364136223846793005
  %i.m = add i64 %i.l, 1442695040888963407        ; 2 uses
  store i64 %i.m, ptr %i.i, align 8, !tbaa !162
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32                ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN7CaDiCaL6Random8pick_intEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = uitofp i32 %i.o to double
  %i.q = fmul nnan double %i.p, f0x3DF0000000000000
  %i.r = uitofp i32 %i.j to double
  %i.s = fmul double %i.q, %i.r
  %i.t = fptoui double %i.s to i32
  br label %_ZN7CaDiCaL6Random8pick_intEii.exit

_ZN7CaDiCaL6Random8pick_intEii.exit:              ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.t, %bb.b ], [ %i.o, %bb.a ]
  %i.u = sext i32 %.0.i to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !172
  ret ptr %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN7CaDiCaL8Internal16walk_break_valueEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.b = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.c = tail call noundef i32 @llvm.fshl.i32(i32 %i.b, i32 %1, i32 1)
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !174  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174  ; 2 uses
  %.not4955 = icmp eq ptr %i.g, %i.i
  br i1 %.not4955, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !176  ; 2 uses
  br label %bb.b

._crit_edge60:                                    ; preds = %bb.g, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %bb.g ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph59, %bb.g
  %.057 = phi i32 [ 0, %.lr.ph59 ], [ %.2, %bb.g ] ; 4 uses
  %.sroa.045.056 = phi ptr [ %i.g, %.lr.ph59 ], [ %i.at, %bb.g ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.045.056, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !177
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !179
  %i.q = icmp sgt i8 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.045.056, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !180
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = add i32 %.057, 1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %.sroa.045.056, align 8, !tbaa !181 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 3 uses
  %.ptr44 = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !182  ; 3 uses
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %.idx = shl nsw i64 %i.z, 2                     ; 4 uses
  %.not70 = icmp eq i32 %i.y, 1
  br i1 %.not70, label %.preheader, label %.lr.ph74

bb.f:                                             ; preds = %.lr.ph74
  %.not = icmp eq i64 %.036.add, %.idx
  br i1 %.not, label %.preheader, label %.lr.ph74, !llvm.loop !183
end_hunk_0
