Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/yenta_socket?download=true
inline.NumInlined: 228
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@topic95_override:bb.a
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define internal noundef i32 @topic97_override(ptr nofree noundef writeonly captures(none) initializes((440, 448)) %0) #8 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 440
  store ptr @topic97_zoom_video, ptr %i.a, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @o2micro_override(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 56
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 7
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %i.b, align 1, !annotation !14
  %i.h = call i32 @pci_read_config_byte(ptr noundef %i.c, i32 noundef 148, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.i = load i8, ptr %i.b, align 1               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %.val20 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !annotation !14
  %i.j = call i32 @pci_read_config_byte(ptr noundef %.val20, i32 noundef 212, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.k = load i8, ptr %i.a, align 1               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.l = load ptr, ptr %0, align 8                ; 5 uses
  %i.m = getelementptr i8, ptr %i.l, i64 62
  %i.n = load i16, ptr %i.m, align 2
  switch i16 %i.n, label %bb.c [
    i16 26409, label %bb.d
    i16 26426, label %bb.d
    i16 26738, label %bb.d
    i16 26674, label %bb.d
    i16 26678, label %bb.d
    i16 26931, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ]
  %i.o = call i32 @strcasecmp(ptr noundef @o2_speedup, ptr noundef @.str.37) #15
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 @strcasecmp(ptr noundef @o2_speedup, ptr noundef @.str.38) #15
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.critedge16, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call i32 @strcasecmp(ptr noundef @o2_speedup, ptr noundef @.str.39) #15
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.l, i64 200
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.t, ptr noundef @.str.40) #13
  %.pre22.pre = load ptr, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre22 = phi ptr [ %.pre22.pre, %bb.g ], [ %i.l, %bb.f ] ; 2 uses
  br i1 %.0, label %.critedge, label %.critedge16

.critedge:                                        ; preds = %bb.d, %bb.h
  %i.u = phi ptr [ %i.l, %bb.d ], [ %.pre22, %bb.h ]
  %i.v = getelementptr i8, ptr %i.u, i64 200
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.v, ptr noundef @.str.41) #13
  %i.w = or i8 %i.i, 10
  %.val19 = load ptr, ptr %0, align 8
  %i.x = call i32 @pci_write_config_byte(ptr noundef %.val19, i32 noundef 148, i8 noundef zeroext %i.w) #12 ; 0 uses
  %i.y = or i8 %i.k, 10
  br label %.sink.split

.critedge16:                                      ; preds = %bb.h, %bb.e
  %i.z = phi ptr [ %i.l, %bb.e ], [ %.pre22, %bb.h ]
  %i.aa = getelementptr i8, ptr %i.z, i64 200
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.aa, ptr noundef @.str.42) #13
  %i.ab = and i8 %i.i, -11
  %.val17 = load ptr, ptr %0, align 8
  %i.ac = call i32 @pci_write_config_byte(ptr noundef %.val17, i32 noundef 148, i8 noundef zeroext %i.ab) #12 ; 0 uses
  %i.ad = and i8 %i.k, -11
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge16, %.critedge
  %.sink = phi i8 [ %i.y, %.critedge ], [ %i.ad, %.critedge16 ]
  %.val18 = load ptr, ptr %0, align 8
  %i.ae = call i32 @pci_write_config_byte(ptr noundef %.val18, i32 noundef 212, i8 noundef zeroext %.sink) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @o2micro_restore_state(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @o2micro_override(ptr noundef %0) #15, !srcloc !48 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @ene_override(ptr noundef initializes((456, 464)) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 456
  store ptr @ene_tune_bridge, ptr %i.b, align 8
  %.val14.i = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !annotation !14
  %i.c = call i32 @pci_read_config_byte(ptr noundef %.val14.i, i32 noundef 147, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.d = load i8, ptr %i.a, align 1               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.e = and i8 %i.d, -97
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %.not.i = icmp eq i32 %i.g, 0
  %masksel.i = select i1 %.not.i, i8 0, i8 96
  %spec.select.i = or disjoint i8 %masksel.i, %i.e ; 3 uses
  %.not13.i = icmp eq i8 %spec.select.i, %i.d
  br i1 %.not13.i, label %ti1250_override.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i8 %i.d to i32
  %i.i = zext i8 %spec.select.i to i32
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 200
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.k, ptr noundef @.str.35, i32 noundef %i.h, i32 noundef %i.i) #13
  %.val.i = load ptr, ptr %0, align 8
  %i.l = call i32 @pci_write_config_byte(ptr noundef %.val.i, i32 noundef 147, i8 noundef zeroext %spec.select.i) #12 ; 0 uses
  br label %ti1250_override.exit

ti1250_override.exit:                             ; preds = %bb.a, %bb.b
  %i.m = call i32 @ti12xx_override(ptr noundef %0) #15, !srcloc !18 ; 0 uses
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ti_zoom_video(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 -64        ; 2 uses
  %.val8 = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !annotation !14
  %i.c = call i32 @pci_read_config_byte(ptr noundef %.val8, i32 noundef 145, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.d = load i8, ptr %i.a, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.not = icmp eq i32 %1, 0
  %i.e = and i8 %i.d, -65
  %masksel = select i1 %.not, i8 0, i8 64
  %.0 = or disjoint i8 %i.e, %masksel
  %.val = load ptr, ptr %i.b, align 8
  %i.f = call i32 @pci_write_config_byte(ptr noundef %.val, i32 noundef 145, i8 noundef zeroext %.0) #12 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ti1250_zoom_video(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 -64        ; 4 uses
  %.val8.i = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %i.b, align 1, !annotation !14
  %i.d = call i32 @pci_read_config_byte(ptr noundef %.val8.i, i32 noundef 145, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.e = load i8, ptr %i.b, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  %i.f = and i8 %i.e, -65
  %masksel.i = select i1 %.not.i, i8 0, i8 64
  %.0.i = or disjoint i8 %i.f, %masksel.i
  %.val.i = load ptr, ptr %i.c, align 8
  %i.g = call i32 @pci_write_config_byte(ptr noundef %.val.i, i32 noundef 145, i8 noundef zeroext %.0.i) #12 ; 0 uses
  %.val22 = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !annotation !14
  %i.h = call i32 @pci_read_config_byte(ptr noundef %.val22, i32 noundef 132, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.i = load i8, ptr %i.a, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.j = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 56
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 7
  %i.n = icmp eq i32 %i.m, 1                      ; 2 uses
  %spec.select = zext i1 %i.n to i32              ; 2 uses
  %i.o = and i8 %i.i, 63
  %2 = or disjoint i8 %i.o, -128
  %i.p = select i1 %i.n, i8 64, i8 0
  %i.q = or disjoint i8 %i.p, %2                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl nuw nsw i32 1, %spec.select
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = or i8 %i.q, %i.s
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = xor i8 %i.q, 64
  %i.v = shl nuw nsw i32 1, %spec.select
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = xor i8 %i.w, -1
  %i.y = and i8 %i.u, %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i8 [ %i.t, %bb.b ], [ %i.y, %bb.c ]
  %i.z = call i32 @pci_write_config_byte(ptr noundef %i.j, i32 noundef 132, i8 noundef zeroext %.0) #12 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 65536) i32 @yenta_probe_irq(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 -1, ptr elementtype(i32) %i.b) #16, !srcloc !10
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c) #16, !srcloc !11 ; 0 uses
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1, ptr elementtype(i32) %i.f) #16, !srcloc !10
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %i.i = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.h) #16, !srcloc !11 ; 0 uses
  %.val = load ptr, ptr %i.a, align 8
  %i.j = getelementptr i8, ptr %.val, i64 2053
  %i.k = tail call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.j) #16, !srcloc !13
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 2053
  tail call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr elementtype(i8) %i.m) #16, !srcloc !12
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 2053
  %i.p = tail call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.o) #16, !srcloc !13 ; 0 uses
  %i.q = tail call i64 @probe_irq_on() #12
  %i.r = and i64 %i.q, 3832                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.s = shl nuw nsw i64 1, %indvars.iv
  %i.t = and i64 %i.s, %i.r
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.tr = trunc i64 %indvars.iv to i8
  %i.u = shl nuw i8 %.0.tr, 4
  %i.v = or disjoint i8 %i.u, 1
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 2053
  tail call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %i.v, ptr elementtype(i8) %i.x) #16, !srcloc !12
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 2053
  %i.aa = tail call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.z) #16, !srcloc !13 ; 0 uses
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 12
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1, ptr elementtype(i32) %i.ac) #16, !srcloc !10
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 12
  %i.af = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ae) #16, !srcloc !11 ; 0 uses
  tail call void @__const_udelay(i64 noundef 429500) #12
  %i.ag = load ptr, ptr %i.a, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 -1, ptr elementtype(i32) %i.ag) #16, !srcloc !10
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ah) #16, !srcloc !11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !49

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.ak) #16, !srcloc !10
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %i.an = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.am) #16, !srcloc !11 ; 0 uses
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 2053
  tail call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %i.k, ptr elementtype(i8) %i.ap) #16, !srcloc !12
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 2053
  %i.as = tail call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ar) #16, !srcloc !13 ; 0 uses
  %i.at = tail call i32 @probe_irq_mask(i64 noundef %i.r) #12
  %i.au = and i32 %i.at, 65535
  ret i32 %i.au
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @probe_irq_on() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @probe_irq_mask(i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__const_udelay(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ti12xx_irqroute_func0(ptr noundef %0) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %.val76 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i32 0, ptr %i.c, align 4, !annotation !14
  %i.d = call i32 @pci_read_config_dword(ptr noundef %.val76, i32 noundef 140, ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.e = load i32, ptr %i.c, align 4              ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %.val78 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %i.b, align 1, !annotation !14
  %i.f = call i32 @pci_read_config_byte(ptr noundef %.val78, i32 noundef 146, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.g = load i8, ptr %i.b, align 1               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 200
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.j, ptr noundef @.str.25, i32 noundef %i.e, i32 noundef %i.h) #13
  %i.k = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val.i = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val.i, i64 2051
  %i.m = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.l) #16, !srcloc !13 ; 2 uses
  %i.n = and i8 %i.m, -17
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 964
  %i.q = load i32, ptr %i.p, align 4
  %.not.i = icmp eq i32 %i.q, 0
  %masksel.i = select i1 %.not.i, i8 0, i8 16
  %spec.select.i = or disjoint i8 %masksel.i, %i.n ; 2 uses
  %.not7.i = icmp eq i8 %spec.select.i, %i.m
  br i1 %.not7.i, label %ti_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 2051
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %spec.select.i, ptr elementtype(i8) %i.s) #16, !srcloc !12
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 2051
  %i.v = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.u) #16, !srcloc !13 ; 0 uses
  br label %ti_init.exit

