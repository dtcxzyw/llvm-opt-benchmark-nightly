inline.NumInlined: 6860
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
  %i.a = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12 ; 2 uses
  %i.b = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12 ; 2 uses
  %.not.i = icmp slt i32 %i.a, %i.b
  %.pre.i = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729 ; 3 uses
  br i1 %.not.i, label %_ZL13yy_push_statei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, 25                     ; 2 uses
  store i32 %i.c, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  %i.d = sext i32 %i.c to i64
end_hunk_0
begin_hunk_1_@_ZN8V3PreLex10inputToLexEPcm:bb.a
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = icmp ne ptr %i.aa, null
  %.neg.i.i = sext i1 %i.ah to i64
  %i.ai = add nsw i64 %i.ag, %.neg.i.i
  %i.aj = shl nsw i64 %i.ai, 4
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !793
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !794
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 5
  %i.ar = add nsw i64 %i.aj, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !795
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !793
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5
  %i.az = add nsw i64 %i.ar, %i.ay
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %i.az) ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !734
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !796 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #42
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !803
  %.not.i1.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bg)
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !734
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef signext i8 %i.bn(ptr noundef nonnull align 8 dereferenceable(570) %i.bg, i8 noundef signext 10), !inline_history !808
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.bk, %bb.e ], [ %i.bo, %bb.f ]
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i8 noundef signext %.0.i.i.i)
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) ; 0 uses
  tail call void @_ZN8V3PreLex9dumpStackEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZN8V3PreLex10curStreampEv.exit
  %.not124 = icmp eq i64 %2, 0
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %bb.g
  %.044 = phi ptr [ %i.r, %bb.g ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ] ; 6 uses
  br i1 %.not124, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.044, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %.044, i64 32 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.044, i64 48 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.044, i64 40 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.044, i64 56 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.041121 = phi i64 [ 0, %.lr.ph ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 4 uses
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !793
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !793
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !36, !noalias !809 ; 2 uses
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !44, !noalias !809
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.k, label %_ZN8V3PreLex10curStreampEv.exit57

bb.k:                                             ; preds = %bb.j
  %i.ck = load ptr, ptr %i.br, align 8, !tbaa !45, !noalias !809
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !46
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 512
  br label %_ZN8V3PreLex10curStreampEv.exit57

_ZN8V3PreLex10curStreampEv.exit57:                ; preds = %bb.j, %bb.k
  %i.co = phi ptr [ %i.cn, %bb.k ], [ %i.ch, %bb.j ]
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !47
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !793, !noalias !812 ; 2 uses
  store ptr %i.bs, ptr %3, align 8, !tbaa !263
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !128 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !264 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #44
  store i64 %i.cv, ptr %i.d, align 8, !tbaa !18
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN8V3PreLex10curStreampEv.exit57
  %i.cx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.cx, ptr %3, align 8, !tbaa !128
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !18
  store i64 %i.cy, ptr %i.bs, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN8V3PreLex10curStreampEv.exit57
  %i.cz = phi ptr [ %i.cx, %.noexc.i ], [ %i.bs, %_ZN8V3PreLex10curStreampEv.exit57 ] ; 2 uses
  switch i64 %i.cv, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.da = load i8, ptr %i.ct, align 1, !tbaa !29
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.l, %bb.m
  %i.db = load i64, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  store i64 %i.db, ptr %i.bt, align 8, !tbaa !264
  %i.dc = load ptr, ptr %3, align 8, !tbaa !128
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  store i8 0, ptr %i.dd, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  %i.de = load ptr, ptr %i.ca, align 8, !tbaa !815 ; 4 uses
  %i.df = load ptr, ptr %i.cb, align 8, !tbaa !816
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -32
  %.not.i = icmp eq ptr %i.de, %i.dg
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !128 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 3 uses
  %i.dj = icmp eq ptr %i.dh, %i.di                ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !29
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #45
  %.pre.i = load ptr, ptr %i.ca, align 8, !tbaa !815
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dm = phi ptr [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.de, %bb.n ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9pop_frontEv.exit

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  br i1 %i.dj, label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_pop_front_auxEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.do = load i64, ptr %i.di, align 8, !tbaa !29
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dp) #45
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_pop_front_auxEv.exit.i

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_pop_front_auxEv.exit.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dq = load ptr, ptr %i.cc, align 8, !tbaa !817
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef 512) #45
  %i.dr = load ptr, ptr %i.cd, align 8, !tbaa !818
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.cd, align 8, !tbaa !792
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !819 ; 3 uses
  store ptr %i.dt, ptr %i.cc, align 8, !tbaa !794
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 512
  store ptr %i.du, ptr %i.cb, align 8, !tbaa !795
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9pop_frontEv.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9pop_frontEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_pop_front_auxEv.exit.i
  %storemerge.i = phi ptr [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dt, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_pop_front_auxEv.exit.i ]
  store ptr %storemerge.i, ptr %i.ca, align 8, !tbaa !815
  %i.dv = load i64, ptr %i.bt, align 8, !tbaa !264 ; 3 uses
  %i.dw = sub nuw i64 %2, %.041121                ; 5 uses
  %i.dx = icmp ugt i64 %i.dv, %i.dw
  br i1 %i.dx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9pop_frontEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  store ptr %i.bu, ptr %4, align 8, !tbaa !263, !alias.scope !820
  %i.dy = load ptr, ptr %3, align 8, !tbaa !128, !noalias !820
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw ; 2 uses
  %i.ea = sub nuw i64 %i.dv, %i.dw                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #44, !noalias !820
  store i64 %i.ea, ptr %i.c, align 8, !tbaa !18, !noalias !820
  %i.eb = icmp ugt i64 %i.ea, 15
  br i1 %i.eb, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ec = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc58 unwind label %bb.w   ; 2 uses

