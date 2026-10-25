Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/mq_receive?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@file_mq_timedreceive_internal:bb.a
  %.old = icmp eq ptr %0, null
  br i1 %.old, label %up_irq_restore.exit40, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %up_irq_restore.exit40, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.j = load ptr, ptr %i.i, align 8              ; 8 uses
  %i.k = icmp ne ptr %1, null
  %i.l = icmp ne ptr %i.j, null
  %or.cond.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond.i, label %bb.f, label %up_irq_restore.exit40

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 3
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %up_irq_restore.exit40, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.q = load i8, ptr %i.p, align 4
  %i.r = zext i8 %i.q to i64
  %i.s = icmp ult i64 %2, %i.r
  br i1 %i.s, label %up_irq_restore.exit40, label %nxmq_verify_receive.exit

nxmq_verify_receive.exit:                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void asm sideeffect "\09pushfq\0A\09popq $0\0A", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a) #7, !srcloc !8
  %i.t = load i64, ptr %i.a, align 8              ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 6 uses
  %.not.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i, label %list_remove_head.exit.thread, label %list_remove_head.exit

list_remove_head.exit.thread:                     ; preds = %nxmq_verify_receive.exit
  store ptr null, ptr %i.b, align 8
  %i.w = load i32, ptr %0, align 8
  %i.x = and i32 %i.w, 2048
  %.not35 = icmp eq i32 %i.x, 0
  br i1 %.not35, label %bb.j, label %bb.h

list_remove_head.exit:                            ; preds = %nxmq_verify_receive.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.v, align 8
  store ptr %i.ac, ptr %i.z, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %i.b, align 8
  br label %bb.p

bb.h:                                             ; preds = %list_remove_head.exit.thread
  %i.ad = and i64 %i.t, 512
  %.not46 = icmp eq i64 %i.ad, 0
  br i1 %.not46, label %up_irq_restore.exit40, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  br label %up_irq_restore.exit40

bb.j:                                             ; preds = %list_remove_head.exit.thread
  %i.ae = call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #7, !srcloc !7
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ag = and i64 %i.t, 512
  %.not49 = icmp eq i64 %i.ag, 0
  br i1 %.not49, label %up_irq_restore.exit40, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  br label %up_irq_restore.exit40

bb.m:                                             ; preds = %bb.j
  %i.ah = call i32 @nxmq_wait_receive(ptr noundef nonnull %i.j, ptr noundef nonnull %i.b, ptr noundef %4, i64 noundef %5) #8 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aj = sext i32 %i.ah to i64                   ; 2 uses
  %i.ak = and i64 %i.t, 512
  %.not48 = icmp eq i64 %i.ak, 0
  br i1 %.not48, label %up_irq_restore.exit40, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  br label %up_irq_restore.exit40

bb.p:                                             ; preds = %list_remove_head.exit, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 66 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %i.an = add i16 %i.am, -1
  store i16 %i.an, ptr %i.al, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = icmp eq i16 %i.am, %i.ap
  br i1 %i.aq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  call void @poll_notify(ptr noundef nonnull %i.ar, i32 noundef 4, i32 noundef 4) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @nxmq_notify_receive(ptr noundef nonnull %i.j) #8
  %i.as = and i64 %i.t, 512
  %.not47 = icmp eq i64 %i.as, 0
  br i1 %.not47, label %up_irq_restore.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !10
  br label %up_irq_restore.exit

up_irq_restore.exit:                              ; preds = %bb.r, %bb.s
  %.not36 = icmp eq ptr %3, null
  %.pre = load ptr, ptr %i.b, align 8             ; 3 uses
  br i1 %.not36, label %memcpy.inline.exit, label %bb.t

bb.t:                                             ; preds = %up_irq_restore.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.pre, i64 17
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  store i32 %i.av, ptr %3, align 4
  br label %memcpy.inline.exit

memcpy.inline.exit:                               ; preds = %up_irq_restore.exit, %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 18
  %i.ax = load i8, ptr %i.aw, align 2
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.pre, i64 19
  %i.ba = call ptr @memcpy(ptr noundef nonnull %1, ptr noundef nonnull %i.az, i64 noundef range(i64 0, 256) %i.ay) #6 ; 0 uses
  %.pre50 = load ptr, ptr %i.b, align 8           ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre50, i64 18
  %i.bc = load i8, ptr %i.bb, align 2
  %i.bd = zext i8 %i.bc to i64
  call void @nxmq_free_msg(ptr noundef %.pre50) #8
  br label %up_irq_restore.exit40

up_irq_restore.exit40:                            ; preds = %bb.f, %bb.e, %bb.d, %bb.g, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %bb.c, %bb.b, %memcpy.inline.exit
  %.0 = phi i64 [ %i.bd, %memcpy.inline.exit ], [ -22, %bb.b ], [ %i.aj, %bb.o ], [ -22, %bb.c ], [ -11, %bb.i ], [ -11, %bb.l ], [ -11, %bb.h ], [ -11, %bb.k ], [ %i.aj, %bb.n ], [ -9, %bb.d ], [ -9, %bb.f ], [ -22, %bb.e ], [ -90, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i64 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i64 -2147483648, 256) i64 @file_mq_tickreceive(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @file_mq_timedreceive_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef null, i64 noundef %4) #6
  ret i64 %i.a
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i64 -2147483648, 256) i64 @nxmq_timedreceive(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @file_get2(i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef null) #8 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %i.b to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call fastcc i64 @file_mq_timedreceive_internal(ptr noundef %i.e, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef -1) #6
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = call i32 @file_put(ptr noundef %i.g) #8  ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noredzone optsize
declare dso_local i32 @file_get2(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @file_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i64 -1, 256) i64 @mq_timedreceive(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @nxmq_timedreceive(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #6 ; 3 uses
  %i.b = trunc nsw i64 %i.a to i32
  %i.c = icmp slt i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #7, !srcloc !7
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i32 0, %i.b
  %i.g = tail call ptr @__errno() #8
  store i32 %i.f, ptr %i.g, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ %i.a, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i64 %.0
}

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #4

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i64 -2147483648, 256) i64 @file_mq_receive(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @file_mq_timedreceive_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef null, i64 noundef -1) #6
  ret i64 %i.a
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i64 -2147483648, 256) i64 @nxmq_receive(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @file_get2(i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef null) #8 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %i.b to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call fastcc range(i64 -2147483648, 256) i64 @file_mq_timedreceive_internal(ptr noundef readonly %i.e, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef null, i64 noundef -1) #6
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = call i32 @file_put(ptr noundef %i.g) #8  ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i64 -1, 256) i64 @mq_receive(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @nxmq_receive(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #6 ; 3 uses
  %i.b = trunc nsw i64 %i.a to i32
  %i.c = icmp slt i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #7, !srcloc !7
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i32 0, %i.b
  %i.g = tail call ptr @__errno() #8
  store i32 %i.f, ptr %i.g, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ %i.a, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i64 %.0
}

; Function Attrs: noredzone optsize
declare dso_local i32 @nxmq_wait_receive(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local void @poll_notify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local void @nxmq_notify_receive(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local void @nxmq_free_msg(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noredzone optsize }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{i64 180827}
!8 = !{i64 225674, i64 225692}
!9 = !{i64 226324}
!10 = !{i64 226458}
end_hunk_0
