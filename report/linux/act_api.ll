Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/act_api?download=true
inline.NumInlined: 318
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@tcf_register_action:bb.a

bb.i:                                             ; preds = %bb.g
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.o = tail call noalias align 8 dereferenceable_or_null(24) ptr @__kmalloc_cache_noprof(ptr noundef %i.n, i32 noundef 3520, i64 noundef 24) #20 ; 6 uses
  %.not20.i = icmp eq ptr %i.o, null
  br i1 %.not20.i, label %.sink.split, label %tcf_pernet_add_id_list.exit

tcf_pernet_add_id_list.exit:                      ; preds = %bb.i
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i32 %i.j, ptr %i.p, align 8
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @act_pernet_id_list, i64 8), align 8 ; 2 uses
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @act_pernet_id_list, i64 8), align 8
  store ptr @act_pernet_id_list, ptr %i.o, align 8
  %i.r = getelementptr i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %i.r, align 8
  store volatile ptr %i.o, ptr %i.q, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @act_id_mutex) #16
  br label %bb.j

bb.j:                                             ; preds = %tcf_pernet_add_id_list.exit, %bb.e
  tail call void @_raw_write_lock(ptr noundef nonnull @act_mod_lock) #16
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = getelementptr i8, ptr %0, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.024.in = phi ptr [ @act_base, %bb.j ], [ %.024, %bb.m ]
  %.024 = load ptr, ptr %.024.in, align 8         ; 4 uses
  %.not42 = icmp eq ptr %.024, @act_base
  br i1 %.not42, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = load i32, ptr %i.s, align 8
  %i.v = getelementptr i8, ptr %.024, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %.024, i64 16
  %i.z = tail call i32 @strcmp(ptr noundef %i.t, ptr noundef %i.y) #16
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.k, !llvm.loop !56

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_raw_write_unlock(ptr noundef nonnull @act_mod_lock) #16
  %i.ab = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not36 = icmp eq ptr %i.ab, null
  br i1 %.not36, label %bb.t, label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @act_base, i64 8), align 8 ; 2 uses
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @act_base, i64 8), align 8
  store ptr @act_base, ptr %0, align 8
  %i.ad = getelementptr i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  store volatile ptr %0, ptr %i.ac, align 8
  tail call void @_raw_write_unlock(ptr noundef nonnull @act_mod_lock) #16
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.ae = load i32, ptr %i.ab, align 4
  tail call void @mutex_lock(ptr noundef nonnull @act_id_mutex) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.0.in.i37 = phi ptr [ @act_pernet_id_list, %bb.p ], [ %.0.i38, %bb.r ]
  %.0.i38 = load ptr, ptr %.0.in.i37, align 8     ; 7 uses
  %.not.i39 = icmp eq ptr %.0.i38, @act_pernet_id_list
  br i1 %.not.i39, label %.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr i8, ptr %.0.i38, i64 16
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp eq i32 %i.ag, %i.ae
  br i1 %i.ah, label %bb.s, label %bb.q, !llvm.loop !1