.noexc58:                                         ; preds = %.noexc10.i.i
  store ptr %i.ec, ptr %4, align 8, !tbaa !128, !alias.scope !820
  %i.ed = load i64, ptr %i.c, align 8, !tbaa !18, !noalias !820
  store i64 %i.ed, ptr %i.bu, align 8, !tbaa !29, !alias.scope !820
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ee = phi ptr [ %i.ec, %.noexc58 ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.ea, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.ef = load i8, ptr %i.dz, align 1, !tbaa !29
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !29
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %i.dz, i64 %i.ea, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i
  %i.eg = load i64, ptr %i.c, align 8, !tbaa !18, !noalias !820 ; 2 uses
  store i64 %i.eg, ptr %i.bv, align 8, !tbaa !264, !alias.scope !820
  %i.eh = load ptr, ptr %4, align 8, !tbaa !128, !alias.scope !820
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  store i8 0, ptr %i.ei, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44, !noalias !820
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.dw, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.r
  %i.ej = load ptr, ptr %i.ca, align 8, !tbaa !815 ; 4 uses
  %i.ek = load ptr, ptr %i.cc, align 8, !tbaa !817
  %.not.i60 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i60, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -32 ; 4 uses
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 -16 ; 3 uses
  store ptr %i.em, ptr %i.el, align 8, !tbaa !263
  %i.en = load ptr, ptr %4, align 8, !tbaa !128   ; 2 uses
  %i.eo = load i64, ptr %i.bv, align 8, !tbaa !264 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #44
  store i64 %i.eo, ptr %i.b, align 8, !tbaa !18
  %i.ep = icmp ugt i64 %i.eo, 15
  br i1 %i.ep, label %.noexc.i.i, label %._crit_edge.i.i.i61

.noexc.i.i:                                       ; preds = %bb.s
  %i.eq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc62 unwind label %bb.x   ; 2 uses

.noexc62:                                         ; preds = %.noexc.i.i
  store ptr %i.eq, ptr %i.el, align 8, !tbaa !128
  %i.er = load i64, ptr %i.b, align 8, !tbaa !18
  store i64 %i.er, ptr %i.em, align 8, !tbaa !29
  br label %._crit_edge.i.i.i61

._crit_edge.i.i.i61:                              ; preds = %.noexc62, %bb.s
  %i.es = phi ptr [ %i.eq, %.noexc62 ], [ %i.em, %bb.s ] ; 2 uses
  switch i64 %i.eo, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i61
  %i.et = load i8, ptr %i.en, align 1, !tbaa !29
  store i8 %i.et, ptr %i.es, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.u:                                             ; preds = %._crit_edge.i.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr align 1 %i.en, i64 %i.eo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i61
  %i.eu = load i64, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.ej, i64 -24
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !264
  %i.ew = load ptr, ptr %i.el, align 8, !tbaa !128
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  store i8 0, ptr %i.ex, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  %i.ey = load ptr, ptr %i.ca, align 8, !tbaa !815
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -32
  store ptr %i.ez, ptr %i.ca, align 8, !tbaa !815
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontERKS5_.exit

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_push_front_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontERKS5_.exit unwind label %bb.x

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.v
  %i.fa = load ptr, ptr %4, align 8, !tbaa !128   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.bu
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontERKS5_.exit
  %i.fc = load i64, ptr %i.bu, align 8, !tbaa !29
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.y

bb.w:                                             ; preds = %.noexc10.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.x:                                             ; preds = %bb.v, %.noexc.i.i, %bb.r
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = load ptr, ptr %4, align 8, !tbaa !128   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.bu
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.x
  %i.fi = load i64, ptr %i.bu, align 8, !tbaa !29
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.w
  %.pn53 = phi { ptr, i32 } [ %i.fe, %bb.w ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.ff, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.fk = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.bs
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.fm = load i64, ptr %i.bs, align 8, !tbaa !29
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.as

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9pop_frontEv.exit
  %.040 = phi i64 [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dv, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9pop_frontEv.exit ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 %.041121
  %i.fp = load ptr, ptr %3, align 8, !tbaa !128   ; 3 uses
  %i.fq = call ptr @strncpy(ptr noundef %i.fo, ptr noundef %i.fp, i64 noundef %.040) #44 ; 0 uses
  %i.fr = add i64 %.040, %.041121                 ; 3 uses
  %i.fs = icmp eq ptr %i.fp, %i.bs
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.y
  %i.ft = load i64, ptr %i.bs, align 8, !tbaa !29
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fu) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  %i.fv = icmp ult i64 %i.fr, %2
  br i1 %i.fv, label %bb.i, label %.critedge, !llvm.loop !823

.critedge:                                        ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.041.lcssa = phi i64 [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.041121, %bb.i ] ; 2 uses
  %.not = icmp eq i64 %.041.lcssa, 0
  br i1 %.not, label %.critedge.thread, label %bb.ag

.critedge.thread:                                 ; preds = %bb.h, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @_ZN8V3PreLex11endOfStreamB5cxx11ERb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  %i.fw = load ptr, ptr %i.f, align 8, !tbaa !36, !noalias !824 ; 2 uses
  %i.fx = load ptr, ptr %i.h, align 8, !tbaa !44, !noalias !824
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge.thread
  %i.fz = load ptr, ptr %i.br, align 8, !tbaa !45, !noalias !824
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !46
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 512
end_hunk_1
begin_hunk_2_@_ZN13VErrorMessageC2Ev:bb.a
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !1487
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !263
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !264
  store i8 0, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 0)
          to label %_ZNSt5dequeIPK8FileLineSaIS2_EEC2Ev.exit unwind label %bb.b

_ZNSt5dequeIPK8FileLineSaIS2_EEC2Ev.exit:         ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !1488
  %i.e = load i64, ptr %i.c, align 8, !tbaa !264
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull @.str.2, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EEC2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !1489
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !1484, !noalias !1490
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1493, !noalias !1490 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !1494, !noalias !1490
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1483 ; 2 uses
  %i.p = icmp ult ptr %i.l, %i.o
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc, %.lr.ph.i.i.i.i.i
  %.06.i.pn.i.i.i.i = phi ptr [ %.06.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.l, %.noexc ]
  %.06.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i.i.i, i64 8 ; 3 uses
  %i.q = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !1484
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef 512) #45
  %i.r = icmp ult ptr %.06.i.i.i.i.i, %i.o
  br i1 %i.r, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !1485

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x ptr> %i.i, ptr %i.s, align 8, !tbaa !1484
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x ptr> %i.m, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !1494
  ret void

