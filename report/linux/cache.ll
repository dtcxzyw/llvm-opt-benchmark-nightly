Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cache?download=true
inline.NumInlined: 372
inline.NumDeleted: 138
begin_hunk_0_@sunrpc_cache_upcall_warn:bb.a
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call i32 @__SCT__tp_func_cache_entry_no_listener(ptr noundef %i.y, ptr noundef %0, ptr noundef %1) #16 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !30
  %i.aa = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aa, ptr elementtype(i64) %i.aa) #17, !srcloc !31
  br label %trace_cache_entry_no_listener.exit

cache_listeners_exist.exit.thread:                ; preds = %bb.a, %cache_listeners_exist.exit
  %i.ab = call i32 @sunrpc_cache_upcall(ptr noundef %0, ptr noundef %1) #18
  br label %trace_cache_entry_no_listener.exit

trace_cache_entry_no_listener.exit:               ; preds = %bb.g, %arch_test_bit.exit.i.i, %warn_no_listener.exit, %cache_listeners_exist.exit.thread
  %.0 = phi i32 [ %i.ab, %cache_listeners_exist.exit.thread ], [ -22, %warn_no_listener.exit ], [ -22, %bb.g ], [ -22, %arch_test_bit.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @qword_get(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.051 = phi ptr [ %i.a, %bb.a ], [ %i.c, %bb.c ] ; 6 uses
  %i.b = load i8, ptr %.051, align 1              ; 2 uses
  switch i8 %i.b, label %.loopexit [
    i8 32, label %bb.c
    i8 92, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.051, i64 1
  br label %bb.b, !llvm.loop !81

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.051, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 120
  br i1 %i.f, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %i.g = add i32 %2, -1                           ; 3 uses
  %.15281 = getelementptr i8, ptr %.051, i64 2    ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.critedgethread-pre-split

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.15285 = phi ptr [ %.152, %bb.f ], [ %.15281, %.preheader ] ; 5 uses
  %.05084 = phi i32 [ %i.t, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %.051.pn83 = phi ptr [ %.15285, %bb.f ], [ %.051, %.preheader ]
  %.05682 = phi ptr [ %i.s, %bb.f ], [ %1, %.preheader ] ; 4 uses
  %i.i = load i8, ptr %.15285, align 1
  %i.j = tail call i32 @hex_to_bin(i8 noundef zeroext %i.i) #16 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.critedgethread-pre-split, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.051.pn83, i64 3
  %i.m = load i8, ptr %i.l, align 1
  %i.n = tail call i32 @hex_to_bin(i8 noundef zeroext %i.m) #16 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.critedgethread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = shl i32 %i.j, 4
  %i.q = or i32 %i.n, %i.p
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr i8, ptr %.05682, i64 1     ; 2 uses
  store i8 %i.r, ptr %.05682, align 1
  %i.t = add nuw nsw i32 %.05084, 1               ; 2 uses
  %.152 = getelementptr i8, ptr %.15285, i64 2    ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.g
  br i1 %exitcond.not, label %.critedgethread-pre-split, label %.lr.ph

.loopexit:                                        ; preds = %bb.b, %bb.d
  %i.u = add i32 %2, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.u, i32 0) ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.loopexit
  %i.v = phi i8 [ %i.b, %.loopexit ], [ %.pre, %bb.o ] ; 7 uses
  %.258 = phi ptr [ %1, %.loopexit ], [ %.359, %bb.o ] ; 6 uses
  %.354 = phi ptr [ %.051, %.loopexit ], [ %.455, %bb.o ] ; 9 uses
  %.2 = phi i32 [ 0, %.loopexit ], [ %.3, %bb.o ] ; 5 uses
  switch i8 %i.v, label %bb.h [
    i8 32, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
  ]

bb.h:                                             ; preds = %bb.g
  %exitcond98.not = icmp eq i32 %.2, %smax
  br i1 %exitcond98.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq i8 %i.v, 92
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %.354, i64 1
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = and i8 %i.y, -4
  %or.cond = icmp eq i8 %i.z, 48
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr i8, ptr %.354, i64 2
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = and i8 %i.ab, -8
  %.not = icmp eq i8 %i.ac, 48
  br i1 %.not, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %.354, i64 3
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.af = and i8 %i.ae, -8
  %.not78 = icmp eq i8 %i.af, 48
  br i1 %.not78, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = shl i8 %i.y, 6
  %i.ah = shl i8 %i.ab, 3
  %i.ai = and i8 %i.ah, 56
  %i.aj = or disjoint i8 %i.ai, %i.ag
  %i.ak = getelementptr i8, ptr %.354, i64 4
  %i.al = add nsw i8 %i.ae, -48
  %i.am = or disjoint i8 %i.al, %i.aj
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.an = getelementptr i8, ptr %.354, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %storemerge = phi i8 [ %i.am, %bb.m ], [ %i.v, %bb.n ]
  %.455 = phi ptr [ %i.ak, %bb.m ], [ %i.an, %bb.n ] ; 2 uses
  store i8 %storemerge, ptr %.258, align 1
  %.3 = add nuw i32 %.2, 1
  %.359 = getelementptr i8, ptr %.258, i64 1
  %.pre = load i8, ptr %.455, align 1
  br label %bb.g, !llvm.loop !82

.critedgethread-pre-split:                        ; preds = %bb.f, %.lr.ph, %bb.e, %.preheader
  %.056.lcssa = phi ptr [ %1, %.preheader ], [ %.05682, %bb.e ], [ %.05682, %.lr.ph ], [ %i.s, %bb.f ]
  %.050.lcssa = phi i32 [ 0, %.preheader ], [ %.05084, %bb.e ], [ %.05084, %.lr.ph ], [ %i.g, %bb.f ]
  %.152.lcssa = phi ptr [ %.15281, %.preheader ], [ %.15285, %bb.e ], [ %.15285, %.lr.ph ], [ %.152, %bb.f ] ; 2 uses
  %.pr = load i8, ptr %.152.lcssa, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.g, %bb.g, %bb.h, %.critedgethread-pre-split
  %i.ao = phi i8 [ %.pr, %.critedgethread-pre-split ], [ %i.v, %bb.h ], [ %i.v, %bb.g ], [ %i.v, %bb.g ], [ %i.v, %bb.g ]
  %.460 = phi ptr [ %.056.lcssa, %.critedgethread-pre-split ], [ %.258, %bb.h ], [ %.258, %bb.g ], [ %.258, %bb.g ], [ %.258, %bb.g ]
  %.5 = phi ptr [ %.152.lcssa, %.critedgethread-pre-split ], [ %.354, %bb.h ], [ %.354, %bb.g ], [ %.354, %bb.g ], [ %.354, %bb.g ]
  %.4 = phi i32 [ %.050.lcssa, %.critedgethread-pre-split ], [ %.2, %bb.g ], [ %.2, %bb.g ], [ %.2, %bb.g ], [ %smax, %bb.h ]
  switch i8 %i.ao, label %bb.r [
    i8 32, label %.preheader111
    i8 10, label %.preheader111
    i8 0, label %.preheader111
  ]

.preheader111:                                    ; preds = %.critedge, %.critedge, %.critedge
  br label %bb.p

bb.p:                                             ; preds = %.preheader111, %bb.p
  %.6 = phi ptr [ %i.ar, %bb.p ], [ %.5, %.preheader111 ] ; 3 uses
  %i.ap = load i8, ptr %.6, align 1
  %i.aq = icmp eq i8 %i.ap, 32
  %i.ar = getelementptr i8, ptr %.6, i64 1
  br i1 %i.aq, label %bb.p, label %bb.q, !llvm.loop !83

bb.q:                                             ; preds = %bb.p
  store ptr %.6, ptr %0, align 8
  store i8 0, ptr %.460, align 1
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.q
  %.0 = phi i32 [ %.4, %bb.q ], [ -1, %.critedge ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @cache_seq_start_rcu(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #16
  %i.a = getelementptr i8, ptr %0, i64 104
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %__cache_seq_start.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.b, -1                         ; 2 uses
  %i.d = lshr i64 %i.c, 32                        ; 2 uses
  %i.e = trunc nuw i64 %i.d to i32                ; 3 uses
  %i.f = getelementptr i8, ptr %.val, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %.not55.i = icmp ugt i32 %i.g, %i.e
  br i1 %.not55.i, label %bb.c, label %__cache_seq_start.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.val, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.d
  %i.k = load volatile ptr, ptr %i.j, align 8     ; 3 uses
  %.not572.i = icmp eq ptr %i.k, null
  br i1 %.not572.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.l = trunc i64 %i.c to i32                    ; 2 uses
  %.not60.i24 = icmp eq i32 %i.l, 0
  br i1 %.not60.i24, label %__cache_seq_start.exit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph, %bb.c
  %i.m = add i32 %i.g, -1                         ; 2 uses
  %exitcond.not.i18 = icmp eq i32 %i.m, %i.e
  br i1 %exitcond.not.i18, label %..critedge_crit_edge.i, label %.lr.ph27

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.n = add i32 %.0464.i25, -1                   ; 2 uses
  %.not60.i = icmp eq i32 %i.n, 0
  br i1 %.not60.i, label %__cache_seq_start.exit, label %.lr.ph, !llvm.loop !84

.lr.ph:                                           ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %.0473.i26 = phi ptr [ %i.o, %.lr.ph.i ], [ %i.k, %.lr.ph.preheader.i ]
  %.0464.i25 = phi i32 [ %i.n, %.lr.ph.i ], [ %i.l, %.lr.ph.preheader.i ]
  %i.o = load volatile ptr, ptr %.0473.i26, align 8 ; 3 uses
  %.not57.i = icmp eq ptr %i.o, null
  br i1 %.not57.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !84

bb.d:                                             ; preds = %.lr.ph27
  %exitcond.not.i = icmp eq i32 %2, %i.m
  br i1 %exitcond.not.i, label %..critedge_crit_edge.i, label %.lr.ph27, !llvm.loop !85

..critedge_crit_edge.i:                           ; preds = %bb.d, %.preheader.i
  %.pre.i = zext i32 %i.g to i64
  br label %.critedge.i

.lr.ph27:                                         ; preds = %.preheader.i, %bb.d
  %i.p = phi i32 [ %2, %bb.d ], [ %i.e, %.preheader.i ]
  %2 = add i32 %i.p, 1                            ; 3 uses
  %i.q = zext i32 %2 to i64                       ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.i, i64 %i.q
  %i.s = load volatile ptr, ptr %i.r, align 8     ; 2 uses
  %.not58.i = icmp eq ptr %i.s, null
  br i1 %.not58.i, label %bb.d, label %.critedge.i, !llvm.loop !85

.critedge.i:                                      ; preds = %.lr.ph27, %..critedge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.q, %.lr.ph27 ]
  %.148.lcssa.i = phi ptr [ null, %..critedge_crit_edge.i ], [ %i.s, %.lr.ph27 ]
  %i.t = shl nuw i64 %.pre-phi.i, 32
  %i.u = or disjoint i64 %i.t, 1
  store i64 %i.u, ptr %1, align 8
  br label %__cache_seq_start.exit

__cache_seq_start.exit:                           ; preds = %.lr.ph.i, %.lr.ph.preheader.i, %bb.a, %bb.b, %.critedge.i
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ null, %bb.b ], [ %.148.lcssa.i, %.critedge.i ], [ %i.k, %.lr.ph.preheader.i ], [ %i.o, %.lr.ph.i ]
  ret ptr %.0.i
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local ptr @cache_seq_next_rcu(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef captures(none) %2) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = load i64, ptr %2, align 8                ; 2 uses
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  %spec.select.i = select i1 %i.e, i32 0, i32 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %.val, i64 8       ; 3 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp slt i32 %spec.select.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %cache_seq_next.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val, i64 16      ; 3 uses
  %i.j = sext i32 %spec.select.i to i64           ; 2 uses
  %i.k = icmp ult ptr %1, inttoptr (i64 2 to ptr)
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = load volatile ptr, ptr %1, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.j
  %i.o = load volatile ptr, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2.peel.i = phi ptr [ %i.l, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.not40.peel.i = icmp eq ptr %.2.peel.i, null
  br i1 %.not40.peel.i, label %bb.e, label %.loopexit6.i

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.peel.i = add nsw i64 %i.j, 1   ; 4 uses
  %i.p = shl nsw i64 %indvars.iv.next.peel.i, 32  ; 2 uses
  store i64 %i.p, ptr %2, align 8
  %i.q = load i32, ptr %i.f, align 8
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next.peel.i, %i.r
  br i1 %i.s, label %.peel.next.i.preheader, label %cache_seq_next.exit

.peel.next.i.preheader:                           ; preds = %bb.e
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.next.peel.i
  %i.v = load volatile ptr, ptr %i.u, align 8     ; 2 uses
  %.not40.i6 = icmp eq ptr %i.v, null
  br i1 %.not40.i6, label %.lr.ph, label %.loopexit6.i

.peel.next.i:                                     ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.i, align 8
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %indvars.iv.next.i
  %i.y = load volatile ptr, ptr %i.x, align 8     ; 2 uses
  %.not40.i = icmp eq ptr %i.y, null
  br i1 %.not40.i, label %.lr.ph, label %.loopexit6.i, !llvm.loop !86

.loopexit6.i:                                     ; preds = %.peel.next.i, %.peel.next.i.preheader, %bb.d
  %i.z = phi i64 [ %i.b, %bb.d ], [ %i.p, %.peel.next.i.preheader ], [ %i.ab, %.peel.next.i ]
  %.2.lcssa.i = phi ptr [ %.2.peel.i, %bb.d ], [ %i.v, %.peel.next.i.preheader ], [ %i.y, %.peel.next.i ]
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %2, align 8
  br label %cache_seq_next.exit

.lr.ph:                                           ; preds = %.peel.next.i.preheader, %.peel.next.i
  %indvars.iv.i7 = phi i64 [ %indvars.iv.next.i, %.peel.next.i ], [ %indvars.iv.next.peel.i, %.peel.next.i.preheader ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i7, 1 ; 4 uses
  %i.ab = shl nsw i64 %indvars.iv.next.i, 32      ; 2 uses
  store i64 %i.ab, ptr %2, align 8
  %i.ac = load i32, ptr %i.f, align 8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %.peel.next.i, label %cache_seq_next.exit, !llvm.loop !86

cache_seq_next.exit:                              ; preds = %.lr.ph, %bb.a, %bb.e, %.loopexit6.i
  %.0.i = phi ptr [ %.2.lcssa.i, %.loopexit6.i ], [ null, %bb.a ], [ null, %bb.e ], [ null, %.lr.ph ]
  ret ptr %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @cache_seq_stop_rcu(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_unlock() #16
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @cache_initialize() local_unnamed_addr #6 section ".init.text" align 16 prefalign(16) {
bb.a:
  store i64 4503599625273344, ptr @cache_cleaner, align 8
  store volatile ptr getelementptr inbounds nuw (i8, ptr @cache_cleaner, i64 8), ptr getelementptr inbounds nuw (i8, ptr @cache_cleaner, i64 8), align 8
  store volatile ptr getelementptr inbounds nuw (i8, ptr @cache_cleaner, i64 8), ptr getelementptr inbounds nuw (i8, ptr @cache_cleaner, i64 16), align 8
  store ptr @do_cache_clean, ptr getelementptr inbounds nuw (i8, ptr @cache_cleaner, i64 24), align 8
  tail call void @timer_init_key(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @cache_cleaner, i64 32), ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef null, ptr noundef null) #16
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_cache_clean(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile ptr, ptr @cache_list, align 8
  %.not = icmp eq ptr %i.a, @cache_list
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @cache_clean() #18, !srcloc !88
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @round_jiffies_relative(i64 noundef 30000) #16
  %sext = shl i64 %i.d, 32
  %i.e = ashr exact i64 %sext, 32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ 5, %bb.b ]
  %i.f = load ptr, ptr @system_power_efficient_wq, align 8
  %i.g = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %i.f, ptr noundef nonnull @cache_cleaner, i64 noundef range(i64 -2147483648, 2147483648) %.0) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @timer_init_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @cache_register_net(ptr noundef initializes((24, 28)) %0, ptr nofree noundef captures(address) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 176        ; 3 uses
  store volatile ptr %i.b, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 184
  store volatile ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 192        ; 3 uses
  store volatile ptr %i.d, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 200
  store volatile ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 208
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 216
  tail call void @__init_waitqueue_head(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef nonnull @sunrpc_init_cache_detail.__key) #16
  %i.h = getelementptr i8, ptr %0, i64 240
  store i64 1, ptr %i.h, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @cache_list_lock) #16
  %i.i = getelementptr i8, ptr %0, i64 160
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %0, i64 168
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 248
  store volatile i32 0, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 256
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 264
  store i64 -1, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %0, i64 144        ; 7 uses
  %i.o = load ptr, ptr @cache_list, align 8       ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.p, align 8
  store ptr %i.o, ptr %i.n, align 8
  %i.q = getelementptr i8, ptr %0, i64 152        ; 3 uses
  store ptr @cache_list, ptr %i.q, align 8
  store volatile ptr %i.n, ptr @cache_list, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cache_list_lock) #16
  %i.r = load ptr, ptr @system_power_efficient_wq, align 8
  %i.s = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %i.r, ptr noundef nonnull @cache_cleaner, i64 noundef 0) #16 ; 0 uses
  %i.t = load i32, ptr @sunrpc_net_id, align 4
  tail call void @__rcu_read_lock() #16
  %i.u = getelementptr i8, ptr %1, i64 2984
  %i.v = load volatile ptr, ptr %i.u, align 8
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @__rcu_read_unlock() #16
end_hunk_0
