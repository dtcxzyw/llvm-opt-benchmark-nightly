Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mover?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.src = private unnamed_addr constant [46 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/mover.c\00", align 1
@0 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 13, i32 3 } }
@1 = private unnamed_addr constant { i16, i16, [51 x i8] } { i16 -1, i16 0, [51 x i8] c"'b3CollisionPlane' (aka 'struct b3CollisionPlane')\00" }
@2 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 13, i32 3 }, ptr @1, i8 2, i8 3 }
@3 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 25, i32 37 } }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 28, i32 49 }, ptr @1, i8 2, i8 3 }
@5 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 60, i32 42 } }
@6 = private unnamed_addr constant { i16, i16, [63 x i8] } { i16 -1, i16 0, [63 x i8] c"'const b3CollisionPlane' (aka 'const struct b3CollisionPlane')\00" }
@7 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 61, i32 15 }, ptr @6, i8 2, i8 3 }
@8 = private unnamed_addr constant { i16, i16, [7 x i8] } { i16 0, i16 6, [7 x i8] c"'bool'\00" }
@9 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 61, i32 38 }, ptr @8 }

; Function Attrs: nounwind uwtable
define { <2 x float>, i64 } @b3SolvePlanes(<2 x float> %0, float %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !func_sanitize !22 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  %i.b = tail call float @b3GetLengthUnitsPerMeter() #3
  %i.c = fmul float %i.b, 5.000000e-03
  %i.d = fcmp ogt float %i.c, 0.000000e+00
  %i.e = select i1 %i.d, i64 0, i64 85899345920
  br label %.split150.us

.lr.ph:                                           ; preds = %bb.a
  %i.f = ptrtoint ptr %2 to i64                   ; 6 uses
  %.not = icmp eq ptr %2, null, !nosanitize !9
  br i1 %.not, label %.split96, label %.lr.ph.split.preheader, !prof !10

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.g
  %i.g = tail call float @b3GetLengthUnitsPerMeter() #3
  %i.h = fmul float %i.g, 5.000000e-03
  %wide.trip.count206 = zext nneg i32 %3 to i64
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge, %bb.e
  %.sroa.7.0130.us.us = phi float [ %i.an, %bb.e ], [ %1, %._crit_edge ]
  %.sroa.028.0129.us.us = phi <2 x float> [ %i.ar, %bb.e ], [ %0, %._crit_edge ]
  %.048128.us.us = phi i32 [ %4, %bb.e ], [ 0, %._crit_edge ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us.us, %bb.d
  %indvars.iv203 = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next204, %bb.d ] ; 3 uses
  %.sroa.7.1101.us132.us = phi float [ %.sroa.7.0130.us.us, %.preheader.us.us ], [ %i.an, %bb.d ] ; 2 uses
  %.sroa.028.1100.us133.us = phi <2 x float> [ %.sroa.028.0129.us.us, %.preheader.us.us ], [ %i.ar, %bb.d ] ; 2 uses
  %.04999.us134.us = phi float [ 0.000000e+00, %.preheader.us.us ], [ %i.as, %bb.d ]
  %i.i = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv203 ; 6 uses
  %i.j = mul nuw nsw i64 %indvars.iv203, 28
  %i.k = add i64 %i.j, %i.f, !nosanitize !9       ; 2 uses
  %.not175 = icmp ult i64 %i.k, %i.f, !nosanitize !9
  br i1 %.not175, label %.split107.us, label %bb.c, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.i to i64, !nosanitize !9 ; 2 uses
  %i.m = and i64 %i.l, 3, !nosanitize !9
  %i.n = icmp eq i64 %i.m, 0, !nosanitize !9
  br i1 %i.n, label %bb.d, label %.split111, !prof !11, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.o = load <2 x float>, ptr %i.i, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 2 uses
  %i.r = tail call float @b3GetLengthUnitsPerMeter() #3
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = load float, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %.sroa.1.8.vec.extract.i.us.us = extractelement <2 x float> %i.q, i64 0
  %i.v = fmul float %.sroa.7.1101.us132.us, %.sroa.1.8.vec.extract.i.us.us
  %i.w = fmul <2 x float> %.sroa.028.1100.us133.us, %i.o ; 2 uses
  %shift = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.w, %shift
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.y = fadd float %i.v, %i.x
  %.sroa.1.12.vec.extract.i.us.us = extractelement <2 x float> %i.q, i64 1
  %i.z = fsub float %i.y, %.sroa.1.12.vec.extract.i.us.us
  %i.aa = fmul float %i.r, 5.000000e-03
  %i.ab = fadd float %i.aa, %i.z
  %i.ac = fsub float %i.u, %i.ab                  ; 3 uses
  %i.ad = load float, ptr %i.t, align 4, !tbaa !23 ; 2 uses
  %i.ae = fcmp olt float %i.ac, 0.000000e+00
  %i.af = fcmp olt float %i.ad, %i.ac
  %i.ag = select i1 %i.af, float %i.ad, float %i.ac
  %i.ah = select i1 %i.ae, float 0.000000e+00, float %i.ag ; 2 uses
  store float %i.ah, ptr %i.s, align 4, !tbaa !17
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.ai = fsub float %i.ah, %i.u                  ; 5 uses
  %i.aj = fcmp olt float %i.ai, 0.000000e+00
  %i.ak = fneg float %i.ai
  %i.al = select i1 %i.aj, float %i.ak, float %i.ai
  %.sroa.22.0.copyload.us.us = load float, ptr %i.p, align 4
  %i.am = fmul float %.sroa.22.0.copyload.us.us, %i.ai
  %i.an = fadd float %.sroa.7.1101.us132.us, %i.am ; 3 uses
  %.sroa.01.0.copyload.us.us = load <2 x float>, ptr %i.i, align 4
  %i.ao = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, %.sroa.01.0.copyload.us.us
  %i.ar = fadd <2 x float> %.sroa.028.1100.us133.us, %i.aq ; 3 uses
  %i.as = fadd float %.04999.us134.us, %i.al      ; 2 uses
  %exitcond207.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count206
  br i1 %exitcond207.not, label %._crit_edge103.us.us, label %bb.b, !llvm.loop !19

bb.e:                                             ; preds = %._crit_edge103.us.us
  %4 = add nuw nsw i32 %.048128.us.us, 1          ; 2 uses
  %exitcond208.not = icmp eq i32 %4, 20
  br i1 %exitcond208.not, label %.split150.us.loopexit, label %.preheader.us.us, !llvm.loop !20

._crit_edge103.us.us:                             ; preds = %bb.d
  %5 = fcmp olt float %i.as, %i.h
  br i1 %5, label %.split150.us.loopexit, label %bb.e

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.at = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.au = mul nuw nsw i64 %indvars.iv, 28
  %i.av = add i64 %i.au, %i.f, !nosanitize !9     ; 2 uses
  %.not173 = icmp ult i64 %i.av, %i.f, !nosanitize !9
  br i1 %.not173, label %.split.us, label %bb.f, !prof !10, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @0, i64 %i.f, i64 %i.av) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %.lr.ph.split
  %i.aw = ptrtoint ptr %i.at to i64, !nosanitize !9 ; 2 uses
  %i.ax = and i64 %i.aw, 3, !nosanitize !9
  %i.ay = icmp eq i64 %i.ax, 0, !nosanitize !9
  br i1 %i.ay, label %bb.g, label %.split96, !prof !11, !nosanitize !9

