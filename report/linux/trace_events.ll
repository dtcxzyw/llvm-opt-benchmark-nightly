inline.NumInlined: 360
inline.NumDeleted: 119
begin_hunk_0_@trace_set_clr_event:bb.a
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @trace_array_set_clr_event(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %__ftrace_set_clr_event.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 264
  %.val.i = load i32, ptr %i.a, align 8
  %i.b = and i32 %.val.i, 64
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %__ftrace_set_clr_event.exit

bb.c:                                             ; preds = %bb.b
  %i.c = zext i1 %3 to i32
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #19
  %i.d = tail call fastcc i32 @__ftrace_set_clr_event_nolock(ptr noundef nonnull %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %i.c, ptr noundef null) #21, !srcloc !63
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #19
  br label %__ftrace_set_clr_event.exit

__ftrace_set_clr_event.exit:                      ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ %i.d, %bb.c ], [ -13, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 4) i32 @trace_events_enabled(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #19
  %i.a = getelementptr i8, ptr %0, i64 352        ; 4 uses
  %.032 = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not33 = icmp eq ptr %.032, %i.a
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %trace_event_name.exit.thread.us
  %.035.us = phi ptr [ %.0.us, %trace_event_name.exit.thread.us ], [ %.032, %.lr.ph ] ; 3 uses
  %.01934.us = phi i32 [ %.1.us, %trace_event_name.exit.thread.us ], [ 0, %.lr.ph ] ; 6 uses
  %i.b = getelementptr i8, ptr %.035.us, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 88
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = and i32 %i.e, 4
  %.not24.us = icmp eq i32 %i.f, 0
  br i1 %.not24.us, label %bb.b, label %trace_event_name.exit.thread.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = and i32 %i.e, 512
  %.not.i.us = icmp eq i32 %i.g, 0
  br i1 %.not.i.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  br label %trace_event_name.exit.us

bb.d:                                             ; preds = %bb.b
  %i.j = and i32 %i.e, 8
  %.not8.i.us = icmp eq i32 %i.j, 0
  %i.k = getelementptr i8, ptr %i.c, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  br i1 %.not8.i.us, label %trace_event_name.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.us = icmp eq ptr %i.l, null
  br i1 %.not9.i.us, label %trace_event_name.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.l, align 8
  br label %trace_event_name.exit.us

trace_event_name.exit.us:                         ; preds = %bb.f, %bb.d, %bb.c
  %.0.i.us = phi ptr [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.m, %bb.f ]
  %.not25.us = icmp eq ptr %.0.i.us, null
  br i1 %.not25.us, label %trace_event_name.exit.thread.us, label %bb.g

bb.g:                                             ; preds = %trace_event_name.exit.us
  %i.n = getelementptr i8, ptr %i.c, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not26.us = icmp eq ptr %i.o, null
  br i1 %.not26.us, label %trace_event_name.exit.thread.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %.not27.us = icmp eq ptr %i.q, null
  br i1 %.not27.us, label %trace_event_name.exit.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %.035.us, i64 72
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 1
  %i.v = shl nuw nsw i32 1, %i.u
  %i.w = or i32 %i.v, %.01934.us                  ; 2 uses
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %._crit_edge, label %trace_event_name.exit.thread.us

trace_event_name.exit.thread.us:                  ; preds = %bb.i, %bb.h, %bb.g, %trace_event_name.exit.us, %bb.e, %.lr.ph.split.us
  %.1.us = phi i32 [ %.01934.us, %.lr.ph.split.us ], [ %.01934.us, %bb.e ], [ %i.w, %bb.i ], [ %.01934.us, %bb.h ], [ %.01934.us, %bb.g ], [ %.01934.us, %trace_event_name.exit.us ] ; 2 uses
  %.0.us = load ptr, ptr %.035.us, align 8        ; 2 uses
  %.not.us = icmp eq ptr %.0.us, %i.a
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !67

.lr.ph.split:                                     ; preds = %.lr.ph, %trace_event_name.exit.thread
  %.035 = phi ptr [ %.0, %trace_event_name.exit.thread ], [ %.032, %.lr.ph ] ; 3 uses
  %.01934 = phi i32 [ %.1, %trace_event_name.exit.thread ], [ 0, %.lr.ph ] ; 7 uses
  %i.y = getelementptr i8, ptr %.035, i64 16
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 88
  %i.ab = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.ac = and i32 %i.ab, 4
  %.not24 = icmp eq i32 %i.ac, 0
  br i1 %.not24, label %bb.j, label %trace_event_name.exit.thread

bb.j:                                             ; preds = %.lr.ph.split
  %i.ad = and i32 %i.ab, 512
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %i.z, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  br label %trace_event_name.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = and i32 %i.ab, 8
  %.not8.i = icmp eq i32 %i.ag, 0
  %i.ah = getelementptr i8, ptr %i.z, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  br i1 %.not8.i, label %trace_event_name.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not9.i = icmp eq ptr %i.ai, null
  br i1 %.not9.i, label %trace_event_name.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %trace_event_name.exit

trace_event_name.exit:                            ; preds = %bb.k, %bb.l, %bb.n
  %.0.i = phi ptr [ %i.af, %bb.k ], [ %i.ai, %bb.l ], [ %i.aj, %bb.n ]
  %.not25 = icmp eq ptr %.0.i, null
  br i1 %.not25, label %trace_event_name.exit.thread, label %bb.o

bb.o:                                             ; preds = %trace_event_name.exit
  %i.ak = getelementptr i8, ptr %i.z, i64 16
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not26 = icmp eq ptr %i.al, null
  br i1 %.not26, label %trace_event_name.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %.not27 = icmp eq ptr %i.an, null
  br i1 %.not27, label %trace_event_name.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = load ptr, ptr %i.al, align 8
  %i.ap = tail call i32 @strcmp(ptr noundef %i.ao, ptr noundef nonnull dereferenceable(1) %1) #19
  %.not29 = icmp eq i32 %i.ap, 0
  br i1 %.not29, label %bb.r, label %trace_event_name.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr i8, ptr %.035, i64 72
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 1
  %i.au = shl nuw nsw i32 1, %i.at
  %i.av = or i32 %i.au, %.01934                   ; 2 uses
  %i.aw = icmp eq i32 %i.av, 3
  br i1 %i.aw, label %._crit_edge, label %trace_event_name.exit.thread

trace_event_name.exit.thread:                     ; preds = %bb.m, %bb.r, %bb.q, %.lr.ph.split, %trace_event_name.exit, %bb.o, %bb.p
  %.1 = phi i32 [ %.01934, %.lr.ph.split ], [ %.01934, %bb.q ], [ %i.av, %bb.r ], [ %.01934, %bb.p ], [ %.01934, %bb.o ], [ %.01934, %trace_event_name.exit ], [ %.01934, %bb.m ] ; 2 uses
  %.0 = load ptr, ptr %.035, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !67

._crit_edge:                                      ; preds = %trace_event_name.exit.thread, %bb.r, %trace_event_name.exit.thread.us, %bb.i, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 3, %bb.i ], [ %.1.us, %trace_event_name.exit.thread.us ], [ 3, %bb.r ], [ %.1, %trace_event_name.exit.thread ]
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #19
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @trace_event_update_all(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @down_write(ptr noundef nonnull @trace_event_sem) #19
  %i.a = load ptr, ptr @ftrace_events, align 8    ; 2 uses
  %.not57 = icmp eq ptr %i.a, @ftrace_events
  br i1 %.not57, label %._crit_edge65, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %bb.a
  %2 = sext i32 %1 to i64
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %bb.t
  %.061 = phi ptr [ %.03062, %bb.t ], [ %i.a, %.lr.ph64.preheader ] ; 6 uses
  %.03160 = phi ptr [ %.1, %bb.t ], [ null, %.lr.ph64.preheader ] ; 3 uses
  %.03259 = phi i1 [ %.2.lcssa82, %bb.t ], [ false, %.lr.ph64.preheader ]
  %.03658 = phi i32 [ %.238.lcssa80, %bb.t ], [ 0, %.lr.ph64.preheader ]
  %.03062 = load ptr, ptr %.061, align 8          ; 2 uses
  %.not42 = icmp eq ptr %.03160, null
  %.phi.trans.insert = getelementptr i8, ptr %.061, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.pre71 = load ptr, ptr %.pre, align 8          ; 3 uses
  br i1 %.not42, label %.lr.ph64._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph64
  %.not43 = icmp eq ptr %.pre71, %.03160
  br i1 %.not43, label %.lr.ph64._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %.lr.ph64._crit_edge

.lr.ph64._crit_edge:                              ; preds = %.lr.ph64, %bb.c, %bb.b
  %.137 = phi i32 [ %.03658, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph64 ] ; 4 uses
  %.133 = phi i1 [ %.03259, %bb.b ], [ true, %bb.c ], [ true, %.lr.ph64 ] ; 2 uses
  %.1 = phi ptr [ %.03160, %bb.b ], [ %.pre71, %bb.c ], [ %.pre71, %.lr.ph64 ]
  %i.b = icmp slt i32 %.137, %1
  br i1 %i.b, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph64._crit_edge
  %i.c = getelementptr i8, ptr %.061, i64 16
  %i.d = getelementptr i8, ptr %.061, i64 64
  %3 = sext i32 %.137 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %3, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %.253.a = phi i1 [ %.133, %.lr.ph ], [ %.4, %bb.s ] ; 2 uses
  %.03452 = phi i1 [ false, %.lr.ph ], [ %.135, %bb.s ]
  %.23851.a = phi i32 [ %.137, %.lr.ph ], [ %.440, %bb.s ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.f, %i.i
  br i1 %i.j, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %4 = trunc nsw i64 %indvars.iv to i32
  %spec.select = select i1 %.253.a, i32 %4, i32 %.23851.a
  %.0.val = load ptr, ptr %i.d, align 8
  %i.k = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i64 @strlen(ptr noundef %i.l) #19 ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %sext.i = shl i64 %i.m, 32
  %i.o = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.p = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge59.i, %bb.e
  %.040.i = phi i32 [ 0, %bb.e ], [ %.141.i, %.critedge59.i ] ; 3 uses
  %.0.i = phi ptr [ %.0.val, %bb.e ], [ %i.bt, %.critedge59.i ] ; 13 uses
  %i.q = load i8, ptr %.0.i, align 1              ; 4 uses
  switch i8 %i.q, label %bb.i [
    i8 0, label %update_event_printk.exit
    i8 92, label %bb.g
    i8 34, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.0.i, i64 1       ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %.not56.i = icmp eq i8 %i.s, 0
  br i1 %.not56.i, label %update_event_printk.exit, label %.critedge59.i

bb.h:                                             ; preds = %bb.f
  %i.t = xor i32 %.040.i, 1
  br label %.critedge59.i

bb.i:                                             ; preds = %bb.f
  %.not45.i = icmp eq i32 %.040.i, 0
  br i1 %.not45.i, label %bb.j, label %.critedge59.i

bb.j:                                             ; preds = %bb.i
  %i.u = add i8 %i.q, -58
  %i.v = icmp ult i8 %i.u, -10
  br i1 %i.v, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j, %.preheader.i
  %.1.i = phi ptr [ %i.w, %.preheader.i ], [ %.0.i, %bb.j ]
  %i.w = getelementptr i8, ptr %.1.i, i64 1       ; 3 uses
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr i8, ptr @_ctype, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = and i8 %i.aa, 7
  %.not54.i = icmp eq i8 %i.ab, 0
  br i1 %.not54.i, label %bb.k, label %.preheader.i, !llvm.loop !68

bb.k:                                             ; preds = %.preheader.i
  %.not55.i = icmp eq i8 %i.x, 0
  br i1 %.not55.i, label %update_event_printk.exit, label %.critedge59.i

bb.l:                                             ; preds = %bb.j
  %i.ac = zext i8 %i.q to i64
  %i.ad = getelementptr i8, ptr @_ctype, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 3
  %.not47.i = icmp ne i8 %i.af, 0
  %i.ag = icmp eq i8 %i.q, 95
  %or.cond.i = or i1 %i.ag, %.not47.i
  br i1 %or.cond.i, label %bb.m, label %.critedge59.i

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.k, align 8
  %i.ai = tail call i32 @strncmp(ptr noundef %i.ah, ptr noundef %.0.i, i64 noundef %i.o) #19
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.n, label %.critedge.i.preheader

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %.0.i, i64 %i.o   ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr i8, ptr @_ctype, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = and i8 %i.ao, 7
  %.not48.i = icmp ne i8 %i.ap, 0
  %.not49.i = icmp eq i8 %i.al, 95
  %or.cond57.i = or i1 %.not49.i, %.not48.i
  br i1 %or.cond57.i, label %.critedge.i.preheader, label %bb.o

.critedge.i.preheader:                            ; preds = %bb.m, %bb.n
  br label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.p, align 8
  %i.ar = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0.i, i64 noundef 0, ptr noundef nonnull @.str.26, i64 noundef %i.aq) #19 ; 4 uses
  %i.as = icmp sgt i32 %i.ar, %i.n
  br i1 %i.as, label %eval_replace.exit.thread.i, label %eval_replace.exit.i

eval_replace.exit.i:                              ; preds = %bb.o
  %i.at = add i32 %i.ar, 1
  %i.au = sext i32 %i.at to i64
  %i.av = load i64, ptr %i.p, align 8
  %i.aw = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0.i, i64 noundef %i.au, ptr noundef nonnull @.str.26, i64 noundef %i.av) #19 ; 0 uses
  %i.ax = tail call i64 @strlen(ptr noundef %i.ak) #19 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = sext i32 %i.ar to i64
  %i.ba = getelementptr i8, ptr %.0.i, i64 %i.az  ; 3 uses
  %sext.i.i = shl i64 %i.ax, 32
  %i.bb = ashr exact i64 %sext.i.i, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.ak, i64 %i.bb, i1 false)
  %i.bc = add i32 %i.ar, %i.ay
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %.0.i, i64 %i.bd
  store i8 0, ptr %i.be, align 1
  %.not50.i = icmp eq ptr %i.ba, null
  br i1 %.not50.i, label %eval_replace.exit.thread.i, label %.critedge59.i, !prof !69

