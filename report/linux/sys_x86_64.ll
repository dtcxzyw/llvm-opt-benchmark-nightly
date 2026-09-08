Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/sys_x86_64?download=true
inline.NumInlined: 34
inline.NumDeleted: 21
begin_hunk_0_@control_va_addr_alignment:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.e, %.tail14.thread, %bb.f, %bb.d, %bb.a
  ret i32 1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__x64_sys_mmap(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 4095
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %__se_sys_mmap.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %0, i64 112
  %i.m = load i64, ptr %i.l, align 8
  %i.n = lshr exact i64 %i.b, 12
  %i.o = tail call i64 @ksys_mmap_pgoff(i64 noundef %i.m, i64 noundef %i.k, i64 noundef %i.i, i64 noundef %i.g, i64 noundef %i.e, i64 noundef %i.n) #8
  br label %__se_sys_mmap.exit

__se_sys_mmap.exit:                               ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.o, %bb.b ], [ -22, %bb.a ]
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__ia32_sys_mmap(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 4095
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %__se_sys_mmap.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 112
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4294967295
  %i.j = getelementptr i8, ptr %0, i64 96
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr i8, ptr %0, i64 88
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 4294967295
  %i.p = getelementptr i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 4294967295
  %i.s = lshr exact i64 %i.b, 12
  %i.t = and i64 %i.s, 1048575
  %i.u = tail call i64 @ksys_mmap_pgoff(i64 noundef %i.r, i64 noundef %i.o, i64 noundef %i.l, i64 noundef %i.i, i64 noundef %i.f, i64 noundef %i.t) #8
  br label %__se_sys_mmap.exit

__se_sys_mmap.exit:                               ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.u, %bb.b ], [ -22, %bb.a ]
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @arch_get_unmapped_area(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 %5) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %6 = alloca %struct.vm_unmapped_area_info, align 8 ; 14 uses
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #10, !srcloc !10
  %i.b = inttoptr i64 %i.a to ptr                 ; 7 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1400
  %i.d = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.e = and i64 %4, 16
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 2
  %.not.i.i = icmp ne i32 %i.h, 0
  %i.i = and i64 %4, 64
  %.not.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %.not.i, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 44
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 4194304
  %.not8.i = icmp eq i32 %i.l, 0
  br i1 %.not8.i, label %find_start_end.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i64 @randomize_page(i64 noundef 1073741824, i64 noundef 33554432) #8
  br label %find_start_end.exit

bb.e:                                             ; preds = %bb.b
  %i.n = tail call i64 @get_mmap_base(i32 noundef 1) #8 ; 2 uses
  %i.o = load i32, ptr %i.f, align 8
  %i.p = and i32 %i.o, 2
  %.not.i9.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i9.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i64 @task_size_32bit() #8
  br label %find_start_end.exit

bb.g:                                             ; preds = %bb.e
  %i.r = icmp ugt i64 %1, 140737488351232
  %i.s = zext i1 %i.r to i32
  %i.t = tail call i64 @task_size_64bit(i32 noundef %i.s) #8
  br label %find_start_end.exit

find_start_end.exit:                              ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.043 = phi i64 [ %i.n, %bb.g ], [ %i.n, %bb.f ], [ 1073741824, %bb.c ], [ %i.m, %bb.d ]
  %.042 = phi i64 [ %i.t, %bb.g ], [ %i.q, %bb.f ], [ 2147483648, %bb.c ], [ 2147483648, %bb.d ] ; 3 uses
  %i.u = icmp ugt i64 %2, %.042
  br i1 %i.u, label %bb.r, label %bb.h