bb.b:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EEC2Ev.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.t, %bb.b ]
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !128  ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.b, align 8, !tbaa !29
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !911
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #51
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13VErrorMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1481 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1482 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1483 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i, align 8, !tbaa !1484
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef 512) #45
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !1485

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !1481
  br label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.b, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1486
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #45
  br label %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit

_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit:         ; preds = %bb.a, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !29
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1481   ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1482 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1483 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8, !tbaa !1484
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #45
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i, !llvm.loop !1485

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1481
  br label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i: ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1486
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #45
  br label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EED2Ev.exit

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EED2Ev.exit:  ; preds = %bb.a, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !1486
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #50 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !1481
  %i.g = sub nuw nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50
          to label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !1484
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_create_nodesEPPS2_S6_.exit, !llvm.loop !1495

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #44 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !1484
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #45
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i, !llvm.loop !1485

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #42
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #51
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #44 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !1481
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !1486
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #42
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE15_M_create_nodesEPPS2_S6_.exit: ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !1493
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !1484 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1496
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1497
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !1493
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1484 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1496
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1497
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !1498
  %i.aq = and i64 %1, 63
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !1499
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #51
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #32 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #44 ; 0 uses
  tail call void @_ZSt9terminatev() #51
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #33

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #30

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #34

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1500
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1501 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !128  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !29
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #45
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #45
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1502

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7VString14quoteBackslashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #2 comdat align 2 {
bb.a:
  tail call void @_ZN7VString8quoteAnyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 92, i8 noundef signext 92)
  ret void
}

declare void @_ZN7VString8quoteAnyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i8 noundef signext) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #35

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator.67", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator.67", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !819, !noalias !1503
  store <2 x ptr> %i.g, ptr %1, align 16, !tbaa !819
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x ptr>, ptr %i.b, align 8, !tbaa !777, !noalias !1503
  store <2 x ptr> %i.i, ptr %i.h, align 16, !tbaa !777
  %i.j = load <2 x ptr>, ptr %i.d, align 8, !tbaa !819, !noalias !1506
  store <2 x ptr> %i.j, ptr %2, align 16, !tbaa !819
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load <2 x ptr>, ptr %i.e, align 8, !tbaa !777, !noalias !1506
  store <2 x ptr> %i.l, ptr %i.k, align 16, !tbaa !777
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.m = load ptr, ptr %0, align 8, !tbaa !1509   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !818  ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !1371 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !819
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #45
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.t = icmp ult ptr %.06.i.i, %i.o
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i, !llvm.loop !1510

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1509
  br label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i: ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i, %bb.c
  %i.u = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i ], [ %i.m, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1511
  %i.x = shl i64 %i.w, 3
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #45
  br label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %bb.b, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #51
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 2 uses
  %i.b = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.b, 3     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !1511
  %i.d = icmp ugt i64 %1, -49
  br i1 %i.d, label %.noexc3.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit, !prof !830

.noexc3.i:                                        ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !1509
  %i.h = sub nuw nsw i64 %.sroa.speculated, %i.e
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50
          to label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i unwind label %bb.b

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !819
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_.exit, !llvm.loop !1512

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #44 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !819
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #45
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i, !llvm.loop !1510

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  invoke void @__cxa_rethrow() #42
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #51
  unreachable

bb.e:                                             ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  unreachable

.body:                                            ; preds = %bb.c
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #44 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1509
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1511
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #42
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_.exit: ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !792
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !819 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !794
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !795
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !792
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !819 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !794
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !795
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !815
  %i.ar = and i64 %1, 15
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !887
  ret void

bb.h:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #51
  unreachable

bb.i:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !792  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.030 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !792  ; 2 uses
  %i.e = icmp ult ptr %.030, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.15
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !792
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.ck, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %i.f, %.lcssa
  %i.g = load ptr, ptr %1, align 8, !tbaa !793    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.15
  %.031 = phi ptr [ %.0, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.15 ], [ %.030, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.031, align 8, !tbaa !819 ; 32 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !128  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.l = load i64, ptr %i.j, align 8, !tbaa !29
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #45
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.05.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.n = load ptr, ptr %.05.i.i.ptr.1, align 8, !tbaa !128 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !29
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #45
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.1

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.1
  %.05.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.s = load ptr, ptr %.05.i.i.ptr.2, align 8, !tbaa !128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.2: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.1
  %i.v = load i64, ptr %i.t, align 8, !tbaa !29
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #45
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.2

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.2: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.2
  %.05.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.x = load ptr, ptr %.05.i.i.ptr.3, align 8, !tbaa !128 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.3: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.2
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !29
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #45
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.3

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.3: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.3
  %.05.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.ac = load ptr, ptr %.05.i.i.ptr.4, align 8, !tbaa !128 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.4: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.3
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !29
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #45
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.4

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.4: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.4
  %.05.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.h, i64 160
end_hunk_2
begin_hunk_3_@_ZNK8FileLine10filenamenoEv:bb.a
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !910
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.b, align 8, !tbaa !911
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.a, ptr %i.c, align 8, !tbaa !912
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.a, ptr %i.d, align 8, !tbaa !913
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, i8 0, i64 88, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 0)
          to label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev.exit unwind label %bb.b

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 0)
          to label %_ZNSt5dequeI10V3LangCodeSaIS0_EEC2Ev.exit unwind label %bb.c

