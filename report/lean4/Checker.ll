Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Checker?download=true
inline.NumInlined: 44
inline.NumDeleted: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Std_Tactic_BVDecide_LRAT_check(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.val.i.i = load i32, ptr %1, align 4, !tbaa !10 ; 3 uses
  %i.a = icmp sgt i32 %.val.i.i, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i32 %.val.i.i, 1
  store i32 %i.b, ptr %1, align 4, !tbaa !10
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i14 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i14, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.d = tail call ptr @l_Std_Tactic_BVDecide_LRAT_Internal_CNF_convertLRAT(ptr noundef nonnull %1) #3
  %i.e = tail call ptr @l_Std_Sat_CNF_numLiterals(ptr noundef nonnull %1) #3 ; 5 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_inc_ref.exit
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_inc_ref.exit
  %.not.i12 = icmp eq i32 %i.f, 0
  br i1 %.not.i12, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #3
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.i = ptrtoint ptr %i.e to i64                 ; 2 uses
  %2 = and i64 %i.i, 1
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.k, label %bb.h, !prof !14

bb.h:                                             ; preds = %lean_dec_ref.exit
  %i.j = lshr i64 %i.i, 1
  %i.k = add nuw i64 %i.j, 1                      ; 2 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.m = shl nuw i64 %i.k, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_dec.exit

bb.j:                                             ; preds = %bb.h
  %i.p = tail call ptr @lean_big_usize_to_nat(i64 noundef range(i64 0, -1) -9223372036854775808) #3
  br label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec_ref.exit
  %i.q = tail call ptr @lean_nat_big_add(ptr noundef %i.e, ptr noundef nonnull inttoptr (i64 3 to ptr)) #3 ; 3 uses
  %i.r = load i32, ptr %i.e, align 4, !tbaa !10   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %i.e, align 4, !tbaa !10
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #3
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.j, %bb.l, %bb.m, %bb.n
  %.0.i17 = phi ptr [ %i.q, %bb.l ], [ %i.q, %bb.n ], [ %i.q, %bb.m ], [ %i.p, %bb.j ], [ %i.o, %bb.i ]
  %i.u = tail call zeroext i8 @l_Std_Tactic_BVDecide_LRAT_Internal_compactLratChecker(ptr noundef %.0.i17, ptr noundef %i.d, ptr noundef %0) #3
  %i.v = tail call zeroext i8 @l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqResult(i8 noundef zeroext %i.u, i8 noundef zeroext 0) #3
  ret i8 %i.v
}

declare ptr @l_Std_Tactic_BVDecide_LRAT_Internal_CNF_convertLRAT(ptr noundef) local_unnamed_addr #1

