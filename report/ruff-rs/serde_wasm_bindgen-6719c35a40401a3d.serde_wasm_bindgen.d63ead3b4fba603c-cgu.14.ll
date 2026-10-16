Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/serde_wasm_bindgen-6719c35a40401a3d.serde_wasm_bindgen.d63ead3b4fba603c-cgu.14?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsioq3h7D9pfI_18serde_wasm_bindgen(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %i.c
  %bound1 = icmp ult ptr %1, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !alias.scope !16, !noalias !17
  %wide.load6 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !16, !noalias !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !18
  %wide.load8 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !18
  store <2 x i64> %wide.load7, ptr %i.d, align 1, !alias.scope !16, !noalias !17
  store <2 x i64> %wide.load8, ptr %i.f, align 1, !alias.scope !16, !noalias !17
  store <2 x i64> %wide.load, ptr %i.e, align 1, !alias.scope !18
  store <2 x i64> %wide.load6, ptr %i.g, align 1, !alias.scope !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.i = or disjoint i64 %.sroa.0.04.ph, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.j, align 1, !alias.scope !14
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.k, align 1, !alias.scope !15
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.j, align 1, !alias.scope !14
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.k, align 1, !alias.scope !15
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %i.l = icmp eq i64 %2, %.neg
  br i1 %i.l, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.m = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 1, !alias.scope !14
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 1, !alias.scope !15
  store i64 %.sroa.02.0.copyload.i, ptr %i.n, align 1, !alias.scope !14
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1, !alias.scope !15
  %i.p = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.q, align 1, !alias.scope !21
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.r, align 1, !alias.scope !22
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.q, align 1, !alias.scope !21
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.r, align 1, !alias.scope !22
  %exitcond.not.1 = icmp eq i64 %i.p, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !13
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 4 ptr @_RINvYNtCsXBDNnD8Soy_12wasm_bindgen7JsValueNtNtB5_4cast6JsCast7dyn_refNtCsdjJ41tfNHOz_6js_sys10Uint8ArrayECsioq3h7D9pfI_18serde_wasm_bindgen(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvYNtCsdjJ41tfNHOz_6js_sys10Uint8ArrayNtNtCsXBDNnD8Soy_12wasm_bindgen4cast6JsCast10is_type_ofCsioq3h7D9pfI_18serde_wasm_bindgen(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0)
  %spec.select = select i1 %i.a, ptr %0, ptr null
  ret ptr %spec.select
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 4 ptr @_RINvYNtCsXBDNnD8Soy_12wasm_bindgen7JsValueNtNtB5_4cast6JsCast7dyn_refNtCsdjJ41tfNHOz_6js_sys11ArrayBufferECsioq3h7D9pfI_18serde_wasm_bindgen(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvYNtCsdjJ41tfNHOz_6js_sys11ArrayBufferNtNtCsXBDNnD8Soy_12wasm_bindgen4cast6JsCast10is_type_ofCsioq3h7D9pfI_18serde_wasm_bindgen(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0)
  %spec.select = select i1 %i.a, ptr %0, ptr null
  ret ptr %spec.select
}

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtCsdjJ41tfNHOz_6js_sys10Uint8ArrayNtNtCsXBDNnD8Soy_12wasm_bindgen4cast6JsCast10is_type_ofCsioq3h7D9pfI_18serde_wasm_bindgen(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtCsdjJ41tfNHOz_6js_sys11ArrayBufferNtNtCsXBDNnD8Soy_12wasm_bindgen4cast6JsCast10is_type_ofCsioq3h7D9pfI_18serde_wasm_bindgen(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = distinct !{!3, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsioq3h7D9pfI_18serde_wasm_bindgen"}
!4 = distinct !{!4, !3, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsioq3h7D9pfI_18serde_wasm_bindgen: argument 0"}
!5 = distinct !{!5, !3, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsioq3h7D9pfI_18serde_wasm_bindgen: argument 1"}
!6 = distinct !{!6, i1 false, !"LVerDomain"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !19, !20}
!10 = distinct !{!10, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsioq3h7D9pfI_18serde_wasm_bindgen"}
!11 = distinct !{!11, !10, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsioq3h7D9pfI_18serde_wasm_bindgen: argument 0:It1"}
!12 = distinct !{!12, !10, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj8_ECsioq3h7D9pfI_18serde_wasm_bindgen: argument 1:It1"}
!13 = distinct !{!13, !19}
!14 = !{!4}
!15 = !{!5}
!16 = !{!4, !7}
!17 = !{!8}
!18 = !{!5, !8}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!11}
!22 = !{!12}
end_hunk_0