_ZNSt5dequeI10V3LangCodeSaIS0_EEC2Ev.exit:        ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.h, ptr nonnull @.str.235, ptr nonnull @.str.245, i32 117, ptr null) ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.k, ptr %i.j, align 8, !tbaa !1517
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %i.l, align 8, !tbaa !1530
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !1531
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  ret void

bb.b:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.f) #44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.q, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4lessIS6_ESaISt4pairIS6_tEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.s) #44
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17FileLineSingletonD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1532 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN17FileLineSingleton11MsgEnBitSetESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1535
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #45
  br label %_ZNSt6vectorIN17FileLineSingleton11MsgEnBitSetESaIS1_EED2Ev.exit

_ZNSt6vectorIN17FileLineSingleton11MsgEnBitSetESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.h, ptr nonnull @.str.235, ptr nonnull @.str.245, i32 117, ptr null) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1536 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN17FileLineSingleton11MsgEnBitSetESt4pairIKS1_tESaIS4_ENSt8__detail10_Select1stENS1_5EqualENS1_4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN17FileLineSingleton11MsgEnBitSetESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.k, %_ZNSt6vectorIN17FileLineSingleton11MsgEnBitSetESaIS1_EED2Ev.exit ] ; 2 uses
  %i.l = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !1537 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 72) #45
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN17FileLineSingleton11MsgEnBitSetESt4pairIKS1_tESaIS4_ENSt8__detail10_Select1stENS1_5EqualENS1_4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1538

_ZNSt10_HashtableIN17FileLineSingleton11MsgEnBitSetESt4pairIKS1_tESaIS4_ENSt8__detail10_Select1stENS1_5EqualENS1_4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIN17FileLineSingleton11MsgEnBitSetESaIS1_EED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1517
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1530
  %i.q = shl i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.q, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !1517 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt13unordered_mapIN17FileLineSingleton11MsgEnBitSetEtNS1_4HashENS1_5EqualESaISt4pairIKS1_tEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN17FileLineSingleton11MsgEnBitSetESt4pairIKS1_tESaIS4_ENSt8__detail10_Select1stENS1_5EqualENS1_4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !1530
  %i.v = shl i64 %i.u, 3
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #45
  br label %_ZNSt13unordered_mapIN17FileLineSingleton11MsgEnBitSetEtNS1_4HashENS1_5EqualESaISt4pairIKS1_tEEED2Ev.exit

_ZNSt13unordered_mapIN17FileLineSingleton11MsgEnBitSetEtNS1_4HashENS1_5EqualESaISt4pairIKS1_tEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN17FileLineSingleton11MsgEnBitSetESt4pairIKS1_tESaIS4_ENSt8__detail10_Select1stENS1_5EqualENS1_4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1539 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt5dequeI10V3LangCodeSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_mapIN17FileLineSingleton11MsgEnBitSetEtNS1_4HashENS1_5EqualESaISt4pairIKS1_tEEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1544 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !1545 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = icmp ult ptr %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.aa, %bb.d ] ; 3 uses
  %i.ae = load ptr, ptr %.06.i.i.i, align 8, !tbaa !1546
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef 512) #45
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.ag = icmp ult ptr %.06.i.i.i, %i.ab
  br i1 %i.ag, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i, !llvm.loop !1547

_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.w, align 8, !tbaa !1539
  br label %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i

_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i: ; preds = %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i, %bb.d
  %i.ah = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i ], [ %i.x, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1548
  %i.ak = shl i64 %i.aj, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #45
  br label %_ZNSt5dequeI10V3LangCodeSaIS0_EED2Ev.exit

_ZNSt5dequeI10V3LangCodeSaIS0_EED2Ev.exit:        ; preds = %_ZNSt13unordered_mapIN17FileLineSingleton11MsgEnBitSetEtNS1_4HashENS1_5EqualESaISt4pairIKS1_tEEED2Ev.exit, %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.al) #44
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !911
  invoke void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef %i.ao)
          to label %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4lessIS6_ESaISt4pairIS6_tEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeI10V3LangCodeSaIS0_EED2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #51
  unreachable

_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4lessIS6_ESaISt4pairIS6_tEEED2Ev.exit: ; preds = %_ZNSt5dequeI10V3LangCodeSaIS0_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4lessIS6_ESaISt4pairIS6_tEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !911
  invoke void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #51
  unreachable

_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 9                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !1548
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #50 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !1539
  %i.g = sub nuw nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50
          to label %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !1546
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE15_M_create_nodesEPPS0_S4_.exit, !llvm.loop !1549

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #44 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !1546
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #45
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i, !llvm.loop !1547

