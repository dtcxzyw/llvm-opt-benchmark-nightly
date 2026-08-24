Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3PreProc?download=true
inline.NumInlined: 6861
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z25V3PreLexpush_buffer_stateP15yy_buffer_state:bb.a

bb.f:                                             ; preds = %bb.b
  %i.d = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18 ; 3 uses
  %i.e = load i64, ptr @_ZL19yy_buffer_stack_max, align 8, !tbaa !18 ; 3 uses
  %i.f = add i64 %i.e, -1
  %.not10.i = icmp ult i64 %i.d, %i.f
  br i1 %.not10.i, label %_ZL27V3PreLexensure_buffer_stackv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = add i64 %i.e, 8                          ; 2 uses
  %i.h = shl i64 %i.g, 3
  %i.i = tail call noalias noundef ptr @realloc(ptr noundef nonnull %i.b, i64 noundef %i.h) #43 ; 4 uses
  store ptr %i.i, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15
  %.not11.i = icmp eq ptr %i.i, null
  br i1 %.not11.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.241) #42
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i8 0, i64 64, i1 false)
  store i64 %i.g, ptr @_ZL19yy_buffer_stack_max, align 8, !tbaa !18
  br label %_ZL27V3PreLexensure_buffer_stackv.exit

_ZL27V3PreLexensure_buffer_stackv.exit:           ; preds = %bb.i, %bb.f, %bb.e
  %i.k = phi i64 [ 0, %bb.e ], [ %i.d, %bb.f ], [ %i.d, %bb.i ] ; 3 uses
  %i.l = phi ptr [ %i.c, %bb.e ], [ %i.b, %bb.f ], [ %i.i, %bb.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge8, label %bb.j

bb.j:                                             ; preds = %_ZL27V3PreLexensure_buffer_stackv.exit
  %i.p = load i8, ptr @_ZL12yy_hold_char, align 1, !tbaa !29
  %i.q = load ptr, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9 ; 2 uses
  store i8 %i.p, ptr %i.q, align 1, !tbaa !29
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.q, ptr %i.s, align 8, !tbaa !27
  %i.t = load i32, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  store i32 %i.t, ptr %i.u, align 4, !tbaa !26
  %i.v = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.v, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18
  br label %.critedge8

.critedge8:                                       ; preds = %_ZL27V3PreLexensure_buffer_stackv.exit, %bb.j
  %i.w = phi i64 [ %i.v, %bb.j ], [ %i.k, %_ZL27V3PreLexensure_buffer_stackv.exit ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.w
  store ptr %0, ptr %i.x, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !26
  store i32 %i.z, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27 ; 3 uses
  store ptr %i.ab, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  store ptr %i.ab, ptr @V3PreLextext, align 8, !tbaa !9
  %i.ac = load ptr, ptr %0, align 8, !tbaa !28
  store ptr %i.ac, ptr @V3PreLexin, align 8, !tbaa !13
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !29
  store i8 %i.ad, ptr @_ZL12yy_hold_char, align 1, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.critedge8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @_Z24V3PreLexpop_buffer_statev() local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %.not7.i = icmp eq i32 %i.g, 0
  br i1 %.not7.i, label %_Z22V3PreLex_delete_bufferP15yy_buffer_state.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.i) #44
  br label %_Z22V3PreLex_delete_bufferP15yy_buffer_state.exit

_Z22V3PreLex_delete_bufferP15yy_buffer_state.exit: ; preds = %.critedge.i, %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #44
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %.not6 = icmp eq i64 %i.b, 0
  br i1 %.not6, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_Z22V3PreLex_delete_bufferP15yy_buffer_state.exit
  %i.j = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.j, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 4 uses
  %i.k = icmp eq ptr %.pre, null
  br i1 %i.k, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !26
  store i32 %i.m, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 3 uses
  store ptr %i.o, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  store ptr %i.o, ptr @V3PreLextext, align 8, !tbaa !9
  %i.p = load ptr, ptr %.pre, align 8, !tbaa !28
  store ptr %i.p, ptr @V3PreLexin, align 8, !tbaa !13
  %i.q = load i8, ptr %i.o, align 1, !tbaa !29
  store i8 %i.q, ptr @_ZL12yy_hold_char, align 1, !tbaa !29
  br label %.critedge

.critedge:                                        ; preds = %_Z22V3PreLex_delete_bufferP15yy_buffer_state.exit, %bb.a, %bb.b, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_Z20V3PreLex_scan_bufferPcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -2                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %.not23 = icmp eq i8 %i.g, 0
  br i1 %.not23, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias noundef dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #41 ; 13 uses
  %.not24 = icmp eq ptr %i.h, null
  br i1 %.not24, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.36) #42
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = trunc i64 %i.b to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %i.i, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.k, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %0, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 0, ptr %i.m, align 8, !tbaa !25
  store ptr null, ptr %i.h, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %i.i, ptr %i.n, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 0, ptr %i.o, align 4, !tbaa !781
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 1, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 0, ptr %i.q, align 4, !tbaa !711
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i32 0, ptr %i.r, align 8, !tbaa !707
  tail call void @_Z25V3PreLex_switch_to_bufferP15yy_buffer_state(ptr noundef nonnull %i.h)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.f
  %.0 = phi ptr [ %i.h, %bb.f ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_Z20V3PreLex_scan_stringPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #46
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call noundef ptr @_Z19V3PreLex_scan_bytesPKci(ptr noundef nonnull %0, i32 noundef %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_Z19V3PreLex_scan_bytesPKci(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = add nsw i32 %1, 2
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias noundef ptr @malloc(i64 noundef %i.b) #41 ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not26 = icmp eq i32 %1, 0
  br i1 %.not26, label %._crit_edge.thread, label %._crit_edge

._crit_edge.thread:                               ; preds = %.preheader
  %i.d = getelementptr i8, ptr %i.c, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !29
  store i8 0, ptr %i.c, align 1, !tbaa !29
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.37) #42
  unreachable

._crit_edge:                                      ; preds = %.preheader
  %2 = zext i32 %1 to i64                         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %0, i64 %2, i1 false), !tbaa !29
  %i.e = getelementptr i8, ptr %i.c, i64 %2       ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 1
  store i8 0, ptr %i.f, align 1, !tbaa !29
  store i8 0, ptr %i.e, align 1, !tbaa !29
  %i.g = icmp ugt i32 %1, -3
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.h = tail call noalias noundef dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #41 ; 13 uses
  %.not24.i = icmp eq ptr %i.h, null
  br i1 %.not24.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.36) #42
  unreachable