declare ptr @l_Std_Sat_CNF_numLiterals(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @l_Std_Tactic_BVDecide_LRAT_Internal_compactLratChecker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @l_Std_Tactic_BVDecide_LRAT_Internal_instDecidableEqResult(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_Tactic_BVDecide_LRAT_check___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @l_Std_Tactic_BVDecide_LRAT_check(ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #3
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.e = zext i8 %i.a to i64
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = or disjoint i64 %i.f, 1
  %i.h = inttoptr i64 %i.g to ptr
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define ptr @runtime_initialize_Std_Tactic_BVDecide_LRAT_Checker(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_G_runtime_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #3
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_runtime_initialized, align 1
  %i.c = tail call ptr @runtime_initialize_Std_Tactic_BVDecide_LRAT_Internal_Convert(i8 noundef zeroext %0) #3 ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val24 = load i32, ptr %i.d, align 4
  %.mask.i = and i32 %.val24, -16777216
  %i.e = icmp eq i32 %.mask.i, 16777216
  br i1 %i.e, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %i.c, align 4, !tbaa !10   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %i.c, align 4, !tbaa !10
  br label %lean_dec_ref.exit21

bb.g:                                             ; preds = %bb.e
  %.not.i20 = icmp eq i32 %i.f, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #3
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.i = tail call ptr @runtime_initialize_Std_Tactic_BVDecide_LRAT_Internal_LRATCheckerSound(i8 noundef zeroext %0) #3 ; 5 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val23 = load i32, ptr %i.j, align 4
  %.mask.i25 = and i32 %.val23, -16777216
  %i.k = icmp eq i32 %.mask.i25, 16777216
  br i1 %i.k, label %bb.v, label %bb.i

bb.i:                                             ; preds = %lean_dec_ref.exit21
  %i.l = load i32, ptr %i.i, align 4, !tbaa !10   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %i.i, align 4, !tbaa !10
  br label %lean_dec_ref.exit19

bb.k:                                             ; preds = %bb.i
  %.not.i18 = icmp eq i32 %i.l, 0
  br i1 %.not.i18, label %lean_dec_ref.exit19, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #3
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.j, %bb.k, %bb.l
  %i.o = tail call ptr @runtime_initialize_Std_Tactic_BVDecide_LRAT_Internal_CompactLRATChecker(i8 noundef zeroext %0) #3 ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val22 = load i32, ptr %i.p, align 4
  %.mask.i26 = and i32 %.val22, -16777216
  %i.q = icmp eq i32 %.mask.i26, 16777216
  br i1 %i.q, label %bb.v, label %bb.m

bb.m:                                             ; preds = %lean_dec_ref.exit19
  %i.r = load i32, ptr %i.o, align 4, !tbaa !10   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %i.o, align 4, !tbaa !10
  br label %lean_dec_ref.exit17

bb.o:                                             ; preds = %bb.m
  %.not.i16 = icmp eq i32 %i.r, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #3
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.n, %bb.o, %bb.p
  %i.u = tail call ptr @runtime_initialize_Std_Tactic_BVDecide_LRAT_Internal_CompactLRATCheckerSound(i8 noundef zeroext %0) #3 ; 5 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val = load i32, ptr %i.v, align 4
  %.mask.i27 = and i32 %.val, -16777216
  %i.w = icmp eq i32 %.mask.i27, 16777216
  br i1 %i.w, label %bb.v, label %bb.q

bb.q:                                             ; preds = %lean_dec_ref.exit17
  %i.x = load i32, ptr %i.u, align 4, !tbaa !10   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %i.u, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.s:                                             ; preds = %bb.q
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #3
  br label %lean_dec_ref.exit
end_hunk_0
begin_hunk_1_@initialize_Std_Tactic_BVDecide_LRAT_Checker:bb.a
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.e, align 4, !tbaa !10   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !10
  br label %lean_dec_ref.exit34

bb.e:                                             ; preds = %bb.c
  %.not.i33 = icmp eq i32 %i.h, 0
  br i1 %.not.i33, label %lean_dec_ref.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #3
  br label %lean_dec_ref.exit34

lean_dec_ref.exit34:                              ; preds = %bb.d, %bb.e, %bb.f
  %i.k = tail call ptr @initialize_Std_Tactic_BVDecide_LRAT_Internal_LRATCheckerSound(i8 noundef zeroext %0) #3 ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val38 = load i32, ptr %i.l, align 4
  %.mask.i40 = and i32 %.val38, -16777216
  %i.m = icmp eq i32 %.mask.i40, 16777216
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %lean_dec_ref.exit34
  %i.n = load i32, ptr %i.k, align 4, !tbaa !10   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !10
  br label %lean_dec_ref.exit32

bb.i:                                             ; preds = %bb.g
  %.not.i31 = icmp eq i32 %i.n, 0
  br i1 %.not.i31, label %lean_dec_ref.exit32, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #3
  br label %lean_dec_ref.exit32

lean_dec_ref.exit32:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.q = tail call ptr @initialize_Std_Tactic_BVDecide_LRAT_Internal_CompactLRATChecker(i8 noundef zeroext %0) #3 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.val37 = load i32, ptr %i.r, align 4
  %.mask.i41 = and i32 %.val37, -16777216
  %i.s = icmp eq i32 %.mask.i41, 16777216
  br i1 %i.s, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %lean_dec_ref.exit32
  %i.t = load i32, ptr %i.q, align 4, !tbaa !10   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !10
  br label %lean_dec_ref.exit30

bb.m:                                             ; preds = %bb.k
  %.not.i29 = icmp eq i32 %i.t, 0
  br i1 %.not.i29, label %lean_dec_ref.exit30, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #3
  br label %lean_dec_ref.exit30

lean_dec_ref.exit30:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.w = tail call ptr @initialize_Std_Tactic_BVDecide_LRAT_Internal_CompactLRATCheckerSound(i8 noundef zeroext %0) #3 ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val36 = load i32, ptr %i.x, align 4
  %.mask.i42 = and i32 %.val36, -16777216
  %i.y = icmp eq i32 %.mask.i42, 16777216
  br i1 %i.y, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %lean_dec_ref.exit30
  %i.z = load i32, ptr %i.w, align 4, !tbaa !10   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !10
  br label %lean_dec_ref.exit28

bb.q:                                             ; preds = %bb.o
  %.not.i27 = icmp eq i32 %i.z, 0
  br i1 %.not.i27, label %lean_dec_ref.exit28, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #3
  br label %lean_dec_ref.exit28

lean_dec_ref.exit28:                              ; preds = %bb.p, %bb.q, %bb.r
  %i.ac = tail call ptr @runtime_initialize_Std_Tactic_BVDecide_LRAT_Checker(i8 noundef zeroext %0) ; 5 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val35 = load i32, ptr %i.ad, align 4
  %.mask.i43 = and i32 %.val35, -16777216
  %i.ae = icmp eq i32 %.mask.i43, 16777216
  br i1 %i.ae, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %lean_dec_ref.exit28
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !10 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !10
  br label %lean_dec_ref.exit26

bb.u:                                             ; preds = %bb.s
  %.not.i25 = icmp eq i32 %i.af, 0
  br i1 %.not.i25, label %lean_dec_ref.exit26, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #3
  br label %lean_dec_ref.exit26

lean_dec_ref.exit26:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.ai = tail call ptr @meta_initialize_Std_Tactic_BVDecide_LRAT_Checker(i8 zeroext poison) ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val = load i32, ptr %i.aj, align 4
  %.mask.i44 = and i32 %.val, -16777216
  %i.ak = icmp eq i32 %.mask.i44, 16777216
  br i1 %i.ak, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %lean_dec_ref.exit26
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !10 ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.an = add nsw i32 %i.al, -1
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !10
  br label %tailrecurse._crit_edge

bb.y:                                             ; preds = %bb.w
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %tailrecurse._crit_edge, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ai) #3
  br label %tailrecurse._crit_edge

.loopexit:                                        ; preds = %lean_dec_ref.exit26, %lean_dec_ref.exit28, %lean_dec_ref.exit30, %lean_dec_ref.exit32, %lean_dec_ref.exit34, %.lr.ph, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.ac, %lean_dec_ref.exit28 ], [ %i.w, %lean_dec_ref.exit30 ], [ %i.q, %lean_dec_ref.exit32 ], [ %i.k, %lean_dec_ref.exit34 ], [ %i.e, %.lr.ph ], [ %i.ai, %lean_dec_ref.exit26 ]
  ret ptr %.0
}

declare ptr @initialize_Std_Tactic_BVDecide_LRAT_Internal_Convert(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @initialize_Std_Tactic_BVDecide_LRAT_Internal_LRATCheckerSound(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @initialize_Std_Tactic_BVDecide_LRAT_Internal_CompactLRATChecker(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @initialize_Std_Tactic_BVDecide_LRAT_Internal_CompactLRATCheckerSound(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @lean_nat_big_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_big_usize_to_nat(i64 noundef) local_unnamed_addr #1

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #1

declare void @lean_inc_heartbeat() local_unnamed_addr #1

declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @lean_internal_panic_out_of_memory() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 4, !"probe-stack", !"inline-asm"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"", !6, i64 0, !6, i64 4, !6, i64 6, !6, i64 7}
!10 = !{!9, !6, i64 0}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
