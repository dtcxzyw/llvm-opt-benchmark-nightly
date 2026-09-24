Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.000?download=true
inline.NumInlined: 3835
inline.NumDeleted: 1834
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE6retainNCNvNtNtCs5QaNqjAn6vc_5shard6update7helpers16points_by_filters0_0EB1I_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !342, !noalias !343, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE10retain_mutNCINvB2_6retainNCNvNtNtCs5QaNqjAn6vc_5shard6update7helpers16points_by_filters0_0E0EB22_.exit, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !342, !noalias !343, !nonnull !16, !noundef !16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader22.i
  %.sroa.0.0.i = phi i64 [ %.sroa.7.029.i, %bb.c ], [ 0, %.preheader22.i ] ; 4 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %i.h = tail call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE12contains_keyBO_ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g), !noalias !344
  %.sroa.7.029.i = add nuw nsw i64 %.sroa.0.0.i, 1 ; 4 uses
  br i1 %i.h, label %.preheader.i, label %bb.c, !prof !23

.preheader.i:                                     ; preds = %bb.b
  %i.i = icmp samesign ult i64 %.sroa.7.029.i, %i.b
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %.sroa.7.029.i, %i.b
  br i1 %i.j, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE10retain_mutNCINvB2_6retainNCNvNtNtCs5QaNqjAn6vc_5shard6update7helpers16points_by_filters0_0E0EB22_.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.f ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !342, !noalias !343
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE10retain_mutNCINvB2_6retainNCNvNtNtCs5QaNqjAn6vc_5shard6update7helpers16points_by_filters0_0E0EB22_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.sroa.7.031.i = phi i64 [ %.sroa.7.0.i, %bb.f ], [ %.sroa.7.029.i, %.preheader.i ] ; 3 uses
  %.sroa.13.030.i = phi i64 [ %.sroa.13.1.i, %bb.f ], [ %.sroa.0.0.i, %.preheader.i ] ; 5 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.7.031.i ; 3 uses
  %i.l = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE12contains_keyBO_ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.d unwind label %bb.g, !noalias !344

