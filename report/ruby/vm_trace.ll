inline.NumInlined: 332
inline.NumDeleted: 99
begin_hunk_0_@rb_ec_clear_current_thread_trace_func:bb.a
.lr.ph.i4:                                        ; preds = %rb_ec_ractor_hooks.exit.i.i
  %i.e = icmp eq ptr %.val, inttoptr (i64 1 to ptr)
  %i.f = getelementptr i8, ptr %i.c, i64 36       ; 2 uses
  br i1 %i.e, label %.lr.ph.split.us.split.us.split.us.i13.a, label %.lr.ph.split.us.split.us.split.i5.preheader

.lr.ph.split.us.split.us.split.i5.preheader:      ; preds = %rb_ec_ractor_hooks.exit.i.i.thread, %.lr.ph.i4
  %i.g = phi ptr [ %i.f, %.lr.ph.i4 ], [ inttoptr (i64 36 to ptr), %rb_ec_ractor_hooks.exit.i.i.thread ]
end_hunk_0
begin_hunk_1_@rb_ec_clear_current_thread_trace_func:bb.a
  %.019.i22629 = phi ptr [ %.019.i2, %.lr.ph.i4 ], [ %.019.i222, %rb_ec_ractor_hooks.exit.i.i.thread ]
  br label %.lr.ph.split.us.split.us.split.i5

.lr.ph.split.us.split.us.split.us.i13.a:          ; preds = %.lr.ph.i4, %.lr.ph.split.us.split.us.split.us.i13.a
  %.022.us.us.us.i14 = phi ptr [ %.0.us.us.us.i16, %.lr.ph.split.us.split.us.split.us.i13.a ], [ %.019.i2, %.lr.ph.i4 ] ; 3 uses
  %i.i = load i32, ptr %.022.us.us.us.i14, align 8, !tbaa !27
  %i.j = or i32 %i.i, 2
  store i32 %i.j, ptr %.022.us.us.us.i14, align 8, !tbaa !27
  %i.k = getelementptr i8, ptr %.022.us.us.us.i14, i64 24
  %.0.us.us.us.i16 = load ptr, ptr %i.k, align 8, !tbaa !11 ; 2 uses
  %.not.us.us.us.i17 = icmp eq ptr %.0.us.us.us.i16, null
  br i1 %.not.us.us.us.i17, label %._crit_edge.split.us.split.us.split.us.i18, label %.lr.ph.split.us.split.us.split.us.i13.a, !llvm.loop !71

._crit_edge.split.us.split.us.split.us.i18:       ; preds = %.lr.ph.split.us.split.us.split.us.i13.a
  store i8 1, ptr %i.f, align 4, !tbaa !22
  br label %._crit_edge.i11

.lr.ph.split.us.split.us.split.i5:                ; preds = %.lr.ph.split.us.split.us.split.i5.preheader, %bb.c
  %.022.us.us.i6 = phi ptr [ %.0.us.us.i9, %bb.c ], [ %.019.i22629, %.lr.ph.split.us.split.us.split.i5.preheader ] ; 4 uses
end_hunk_1
begin_hunk_2_@rb_ec_clear_current_thread_trace_func:bb.a
  %.not.us.us.i10 = icmp eq ptr %.0.us.us.i9, null
  br i1 %.not.us.us.i10, label %._crit_edge.i11, label %.lr.ph.split.us.split.us.split.i5, !llvm.loop !71

._crit_edge.i11:                                  ; preds = %bb.c, %rb_ec_ractor_hooks.exit.i.i.thread, %._crit_edge.split.us.split.us.split.us.i18, %rb_ec_ractor_hooks.exit.i.i
  %i.r = phi ptr [ inttoptr (i64 16 to ptr), %rb_ec_ractor_hooks.exit.i.i.thread ], [ %i.d, %rb_ec_ractor_hooks.exit.i.i ], [ %i.d, %._crit_edge.split.us.split.us.split.us.i18 ], [ %i.h, %bb.c ]
  %.0.i.i.i.i25 = phi ptr [ null, %rb_ec_ractor_hooks.exit.i.i.thread ], [ %i.c, %rb_ec_ractor_hooks.exit.i.i ], [ %i.c, %._crit_edge.split.us.split.us.split.us.i18 ], [ %.0.i.i.i.i2430, %bb.c ] ; 2 uses
  %i.s = getelementptr i8, ptr %.0.i.i.i.i25, i64 36
  %i.t = load i8, ptr %i.s, align 4, !tbaa !22, !range !72, !noundef !73
  %i.u = trunc nuw i8 %i.t to i1
end_hunk_2
begin_hunk_3_@rb_ec_clear_current_thread_trace_func:bb.a
.lr.ph.i:                                         ; preds = %rb_threadptr_remove_event_hook.exit
  %i.ab = icmp eq ptr %.val, inttoptr (i64 1 to ptr)
  %i.ac = getelementptr i8, ptr %.0.i.i12.i.i, i64 1132 ; 2 uses
  br i1 %i.ab, label %.lr.ph.split.us.split.us.split.us.i.a, label %.lr.ph.split.us.split.us.split.i