_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #42
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #51
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #44 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !1539
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !1548
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #42
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE15_M_create_nodesEPPS0_S4_.exit: ; preds = %_ZNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !1550
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !1546 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1551
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1552
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !1550
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1546 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1551
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1552
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !1553
  %i.aq = and i64 %1, 511
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !1554
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #51
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1500
  tail call void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1501 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !128  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !29
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #45
  br label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #45
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1555

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_tESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP10VPreStreamSaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EEC2ERKS2_m.exit:
  %2 = alloca %"struct.std::_Deque_iterator.173", align 16 ; 5 uses
  %3 = alloca %"struct.std::_Deque_iterator.173", align 16 ; 5 uses
  %4 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !839
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !1556
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1565
  %i.ag = load <2 x ptr>, ptr %i.b, align 8, !tbaa !46, !noalias !1568
  store <2 x ptr> %i.ag, ptr %2, align 16, !tbaa !46, !noalias !1571
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load <2 x ptr>, ptr %i.v, align 8, !tbaa !1494, !noalias !1568
  store <2 x ptr> %i.ai, ptr %i.ah, align 16, !tbaa !1494, !noalias !1571
  %i.aj = load <2 x ptr>, ptr %i.a, align 8, !tbaa !46, !noalias !1574
  store <2 x ptr> %i.aj, ptr %3, align 16, !tbaa !46, !noalias !1571
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !1494, !noalias !1574
  store <2 x ptr> %i.al, ptr %i.ak, align 16, !tbaa !1494, !noalias !1571
  %i.am = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !46
  store <2 x ptr> %i.am, ptr %4, align 16, !tbaa !46, !noalias !1571
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = load <2 x ptr>, ptr %i.af, align 8, !tbaa !1494
  store <2 x ptr> %i.ao, ptr %i.an, align 16, !tbaa !1494, !noalias !1571
  invoke void @_ZSt15__copy_move_ditILb0EP10VPreStreamRKS1_PS2_St15_Deque_iteratorIS1_RS1_PS1_EET3_S5_IT0_T1_T2_ESD_S9_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EEC2ERKS2_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !1556
  ret void

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EEC2ERKS2_m.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #44
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !841    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !842  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !838  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.c, %i.f
  br i1 %i.g, label %.lr.ph.i, label %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.06.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i, align 8, !tbaa !46
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #45
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.j = icmp ult ptr %.06.i, %i.e
  br i1 %i.j, label %.lr.ph.i, label %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit, !llvm.loop !843

_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !841
  br label %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit

_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit: ; preds = %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit, %bb.b
  %i.k = phi ptr [ %.pre, %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !844
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #45
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !844
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #50 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !841
  %i.g = sub nuw nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50
          to label %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE15_M_create_nodesEPPS1_S5_.exit, !llvm.loop !1577

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #44 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !46
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #45
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i, !llvm.loop !843

_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #42
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #51
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #44 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !841
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !844
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #42
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE15_M_create_nodesEPPS1_S5_.exit: ; preds = %_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !45
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !46  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !839
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !45
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !46 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !839
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !1578
  %i.aq = and i64 %1, 63
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !836
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #51
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt15__copy_move_ditILb0EP10VPreStreamRKS1_PS2_St15_Deque_iteratorIS1_RS1_PS1_EET3_S5_IT0_T1_T2_ESD_S9_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1579
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1579
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = load ptr, ptr %1, align 8, !tbaa !1581   ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1582
  %i.i = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !839  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = sub i64 %i.p, %i.f
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_ZSt14__copy_move_a1ILb0EPP10VPreStreamS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_.exit

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt15_Deque_iteratorIP10VPreStreamRS1_PS1_EpLEl.exit.i
  %.sroa.067.0 = phi ptr [ %storemerge.i.i, %_ZNSt15_Deque_iteratorIP10VPreStreamRS1_PS1_EpLEl.exit.i ], [ %i.i, %bb.b ] ; 4 uses
  %.sroa.468.0 = phi ptr [ %.sroa.468.1, %_ZNSt15_Deque_iteratorIP10VPreStreamRS1_PS1_EpLEl.exit.i ], [ %i.k, %bb.b ] ; 2 uses
  %.sroa.869.0 = phi ptr [ %.sroa.869.1, %_ZNSt15_Deque_iteratorIP10VPreStreamRS1_PS1_EpLEl.exit.i ], [ %i.m, %bb.b ] ; 2 uses
  %.sroa.1271.0 = phi ptr [ %.sroa.1271.1, %_ZNSt15_Deque_iteratorIP10VPreStreamRS1_PS1_EpLEl.exit.i ], [ %i.o, %bb.b ] ; 2 uses
  %.013.i = phi ptr [ %i.x, %_ZNSt15_Deque_iteratorIP10VPreStreamRS1_PS1_EpLEl.exit.i ], [ %i.e, %bb.b ] ; 3 uses
  %storemerge12.i = phi i64 [ %i.ar, %_ZNSt15_Deque_iteratorIP10VPreStreamRS1_PS1_EpLEl.exit.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.t = ptrtoint ptr %.sroa.869.0 to i64
  %i.u = ptrtoint ptr %.sroa.067.0 to i64         ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.w, i64 %storemerge12.i) ; 7 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.013.i, i64 %.sroa.speculated.i
  %i.y = icmp sgt i64 %.sroa.speculated.i, 1
  br i1 %i.y, label %bb.c, label %bb.d, !prof !1073

bb.c:                                             ; preds = %.lr.ph.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.067.0, ptr align 8 %.013.i, i64 %.idx.i, i1 false), !noalias !1583
  br label %_ZSt14__copy_move_a1ILb0EPP10VPreStreamS2_ET1_T0_S4_S3_.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = icmp eq i64 %.sroa.speculated.i, 1
  br i1 %i.z, label %bb.e, label %_ZSt14__copy_move_a1ILb0EPP10VPreStreamS2_ET1_T0_S4_S3_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %.013.i, align 8, !tbaa !47, !noalias !1583
  store ptr %i.aa, ptr %.sroa.067.0, align 8, !tbaa !47, !noalias !1583
  br label %_ZSt14__copy_move_a1ILb0EPP10VPreStreamS2_ET1_T0_S4_S3_.exit.i

_ZSt14__copy_move_a1ILb0EPP10VPreStreamS2_ET1_T0_S4_S3_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = ptrtoint ptr %.sroa.468.0 to i64
  %i.ac = sub i64 %i.u, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, %.sroa.speculated.i  ; 5 uses
  %i.af = icmp sgt i64 %i.ae, -1
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZSt14__copy_move_a1ILb0EPP10VPreStreamS2_ET1_T0_S4_S3_.exit.i
  %i.ag = icmp samesign ult i64 %i.ae, 64
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds [8 x i8], ptr %.sroa.067.0, i64 %.sroa.speculated.i
  br label %_ZNSt15_Deque_iteratorIP10VPreStreamRS1_PS1_EpLEl.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ai = lshr i64 %i.ae, 6
  br label %bb.j

