Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/FileWorker?download=true
inline.NumInlined: 9223
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__1:bb.a
  br label %.thread185

bb.bp:                                            ; preds = %bb.bn
  %.not.i128 = icmp eq i32 %i.dg, 0
  br i1 %.not.i128, label %.thread185, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.y) #8
  br label %.thread185

.thread186:                                       ; preds = %lean_nat_le.exit151.thread202, %lean_nat_le.exit151.thread
  %i.dj = phi i8 [ %i.dc, %lean_nat_le.exit151.thread202 ], [ %i.df, %lean_nat_le.exit151.thread ] ; 2 uses
  %i.dk = ptrtoint ptr %i.cn to i64
  %i.dl = and i64 %i.dk, 1
  %.not211 = icmp eq i64 %i.dl, 0
  br i1 %.not211, label %lean_nat_lt.exit144, label %lean_nat_lt.exit144.thread, !prof !19

lean_nat_lt.exit144.thread:                       ; preds = %.thread186
  %i.dm = icmp ult ptr %i.y, %i.cn
  br i1 %i.dm, label %bb.bt, label %.thread185

lean_nat_lt.exit144:                              ; preds = %.thread186
  %i.dn = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.y, ptr noundef %i.cn) #8
  br i1 %i.dn, label %bb.bt, label %.thread185

bb.br:                                            ; preds = %lean_nat_le.exit
  %i.do = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.y, ptr noundef %i.cn) #8 ; 3 uses
  %i.dp = load i32, ptr %i.y, align 4, !tbaa !12  ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %.split242, label %bb.bs, !prof !13

.split242:                                        ; preds = %bb.br
  %i.dr = add nsw i32 %i.dp, -1
  store i32 %i.dr, ptr %i.y, align 4, !tbaa !12
  br i1 %i.do, label %bb.bt, label %.thread185

bb.bs:                                            ; preds = %bb.br
  %.not.i130 = icmp eq i32 %i.dp, 0
  br i1 %.not.i130, label %lean_dec.exit, label %.split241

.split241:                                        ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.y) #8
  br i1 %i.do, label %bb.bt, label %.thread185

lean_dec.exit:                                    ; preds = %bb.bs
  br i1 %i.do, label %bb.bt, label %.thread185

bb.bt:                                            ; preds = %.split242, %lean_nat_lt.exit144, %.split241, %lean_nat_lt.exit144.thread, %lean_dec.exit
  %i.ds = ptrtoint ptr %i.i to i64
  %i.dt = and i64 %i.ds, 1
  %.not.i95 = icmp eq i64 %i.dt, 0
  br i1 %.not.i95, label %bb.bu, label %.sink.split

bb.bu:                                            ; preds = %bb.bt
  %.val.i.i176 = load i32, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.du = icmp sgt i32 %.val.i.i176, 0
  br i1 %i.du, label %bb.bv, label %bb.bw, !prof !13

bb.bv:                                            ; preds = %bb.bu
  %i.dv = add nuw i32 %.val.i.i176, 1
  store i32 %i.dv, ptr %i.i, align 4, !tbaa !12
  br label %.sink.split

bb.bw:                                            ; preds = %bb.bu
  %.not.i.i177 = icmp eq i32 %.val.i.i176, 0
  br i1 %.not.i.i177, label %.sink.split, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.dw = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bt, %lean_dec.exit112, %bb.bd, %bb.be, %bb.bf, %bb.an, %bb.ap, %bb.aq, %bb.ar
  %i.dx = tail call ptr @l_Lean_PersistentArray_push___redArg(ptr noundef %.082215, ptr noundef %i.i) #8
  br label %bb.by

bb.by:                                            ; preds = %.sink.split, %.thread185
  %.2 = phi ptr [ %.082215, %.thread185 ], [ %i.dx, %.sink.split ] ; 2 uses
  %i.dy = add i64 %.080216, 1                     ; 2 uses
  %.not = icmp eq i64 %i.dy, %3
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.by, %bb.a
  %.082.lcssa = phi ptr [ %4, %bb.a ], [ %.2, %bb.by ]
  ret ptr %.082.lcssa
}