.lr.ph.split.us.split.us.split.us.i.a:            ; preds = %.lr.ph.i, %.lr.ph.split.us.split.us.split.us.i.a
  %.022.us.us.us.i = phi ptr [ %.0.us.us.us.i, %.lr.ph.split.us.split.us.split.us.i.a ], [ %.019.i, %.lr.ph.i ] ; 3 uses
  %i.ad = load i32, ptr %.022.us.us.us.i, align 8, !tbaa !27
  %i.ae = or i32 %i.ad, 2
  store i32 %i.ae, ptr %.022.us.us.us.i, align 8, !tbaa !27
  %i.af = getelementptr i8, ptr %.022.us.us.us.i, i64 24
  %.0.us.us.us.i = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %.not.us.us.us.i = icmp eq ptr %.0.us.us.us.i, null
  br i1 %.not.us.us.us.i, label %._crit_edge.split.us.split.us.split.us.i, label %.lr.ph.split.us.split.us.split.us.i.a, !llvm.loop !71

._crit_edge.split.us.split.us.split.us.i:         ; preds = %.lr.ph.split.us.split.us.split.us.i.a
  store i8 1, ptr %i.ac, align 4, !tbaa !22
  br label %._crit_edge.i

.lr.ph.split.us.split.us.split.i:                 ; preds = %.lr.ph.i, %bb.h
  %.022.us.us.i = phi ptr [ %.0.us.us.i, %bb.h ], [ %.019.i, %.lr.ph.i ] ; 4 uses
end_hunk_3
begin_hunk_4_@rb_ec_clear_current_thread_trace_func:bb.a
  %.not.us.us.i = icmp eq ptr %.0.us.us.i, null
  br i1 %.not.us.us.i, label %._crit_edge.i, label %.lr.ph.split.us.split.us.split.i, !llvm.loop !71

._crit_edge.i:                                    ; preds = %bb.h, %._crit_edge.split.us.split.us.split.us.i, %rb_threadptr_remove_event_hook.exit
  %i.am = getelementptr i8, ptr %.0.i.i12.i.i, i64 1132
  %i.an = load i8, ptr %i.am, align 4, !tbaa !22, !range !72, !noundef !73
  %i.ao = trunc nuw i8 %i.an to i1
end_hunk_4
begin_hunk_5_@rb_ec_clear_all_trace_func:bb.a
  br label %rb_ec_ractor_hooks.exit.i.i

rb_ec_ractor_hooks.exit.i.i:                      ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.d = getelementptr i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  %.019.i1 = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %.not20.i2 = icmp eq ptr %.019.i1, null
  br i1 %.not20.i2, label %._crit_edge.i10, label %.lr.ph.split.us.split.us.split.us.i4

.lr.ph.split.us.split.us.split.us.i4:             ; preds = %rb_ec_ractor_hooks.exit.i.i, %.lr.ph.split.us.split.us.split.us.i4
  %.022.us.us.us.i5 = phi ptr [ %.0.us.us.us.i7, %.lr.ph.split.us.split.us.split.us.i4 ], [ %.019.i1, %rb_ec_ractor_hooks.exit.i.i ] ; 3 uses
  %i.e = load i32, ptr %.022.us.us.us.i5, align 8, !tbaa !27
  %i.f = or i32 %i.e, 2
  store i32 %i.f, ptr %.022.us.us.us.i5, align 8, !tbaa !27
  %i.g = getelementptr i8, ptr %.022.us.us.us.i5, i64 24
  %.0.us.us.us.i7 = load ptr, ptr %i.g, align 8, !tbaa !11 ; 2 uses
  %.not.us.us.us.i8 = icmp eq ptr %.0.us.us.us.i7, null
  br i1 %.not.us.us.us.i8, label %._crit_edge.i10.thread, label %.lr.ph.split.us.split.us.split.us.i4, !prof !75, !llvm.loop !71

._crit_edge.i10.thread:                           ; preds = %.lr.ph.split.us.split.us.split.us.i4
  %1 = getelementptr i8, ptr %.0.i.i.i.i, i64 36
  store i8 1, ptr %1, align 4, !tbaa !22
  br label %bb.c

._crit_edge.i10:                                  ; preds = %rb_ec_ractor_hooks.exit.i.i
  %.phi.trans.insert = getelementptr i8, ptr %.0.i.i.i.i, i64 36
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !22, !range !72
  %i.h = trunc nuw i8 %.pre to i1
  br i1 %i.h, label %bb.c, label %remove_event_hook_from_list.exit12, !prof !76

bb.c:                                             ; preds = %._crit_edge.i10.thread, %._crit_edge.i10
  %i.i = getelementptr i8, ptr %.0.i.i.i.i, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = icmp eq i32 %i.j, 0
end_hunk_5
begin_hunk_6_@rb_ec_clear_all_trace_func:bb.a
  br label %rb_threadptr_remove_event_hook.exit