.split96:                                         ; preds = %bb.f, %.lr.ph
  %.us-phi97 = phi i64 [ 0, %.lr.ph ], [ %i.aw, %bb.f ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @2, i64 %.us-phi97) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store float 0.000000e+00, ptr %i.az, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !21

.split107.us:                                     ; preds = %bb.b
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @3, i64 %i.f, i64 %i.k) #4, !nosanitize !9
  unreachable, !nosanitize !9

.split111:                                        ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.l) #4, !nosanitize !9
  unreachable, !nosanitize !9

.split150.us.loopexit:                            ; preds = %bb.e, %._crit_edge103.us.us
  %.us-phi151.ph = phi i32 [ %.048128.us.us, %._crit_edge103.us.us ], [ 20, %bb.e ]
  %i.ba = zext nneg i32 %.us-phi151.ph to i64
  %i.bb = shl nuw nsw i64 %i.ba, 32
  br label %.split150.us

.split150.us:                                     ; preds = %._crit_edge.thread, %.split150.us.loopexit
  %.us-phi151 = phi i64 [ %i.e, %._crit_edge.thread ], [ %i.bb, %.split150.us.loopexit ]
  %.us-phi152 = phi <2 x float> [ %0, %._crit_edge.thread ], [ %i.ar, %.split150.us.loopexit ]
  %.us-phi153 = phi float [ %1, %._crit_edge.thread ], [ %i.an, %.split150.us.loopexit ]
  %.fca.0.insert = insertvalue { <2 x float>, i64 } poison, <2 x float> %.us-phi152, 0
  %i.bc = bitcast float %.us-phi153 to i32
  %.sroa.245.8.insert.ext = zext i32 %i.bc to i64
  %.sroa.245.8.insert.insert = or disjoint i64 %.us-phi151, %.sroa.245.8.insert.ext
  %.fca.1.insert = insertvalue { <2 x float>, i64 } %.fca.0.insert, i64 %.sroa.245.8.insert.insert, 1
  ret { <2 x float>, i64 } %.fca.1.insert
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #1

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @b3ClipVector(<2 x float> %0, float %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !func_sanitize !25 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !9   ; 3 uses
  %.not68 = icmp eq ptr %2, null, !nosanitize !9
  br i1 %.not68, label %.split66, label %.lr.ph.split.preheader, !prof !10

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.sroa.023.0.lcssa = phi <2 x float> [ %0, %bb.a ], [ %.sroa.023.1, %bb.h ]
  %.sroa.5.0.lcssa = phi float [ %1, %bb.a ], [ %.sroa.5.1, %bb.h ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.023.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.5.0.lcssa, 1
  ret { <2 x float>, float } %.fca.1.insert

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.sroa.5.062 = phi float [ %1, %.lr.ph.split.preheader ], [ %.sroa.5.1, %bb.h ] ; 4 uses
  %.sroa.023.061 = phi <2 x float> [ %0, %.lr.ph.split.preheader ], [ %.sroa.023.1, %bb.h ] ; 4 uses
  %i.c = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv ; 5 uses
  %i.d = mul nuw nsw i64 %indvars.iv, 28
  %i.e = add i64 %i.d, %i.b, !nosanitize !9       ; 2 uses
  %.not69 = icmp ult i64 %i.e, %i.b, !nosanitize !9
  br i1 %.not69, label %.split.us, label %bb.b, !prof !10, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @5, i64 %i.b, i64 %i.e) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.b:                                             ; preds = %.lr.ph.split
  %i.f = ptrtoint ptr %i.c to i64, !nosanitize !9 ; 2 uses
  %i.g = and i64 %i.f, 3, !nosanitize !9
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !9
  br i1 %i.h, label %bb.c, label %.split66, !prof !11, !nosanitize !9

.split66:                                         ; preds = %bb.b, %.lr.ph
  %.us-phi67 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @7, i64 %.us-phi67) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.j = load float, ptr %i.i, align 4, !tbaa !17
  %i.k = fcmp oeq float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load i8, ptr %i.l, align 4, !tbaa !26    ; 3 uses
  %i.n = icmp ult i8 %i.m, 2
  br i1 %i.n, label %bb.f, label %bb.e, !prof !11, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  %i.o = zext i8 %i.m to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @9, i64 %i.o) #4, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i8 %i.m, 0
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.c, align 4 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4 ; 2 uses
  %i.q = fmul <2 x float> %.sroa.023.061, %.sroa.07.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.q, %shift
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = fmul float %.sroa.5.062, %.sroa.28.0.copyload
  %i.t = fadd float %i.s, %i.r                    ; 2 uses
  %i.u = fcmp ogt float %i.t, 0.000000e+00
  %i.v = select i1 %i.u, float 0.000000e+00, float %i.t ; 2 uses
  %i.w = insertelement <2 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x float> %.sroa.07.0.copyload, %i.x
  %i.z = fsub <2 x float> %.sroa.023.061, %i.y
  %i.aa = fmul float %.sroa.28.0.copyload, %i.v
  %i.ab = fsub float %.sroa.5.062, %i.aa
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.sroa.023.1 = phi <2 x float> [ %i.z, %bb.g ], [ %.sroa.023.061, %bb.f ], [ %.sroa.023.061, %bb.c ] ; 2 uses
  %.sroa.5.1 = phi float [ %i.ab, %bb.g ], [ %.sroa.5.062, %bb.f ], [ %.sroa.5.062, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !24
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{}
!10 = !{!"branch_weights", i32 1, i32 1048575}
!11 = !{!"branch_weights", i32 1048575, i32 1}
!12 = !{!"float", !5, i64 0}
!13 = !{!"b3Vec3", !12, i64 0, !12, i64 4, !12, i64 8}
!14 = !{!"b3Plane", !13, i64 0, !12, i64 12}
!15 = !{!"_Bool", !5, i64 0}
!16 = !{!"b3CollisionPlane", !14, i64 0, !12, i64 16, !12, i64 20, !15, i64 24}
!17 = !{!16, !12, i64 20}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = !{i32 -1056584962, i32 -1232948359}
!23 = !{!16, !12, i64 16}
!24 = distinct !{!24, !18}
!25 = !{i32 -1056584962, i32 -64212369}
!26 = !{!16, !15, i64 24}
end_hunk_0
