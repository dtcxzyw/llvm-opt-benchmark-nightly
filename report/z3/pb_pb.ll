Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/pb_pb?download=true
inline.NumInlined: 233
inline.NumDeleted: 95
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%class.svector.11 = type { %class.vector.12 }
%class.vector.12 = type { ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

$_ZN2pb10constraintD2Ev = comdat any

$_ZN2pb3pbcD0Ev = comdat any

$_ZNK2pb3pbc8literalsEv = comdat any

$_ZN2pb3pbc4swapEjj = comdat any

$_ZNK2pb3pbc7get_litEj = comdat any

$_ZN2pb3pbc7set_litEjN3sat7literalE = comdat any

$_ZNK2pb10constraint18is_extended_binaryER7svectorIN3sat7literalEjE = comdat any

$_ZN2pb3pbc5set_kEj = comdat any

$_ZNK2pb3pbc9get_coeffEj = comdat any

$__clang_call_terminate = comdat any

$_ZN6vectorImLb0EjE13expand_vectorEv = comdat any

$_ZN6vectorIN3sat7literalELb0EjED2Ev = comdat any

$_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv = comdat any

$_ZTIN2pb10constraintE = comdat any

$_ZTSN2pb10constraintE = comdat any

@_ZTVN2pb3pbcE = hidden constant { [23 x ptr] } { [23 x ptr] [ptr null, ptr @_ZTIN2pb3pbcE, ptr @_ZN2pb10constraintD2Ev, ptr @_ZN2pb3pbcD0Ev, ptr @_ZN2pb3pbc11clear_watchERNS_16solver_interfaceE, ptr @_ZN2pb3pbc10init_watchERNS_16solver_interfaceE, ptr @_ZNK2pb3pbc4evalERK7svectorI5lbooljE, ptr @_ZNK2pb3pbc4evalERKNS_16solver_interfaceE, ptr @_ZNK2pb3pbc10is_blockedERN3sat10simplifierENS1_7literalE, ptr @_ZNK2pb3pbc25validate_unit_propagationERKNS_16solver_interfaceEN3sat7literalE, ptr @_ZNK2pb3pbc11is_watchingEN3sat7literalE, ptr @_ZNK2pb3pbc8literalsEv, ptr @_ZN2pb3pbc4swapEjj, ptr @_ZNK2pb3pbc7get_litEj, ptr @_ZN2pb3pbc7set_litEjN3sat7literalE, ptr @_ZN2pb3pbc6negateEv, ptr @_ZNK2pb10constraint18is_extended_binaryER7svectorIN3sat7literalEjE, ptr @_ZNK2pb3pbc10get_rewardERKNS_16solver_interfaceERN3sat16literal_occs_funE, ptr @_ZNK2pb3pbc7displayERSo, ptr @_ZNK2pb3pbc7displayERSoRKNS_16solver_interfaceEb, ptr @_ZNK2pb3pbc13init_use_listERN3sat12ext_use_listE, ptr @_ZN2pb3pbc5set_kEj, ptr @_ZNK2pb3pbc9get_coeffEj] }, align 8
@.str = private unnamed_addr constant [38 x i8] c"addition of pb coefficients overflows\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.1 = private unnamed_addr constant [44 x i8] c"/opt-bench/work/z3/z3/src/sat/smt/pb_pb.cpp\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to verify: w + m_wlits[i].first >= w\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to verify: w >= m_k && m_k > 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"Failed to verify: lit() == sat::null_literal || s.value(lit()) == l_true\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to verify: s.value(lit) == l_false\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"+ \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" >= \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" == \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"[watch: \00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c", slack: \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"@(\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"): \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c">= \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTIN2pb3pbcE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2pb3pbcE, ptr @_ZTIN2pb10constraintE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2pb3pbcE = hidden constant [10 x i8] c"N2pb3pbcE\00", align 1
@_ZTIN2pb10constraintE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2pb10constraintE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN2pb10constraintE = linkonce_odr hidden constant [18 x i8] c"N2pb10constraintE\00", comdat, align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Failed to verify: k < 4000000000\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"/opt-bench/work/z3/z3/src/sat/smt/pb_pb.h\00", align 1

@_ZN2pb3pbcC1EjN3sat7literalERK7svectorISt4pairIjS2_EjEj = hidden unnamed_addr alias void (ptr, i32, i32, ptr, i32), ptr @_ZN2pb3pbcC2EjN3sat7literalERK7svectorISt4pairIjS2_EjEj

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(76) ptr @_ZN2pb10constraint5to_pbEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(76) ptr @_ZNK2pb10constraint5to_pbEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2pb3pbcC2EjN3sat7literalERK7svectorISt4pairIjS2_EjEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) initializes((0, 13), (16, 36), (40, 49), (52, 57), (60, 76)) %0, i32 noundef %1, i32 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, i32 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !47     ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE4sizeEv.exit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9
  br label %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE4sizeEv.exit19