ti_init.exit:                                     ; preds = %bb.a, %bb.b
  %i.w = call fastcc i32 @yenta_probe_cb_irq(ptr noundef %0) #15, !srcloc !50 ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.c, label %bb.q

bb.c:                                             ; preds = %ti_init.exit
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 200
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.y, ptr noundef @.str.26) #13
  %i.z = and i32 %i.h, 6
  %i.aa = icmp eq i32 %i.z, 6
  br i1 %i.aa, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %0, align 8               ; 10 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 62
  %i.ad = load i16, ptr %i.ac, align 2
  switch i16 %i.ad, label %bb.e [
    i16 -21482, label %bb.h
    i16 -21475, label %bb.h
    i16 -21473, label %bb.h
    i16 -21477, label %bb.h
    i16 -21422, label %bb.h
    i16 -32751, label %bb.h
    i16 -21438, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = and i32 %i.e, -61441
  %i.af = or disjoint i32 %i.ae, 4096             ; 2 uses
  %.not66 = icmp eq i32 %i.af, %i.e
  br i1 %.not66, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = call i32 @pci_write_config_dword(ptr noundef %i.ab, i32 noundef 140, i32 noundef %i.af) #12 ; 0 uses
  %i.ah = call fastcc i32 @yenta_probe_cb_irq(ptr noundef %0) #15, !srcloc !51 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 1
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.ai, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = call i32 @pci_write_config_dword(ptr noundef %i.aj, i32 noundef 140, i32 noundef %i.e) #12 ; 0 uses
  %i.al = icmp eq i32 %i.ah, -1
  br i1 %i.al, label %.thread80, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.e
  %i.am = phi ptr [ %.pre, %._crit_edge ], [ %i.ab, %bb.d ], [ %i.ab, %bb.d ], [ %i.ab, %bb.d ], [ %i.ab, %bb.d ], [ %i.ab, %bb.d ], [ %i.ab, %bb.d ], [ %i.ab, %bb.d ], [ %i.ab, %bb.e ]
end_hunk_0
