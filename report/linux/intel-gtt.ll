Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel-gtt?download=true
inline.NumInlined: 80
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@i830_check_flags:bb.a
    i32 65536, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @get_free_pages_noprof(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ioremap(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -12, 1) i32 @i830_setup() #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 8), align 8
  %i.b = getelementptr i8, ptr %i.a, i64 1032
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = tail call ptr @ioremap(i64 noundef %i.c, i64 noundef 65536) #11 ; 2 uses
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 65536
  store i64 %i.e, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 32), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @i830_cleanup() #5 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i830_write_entry(i64 noundef %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %2, 65537
  %spec.select = select i1 %i.a, i64 7, i64 1
  %i.b = or i64 %spec.select, %0
  %i.c = trunc i64 %i.b to i32
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 48), align 8
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr [4 x i8], ptr %i.d, i64 %i.e
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %i.c, ptr elementtype(i32) %i.f) #10, !srcloc !17
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 0, 4294963201) i64 @i830_read_entry(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 48), align 8
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr [4 x i8], ptr %i.a, i64 %i.b
  %i.d = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c) #10, !srcloc !13 ; 2 uses
  %i.e = trunc i32 %i.d to i8
  %i.f = and i8 %i.e, 1
  store i8 %i.f, ptr %1, align 1
  store i8 0, ptr %2, align 1
  %i.g = and i32 %i.d, -4096
  %i.h = zext i32 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i830_chipset_flush() #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i64, ptr @jiffies, align 64
  %i.b = add i64 %i.a, 1000
  tail call void @wbinvd_on_all_cpus() #11
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.c, i64 112
  %i.e = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d) #10, !srcloc !13
  %i.f = or i32 %i.e, -2147483648
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.h = getelementptr i8, ptr %i.g, i64 112
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.f, ptr elementtype(i32) %i.h) #10, !srcloc !12
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.j = getelementptr i8, ptr %i.i, i64 112
  %i.k = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.j) #10, !srcloc !13
  %.not1 = icmp sgt i32 %i.k, -1
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.l = load volatile i64, ptr @jiffies, align 64
  %i.m = sub i64 %i.b, %i.l
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @__const_udelay(i64 noundef 214750) #11
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %i.p = getelementptr i8, ptr %i.o, i64 112
  %i.q = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p) #10, !srcloc !13
  %.not = icmp sgt i32 %i.q, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @wbinvd_on_all_cpus() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__const_udelay(i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -12, 1) i32 @i9xx_setup() #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 8), align 8
  %i.e = getelementptr i8, ptr %i.d, i64 968
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = tail call ptr @ioremap(i64 noundef %i.f, i64 noundef 524288) #11 ; 2 uses
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 24), align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %intel_i9xx_setup_flush.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @intel_private, align 8    ; 3 uses
  %i.i = load i32, ptr %i.h, align 8
  %trunc = trunc i32 %i.i to i8
  switch i8 %trunc, label %bb.e [
    i8 3, label %bb.c
    i8 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 8), align 8
  %i.k = getelementptr i8, ptr %i.j, i64 1160
  %i.l = load i64, ptr %i.k, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %i.f, 2097152
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.n = add i64 %i.f, 524288
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi i64 [ %i.n, %bb.e ], [ %i.m, %bb.d ], [ %i.l, %bb.c ]
  store i64 %.sink, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 32), align 8
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 80), align 8
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.g, label %intel_i9xx_setup_flush.exit

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.h, align 8
  %i.q = and i32 %i.p, 255
  %i.r = icmp eq i32 %i.q, 6
  br i1 %i.r, label %intel_i9xx_setup_flush.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @.str.39, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 96), align 8
  store i64 512, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 104), align 8
  %i.s = load i32, ptr %i.h, align 8
  %i.t = and i32 %i.s, 508
  %or.cond.i = icmp eq i32 %i.t, 0
  br i1 %or.cond.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.c, align 4, !annotation !11
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 16), align 8
  %i.v = call i32 @pci_read_config_dword(ptr noundef %i.u, i32 noundef 116, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 16), align 8
  %i.x = call i32 @pci_read_config_dword(ptr noundef %i.w, i32 noundef 112, ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.y = load i32, ptr %i.c, align 4              ; 2 uses
  %i.z = and i32 %i.y, 1
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 16), align 8 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load i64, ptr @pci_mem_start, align 8
  %i.ae = call i32 @pci_bus_alloc_resource(ptr noundef %i.ac, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @intel_private, i64 80), i64 noundef 4096, i64 noundef 4096, i64 noundef %i.ad, i64 noundef 0, ptr noundef @pcibios_align_resource, ptr noundef %i.aa) #11 ; 0 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 144), align 8
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 16), align 8
  %0 = load i64, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 80), align 8
  %1 = lshr i64 %0, 32
  %2 = trunc nuw i64 %1 to i32
  %i.ag = call i32 @pci_write_config_dword(ptr noundef %i.af, i32 noundef 116, i32 noundef %2) #11 ; 0 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 16), align 8
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 80), align 8
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = or i32 %i.aj, 1
  %i.al = call i32 @pci_write_config_dword(ptr noundef %i.ah, i32 noundef 112, i32 noundef %i.ak) #11 ; 0 uses
  br label %intel_i965_g33_setup_chipset_flush.exit.i