declare ptr @l_Lean_Lsp_DiagnosticWith_fullRange___redArg(ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_PersistentArray_push___redArg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val22 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit14

bb.c:                                             ; preds = %bb.a
  %.not.i15 = icmp eq i32 %i.b, 0
  br i1 %.not.i15, label %lean_dec.exit14, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !15
  %i.f = load i32, ptr %3, align 8, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit14
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !12
  br label %lean_dec.exit12

bb.f:                                             ; preds = %lean_dec.exit14
  %.not.i16 = icmp eq i32 %i.f, 0
  br i1 %.not.i16, label %lean_dec.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__1(ptr noundef %0, ptr noundef %1, i64 noundef %.val22, i64 noundef %.val, ptr noundef %4)
  %i.j = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec.exit12
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit21

bb.i:                                             ; preds = %lean_dec.exit12
  %.not.i20 = icmp eq i32 %i.j, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.m = ptrtoint ptr %0 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec_ref.exit21
  %i.o = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i18 = icmp eq i32 %i.o, 0
  br i1 %.not.i18, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.m, %bb.l, %lean_dec_ref.exit21
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__2(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i63 = icmp eq i64 %i.b, 0
  br i1 %.not.i63, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i64 = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val62 = load i64, ptr %i.i, align 8, !tbaa !15
  %.mask90 = and i64 %.val62, 9223372036854775807 ; 3 uses
  %.not89 = icmp eq i64 %.mask90, 0
  br i1 %.not89, label %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__0_spec__1.exit, label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %lean_obj_tag.exit
  %3 = icmp eq i32 %.0.i64, 0
  br i1 %3, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %lean_nat_lt.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.015.i6994 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.d ] ; 2 uses
  %.017.i6893 = phi ptr [ %2, %.lr.ph ], [ %i.m, %bb.d ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.015.i6994
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = tail call ptr @l___private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__2(ptr noundef %0, ptr noundef %i.l, ptr noundef %.017.i6893), !inline_history !29 ; 2 uses
  %i.n = add nuw nsw i64 %.015.i6994, 1           ; 2 uses
  %.not91 = icmp eq i64 %i.n, %.mask90
  br i1 %.not91, label %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__0_spec__1.exit, label %bb.d

bb.e:                                             ; preds = %lean_nat_lt.exit
  %i.o = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__1(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef 0, i64 noundef %.mask90, ptr noundef %2)
  br label %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__0_spec__1.exit

l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__0_spec__1.exit: ; preds = %bb.d, %lean_obj_tag.exit, %bb.e
  %.4 = phi ptr [ %i.o, %bb.e ], [ %2, %lean_obj_tag.exit ], [ %i.m, %bb.d ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__0_spec__1(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not24 = icmp eq i64 %2, %3
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01526 = phi i64 [ %2, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %.01725 = phi ptr [ %4, %.lr.ph ], [ %i.d, %bb.b ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01526
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = tail call ptr @l___private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__2(ptr noundef %0, ptr noundef %i.c, ptr noundef %.01725) ; 2 uses
  %i.e = add i64 %.01526, 1                       ; 2 uses
  %.not = icmp eq i64 %i.e, %3
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.017.lcssa = phi ptr [ %4, %bb.a ], [ %i.d, %bb.b ]
  ret ptr %.017.lcssa
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__0_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val22 = load i64, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit14

bb.c:                                             ; preds = %bb.a
  %.not.i15 = icmp eq i32 %i.b, 0
  br i1 %.not.i15, label %lean_dec.exit14, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.f = load i32, ptr %3, align 8, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit14
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !12
  br label %lean_dec.exit12

bb.f:                                             ; preds = %lean_dec.exit14
  %.not.i16 = icmp eq i32 %i.f, 0
  br i1 %.not.i16, label %lean_dec.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.g, %bb.f, %bb.e
  %.not24.i = icmp eq i64 %.val22, %.val
  br i1 %.not24.i, label %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__0_spec__1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %lean_dec.exit12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.01526.i = phi i64 [ %.val22, %.lr.ph.i ], [ %i.m, %bb.h ] ; 2 uses
  %.01725.i = phi ptr [ %4, %.lr.ph.i ], [ %i.l, %bb.h ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01526.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.l = tail call ptr @l___private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__2(ptr noundef %0, ptr noundef %i.k, ptr noundef %.01725.i), !inline_history !29 ; 2 uses
  %i.m = add i64 %.01526.i, 1                     ; 2 uses
  %.not.i23 = icmp eq i64 %i.m, %.val
  br i1 %.not.i23, label %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__0_spec__1.exit, label %bb.h

l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__0_spec__1.exit: ; preds = %bb.h, %lean_dec.exit12
  %.017.lcssa.i = phi ptr [ %4, %lean_dec.exit12 ], [ %i.l, %bb.h ]
  %i.n = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__0_spec__1.exit
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit21

bb.j:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__0_spec__1.exit
  %.not.i20 = icmp eq i32 %i.n, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.i, %bb.j, %bb.k
  %i.q = ptrtoint ptr %0 to i64
  %i.r = and i64 %i.q, 1
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.l, label %lean_dec.exit

bb.l:                                             ; preds = %lean_dec_ref.exit21
  %i.s = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.n:                                             ; preds = %bb.l
  %.not.i18 = icmp eq i32 %i.s, 0
  br i1 %.not.i18, label %lean_dec.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.o, %bb.n, %bb.m, %lean_dec_ref.exit21
  ret ptr %.017.lcssa.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__2___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__2(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit8

bb.c:                                             ; preds = %bb.a
  %.not.i7 = icmp eq i32 %i.b, 0
  br i1 %.not.i7, label %lean_dec_ref.exit8, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit8

lean_dec_ref.exit8:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.e = ptrtoint ptr %0 to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.e, label %lean_dec.exit

bb.e:                                             ; preds = %lean_dec_ref.exit8
  %i.g = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.g:                                             ; preds = %bb.e
  %.not.i6 = icmp eq i32 %i.g, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.h, %bb.g, %bb.f, %lean_dec_ref.exit8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_Server_FileWorker_handleGetInteractiveDiagnosticsRequest_spec__0_spec__0(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i127 = icmp eq i64 %i.b, 0
  br i1 %.not.i127, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.e, align 4
end_hunk_0