bb.i:                                             ; preds = %_ZSt14__copy_move_a1ILb0EPP10VPreStreamS2_ET1_T0_S4_S3_.exit.i
  %i.aj = ashr i64 %i.ae, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = phi i64 [ %i.ai, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %.sroa.1271.0, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46, !noalias !1583 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ao = shl nsw i64 %i.ak, 6
  %i.ap = sub nsw i64 %i.ae, %i.ao
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ap
end_hunk_3
begin_hunk_4_@_ZN9V3PreExprD2Ev:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i, !llvm.loop !1430

_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !1599
  br label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i

_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i: ; preds = %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i ], [ %i.b, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1601
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #45
  br label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev.exit

_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev.exit:    ; preds = %bb.a, %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1599 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev.exit7, label %bb.c

bb.c:                                             ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1600 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !1429 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i3, label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i2

.lr.ph.i.i.i3:                                    ; preds = %bb.c, %.lr.ph.i.i.i3
  %.06.i.i.i4 = phi ptr [ %i.y, %.lr.ph.i.i.i3 ], [ %i.t, %bb.c ] ; 3 uses
  %i.x = load ptr, ptr %.06.i.i.i4, align 8, !tbaa !1424
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef 512) #45
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i4, i64 8
  %i.z = icmp ult ptr %.06.i.i.i4, %i.u
  br i1 %i.z, label %.lr.ph.i.i.i3, label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i5, !llvm.loop !1430

_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i5: ; preds = %.lr.ph.i.i.i3
  %.pre.i.i6 = load ptr, ptr %i.p, align 8, !tbaa !1599
  br label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i2

_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i2: ; preds = %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i5, %bb.c
  %i.aa = phi ptr [ %.pre.i.i6, %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i5 ], [ %i.q, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1601
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #45
  br label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev.exit7

_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev.exit7:   ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev.exit, %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i2
  %i.ae = load ptr, ptr %0, align 8, !tbaa !1599  ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i8, label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev.exit14, label %bb.d

bb.d:                                             ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev.exit7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1600 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !1429 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = icmp ult ptr %i.ah, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i.i10, label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i9

.lr.ph.i.i.i10:                                   ; preds = %bb.d, %.lr.ph.i.i.i10
  %.06.i.i.i11 = phi ptr [ %i.am, %.lr.ph.i.i.i10 ], [ %i.ah, %bb.d ] ; 3 uses
  %i.al = load ptr, ptr %.06.i.i.i11, align 8, !tbaa !1424
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef 512) #45
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i11, i64 8
  %i.an = icmp ult ptr %.06.i.i.i11, %i.ai
  br i1 %i.an, label %.lr.ph.i.i.i10, label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i12, !llvm.loop !1430

_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i12: ; preds = %.lr.ph.i.i.i10
  %.pre.i.i13 = load ptr, ptr %0, align 8, !tbaa !1599
  br label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i9

_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i9: ; preds = %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i12, %bb.d
  %i.ao = phi ptr [ %.pre.i.i13, %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i12 ], [ %i.ae, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1601
  %i.ar = shl i64 %i.aq, 3
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #45
  br label %_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev.exit14

_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev.exit14:  ; preds = %_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev.exit7, %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i9
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1460   ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeI11VPreIfEntrySaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1461 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1422 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !1267
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #45
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i, !llvm.loop !1462

_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !1460
  br label %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i

_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i: ; preds = %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1463
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #45
  br label %_ZNSt5dequeI11VPreIfEntrySaIS0_EED2Ev.exit

_ZNSt5dequeI11VPreIfEntrySaIS0_EED2Ev.exit:       ; preds = %bb.a, %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1464   ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1465 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1260 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !777
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #45
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i, !llvm.loop !1466

_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !1464
  br label %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i

_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1467
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #45
  br label %_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EED2Ev.exit

_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7VDefineSt4lessIS6_ESaISt4pairIS6_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !911
  invoke void @_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #51
  unreachable

_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 9                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !1467
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #50 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !1464
  %i.g = sub nuw nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50
          to label %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !777
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE15_M_create_nodesEPPS1_S5_.exit, !llvm.loop !1602

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #44 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !777
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #45
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i, !llvm.loop !1466

_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #42
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #51
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #44 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !1464
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !1467
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #42
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE15_M_create_nodesEPPS1_S5_.exit: ; preds = %_ZNSt11_Deque_baseIN12V3PreProcImp9ProcStateESaIS1_EE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !1194
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !777 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1193
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1226
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !1194
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !777 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1193
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1226
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !1603
  %i.aq = and i64 %1, 511
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !967
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #51
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 2                           ; 2 uses
  %i.b = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.b, 3     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !1604
  %i.d = icmp ugt i64 %1, 4611686018427387891
  br i1 %i.d, label %bb.b, label %_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE15_M_allocate_mapEm.exit, !prof !830

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 9223372036854775795
  br i1 %i.e, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #42
  unreachable

.noexc3.i:                                        ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.f = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.g = shl nuw nsw i64 %.sroa.speculated, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #50 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !1605
  %i.i = sub nuw nsw i64 %.sroa.speculated, %i.f
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j ; 6 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.n, %_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE16_M_allocate_nodeEv.exit.i ], [ %i.k, %_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50
          to label %_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE16_M_allocate_nodeEv.exit.i unwind label %bb.c

_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.m, ptr %.011.i, align 8, !tbaa !1316
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.l
  br i1 %i.o, label %.lr.ph.i, label %_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE15_M_create_nodesEPPS0_S4_.exit, !llvm.loop !1606

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #44 ; 0 uses
  %i.s = icmp ult ptr %i.k, %.011.i
  br i1 %i.s, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %.06.i.i, align 8, !tbaa !1316
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef 512) #45
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.v = icmp ult ptr %i.u, %.011.i
  br i1 %i.v, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i, !llvm.loop !1607

