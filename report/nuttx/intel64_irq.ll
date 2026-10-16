Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/intel64_irq?download=true
inline.NumInlined: 68
inline.NumDeleted: 9
begin_hunk_0_@x86_64_cpu_tss_init
declare dso_local void @x86_64_cpu_tss_init(i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @irq_attach(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone nounwind optsize uwtable
define internal noundef i32 @x86_64_fault_kill_isr(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  tail call void asm sideeffect "fnclex", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !23
  %i.a = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #9, !srcloc !24
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @g_running_tasks, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr asm sideeffect "movq %gs:(${1:c}), $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(i64 8) #9, !srcloc !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call i32 @nxsig_kill(i32 noundef %i.g, i32 noundef 8) #10 ; 0 uses
  ret i32 0
}

; Function Attrs: noredzone noreturn nounwind optsize uwtable
define internal noundef i32 @x86_64_fault_panic_isr(i32 noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #6 {
bb.a:
  %i.a = load ptr, ptr @g_running_tasks, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  tail call void (i32, ptr, ...) @syslog(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__FUNCTION__.x86_64_fault_panic_isr) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 784
  %i.e = load i64, ptr %i.d, align 8
  tail call void (i32, ptr, ...) @syslog(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__FUNCTION__.x86_64_fault_panic_isr, i32 noundef %0, i64 noundef %i.e) #10
  tail call void @_assert(ptr noundef nonnull @.str, i32 noundef 471, ptr noundef nonnull @.str.6, ptr noundef %i.c) #10
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  tail call void asm sideeffect "cli;hlt;", "~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !26
  br label %bb.b
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @up_disable_irq(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #9, !srcloc !13
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !14
  %i.c = icmp sgt i32 %0, 287
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 568, ptr noundef nonnull @.str.1) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [2 x i8], ptr @g_irq_priv, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !16, !noundef !17
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.b, 512
  %.not9 = icmp eq i64 %i.i, 0
  br i1 %.not9, label %up_irq_restore.exit8, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  br label %up_irq_restore.exit8

bb.f:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.e, align 2, !range !16, !noundef !17
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.l = icmp sgt i32 %0, 31
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = shl nuw nsw i32 %0, 1
  %i.n = add nsw i32 %i.m, -48                    ; 2 uses
  call void asm sideeffect "movl $0,($1)", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.n, ptr nonnull inttoptr (i64 4273995776 to ptr)) #9, !srcloc !7
  %i.o = call i32 asm sideeffect "movl ($1),$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull inttoptr (i64 4273995792 to ptr)) #9, !srcloc !8
  %i.p = or i32 %i.o, 65536
  call void asm sideeffect "movl $0,($1)", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.n, ptr nonnull inttoptr (i64 4273995776 to ptr)) #9, !srcloc !7
  call void asm sideeffect "movl $0,($1)", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.p, ptr nonnull inttoptr (i64 4273995792 to ptr)) #9, !srcloc !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i8 0, ptr %i.e, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.q = and i64 %i.b, 512
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %up_irq_restore.exit8, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  br label %up_irq_restore.exit8

up_irq_restore.exit8:                             ; preds = %bb.k, %bb.j, %bb.e, %bb.d
  ret void
}

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @up_enable_irq(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #9, !srcloc !13
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !14
  %i.c = icmp sgt i32 %0, 287
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 607, ptr noundef nonnull @.str.1) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [2 x i8], ptr @g_irq_priv, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !16, !noundef !17
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.b, 512
  %.not10 = icmp eq i64 %i.i, 0
  br i1 %.not10, label %up_irq_restore.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  br label %up_irq_restore.exit9

bb.f:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.e, align 2, !range !16, !noundef !17
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 622, ptr noundef nonnull @.str.2) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = icmp sgt i32 %0, 31
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = shl nuw nsw i32 %0, 1
  %i.n = add nsw i32 %i.m, -48                    ; 2 uses
  call void asm sideeffect "movl $0,($1)", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.n, ptr nonnull inttoptr (i64 4273995776 to ptr)) #9, !srcloc !7
  %i.o = call i32 asm sideeffect "movl ($1),$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull inttoptr (i64 4273995792 to ptr)) #9, !srcloc !8
  %i.p = and i32 %i.o, -65537
  call void asm sideeffect "movl $0,($1)", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.n, ptr nonnull inttoptr (i64 4273995776 to ptr)) #9, !srcloc !7
  call void asm sideeffect "movl $0,($1)", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.p, ptr nonnull inttoptr (i64 4273995792 to ptr)) #9, !srcloc !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 1, ptr %i.e, align 2
  %i.q = and i64 %i.b, 512
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %up_irq_restore.exit9, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  br label %up_irq_restore.exit9

