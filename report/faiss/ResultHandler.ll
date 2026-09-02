Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/ResultHandler?download=true
inline.NumInlined: 56
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

$_ZN5faiss22Top1BlockResultHandlerINS_4CMaxIflEELb0EE11add_resultsEmmPKf = comdat any

$_ZN5faiss22Top1BlockResultHandlerINS_4CMaxIflEELb1EE11add_resultsEmmPKf = comdat any

$_ZN5faiss22Top1BlockResultHandlerINS_4CMinIflEELb0EE11add_resultsEmmPKf = comdat any

$_ZN5faiss22Top1BlockResultHandlerINS_4CMinIflEELb1EE11add_resultsEmmPKf = comdat any

$_ZN5faiss27ReservoirBlockResultHandlerINS_4CMaxIflEELb0EE11add_resultsEmmPKf = comdat any

$_ZN5faiss27ReservoirBlockResultHandlerINS_4CMaxIflEELb1EE11add_resultsEmmPKf = comdat any

$_ZN5faiss27ReservoirBlockResultHandlerINS_4CMinIflEELb0EE11add_resultsEmmPKf = comdat any

$_ZN5faiss27ReservoirBlockResultHandlerINS_4CMinIflEELb1EE11add_resultsEmmPKf = comdat any

$__clang_call_terminate = comdat any

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5faiss22Top1BlockResultHandlerINS_4CMaxIflEELb0EE11add_resultsEmmPKf(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph39.i.i.i.i.i, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMaxIflEELb0EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit

.lr.ph39.i.i.i.i.i:                               ; preds = %bb.a
  %i.f = sub i64 %2, %1
  %i.g = sub i64 0, %1
  %invariant.gep.i.i.i.i.i = getelementptr [4 x i8], ptr %3, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = icmp ult i64 %1, %2
  br i1 %i.l, label %.lr.ph.us.i.i.i.i.i.preheader, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMaxIflEELb0EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit

.lr.ph.us.i.i.i.i.i.preheader:                    ; preds = %.lr.ph39.i.i.i.i.i
  %i.m = sub nuw i64 %2, %1
  %.neg = add i64 %1, 1
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.n = add nuw i64 %1, 1
  %i.o = icmp eq i64 %2, %.neg
  br label %.lr.ph.us.i.i.i.i.i

.lr.ph.us.i.i.i.i.i:                              ; preds = %.lr.ph.us.i.i.i.i.i.preheader, %._crit_edge.us.i.i.i.i.i
  %.03237.us.i.i.i.i.i = phi i64 [ %i.ah, %._crit_edge.us.i.i.i.i.i ], [ %i.b, %.lr.ph.us.i.i.i.i.i.preheader ] ; 4 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !9
  %i.q = sub i64 %.03237.us.i.i.i.i.i, %i.p
  %i.r = mul i64 %i.q, %i.f
  %gep.us.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.r ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.03237.us.i.i.i.i.i ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !20 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03237.us.i.i.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.i.i.i.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i.i.i.i.i, i64 %1
  %i.x = load float, ptr %i.w, align 4, !tbaa !20 ; 2 uses
  %i.y = fcmp ogt float %i.t, %i.x                ; 2 uses
  %.131.us.i.i.i.i.i.prol = select i1 %i.y, float %i.x, float %i.t ; 2 uses
  %.1.us.i.i.i.i.i.prol = select i1 %i.y, i64 %1, i64 %i.v ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.i.i
  %.131.us.i.i.i.i.i.lcssa.unr = phi float [ poison, %.lr.ph.us.i.i.i.i.i ], [ %.131.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.1.us.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.us.i.i.i.i.i ], [ %.1.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.035.us.i.i.i.i.i.unr = phi i64 [ %1, %.lr.ph.us.i.i.i.i.i ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %.02934.us.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.us.i.i.i.i.i ], [ %.1.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.us.i.i.i.i.i.unr = phi float [ %i.t, %.lr.ph.us.i.i.i.i.i ], [ %.131.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %i.o, label %._crit_edge.us.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.new

.lr.ph.us.i.i.i.i.i.new:                          ; preds = %.prol.loopexit, %.lr.ph.us.i.i.i.i.i.new
  %.035.us.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.us.i.i.i.i.i.new ], [ %.035.us.i.i.i.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.02934.us.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ], [ %.02934.us.i.i.i.i.i.unr, %.prol.loopexit ]
  %.03033.us.i.i.i.i.i = phi float [ %.131.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ], [ %.03033.us.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i.i.i.i.i, i64 %.035.us.i.i.i.i.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = fcmp ogt float %.03033.us.i.i.i.i.i, %i.aa ; 2 uses
  %.131.us.i.i.i.i.i = select i1 %i.ab, float %i.aa, float %.03033.us.i.i.i.i.i ; 2 uses
  %.1.us.i.i.i.i.i = select i1 %i.ab, i64 %.035.us.i.i.i.i.i, i64 %.02934.us.i.i.i.i.i
  %i.ac = add nuw i64 %.035.us.i.i.i.i.i, 1       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i.i.i.i.i, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.af = fcmp ogt float %.131.us.i.i.i.i.i, %i.ae ; 2 uses
  %.131.us.i.i.i.i.i.1 = select i1 %i.af, float %i.ae, float %.131.us.i.i.i.i.i ; 2 uses
  %.1.us.i.i.i.i.i.1 = select i1 %i.af, i64 %i.ac, i64 %.1.us.i.i.i.i.i ; 2 uses
  %i.ag = add nuw i64 %.035.us.i.i.i.i.i, 2       ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not.i.i.i.i.i.1, label %._crit_edge.us.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.new, !llvm.loop !23

._crit_edge.us.i.i.i.i.i:                         ; preds = %.lr.ph.us.i.i.i.i.i.new, %.prol.loopexit
  %.131.us.i.i.i.i.i.lcssa = phi float [ %.131.us.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.131.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ]
  %.1.us.i.i.i.i.i.lcssa = phi i64 [ %.1.us.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.1.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ]
  store float %.131.us.i.i.i.i.i.lcssa, ptr %i.s, align 4, !tbaa !20
  store i64 %.1.us.i.i.i.i.i.lcssa, ptr %i.u, align 8, !tbaa !22
  %i.ah = add nuw i64 %.03237.us.i.i.i.i.i, 1     ; 2 uses
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !14
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.us.i.i.i.i.i, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMaxIflEELb0EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit, !llvm.loop !25

_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMaxIflEELb0EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit: ; preds = %._crit_edge.us.i.i.i.i.i, %bb.a, %.lr.ph39.i.i.i.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5faiss20top1_add_results_tplINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKNS5_1TE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph39.i, label %_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMaxIflEELb0EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit

.lr.ph39.i:                                       ; preds = %bb.a
  %i.f = sub i64 %2, %1
  %i.g = sub i64 0, %1
  %invariant.gep.i = getelementptr [4 x i8], ptr %3, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = icmp ult i64 %1, %2
  br i1 %i.l, label %.lr.ph.us.i.preheader, label %_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMaxIflEELb0EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph39.i
  %i.m = sub nuw i64 %2, %1
  %.neg = add i64 %1, 1
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.n = add nuw i64 %1, 1
  %i.o = icmp eq i64 %2, %.neg
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.03237.us.i = phi i64 [ %i.ah, %._crit_edge.us.i ], [ %i.b, %.lr.ph.us.i.preheader ] ; 4 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !9
  %i.q = sub i64 %.03237.us.i, %i.p
  %i.r = mul i64 %i.q, %i.f
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.r ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.03237.us.i ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !20 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03237.us.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i, i64 %1
  %i.x = load float, ptr %i.w, align 4, !tbaa !20 ; 2 uses
  %i.y = fcmp ogt float %i.t, %i.x                ; 2 uses
  %.131.us.i.prol = select i1 %i.y, float %i.x, float %i.t ; 2 uses
  %.1.us.i.prol = select i1 %i.y, i64 %1, i64 %i.v ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.i
  %.131.us.i.lcssa.unr = phi float [ poison, %.lr.ph.us.i ], [ %.131.us.i.prol, %.prol.loopexit.unr-lcssa ]
  %.1.us.i.lcssa.unr = phi i64 [ poison, %.lr.ph.us.i ], [ %.1.us.i.prol, %.prol.loopexit.unr-lcssa ]
  %.035.us.i.unr = phi i64 [ %1, %.lr.ph.us.i ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %.02934.us.i.unr = phi i64 [ %i.v, %.lr.ph.us.i ], [ %.1.us.i.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.us.i.unr = phi float [ %i.t, %.lr.ph.us.i ], [ %.131.us.i.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %i.o, label %._crit_edge.us.i, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph.us.i.new
  %.035.us.i = phi i64 [ %i.ag, %.lr.ph.us.i.new ], [ %.035.us.i.unr, %.prol.loopexit ] ; 4 uses
  %.02934.us.i = phi i64 [ %.1.us.i.1, %.lr.ph.us.i.new ], [ %.02934.us.i.unr, %.prol.loopexit ]
  %.03033.us.i = phi float [ %.131.us.i.1, %.lr.ph.us.i.new ], [ %.03033.us.i.unr, %.prol.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i, i64 %.035.us.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = fcmp ogt float %.03033.us.i, %i.aa      ; 2 uses
  %.131.us.i = select i1 %i.ab, float %i.aa, float %.03033.us.i ; 2 uses
  %.1.us.i = select i1 %i.ab, i64 %.035.us.i, i64 %.02934.us.i
  %i.ac = add nuw i64 %.035.us.i, 1               ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.af = fcmp ogt float %.131.us.i, %i.ae        ; 2 uses
  %.131.us.i.1 = select i1 %i.af, float %i.ae, float %.131.us.i ; 2 uses
  %.1.us.i.1 = select i1 %i.af, i64 %i.ac, i64 %.1.us.i ; 2 uses
  %i.ag = add nuw i64 %.035.us.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not.i.1, label %._crit_edge.us.i, label %.lr.ph.us.i.new, !llvm.loop !23

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.i.new, %.prol.loopexit
  %.131.us.i.lcssa = phi float [ %.131.us.i.lcssa.unr, %.prol.loopexit ], [ %.131.us.i.1, %.lr.ph.us.i.new ]
  %.1.us.i.lcssa = phi i64 [ %.1.us.i.lcssa.unr, %.prol.loopexit ], [ %.1.us.i.1, %.lr.ph.us.i.new ]
  store float %.131.us.i.lcssa, ptr %i.s, align 4, !tbaa !20
  store i64 %.1.us.i.lcssa, ptr %i.u, align 8, !tbaa !22
  %i.ah = add nuw i64 %.03237.us.i, 1             ; 2 uses
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !14
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.us.i, label %_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMaxIflEELb0EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit, !llvm.loop !25

_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMaxIflEELb0EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit: ; preds = %._crit_edge.us.i, %.lr.ph39.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5faiss22Top1BlockResultHandlerINS_4CMaxIflEELb1EE11add_resultsEmmPKf(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph39.i.i.i.i.i, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMaxIflEELb1EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit

.lr.ph39.i.i.i.i.i:                               ; preds = %bb.a
  %i.f = sub i64 %2, %1
  %i.g = sub i64 0, %1
  %invariant.gep.i.i.i.i.i = getelementptr [4 x i8], ptr %3, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = icmp ult i64 %1, %2
  br i1 %i.l, label %.lr.ph.us.i.i.i.i.i.preheader, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMaxIflEELb1EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit

.lr.ph.us.i.i.i.i.i.preheader:                    ; preds = %.lr.ph39.i.i.i.i.i
  %i.m = sub nuw i64 %2, %1
  %.neg = add i64 %1, 1
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.n = add nuw i64 %1, 1
  %i.o = icmp eq i64 %2, %.neg
  br label %.lr.ph.us.i.i.i.i.i

.lr.ph.us.i.i.i.i.i:                              ; preds = %.lr.ph.us.i.i.i.i.i.preheader, %._crit_edge.us.i.i.i.i.i
  %.03237.us.i.i.i.i.i = phi i64 [ %i.ah, %._crit_edge.us.i.i.i.i.i ], [ %i.b, %.lr.ph.us.i.i.i.i.i.preheader ] ; 4 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !26
  %i.q = sub i64 %.03237.us.i.i.i.i.i, %i.p
  %i.r = mul i64 %i.q, %i.f
  %gep.us.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.r ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.03237.us.i.i.i.i.i ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !20 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03237.us.i.i.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.i.i.i.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i.i.i.i.i, i64 %1
  %i.x = load float, ptr %i.w, align 4, !tbaa !20 ; 2 uses
  %i.y = fcmp ogt float %i.t, %i.x                ; 2 uses
  %.131.us.i.i.i.i.i.prol = select i1 %i.y, float %i.x, float %i.t ; 2 uses
  %.1.us.i.i.i.i.i.prol = select i1 %i.y, i64 %1, i64 %i.v ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.i.i
  %.131.us.i.i.i.i.i.lcssa.unr = phi float [ poison, %.lr.ph.us.i.i.i.i.i ], [ %.131.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.1.us.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.us.i.i.i.i.i ], [ %.1.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.035.us.i.i.i.i.i.unr = phi i64 [ %1, %.lr.ph.us.i.i.i.i.i ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %.02934.us.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.us.i.i.i.i.i ], [ %.1.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.us.i.i.i.i.i.unr = phi float [ %i.t, %.lr.ph.us.i.i.i.i.i ], [ %.131.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %i.o, label %._crit_edge.us.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.new

.lr.ph.us.i.i.i.i.i.new:                          ; preds = %.prol.loopexit, %.lr.ph.us.i.i.i.i.i.new
  %.035.us.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.us.i.i.i.i.i.new ], [ %.035.us.i.i.i.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.02934.us.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ], [ %.02934.us.i.i.i.i.i.unr, %.prol.loopexit ]
  %.03033.us.i.i.i.i.i = phi float [ %.131.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ], [ %.03033.us.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i.i.i.i.i, i64 %.035.us.i.i.i.i.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = fcmp ogt float %.03033.us.i.i.i.i.i, %i.aa ; 2 uses
  %.131.us.i.i.i.i.i = select i1 %i.ab, float %i.aa, float %.03033.us.i.i.i.i.i ; 2 uses
  %.1.us.i.i.i.i.i = select i1 %i.ab, i64 %.035.us.i.i.i.i.i, i64 %.02934.us.i.i.i.i.i
  %i.ac = add nuw i64 %.035.us.i.i.i.i.i, 1       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i.i.i.i.i, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.af = fcmp ogt float %.131.us.i.i.i.i.i, %i.ae ; 2 uses
  %.131.us.i.i.i.i.i.1 = select i1 %i.af, float %i.ae, float %.131.us.i.i.i.i.i ; 2 uses
  %.1.us.i.i.i.i.i.1 = select i1 %i.af, i64 %i.ac, i64 %.1.us.i.i.i.i.i ; 2 uses
  %i.ag = add nuw i64 %.035.us.i.i.i.i.i, 2       ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not.i.i.i.i.i.1, label %._crit_edge.us.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.new, !llvm.loop !32

._crit_edge.us.i.i.i.i.i:                         ; preds = %.lr.ph.us.i.i.i.i.i.new, %.prol.loopexit
  %.131.us.i.i.i.i.i.lcssa = phi float [ %.131.us.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.131.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ]
  %.1.us.i.i.i.i.i.lcssa = phi i64 [ %.1.us.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.1.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ]
  store float %.131.us.i.i.i.i.i.lcssa, ptr %i.s, align 4, !tbaa !20
  store i64 %.1.us.i.i.i.i.i.lcssa, ptr %i.u, align 8, !tbaa !22
  %i.ah = add nuw i64 %.03237.us.i.i.i.i.i, 1     ; 2 uses
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !28
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.us.i.i.i.i.i, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMaxIflEELb1EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit, !llvm.loop !33

_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMaxIflEELb1EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit: ; preds = %._crit_edge.us.i.i.i.i.i, %bb.a, %.lr.ph39.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5faiss20top1_add_results_tplINS_4CMaxIflEELb1ELNS_9SIMDLevelE0EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKNS5_1TE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph39.i, label %_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMaxIflEELb1EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit

.lr.ph39.i:                                       ; preds = %bb.a
  %i.f = sub i64 %2, %1
  %i.g = sub i64 0, %1
  %invariant.gep.i = getelementptr [4 x i8], ptr %3, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = icmp ult i64 %1, %2
  br i1 %i.l, label %.lr.ph.us.i.preheader, label %_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMaxIflEELb1EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph39.i
  %i.m = sub nuw i64 %2, %1
  %.neg = add i64 %1, 1
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.n = add nuw i64 %1, 1
  %i.o = icmp eq i64 %2, %.neg
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.03237.us.i = phi i64 [ %i.ah, %._crit_edge.us.i ], [ %i.b, %.lr.ph.us.i.preheader ] ; 4 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !26
  %i.q = sub i64 %.03237.us.i, %i.p
  %i.r = mul i64 %i.q, %i.f
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.r ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.03237.us.i ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !20 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03237.us.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i, i64 %1
  %i.x = load float, ptr %i.w, align 4, !tbaa !20 ; 2 uses
  %i.y = fcmp ogt float %i.t, %i.x                ; 2 uses
  %.131.us.i.prol = select i1 %i.y, float %i.x, float %i.t ; 2 uses
  %.1.us.i.prol = select i1 %i.y, i64 %1, i64 %i.v ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.i
  %.131.us.i.lcssa.unr = phi float [ poison, %.lr.ph.us.i ], [ %.131.us.i.prol, %.prol.loopexit.unr-lcssa ]
  %.1.us.i.lcssa.unr = phi i64 [ poison, %.lr.ph.us.i ], [ %.1.us.i.prol, %.prol.loopexit.unr-lcssa ]
  %.035.us.i.unr = phi i64 [ %1, %.lr.ph.us.i ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %.02934.us.i.unr = phi i64 [ %i.v, %.lr.ph.us.i ], [ %.1.us.i.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.us.i.unr = phi float [ %i.t, %.lr.ph.us.i ], [ %.131.us.i.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %i.o, label %._crit_edge.us.i, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph.us.i.new
  %.035.us.i = phi i64 [ %i.ag, %.lr.ph.us.i.new ], [ %.035.us.i.unr, %.prol.loopexit ] ; 4 uses
  %.02934.us.i = phi i64 [ %.1.us.i.1, %.lr.ph.us.i.new ], [ %.02934.us.i.unr, %.prol.loopexit ]
  %.03033.us.i = phi float [ %.131.us.i.1, %.lr.ph.us.i.new ], [ %.03033.us.i.unr, %.prol.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i, i64 %.035.us.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = fcmp ogt float %.03033.us.i, %i.aa      ; 2 uses
  %.131.us.i = select i1 %i.ab, float %i.aa, float %.03033.us.i ; 2 uses
  %.1.us.i = select i1 %i.ab, i64 %.035.us.i, i64 %.02934.us.i
  %i.ac = add nuw i64 %.035.us.i, 1               ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.af = fcmp ogt float %.131.us.i, %i.ae        ; 2 uses
  %.131.us.i.1 = select i1 %i.af, float %i.ae, float %.131.us.i ; 2 uses
  %.1.us.i.1 = select i1 %i.af, i64 %i.ac, i64 %.1.us.i ; 2 uses
  %i.ag = add nuw i64 %.035.us.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not.i.1, label %._crit_edge.us.i, label %.lr.ph.us.i.new, !llvm.loop !32

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.i.new, %.prol.loopexit
  %.131.us.i.lcssa = phi float [ %.131.us.i.lcssa.unr, %.prol.loopexit ], [ %.131.us.i.1, %.lr.ph.us.i.new ]
  %.1.us.i.lcssa = phi i64 [ %.1.us.i.lcssa.unr, %.prol.loopexit ], [ %.1.us.i.1, %.lr.ph.us.i.new ]
  store float %.131.us.i.lcssa, ptr %i.s, align 4, !tbaa !20
  store i64 %.1.us.i.lcssa, ptr %i.u, align 8, !tbaa !22
  %i.ah = add nuw i64 %.03237.us.i, 1             ; 2 uses
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !28
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.us.i, label %_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMaxIflEELb1EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit, !llvm.loop !33

_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMaxIflEELb1EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit: ; preds = %._crit_edge.us.i, %.lr.ph39.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5faiss22Top1BlockResultHandlerINS_4CMinIflEELb0EE11add_resultsEmmPKf(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph39.i.i.i.i.i, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMinIflEELb0EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit

.lr.ph39.i.i.i.i.i:                               ; preds = %bb.a
  %i.f = sub i64 %2, %1
  %i.g = sub i64 0, %1
  %invariant.gep.i.i.i.i.i = getelementptr [4 x i8], ptr %3, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = icmp ult i64 %1, %2
  br i1 %i.l, label %.lr.ph.us.i.i.i.i.i.preheader, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMinIflEELb0EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit

.lr.ph.us.i.i.i.i.i.preheader:                    ; preds = %.lr.ph39.i.i.i.i.i
  %i.m = sub nuw i64 %2, %1
  %.neg = add i64 %1, 1
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.n = add nuw i64 %1, 1
  %i.o = icmp eq i64 %2, %.neg
  br label %.lr.ph.us.i.i.i.i.i

.lr.ph.us.i.i.i.i.i:                              ; preds = %.lr.ph.us.i.i.i.i.i.preheader, %._crit_edge.us.i.i.i.i.i
  %.03237.us.i.i.i.i.i = phi i64 [ %i.ah, %._crit_edge.us.i.i.i.i.i ], [ %i.b, %.lr.ph.us.i.i.i.i.i.preheader ] ; 4 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !34
  %i.q = sub i64 %.03237.us.i.i.i.i.i, %i.p
  %i.r = mul i64 %i.q, %i.f
  %gep.us.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.r ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.03237.us.i.i.i.i.i ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !20 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03237.us.i.i.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.i.i.i.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i.i.i.i.i, i64 %1
  %i.x = load float, ptr %i.w, align 4, !tbaa !20 ; 2 uses
  %i.y = fcmp olt float %i.t, %i.x                ; 2 uses
  %.131.us.i.i.i.i.i.prol = select i1 %i.y, float %i.x, float %i.t ; 2 uses
  %.1.us.i.i.i.i.i.prol = select i1 %i.y, i64 %1, i64 %i.v ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.i.i
  %.131.us.i.i.i.i.i.lcssa.unr = phi float [ poison, %.lr.ph.us.i.i.i.i.i ], [ %.131.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.1.us.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.us.i.i.i.i.i ], [ %.1.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.035.us.i.i.i.i.i.unr = phi i64 [ %1, %.lr.ph.us.i.i.i.i.i ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %.02934.us.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.us.i.i.i.i.i ], [ %.1.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.us.i.i.i.i.i.unr = phi float [ %i.t, %.lr.ph.us.i.i.i.i.i ], [ %.131.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %i.o, label %._crit_edge.us.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.new

.lr.ph.us.i.i.i.i.i.new:                          ; preds = %.prol.loopexit, %.lr.ph.us.i.i.i.i.i.new
  %.035.us.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.us.i.i.i.i.i.new ], [ %.035.us.i.i.i.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.02934.us.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ], [ %.02934.us.i.i.i.i.i.unr, %.prol.loopexit ]
  %.03033.us.i.i.i.i.i = phi float [ %.131.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ], [ %.03033.us.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i.i.i.i.i, i64 %.035.us.i.i.i.i.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = fcmp olt float %.03033.us.i.i.i.i.i, %i.aa ; 2 uses
  %.131.us.i.i.i.i.i = select i1 %i.ab, float %i.aa, float %.03033.us.i.i.i.i.i ; 2 uses
  %.1.us.i.i.i.i.i = select i1 %i.ab, i64 %.035.us.i.i.i.i.i, i64 %.02934.us.i.i.i.i.i
  %i.ac = add nuw i64 %.035.us.i.i.i.i.i, 1       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i.i.i.i.i, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.af = fcmp olt float %.131.us.i.i.i.i.i, %i.ae ; 2 uses
  %.131.us.i.i.i.i.i.1 = select i1 %i.af, float %i.ae, float %.131.us.i.i.i.i.i ; 2 uses
  %.1.us.i.i.i.i.i.1 = select i1 %i.af, i64 %i.ac, i64 %.1.us.i.i.i.i.i ; 2 uses
  %i.ag = add nuw i64 %.035.us.i.i.i.i.i, 2       ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not.i.i.i.i.i.1, label %._crit_edge.us.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.new, !llvm.loop !40

._crit_edge.us.i.i.i.i.i:                         ; preds = %.lr.ph.us.i.i.i.i.i.new, %.prol.loopexit
  %.131.us.i.i.i.i.i.lcssa = phi float [ %.131.us.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.131.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ]
  %.1.us.i.i.i.i.i.lcssa = phi i64 [ %.1.us.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.1.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ]
  store float %.131.us.i.i.i.i.i.lcssa, ptr %i.s, align 4, !tbaa !20
  store i64 %.1.us.i.i.i.i.i.lcssa, ptr %i.u, align 8, !tbaa !22
  %i.ah = add nuw i64 %.03237.us.i.i.i.i.i, 1     ; 2 uses
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !36
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.us.i.i.i.i.i, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMinIflEELb0EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit, !llvm.loop !41

_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMinIflEELb0EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit: ; preds = %._crit_edge.us.i.i.i.i.i, %bb.a, %.lr.ph39.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5faiss20top1_add_results_tplINS_4CMinIflEELb0ELNS_9SIMDLevelE0EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKNS5_1TE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph39.i, label %_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMinIflEELb0EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit

.lr.ph39.i:                                       ; preds = %bb.a
  %i.f = sub i64 %2, %1
  %i.g = sub i64 0, %1
  %invariant.gep.i = getelementptr [4 x i8], ptr %3, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = icmp ult i64 %1, %2
  br i1 %i.l, label %.lr.ph.us.i.preheader, label %_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMinIflEELb0EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph39.i
  %i.m = sub nuw i64 %2, %1
  %.neg = add i64 %1, 1
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.n = add nuw i64 %1, 1
  %i.o = icmp eq i64 %2, %.neg
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.03237.us.i = phi i64 [ %i.ah, %._crit_edge.us.i ], [ %i.b, %.lr.ph.us.i.preheader ] ; 4 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !34
  %i.q = sub i64 %.03237.us.i, %i.p
  %i.r = mul i64 %i.q, %i.f
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.r ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.03237.us.i ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !20 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03237.us.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i, i64 %1
  %i.x = load float, ptr %i.w, align 4, !tbaa !20 ; 2 uses
  %i.y = fcmp olt float %i.t, %i.x                ; 2 uses
  %.131.us.i.prol = select i1 %i.y, float %i.x, float %i.t ; 2 uses
  %.1.us.i.prol = select i1 %i.y, i64 %1, i64 %i.v ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.i
  %.131.us.i.lcssa.unr = phi float [ poison, %.lr.ph.us.i ], [ %.131.us.i.prol, %.prol.loopexit.unr-lcssa ]
  %.1.us.i.lcssa.unr = phi i64 [ poison, %.lr.ph.us.i ], [ %.1.us.i.prol, %.prol.loopexit.unr-lcssa ]
  %.035.us.i.unr = phi i64 [ %1, %.lr.ph.us.i ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %.02934.us.i.unr = phi i64 [ %i.v, %.lr.ph.us.i ], [ %.1.us.i.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.us.i.unr = phi float [ %i.t, %.lr.ph.us.i ], [ %.131.us.i.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %i.o, label %._crit_edge.us.i, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph.us.i.new
  %.035.us.i = phi i64 [ %i.ag, %.lr.ph.us.i.new ], [ %.035.us.i.unr, %.prol.loopexit ] ; 4 uses
  %.02934.us.i = phi i64 [ %.1.us.i.1, %.lr.ph.us.i.new ], [ %.02934.us.i.unr, %.prol.loopexit ]
  %.03033.us.i = phi float [ %.131.us.i.1, %.lr.ph.us.i.new ], [ %.03033.us.i.unr, %.prol.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i, i64 %.035.us.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = fcmp olt float %.03033.us.i, %i.aa      ; 2 uses
  %.131.us.i = select i1 %i.ab, float %i.aa, float %.03033.us.i ; 2 uses
  %.1.us.i = select i1 %i.ab, i64 %.035.us.i, i64 %.02934.us.i
  %i.ac = add nuw i64 %.035.us.i, 1               ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.af = fcmp olt float %.131.us.i, %i.ae        ; 2 uses
  %.131.us.i.1 = select i1 %i.af, float %i.ae, float %.131.us.i ; 2 uses
  %.1.us.i.1 = select i1 %i.af, i64 %i.ac, i64 %.1.us.i ; 2 uses
  %i.ag = add nuw i64 %.035.us.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not.i.1, label %._crit_edge.us.i, label %.lr.ph.us.i.new, !llvm.loop !40

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.i.new, %.prol.loopexit
  %.131.us.i.lcssa = phi float [ %.131.us.i.lcssa.unr, %.prol.loopexit ], [ %.131.us.i.1, %.lr.ph.us.i.new ]
  %.1.us.i.lcssa = phi i64 [ %.1.us.i.lcssa.unr, %.prol.loopexit ], [ %.1.us.i.1, %.lr.ph.us.i.new ]
  store float %.131.us.i.lcssa, ptr %i.s, align 4, !tbaa !20
  store i64 %.1.us.i.lcssa, ptr %i.u, align 8, !tbaa !22
  %i.ah = add nuw i64 %.03237.us.i, 1             ; 2 uses
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !36
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.us.i, label %_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMinIflEELb0EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit, !llvm.loop !41

_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMinIflEELb0EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit: ; preds = %._crit_edge.us.i, %.lr.ph39.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5faiss22Top1BlockResultHandlerINS_4CMinIflEELb1EE11add_resultsEmmPKf(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph39.i.i.i.i.i, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMinIflEELb1EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit

.lr.ph39.i.i.i.i.i:                               ; preds = %bb.a
  %i.f = sub i64 %2, %1
  %i.g = sub i64 0, %1
  %invariant.gep.i.i.i.i.i = getelementptr [4 x i8], ptr %3, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = icmp ult i64 %1, %2
  br i1 %i.l, label %.lr.ph.us.i.i.i.i.i.preheader, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMinIflEELb1EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit

.lr.ph.us.i.i.i.i.i.preheader:                    ; preds = %.lr.ph39.i.i.i.i.i
  %i.m = sub nuw i64 %2, %1
  %.neg = add i64 %1, 1
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.n = add nuw i64 %1, 1
  %i.o = icmp eq i64 %2, %.neg
  br label %.lr.ph.us.i.i.i.i.i

.lr.ph.us.i.i.i.i.i:                              ; preds = %.lr.ph.us.i.i.i.i.i.preheader, %._crit_edge.us.i.i.i.i.i
  %.03237.us.i.i.i.i.i = phi i64 [ %i.ah, %._crit_edge.us.i.i.i.i.i ], [ %i.b, %.lr.ph.us.i.i.i.i.i.preheader ] ; 4 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !42
  %i.q = sub i64 %.03237.us.i.i.i.i.i, %i.p
  %i.r = mul i64 %i.q, %i.f
  %gep.us.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.r ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.03237.us.i.i.i.i.i ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !20 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03237.us.i.i.i.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.i.i.i.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i.i.i.i.i, i64 %1
  %i.x = load float, ptr %i.w, align 4, !tbaa !20 ; 2 uses
  %i.y = fcmp olt float %i.t, %i.x                ; 2 uses
  %.131.us.i.i.i.i.i.prol = select i1 %i.y, float %i.x, float %i.t ; 2 uses
  %.1.us.i.i.i.i.i.prol = select i1 %i.y, i64 %1, i64 %i.v ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.i.i
  %.131.us.i.i.i.i.i.lcssa.unr = phi float [ poison, %.lr.ph.us.i.i.i.i.i ], [ %.131.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.1.us.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.us.i.i.i.i.i ], [ %.1.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.035.us.i.i.i.i.i.unr = phi i64 [ %1, %.lr.ph.us.i.i.i.i.i ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %.02934.us.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.us.i.i.i.i.i ], [ %.1.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.us.i.i.i.i.i.unr = phi float [ %i.t, %.lr.ph.us.i.i.i.i.i ], [ %.131.us.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %i.o, label %._crit_edge.us.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.new

.lr.ph.us.i.i.i.i.i.new:                          ; preds = %.prol.loopexit, %.lr.ph.us.i.i.i.i.i.new
  %.035.us.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.us.i.i.i.i.i.new ], [ %.035.us.i.i.i.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.02934.us.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ], [ %.02934.us.i.i.i.i.i.unr, %.prol.loopexit ]
  %.03033.us.i.i.i.i.i = phi float [ %.131.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ], [ %.03033.us.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i.i.i.i.i, i64 %.035.us.i.i.i.i.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = fcmp olt float %.03033.us.i.i.i.i.i, %i.aa ; 2 uses
  %.131.us.i.i.i.i.i = select i1 %i.ab, float %i.aa, float %.03033.us.i.i.i.i.i ; 2 uses
  %.1.us.i.i.i.i.i = select i1 %i.ab, i64 %.035.us.i.i.i.i.i, i64 %.02934.us.i.i.i.i.i
  %i.ac = add nuw i64 %.035.us.i.i.i.i.i, 1       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i.i.i.i.i, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.af = fcmp olt float %.131.us.i.i.i.i.i, %i.ae ; 2 uses
  %.131.us.i.i.i.i.i.1 = select i1 %i.af, float %i.ae, float %.131.us.i.i.i.i.i ; 2 uses
  %.1.us.i.i.i.i.i.1 = select i1 %i.af, i64 %i.ac, i64 %.1.us.i.i.i.i.i ; 2 uses
  %i.ag = add nuw i64 %.035.us.i.i.i.i.i, 2       ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not.i.i.i.i.i.1, label %._crit_edge.us.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.new, !llvm.loop !48

._crit_edge.us.i.i.i.i.i:                         ; preds = %.lr.ph.us.i.i.i.i.i.new, %.prol.loopexit
  %.131.us.i.i.i.i.i.lcssa = phi float [ %.131.us.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.131.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ]
  %.1.us.i.i.i.i.i.lcssa = phi i64 [ %.1.us.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.1.us.i.i.i.i.i.1, %.lr.ph.us.i.i.i.i.i.new ]
  store float %.131.us.i.i.i.i.i.lcssa, ptr %i.s, align 4, !tbaa !20
  store i64 %.1.us.i.i.i.i.i.lcssa, ptr %i.u, align 8, !tbaa !22
  %i.ah = add nuw i64 %.03237.us.i.i.i.i.i, 1     ; 2 uses
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !44
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.us.i.i.i.i.i, label %_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMinIflEELb1EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit, !llvm.loop !49

_ZN5faiss25with_selected_simd_levelsILi7EZNS_22Top1BlockResultHandlerINS_4CMinIflEELb1EE11add_resultsEmmPKfEUlTnNS_9SIMDLevelEvE_EEDaOT0_.exit: ; preds = %._crit_edge.us.i.i.i.i.i, %bb.a, %.lr.ph39.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5faiss20top1_add_results_tplINS_4CMinIflEELb1ELNS_9SIMDLevelE0EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKNS5_1TE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph39.i, label %_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMinIflEELb1EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit

.lr.ph39.i:                                       ; preds = %bb.a
  %i.f = sub i64 %2, %1
  %i.g = sub i64 0, %1
  %invariant.gep.i = getelementptr [4 x i8], ptr %3, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = icmp ult i64 %1, %2
  br i1 %i.l, label %.lr.ph.us.i.preheader, label %_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMinIflEELb1EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph39.i
  %i.m = sub nuw i64 %2, %1
  %.neg = add i64 %1, 1
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.n = add nuw i64 %1, 1
  %i.o = icmp eq i64 %2, %.neg
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.03237.us.i = phi i64 [ %i.ah, %._crit_edge.us.i ], [ %i.b, %.lr.ph.us.i.preheader ] ; 4 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !42
  %i.q = sub i64 %.03237.us.i, %i.p
  %i.r = mul i64 %i.q, %i.f
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.r ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.03237.us.i ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !20 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03237.us.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i, i64 %1
  %i.x = load float, ptr %i.w, align 4, !tbaa !20 ; 2 uses
  %i.y = fcmp olt float %i.t, %i.x                ; 2 uses
  %.131.us.i.prol = select i1 %i.y, float %i.x, float %i.t ; 2 uses
  %.1.us.i.prol = select i1 %i.y, i64 %1, i64 %i.v ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.i
  %.131.us.i.lcssa.unr = phi float [ poison, %.lr.ph.us.i ], [ %.131.us.i.prol, %.prol.loopexit.unr-lcssa ]
  %.1.us.i.lcssa.unr = phi i64 [ poison, %.lr.ph.us.i ], [ %.1.us.i.prol, %.prol.loopexit.unr-lcssa ]
  %.035.us.i.unr = phi i64 [ %1, %.lr.ph.us.i ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %.02934.us.i.unr = phi i64 [ %i.v, %.lr.ph.us.i ], [ %.1.us.i.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.us.i.unr = phi float [ %i.t, %.lr.ph.us.i ], [ %.131.us.i.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %i.o, label %._crit_edge.us.i, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph.us.i.new
  %.035.us.i = phi i64 [ %i.ag, %.lr.ph.us.i.new ], [ %.035.us.i.unr, %.prol.loopexit ] ; 4 uses
  %.02934.us.i = phi i64 [ %.1.us.i.1, %.lr.ph.us.i.new ], [ %.02934.us.i.unr, %.prol.loopexit ]
  %.03033.us.i = phi float [ %.131.us.i.1, %.lr.ph.us.i.new ], [ %.03033.us.i.unr, %.prol.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i, i64 %.035.us.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = fcmp olt float %.03033.us.i, %i.aa      ; 2 uses
  %.131.us.i = select i1 %i.ab, float %i.aa, float %.03033.us.i ; 2 uses
  %.1.us.i = select i1 %i.ab, i64 %.035.us.i, i64 %.02934.us.i
  %i.ac = add nuw i64 %.035.us.i, 1               ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %gep.us.i, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.af = fcmp olt float %.131.us.i, %i.ae        ; 2 uses
  %.131.us.i.1 = select i1 %i.af, float %i.ae, float %.131.us.i ; 2 uses
  %.1.us.i.1 = select i1 %i.af, i64 %i.ac, i64 %.1.us.i ; 2 uses
  %i.ag = add nuw i64 %.035.us.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not.i.1, label %._crit_edge.us.i, label %.lr.ph.us.i.new, !llvm.loop !48

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.i.new, %.prol.loopexit
  %.131.us.i.lcssa = phi float [ %.131.us.i.lcssa.unr, %.prol.loopexit ], [ %.131.us.i.1, %.lr.ph.us.i.new ]
  %.1.us.i.lcssa = phi i64 [ %.1.us.i.lcssa.unr, %.prol.loopexit ], [ %.1.us.i.1, %.lr.ph.us.i.new ]
  store float %.131.us.i.lcssa, ptr %i.s, align 4, !tbaa !20
  store i64 %.1.us.i.lcssa, ptr %i.u, align 8, !tbaa !22
  %i.ah = add nuw i64 %.03237.us.i, 1             ; 2 uses
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !44
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.us.i, label %_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMinIflEELb1EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit, !llvm.loop !49

_ZN5faiss12_GLOBAL__N_121top1_add_results_noneINS_4CMinIflEELb1EEEvPNS_22Top1BlockResultHandlerIT_XT0_EEEmmPKf.exit: ; preds = %._crit_edge.us.i, %.lr.ph39.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5faiss27ReservoirBlockResultHandlerINS_4CMaxIflEELb0EE11add_resultsEmmPKf(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.a, align 8, !tbaa !50
  store i64 %1, ptr %i.b, align 8, !tbaa !22
  store i64 %2, ptr %i.c, align 8, !tbaa !22
  store ptr %3, ptr %i.d, align 8, !tbaa !52
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN5faiss12_GLOBAL__N_126reservoir_add_results_noneINS_4CMaxIflEELb0EEEvPNS_27ReservoirBlockResultHandlerIT_XT0_EEEmmPKf.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss25reservoir_add_results_tplINS_4CMaxIflEELb0ELNS_9SIMDLevelE0EEEvPNS_27ReservoirBlockResultHandlerIT_XT0_EEEmmPKNS5_1TE(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.a, align 8, !tbaa !50
  store i64 %1, ptr %i.b, align 8, !tbaa !22
  store i64 %2, ptr %i.c, align 8, !tbaa !22
  store ptr %3, ptr %i.d, align 8, !tbaa !52
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN5faiss12_GLOBAL__N_126reservoir_add_results_noneINS_4CMaxIflEELb0EEEvPNS_27ReservoirBlockResultHandlerIT_XT0_EEEmmPKf.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5faiss27ReservoirBlockResultHandlerINS_4CMaxIflEELb1EE11add_resultsEmmPKf(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.a, align 8, !tbaa !53
  store i64 %1, ptr %i.b, align 8, !tbaa !22
  store i64 %2, ptr %i.c, align 8, !tbaa !22
  store ptr %3, ptr %i.d, align 8, !tbaa !52
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN5faiss12_GLOBAL__N_126reservoir_add_results_noneINS_4CMaxIflEELb1EEEvPNS_27ReservoirBlockResultHandlerIT_XT0_EEEmmPKf.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss25reservoir_add_results_tplINS_4CMaxIflEELb1ELNS_9SIMDLevelE0EEEvPNS_27ReservoirBlockResultHandlerIT_XT0_EEEmmPKNS5_1TE(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.a, align 8, !tbaa !53
  store i64 %1, ptr %i.b, align 8, !tbaa !22
  store i64 %2, ptr %i.c, align 8, !tbaa !22
  store ptr %3, ptr %i.d, align 8, !tbaa !52
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN5faiss12_GLOBAL__N_126reservoir_add_results_noneINS_4CMaxIflEELb1EEEvPNS_27ReservoirBlockResultHandlerIT_XT0_EEEmmPKf.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5faiss27ReservoirBlockResultHandlerINS_4CMinIflEELb0EE11add_resultsEmmPKf(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.a, align 8, !tbaa !55
  store i64 %1, ptr %i.b, align 8, !tbaa !22
  store i64 %2, ptr %i.c, align 8, !tbaa !22
  store ptr %3, ptr %i.d, align 8, !tbaa !52
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN5faiss12_GLOBAL__N_126reservoir_add_results_noneINS_4CMinIflEELb0EEEvPNS_27ReservoirBlockResultHandlerIT_XT0_EEEmmPKf.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss25reservoir_add_results_tplINS_4CMinIflEELb0ELNS_9SIMDLevelE0EEEvPNS_27ReservoirBlockResultHandlerIT_XT0_EEEmmPKNS5_1TE(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
end_hunk_0