bb.h:                                             ; preds = %find_start_end.exit
  %.not28 = icmp eq i64 %1, 0
  br i1 %.not28, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add i64 %1, 4095
  %i.w = and i64 %i.v, -4096                      ; 5 uses
  %i.x = tail call ptr @find_vma(ptr noundef %i.d, i64 noundef %i.w) #8 ; 3 uses
  %i.y = sub nuw i64 %.042, %2
  %.not29 = icmp ult i64 %i.y, %i.w
  br i1 %.not29, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not30 = icmp eq ptr %i.x, null
  br i1 %.not30, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = add i64 %i.w, %2
  %.val = load i64, ptr %i.x, align 64            ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 32
  %.val33 = load i64, ptr %i.aa, align 32
  %i.ab = and i64 %.val33, 256
  %.not.i.i35 = icmp eq i64 %i.ab, 0
  %i.ac = load i64, ptr @stack_guard_gap, align 8
  %i.ad = tail call i64 @llvm.usub.sat.i64(i64 %.val, i64 %i.ac)
  %spec.store.select.i = select i1 %.not.i.i35, i64 %.val, i64 %i.ad
  %.not31 = icmp ugt i64 %i.z, %spec.store.select.i
  br i1 %.not31, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.043, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.042, ptr %i.ag, align 8
  %.not32 = icmp eq ptr %0, null
  br i1 %.not32, label %.thread44, label %bb.m

.thread44:                                        ; preds = %bb.l
  %i.ah = shl i64 %3, 12
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.aj, align 8
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %0, i64 8
  %.val34 = load ptr, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %.val34, i64 8
  %.val34.val = load i32, ptr %i.al, align 8
  %i.am = and i32 %.val34.val, 16
  %.not46 = icmp eq i32 %i.am, 0
  br i1 %.not46, label %bb.n, label %get_align_mask.exit

bb.n:                                             ; preds = %bb.m
  %i.an = shl i64 %3, 12                          ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.ao, align 8
  %i.ap = load i32, ptr @va_align, align 64       ; 3 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %get_align_mask.exit.thread, label %mmap_is_ia32.exit.i

get_align_mask.exit.thread:                       ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 0, ptr %i.ar, align 8
  br label %get_align_bits.exit

mmap_is_ia32.exit.i:                              ; preds = %bb.n
  %i.as = load volatile i64, ptr %i.b, align 8
  %i.at = trunc i64 %i.as to i32
  %7 = lshr i32 %i.at, 27
  %8 = and i32 %7, 1
  %9 = sub nuw nsw i32 2, %8
  %i.au = and i32 %9, %i.ap
  %.not5.i = icmp eq i32 %i.au, 0
  br i1 %.not5.i, label %get_align_mask.exit.thread54, label %bb.o

bb.o:                                             ; preds = %mmap_is_ia32.exit.i
  %i.av = getelementptr i8, ptr %i.b, i64 44
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, 4194304
  %.not6.i = icmp eq i32 %i.ax, 0
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @va_align, i64 8), align 8
  %spec.select.i = select i1 %.not6.i, i64 0, i64 %i.ay
  br label %get_align_mask.exit.thread54

get_align_mask.exit.thread54:                     ; preds = %mmap_is_ia32.exit.i, %bb.o
  %.0.i.ph.ph = phi i64 [ %spec.select.i, %bb.o ], [ 0, %mmap_is_ia32.exit.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %.0.i.ph.ph, ptr %i.az, align 8
  br label %mmap_is_ia32.exit.i.i

get_align_mask.exit:                              ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %0, i64 32
  %.val7.i = load ptr, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %.val7.i, i64 40
  %.val7.val.i = load ptr, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %.val7.val.i, i64 864
  %.val7.val.val.i = load ptr, ptr %i.bc, align 32
  %i.bd = getelementptr i8, ptr %.val7.val.val.i, i64 24
  %.val7.val.val.val.i = load ptr, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %.val7.val.val.val.i, i64 40
  %.val7.val.val.val.val.i = load i64, ptr %i.be, align 8
  %i.bf = and i64 %.val7.val.val.val.val.i, -4096
  %i.bg = xor i64 %i.bf, -4096
  %.pr.pre = load i32, ptr @va_align, align 64    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.bg, ptr %i.bh, align 8
  %i.bi = icmp slt i32 %.pr.pre, 0
  br i1 %i.bi, label %get_align_bits.exit, label %mmap_is_ia32.exit.i.i

mmap_is_ia32.exit.i.i:                            ; preds = %get_align_mask.exit.thread54, %get_align_mask.exit
  %.pr57 = phi i32 [ %i.ap, %get_align_mask.exit.thread54 ], [ %.pr.pre, %get_align_mask.exit ]
  %i.bj = phi i64 [ %i.an, %get_align_mask.exit.thread54 ], [ 0, %get_align_mask.exit ] ; 2 uses
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @va_align, i64 16), align 16
  %i.bl = load volatile i64, ptr %i.b, align 8
  %i.bm = trunc i64 %i.bl to i32
  %10 = lshr i32 %i.bm, 27
  %11 = and i32 %10, 1
  %12 = sub nuw nsw i32 2, %11
  %i.bn = and i32 %12, %.pr57
  %.not5.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not5.i.i, label %get_align_bits.exit, label %bb.p

