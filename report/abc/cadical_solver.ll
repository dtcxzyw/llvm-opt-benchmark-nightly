Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_solver?download=true
inline.NumInlined: 387
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !177
  %i.c = icmp eq i32 %i.b, 16
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 16, ptr %i.a, align 4, !tbaa !177
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.f = tail call noundef i32 @_ZN7CaDiCaL8External5solveEb(ptr noundef nonnull align 8 dereferenceable(616) %i.e, i1 noundef zeroext %1) #19 ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !177  ; 3 uses
  switch i32 %i.f, label %bb.f [
    i32 10, label %bb.d
    i32 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %i.g, 32
  br i1 %i.h, label %bb.g, label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %i.g, 64
  br i1 %i.i, label %bb.g, label %.sink.split

bb.f:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.g, 256
  br i1 %i.j, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.d
  %.sink = phi i32 [ 32, %bb.d ], [ 64, %bb.e ], [ 256, %bb.f ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !177
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e, %bb.f, %bb.d
  ret i32 %i.f
}

declare noundef i32 @_ZN7CaDiCaL8External5solveEb(ptr noundef nonnull align 8 dereferenceable(616), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN7CaDiCaL6Solver5solveEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7CaDiCaL6Solver26transition_to_steady_stateEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !177
  %i.c = icmp eq i32 %i.b, 16
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 16, ptr %i.a, align 4, !tbaa !177
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.f = tail call noundef i32 @_ZN7CaDiCaL8External5solveEb(ptr noundef nonnull align 8 dereferenceable(616) %i.e, i1 noundef zeroext false) #19 ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !177  ; 3 uses
  switch i32 %i.f, label %bb.f [
    i32 10, label %bb.d
    i32 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %i.g, 32
  br i1 %i.h, label %_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb.exit, label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %i.g, 64
  br i1 %i.i, label %_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb.exit, label %.sink.split.i

bb.f:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.g, 256
  br i1 %i.j, label %_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i = phi i32 [ 32, %bb.d ], [ 64, %bb.e ], [ 256, %bb.f ]
  store i32 %.sink.i, ptr %i.a, align 4, !tbaa !177
  br label %_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb.exit

_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb.exit: ; preds = %bb.d, %bb.e, %bb.f, %.sink.split.i
  %.b = load i1, ptr @_ZN7CaDiCaLL32tracing_nb_lidrup_env_var_methodE, align 1
  br i1 %.b, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  tail call void @_ZN7CaDiCaL8Internal11flush_traceEb(ptr noundef nonnull align 8 dereferenceable(7296) %i.l, i1 noundef zeroext true) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb.exit
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN7CaDiCaL6Solver8simplifyEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal5limitEPKci(ptr noundef nonnull align 8 dereferenceable(7296) %i.b, ptr noundef nonnull @.str.8, i32 noundef %1) #19 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4076 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !278
  store i32 0, ptr %i.e, align 4, !tbaa !278
  tail call void @_ZN7CaDiCaL6Solver26transition_to_steady_stateEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !177
  %i.i = icmp eq i32 %i.h, 16
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 16, ptr %i.g, align 4, !tbaa !177
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.l = tail call noundef i32 @_ZN7CaDiCaL8External5solveEb(ptr noundef nonnull align 8 dereferenceable(616) %i.k, i1 noundef zeroext true) #19 ; 2 uses
  %i.m = load i32, ptr %i.g, align 4, !tbaa !177  ; 3 uses
  switch i32 %i.l, label %bb.f [
    i32 10, label %bb.d
    i32 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %i.m, 32
  br i1 %i.n, label %_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb.exit, label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.m, 64
  br i1 %i.o, label %_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb.exit, label %.sink.split.i

bb.f:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %i.m, 256
  br i1 %i.p, label %_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i = phi i32 [ 32, %bb.d ], [ 64, %bb.e ], [ 256, %bb.f ]
  store i32 %.sink.i, ptr %i.g, align 4, !tbaa !177
  br label %_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb.exit

_ZN7CaDiCaL6Solver37call_external_solve_and_check_resultsEb.exit: ; preds = %bb.d, %bb.e, %bb.f, %.sink.split.i
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4076
  store i32 %i.f, ptr %i.r, align 4, !tbaa !278
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN7CaDiCaL6Solver3valEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load i8, ptr %i.c, align 8, !tbaa !279, !range !204, !noundef !205
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8External6extendEv(ptr noundef nonnull align 8 dereferenceable(616) %i.b) #19
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !176
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  tail call void @_ZN7CaDiCaL8External12conclude_satEv(ptr noundef nonnull align 8 dereferenceable(616) %i.f) #19
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !176  ; 4 uses
  %i.h = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !198
  %.not.i = icmp sgt i32 %i.h, %i.j
  br i1 %.not.i, label %_ZNK7CaDiCaL8External4ivalEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.h to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !281
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !280  ; 2 uses
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = shl nsw i64 %i.t, 3
  %i.v = zext i32 %i.p to i64
  %i.w = add nsw i64 %i.u, %i.v
  %i.x = icmp ugt i64 %i.w, %i.k
  br i1 %i.x, label %bb.e, label %_ZNK7CaDiCaL8External4ivalEi.exit

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i32 %i.h, 6
  %.zext.i = zext nneg i32 %i.y to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.zext.i
  %i.aa = and i64 %i.k, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !218
  %i.ad = and i64 %i.ac, %i.ab
  %i.ae = icmp ne i64 %i.ad, 0
  br label %_ZNK7CaDiCaL8External4ivalEi.exit

_ZNK7CaDiCaL8External4ivalEi.exit:                ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.a = phi i1 [ %i.ae, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %i.af = icmp slt i32 %1, 0
  %spec.select.i = xor i1 %i.af, %.0.i.a
  %i.ag = sub nsw i32 0, %1
  %i.ah = select i1 %spec.select.i, i32 %1, i32 %i.ag
  ret i32 %i.ah
}

declare void @_ZN7CaDiCaL8External6extendEv(ptr noundef nonnull align 8 dereferenceable(616)) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8External12conclude_satEv(ptr noundef nonnull align 8 dereferenceable(616)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL6Solver4flipEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = tail call noundef zeroext i1 @_ZN7CaDiCaL8External4flipEi(ptr noundef nonnull align 8 dereferenceable(616) %i.b, i32 noundef %1) #19
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN7CaDiCaL8External4flipEi(ptr noundef nonnull align 8 dereferenceable(616), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL6Solver9flippableEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = tail call noundef zeroext i1 @_ZN7CaDiCaL8External9flippableEi(ptr noundef nonnull align 8 dereferenceable(616) %i.b, i32 noundef %1) #19
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN7CaDiCaL8External9flippableEi(ptr noundef nonnull align 8 dereferenceable(616), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL6Solver6failedEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = tail call noundef zeroext i1 @_ZN7CaDiCaL8External6failedEi(ptr noundef nonnull align 8 dereferenceable(616) %i.b, i32 noundef %1) #19
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN7CaDiCaL8External6failedEi(ptr noundef nonnull align 8 dereferenceable(616), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL6Solver17constraint_failedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = tail call noundef zeroext i1 @_ZN7CaDiCaL8External17failed_constraintEv(ptr noundef nonnull align 8 dereferenceable(616) %i.b) #19
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN7CaDiCaL8External17failed_constraintEv(ptr noundef nonnull align 8 dereferenceable(616)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -128, 129) i32 @_ZNK7CaDiCaL6Solver5fixedEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176  ; 3 uses
  %i.c = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !198
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %_ZNK7CaDiCaL8External5fixedEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.h = zext nneg i32 %i.c to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !212
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.h
  %i.k = load i32, ptr %i.j, align 4, !tbaa !203  ; 4 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZNK7CaDiCaL8External5fixedEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i32 %1, 0
  %i.m = sub nsw i32 0, %i.k
  %spec.select.i = select i1 %i.l, i32 %i.m, i32 %i.k
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !282  ; 2 uses
  %i.o = tail call i32 @llvm.abs.i32(i32 %i.k, i1 true)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 472
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !283
  %i.r = zext nneg i32 %i.o to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !201   ; 2 uses
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = sext i8 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 712
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !284
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.r
  %i.y = load i32, ptr %i.x, align 8, !tbaa !286
  %.not9.i.i = icmp eq i32 %i.y, 0
  %spec.select.i.i = select i1 %.not9.i.i, i32 %i.u, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit.i

_ZN7CaDiCaL8Internal5fixedEi.exit.i:              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ 0, %bb.c ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %i.z = icmp slt i32 %spec.select.i, 0
  %i.aa = sub nsw i32 0, %.0.i.i
  %spec.select10.i.i = select i1 %i.z, i32 %i.aa, i32 %.0.i.i
  br label %_ZNK7CaDiCaL8External5fixedEi.exit

_ZNK7CaDiCaL8External5fixedEi.exit:               ; preds = %bb.a, %bb.b, %_ZN7CaDiCaL8Internal5fixedEi.exit.i
  %.1.i = phi i32 [ 0, %bb.a ], [ %spec.select10.i.i, %_ZN7CaDiCaL8Internal5fixedEi.exit.i ], [ 0, %bb.b ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL6Solver5phaseEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  tail call void @_ZN7CaDiCaL8External5phaseEi(ptr noundef nonnull align 8 dereferenceable(616) %i.b, i32 noundef %1) #19
  ret void
}

declare void @_ZN7CaDiCaL8External5phaseEi(ptr noundef nonnull align 8 dereferenceable(616), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL6Solver7unphaseEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  tail call void @_ZN7CaDiCaL8External7unphaseEi(ptr noundef nonnull align 8 dereferenceable(616) %i.b, i32 noundef %1) #19
  ret void
}

declare void @_ZN7CaDiCaL8External7unphaseEi(ptr noundef nonnull align 8 dereferenceable(616), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL6Solver9terminateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  tail call void @_ZN7CaDiCaL8External9terminateEv(ptr noundef nonnull align 8 dereferenceable(616) %i.b) #19
  ret void
}

declare void @_ZN7CaDiCaL8External9terminateEv(ptr noundef nonnull align 8 dereferenceable(616)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL6Solver18connect_terminatorEPNS_10TerminatorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr %1, ptr %i.c, align 8, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL6Solver21disconnect_terminatorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr null, ptr %i.c, align 8, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL6Solver15connect_learnerEPNS_7LearnerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store ptr %1, ptr %i.c, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL6Solver18disconnect_learnerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store ptr null, ptr %i.c, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL6Solver22connect_fixed_listenerEPNS_23FixedAssignmentListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store ptr %1, ptr %i.c, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL6Solver25disconnect_fixed_listenerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store ptr null, ptr %i.c, align 8, !tbaa !221
  ret void
end_hunk_0