bb.k:                                             ; preds = %bb.i
  %i.am = and i32 %i.y, -2                        ; 2 uses
  store i32 %i.am, ptr %i.c, align 4
  %i.an = load i32, ptr %i.b, align 4
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw i64 %i.ao, 32
  %i.aq = zext i32 %i.am to i64
  %i.ar = or disjoint i64 %i.ap, %i.aq            ; 2 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 144), align 8
  store i64 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 80), align 8
  %i.as = add i64 %i.ar, 4096
  store i64 %i.as, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 88), align 8
  %i.at = call i32 @request_resource(ptr noundef @iomem_resource, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @intel_private, i64 80)) #11
  %.not3.i.i = icmp eq i32 %i.at, 0
  br i1 %.not3.i.i, label %intel_i965_g33_setup_chipset_flush.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 144), align 8
  br label %intel_i965_g33_setup_chipset_flush.exit.i

intel_i965_g33_setup_chipset_flush.exit.i:        ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 16), align 8
  %i.av = call i32 @pci_read_config_dword(ptr noundef %i.au, i32 noundef 96, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.aw = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ax = and i32 %i.aw, 1
  %.not.i5.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i5.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 16), align 8 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i64, ptr @pci_mem_start, align 8
  %i.bc = call i32 @pci_bus_alloc_resource(ptr noundef %i.ba, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @intel_private, i64 80), i64 noundef 4096, i64 noundef 4096, i64 noundef %i.bb, i64 noundef 0, ptr noundef @pcibios_align_resource, ptr noundef %i.ay) #11 ; 0 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 144), align 8
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 16), align 8
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 80), align 8
  %i.bf = trunc i64 %i.be to i32
  %i.bg = or i32 %i.bf, 1
  %i.bh = call i32 @pci_write_config_dword(ptr noundef %i.bd, i32 noundef 96, i32 noundef %i.bg) #11 ; 0 uses
  br label %intel_i915_setup_chipset_flush.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bi = and i32 %i.aw, -2                       ; 2 uses
  store i32 %i.bi, ptr %i.a, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 144), align 8
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  store i64 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 80), align 8
  %i.bk = add nuw nsw i64 %i.bj, 4096
  store i64 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 88), align 8
  %i.bl = call i32 @request_resource(ptr noundef @iomem_resource, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @intel_private, i64 80)) #11
  %.not1.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not1.i.i, label %intel_i915_setup_chipset_flush.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 144), align 8
  br label %intel_i915_setup_chipset_flush.exit.i

intel_i915_setup_chipset_flush.exit.i:            ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.q

bb.q:                                             ; preds = %intel_i915_setup_chipset_flush.exit.i, %intel_i965_g33_setup_chipset_flush.exit.i
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 80), align 8 ; 2 uses
  %.not3.i = icmp eq i64 %i.bm, 0
  br i1 %.not3.i, label %thread-pre-split.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = call ptr @ioremap(i64 noundef %i.bm, i64 noundef 4096) #11 ; 2 uses
  store ptr %i.bn, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 64), align 8
  br label %bb.s

thread-pre-split.i:                               ; preds = %bb.q
  %.pr.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 64), align 8
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split.i, %bb.r
  %i.bo = phi ptr [ %.pr.i, %thread-pre-split.i ], [ %i.bn, %bb.r ]
  %.not4.i = icmp eq ptr %i.bo, null
  br i1 %.not4.i, label %bb.t, label %intel_i9xx_setup_flush.exit

bb.t:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 8), align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 200
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bq, ptr noundef @.str.40) #12
  br label %intel_i9xx_setup_flush.exit

intel_i9xx_setup_flush.exit:                      ; preds = %bb.t, %bb.s, %bb.g, %bb.f, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.s ], [ 0, %bb.t ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i9xx_cleanup() #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 64), align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @iounmap(ptr noundef nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 144), align 8
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @release_resource(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @intel_private, i64 80)) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 80), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 144), align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i9xx_chipset_flush() #0 align 16 prefalign(16) {
bb.a:
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !26
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 64), align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1, ptr nonnull elementtype(i32) %i.a) #10, !srcloc !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_bus_alloc_resource(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @pcibios_align_resource(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i965_write_entry(i64 noundef %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %2, 65537
  %spec.select = select i1 %i.a, i64 7, i64 1
  %i.b = lshr i64 %0, 28
  %i.c = and i64 %i.b, 240
  %i.d = or disjoint i64 %i.c, %spec.select
  %i.e = or i64 %i.d, %0
  %i.f = trunc i64 %i.e to i32
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 48), align 8
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr [4 x i8], ptr %i.g, i64 %i.h
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %i.f, ptr elementtype(i32) %i.i) #10, !srcloc !17
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 0, 68719472641) i64 @i965_read_entry(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @intel_private, i64 48), align 8
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr [4 x i8], ptr %i.a, i64 %i.b
  %i.d = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c) #10, !srcloc !13 ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = trunc i32 %i.d to i8
  %i.g = and i8 %i.f, 1
  store i8 %i.g, ptr %1, align 1
  store i8 0, ptr %2, align 1
  %i.h = shl nuw nsw i64 %i.e, 28
  %i.i = and i64 %i.h, 64424509440
end_hunk_0