bb.p:                                             ; preds = %mmap_is_ia32.exit.i.i
  %i.bo = getelementptr i8, ptr %i.b, i64 44
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = and i32 %i.bp, 4194304
  %.not6.i.i = icmp eq i32 %i.bq, 0
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @va_align, i64 8), align 8
  %spec.select.i.i = select i1 %.not6.i.i, i64 0, i64 %i.br
  %i.bs = and i64 %spec.select.i.i, %i.bk
  br label %get_align_bits.exit

get_align_bits.exit:                              ; preds = %get_align_mask.exit.thread, %get_align_mask.exit, %mmap_is_ia32.exit.i.i, %bb.p
  %i.bt = phi i64 [ %i.bj, %mmap_is_ia32.exit.i.i ], [ 0, %get_align_mask.exit ], [ %i.bj, %bb.p ], [ %i.an, %get_align_mask.exit.thread ]
  %.0.i.i = phi i64 [ 0, %mmap_is_ia32.exit.i.i ], [ 0, %get_align_mask.exit ], [ %i.bs, %bb.p ], [ 0, %get_align_mask.exit.thread ]
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bv = add i64 %i.bt, %.0.i.i
  store i64 %i.bv, ptr %i.bu, align 8
  br label %bb.q

bb.q:                                             ; preds = %.thread44, %get_align_bits.exit
  %i.bw = call i64 @vm_unmapped_area(ptr noundef nonnull %6) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.k, %find_start_end.exit, %bb.a, %bb.q
  %.0 = phi i64 [ %i.bw, %bb.q ], [ %1, %bb.a ], [ -12, %find_start_end.exit ], [ %i.w, %bb.k ], [ %i.w, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @vm_unmapped_area(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @arch_get_unmapped_area_topdown(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 align 16 prefalign(16) {
test_ti_thread_flag.exit:
  %6 = alloca %struct.vm_unmapped_area_info, align 8 ; 14 uses
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #10, !srcloc !10
  %i.b = inttoptr i64 %i.a to ptr                 ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1400
  %i.d = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.e = load volatile i64, ptr %i.b, align 8
  %i.f = and i64 %i.e, 134217728
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %test_ti_thread_flag.exit
  %i.g = getelementptr i8, ptr %i.b, i64 1448
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 134217728
  %.not38 = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not38, i64 4294959104, i64 3221225472
  br label %bb.c

bb.b:                                             ; preds = %test_ti_thread_flag.exit
  %i.k = tail call i64 asm sideeffect "# ALT: oldinstr\0A771:\0A\09movq $2,$0\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (16*32+16)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09movq $3,$0\0A775:\0A.popsection\0A", "=r,i,i,i,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 140737488351232, i64 72057594037923840) #11, !srcloc !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i64 [ %i.j, %bb.a ], [ %i.k, %bb.b ]
  %i.m = icmp ugt i64 %2, %i.l
  br i1 %i.m, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i64 %4, 16
  %.not39 = icmp eq i64 %i.n, 0
  br i1 %.not39, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.b, i64 16       ; 3 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = and i32 %i.p, 2
  %.not.i = icmp ne i32 %i.q, 0
  %i.r = and i64 %4, 64
  %.not40 = icmp eq i64 %i.r, 0
  %or.cond = or i1 %.not40, %.not.i
  br i1 %or.cond, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e
  %.not41 = icmp eq i64 %1, 0
  br i1 %.not41, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = and i64 %1, -4096                        ; 7 uses
  %i.t = tail call zeroext i1 @mmap_address_hint_valid(i64 noundef %i.s, i64 noundef %2) #8
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr @find_vma(ptr noundef %i.d, i64 noundef %i.s) #8 ; 3 uses
  %.not42 = icmp eq ptr %i.u, null
  br i1 %.not42, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add i64 %i.s, %2
  %.val = load i64, ptr %i.u, align 64            ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 32
  %.val48 = load i64, ptr %i.w, align 32
  %i.x = and i64 %.val48, 256
  %.not.i.i = icmp eq i64 %i.x, 0
  %i.y = load i64, ptr @stack_guard_gap, align 8
  %i.z = tail call i64 @llvm.usub.sat.i64(i64 %.val, i64 %i.y)
  %spec.store.select.i = select i1 %.not.i.i, i64 %.val, i64 %i.z
  %.not43 = icmp ugt i64 %i.v, %spec.store.select.i
  br i1 %.not43, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.g
  %.0 = phi i64 [ %i.s, %bb.i ], [ %i.s, %bb.g ], [ 0, %bb.f ]
  store i64 1, ptr %6, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.aa, align 8
  %i.ab = load i32, ptr %i.o, align 8
  %i.ac = and i32 %i.ab, 2
  %.not.i50 = icmp ne i32 %i.ac, 0
  %i.ad = and i64 %4, 128
  %.not44 = icmp eq i64 %i.ad, 0
  %or.cond47 = or i1 %.not44, %.not.i50
  %spec.select = select i1 %or.cond47, i64 4096, i64 4294967296
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %spec.select, ptr %i.ae, align 8
  %i.af = tail call i64 @get_mmap_base(i32 noundef 0) #8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i64 %i.af, ptr %i.ag, align 8
  %.not45 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %0, i64 8
  %.val49 = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %.val49, i64 8
  %.val49.val = load i32, ptr %i.ai, align 8
  %i.aj = and i32 %.val49.val, 16
  %.not54 = icmp eq i32 %i.aj, 0
  br i1 %.not54, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.ak, align 8
  %i.al = shl i64 %3, 12                          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.al, ptr %i.am, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = phi i64 [ %i.al, %bb.l ], [ 0, %bb.k ]
  %i.ao = icmp ugt i64 %.0, 140737488351232
  br i1 %i.ao, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %i.o, align 8
  %i.aq = and i32 %i.ap, 2
  %.not.i51.not = icmp eq i32 %i.aq, 0
  br i1 %.not.i51.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call i64 asm sideeffect "# ALT: oldinstr\0A771:\0A\09movq $2,$0\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (16*32+16)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09movq $3,$0\0A775:\0A.popsection\0A", "=r,i,i,i,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 140737488351232, i64 72057594037923840) #11, !srcloc !11
  %i.as = add i64 %i.ar, -140737488351232
  %i.at = add i64 %i.as, %i.af
  store i64 %i.at, ptr %i.ag, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.not45, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load i32, ptr %i.av, align 8
  %i.aw = and i32 %.val.val.i, 16
  %.not8.i = icmp eq i32 %i.aw, 0
  br i1 %.not8.i, label %bb.r, label %get_align_mask.exit

bb.r:                                             ; preds = %bb.q
  %i.ax = load i32, ptr @va_align, align 64       ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %get_align_mask.exit.thread, label %mmap_is_ia32.exit.i

get_align_mask.exit.thread:                       ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 0, ptr %i.az, align 8
  br label %get_align_bits.exit

mmap_is_ia32.exit.i:                              ; preds = %bb.r
  %i.ba = load volatile i64, ptr %i.b, align 8
  %i.bb = trunc i64 %i.ba to i32
  %7 = lshr i32 %i.bb, 27
  %8 = and i32 %7, 1
  %9 = sub nuw nsw i32 2, %8
  %i.bc = and i32 %9, %i.ax
  %.not5.i = icmp eq i32 %i.bc, 0
  br i1 %.not5.i, label %get_align_mask.exit.thread61, label %bb.s

bb.s:                                             ; preds = %mmap_is_ia32.exit.i
  %i.bd = getelementptr i8, ptr %i.b, i64 44
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = and i32 %i.be, 4194304
  %.not6.i = icmp eq i32 %i.bf, 0
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @va_align, i64 8), align 8
  %spec.select.i = select i1 %.not6.i, i64 0, i64 %i.bg
  br label %get_align_mask.exit.thread61

get_align_mask.exit.thread61:                     ; preds = %mmap_is_ia32.exit.i, %bb.s
  %.0.i.ph.ph = phi i64 [ %spec.select.i, %bb.s ], [ 0, %mmap_is_ia32.exit.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %.0.i.ph.ph, ptr %i.bh, align 8
  br label %mmap_is_ia32.exit.i.i

get_align_mask.exit:                              ; preds = %bb.q
  %i.bi = getelementptr i8, ptr %0, i64 32
  %.val7.i = load ptr, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %.val7.i, i64 40
  %.val7.val.i = load ptr, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %.val7.val.i, i64 864
  %.val7.val.val.i = load ptr, ptr %i.bk, align 32
  %i.bl = getelementptr i8, ptr %.val7.val.val.i, i64 24
  %.val7.val.val.val.i = load ptr, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %.val7.val.val.val.i, i64 40
  %.val7.val.val.val.val.i = load i64, ptr %i.bm, align 8
  %i.bn = and i64 %.val7.val.val.val.val.i, -4096
  %i.bo = xor i64 %i.bn, -4096
  %.pr.pre = load i32, ptr @va_align, align 64    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.bo, ptr %i.bp, align 8
  %i.bq = icmp slt i32 %.pr.pre, 0
  br i1 %i.bq, label %get_align_bits.exit, label %mmap_is_ia32.exit.i.i

mmap_is_ia32.exit.i.i:                            ; preds = %get_align_mask.exit.thread61, %get_align_mask.exit
  %.pr64 = phi i32 [ %i.ax, %get_align_mask.exit.thread61 ], [ %.pr.pre, %get_align_mask.exit ]
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @va_align, i64 16), align 16
  %i.bs = load volatile i64, ptr %i.b, align 8
  %i.bt = trunc i64 %i.bs to i32
  %10 = lshr i32 %i.bt, 27
  %11 = and i32 %10, 1
  %12 = sub nuw nsw i32 2, %11
  %i.bu = and i32 %12, %.pr64
  %.not5.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not5.i.i, label %get_align_bits.exit, label %bb.t

bb.t:                                             ; preds = %mmap_is_ia32.exit.i.i
  %i.bv = getelementptr i8, ptr %i.b, i64 44
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, 4194304
  %.not6.i.i = icmp eq i32 %i.bx, 0
  %i.by = load i64, ptr getelementptr inbounds nuw (i8, ptr @va_align, i64 8), align 8
  %spec.select.i.i = select i1 %.not6.i.i, i64 0, i64 %i.by
  %i.bz = and i64 %spec.select.i.i, %i.br
  br label %get_align_bits.exit

get_align_bits.exit:                              ; preds = %get_align_mask.exit.thread, %get_align_mask.exit, %mmap_is_ia32.exit.i.i, %bb.t
  %.0.i.i = phi i64 [ 0, %mmap_is_ia32.exit.i.i ], [ 0, %get_align_mask.exit ], [ %i.bz, %bb.t ], [ 0, %get_align_mask.exit.thread ]
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cb = add i64 %i.an, %.0.i.i
  store i64 %i.cb, ptr %i.ca, align 8
  br label %bb.u

bb.u:                                             ; preds = %get_align_bits.exit, %bb.p
  %i.cc = call i64 @vm_unmapped_area(ptr noundef nonnull %6) #8 ; 2 uses
  %i.cd = and i64 %i.cc, 4095
  %.not46 = icmp eq i64 %i.cd, 0
  br i1 %.not46, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.e, %bb.u
  %i.ce = call i64 @arch_get_unmapped_area(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 poison) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.h, %bb.i, %bb.d, %bb.c, %bb.v
  %.032 = phi i64 [ %i.s, %bb.h ], [ -12, %bb.c ], [ %1, %bb.d ], [ %i.ce, %bb.v ], [ %i.s, %bb.i ], [ %i.cc, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i64 %.032
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @mmap_address_hint_valid(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @get_mmap_base(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ksys_mmap_pgoff(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @randomize_page(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @task_size_32bit() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @task_size_64bit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i64 2148201083}
!11 = !{i64 2148356448, i64 2148356477, i64 2148356483, i64 2148356499, i64 2148356515, i64 2148356542, i64 2148356642, i64 2148356718, i64 2148356832, i64 2148356880, i64 2148356928, i64 2148356992, i64 2148357049, i64 2148357101, i64 2148357227, i64 2148357458, i64 2148357313, i64 2148357344, i64 2148357350, i64 2148357366, i64 2148357382}
end_hunk_0