bb.e:                                             ; preds = %._crit_edge
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.38) #42
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %1, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.c, ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !25
  store ptr null, ptr %i.h, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %1, ptr %i.m, align 4, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 0, ptr %i.n, align 4, !tbaa !781
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 1, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 0, ptr %i.p, align 4, !tbaa !711
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i32 0, ptr %i.q, align 8, !tbaa !707
  tail call void @_Z25V3PreLex_switch_to_bufferP15yy_buffer_state(ptr noundef nonnull %i.h)
  store i32 1, ptr %i.l, align 8, !tbaa !25
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_Z18V3PreLexget_linenov() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @V3PreLexlineno, align 4, !tbaa !12
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_Z14V3PreLexget_inv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @V3PreLexin, align 8, !tbaa !13
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_Z15V3PreLexget_outv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @V3PreLexout, align 8, !tbaa !13
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_Z16V3PreLexget_lengv() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @V3PreLexleng, align 4, !tbaa !12
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_Z16V3PreLexget_textv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @V3PreLextext, align 8, !tbaa !9
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z18V3PreLexset_linenoi(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  store i32 %0, ptr @V3PreLexlineno, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z14V3PreLexset_inP8_IO_FILE(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  store ptr %0, ptr @V3PreLexin, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z15V3PreLexset_outP8_IO_FILE(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  store ptr %0, ptr @V3PreLexout, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_Z17V3PreLexget_debugv() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @V3PreLex_flex_debug, align 4, !tbaa !12
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z17V3PreLexset_debugi(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  store i32 %0, ptr @V3PreLex_flex_debug, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @_Z19V3PreLexlex_destroyv() local_unnamed_addr #18 {
bb.a:
  %.pr = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15 ; 5 uses
  %.not7 = icmp eq ptr %.pr, null
  br i1 %.not7, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pr, i64 %.pre
  %.pre10 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 4 uses
  %i.a = icmp eq ptr %.pre10, null
  br i1 %i.a, label %.critedge, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.preheader
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %.pr, i64 %.pre
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %.pre10, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %.not7.i = icmp eq i32 %i.d, 0
  br i1 %.not7.i, label %_Z24V3PreLexpop_buffer_statev.exit, label %bb.b

bb.b:                                             ; preds = %.critedge.i
  %i.e = getelementptr inbounds nuw i8, ptr %.pre10, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.f) #44
  %.pre11 = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15
  %.pre12 = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18
  br label %_Z24V3PreLexpop_buffer_statev.exit

_Z24V3PreLexpop_buffer_statev.exit:               ; preds = %.critedge.i, %bb.b
  %i.g = phi i64 [ %.pre, %.critedge.i ], [ %.pre12, %bb.b ]
  %i.h = phi ptr [ %.pr, %.critedge.i ], [ %.pre11, %bb.b ] ; 2 uses
  tail call void @free(ptr noundef nonnull %.pre10) #44
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  store ptr null, ptr %i.i, align 8, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.preheader, %_Z24V3PreLexpop_buffer_statev.exit, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.h, %_Z24V3PreLexpop_buffer_statev.exit ], [ %.pr, %.lr.ph.preheader ]
  tail call void @free(ptr noundef %.lcssa) #44
  %i.j = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  tail call void @free(ptr noundef %i.j) #44
  store ptr null, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15
  store i64 0, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18
  store i64 0, ptr @_ZL19yy_buffer_stack_max, align 8, !tbaa !18
  store ptr null, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  store i1 false, ptr @_ZL7yy_init, align 4
  store i32 0, ptr @_ZL8yy_start, align 4, !tbaa !12
  store i32 0, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12
  store i32 0, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  store ptr null, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  store ptr null, ptr @V3PreLexin, align 8, !tbaa !13
  store ptr null, ptr @V3PreLexout, align 8, !tbaa !13
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define dso_local noalias noundef ptr @_Z15V3PreLexreallocPvm(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #43
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8V3PreLex15pushStateDefArgEi(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12 ; 3 uses
  %i.b = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12 ; 2 uses
  %.not.i = icmp slt i32 %i.a, %i.b
  %.pre.i = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729 ; 3 uses
  br i1 %.not.i, label %_ZL13yy_push_statei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, 25                     ; 2 uses
  store i32 %i.c, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  %i.d = sext i32 %i.c to i64
end_hunk_0