bb.s:                                             ; preds = %bb.r
  %i.ai = getelementptr i8, ptr %.0.i38, i64 8    ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load ptr, ptr %.0.i38, align 8          ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  store volatile ptr %i.ak, ptr %i.aj, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.0.i38, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.ai, align 8
  tail call void @kfree(ptr noundef %.0.i38) #16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.q, %bb.s, %bb.i
  %.025.ph = phi i32 [ -17, %bb.q ], [ -12, %bb.i ], [ -17, %bb.s ], [ -17, %bb.h ]
  tail call void @mutex_unlock(ptr noundef nonnull @act_id_mutex) #16
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.n
  %.025 = phi i32 [ -17, %bb.n ], [ %.025.ph, %.sink.split ]
  tail call void @unregister_pernet_subsys(ptr noundef %1) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %bb.t, %bb.o
  %.0 = phi i32 [ -22, %bb.a ], [ %.025, %bb.t ], [ 0, %bb.o ], [ -22, %bb.c ], [ -22, %bb.b ], [ %i.g, %bb.d ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2, 1) i32 @tcf_unregister_action(ptr nofree noundef captures(address) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @_raw_write_lock(ptr noundef nonnull @act_mod_lock) #16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.in = phi ptr [ @act_base, %bb.a ], [ %.0, %bb.c ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 3 uses
  %.not = icmp eq ptr %.0, @act_base
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = icmp eq ptr %.0, %0
  br i1 %i.a, label %bb.e, label %bb.b, !llvm.loop !57

bb.d:                                             ; preds = %bb.b
  tail call void @_raw_write_unlock(ptr noundef nonnull @act_mod_lock) #16
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store volatile ptr %i.d, ptr %i.c, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.b, align 8
  tail call void @_raw_write_unlock(ptr noundef nonnull @act_mod_lock) #16
  tail call void @unregister_pernet_subsys(ptr noundef %1) #16
  %i.f = getelementptr i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %i.g, align 4
  tail call void @mutex_lock(ptr noundef nonnull @act_id_mutex) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.0.in.i = phi ptr [ @act_pernet_id_list, %bb.f ], [ %.0.i, %bb.h ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 7 uses
  %.not.i = icmp eq ptr %.0.i, @act_pernet_id_list
  br i1 %.not.i, label %tcf_pernet_del_id_list.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr i8, ptr %.0.i, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, %i.h
  br i1 %i.k, label %bb.i, label %bb.g, !llvm.loop !1

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr i8, ptr %.0.i, i64 8       ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %.0.i, align 8             ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8
  store volatile ptr %i.n, ptr %i.m, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.0.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.l, align 8
  tail call void @kfree(ptr noundef %.0.i) #16
  br label %tcf_pernet_del_id_list.exit

tcf_pernet_del_id_list.exit:                      ; preds = %bb.g, %bb.i
  tail call void @mutex_unlock(ptr noundef nonnull @act_id_mutex) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %tcf_pernet_del_id_list.exit
  %.01319 = phi i32 [ 0, %bb.e ], [ 0, %tcf_pernet_del_id_list.exit ], [ -2, %bb.d ]
  ret i32 %.01319
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 7, 6) i32 @tcf_action_exec(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 129        ; 2 uses
  %i.b = load i32, ptr %i.a, align 1              ; 2 uses
  %i.c = and i32 %i.b, 8
  %.not.i.not = icmp eq i32 %i.c, 0
  br i1 %.not.i.not, label %skb_skip_tc_classify.exit.preheader, label %skb_skip_tc_classify.exit.thread.a

skb_skip_tc_classify.exit.preheader:              ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %skb_skip_tc_classify.exit.us.preheader, label %.thread

skb_skip_tc_classify.exit.us.preheader:           ; preds = %skb_skip_tc_classify.exit.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %skb_skip_tc_classify.exit.us

skb_skip_tc_classify.exit.us:                     ; preds = %skb_skip_tc_classify.exit.us.preheader, %bb.i
  %.041.us = phi i32 [ %i.n, %bb.i ], [ 0, %skb_skip_tc_classify.exit.us.preheader ]
  %.035.us = phi i32 [ %13, %bb.i ], [ 32, %skb_skip_tc_classify.exit.us.preheader ]
  %.032.us = phi i32 [ %11, %bb.i ], [ 0, %skb_skip_tc_classify.exit.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %skb_skip_tc_classify.exit.us, %select.unfold62.us
  %indvars.iv = phi i64 [ 0, %skb_skip_tc_classify.exit.us ], [ %indvars.iv.next, %select.unfold62.us ] ; 2 uses
  %.13393.us = phi i32 [ %.032.us, %skb_skip_tc_classify.exit.us ], [ %.234.ph.us, %select.unfold62.us ] ; 2 uses
  %.14291.us = phi i32 [ %.041.us, %skb_skip_tc_classify.exit.us ], [ %.243.ph.us, %select.unfold62.us ] ; 2 uses
  %i.e = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not.us = icmp eq i32 %.13393.us, 0
  br i1 %.not.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %.13393.us, -1
  br label %select.unfold62.us

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 176
  %i.i = load i32, ptr %i.h, align 16
  %i.j = and i32 %i.i, 4
  %.not87.us = icmp eq i32 %i.j, 0
  br i1 %.not87.us, label %.preheader.us, label %select.unfold62.us

.preheader.us:                                    ; preds = %bb.d, %bb.e
  %.039.us = phi i32 [ %i.p, %bb.e ], [ 32, %bb.d ]
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @tc_skip_wrapper_act, i1 true) #15
          to label %tc_act.exit.us [label %tc_act.exit.us], !srcloc !60

tc_act.exit.us:                                   ; preds = %.preheader.us, %.preheader.us
  %i.k = load ptr, ptr %i.f, align 16
  %i.l = getelementptr i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 %i.m(ptr noundef %0, ptr noundef %i.f, ptr noundef %3) #16, !inline_history !58 ; 6 uses
  %i.o = icmp eq i32 %i.n, 6
  br i1 %i.o, label %bb.e, label %4, !prof !16

bb.e:                                             ; preds = %tc_act.exit.us
  %i.p = add nsw i32 %.039.us, -1                 ; 2 uses
  %.not57.us = icmp eq i32 %i.p, 0
  br i1 %.not57.us, label %.split.us, label %.preheader.us

4:                                                ; preds = %tc_act.exit.us
  %5 = and i32 %i.n, -268435456
  switch i32 %5, label %bb.h [
    i32 268435456, label %bb.i
    i32 536870912, label %bb.f
  ]

bb.f:                                             ; preds = %4
  %6 = getelementptr i8, ptr %i.f, i64 168        ; 2 uses
  %7 = load volatile ptr, ptr %6, align 8
  %.not53.us = icmp eq ptr %7, null
  br i1 %.not53.us, label %.split98.us, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %8 = load volatile ptr, ptr %6, align 8
  %9 = getelementptr i8, ptr %8, i64 24
  %10 = load volatile ptr, ptr %9, align 8
  store ptr %10, ptr %3, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %4
  %.not54.us = icmp eq i32 %i.n, 3
  br i1 %.not54.us, label %select.unfold62.us, label %.thread

select.unfold62.us:                               ; preds = %bb.h, %bb.d, %bb.c
  %.243.ph.us = phi i32 [ %.14291.us, %bb.c ], [ %.14291.us, %bb.d ], [ 3, %bb.h ] ; 2 uses
  %.234.ph.us = phi i32 [ %i.g, %bb.c ], [ 0, %bb.d ], [ 0, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not.a, label %.thread, label %bb.b, !llvm.loop !59

bb.i:                                             ; preds = %4
  %11 = and i32 %i.n, 511                         ; 2 uses
  %12 = add nsw i32 %11, -1
  %or.cond.us = icmp uge i32 %12, %2
  %13 = add nsw i32 %.035.us, -1                  ; 2 uses
  %.not56.us = icmp eq i32 %13, 0
  %or.cond86.us = select i1 %or.cond.us, i1 true, i1 %.not56.us
  br i1 %or.cond86.us, label %.thread, label %skb_skip_tc_classify.exit.us

skb_skip_tc_classify.exit.thread.a:               ; preds = %bb.a
  %14 = and i32 %i.b, -9
  store i32 %14, ptr %i.a, align 1
  br label %.thread

.split.us:                                        ; preds = %bb.e
  %15 = tail call i32 @net_ratelimit() #16
  %.not58 = icmp eq i32 %15, 0
  br i1 %.not58, label %.thread, label %bb.j

bb.j:                                             ; preds = %.split.us
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #21 ; 0 uses
  br label %.thread

.split98.us:                                      ; preds = %bb.f
  %17 = getelementptr i8, ptr %0, i64 72
  store i32 106, ptr %17, align 4
  br label %.thread

.thread:                                          ; preds = %bb.i, %select.unfold62.us, %bb.h, %skb_skip_tc_classify.exit.preheader, %.split98.us, %.split.us, %bb.j, %skb_skip_tc_classify.exit.thread.a
  %.3 = phi i32 [ 0, %skb_skip_tc_classify.exit.thread.a ], [ %i.n, %bb.h ], [ 0, %.split.us ], [ 0, %bb.j ], [ 2, %.split98.us ], [ 0, %skb_skip_tc_classify.exit.preheader ], [ %.243.ph.us, %select.unfold62.us ], [ 0, %bb.i ]
  ret i32 %.3
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 2) i32 @tcf_action_destroy(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not22 = icmp eq i32 %1, 0
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.us28 = icmp eq ptr %i.a, null             ; 2 uses
  br i1 %.not22, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %.not.us28, label %.critedge, label %.lr.ph30

bb.b:                                             ; preds = %.thread.us
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.b = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next39
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.us = icmp eq ptr %i.c, null
  br i1 %.not.us, label %.critedge, label %.lr.ph30, !llvm.loop !61

.lr.ph30:                                         ; preds = %.split.us, %bb.b
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %bb.b ], [ 0, %.split.us ] ; 3 uses
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.a, %.split.us ] ; 6 uses
  %i.e = getelementptr [8 x i8], ptr %0, i64 %indvars.iv38
  store ptr null, ptr %i.e, align 8
  %i.f = load ptr, ptr %i.d, align 16
  %i.g = getelementptr i8, ptr %i.d, i64 32
  %i.h = load volatile i32, ptr %i.g, align 16
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph30
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 16             ; 3 uses
  %i.l = getelementptr i8, ptr %i.d, i64 28
  %i.m = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %i.l, ptr noundef %i.k) #16
  br i1 %i.m, label %bb.d, label %.thread.us

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.k, i64 24
  %i.o = getelementptr i8, ptr %i.d, i64 24
  %i.p = load i32, ptr %i.o, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @idr_remove(ptr noundef %i.n, i64 noundef %i.q) #16 ; 0 uses
  tail call void @mutex_unlock(ptr noundef %i.k) #16
  tail call fastcc void @tcf_action_cleanup(ptr noundef nonnull %i.d) #17, !srcloc !17
  %i.s = getelementptr i8, ptr %i.f, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @module_put(ptr noundef %i.t) #16
  br label %.thread.us