rb_threadptr_remove_event_hook.exit:              ; preds = %remove_event_hook_from_list.exit12, %bb.e
  %.0.i.i12.i.i = phi ptr [ %i.m, %bb.e ], [ null, %remove_event_hook_from_list.exit12 ] ; 4 uses
  %i.n = getelementptr i8, ptr %.0.i.i12.i.i, i64 1112 ; 2 uses
  %.019.i = load ptr, ptr %i.n, align 8, !tbaa !11 ; 2 uses
  %.not20.i = icmp eq ptr %.019.i, null
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.split.us.split.us.split.us.i

.lr.ph.split.us.split.us.split.us.i:              ; preds = %rb_threadptr_remove_event_hook.exit, %.lr.ph.split.us.split.us.split.us.i
  %.022.us.us.us.i = phi ptr [ %.0.us.us.us.i, %.lr.ph.split.us.split.us.split.us.i ], [ %.019.i, %rb_threadptr_remove_event_hook.exit ] ; 3 uses
  %i.o = load i32, ptr %.022.us.us.us.i, align 8, !tbaa !27
  %i.p = or i32 %i.o, 2
  store i32 %i.p, ptr %.022.us.us.us.i, align 8, !tbaa !27
  %i.q = getelementptr i8, ptr %.022.us.us.us.i, i64 24
  %.0.us.us.us.i = load ptr, ptr %i.q, align 8, !tbaa !11 ; 2 uses
  %.not.us.us.us.i = icmp eq ptr %.0.us.us.us.i, null
  br i1 %.not.us.us.us.i, label %._crit_edge.i.thread, label %.lr.ph.split.us.split.us.split.us.i, !prof !75, !llvm.loop !71

._crit_edge.i.thread:                             ; preds = %.lr.ph.split.us.split.us.split.us.i
  %2 = getelementptr i8, ptr %.0.i.i12.i.i, i64 1132
  store i8 1, ptr %2, align 4, !tbaa !22
  br label %bb.f

._crit_edge.i:                                    ; preds = %rb_threadptr_remove_event_hook.exit
  %.phi.trans.insert14 = getelementptr i8, ptr %.0.i.i12.i.i, i64 1132
  %.pre15 = load i8, ptr %.phi.trans.insert14, align 4, !tbaa !22, !range !72
  %i.r = trunc nuw i8 %.pre15 to i1
  br i1 %i.r, label %bb.f, label %remove_event_hook_from_list.exit, !prof !76

bb.f:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %i.s = getelementptr i8, ptr %.0.i.i12.i.i, i64 1124
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = icmp eq i32 %i.t, 0
end_hunk_6
begin_hunk_7_@remove_event_hook_from_list:bb.a
  br i1 %i.c, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %i.b, label %.lr.ph.split.us.split.us.split.us.a, label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us.a:              ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us.split.us.a
  %.022.us.us.us = phi ptr [ %.0.us.us.us, %.lr.ph.split.us.split.us.split.us.a ], [ %.019, %.lr.ph.split.us.split.us ] ; 3 uses
  %.01721.us.us.us = phi i32 [ %i.g, %.lr.ph.split.us.split.us.split.us.a ], [ 0, %.lr.ph.split.us.split.us ]
  %i.e = load i32, ptr %.022.us.us.us, align 8, !tbaa !27
  %i.f = or i32 %i.e, 2
  store i32 %i.f, ptr %.022.us.us.us, align 8, !tbaa !27
end_hunk_7
begin_hunk_8_@remove_event_hook_from_list:bb.a
  %i.h = getelementptr i8, ptr %.022.us.us.us, i64 24
  %.0.us.us.us = load ptr, ptr %i.h, align 8, !tbaa !11 ; 2 uses
  %.not.us.us.us = icmp eq ptr %.0.us.us.us, null
  br i1 %.not.us.us.us, label %._crit_edge.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split.us.a, !llvm.loop !71

._crit_edge.split.us.split.us.split.us:           ; preds = %.lr.ph.split.us.split.us.split.us.a
  store i8 1, ptr %i.d, align 4, !tbaa !22
  br label %._crit_edge

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us, %bb.c
  %.022.us.us = phi ptr [ %.0.us.us, %bb.c ], [ %.019, %.lr.ph.split.us.split.us ] ; 4 uses
end_hunk_8
begin_hunk_9_@remove_event_hook_from_list:bb.a
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !71

._crit_edge:                                      ; preds = %bb.t, %bb.p, %bb.m, %bb.j, %bb.h, %bb.e, %bb.c, %._crit_edge.split.us.split.us.split.us, %bb.a
  %.017.lcssa = phi i32 [ 0, %bb.a ], [ %.1.us.us, %bb.c ], [ %.1.us26, %bb.m ], [ %i.g, %._crit_edge.split.us.split.us.split.us ], [ %.1.us34, %bb.p ], [ %.1.us, %bb.h ], [ %.1.us.us44, %bb.e ], [ %.1.us26.us, %bb.j ], [ %.1, %bb.t ]
  %i.bu = getelementptr i8, ptr %0, i64 20
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !22, !range !72, !noundef !73
  %i.bw = trunc nuw i8 %i.bv to i1
end_hunk_9