up_irq_restore.exit9:                             ; preds = %bb.k, %bb.j, %bb.e, %bb.d
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @up_trigger_irq(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store volatile i32 %1, ptr %i.a, align 4
  %.0..0..0..0. = load volatile i32, ptr %i.a, align 4
  %i.b = and i32 %.0..0..0..0., 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i8 @x86_64_cpu_to_loapic(i8 noundef zeroext 0) #10
  %i.d = zext i8 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 32
  %2 = sext i32 %0 to i64
  %i.f = or i64 %i.e, %2                          ; 2 uses
  %i.g = or i64 %i.f, 16384
  %i.h = lshr i64 %i.f, 32
  tail call void asm sideeffect "wrmsr", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 2096, i64 range(i64 2048, 512) %i.g, i64 %i.h) #9, !srcloc !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone optsize
declare dso_local zeroext i8 @x86_64_cpu_to_loapic(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(none) uwtable
define dso_local range(i32 32, 288) i32 @up_get_legacy_irq(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #8 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = add nuw nsw i32 %i.a, 32
  ret i32 %i.b
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -19, -2147483648) i32 @up_alloc_irq_msi(i8 noundef zeroext %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #9, !srcloc !13
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !14
  %i.c = load i32, ptr @g_msi_now, align 4        ; 4 uses
  %i.d = add nsw i32 %i.c, %3
  %i.e = icmp sgt i32 %i.d, 287
  %i.f = sub nsw i32 287, %i.c
  %spec.select = select i1 %i.e, i32 %i.f, i32 %3 ; 5 uses
  %i.g = icmp slt i32 %spec.select, 1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.b, 512
  %.not23 = icmp eq i64 %i.h, 0
  br i1 %.not23, label %up_irq_restore.exit21, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  br label %up_irq_restore.exit21

bb.d:                                             ; preds = %bb.a
  %i.i = add nuw nsw i32 %spec.select, %i.c
  store i32 %i.i, ptr @g_msi_now, align 4
  %i.j = sext i32 %i.c to i64
  %i.k = zext nneg i32 %spec.select to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.l = add nsw i64 %indvars.iv, %i.j            ; 2 uses
  %i.m = getelementptr inbounds [2 x i8], ptr @g_irq_priv, i64 %i.l ; 3 uses
  %i.n = load i8, ptr %i.m, align 2, !range !16, !noundef !17
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.g, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 739, ptr noundef nonnull @.str.3) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 1, ptr %i.m, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 1, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.q = trunc nsw i64 %i.l to i32
  store i32 %i.q, ptr %i.p, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.r, label %bb.e, label %bb.h, !llvm.loop !27

bb.h:                                             ; preds = %bb.g
  %i.s = and i64 %i.b, 512
  %.not22 = icmp eq i64 %i.s, 0
  br i1 %.not22, label %up_irq_restore.exit21, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  br label %up_irq_restore.exit21

up_irq_restore.exit21:                            ; preds = %bb.i, %bb.h, %bb.c, %bb.b
  %.020 = phi i32 [ -19, %bb.c ], [ -19, %bb.b ], [ %spec.select, %bb.h ], [ %spec.select, %bb.i ]
  ret i32 %.020
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @up_release_irq_msi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #9, !srcloc !13
  %i.b = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !14
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [2 x i8], ptr @g_irq_priv, i64 %i.f ; 2 uses
  store i8 0, ptr %i.g, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 0, ptr %i.h, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = and i64 %i.b, 512
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %up_irq_restore.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  br label %up_irq_restore.exit

up_irq_restore.exit:                              ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local noundef i32 @up_connect_irq(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i32, i32 } asm sideeffect "rdmsr", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 2050) #9, !srcloc !9
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = shl i32 %i.b, 12
  %i.d = or i32 %i.c, -18874368
  %i.e = zext i32 %i.d to i64
  store i64 %i.e, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %3, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %0, align 4
  %i.g = or i32 %i.f, 16384
  store i32 %i.g, ptr %3, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -22, 1) i32 @up_set_irq_type(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  tail call void asm sideeffect "movl $0,($1)", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 1, ptr nonnull inttoptr (i64 4273995776 to ptr)) #9, !srcloc !7
  %i.a = tail call i32 asm sideeffect "movl ($1),$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull inttoptr (i64 4273995792 to ptr)) #9, !srcloc !8
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %i.a, 16
  %i.d = and i32 %i.c, 255
  %i.e = add nsw i32 %0, -32                      ; 2 uses
  %i.f = icmp ugt i32 %i.e, %i.d
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i32 %1, -1               ; 2 uses
  %i.g = icmp ult i32 %switch.tableidx, 4
  br i1 %i.g, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.up_set_irq_type, i64 %i.h
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %switch.ext, %switch.lookup ]
  %i.i = shl nuw nsw i32 %i.e, 1
  %i.j = add nuw nsw i32 %i.i, 16                 ; 2 uses
  tail call void asm sideeffect "movl $0,($1)", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.j, ptr nonnull inttoptr (i64 4273995776 to ptr)) #9, !srcloc !7
  %i.k = tail call i32 asm sideeffect "movl ($1),$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull inttoptr (i64 4273995792 to ptr)) #9, !srcloc !8
  %i.l = and i32 %i.k, -40961
  %i.m = or disjoint i32 %i.l, %.0
  tail call void asm sideeffect "movl $0,($1)", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.j, ptr nonnull inttoptr (i64 4273995776 to ptr)) #9, !srcloc !7
  tail call void asm sideeffect "movl $0,($1)", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.m, ptr nonnull inttoptr (i64 4273995792 to ptr)) #9, !srcloc !7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d
  %.014 = phi i32 [ 0, %bb.d ], [ -22, %bb.b ], [ -22, %bb.a ]
  ret i32 %.014
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local void @up_affinity_irq(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  store volatile i32 %1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #9, !srcloc !13
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !14
  %i.d = icmp slt i32 %0, 64
  %i.e = load i32, ptr @g_msi_now, align 4
  %.not = icmp sgt i32 %0, %i.e
  %or.cond = select i1 %i.d, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %2 = and i64 %i.c, 512
  %.not11.a = icmp eq i64 %2, 0
  br i1 %.not11.a, label %up_irq_restore.exit12, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  br label %up_irq_restore.exit12

bb.c:                                             ; preds = %bb.a
  %.0..0..0..0. = load volatile i32, ptr %i.b, align 4
  %3 = and i32 %.0..0..0..0., 1
  %.not11 = icmp eq i32 %3, 0
  br i1 %.not11, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call zeroext i8 @x86_64_cpu_to_loapic(i8 noundef zeroext 0) #10
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw i32 %i.g, 24
  %i.i = shl i32 %0, 1
  %i.j = add i32 %i.i, -47
  call void asm sideeffect "movl $0,($1)", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.j, ptr nonnull inttoptr (i64 4273995776 to ptr)) #9, !srcloc !7
  call void asm sideeffect "movl $0,($1)", "r,r,~{dirflag},~{fpsr},~{flags}"(i32 %i.h, ptr nonnull inttoptr (i64 4273995792 to ptr)) #9, !srcloc !7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d
  %i.k = and i64 %i.c, 512
  %.not14 = icmp eq i64 %i.k, 0
  br i1 %.not14, label %up_irq_restore.exit12, label %bb.e