eval_replace.exit.thread.i:                       ; preds = %eval_replace.exit.i, %bb.o
  tail call void asm sideeffect "1062: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1062b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1062) #20, !srcloc !70
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 3374, i32 2307, i64 16) #20, !srcloc !71
  tail call void asm sideeffect "1063: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1063b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1063) #20, !srcloc !72
  br label %update_event_printk.exit

.critedge.i:                                      ; preds = %.critedge.i.backedge, %.critedge.i.preheader
  %.3.i = phi ptr [ %.0.i, %.critedge.i.preheader ], [ %.3.i.be, %.critedge.i.backedge ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.3.i, i64 1      ; 5 uses
  %i.bg = load i8, ptr %i.bf, align 1             ; 4 uses
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr i8, ptr @_ctype, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = and i8 %i.bj, 7
  %.not51.i = icmp ne i8 %i.bk, 0
  %i.bl = icmp eq i8 %i.bg, 95
  %or.cond60.i = or i1 %i.bl, %.not51.i
  br i1 %or.cond60.i, label %.critedge.i.backedge, label %bb.p

.critedge.i.backedge:                             ; preds = %.critedge.i, %bb.r
  %.3.i.be = phi ptr [ %i.bf, %.critedge.i ], [ %i.br, %bb.r ]
  br label %.critedge.i, !llvm.loop !73

bb.p:                                             ; preds = %.critedge.i
  switch i8 %i.bg, label %.critedge59.i [
    i8 0, label %update_event_printk.exit
    i8 46, label %bb.r
    i8 45, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr i8, ptr %.3.i, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 62
  br i1 %i.bo, label %bb.r, label %.critedge59.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bp = icmp eq i8 %i.bg, 46
  %i.bq = select i1 %i.bp, i64 1, i64 2
  %i.br = getelementptr i8, ptr %i.bf, i64 %i.bq  ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1
  %.not53.i = icmp eq i8 %i.bs, 0
  br i1 %.not53.i, label %update_event_printk.exit, label %.critedge.i.backedge

.critedge59.i:                                    ; preds = %bb.q, %bb.p, %eval_replace.exit.i, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %.141.i = phi i32 [ %.040.i, %bb.g ], [ %i.t, %bb.h ], [ 1, %bb.i ], [ 0, %bb.k ], [ 0, %eval_replace.exit.i ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.q ]
  %.4.i = phi ptr [ %i.r, %bb.g ], [ %.0.i, %bb.h ], [ %.0.i, %bb.i ], [ %i.w, %bb.k ], [ %i.ba, %eval_replace.exit.i ], [ %.0.i, %bb.l ], [ %i.bf, %bb.p ], [ %i.bf, %bb.q ]
  %i.bt = getelementptr i8, ptr %.4.i, i64 1
  br label %bb.f, !llvm.loop !74

update_event_printk.exit:                         ; preds = %bb.f, %bb.g, %bb.k, %bb.p, %bb.r, %eval_replace.exit.thread.i
  %i.bu = load ptr, ptr %i.g, align 8
  tail call fastcc void @update_event_fields(ptr noundef %.061, ptr noundef %i.bu) #21, !srcloc !75
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %update_event_printk.exit
  %.440 = phi i32 [ %spec.select, %update_event_printk.exit ], [ %.23851.a, %bb.d ] ; 3 uses
  %.135 = phi i1 [ true, %update_event_printk.exit ], [ %.03452, %bb.d ] ; 2 uses
  %.4 = phi i1 [ false, %update_event_printk.exit ], [ %.253.a, %bb.d ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bv = icmp slt i64 %indvars.iv.next, %2
  br i1 %i.bv, label %bb.d, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.s
  br i1 %.135, label %bb.t, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph64._crit_edge, %._crit_edge
  %.2.lcssa81 = phi i1 [ %.4, %._crit_edge ], [ %.133, %.lr.ph64._crit_edge ]
  %.238.lcssa79 = phi i32 [ %.440, %._crit_edge ], [ %.137, %.lr.ph64._crit_edge ]
  tail call fastcc void @update_event_fields(ptr noundef %.061, ptr noundef null) #21, !srcloc !77
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.2.lcssa82 = phi i1 [ %.2.lcssa81, %._crit_edge.thread ], [ %.4, %._crit_edge ]
  %.238.lcssa80 = phi i32 [ %.238.lcssa79, %._crit_edge.thread ], [ %.440, %._crit_edge ]
  %i.bw = tail call i32 @__SCT__cond_resched() #19 ; 0 uses
  %.not = icmp eq ptr %.03062, @ftrace_events
  br i1 %.not, label %._crit_edge65, label %.lr.ph64, !llvm.loop !78

._crit_edge65:                                    ; preds = %bb.t, %bb.a
  tail call void @up_write(ptr noundef nonnull @trace_event_sem) #19
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @update_event_fields(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not57 = icmp eq ptr %1, null
  br i1 %.not57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = tail call i64 @strlen(ptr noundef %i.e) #19
  %i.g = trunc i64 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.049 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.048 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.i, i64 48
  br label %trace_get_fields.exit

bb.f:                                             ; preds = %bb.d
  %i.m = tail call ptr %i.k(ptr noundef %0) #19, !inline_history !11
  br label %trace_get_fields.exit

trace_get_fields.exit:                            ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ] ; 3 uses
  %.087 = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not7988 = icmp eq ptr %.087, %.0.i
  br i1 %.not7988, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %trace_get_fields.exit
  %.not.i68 = icmp eq ptr %.048, null
  %i.n = sext i32 %.049 to i64                    ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 72
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.ab
  %.089 = phi ptr [ %.087, %.lr.ph ], [ %.0, %bb.ab ] ; 3 uses
  %i.q = getelementptr i8, ptr %.089, i64 24      ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 8 uses
  %i.s = tail call ptr @strstr(ptr noundef %i.r, ptr noundef nonnull dereferenceable(1) @.str.27) #19 ; 2 uses
  %.not5457.i = icmp eq ptr %i.s, null
  br i1 %.not5457.i, label %sanitize_field_type.exit, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %bb.g
  %i.t = ptrtoint ptr %i.r to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %i.u = phi ptr [ %i.s, %.lr.ph.lr.ph.i ], [ %i.ar, %.outer.i ]
  %.038.ph59.i = phi ptr [ %i.r, %.lr.ph.lr.ph.i ], [ %.037.i, %.outer.i ]
  %.041.ph58.i = phi ptr [ %i.r, %.lr.ph.lr.ph.i ], [ %.142.i, %.outer.i ] ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %i.v = phi ptr [ %i.u, %.lr.ph.i ], [ %i.ad, %bb.j ] ; 5 uses
  %.03855.i = phi ptr [ %.038.ph59.i, %.lr.ph.i ], [ %i.ac, %bb.j ]
  %.not45.i = icmp eq ptr %i.v, %.03855.i
  br i1 %.not45.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr i8, ptr @_ctype, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = and i8 %i.aa, 32
  %.not46.i = icmp eq i8 %i.ab, 0
  br i1 %.not46.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %i.v, i64 14      ; 2 uses
  %i.ad = tail call ptr @strstr(ptr noundef %i.ac, ptr noundef nonnull dereferenceable(1) @.str.27) #19 ; 2 uses
  %.not.i67 = icmp eq ptr %i.ad, null
  br i1 %.not.i67, label %sanitize_field_type.exit, label %bb.h, !llvm.loop !79

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ae = icmp eq ptr %.041.ph58.i, %i.r
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = tail call noalias ptr @kstrdup(ptr noundef %i.r, i32 noundef 3264) #19 ; 3 uses
  %.not47.i = icmp eq ptr %i.af, null
  br i1 %.not47.i, label %sanitize_field_type.exit.thread, label %.critedge.i, !prof !14

sanitize_field_type.exit.thread:                  ; preds = %bb.l
  tail call void asm sideeffect "1066: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1066b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1066) #20, !srcloc !80
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 3450, i32 2307, i64 16) #20, !srcloc !81
  tail call void asm sideeffect "1067: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1067b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1067) #20, !srcloc !82
  br label %.loopexit

.critedge.i:                                      ; preds = %bb.l
  %i.ag = ptrtoint ptr %i.v to i64
  %i.ah = sub i64 %i.ag, %i.t
  %i.ai = getelementptr i8, ptr %i.af, i64 %i.ah
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i, %bb.k
  %.142.i = phi ptr [ %i.af, %.critedge.i ], [ %.041.ph58.i, %bb.k ] ; 3 uses
  %.037.i = phi ptr [ %i.ai, %.critedge.i ], [ %i.v, %bb.k ] ; 4 uses
  %i.aj = getelementptr i8, ptr %.037.i, i64 14
  br label %bb.n

bb.n:                                             ; preds = %.critedge50.i, %bb.m
  %.039.i = phi i32 [ 1, %bb.m ], [ %.140.i, %.critedge50.i ]
  %.1.i = phi ptr [ %i.aj, %bb.m ], [ %i.an, %.critedge50.i ]
  %i.ak = tail call ptr @strpbrk(ptr noundef %.1.i, ptr noundef nonnull @.str.28) #19 ; 3 uses
  %.not48.i = icmp eq ptr %i.ak, null
  br i1 %.not48.i, label %bb.o, label %.critedge50.i, !prof !14

bb.o:                                             ; preds = %bb.n
  tail call void asm sideeffect "1068: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1068b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1068) #20, !srcloc !83
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 3461, i32 2307, i64 16) #20, !srcloc !84
  tail call void asm sideeffect "1069: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1069b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1069) #20, !srcloc !85
  tail call void @kfree(ptr noundef %.142.i) #19
  br label %sanitize_field_type.exit

.critedge50.i:                                    ; preds = %bb.n
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 40
  %.140.v.i = select i1 %i.am, i32 1, i32 -1
  %.140.i = add i32 %.140.v.i, %.039.i            ; 2 uses
  %i.an = getelementptr i8, ptr %i.ak, i64 1      ; 2 uses
  %i.ao = icmp sgt i32 %.140.i, 0
  br i1 %i.ao, label %bb.n, label %.outer.i, !llvm.loop !86

.outer.i:                                         ; preds = %.critedge50.i
  %i.ap = tail call ptr @skip_spaces(ptr noundef %i.an) #19
  %i.aq = tail call ptr @strcpy(ptr noundef %.037.i, ptr noundef %i.ap) #19 ; 0 uses
  %i.ar = tail call ptr @strstr(ptr noundef %.037.i, ptr noundef nonnull dereferenceable(1) @.str.27) #19 ; 2 uses
  %.not54.i = icmp eq ptr %i.ar, null
  br i1 %.not54.i, label %sanitize_field_type.exit, label %.lr.ph.i, !llvm.loop !79

sanitize_field_type.exit:                         ; preds = %.outer.i, %bb.j, %bb.g, %bb.o
  %.0.i66 = phi ptr [ %.041.ph58.i, %bb.j ], [ %i.r, %bb.o ], [ %i.r, %bb.g ], [ %.142.i, %.outer.i ] ; 8 uses
  %.not59 = icmp eq ptr %.0.i66, null
  br i1 %.not59, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %sanitize_field_type.exit
  br i1 %.not.i68, label %.critedge65, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %.0.i66, i32 noundef 91) #19 ; 2 uses
  %.not12.i = icmp eq ptr %i.as, null
  br i1 %.not12.i, label %.critedge65, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr i8, ptr %i.as, i64 1      ; 5 uses
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr i8, ptr @_ctype, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = and i8 %i.ax, 3
  %.not13.i = icmp ne i8 %i.ay, 0
  %.not14.i = icmp eq i8 %i.au, 95
  %or.cond.i = or i1 %.not14.i, %.not13.i
  br i1 %or.cond.i, label %bb.s, label %.critedge65

bb.s:                                             ; preds = %bb.r
end_hunk_0