_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  invoke void @__cxa_rethrow() #42
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #51
  unreachable

bb.f:                                             ; preds = %_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i
  unreachable

.body:                                            ; preds = %bb.d
  %i.z = extractvalue { ptr, i32 } %i.w, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #44 ; 0 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1605
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !1604
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #42
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ae

_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE15_M_create_nodesEPPS0_S4_.exit: ; preds = %_ZNSt11_Deque_baseI10VDefineRefSaIS0_EE16_M_allocate_nodeEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.ag, align 8, !tbaa !1227
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !1316 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1229
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !1230
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1227
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !1316 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1229
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !1230
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !1608
  %i.as = and i64 %1, 3
  %i.at = getelementptr inbounds nuw [128 x i8], ptr %i.ao, i64 %i.as
  store ptr %i.at, ptr %i.al, align 8, !tbaa !1444
  ret void

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #51
  unreachable

bb.j:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 8                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !1463
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #50 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !1460
  %i.g = sub nuw nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50
          to label %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !1267
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE15_M_create_nodesEPPS0_S4_.exit, !llvm.loop !1609

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #44 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !1267
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #45
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i, !llvm.loop !1462

_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #42
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #51
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #44 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !1460
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !1463
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #42
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE15_M_create_nodesEPPS0_S4_.exit: ; preds = %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !1266
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !1267 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1262
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1423
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !1266
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1267 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1262
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1423
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !1610
  %i.aq = and i64 %1, 255
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !1257
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #51
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI14V3PreExprTokenSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1599   ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1600 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1429 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8, !tbaa !1424
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #45
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i, !llvm.loop !1430

_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1599
  br label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i

_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i: ; preds = %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1601
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #45
  br label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EED2Ev.exit

_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 5                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !1601
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #50 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !1599
  %i.g = sub nuw nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50
          to label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !1424
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE15_M_create_nodesEPPS0_S4_.exit, !llvm.loop !1611

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #44 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !1424
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #45
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i, !llvm.loop !1430

_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #42
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #51
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #44 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !1599
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !1601
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #42
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE15_M_create_nodesEPPS0_S4_.exit: ; preds = %_ZNSt11_Deque_baseI14V3PreExprTokenSaIS0_EE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !1428
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !1424 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1612
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1438
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !1428
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1424 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1612
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1438
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !1613
  %i.aq = and i64 %1, 31
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !1442
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #51
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1194 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1194
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 9
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1189
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1193
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1226
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1189
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.q, %i.r
  %i.y = add i64 %i.x, %i.v
  %i.z = add i64 %i.y, %i.m
  %i.aa = sub i64 %i.z, %i.w
  %i.ab = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.246) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1467
  %i.ae = load ptr, ptr %0, align 8, !tbaa !1464
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.g, %i.af
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = sub i64 %i.ad, %i.ah
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.d, label %_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.ak = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !1260
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !777
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !967
  %i.ao = load i8, ptr %1, align 1, !tbaa !965
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !965
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !1260
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !1194
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !777 ; 3 uses
  store ptr %i.ar, ptr %i.o, align 8, !tbaa !1193
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 512
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.as, ptr %i.at, align 8, !tbaa !1226
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !967
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #30

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1260 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1465 ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !29
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !128  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 88 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN7VDefineD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !29
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #45
  br label %_ZN7VDefineD2Ev.exit.i.i.i

_ZN7VDefineD2Ev.exit.i.i.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !128  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN7VDefineD2Ev.exit.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !29
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #45
  br label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %_ZN7VDefineD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 144) #45
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1623

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3PreLexC2EP12V3PreProcImpP8FileLine(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1624
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseIP10VPreStreamSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.b, align 8, !tbaa !783
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %2, ptr %i.c, align 8, !tbaa !788
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseI8FileLineSaIS0_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 0)
          to label %_ZNSt5dequeI8FileLineSaIS0_EEC2Ev.exit unwind label %bb.c

_ZNSt5dequeI8FileLineSaIS0_EEC2Ev.exit:           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.e, align 8, !tbaa !971
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 1, ptr %i.f, align 4, !tbaa !972
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.h, i8 0, i64 10, i1 false)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !263
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.k, align 8, !tbaa !264
  store i8 0, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.l, i8 0, i64 13, i1 false)
  invoke void @_ZN8V3PreLex15initFirstBufferEP8FileLine(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt5dequeI8FileLineSaIS0_EEC2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt5dequeI8FileLineSaIS0_EEC2Ev.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.j, align 8, !tbaa !29
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt5dequeI8FileLineSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #44
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %bb.c ]
  tail call void @_ZNSt5stackIP10VPreStreamSt5dequeIS1_SaIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #44
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI8FileLineSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator.5", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator.5", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !768, !noalias !1625
  store <2 x ptr> %i.g, ptr %1, align 16, !tbaa !768
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x ptr>, ptr %i.b, align 8, !tbaa !777, !noalias !1625
  store <2 x ptr> %i.i, ptr %i.h, align 16, !tbaa !777
  %i.j = load <2 x ptr>, ptr %i.d, align 8, !tbaa !768, !noalias !1628
  store <2 x ptr> %i.j, ptr %2, align 16, !tbaa !768
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load <2 x ptr>, ptr %i.e, align 8, !tbaa !777, !noalias !1628
  store <2 x ptr> %i.l, ptr %i.k, align 16, !tbaa !777
  invoke void @_ZNSt5dequeI8FileLineSaIS0_EE19_M_destroy_data_auxESt15_Deque_iteratorIS0_RS0_PS0_ES6_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.m = load ptr, ptr %0, align 8, !tbaa !1631   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseI8FileLineSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !1632 ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !769  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !768
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 480) #45
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.t = icmp ult ptr %.06.i.i, %i.o
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i, !llvm.loop !1633

_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1631
  br label %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i

