Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/well-known-imports?download=true
inline.NumInlined: 19
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"uninstantiated\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"LinkError\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"DataView.getBigInt64\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"DataView.getBigUint64\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"DataView.getFloat32\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"DataView.getFloat64\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"DataView.getInt8\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"DataView.getInt16\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"DataView.getInt32\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"DataView.getUint8\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"DataView.getUint16\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"DataView.getUint32\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"DataView.setBigInt64\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"DataView.setBigUint64\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"DataView.setFloat32\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"DataView.setFloat64\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"DataView.setInt8\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"DataView.setInt16\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"DataView.setInt32\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"DataView.setUint8\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"DataView.setUint16\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"DataView.setUint32\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"DataView.byteLength\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Math.acos\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"Math.asin\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Math.atan\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Math.atan2\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"Math.cos\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"Math.sin\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Math.tan\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Math.exp\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Math.log\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"Math.pow\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"Math.sqrt\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"DoubleToString\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"IntToString\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"ParseFloat\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"String.indexOf\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"String.toLocaleLowerCase\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"String.toLowerCase\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"js-string:cast\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"js-string:charCodeAt\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"js-string:codePointAt\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"js-string:compare\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"js-string:concat\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"js-string:equals\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"js-string:fromCharCode\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"js-string:fromCodePoint\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"text-decoder:decodeStringFromUTF8Array\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"js-string:fromCharCodeArray\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"text-encoder:encodeStringIntoUTF8Array\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"text-encoder:encodeStringToUTF8Array\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"js-string:length\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"text-encoder:measureStringAsUTF8\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"js-string:substring\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"js-string:test\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"js-string:intoCharCodeArray\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"js-prototypes:configureAll\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"fast API call\00", align 1
@switch.table._ZN2v88internal4wasm19WellKnownImportNameENS1_15WellKnownImportE = private unnamed_addr constant [62 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.52, ptr @.str.57, ptr @.str.58, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.40, ptr @.str.59], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN2v88internal4wasm19WellKnownImportNameENS1_15WellKnownImportE(i8 noundef zeroext %0) local_unnamed_addr #0 {
switch.lookup:
  %i.a = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal4wasm19WellKnownImportNameENS1_15WellKnownImportE, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal4wasm20WellKnownImportsList6UpdateENS_4base6VectorINS1_15WellKnownImportEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre30 = load ptr, ptr %0, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %3 = phi ptr [ %4, %bb.d ], [ %.pre30, %.lr.ph.preheader ] ; 2 uses
  %.01726 = phi i64 [ %i.v, %bb.d ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.01726
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %.01726 ; 2 uses
  %i.e = load atomic i8, ptr %i.d monotonic, align 1 ; 3 uses
  %i.f = icmp eq i8 %i.e, 1
  %i.g = icmp eq i8 %i.e, %i.c
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = icmp eq i8 %i.e, 0
  br i1 %i.h, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.i = icmp ult i64 %2, 4
  br i1 %i.i, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %2, -4
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  store atomic i8 %i.c, ptr %i.d monotonic, align 1
  %.pre = load ptr, ptr %0, align 8
  br label %bb.d

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.027 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.u, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.027
  store atomic i8 1, ptr %i.k monotonic, align 1
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.027
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store atomic i8 1, ptr %i.n monotonic, align 1
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.027
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store atomic i8 1, ptr %i.q monotonic, align 1
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.027
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  store atomic i8 1, ptr %i.t monotonic, align 1
  %i.u = add nuw i64 %.027, 4                     ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !7

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %4 = phi ptr [ %3, %.lr.ph ], [ %.pre, %bb.c ]
  %i.v = add nuw i64 %.01726, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !8

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %.027.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.u, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.027.epil = phi i64 [ %i.y, %.preheader.epil ], [ %.027.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.027.epil
  store atomic i8 1, ptr %i.x monotonic, align 1
  %i.y = add nuw i64 %.027.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.epil, !llvm.loop !9

.loopexit:                                        ; preds = %bb.d, %.loopexit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %i.z = phi i1 [ false, %.loopexit.loopexit.unr-lcssa ], [ true, %bb.a ], [ false, %.preheader.epil ], [ true, %bb.d ]
  ret i1 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm20WellKnownImportsList10InitializeENS_4base6VectorIKNS1_15WellKnownImportEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.a = icmp ult i64 %2, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04.epil = phi i64 [ %i.f, %.lr.ph.epil ], [ %.04.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.04.epil
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.04.epil
  %i.e = load i8, ptr %i.d, align 1
  store atomic i8 %i.e, ptr %i.c monotonic, align 1
  %i.f = add nuw i64 %.04.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !10

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.04
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.04
  %i.j = load i8, ptr %i.i, align 1
  store atomic i8 %i.j, ptr %i.h monotonic, align 1
  %i.k = or disjoint i64 %.04, 1                  ; 2 uses
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.o = load i8, ptr %i.n, align 1
  store atomic i8 %i.o, ptr %i.m monotonic, align 1
  %i.p = or disjoint i64 %.04, 2                  ; 2 uses
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.t = load i8, ptr %i.s, align 1
  store atomic i8 %i.t, ptr %i.r monotonic, align 1
  %i.u = or disjoint i64 %.04, 3                  ; 2 uses
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.y = load i8, ptr %i.x, align 1
  store atomic i8 %i.y, ptr %i.w monotonic, align 1
  %i.z = add nuw i64 %.04, 4                      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !5}
end_hunk_0