_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE4sizeEv.exit19: ; preds = %bb.a, %bb.b
  %.0.i18 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.e = zext i32 %.0.i18 to i64                  ; 7 uses
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.i, align 4, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -2, ptr %i.k, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.m, align 4, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i18, ptr %i.n, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.g, ptr %i.o, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.p, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %1, ptr %i.q, align 4, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.r, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %4, ptr %i.s, align 4, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN2pb3pbcE, i64 16), ptr %0, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.t, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.u, align 4, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.v, align 8, !tbaa !22
  %.not = icmp eq i32 %.0.i18, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE4sizeEv.exit19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 6 uses
  %min.iters.check = icmp ult i32 %.0.i18, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %pred.store.continue30, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %pred.store.continue30 ] ; 6 uses
  %5 = sub nsw i64 %i.e, %indvars.iv.ph
  %xtraiter = and i64 %5, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.ph ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.ph ; 3 uses
  %i.z = load i32, ptr %i.x, align 4, !tbaa !24
  store i32 %i.z, ptr %i.y, align 4, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !9
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !9
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !24
  %i.ae = icmp ugt i32 %i.ad, %4
  br i1 %i.ae, label %bb.c, label %scalar.ph.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %scalar.ph.prol
  store i32 %4, ptr %i.y, align 4, !tbaa !24
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.c, %scalar.ph.prol
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.af = add nsw i64 %i.e, -1
  %i.ag = icmp eq i64 %indvars.iv.ph, %i.af
  br i1 %i.ag, label %._crit_edge, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ah = shl nuw nsw i64 %i.e, 3                 ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 76
  %i.ak = getelementptr i8, ptr %i.a, i64 %i.ah
  %bound0 = icmp ult ptr %i.w, %i.ak
  %bound1 = icmp ult ptr %i.a, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %i.e, -2
  %n.vec = add nsw i64 %.neg, %i.e                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue30, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue30 ] ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.al, align 4, !tbaa !24, !alias.scope !56 ; 2 uses
  %strided.vec27 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  store <4 x i32> %wide.vec, ptr %i.am, align 4, !tbaa !9, !alias.scope !57, !noalias !56
  %i.an = icmp ugt <2 x i32> %strided.vec27, %broadcast.splat ; 2 uses
  %i.ao = extractelement <2 x i1> %i.an, i64 0
  br i1 %i.ao, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 %4, ptr %i.am, align 4, !tbaa !24, !alias.scope !57, !noalias !56
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ap = extractelement <2 x i1> %i.an, i64 1
  br i1 %i.ap, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 %4, ptr %i.ar, align 4, !tbaa !24, !alias.scope !57, !noalias !56
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %scalar.ph.preheader, label %vector.body, !llvm.loop !43

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %bb.f, %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE4sizeEv.exit19
  tail call void @_ZN2pb3pbc14update_max_sumEv(ptr noundef nonnull align 8 dereferenceable(76) %0)
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.f ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv ; 3 uses
  %i.av = load i32, ptr %i.at, align 4, !tbaa !24
  store i32 %i.av, ptr %i.au, align 4, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !9
  store i32 %i.ay, ptr %i.ax, align 8, !tbaa !9
  %i.az = load i32, ptr %i.at, align 4, !tbaa !24
  %i.ba = icmp ugt i32 %i.az, %4
  br i1 %i.ba, label %bb.d, label %scalar.ph.1

bb.d:                                             ; preds = %scalar.ph
  store i32 %4, ptr %i.au, align 4, !tbaa !24
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next ; 3 uses
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !24
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !9
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !9
  %i.bh = load i32, ptr %i.bb, align 4, !tbaa !24
  %i.bi = icmp ugt i32 %i.bh, %4
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %scalar.ph.1
  store i32 %4, ptr %i.bc, align 4, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %scalar.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.e
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2pb3pbc14update_max_sumEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) initializes((72, 76)) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %wide.trip.count = zext i32 %i.c to i64
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %.sroa.speculated29 = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.e) ; 2 uses
  store i32 %.sroa.speculated29, ptr %i.f, align 4, !tbaa !24
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.i
  store i32 %i.af, ptr %i.a, align 8, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.i
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.e) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.h, align 4, !tbaa !24
  %i.j = add i32 %i.af, %.sroa.speculated         ; 2 uses
  %i.k = icmp ult i32 %i.j, %i.af
  br i1 %i.k, label %bb.c, label %bb.i, !llvm.loop !60

bb.c:                                             ; preds = %bb.b
  store i32 %i.af, ptr %i.a, align 8, !tbaa !22
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !28
  %i.o = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !30
  %i.v = load i64, ptr %i.p, align 8, !tbaa !32
  store i64 %i.v, ptr %i.n, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi i64 [ %i.s, %bb.e ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.w, ptr %i.y, align 8, !tbaa !31
  store ptr %i.p, ptr %1, align 8, !tbaa !30
  store i64 0, ptr %i.x, align 8, !tbaa !31
  store i8 0, ptr %i.p, align 8, !tbaa !32
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.f
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !32
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @__cxa_free_exception(ptr %i.l) #18
  br label %bb.h
end_hunk_0