_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i: ; preds = %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i, %bb.c
  %i.u = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.loopexit.i ], [ %i.m, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1634
  %i.x = shl i64 %i.w, 3
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #45
  br label %_ZNSt11_Deque_baseI8FileLineSaIS0_EED2Ev.exit

_ZNSt11_Deque_baseI8FileLineSaIS0_EED2Ev.exit:    ; preds = %bb.b, %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #51
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseI8FileLineSaIS0_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = udiv i64 %1, 10                          ; 2 uses
  %i.b = urem i64 %1, 10
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !1634
  %i.e = icmp ugt i64 %1, -6917529027641081887
  br i1 %i.e, label %.noexc3.i, label %_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_allocate_mapEm.exit, !prof !830

.noexc3.i:                                        ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.f = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.g = shl nuw nsw i64 %.sroa.speculated, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #50 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !1631
  %i.i = sub nuw nsw i64 %.sroa.speculated, %i.f
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j ; 6 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.n, %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_allocate_nodeEv.exit.i ], [ %i.k, %_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #50
          to label %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_allocate_nodeEv.exit.i unwind label %bb.b

_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.m, ptr %.011.i, align 8, !tbaa !768
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.l
  br i1 %i.o, label %.lr.ph.i, label %_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_create_nodesEPPS0_S4_.exit, !llvm.loop !1635

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #44 ; 0 uses
  %i.s = icmp ult ptr %i.k, %.011.i
  br i1 %i.s, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.06.i.i, align 8, !tbaa !768
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef 480) #45
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.v = icmp ult ptr %i.u, %.011.i
  br i1 %i.v, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i, !llvm.loop !1633

_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  invoke void @__cxa_rethrow() #42
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #51
  unreachable

bb.e:                                             ; preds = %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_destroy_nodesEPPS0_S4_.exit.i
  unreachable

.body:                                            ; preds = %bb.c
  %i.z = extractvalue { ptr, i32 } %i.w, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #44 ; 0 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1631
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1634
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #42
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ae

_ZNSt11_Deque_baseI8FileLineSaIS0_EE15_M_create_nodesEPPS0_S4_.exit: ; preds = %_ZNSt11_Deque_baseI8FileLineSaIS0_EE16_M_allocate_nodeEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.ag, align 8, !tbaa !767
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !768 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !762
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 480
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !770
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.am, ptr %i.an, align 8, !tbaa !767
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !768 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !762
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 480
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !770
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !1636
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %i.b
  store ptr %i.as, ptr %i.al, align 8, !tbaa !771
  ret void

bb.h:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #51
  unreachable

bb.i:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI8FileLineSaIS0_EE19_M_destroy_data_auxESt15_Deque_iteratorIS0_RS0_PS0_ES6_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !767  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.021 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !767  ; 2 uses
  %i.e = icmp ult ptr %.021, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !767
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %i.f, %.lcssa
  %i.g = load ptr, ptr %1, align 8, !tbaa !758    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.022 = phi ptr [ %.0, %.lr.ph ], [ %.021, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.022, align 8, !tbaa !768 ; 10 uses
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.h) #44
  %.05.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.1) #44
  %.05.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.2) #44
  %.05.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.3) #44
  %.05.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.4) #44
  %.05.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.5) #44
  %.05.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.6) #44
  %.05.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.7) #44
  %.05.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.8) #44
  %.05.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i.ptr.9) #44
  %.0 = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !767  ; 2 uses
  %i.j = icmp ult ptr %.0, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1637

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !770  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, %i.l
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP8FileLineEvT_S2_.exit9, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %bb.b, %.lr.ph.i.i6
  %.05.i.i7 = phi ptr [ %i.m, %.lr.ph.i.i6 ], [ %i.g, %bb.b ] ; 2 uses
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i7) #44
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 48 ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.m, %i.l
  br i1 %.not.i.i8, label %_ZSt8_DestroyIP8FileLineEvT_S2_.exit9, label %.lr.ph.i.i6, !llvm.loop !1638

_ZSt8_DestroyIP8FileLineEvT_S2_.exit9:            ; preds = %.lr.ph.i.i6, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !762  ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !758    ; 2 uses
  %.not4.i.i10 = icmp eq ptr %i.o, %i.p
  br i1 %.not4.i.i10, label %_ZSt8_DestroyIP8FileLineEvT_S2_.exit14, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %_ZSt8_DestroyIP8FileLineEvT_S2_.exit9, %.lr.ph.i.i11
  %.05.i.i12 = phi ptr [ %i.q, %.lr.ph.i.i11 ], [ %i.o, %_ZSt8_DestroyIP8FileLineEvT_S2_.exit9 ] ; 2 uses
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i12) #44
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i12, i64 48 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i13, label %_ZSt8_DestroyIP8FileLineEvT_S2_.exit14, label %.lr.ph.i.i11, !llvm.loop !1638

bb.c:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr %2, align 8, !tbaa !758    ; 2 uses
  %.not4.i.i15 = icmp eq ptr %i.g, %i.r
  br i1 %.not4.i.i15, label %_ZSt8_DestroyIP8FileLineEvT_S2_.exit14, label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %bb.c, %.lr.ph.i.i16
  %.05.i.i17 = phi ptr [ %i.s, %.lr.ph.i.i16 ], [ %i.g, %bb.c ] ; 2 uses
  tail call void @_ZN8FileLineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.05.i.i17) #44
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i17, i64 48 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i18, label %_ZSt8_DestroyIP8FileLineEvT_S2_.exit14, label %.lr.ph.i.i16, !llvm.loop !1638

_ZSt8_DestroyIP8FileLineEvT_S2_.exit14:           ; preds = %.lr.ph.i.i11, %.lr.ph.i.i16, %bb.c, %_ZSt8_DestroyIP8FileLineEvT_S2_.exit9
  ret void
}
end_hunk_5