bb.e:                                             ; preds = %.loopexit
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !12
  br label %up_irq_restore.exit12

up_irq_restore.exit12:                            ; preds = %bb.e, %.loopexit, %bb.b, %.preheader.preheader
  ret void
}

; Function Attrs: noredzone optsize
declare dso_local i32 @up_map_region(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr0() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr1() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr2() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr3() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr4() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr5() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr6() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr7() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr8() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr9() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr10() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr11() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr12() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr13() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr14() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr15() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr16() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr17() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr18() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr19() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr20() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr21() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr22() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr23() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr24() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr25() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr26() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr27() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr28() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr29() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr30() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_isr31() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_irq1() #5

; Function Attrs: noredzone optsize
declare dso_local void @vector_irq0() #5

; Function Attrs: noredzone optsize
declare dso_local i32 @nxsig_kill(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @syslog(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @_assert(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noredzone noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind optsize }
attributes #11 = { noredzone noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{i64 1593983}
!8 = !{i64 1593452}
!9 = !{i64 603392}
!10 = !{i64 603583}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{i64 607199}
!13 = !{i64 606415, i64 606433}
!14 = !{i64 607065}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = !{i64 1592231}
!22 = !{i64 602197}
!23 = !{i64 15521}
!24 = !{i64 561568}
!25 = !{i64 2149207818}
!26 = !{i64 1594226}
!27 = distinct !{!27, !11}
!28 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!29 = distinct !{!29, !11}
end_hunk_0