bb.d:                                             ; preds = %.lr.ph.i
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.030.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !344
  %i.n = add i64 %.sroa.13.030.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.13.1.i = phi i64 [ %i.n, %bb.e ], [ %.sroa.13.030.i, %bb.d ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.031.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = sub nuw nsw i64 %i.b, %.sroa.7.031.i     ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.030.i
  %i.r = mul nuw nsw i64 %i.p, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.k, i64 %i.r, i1 false), !noalias !345
  %i.s = add i64 %i.p, %.sroa.13.030.i
  store i64 %i.s, ptr %i.a, align 8, !alias.scope !342, !noalias !346
  resume { ptr, i32 } %i.o

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE10retain_mutNCINvB2_6retainNCNvNtNtCs5QaNqjAn6vc_5shard6update7helpers16points_by_filters0_0E0EB22_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE6retainNCNvXs_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB1J_12ProxySegmentNtNtNtBJ_5entry11entry_point16ReadSegmentEntry18deferred_point_ids0EB1L_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !354, !noalias !355, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE10retain_mutNCINvB2_6retainNCNvXs_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB23_12ProxySegmentNtNtNtBJ_5entry11entry_point16ReadSegmentEntry18deferred_point_ids0E0EB25_.exit, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !354, !noalias !355, !nonnull !16, !noundef !16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader22.i
  %.sroa.0.0.i = phi i64 [ %.sroa.7.030.i, %bb.c ], [ 0, %.preheader22.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %i.i = tail call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCs5QaNqjAn6vc_5shard13proxy_segment17ProxyDeletedPointNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE12contains_keyBO_EB1F_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !356
  %.sroa.7.030.i = add nuw nsw i64 %.sroa.0.0.i, 1 ; 4 uses
  br i1 %i.i, label %.preheader.i, label %bb.c, !prof !23

.preheader.i:                                     ; preds = %bb.b
  %i.j = icmp samesign ult i64 %.sroa.7.030.i, %i.b
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %.sroa.7.030.i, %i.b
  br i1 %i.k, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE10retain_mutNCINvB2_6retainNCNvXs_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB23_12ProxySegmentNtNtNtBJ_5entry11entry_point16ReadSegmentEntry18deferred_point_ids0E0EB25_.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.f ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !354, !noalias !355
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE10retain_mutNCINvB2_6retainNCNvXs_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB23_12ProxySegmentNtNtNtBJ_5entry11entry_point16ReadSegmentEntry18deferred_point_ids0E0EB25_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.sroa.7.032.i = phi i64 [ %.sroa.7.0.i, %bb.f ], [ %.sroa.7.030.i, %.preheader.i ] ; 3 uses
  %.sroa.13.031.i = phi i64 [ %.sroa.13.1.i, %bb.f ], [ %.sroa.0.0.i, %.preheader.i ] ; 5 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.7.032.i ; 3 uses
  %i.m = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtNtCs5QaNqjAn6vc_5shard13proxy_segment17ProxyDeletedPointNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE12contains_keyBO_EB1F_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.d unwind label %bb.g, !noalias !356

bb.d:                                             ; preds = %.lr.ph.i
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.031.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !356
  %i.o = add i64 %.sroa.13.031.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.13.1.i = phi i64 [ %i.o, %bb.e ], [ %.sroa.13.031.i, %bb.d ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.032.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = sub nuw nsw i64 %i.b, %.sroa.7.032.i     ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.031.i
  %i.s = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.l, i64 %i.s, i1 false), !noalias !357
  %i.t = add i64 %i.q, %.sroa.13.031.i
  store i64 %i.t, ptr %i.a, align 8, !alias.scope !354, !noalias !358
  resume { ptr, i32 } %i.p

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE10retain_mutNCINvB2_6retainNCNvXs_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB23_12ProxySegmentNtNtNtBJ_5entry11entry_point16ReadSegmentEntry18deferred_point_ids0E0EB25_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !16 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit.thread
  %.sroa.0.024 = phi i64 [ 1, %bb.b ], [ %i.x, %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit.thread ] ; 5 uses
  %i.g = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.0.024 ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.i = load i8, ptr %i.g, align 8, !range !24, !alias.scope !375, !noalias !376, !noundef !16 ; 2 uses
  %i.j = load i8, ptr %i.h, align 8, !range !24, !alias.scope !376, !noalias !375, !noundef !16 ; 2 uses
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = icmp eq i8 %i.i, %i.j
  br i1 %i.l, label %bb.d, label %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = trunc nuw i8 %i.i to i1
  br i1 %i.m, label %.split, label %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit

.split:                                           ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.o = load i128, ptr %i.n, align 1, !alias.scope !375, !noalias !376, !noundef !16
  %i.p = getelementptr i8, ptr %i.g, i64 -23
  %i.q = load i128, ptr %i.p, align 1, !alias.scope !376, !noalias !375, !noundef !16
  %i.r = icmp eq i128 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit.thread

_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !375, !noalias !376, !noundef !16
  %i.u = getelementptr i8, ptr %i.g, i64 -16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !376, !noalias !375, !noundef !16
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit.thread

_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit.thread: ; preds = %bb.c, %.split, %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit
  %i.x = add nuw nsw i64 %.sroa.0.024, 1          ; 2 uses
  %.not = icmp eq i64 %i.x, %i.b
  br i1 %.not, label %.loopexit, label %bb.c

bb.e:                                             ; preds = %.split, %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit
  %.sroa.5.025 = add nuw nsw i64 %.sroa.0.024, 1  ; 2 uses
  %i.y = icmp samesign ult i64 %.sroa.5.025, %i.b
  br i1 %i.y, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.024, %bb.e ], [ %.sroa.11.1, %bb.g ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.sroa.5.027 = phi i64 [ %.sroa.5.0, %bb.g ], [ %.sroa.5.025, %bb.e ] ; 2 uses
  %.sroa.11.026 = phi i64 [ %.sroa.11.1, %bb.g ], [ %.sroa.0.024, %bb.e ] ; 4 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.5.027 ; 4 uses
  %i.aa = getelementptr [24 x i8], ptr %i.f, i64 %.sroa.11.026 ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.ac = load i8, ptr %i.z, align 8, !range !24, !alias.scope !381, !noalias !382, !noundef !16 ; 2 uses
  %i.ad = load i8, ptr %i.ab, align 8, !range !24, !alias.scope !382, !noalias !381, !noundef !16 ; 2 uses
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = icmp eq i8 %i.ac, %i.ad
  br i1 %i.af, label %bb.f, label %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit11.thread

bb.f:                                             ; preds = %.lr.ph
  %i.ag = trunc nuw i8 %i.ac to i1
  br i1 %i.ag, label %.split22, label %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit11

.split22:                                         ; preds = %bb.f
  tail call void @llvm.assume(i1 %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ai = load i128, ptr %i.ah, align 1, !alias.scope !381, !noalias !382, !noundef !16
  %i.aj = getelementptr i8, ptr %i.aa, i64 -23
  %i.ak = load i128, ptr %i.aj, align 1, !alias.scope !382, !noalias !381, !noundef !16
  %i.al = icmp eq i128 %i.ai, %i.ak
  br i1 %i.al, label %bb.g, label %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit11.thread

.loopexit:                                        ; preds = %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit.thread, %bb.a, %._crit_edge
  ret void

_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit11: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !381, !noalias !382, !noundef !16
  %i.ao = getelementptr i8, ptr %i.aa, i64 -16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !382, !noalias !381, !noundef !16
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit11.thread

_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit11.thread: ; preds = %.lr.ph, %.split22, %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.ar = add i64 %.sroa.11.026, 1
  br label %bb.g

bb.g:                                             ; preds = %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit11, %.split22, %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit11.thread
  %.sroa.11.1 = phi i64 [ %i.ar, %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit11.thread ], [ %.sroa.11.026, %.split22 ], [ %.sroa.11.026, %_RNCNvMs5_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE5dedup0Cs5QaNqjAn6vc_5shard.exit11 ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.027, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedE6retainNCNvNtBL_7resolve17resolve_operations_0EBL_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !390, !noalias !391, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedE10retain_mutNCINvB2_6retainNCNvNtBL_7resolve17resolve_operations_0E0EBL_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !390, !noalias !391, !nonnull !16, !noundef !16 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.i
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ 0, %.preheader.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = tail call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE12contains_keyBO_ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !392
  %i.j = add nuw nsw i64 %.sroa.0.0.i, 1          ; 5 uses
  br i1 %i.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.j, %i.b
  br i1 %i.k, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedE10retain_mutNCINvB2_6retainNCNvNtBL_7resolve17resolve_operations_0E0EBL_.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops21VectorStructPersistedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i unwind label %.loopexit.split-lp.i, !noalias !392

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i: ; preds = %bb.d
  %i.l = icmp samesign ult i64 %i.j, %i.b
  br i1 %i.l, label %.lr.ph.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit._crit_edge.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit._crit_edge.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit11.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i
  %.sroa.15.1.lcssa.i = phi i64 [ %.sroa.0.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i ], [ %.sroa.15.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit11.i ]
  store i64 %.sroa.15.1.lcssa.i, ptr %i.a, align 8, !alias.scope !390, !noalias !391
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedE10retain_mutNCINvB2_6retainNCNvNtBL_7resolve17resolve_operations_0E0EBL_.exit

.lr.ph.i:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit11.i
  %.sroa.8.131.i = phi i64 [ %.sroa.8.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit11.i ], [ %i.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i ] ; 4 uses
  %.sroa.15.130.i = phi i64 [ %.sroa.15.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit11.i ], [ %.sroa.0.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.8.131.i ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE12contains_keyBO_ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.e unwind label %.loopexit.i, !noalias !392

bb.e:                                             ; preds = %.lr.ph.i
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %.sroa.8.131.i, 1        ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops21VectorStructPersistedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit11.i unwind label %.loopexit.i, !noalias !392

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.15.130.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false), !noalias !392
  %i.r = add i64 %.sroa.15.130.i, 1
  %i.s = add nuw nsw i64 %.sroa.8.131.i, 1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit11.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit11.i: ; preds = %bb.g, %bb.f
  %.sroa.15.2.i = phi i64 [ %i.r, %bb.g ], [ %.sroa.15.130.i, %bb.f ] ; 2 uses
  %.sroa.8.2.i = phi i64 [ %i.s, %bb.g ], [ %i.p, %bb.f ] ; 2 uses
  %i.t = icmp samesign ult i64 %.sroa.8.2.i, %i.b
  br i1 %i.t, label %.lr.ph.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit._crit_edge.i

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph.i
  %.sroa.8.0.ph.i = phi i64 [ %.sroa.8.131.i, %.lr.ph.i ], [ %i.p, %bb.f ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.15.0.i = phi i64 [ %.sroa.15.130.i, %.loopexit.i ], [ %.sroa.0.0.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.8.0.ph.i, %.loopexit.i ], [ %i.j, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.u = sub i64 %i.b, %.sroa.8.0.i               ; 2 uses
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.8.0.i
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.15.0.i
  %i.x = mul nuw nsw i64 %i.u, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.v, i64 %i.x, i1 false), !noalias !393
  %i.y = add i64 %i.u, %.sroa.15.0.i
  store i64 %i.y, ptr %i.a, align 8, !alias.scope !390, !noalias !394
  resume { ptr, i32 } %lpad.phi.i

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedE10retain_mutNCINvB2_6retainNCNvNtBL_7resolve17resolve_operations_0E0EBL_.exit: ; preds = %bb.c, %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedE6retainNCNvNtNtBL_6update7vectors26update_vectors_conditionals_0EBL_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !402, !noalias !403, !noundef !16 ; 6 uses
  %i.c = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedE10retain_mutNCINvB2_6retainNCNvNtNtBL_6update7vectors26update_vectors_conditionals_0E0EBL_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !402, !noalias !403, !nonnull !16, !noundef !16 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.i
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ 0, %.preheader.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = tail call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE12contains_keyBO_ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !404
  %i.j = add nuw nsw i64 %.sroa.0.0.i, 1          ; 5 uses
  br i1 %i.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.j, %i.b
  br i1 %i.k, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedE10retain_mutNCINvB2_6retainNCNvNtNtBL_6update7vectors26update_vectors_conditionals_0E0EBL_.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops21VectorStructPersistedEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i unwind label %.loopexit.split-lp.i, !noalias !404

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i: ; preds = %bb.d
  %i.l = icmp samesign ult i64 %i.j, %i.b
  br i1 %i.l, label %.lr.ph.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit._crit_edge.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit._crit_edge.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit11.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i
  %.sroa.15.1.lcssa.i = phi i64 [ %.sroa.0.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i ], [ %.sroa.15.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit11.i ]
  store i64 %.sroa.15.1.lcssa.i, ptr %i.a, align 8, !alias.scope !402, !noalias !403
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedE10retain_mutNCINvB2_6retainNCNvNtNtBL_6update7vectors26update_vectors_conditionals_0E0EBL_.exit

.lr.ph.i:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit11.i
  %.sroa.8.131.i = phi i64 [ %.sroa.8.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit11.i ], [ %i.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEBH_.exit.preheader.i ] ; 4 uses
end_hunk_0