.thread.us:                                       ; preds = %bb.c, %bb.d
  %.08.i20.us = phi i32 [ 1, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv38, 31
  br i1 %exitcond41.not, label %.thread.us..critedge.split.us_crit_edge, label %bb.b, !llvm.loop !61

.thread.us..critedge.split.us_crit_edge:          ; preds = %.thread.us
  br label %.critedge, !llvm.loop !61

.split:                                           ; preds = %bb.a
  br i1 %.not.us28, label %.critedge, label %.lr.ph

bb.e:                                             ; preds = %.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !61

.lr.ph:                                           ; preds = %.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.split ] ; 3 uses
  %i.w = phi ptr [ %i.v, %bb.e ], [ %i.a, %.split ] ; 6 uses
  %i.x = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  store ptr null, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.w, align 16
  %i.z = getelementptr i8, ptr %i.w, i64 16
  %i.aa = load ptr, ptr %i.z, align 16            ; 3 uses
  %i.ab = getelementptr i8, ptr %i.w, i64 28
  %i.ac = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %i.ab, ptr noundef %i.aa) #16
  %i.ad = getelementptr i8, ptr %i.w, i64 32      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ad, ptr elementtype(i32) %i.ad) #15
  br i1 %i.ac, label %bb.f, label %.thread

bb.f:                                             ; preds = %.lr.ph
  %i.ae = getelementptr i8, ptr %i.aa, i64 24
  %i.af = getelementptr i8, ptr %i.w, i64 24
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call ptr @idr_remove(ptr noundef %i.ae, i64 noundef %i.ah) #16 ; 0 uses
  tail call void @mutex_unlock(ptr noundef %i.aa) #16
  tail call fastcc void @tcf_action_cleanup(ptr noundef nonnull %i.w) #17, !srcloc !17
  %i.aj = getelementptr i8, ptr %i.y, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void @module_put(ptr noundef %i.ak) #16
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.f
  %.08.i20 = phi i32 [ 1, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 31
  br i1 %exitcond.not, label %.thread..critedge.split_crit_edge, label %bb.e, !llvm.loop !61

.thread..critedge.split_crit_edge:                ; preds = %.thread
  br label %.critedge, !llvm.loop !61

.critedge:                                        ; preds = %bb.e, %.lr.ph30, %bb.b, %.split, %.thread..critedge.split_crit_edge, %.split.us, %.thread.us..critedge.split.us_crit_edge
  %.us-phi = phi i32 [ %.08.i20, %.thread..critedge.split_crit_edge ], [ %.08.i20.us, %bb.b ], [ %.08.i20.us, %.thread.us..critedge.split.us_crit_edge ], [ 0, %.split.us ], [ 0, %.split ], [ -1, %.lr.ph30 ], [ %.08.i20, %bb.e ]
  ret i32 %.us-phi
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @tcf_action_dump_old(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 16
  %i.b = getelementptr i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @tcf_action_dump(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 188        ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 200        ; 4 uses
  br i1 %4, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.d
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr [8 x i8], ptr %1, i64 %indvars.iv35
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.us = icmp eq ptr %i.d, null
  br i1 %.not.us, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.split.us
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 3 uses
  %.val.i.us = load i32, ptr %i.a, align 4
  %.val4.i.us = load ptr, ptr %i.b, align 8
  %i.e = zext i32 %.val.i.us to i64
  %i.f = getelementptr i8, ptr %.val4.i.us, i64 %i.e ; 4 uses
  %i.g = trunc nuw nsw i64 %indvars.iv.next36 to i32
  %i.h = tail call i32 @nla_put(ptr noundef %0, i32 noundef %i.g, i32 noundef 0, ptr noundef null) #16
  %i.i = icmp slt i32 %i.h, 0
  %i.j = icmp eq ptr %i.f, null
  %i.k = select i1 %i.i, i1 true, i1 %i.j
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call fastcc i32 @tcf_action_dump_terse(ptr noundef %0, ptr noundef %i.d, i1 noundef zeroext false) #17, !srcloc !63
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.split22, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i26.us = load i32, ptr %i.a, align 4
  %.val4.i27.us = load ptr, ptr %i.b, align 8
  %i.n = zext i32 %.val.i26.us to i64
  %i.o = getelementptr i8, ptr %.val4.i27.us, i64 %i.n
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i16
  store i16 %i.s, ptr %i.f, align 2
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, 32
  br i1 %exitcond38.not, label %.critedge, label %.split.us, !llvm.loop !62

.split:                                           ; preds = %bb.a, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.a ] ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.val.i = load i32, ptr %i.a, align 4
  %.val4.i = load ptr, ptr %i.b, align 8
  %i.v = zext i32 %.val.i to i64
  %i.w = getelementptr i8, ptr %.val4.i, i64 %i.v ; 4 uses
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.y = tail call i32 @nla_put(ptr noundef %0, i32 noundef %i.x, i32 noundef 0, ptr noundef null) #16
  %i.z = icmp slt i32 %i.y, 0
  %i.aa = icmp eq ptr %i.w, null
  %i.ab = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %i.ab, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call fastcc i32 @tcf_action_dump_1(ptr noundef %0, ptr noundef %i.u, i32 noundef %2, i32 noundef %3) #17, !srcloc !64
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.split22, label %bb.h

.split22:                                         ; preds = %bb.f, %bb.c
  %.us-phi29 = phi ptr [ %i.f, %bb.c ], [ %i.w, %bb.f ] ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
end_hunk_0
