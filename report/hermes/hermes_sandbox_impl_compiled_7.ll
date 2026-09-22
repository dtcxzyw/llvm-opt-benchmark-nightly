Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_7?download=true
inline.NumInlined: 10002
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fsplit_buffer0x3Cstd0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x3E0x3E0x3A0x3Apush_front0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2A0x260x260x29:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %.val341, i64 %i.ba
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i32 %.0.copyload.i362, ptr %i.bz, align 1
  %.val320 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.val320, i64 %i.ay
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %.0.copyload.i363 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i363) #13, !srcloc !14
  %.val340 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.val340, i64 %i.ba
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  store i32 %.0.copyload.i363, ptr %i.cd, align 1
  %i.ce = add i32 %.2303, 32
  %i.cf = add i32 %.2, 32                         ; 2 uses
  %.not315 = icmp eq i32 %i.cf, %i.aw
  br i1 %.not315, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.loopexit368, %bb.g
  %.1 = phi i32 [ %i.ah, %bb.g ], [ %i.aw, %.loopexit368 ], [ %i.aw, %.preheader ]
  %.val339 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.val339, i64 %i.h
  store i32 %i.ae, ptr %i.cg, align 1
  %.val338 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.val338, i64 %i.f
  store i32 %.1, ptr %i.ch, align 1
  %.val337 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %.val337, i64 %i.c
  store i32 %i.ah, ptr %i.ci, align 1
  %.val336 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.b
  store i32 %i.ad, ptr %i.cj, align 1
  %.not316 = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not316, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i) #13
  %.val319 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.val319, i64 %i.c
  %.0.copyload.i364 = load i32, ptr %i.ck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i364) #13, !srcloc !14
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.loopexit, %bb.i, %bb.e
  %.1300 = phi i32 [ %.0.copyload.i364, %bb.i ], [ %.0299, %bb.e ], [ %i.ah, %.loopexit ], [ %.0.copyload.i, %bb.a ]
  %i.cl = add i32 %.1300, -4
  %i.cm = zext i32 %2 to i64
  %.val318 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.val318, i64 %i.cm
  %.0.copyload.i365 = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i365) #13, !srcloc !14
  %i.co = zext i32 %i.cl to i64
  %.val335 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.co
  store i32 %.0.copyload.i365, ptr %i.cp, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.c
  %.0.copyload.i366 = load i32, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i366) #13, !srcloc !14
  %i.cr = add i32 %.0.copyload.i366, -4
  %.val334 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.val334, i64 %i.c
  store i32 %i.cr, ptr %i.cs, align 1
  ret void

bb.k:                                             ; preds = %bb.f
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef nonnull %0)
  unreachable
}

declare i32 @w2c_hermes_memmove(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_zi_read32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext i32 %1 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.d = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cunsigned0x20char0x20const0x2A0x3E0x3A0x3Avalue0x200x260x260x20is_constructible0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cunsigned0x20char0x20const0x2A0x3E0x3A0x3Areference0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x3A0x3Ainsert0x3Cunsigned0x20char0x20const0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x20const0x2A0x3E0x2C0x20unsigned0x20char0x20const0x2A0x2C0x20unsigned0x20char0x20const0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i32 %4, %3                           ; 8 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.d = zext i32 %1 to i64                       ; 4 uses
  %i.e = add nuw nsw i64 %i.d, 8                  ; 2 uses
  %.val276.a = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %.val276.a, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.g = add nuw nsw i64 %i.d, 4                  ; 4 uses
  %.val275 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %.val275, i64 %i.g
  %.0.copyload.i284.a = load i32, ptr %i.h, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i284.a) #13, !srcloc !14
  %i.i = sub i32 %.0.copyload.i, %.0.copyload.i284.a
  %.not = icmp slt i32 %i.i, %i.a
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sub i32 %.0.copyload.i284.a, %2          ; 3 uses
  %.not272.a = icmp slt i32 %i.j, %i.a
  br i1 %.not272.a, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.j, %3                         ; 4 uses
  %i.l = sub i32 %4, %i.k                         ; 2 uses
  %.not273.a = icmp eq i32 %4, %i.k
  br i1 %.not273.a, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0.copyload.i284.a, i32 noundef %i.k, i32 noundef %i.l) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = add i32 %i.l, %.0.copyload.i284.a        ; 2 uses
  %.val281.a = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val281.a, i64 %i.g
  store i32 %i.n, ptr %i.o, align 1
  %i.p = icmp slt i32 %i.j, 1
  br i1 %i.p, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.0256 = phi i32 [ %i.n, %bb.f ], [ %.0.copyload.i284.a, %bb.c ] ; 5 uses
  %.0255 = phi i32 [ %i.k, %bb.f ], [ %4, %bb.c ] ; 2 uses
  %i.q = sub i32 %.0256, %i.a                     ; 2 uses
  %i.r = icmp ugt i32 %.0.copyload.i284.a, %i.q
  br i1 %i.r, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.g
  %i.s = zext i32 %i.q to i64
  %i.t = zext i32 %.0.copyload.i284.a to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %i.s, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.0257 = phi i32 [ %.0256, %.preheader.preheader ], [ %i.x, %.preheader ] ; 2 uses
  %.val282.a = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val282.a, i64 %indvars.iv
  %.0.copyload.i285.a = load i8, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i285.a) #13, !srcloc !31
  %i.v = zext i32 %.0257 to i64
  %.val283 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.val283, i64 %i.v
  store i8 %.0.copyload.i285.a, ptr %i.w, align 1
  %i.x = add i32 %.0257, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.y, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.g
  %.1258 = phi i32 [ %.0256, %bb.g ], [ %i.x, %.preheader ]
  %.val280 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val280, i64 %i.g
  store i32 %.1258, ptr %i.z, align 1
  %i.aa = add i32 %i.a, %2                        ; 3 uses
  %.not274 = icmp eq i32 %i.aa, %.0256
  br i1 %.not274, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ab = sub i32 %.0256, %i.aa
  %i.ac = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.aa, i32 noundef %2, i32 noundef %i.ab) #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.ad = icmp eq i32 %3, %.0255
  br i1 %i.ad, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = sub i32 %.0255, %3
  %i.af = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %i.ae) #13 ; 0 uses
  br label %bb.q

bb.k:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 %i.d
  %.0.copyload.i286 = load i32, ptr %i.ag, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i286) #13, !srcloc !14
  %i.ah = sub i32 %.0.copyload.i284.a, %.0.copyload.i286
  %i.ai = add i32 %i.ah, %i.a                     ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = sub i32 %2, %.0.copyload.i286           ; 2 uses
  %i.al = sub i32 %.0.copyload.i, %.0.copyload.i286 ; 2 uses
  %i.am = shl i32 %i.al, 1
  %i.an = tail call i32 @llvm.umax.i32(i32 %i.ai, i32 %i.am)
  %i.ao = icmp ugt i32 %i.al, 1073741822
  %i.ap = select i1 %i.ao, i32 2147483647, i32 %i.an ; 3 uses
  %.not269 = icmp eq i32 %i.ap, 0
  br i1 %.not269, label %5, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ap)
  br label %5

5:                                                ; preds = %bb.l, %bb.m
  %.0 = phi i32 [ %i.aq, %bb.m ], [ 0, %bb.l ]    ; 3 uses
  %6 = add i32 %.0, %i.ak                         ; 2 uses
  %.not270 = icmp eq i32 %3, %4
  br i1 %.not270, label %bb.n, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %6, i32 noundef %3, i32 noundef %i.a) #13
  %9 = add i32 %8, %i.a
  br label %bb.n

bb.n:                                             ; preds = %7, %5
  %.1 = phi i32 [ %9, %7 ], [ %6, %5 ]
  %i.ar = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %.0.copyload.i286, i32 noundef %i.ak) #13
  %i.as = sub i32 %.0.copyload.i284.a, %2         ; 2 uses
  %i.at = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef %2, i32 noundef %i.as) #13
  %i.au = add i32 %.0, %i.ap
  %.val279 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.e
  store i32 %i.au, ptr %i.av, align 1
  %i.aw = add i32 %i.at, %i.as
  %.val278 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val278, i64 %i.g
  store i32 %i.aw, ptr %i.ax, align 1
  %.val277 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val277, i64 %i.d
  store i32 %i.ar, ptr %i.ay, align 1
  %.not271 = icmp eq i32 %.0.copyload.i286, 0
  br i1 %.not271, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i286) #13
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #13
  tail call void @wasm_rt_trap(i32 noundef 5) #14
  unreachable

bb.q:                                             ; preds = %bb.a, %bb.f, %bb.i, %bb.o, %bb.n, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x3A0x3Avalue0x200x260x260x20is_constructible0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x3A0x3Areference0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x3A0x3Ainsert0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x20const0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i32 %4, %3                           ; 8 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  %i.d = zext i32 %1 to i64                       ; 4 uses
  %i.e = add nuw nsw i64 %i.d, 8                  ; 2 uses
  %.val289.a = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %.val289.a, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.g = add nuw nsw i64 %i.d, 4                  ; 4 uses
  %.val288 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %.val288, i64 %i.g
  %.0.copyload.i299.a = load i32, ptr %i.h, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i299.a) #13, !srcloc !14
  %i.i = sub i32 %.0.copyload.i, %.0.copyload.i299.a
  %.not = icmp slt i32 %i.i, %i.a
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sub i32 %.0.copyload.i299.a, %2          ; 3 uses
  %.not284.a = icmp slt i32 %i.j, %i.a
  br i1 %.not284.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.j, %3                         ; 3 uses
  %.not285.a = icmp eq i32 %4, %i.k
  br i1 %.not285.a, label %.loopexit304, label %.preheader303

.preheader303:                                    ; preds = %bb.d, %.preheader303
  %.0266 = phi i32 [ %i.p, %.preheader303 ], [ %.0.copyload.i299.a, %bb.d ] ; 2 uses
  %.0264 = phi i32 [ %i.q, %.preheader303 ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = zext i32 %.0264 to i64
  %.val296.a = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %.val296.a, i64 %i.l
  %.0.copyload.i300.a = load i8, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i300.a) #13, !srcloc !31
  %i.n = zext i32 %.0266 to i64
  %.val298 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val298, i64 %i.n
  store i8 %.0.copyload.i300.a, ptr %i.o, align 1
  %i.p = add i32 %.0266, 1                        ; 2 uses
  %i.q = add i32 %.0264, 1                        ; 2 uses
  %.not286.a = icmp eq i32 %i.q, %4
  br i1 %.not286.a, label %.loopexit304, label %.preheader303

.loopexit304:                                     ; preds = %.preheader303, %bb.d
  %.1267 = phi i32 [ %.0.copyload.i299.a, %bb.d ], [ %i.p, %.preheader303 ] ; 2 uses
  %.val294.a = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val294.a, i64 %i.g
  store i32 %.1267, ptr %i.r, align 1
  %i.s = icmp slt i32 %i.j, 1
  br i1 %i.s, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.c, %.loopexit304
  %.2268 = phi i32 [ %.1267, %.loopexit304 ], [ %.0.copyload.i299.a, %bb.c ] ; 5 uses
  %.0263 = phi i32 [ %i.k, %.loopexit304 ], [ %4, %bb.c ] ; 2 uses
  %i.t = sub i32 %.2268, %i.a                     ; 2 uses
  %i.u = icmp ugt i32 %.0.copyload.i299.a, %i.t
  br i1 %i.u, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.e
  %i.v = zext i32 %i.t to i64
  %i.w = zext i32 %.0.copyload.i299.a to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %i.v, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.1265 = phi i32 [ %.2268, %.preheader.preheader ], [ %i.aa, %.preheader ] ; 2 uses
  %.val295 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val295, i64 %indvars.iv
  %.0.copyload.i301.a = load i8, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i301.a) #13, !srcloc !31
  %i.y = zext i32 %.1265 to i64
  %.val297 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val297, i64 %i.y
  store i8 %.0.copyload.i301.a, ptr %i.z, align 1
  %i.aa = add i32 %.1265, 1                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.ab, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.e
  %.2 = phi i32 [ %.2268, %bb.e ], [ %i.aa, %.preheader ]
  %.val293 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val293, i64 %i.g
  store i32 %.2, ptr %i.ac, align 1
  %i.ad = add i32 %i.a, %2                        ; 3 uses
  %.not287 = icmp eq i32 %i.ad, %.2268
  br i1 %.not287, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ae = sub i32 %.2268, %i.ad
  %i.af = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.ad, i32 noundef %2, i32 noundef %i.ae) #13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.ag = icmp eq i32 %3, %.0263
  br i1 %i.ag, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = sub i32 %.0263, %3
  %i.ai = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %i.ah) #13 ; 0 uses
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 %i.d
  %.0.copyload.i302 = load i32, ptr %i.aj, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i302) #13, !srcloc !14
  %i.ak = sub i32 %.0.copyload.i299.a, %.0.copyload.i302
  %i.al = add i32 %i.ak, %i.a                     ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = sub i32 %2, %.0.copyload.i302           ; 2 uses
  %i.ao = sub i32 %.0.copyload.i, %.0.copyload.i302 ; 2 uses
  %i.ap = shl i32 %i.ao, 1
  %i.aq = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 %i.al)
  %i.ar = icmp ugt i32 %i.ao, 1073741822
  %i.as = select i1 %i.ar, i32 2147483647, i32 %i.aq ; 3 uses
  %.not281 = icmp eq i32 %i.as, 0
  br i1 %.not281, label %5, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.as)
  br label %5

5:                                                ; preds = %bb.j, %bb.k
  %.0 = phi i32 [ %i.at, %bb.k ], [ 0, %bb.j ]    ; 3 uses
  %6 = add i32 %.0, %i.an                         ; 2 uses
  %.not282 = icmp eq i32 %3, %4
  br i1 %.not282, label %bb.l, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %6, i32 noundef %3, i32 noundef %i.a) #13
  %9 = add i32 %8, %i.a
  br label %bb.l

bb.l:                                             ; preds = %7, %5
  %.1 = phi i32 [ %9, %7 ], [ %6, %5 ]
  %i.au = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %.0.copyload.i302, i32 noundef %i.an) #13
  %i.av = sub i32 %.0.copyload.i299.a, %2         ; 2 uses
  %i.aw = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef %2, i32 noundef %i.av) #13
  %i.ax = add i32 %.0, %i.as
  %.val292 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val292, i64 %i.e
  store i32 %i.ax, ptr %i.ay, align 1
  %i.az = add i32 %i.aw, %i.av
  %.val291 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.val291, i64 %i.g
  store i32 %i.az, ptr %i.ba, align 1
  %.val290 = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.val290, i64 %i.d
  store i32 %i.au, ptr %i.bb, align 1
  %.not283 = icmp eq i32 %.0.copyload.i302, 0
  br i1 %.not283, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i302) #13
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #13
  tail call void @wasm_rt_trap(i32 noundef 5) #14
  unreachable

bb.o:                                             ; preds = %bb.a, %.loopexit304, %bb.g, %bb.m, %bb.l, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fcond_swap0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.val35, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.d = zext i32 %2 to i64                       ; 2 uses
  %.val34 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %.val34, i64 %i.d
  %.0.copyload.i38 = load i32, ptr %i.e, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i38) #13, !srcloc !14
  %i.f = icmp ult i32 %.0.copyload.i, %.0.copyload.i38 ; 2 uses
  %i.g = select i1 %i.f, i32 %1, i32 %2
  %i.h = zext i32 %i.g to i64
  %.val33 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val33, i64 %i.h
  %.0.copyload.i39 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i39) #13, !srcloc !14
  %i.j = select i1 %i.f, i32 %2, i32 %1
  %i.k = zext i32 %i.j to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %i.k
  %.0.copyload.i40 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i40) #13, !srcloc !14
  %.val37 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %.val37, i64 %i.d
  store i32 %.0.copyload.i40, ptr %i.m, align 1
  %.val36 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val36, i64 %i.b
  store i32 %.0.copyload.i39, ptr %i.n, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -255, 256) i32 @w2c_hermes_strcmp(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = zext i32 %2 to i64
  %.val53 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.val53, i64 %i.b
  %.0.copyload.i = load i8, ptr %i.c, align 1     ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #13, !srcloc !31
  %i.d = zext i32 %1 to i64
  %.val52 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %.val52, i64 %i.d
  %.0.copyload.i54 = load i8, ptr %i.e, align 1   ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i54) #13, !srcloc !31
  %.not = icmp ne i8 %.0.copyload.i54, 0
  %.not49 = icmp eq i8 %.0.copyload.i, %.0.copyload.i54
  %or.cond = select i1 %.not, i1 %.not49, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a, %bb.b
  %.044 = phi i32 [ %i.m, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %.043 = phi i32 [ %i.l, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.f = zext i32 %.043 to i64
  %.val51 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val51, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.0.copyload.i55 = load i8, ptr %i.h, align 1   ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i55) #13, !srcloc !31
  %i.i = zext i32 %.044 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.0.copyload.i56 = load i8, ptr %i.k, align 1   ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i56) #13, !srcloc !31
  %.not50 = icmp eq i8 %.0.copyload.i56, 0
  br i1 %.not50, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.l = add i32 %.043, 1
  %i.m = add i32 %.044, 1
  %i.n = icmp eq i8 %.0.copyload.i55, %.0.copyload.i56
  br i1 %i.n, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.042.in = phi i8 [ %.0.copyload.i, %bb.a ], [ %.0.copyload.i55, %.preheader ], [ %.0.copyload.i55, %bb.b ]
  %.0.shrunk = phi i8 [ %.0.copyload.i54, %bb.a ], [ %.0.copyload.i56, %bb.b ], [ 0, %.preheader ]
  %.0 = zext i8 %.0.shrunk to i32
  %.042 = zext i8 %.042.in to i32
  %i.o = sub nsw i32 %.0, %.042
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Aappend0x28char0x20const0x2A0x29(ptr noundef %0, i32 noundef returned %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 3
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %.loopexit70.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = zext i32 %2 to i64
  %.val65.i = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %.val65.i, i64 %i.c
  %.0.copyload.i.i = load i8, ptr %i.d, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i.i) #13, !srcloc !31
  %.not58.i = icmp eq i8 %.0.copyload.i.i, 0
  br i1 %.not58.i, label %w2c_hermes_strlen.exit, label %.preheader69.i.preheader

.preheader69.i.preheader:                         ; preds = %bb.b
  %i.e = add i32 %2, 1                            ; 3 uses
  %i.f = and i32 %i.e, 3
  %.not59.i17 = icmp eq i32 %i.f, 0
  br i1 %.not59.i17, label %.loopexit70.i, label %.lr.ph

.preheader69.i:                                   ; preds = %.lr.ph
  %i.g = add i32 %i.i, 1                          ; 3 uses
  %i.h = and i32 %i.g, 3
  %.not59.i = icmp eq i32 %i.h, 0
  br i1 %.not59.i, label %.loopexit70.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader69.i.preheader, %.preheader69.i
  %i.i = phi i32 [ %i.g, %.preheader69.i ], [ %i.e, %.preheader69.i.preheader ] ; 3 uses
  %i.j = zext i32 %i.i to i64
  %.val64.i = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.val64.i, i64 %i.j
  %.0.copyload.i66.i = load i8, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i66.i) #13, !srcloc !31
  %.not60.i = icmp eq i8 %.0.copyload.i66.i, 0
  br i1 %.not60.i, label %.loopexit.i, label %.preheader69.i

.loopexit70.i:                                    ; preds = %.preheader69.i, %.preheader69.i.preheader, %bb.a
  %.1.i = phi i32 [ %2, %bb.a ], [ %i.e, %.preheader69.i.preheader ], [ %i.g, %.preheader69.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.loopexit70.i
  %.2.i = phi i32 [ %.1.i, %.loopexit70.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.m = add i32 %.2.i, 4
  %i.n = zext i32 %.2.i to i64
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.n
  %.0.copyload.i67.i = load i32, ptr %i.o, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i67.i) #13, !srcloc !14
  %i.p = sub i32 16843008, %.0.copyload.i67.i
  %i.q = or i32 %i.p, %.0.copyload.i67.i
  %i.r = and i32 %i.q, -2139062144
  %.not61.i = icmp eq i32 %i.r, -2139062144
  br i1 %.not61.i, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.056.i = phi i32 [ %i.s, %.preheader.i ], [ %.2.i, %bb.c ] ; 3 uses
  %i.s = add i32 %.056.i, 1
  %i.t = zext i32 %.056.i to i64
  %.val63.i = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val63.i, i64 %i.t
  %.0.copyload.i68.i = load i8, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i68.i) #13, !srcloc !31
  %.not62.i = icmp eq i8 %.0.copyload.i68.i, 0
  br i1 %.not62.i, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph, %.preheader.i
  %.3.i = phi i32 [ %.056.i, %.preheader.i ], [ %i.i, %.lr.ph ]
  %i.v = sub i32 %.3.i, %2
  br label %w2c_hermes_strlen.exit

w2c_hermes_strlen.exit:                           ; preds = %bb.b, %.loopexit.i
  %.0.i = phi i32 [ %i.v, %.loopexit.i ], [ 0, %bb.b ]
  %i.w = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Aappend0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %.0.i) ; 0 uses
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_pow5mult(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %3, 3                            ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_0
begin_hunk_1_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fnext_prime0x28unsigned0x20long0x29:bb.a

bb.gn:                                            ; preds = %bb.gm
  %i.mk = mul nuw i32 %i.mi, %i.mg
  %i.ml = icmp eq i32 %i.bp, %i.mk
  br i1 %i.ml, label %.loopexit1264, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.mm = add i32 %.11141, 208                    ; 4 uses
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %bb.gp, label %bb.gq, !prof !25

bb.gp:                                            ; preds = %bb.go
  tail call void @wasm_rt_trap(i32 noundef 3) #14
  unreachable

bb.gq:                                            ; preds = %bb.go
  %i.mo = udiv i32 %i.bp, %i.mm                   ; 2 uses
  %i.mp = icmp ult i32 %i.mo, %i.mm
  br i1 %i.mp, label %.loopexit, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.mq = add i32 %.11141, 210
  %i.mr = mul nuw i32 %i.mo, %i.mm
  %.not1241 = icmp eq i32 %i.bp, %i.mr
  br i1 %.not1241, label %.loopexit1264, label %.preheader

bb.gs:                                            ; preds = %bb.h, %bb.i
  %indvars.iv1580 = phi i64 [ 5, %bb.h ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.ms = shl nuw nsw i64 %indvars.iv1580, 2
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 228208
  %.0.copyload.i1263 = load i32, ptr %i.mu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1263) #13, !srcloc !14
  %i.mv = icmp eq i32 %.0.copyload.i1263, 0
  br i1 %i.mv, label %bb.gt, label %bb.gu, !prof !25

bb.gt:                                            ; preds = %bb.gs
  tail call void @wasm_rt_trap(i32 noundef 3) #14
  unreachable

bb.gu:                                            ; preds = %bb.gs
  %i.mw = udiv i32 %i.bp, %.0.copyload.i1263      ; 2 uses
  %i.mx = icmp ult i32 %i.mw, %.0.copyload.i1263
  br i1 %i.mx, label %.loopexit, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.my = mul i32 %i.mw, %.0.copyload.i1263
  %.not = icmp eq i32 %i.bp, %i.my
  br i1 %.not, label %.loopexit1264, label %bb.i

.loopexit1264:                                    ; preds = %bb.gv, %bb.gr, %bb.gn, %bb.gj, %bb.gf, %bb.gb, %bb.fx, %bb.ft, %bb.fp, %bb.fl, %bb.fh, %bb.fd, %bb.ez, %bb.ev, %bb.er, %bb.en, %bb.ej, %bb.ef, %bb.eb, %bb.dx, %bb.dt, %bb.dp, %bb.dl, %bb.dh, %bb.dd, %bb.cz, %bb.cv, %bb.cr, %bb.cn, %bb.cj, %bb.cf, %bb.cb, %bb.bx, %bb.bt, %bb.bp, %bb.bl, %bb.bh, %bb.bd, %bb.az, %bb.av, %bb.ar, %bb.an, %bb.aj, %bb.af, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.l
  %i.mz = add i32 %.01138, 1                      ; 2 uses
  %i.na = icmp eq i32 %i.mz, 48                   ; 2 uses
  %i.nb = zext i1 %i.na to i32
  %i.nc = select i1 %i.na, i32 0, i32 %i.mz
  %i.nd = add i32 %.0, %i.nb                      ; 2 uses
  %i.ne = mul i32 %i.nd, 210
  br label %bb.h

.loopexit:                                        ; preds = %bb.gu, %bb.gq, %bb.gm, %bb.gi, %bb.ge, %bb.ga, %bb.fw, %bb.fs, %bb.fo, %bb.fk, %bb.fg, %bb.fc, %bb.ey, %bb.eu, %bb.eq, %bb.em, %bb.ei, %bb.ee, %bb.ea, %bb.dw, %bb.ds, %bb.do, %bb.dk, %bb.dg, %bb.dc, %bb.cy, %bb.cu, %bb.cq, %bb.cm, %bb.ci, %bb.ce, %bb.ca, %bb.bw, %bb.bs, %bb.bo, %bb.bk, %bb.bg, %bb.bc, %bb.ay, %bb.au, %bb.aq, %bb.am, %bb.ai, %bb.ae, %bb.aa, %bb.w, %bb.s, %bb.o, %bb.k, %w2c_hermes_unsigned0x20int0x20const0x2A0x20std0x3A0x3A_0x5F20x3A0x3Alower_bound0x5Babi0x3Av150070x5D0x3Cunsigned0x20int0x20const0x2A0x2C0x20unsigned0x20long0x3E0x28unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20long0x20const0x260x29.exit
  %.1 = phi i32 [ %.0.copyload.i, %w2c_hermes_unsigned0x20int0x20const0x2A0x20std0x3A0x3A_0x5F20x3A0x3Alower_bound0x5Babi0x3Av150070x5D0x3Cunsigned0x20int0x20const0x2A0x2C0x20unsigned0x20long0x3E0x28unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20long0x20const0x260x29.exit ], [ %i.bp, %bb.gq ], [ %i.bp, %bb.k ], [ %i.bp, %bb.o ], [ %i.bp, %bb.s ], [ %i.bp, %bb.w ], [ %i.bp, %bb.aa ], [ %i.bp, %bb.ae ], [ %i.bp, %bb.ai ], [ %i.bp, %bb.am ], [ %i.bp, %bb.aq ], [ %i.bp, %bb.au ], [ %i.bp, %bb.ay ], [ %i.bp, %bb.bc ], [ %i.bp, %bb.bg ], [ %i.bp, %bb.bk ], [ %i.bp, %bb.bo ], [ %i.bp, %bb.bs ], [ %i.bp, %bb.bw ], [ %i.bp, %bb.ca ], [ %i.bp, %bb.ce ], [ %i.bp, %bb.ci ], [ %i.bp, %bb.cm ], [ %i.bp, %bb.cq ], [ %i.bp, %bb.cu ], [ %i.bp, %bb.cy ], [ %i.bp, %bb.dc ], [ %i.bp, %bb.dg ], [ %i.bp, %bb.dk ], [ %i.bp, %bb.do ], [ %i.bp, %bb.ds ], [ %i.bp, %bb.dw ], [ %i.bp, %bb.ea ], [ %i.bp, %bb.ee ], [ %i.bp, %bb.ei ], [ %i.bp, %bb.em ], [ %i.bp, %bb.eq ], [ %i.bp, %bb.eu ], [ %i.bp, %bb.ey ], [ %i.bp, %bb.fc ], [ %i.bp, %bb.fg ], [ %i.bp, %bb.fk ], [ %i.bp, %bb.fo ], [ %i.bp, %bb.fs ], [ %i.bp, %bb.fw ], [ %i.bp, %bb.ga ], [ %i.bp, %bb.ge ], [ %i.bp, %bb.gi ], [ %i.bp, %bb.gm ], [ %i.bp, %bb.gu ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_unsigned0x20int0x20const0x2A0x20std0x3A0x3A_0x5F20x3A0x3Alower_bound0x5Babi0x3Av150070x5D0x3Cunsigned0x20int0x20const0x2A0x2C0x20unsigned0x20long0x3E0x28unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20long0x20const0x260x29(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = sub i32 %2, %1
  %i.e = ashr i32 %i.d, 2                         ; 2 uses
  %.not96 = icmp eq i32 %i.e, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.g = zext i32 %i.c to i64
  %i.h = add nuw nsw i64 %i.g, 12                 ; 5 uses
  %i.i = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.098 = phi i32 [ %1, %.lr.ph ], [ %i.z, %bb.b ] ; 2 uses
  %.08597 = phi i32 [ %i.e, %.lr.ph ], [ %i.w, %bb.b ] ; 2 uses
  %.val91 = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %.val91, i64 %i.h
  store i32 %.098, ptr %i.j, align 1
  %.val89 = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.val89, i64 %i.h
  %.0.copyload.i = load i32, ptr %i.k, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.l = lshr i32 %.08597, 1                      ; 3 uses
  %i.m = shl i32 %i.l, 2
  %i.n = add i32 %.0.copyload.i, %i.m
  %.val90 = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val90, i64 %i.h
  store i32 %i.n, ptr %i.o, align 1
  %i.p = xor i32 %i.l, -1
  %i.q = add i32 %.08597, %i.p
  %.val88 = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val88, i64 %i.h
  %.0.copyload.i92 = load i32, ptr %i.r, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i92) #13, !srcloc !14
  %i.s = zext i32 %.0.copyload.i92 to i64
  %.val87 = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val87, i64 %i.s
  %.0.copyload.i93 = load i32, ptr %i.t, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i93) #13, !srcloc !14
  %.val86 = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val86, i64 %i.i
  %.0.copyload.i94 = load i32, ptr %i.u, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i94) #13, !srcloc !14
  %i.v = icmp ult i32 %.0.copyload.i93, %.0.copyload.i94 ; 2 uses
  %i.w = select i1 %i.v, i32 %i.q, i32 %i.l       ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %.0.copyload.i95 = load i32, ptr %i.x, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i95) #13, !srcloc !14
  %i.y = add i32 %.0.copyload.i95, 4
  %i.z = select i1 %i.v, i32 %i.y, i32 %.098      ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.z, %bb.b ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_sbrk(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 261472
  %.0.copyload.i = load i32, ptr %i.b, align 1    ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.c = add i32 %1, 7
  %i.d = and i32 %i.c, -8                         ; 2 uses
  %i.e = add i32 %.0.copyload.i, %i.d             ; 5 uses
  %.not = icmp ugt i32 %i.e, %.0.copyload.i
  %.not5758 = icmp eq i32 %i.d, 0
  %.not57 = or i1 %.not5758, %.not
  br i1 %.not57, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = trunc i64 %i.g to i32
  %i.i = shl i32 %i.h, 16                         ; 2 uses
  %i.j = icmp ugt i32 %i.e, %i.i
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.e, 65535
  %i.l = sub i32 %i.k, %i.i
  %i.m = lshr i32 %i.l, 16
  %i.n = zext nneg i32 %i.m to i64
  %i.o = tail call i64 @wasm_rt_grow_memory(ptr noundef nonnull %i.a, i64 noundef %i.n) #13
  %i.p = and i64 %i.o, 4294967295
  %i.q = icmp eq i64 %i.p, 4294967295
  br i1 %i.q, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !41
  tail call void @w2c_env_emscripten_notify_memory_growth(ptr noundef %i.r, i32 noundef 0) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b, %bb.d
  %.sink64 = phi i64 [ 261472, %bb.b ], [ 261472, %bb.d ], [ 272032, %bb.c ], [ 272032, %bb.a ]
  %.sink = phi i32 [ %i.e, %bb.b ], [ %i.e, %bb.d ], [ 48, %bb.c ], [ 48, %bb.a ]
  %.1 = phi i32 [ %.0.copyload.i, %bb.b ], [ %.0.copyload.i, %bb.d ], [ -1, %bb.c ], [ -1, %bb.a ]
  %.val60 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val60, i64 %.sink64
  store i32 %.sink, ptr %i.s, align 1
  ret i32 %.1
}

declare i64 @wasm_rt_grow_memory(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @w2c_env_emscripten_notify_memory_growth(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 217 uses
  %i.e = zext i32 %i.c to i64                     ; 16 uses
  %i.f = add nuw nsw i64 %i.e, 8                  ; 15 uses
  br label %.backedge2467

.backedge2467:                                    ; preds = %.backedge2467.backedge, %bb.a
  %.01944 = phi i32 [ %1, %bb.a ], [ %.01926, %.backedge2467.backedge ]
  %.01942 = phi i32 [ %2, %bb.a ], [ %.12, %.backedge2467.backedge ] ; 12 uses
  %.01935 = phi i32 [ %3, %bb.a ], [ %i.mm, %.backedge2467.backedge ]
  %i.g = add i32 %.01942, -4
  %i.h = add i32 %.01942, -8
  %i.i = add i32 %.01942, -24                     ; 2 uses
  %i.j = add i32 %.01942, -12                     ; 14 uses
  %i.k = zext i32 %i.j to i64                     ; 9 uses
  %i.l = zext i32 %i.h to i64
  %i.m = zext i32 %i.g to i64
  %i.n = add nuw nsw i64 %i.k, 8                  ; 4 uses
  br label %.loopexit2456

.loopexit2456:                                    ; preds = %.loopexit2456.backedge, %.backedge2467
  %.21937 = phi i32 [ %.01935, %.backedge2467 ], [ %i.mm, %.loopexit2456.backedge ] ; 2 uses
  %.01926 = phi i32 [ %.01944, %.backedge2467 ], [ %.01926.be, %.loopexit2456.backedge ] ; 42 uses
  %i.o = sub i32 %.01942, %.01926                 ; 4 uses
  %i.p = sdiv i32 %i.o, 12                        ; 6 uses
  switch i32 %i.p, label %bb.j [
    i32 0, label %.loopexit2445
    i32 1, label %.loopexit2445
    i32 2, label %bb.b
    i32 3, label %bb.dk
    i32 4, label %bb.h
    i32 5, label %bb.i
  ]

bb.b:                                             ; preds = %.loopexit2456
  %.val2198 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val2198, i64 %i.k
  %.0.copyload.i = load i32, ptr %i.q, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.r = zext i32 %.01926 to i64                  ; 6 uses
  %.val2197 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val2197, i64 %i.r
  %.0.copyload.i2295 = load i32, ptr %i.s, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2295) #13, !srcloc !14
  %i.t = icmp ult i32 %.0.copyload.i, %.0.copyload.i2295
  br i1 %i.t, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp ugt i32 %.0.copyload.i, %.0.copyload.i2295
  br i1 %i.u, label %.loopexit2445, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val2196 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val2196, i64 %i.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.0.copyload.i2296 = load i32, ptr %i.w, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2296) #13, !srcloc !14
  %.val2195 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val2195, i64 %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.0.copyload.i2297 = load i32, ptr %i.y, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2297) #13, !srcloc !14
  %i.z = icmp ult i32 %.0.copyload.i2296, %.0.copyload.i2297
  br i1 %i.z, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ugt i32 %.0.copyload.i2296, %.0.copyload.i2297
  br i1 %i.aa, label %.loopexit2445, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2194 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2194, i64 %i.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.0.copyload.i2298 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2298) #13, !srcloc !14
  %i.ad = and i32 %.0.copyload.i2298, 2147483647
  %.val2193 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2193, i64 %i.r
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i2299 = load i32, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2299) #13, !srcloc !14
  %i.ag = and i32 %.0.copyload.i2299, 2147483647
  %.not = icmp samesign ult i32 %i.ad, %i.ag
  br i1 %.not, label %bb.g, label %.loopexit2445

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b
  %i.ah = add nuw nsw i64 %i.r, 8                 ; 2 uses
  %.val2192 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2192, i64 %i.ah
  %.0.copyload.i2300 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2300) #13, !srcloc !14
  %.val2236 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2236, i64 %i.f
  store i32 %.0.copyload.i2300, ptr %i.aj, align 1
  %.val2265 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2265, i64 %i.r
  %.0.copyload.i2301 = load i64, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2301) #13, !srcloc !33
  %.val2294 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.val2294, i64 %i.e
  store i64 %.0.copyload.i2301, ptr %i.al, align 1
  %.val2191 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val2191, i64 %i.n
  %.0.copyload.i2302 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2302) #13, !srcloc !14
  %.val2235 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.val2235, i64 %i.ah
  store i32 %.0.copyload.i2302, ptr %i.an, align 1
  %.val2264 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2264, i64 %i.k
  %.0.copyload.i2303 = load i64, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2303) #13, !srcloc !33
  %.val2293 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2293, i64 %i.r
  store i64 %.0.copyload.i2303, ptr %i.ap, align 1
  %.val2190 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2190, i64 %i.f
  %.0.copyload.i2304 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2304) #13, !srcloc !14
  %.val2234 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2234, i64 %i.n
  store i32 %.0.copyload.i2304, ptr %i.ar, align 1
  %.val2263 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val2263, i64 %i.e
  %.0.copyload.i2305 = load i64, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2305) #13, !srcloc !33
  %.val2292 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val2292, i64 %i.k
  store i64 %.0.copyload.i2305, ptr %i.at, align 1
  br label %.loopexit2445

bb.h:                                             ; preds = %.loopexit2456
  %i.au = add i32 %.01926, 12
  %i.av = add i32 %.01926, 24
  %i.aw = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01926, i32 noundef %i.au, i32 noundef %i.av, i32 noundef %i.j) ; 0 uses
  br label %.loopexit2445

bb.i:                                             ; preds = %.loopexit2456
  %i.ax = add i32 %.01926, 12
  %i.ay = add i32 %.01926, 24
  %i.az = add i32 %.01926, 36
  %i.ba = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01926, i32 noundef %i.ax, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.j) ; 0 uses
  br label %.loopexit2445

bb.j:                                             ; preds = %.loopexit2456
  %i.bb = icmp slt i32 %i.o, 372
  br i1 %i.bb, label %bb.k, label %4

bb.k:                                             ; preds = %bb.j
  %i.bc = add i32 %.01926, 12
  %i.bd = add i32 %.01926, 24                     ; 2 uses
  %i.be = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01926, i32 noundef %i.bc, i32 noundef %i.bd) ; 0 uses
  %i.bf = add i32 %.01926, 36                     ; 2 uses
  %i.bg = icmp eq i32 %i.bf, %.01942
  br i1 %i.bg, label %.loopexit2445, label %.preheader2444

.preheader2444:                                   ; preds = %bb.k, %bb.v
  %.21946 = phi i32 [ %i.dg, %bb.v ], [ %i.bf, %bb.k ] ; 4 uses
  %.01931 = phi i32 [ %.21946, %bb.v ], [ %i.bd, %bb.k ] ; 3 uses
  %i.bh = add i32 %.21946, 8
  %i.bi = zext i32 %i.bh to i64
  %.val2189 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2189, i64 %i.bi
  %.0.copyload.i2306 = load i32, ptr %i.bj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2306) #13, !srcloc !14
  %i.bk = and i32 %.0.copyload.i2306, 2147483647  ; 2 uses
  %i.bl = zext i32 %.21946 to i64                 ; 4 uses
  %.val2188 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2188, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.0.copyload.i2307 = load i32, ptr %i.bn, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2307) #13, !srcloc !14
  %.val2187 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2187, i64 %i.bl
  %.0.copyload.i2308 = load i32, ptr %i.bo, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2308) #13, !srcloc !14
  %i.bp = zext i32 %.01931 to i64                 ; 5 uses
  %.val2186 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.val2186, i64 %i.bp
  %.0.copyload.i2309 = load i32, ptr %i.bq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2309) #13, !srcloc !14
  %i.br = icmp ult i32 %.0.copyload.i2308, %.0.copyload.i2309
  br i1 %i.br, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.preheader2444
  %i.bs = icmp ugt i32 %.0.copyload.i2308, %.0.copyload.i2309
  br i1 %i.bs, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val2185 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2185, i64 %i.bp
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.0.copyload.i2310 = load i32, ptr %i.bu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2310) #13, !srcloc !14
  %i.bv = icmp ult i32 %.0.copyload.i2307, %.0.copyload.i2310
  br i1 %i.bv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = icmp ugt i32 %.0.copyload.i2307, %.0.copyload.i2310
  br i1 %i.bw, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val2184 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2184, i64 %i.bp
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.0.copyload.i2311 = load i32, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2311) #13, !srcloc !14
  %i.bz = and i32 %.0.copyload.i2311, 2147483647
  %.not2075 = icmp samesign ult i32 %i.bk, %i.bz
  br i1 %.not2075, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o, %bb.m, %.preheader2444
  %.val2262 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.val2262, i64 %i.bp
  %.0.copyload.i2312 = load i64, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2312) #13, !srcloc !33
  %.val2291 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2291, i64 %i.bl
  store i64 %.0.copyload.i2312, ptr %i.cb, align 1
  %.val2183 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.val2183, i64 %i.bp
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.0.copyload.i2313 = load i32, ptr %i.cd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2313) #13, !srcloc !14
  %.val2233 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2233, i64 %i.bl
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 %.0.copyload.i2313, ptr %i.cf, align 1
  %i.cg = icmp eq i32 %.01931, %.01926
  br i1 %i.cg, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.p, %bb.u
  %.11932 = phi i32 [ %i.ch, %bb.u ], [ %.01931, %bb.p ] ; 5 uses
  %i.ch = add i32 %.11932, -12                    ; 3 uses
  %i.ci = zext i32 %i.ch to i64                   ; 5 uses
  %.val2182 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.val2182, i64 %i.ci
  %.0.copyload.i2314 = load i32, ptr %i.cj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2314) #13, !srcloc !14
  %i.ck = icmp ult i32 %.0.copyload.i2308, %.0.copyload.i2314
  br i1 %i.ck, label %bb.u, label %bb.q

bb.q:                                             ; preds = %.preheader
  %i.cl = icmp ugt i32 %.0.copyload.i2308, %.0.copyload.i2314
  br i1 %i.cl, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val2181 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.val2181, i64 %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %.0.copyload.i2315 = load i32, ptr %i.cn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2315) #13, !srcloc !14
  %i.co = icmp ult i32 %.0.copyload.i2307, %.0.copyload.i2315
  br i1 %i.co, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = icmp ugt i32 %.0.copyload.i2307, %.0.copyload.i2315
  br i1 %i.cp, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val2180 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.val2180, i64 %i.ci
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.0.copyload.i2316 = load i32, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2316) #13, !srcloc !14
  %i.cs = and i32 %.0.copyload.i2316, 2147483647
  %.not2076 = icmp samesign ult i32 %i.bk, %i.cs
  br i1 %.not2076, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.r, %.preheader
  %.val2261 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.val2261, i64 %i.ci
  %.0.copyload.i2317 = load i64, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2317) #13, !srcloc !33
  %i.cu = zext i32 %.11932 to i64                 ; 2 uses
  %.val2290 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.val2290, i64 %i.cu
  store i64 %.0.copyload.i2317, ptr %i.cv, align 1
  %.val2179 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.val2179, i64 %i.ci
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.0.copyload.i2318 = load i32, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2318) #13, !srcloc !14
  %.val2232 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %.val2232, i64 %i.cu
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %.0.copyload.i2318, ptr %i.cz, align 1
  %.not2077 = icmp eq i32 %i.ch, %.01926
  br i1 %.not2077, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  %.31947 = phi i32 [ %.01926, %bb.p ], [ %.01926, %bb.u ], [ %.11932, %bb.s ], [ %.11932, %bb.q ], [ %.11932, %bb.t ]
  %i.da = zext i32 %.31947 to i64                 ; 3 uses
  %.val2231 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.db = getelementptr inbounds nuw i8, ptr %.val2231, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %.0.copyload.i2306, ptr %i.dc, align 1
  %.val2230 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %.val2230, i64 %i.da
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store i32 %.0.copyload.i2307, ptr %i.de, align 1
  %.val2229 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %.val2229, i64 %i.da
  store i32 %.0.copyload.i2308, ptr %i.df, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.n, %bb.l, %.loopexit
  %i.dg = add i32 %.21946, 12                     ; 2 uses
  %.not2078 = icmp eq i32 %i.dg, %.01942
  br i1 %.not2078, label %.loopexit2445, label %.preheader2444

4:                                                ; preds = %bb.j
  %.not2049 = icmp eq i32 %.21937, 0
  br i1 %.not2049, label %bb.w, label %bb.bx

bb.w:                                             ; preds = %4
  %i.dh = icmp eq i32 %.01942, %.01926
  br i1 %i.dh, label %.loopexit2445, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = add nsw i32 %i.p, -2                    ; 2 uses
  %i.dj = lshr i32 %i.di, 1                       ; 2 uses
  %i.dk = lshr i32 %i.di, 1
  %i.dl = zext nneg i32 %i.dk to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.ax, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ax ], [ %i.dl, %bb.x ] ; 3 uses
  %i.dm = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.dn = mul i32 %i.dm, 12
  %i.do = add i32 %i.dn, %.01926
  %i.dp = shl i32 %i.dm, 1                        ; 2 uses
  %i.dq = or disjoint i32 %i.dp, 1                ; 5 uses
  %i.dr = mul i32 %i.dq, 12
  %i.ds = add i32 %i.dr, %.01926                  ; 6 uses
  %i.dt = add i32 %i.dp, 2                        ; 2 uses
  %.not2067 = icmp sgt i32 %i.p, %i.dt
  br i1 %.not2067, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.du = zext i32 %i.ds to i64                   ; 6 uses
  %.val2178 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %.val2178, i64 %i.du
  %.0.copyload.i2319 = load i32, ptr %i.dv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2319) #13, !srcloc !14
  %.val2177 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %.val2177, i64 %i.du
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %.0.copyload.i2320 = load i32, ptr %i.dx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2320) #13, !srcloc !14
  %i.dy = icmp ult i32 %.0.copyload.i2319, %.0.copyload.i2320
  br i1 %i.dy, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dz = icmp ugt i32 %.0.copyload.i2319, %.0.copyload.i2320
  br i1 %i.dz, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val2176 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ea = getelementptr inbounds nuw i8, ptr %.val2176, i64 %i.du
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %.0.copyload.i2321 = load i32, ptr %i.eb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2321) #13, !srcloc !14
  %.val2175 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ec = getelementptr inbounds nuw i8, ptr %.val2175, i64 %i.du
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.0.copyload.i2322 = load i32, ptr %i.ed, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2322) #13, !srcloc !14
  %i.ee = icmp ult i32 %.0.copyload.i2321, %.0.copyload.i2322
  br i1 %i.ee, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ef = icmp ugt i32 %.0.copyload.i2321, %.0.copyload.i2322
  br i1 %i.ef, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val2174 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %.val2174, i64 %i.du
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.0.copyload.i2323 = load i32, ptr %i.eh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2323) #13, !srcloc !14
  %i.ei = and i32 %.0.copyload.i2323, 2147483647
  %.val2173 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %.val2173, i64 %i.du
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %.0.copyload.i2324 = load i32, ptr %i.ek, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2324) #13, !srcloc !14
  %i.el = and i32 %.0.copyload.i2324, 2147483647
  %i.em = icmp samesign ult i32 %i.ei, %i.el
  br i1 %i.em, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ab, %bb.z
  %i.en = add i32 %i.ds, 12
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.ae
  %.31938 = phi i32 [ %i.dq, %bb.ac ], [ %i.dt, %bb.ae ], [ %i.dq, %bb.y ], [ %i.dq, %bb.aa ], [ %i.dq, %bb.ad ] ; 2 uses
  %.31934 = phi i32 [ %i.ds, %bb.ac ], [ %i.en, %bb.ae ], [ %i.ds, %bb.y ], [ %i.ds, %bb.aa ], [ %i.ds, %bb.ad ] ; 2 uses
  %i.eo = zext i32 %.31934 to i64                 ; 6 uses
  %.val2172 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %.val2172, i64 %i.eo
  %.0.copyload.i2325 = load i32, ptr %i.ep, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2325) #13, !srcloc !14
  %i.eq = zext i32 %i.do to i64                   ; 4 uses
  %.val2171 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %.val2171, i64 %i.eq
  %.0.copyload.i2326 = load i32, ptr %i.er, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2326) #13, !srcloc !14
  %i.es = icmp ult i32 %.0.copyload.i2325, %.0.copyload.i2326
  br i1 %i.es, label %bb.ax, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.et = add nuw nsw i64 %i.eq, 8                ; 2 uses
  %.val2170 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.eu = getelementptr inbounds nuw i8, ptr %.val2170, i64 %i.et
  %.0.copyload.i2327 = load i32, ptr %i.eu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2327) #13, !srcloc !14
  %i.ev = and i32 %.0.copyload.i2327, 2147483647  ; 2 uses
  %.val2169 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ew = getelementptr inbounds nuw i8, ptr %.val2169, i64 %i.eq
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %.0.copyload.i2328 = load i32, ptr %i.ex, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2328) #13, !srcloc !14
  %i.ey = icmp ugt i32 %.0.copyload.i2325, %.0.copyload.i2326
  br i1 %i.ey, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val2168 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ez = getelementptr inbounds nuw i8, ptr %.val2168, i64 %i.eo
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %.0.copyload.i2329 = load i32, ptr %i.fa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2329) #13, !srcloc !14
  %i.fb = icmp ult i32 %.0.copyload.i2329, %.0.copyload.i2328
  br i1 %i.fb, label %bb.ax, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fc = icmp ugt i32 %.0.copyload.i2329, %.0.copyload.i2328
  br i1 %i.fc, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val2167 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fd = getelementptr inbounds nuw i8, ptr %.val2167, i64 %i.eo
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.0.copyload.i2330 = load i32, ptr %i.fe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2330) #13, !srcloc !14
  %i.ff = and i32 %.0.copyload.i2330, 2147483647
  %i.fg = icmp samesign ult i32 %i.ff, %i.ev
  br i1 %i.fg, label %bb.ax, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %.val2260 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fh = getelementptr inbounds nuw i8, ptr %.val2260, i64 %i.eo
  %.0.copyload.i2331 = load i64, ptr %i.fh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2331) #13, !srcloc !33
  %.val2289 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %.val2289, i64 %i.eq
  store i64 %.0.copyload.i2331, ptr %i.fi, align 1
  %.val2166 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %.val2166, i64 %i.eo
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.0.copyload.i2332 = load i32, ptr %i.fk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2332) #13, !srcloc !14
  %.val2228 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fl = getelementptr inbounds nuw i8, ptr %.val2228, i64 %i.et
  store i32 %.0.copyload.i2332, ptr %i.fl, align 1
  %i.fm = icmp sgt i32 %.31938, %i.dj
  br i1 %i.fm, label %.loopexit2450, label %.preheader2449

.preheader2449:                                   ; preds = %bb.ak, %bb.aw
  %.41939 = phi i32 [ %.51940, %bb.aw ], [ %.31938, %bb.ak ]
  %.4 = phi i32 [ %.5, %bb.aw ], [ %.31934, %bb.ak ] ; 4 uses
  %i.fn = shl i32 %.41939, 1                      ; 2 uses
  %i.fo = or disjoint i32 %i.fn, 1                ; 5 uses
  %i.fp = mul i32 %i.fo, 12
  %i.fq = add i32 %i.fp, %.01926                  ; 6 uses
  %i.fr = add i32 %i.fn, 2                        ; 2 uses
  %.not2068 = icmp sgt i32 %i.p, %i.fr
  br i1 %.not2068, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %.preheader2449
  %i.fs = zext i32 %i.fq to i64                   ; 6 uses
  %.val2165 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ft = getelementptr inbounds nuw i8, ptr %.val2165, i64 %i.fs
  %.0.copyload.i2333 = load i32, ptr %i.ft, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2333) #13, !srcloc !14
  %.val2164 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %.val2164, i64 %i.fs
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  %.0.copyload.i2334 = load i32, ptr %i.fv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2334) #13, !srcloc !14
  %i.fw = icmp ult i32 %.0.copyload.i2333, %.0.copyload.i2334
  br i1 %i.fw, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fx = icmp ugt i32 %.0.copyload.i2333, %.0.copyload.i2334
  br i1 %i.fx, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val2163 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %.val2163, i64 %i.fs
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %.0.copyload.i2335 = load i32, ptr %i.fz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2335) #13, !srcloc !14
  %.val2162 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ga = getelementptr inbounds nuw i8, ptr %.val2162, i64 %i.fs
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %.0.copyload.i2336 = load i32, ptr %i.gb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2336) #13, !srcloc !14
  %i.gc = icmp ult i32 %.0.copyload.i2335, %.0.copyload.i2336
  br i1 %i.gc, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gd = icmp ugt i32 %.0.copyload.i2335, %.0.copyload.i2336
  br i1 %i.gd, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val2161 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %.val2161, i64 %i.fs
end_hunk_1
begin_hunk_2_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
bb.bk:                                            ; preds = %bb.bi
  %i.ji = zext i32 %i.jb to i64                   ; 3 uses
  %.val2255 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jj = getelementptr inbounds nuw i8, ptr %.val2255, i64 %i.ji
  %.0.copyload.i2356 = load i64, ptr %i.jj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2356) #13, !srcloc !33
  %.val2284 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jk = getelementptr inbounds nuw i8, ptr %.val2284, i64 %i.is
  store i64 %.0.copyload.i2356, ptr %i.jk, align 1
  %i.jl = add i32 %.11943, -4
  %i.jm = zext i32 %i.jl to i64
  %.val2146 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jn = getelementptr inbounds nuw i8, ptr %.val2146, i64 %i.jm
  %.0.copyload.i2357 = load i32, ptr %i.jn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2357) #13, !srcloc !14
  %i.jo = add nuw nsw i64 %i.is, 8                ; 3 uses
  %.val2220 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jp = getelementptr inbounds nuw i8, ptr %.val2220, i64 %i.jo
  store i32 %.0.copyload.i2357, ptr %i.jp, align 1
  %.val2254 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jq = getelementptr inbounds nuw i8, ptr %.val2254, i64 %i.e
  %.0.copyload.i2358 = load i64, ptr %i.jq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2358) #13, !srcloc !33
  %.val2283 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jr = getelementptr inbounds nuw i8, ptr %.val2283, i64 %i.ji
  store i64 %.0.copyload.i2358, ptr %i.jr, align 1
  %.val2145 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.js = getelementptr inbounds nuw i8, ptr %.val2145, i64 %i.f
  %.0.copyload.i2359 = load i32, ptr %i.js, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2359) #13, !srcloc !14
  %.val2219 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jt = getelementptr inbounds nuw i8, ptr %.val2219, i64 %i.ji
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i32 %.0.copyload.i2359, ptr %i.ju, align 1
  %.reass.reass.reass = add i32 %.9, %invariant.op ; 2 uses
  %i.jv = icmp slt i32 %.reass.reass.reass, 13
  br i1 %i.jv, label %bb.bw, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.val2144 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jw = getelementptr inbounds nuw i8, ptr %.val2144, i64 %i.jo
  %.0.copyload.i2360 = load i32, ptr %i.jw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2360) #13, !srcloc !14
  %i.jx = and i32 %.0.copyload.i2360, 2147483647  ; 2 uses
  %.val2143 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jy = getelementptr inbounds nuw i8, ptr %.val2143, i64 %i.is
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %.0.copyload.i2361 = load i32, ptr %i.jz, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2361) #13, !srcloc !14
  %i.ka = udiv i32 %.reass.reass.reass, 12
  %i.kb = add nsw i32 %i.ka, -2                   ; 2 uses
  %i.kc = lshr i32 %i.kb, 1                       ; 2 uses
  %i.kd = mul i32 %i.kc, 12
  %i.ke = add i32 %i.kd, %.01926                  ; 2 uses
  %i.kf = zext i32 %i.ke to i64                   ; 6 uses
  %.val2142 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kg = getelementptr inbounds nuw i8, ptr %.val2142, i64 %i.kf
  %.0.copyload.i2362 = load i32, ptr %i.kg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2362) #13, !srcloc !14
  %.val2141 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %.val2141, i64 %i.is
  %.0.copyload.i2363 = load i32, ptr %i.kh, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2363) #13, !srcloc !14
  %i.ki = icmp ult i32 %.0.copyload.i2362, %.0.copyload.i2363
  br i1 %i.ki, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kj = icmp ult i32 %.0.copyload.i2363, %.0.copyload.i2362
  br i1 %i.kj, label %bb.bw, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.val2140 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %.val2140, i64 %i.kf
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %.0.copyload.i2364 = load i32, ptr %i.kl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2364) #13, !srcloc !14
  %i.km = icmp ult i32 %.0.copyload.i2364, %.0.copyload.i2361
  br i1 %i.km, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kn = icmp ult i32 %.0.copyload.i2361, %.0.copyload.i2364
  br i1 %i.kn, label %bb.bw, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val2139 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ko = getelementptr inbounds nuw i8, ptr %.val2139, i64 %i.kf
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %.0.copyload.i2365 = load i32, ptr %i.kp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2365) #13, !srcloc !14
  %i.kq = and i32 %.0.copyload.i2365, 2147483647
  %.not2074 = icmp samesign ult i32 %i.kq, %i.jx
  br i1 %.not2074, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp, %bb.bn, %bb.bl
  %.val2253 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kr = getelementptr inbounds nuw i8, ptr %.val2253, i64 %i.kf
  %.0.copyload.i2366 = load i64, ptr %i.kr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2366) #13, !srcloc !33
  %.val2282 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ks = getelementptr inbounds nuw i8, ptr %.val2282, i64 %i.is
  store i64 %.0.copyload.i2366, ptr %i.ks, align 1
  %.val2138 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kt = getelementptr inbounds nuw i8, ptr %.val2138, i64 %i.kf
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %.0.copyload.i2367 = load i32, ptr %i.ku, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2367) #13, !srcloc !14
  %.val2218 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kv = getelementptr inbounds nuw i8, ptr %.val2218, i64 %i.jo
  store i32 %.0.copyload.i2367, ptr %i.kv, align 1
  %i.kw = icmp ult i32 %i.kb, 2
  br i1 %i.kw, label %.loopexit2447, label %.preheader2446

.preheader2446:                                   ; preds = %bb.bq, %bb.bv
  %.61950 = phi i32 [ %i.la, %bb.bv ], [ %i.ke, %bb.bq ] ; 4 uses
  %.61941 = phi i32 [ %i.ky, %bb.bv ], [ %i.kc, %bb.bq ]
  %i.kx = add nsw i32 %.61941, -1                 ; 2 uses
  %i.ky = lshr i32 %i.kx, 1                       ; 2 uses
  %i.kz = mul i32 %i.ky, 12
  %i.la = add i32 %i.kz, %.01926                  ; 3 uses
  %i.lb = zext i32 %i.la to i64                   ; 5 uses
  %.val2137 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lc = getelementptr inbounds nuw i8, ptr %.val2137, i64 %i.lb
  %.0.copyload.i2368 = load i32, ptr %i.lc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2368) #13, !srcloc !14
  %i.ld = icmp ult i32 %.0.copyload.i2368, %.0.copyload.i2363
  br i1 %i.ld, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %.preheader2446
  %i.le = icmp ult i32 %.0.copyload.i2363, %.0.copyload.i2368
  br i1 %i.le, label %.loopexit2447.loopexit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.val2136 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lf = getelementptr inbounds nuw i8, ptr %.val2136, i64 %i.lb
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %.0.copyload.i2369 = load i32, ptr %i.lg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2369) #13, !srcloc !14
  %i.lh = icmp ult i32 %.0.copyload.i2369, %.0.copyload.i2361
  br i1 %i.lh, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.li = icmp ult i32 %.0.copyload.i2361, %.0.copyload.i2369
  br i1 %i.li, label %.loopexit2447.loopexit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.val2135 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lj = getelementptr inbounds nuw i8, ptr %.val2135, i64 %i.lb
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %.0.copyload.i2370 = load i32, ptr %i.lk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2370) #13, !srcloc !14
  %i.ll = and i32 %.0.copyload.i2370, 2147483647
  %i.lm = icmp samesign ult i32 %i.ll, %i.jx
  br i1 %i.lm, label %bb.bv, label %.loopexit2447.loopexit

bb.bv:                                            ; preds = %bb.bu, %bb.bs, %.preheader2446
  %.val2252 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ln = getelementptr inbounds nuw i8, ptr %.val2252, i64 %i.lb
  %.0.copyload.i2371 = load i64, ptr %i.ln, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2371) #13, !srcloc !33
  %i.lo = zext i32 %.61950 to i64                 ; 2 uses
  %.val2281 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lp = getelementptr inbounds nuw i8, ptr %.val2281, i64 %i.lo
  store i64 %.0.copyload.i2371, ptr %i.lp, align 1
  %.val2134 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lq = getelementptr inbounds nuw i8, ptr %.val2134, i64 %i.lb
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %.0.copyload.i2372 = load i32, ptr %i.lr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2372) #13, !srcloc !14
  %.val2217 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ls = getelementptr inbounds nuw i8, ptr %.val2217, i64 %i.lo
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store i32 %.0.copyload.i2372, ptr %i.lt, align 1
  %i.lu = icmp ugt i32 %i.kx, 1
  br i1 %i.lu, label %.preheader2446, label %.loopexit2447.loopexit

.loopexit2447.loopexit:                           ; preds = %bb.bv, %bb.br, %bb.bt, %bb.bu
  %.71951.ph = phi i32 [ %i.la, %bb.bv ], [ %.61950, %bb.bt ], [ %.61950, %bb.br ], [ %.61950, %bb.bu ]
  %.pre = zext i32 %.71951.ph to i64
  br label %.loopexit2447

.loopexit2447:                                    ; preds = %.loopexit2447.loopexit, %bb.bq
  %.pre-phi = phi i64 [ %.pre, %.loopexit2447.loopexit ], [ %i.kf, %bb.bq ] ; 3 uses
  %.val2216 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lv = getelementptr inbounds nuw i8, ptr %.val2216, i64 %.pre-phi
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store i32 %.0.copyload.i2360, ptr %i.lw, align 1
  %.val2215 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lx = getelementptr inbounds nuw i8, ptr %.val2215, i64 %.pre-phi
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  store i32 %.0.copyload.i2361, ptr %i.ly, align 1
  %.val2214 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lz = getelementptr inbounds nuw i8, ptr %.val2214, i64 %.pre-phi
  store i32 %.0.copyload.i2363, ptr %i.lz, align 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bp, %bb.bo, %bb.bm, %bb.bk, %.loopexit2447, %bb.bj
  %i.ma = add nsw i32 %.7, -1
  %i.mb = icmp sgt i32 %.7, 2
  br i1 %i.mb, label %bb.az, label %.loopexit2445

bb.bx:                                            ; preds = %4
  %i.mc = lshr i32 %i.p, 1
  %i.md = mul nuw nsw i32 %i.mc, 12
  %i.me = add i32 %i.md, %.01926                  ; 6 uses
  %i.mf = icmp samesign ugt i32 %i.o, 11988
  br i1 %i.mf, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.mg = lshr i32 %i.p, 2
  %i.mh = mul nuw nsw i32 %i.mg, 12               ; 2 uses
  %i.mi = add i32 %i.mh, %.01926
  %i.mj = add i32 %i.me, %i.mh
  %i.mk = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01926, i32 noundef %i.mi, i32 noundef %i.me, i32 noundef %i.mj, i32 noundef %i.j)
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.ml = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01926, i32 noundef %i.me, i32 noundef %i.j)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.0 = phi i32 [ %i.mk, %bb.by ], [ %i.ml, %bb.bz ] ; 4 uses
  %i.mm = add i32 %.21937, -1                     ; 4 uses
  %i.mn = zext i32 %.01926 to i64                 ; 7 uses
  %.val2133 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mo = getelementptr inbounds nuw i8, ptr %.val2133, i64 %i.mn
  %.0.copyload.i2373 = load i32, ptr %i.mo, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2373) #13, !srcloc !14
  %i.mp = zext i32 %i.me to i64                   ; 3 uses
  %.val2132 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mq = getelementptr inbounds nuw i8, ptr %.val2132, i64 %i.mp
  %.0.copyload.i2374 = load i32, ptr %i.mq, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2374) #13, !srcloc !14
  %i.mr = icmp ult i32 %.0.copyload.i2373, %.0.copyload.i2374
  br i1 %i.mr, label %.loopexit2464, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ms = add i32 %.01926, 8
  %i.mt = zext i32 %i.ms to i64
  %.val2131 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mu = getelementptr inbounds nuw i8, ptr %.val2131, i64 %i.mt
  %.0.copyload.i2375 = load i32, ptr %i.mu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2375) #13, !srcloc !14
  %i.mv = and i32 %.0.copyload.i2375, 2147483647  ; 3 uses
  %.val2130 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mw = getelementptr inbounds nuw i8, ptr %.val2130, i64 %i.mp
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %.0.copyload.i2376 = load i32, ptr %i.mx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2376) #13, !srcloc !14
  %i.my = and i32 %.0.copyload.i2376, 2147483647  ; 2 uses
  %.val2129 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mz = getelementptr inbounds nuw i8, ptr %.val2129, i64 %i.mp
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %.0.copyload.i2377 = load i32, ptr %i.na, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2377) #13, !srcloc !14
  %i.nb = add nuw nsw i64 %i.mn, 4                ; 2 uses
  %.val2128 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nc = getelementptr inbounds nuw i8, ptr %.val2128, i64 %i.nb
  %.0.copyload.i2378 = load i32, ptr %i.nc, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2378) #13, !srcloc !14
  %i.nd = icmp ugt i32 %.0.copyload.i2373, %.0.copyload.i2374
  br i1 %i.nd, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ne = icmp ult i32 %.0.copyload.i2378, %.0.copyload.i2377
  br i1 %i.ne, label %.loopexit2464, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nf = icmp ule i32 %.0.copyload.i2378, %.0.copyload.i2377
  %.not2050 = icmp samesign ult i32 %i.mv, %i.my
  %or.cond = select i1 %i.nf, i1 %.not2050, i1 false
  br i1 %or.cond, label %.loopexit2464, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cb
  %i.ng = icmp eq i32 %i.i, %.01926
  br i1 %i.ng, label %.loopexit2460, label %.preheader2459

.preheader2459:                                   ; preds = %bb.ce, %bb.cj
  %.81952 = phi i32 [ %i.nv, %bb.cj ], [ %i.i, %bb.ce ] ; 5 uses
  %.01927 = phi i32 [ %.81952, %bb.cj ], [ %i.j, %bb.ce ]
  %i.nh = zext i32 %.81952 to i64                 ; 4 uses
  %.val2127 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ni = getelementptr inbounds nuw i8, ptr %.val2127, i64 %i.nh
  %.0.copyload.i2379 = load i32, ptr %i.ni, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2379) #13, !srcloc !14
  %i.nj = icmp ult i32 %.0.copyload.i2379, %.0.copyload.i2374
  br i1 %i.nj, label %bb.ck, label %bb.cf

bb.cf:                                            ; preds = %.preheader2459
  %i.nk = icmp ugt i32 %.0.copyload.i2379, %.0.copyload.i2374
  br i1 %i.nk, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nl = add i32 %.01927, -12
  %i.nm = zext i32 %i.nl to i64                   ; 2 uses
  %.val2126 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nn = getelementptr inbounds nuw i8, ptr %.val2126, i64 %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  %.0.copyload.i2380 = load i32, ptr %i.no, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2380) #13, !srcloc !14
  %i.np = icmp ult i32 %.0.copyload.i2380, %.0.copyload.i2377
  br i1 %i.np, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nq = icmp ugt i32 %.0.copyload.i2380, %.0.copyload.i2377
  br i1 %i.nq, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.val2125 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nr = getelementptr inbounds nuw i8, ptr %.val2125, i64 %i.nm
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %.0.copyload.i2381 = load i32, ptr %i.ns, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2381) #13, !srcloc !14
  %i.nt = and i32 %.0.copyload.i2381, 2147483647
  %i.nu = icmp samesign ult i32 %i.nt, %i.my
  br i1 %i.nu, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cf
  %i.nv = add i32 %.81952, -12                    ; 2 uses
  %.not2051 = icmp eq i32 %i.nv, %.01926
  br i1 %.not2051, label %.loopexit2460, label %.preheader2459

bb.ck:                                            ; preds = %bb.ci, %bb.cg, %.preheader2459
  %i.nw = add nuw nsw i64 %i.mn, 8                ; 2 uses
  %.val2124 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nx = getelementptr inbounds nuw i8, ptr %.val2124, i64 %i.nw
  %.0.copyload.i2382 = load i32, ptr %i.nx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2382) #13, !srcloc !14
  %.val2213 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ny = getelementptr inbounds nuw i8, ptr %.val2213, i64 %i.f
  store i32 %.0.copyload.i2382, ptr %i.ny, align 1
  %.val2251 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nz = getelementptr inbounds nuw i8, ptr %.val2251, i64 %i.mn
  %.0.copyload.i2383 = load i64, ptr %i.nz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2383) #13, !srcloc !33
  %.val2280 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.oa = getelementptr inbounds nuw i8, ptr %.val2280, i64 %i.e
  store i64 %.0.copyload.i2383, ptr %i.oa, align 1
  %i.ob = add i32 %.81952, 8
  %i.oc = zext i32 %i.ob to i64
  %.val2123 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.od = getelementptr inbounds nuw i8, ptr %.val2123, i64 %i.oc
  %.0.copyload.i2384 = load i32, ptr %i.od, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2384) #13, !srcloc !14
  %.val2212 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.oe = getelementptr inbounds nuw i8, ptr %.val2212, i64 %i.nw
  store i32 %.0.copyload.i2384, ptr %i.oe, align 1
  %.val2250 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.of = getelementptr inbounds nuw i8, ptr %.val2250, i64 %i.nh
  %.0.copyload.i2385 = load i64, ptr %i.of, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2385) #13, !srcloc !33
  %.val2279 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.og = getelementptr inbounds nuw i8, ptr %.val2279, i64 %i.mn
  store i64 %.0.copyload.i2385, ptr %i.og, align 1
  %.val2122 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.oh = getelementptr inbounds nuw i8, ptr %.val2122, i64 %i.f
  %.0.copyload.i2386 = load i32, ptr %i.oh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2386) #13, !srcloc !14
  %.val2211 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.oi = getelementptr inbounds nuw i8, ptr %.val2211, i64 %i.nh
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store i32 %.0.copyload.i2386, ptr %i.oj, align 1
  %.val2249 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ok = getelementptr inbounds nuw i8, ptr %.val2249, i64 %i.e
  %.0.copyload.i2387 = load i64, ptr %i.ok, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2387) #13, !srcloc !33
  %.val2278 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ol = getelementptr inbounds nuw i8, ptr %.val2278, i64 %i.nh
  store i64 %.0.copyload.i2387, ptr %i.ol, align 1
  %i.om = add nuw nsw i32 %.0, 1
  br label %.loopexit2464

.loopexit2464:                                    ; preds = %bb.cd, %bb.cc, %bb.ca, %bb.ck
  %.11928 = phi i32 [ %.81952, %bb.ck ], [ %i.j, %bb.ca ], [ %i.j, %bb.cc ], [ %i.j, %bb.cd ] ; 2 uses
  %.01920 = phi i32 [ %i.om, %bb.ck ], [ %.0, %bb.ca ], [ %.0, %bb.cc ], [ %.0, %bb.cd ] ; 2 uses
  %i.on = add i32 %.01926, 12                     ; 3 uses
  %.not2058 = icmp ult i32 %i.on, %.11928
  br i1 %.not2058, label %.preheader2461, label %.loopexit2462

.preheader2461:                                   ; preds = %.loopexit2464, %bb.cw
  %.10 = phi i32 [ %i.qs, %bb.cw ], [ %i.on, %.loopexit2464 ]
  %.21929 = phi i32 [ %.11923, %bb.cw ], [ %.11928, %.loopexit2464 ] ; 2 uses
  %.01924 = phi i32 [ %i.qr, %bb.cw ], [ %i.me, %.loopexit2464 ] ; 4 uses
  %.1 = phi i32 [ %i.qt, %bb.cw ], [ %.01920, %.loopexit2464 ] ; 2 uses
  %i.oo = zext i32 %.01924 to i64                 ; 3 uses
  %.val2121 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.op = getelementptr inbounds nuw i8, ptr %.val2121, i64 %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %.0.copyload.i2388 = load i32, ptr %i.oq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2388) #13, !srcloc !14
  %i.or = and i32 %.0.copyload.i2388, 2147483647  ; 2 uses
  %.val2120 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.os = getelementptr inbounds nuw i8, ptr %.val2120, i64 %i.oo
  %.0.copyload.i2389 = load i32, ptr %i.os, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2389) #13, !srcloc !14
  %.val2119 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ot = getelementptr inbounds nuw i8, ptr %.val2119, i64 %i.oo
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %.0.copyload.i2390 = load i32, ptr %i.ou, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2390) #13, !srcloc !14
  br label %bb.cl

end_hunk_2
begin_hunk_3_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  store i32 %.0.copyload.i2424, ptr %i.tq, align 1
  %.val2241 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tr = getelementptr inbounds nuw i8, ptr %.val2241, i64 %i.k
  %.0.copyload.i2425 = load i64, ptr %i.tr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2425) #13, !srcloc !33
  %.val2270 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ts = getelementptr inbounds nuw i8, ptr %.val2270, i64 %i.sz
  store i64 %.0.copyload.i2425, ptr %i.ts, align 1
  %.val2091 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tt = getelementptr inbounds nuw i8, ptr %.val2091, i64 %i.f
  %.0.copyload.i2426 = load i32, ptr %i.tt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2426) #13, !srcloc !14
  %.val2202 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tu = getelementptr inbounds nuw i8, ptr %.val2202, i64 %i.n
  store i32 %.0.copyload.i2426, ptr %i.tu, align 1
  %.val2240 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tv = getelementptr inbounds nuw i8, ptr %.val2240, i64 %i.e
  %.0.copyload.i2427 = load i64, ptr %i.tv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2427) #13, !srcloc !33
  %.val2269 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tw = getelementptr inbounds nuw i8, ptr %.val2269, i64 %i.k
  store i64 %.0.copyload.i2427, ptr %i.tw, align 1
  %i.tx = add i32 %.101954, 12
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dt, %bb.ds, %bb.dq
  %i.ty = add i32 %.101954, 12                    ; 2 uses
  %.not2053 = icmp eq i32 %i.ty, %i.j
  br i1 %.not2053, label %.loopexit2445, label %.preheader2457

bb.dw:                                            ; preds = %bb.do, %bb.dm, %.loopexit2460, %bb.du
  %.111955 = phi i32 [ %i.so, %.loopexit2460 ], [ %i.tx, %bb.du ], [ %i.so, %bb.dm ], [ %i.so, %bb.do ] ; 2 uses
  %i.tz = icmp eq i32 %i.j, %.111955
  br i1 %i.tz, label %.loopexit2445, label %.preheader2455

.preheader2455:                                   ; preds = %bb.dw, %bb.ef
  %.121956 = phi i32 [ %i.vw, %bb.ef ], [ %.111955, %bb.dw ] ; 3 uses
  %.13 = phi i32 [ %i.us, %bb.ef ], [ %i.j, %bb.dw ]
  %.val2090 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ua = getelementptr inbounds nuw i8, ptr %.val2090, i64 %i.mn
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %.0.copyload.i2428 = load i32, ptr %i.ub, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2428) #13, !srcloc !14
  %i.uc = and i32 %.0.copyload.i2428, 2147483647  ; 2 uses
  %.val2089 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ud = getelementptr inbounds nuw i8, ptr %.val2089, i64 %i.nb
  %.0.copyload.i2429 = load i32, ptr %i.ud, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2429) #13, !srcloc !14
  %.val2088 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ue = getelementptr inbounds nuw i8, ptr %.val2088, i64 %i.mn
  %.0.copyload.i2430 = load i32, ptr %i.ue, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2430) #13, !srcloc !14
  %i.uf = zext i32 %.121956 to i64
  %.val2087 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ug = getelementptr inbounds nuw i8, ptr %.val2087, i64 %i.uf
  %.0.copyload.i2431 = load i32, ptr %i.ug, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2431) #13, !srcloc !14
  %i.uh = icmp ult i32 %.0.copyload.i2430, %.0.copyload.i2431
  br i1 %i.uh, label %.loopexit2452, label %.preheader2451

.preheader2451:                                   ; preds = %.preheader2455, %.preheader2451._crit_edge
  %.131957 = phi i32 [ %i.up, %.preheader2451._crit_edge ], [ %.121956, %.preheader2455 ] ; 4 uses
  %.01921 = phi i32 [ %.0.copyload.i2434, %.preheader2451._crit_edge ], [ %.0.copyload.i2431, %.preheader2455 ]
  %i.ui = icmp ugt i32 %.0.copyload.i2430, %.01921
  %.pre2625 = zext i32 %.131957 to i64            ; 3 uses
  br i1 %i.ui, label %.preheader2451._crit_edge, label %bb.dx

bb.dx:                                            ; preds = %.preheader2451
  %.val2086 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.uj = getelementptr inbounds nuw i8, ptr %.val2086, i64 %.pre2625
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %.0.copyload.i2432 = load i32, ptr %i.uk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2432) #13, !srcloc !14
  %.not2054 = icmp ugt i32 %.0.copyload.i2432, %.0.copyload.i2429
  br i1 %.not2054, label %.loopexit2452, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ul = icmp ult i32 %.0.copyload.i2432, %.0.copyload.i2429
  br i1 %i.ul, label %.preheader2451._crit_edge, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.val2085 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.um = getelementptr inbounds nuw i8, ptr %.val2085, i64 %.pre2625
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %.0.copyload.i2433 = load i32, ptr %i.un, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2433) #13, !srcloc !14
  %i.uo = and i32 %.0.copyload.i2433, 2147483647
  %.not2055 = icmp samesign ult i32 %i.uc, %i.uo
  br i1 %.not2055, label %.loopexit2452, label %.preheader2451._crit_edge

.preheader2451._crit_edge:                        ; preds = %.preheader2451, %bb.dz, %bb.dy
  %i.up = add i32 %.131957, 12                    ; 2 uses
  %.val2084 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.uq = getelementptr inbounds nuw i8, ptr %.val2084, i64 %.pre2625
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 12
  %.0.copyload.i2434 = load i32, ptr %i.ur, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2434) #13, !srcloc !14
  %.not2056 = icmp ult i32 %.0.copyload.i2430, %.0.copyload.i2434
  br i1 %.not2056, label %.loopexit2452, label %.preheader2451

.loopexit2452:                                    ; preds = %bb.dx, %bb.dz, %.preheader2451._crit_edge, %.preheader2455
  %.141958 = phi i32 [ %.121956, %.preheader2455 ], [ %.131957, %bb.dx ], [ %.131957, %bb.dz ], [ %i.up, %.preheader2451._crit_edge ] ; 5 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.loopexit2452
  %.14 = phi i32 [ %.13, %.loopexit2452 ], [ %i.us, %.backedge.backedge ]
  %i.us = add i32 %.14, -12                       ; 4 uses
  %i.ut = zext i32 %i.us to i64                   ; 6 uses
  %.val2083 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.uu = getelementptr inbounds nuw i8, ptr %.val2083, i64 %i.ut
  %.0.copyload.i2435 = load i32, ptr %i.uu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2435) #13, !srcloc !14
  %i.uv = icmp ult i32 %.0.copyload.i2430, %.0.copyload.i2435
  br i1 %i.uv, label %.backedge.backedge, label %bb.ea

.backedge.backedge:                               ; preds = %.backedge, %bb.eb, %bb.ed
  br label %.backedge

bb.ea:                                            ; preds = %.backedge
  %i.uw = icmp ult i32 %.0.copyload.i2435, %.0.copyload.i2430
  br i1 %i.uw, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.val2082 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ux = getelementptr inbounds nuw i8, ptr %.val2082, i64 %i.ut
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %.0.copyload.i2436 = load i32, ptr %i.uy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2436) #13, !srcloc !14
  %i.uz = icmp ult i32 %.0.copyload.i2429, %.0.copyload.i2436
  br i1 %i.uz, label %.backedge.backedge, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.va = icmp ult i32 %.0.copyload.i2436, %.0.copyload.i2429
  br i1 %i.va, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.val2081 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vb = getelementptr inbounds nuw i8, ptr %.val2081, i64 %i.ut
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %.0.copyload.i2437 = load i32, ptr %i.vc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2437) #13, !srcloc !14
  %i.vd = and i32 %.0.copyload.i2437, 2147483647
  %i.ve = icmp samesign ult i32 %i.uc, %i.vd
  br i1 %i.ve, label %.backedge.backedge, label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.ea
  %.not2057 = icmp ult i32 %.141958, %i.us
  br i1 %.not2057, label %bb.ef, label %.loopexit2456.backedge

bb.ef:                                            ; preds = %bb.ee
  %i.vf = add i32 %.141958, 8
  %i.vg = zext i32 %i.vf to i64
  %.val2080 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vh = getelementptr inbounds nuw i8, ptr %.val2080, i64 %i.vg
  %.0.copyload.i2438 = load i32, ptr %i.vh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2438) #13, !srcloc !14
  %.val2201 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vi = getelementptr inbounds nuw i8, ptr %.val2201, i64 %i.f
  store i32 %.0.copyload.i2438, ptr %i.vi, align 1
  %i.vj = zext i32 %.141958 to i64                ; 3 uses
  %.val2239 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vk = getelementptr inbounds nuw i8, ptr %.val2239, i64 %i.vj
  %.0.copyload.i2439 = load i64, ptr %i.vk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2439) #13, !srcloc !33
  %.val2268 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vl = getelementptr inbounds nuw i8, ptr %.val2268, i64 %i.e
  store i64 %.0.copyload.i2439, ptr %i.vl, align 1
  %i.vm = add nuw nsw i64 %i.ut, 8                ; 2 uses
  %.val2079 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vn = getelementptr inbounds nuw i8, ptr %.val2079, i64 %i.vm
  %.0.copyload.i2440 = load i32, ptr %i.vn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2440) #13, !srcloc !14
  %.val2200 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vo = getelementptr inbounds nuw i8, ptr %.val2200, i64 %i.vj
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  store i32 %.0.copyload.i2440, ptr %i.vp, align 1
  %.val2238 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vq = getelementptr inbounds nuw i8, ptr %.val2238, i64 %i.ut
  %.0.copyload.i2441 = load i64, ptr %i.vq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2441) #13, !srcloc !33
  %.val2267 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vr = getelementptr inbounds nuw i8, ptr %.val2267, i64 %i.vj
  store i64 %.0.copyload.i2441, ptr %i.vr, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vs = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %.0.copyload.i2442 = load i32, ptr %i.vs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2442) #13, !srcloc !14
  %.val2199 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vt = getelementptr inbounds nuw i8, ptr %.val2199, i64 %i.vm
  store i32 %.0.copyload.i2442, ptr %i.vt, align 1
  %.val2237 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vu = getelementptr inbounds nuw i8, ptr %.val2237, i64 %i.e
  %.0.copyload.i2443 = load i64, ptr %i.vu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2443) #13, !srcloc !33
  %.val2266 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vv = getelementptr inbounds nuw i8, ptr %.val2266, i64 %i.ut
  store i64 %.0.copyload.i2443, ptr %i.vv, align 1
  %i.vw = add i32 %.141958, 12
  br label %.preheader2455

.loopexit2445:                                    ; preds = %bb.df, %bb.dw, %bb.dp, %.loopexit2456, %.loopexit2456, %bb.dv, %bb.bw, %bb.v, %bb.w, %bb.k, %bb.f, %bb.e, %bb.c, %bb.dk, %bb.i, %bb.h, %bb.g
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 6) i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x29(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 54 uses
  %i.f = zext i32 %4 to i64                       ; 6 uses
  %.val337 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val337, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.h = zext i32 %3 to i64                       ; 10 uses
  %.val336 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.h
  %.0.copyload.i365 = load i32, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i365) #13, !srcloc !14
  %i.j = icmp ult i32 %.0.copyload.i, %.0.copyload.i365
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i32 %.0.copyload.i, %.0.copyload.i365
  br i1 %i.k, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val335 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.0.copyload.i366 = load i32, ptr %i.m, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i366) #13, !srcloc !14
  %.val334 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val334, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.0.copyload.i367 = load i32, ptr %i.o, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i367) #13, !srcloc !14
  %i.p = icmp ult i32 %.0.copyload.i366, %.0.copyload.i367
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i32 %.0.copyload.i366, %.0.copyload.i367
  br i1 %i.q, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val333 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val333, i64 %i.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.0.copyload.i368 = load i32, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i368) #13, !srcloc !14
  %i.t = and i32 %.0.copyload.i368, 2147483647
  %.val332 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i369 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i369) #13, !srcloc !14
  %i.w = and i32 %.0.copyload.i369, 2147483647
  %i.x = icmp samesign ult i32 %i.t, %i.w
  br i1 %i.x, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.y = add nuw nsw i64 %i.h, 8                  ; 5 uses
  %.val331 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val331, i64 %i.y
  %.0.copyload.i370 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i370) #13, !srcloc !14
  %i.aa = zext i32 %i.c to i64                    ; 7 uses
  %i.ab = add nuw nsw i64 %i.aa, 8                ; 6 uses
  %.val346 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val346, i64 %i.ab
  store i32 %.0.copyload.i370, ptr %i.ac, align 1
  %.val355 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.val355, i64 %i.h
  %.0.copyload.i371 = load i64, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i371) #13, !srcloc !33
  %.val364 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.val364, i64 %i.aa
  store i64 %.0.copyload.i371, ptr %i.ae, align 1
  %i.af = add nuw nsw i64 %i.f, 8                 ; 2 uses
  %.val330 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val330, i64 %i.af
  %.0.copyload.i372 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i372) #13, !srcloc !14
  %.val345 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.val345, i64 %i.y
  store i32 %.0.copyload.i372, ptr %i.ah, align 1
  %.val354 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val354, i64 %i.f
  %.0.copyload.i373 = load i64, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i373) #13, !srcloc !33
  %.val363 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val363, i64 %i.h
  store i64 %.0.copyload.i373, ptr %i.aj, align 1
  %.val329 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val329, i64 %i.ab
  %.0.copyload.i374 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i374) #13, !srcloc !14
  %.val344 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.val344, i64 %i.af
  store i32 %.0.copyload.i374, ptr %i.al, align 1
  %.val353 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val353, i64 %i.aa
  %.0.copyload.i375 = load i64, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i375) #13, !srcloc !33
  %.val362 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.val362, i64 %i.f
  store i64 %.0.copyload.i375, ptr %i.an, align 1
  %.val328 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val328, i64 %i.h
  %.0.copyload.i376 = load i32, ptr %i.ao, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i376) #13, !srcloc !14
  %i.ap = zext i32 %2 to i64                      ; 10 uses
  %.val327 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val327, i64 %i.ap
  %.0.copyload.i377 = load i32, ptr %i.aq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i377) #13, !srcloc !14
  %i.ar = icmp ult i32 %.0.copyload.i376, %.0.copyload.i377
  br i1 %i.ar, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = add nuw nsw i32 %i.d, 1                 ; 3 uses
  %i.at = icmp ugt i32 %.0.copyload.i376, %.0.copyload.i377
  br i1 %i.at, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val326 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val326, i64 %i.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.0.copyload.i378 = load i32, ptr %i.av, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i378) #13, !srcloc !14
  %.val325 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val325, i64 %i.ap
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.0.copyload.i379 = load i32, ptr %i.ax, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i379) #13, !srcloc !14
  %i.ay = icmp ult i32 %.0.copyload.i378, %.0.copyload.i379
  br i1 %i.ay, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = icmp ugt i32 %.0.copyload.i378, %.0.copyload.i379
  br i1 %i.az, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val324 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.val324, i64 %i.y
  %.0.copyload.i380 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i380) #13, !srcloc !14
  %i.bb = and i32 %.0.copyload.i380, 2147483647
  %.val323 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.val323, i64 %i.ap
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.0.copyload.i381 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i381) #13, !srcloc !14
  %i.be = and i32 %.0.copyload.i381, 2147483647
  %.not = icmp samesign ult i32 %i.bb, %i.be
  br i1 %.not, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  %i.bf = add nuw nsw i64 %i.ap, 8                ; 5 uses
  %.val322 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val322, i64 %i.bf
  %.0.copyload.i382 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i382) #13, !srcloc !14
  %.val343 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.val343, i64 %i.ab
  store i32 %.0.copyload.i382, ptr %i.bh, align 1
  %.val352 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val352, i64 %i.ap
  %.0.copyload.i383 = load i64, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i383) #13, !srcloc !33
  %.val361 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.val361, i64 %i.aa
  store i64 %.0.copyload.i383, ptr %i.bj, align 1
  %.val321 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val321, i64 %i.y
  %.0.copyload.i384 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i384) #13, !srcloc !14
  %.val342 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val342, i64 %i.bf
  store i32 %.0.copyload.i384, ptr %i.bl, align 1
  %.val351 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val351, i64 %i.h
  %.0.copyload.i385 = load i64, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i385) #13, !srcloc !33
  %.val360 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val360, i64 %i.ap
  store i64 %.0.copyload.i385, ptr %i.bn, align 1
  %.val320 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val320, i64 %i.ab
  %.0.copyload.i386 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i386) #13, !srcloc !14
  %.val341 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.val341, i64 %i.y
  store i32 %.0.copyload.i386, ptr %i.bp, align 1
  %.val350 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.val350, i64 %i.aa
end_hunk_3
begin_hunk_4_@w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x29:bb.a
  %i.bw = add nuw nsw i32 %i.d, 2                 ; 3 uses
  %i.bx = icmp ugt i32 %.0.copyload.i504, %.0.copyload.i505
  br i1 %i.bx, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val424 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.val424, i64 %i.ap
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %.0.copyload.i506 = load i32, ptr %i.bz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i506) #13, !srcloc !14
  %.val423 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.val423, i64 %i.bt
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %.0.copyload.i507 = load i32, ptr %i.cb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i507) #13, !srcloc !14
  %i.cc = icmp ult i32 %.0.copyload.i506, %.0.copyload.i507
  br i1 %i.cc, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = icmp ugt i32 %.0.copyload.i506, %.0.copyload.i507
  br i1 %i.cd, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val422 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.val422, i64 %i.bf
  %.0.copyload.i508 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i508) #13, !srcloc !14
  %i.cf = and i32 %.0.copyload.i508, 2147483647
  %.val421 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.bt
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.0.copyload.i509 = load i32, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i509) #13, !srcloc !14
  %i.ci = and i32 %.0.copyload.i509, 2147483647
  %.not408 = icmp samesign ult i32 %i.cf, %i.ci
  br i1 %.not408, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.k
  %i.cj = add nuw nsw i64 %i.bt, 8                ; 5 uses
  %.val420 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.val420, i64 %i.cj
  %.0.copyload.i510 = load i32, ptr %i.ck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i510) #13, !srcloc !14
  %.val450 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.val450, i64 %i.ab
  store i32 %.0.copyload.i510, ptr %i.cl, align 1
  %.val462 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.val462, i64 %i.bt
  %.0.copyload.i511 = load i64, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i511) #13, !srcloc !33
  %.val474 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.val474, i64 %i.aa
  store i64 %.0.copyload.i511, ptr %i.cn, align 1
  %.val419 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %.val419, i64 %i.bf
  %.0.copyload.i512 = load i32, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i512) #13, !srcloc !14
  %.val449 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.val449, i64 %i.cj
  store i32 %.0.copyload.i512, ptr %i.cp, align 1
  %.val461 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.val461, i64 %i.ap
  %.0.copyload.i513 = load i64, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i513) #13, !srcloc !33
  %.val473 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %.val473, i64 %i.bt
  store i64 %.0.copyload.i513, ptr %i.cr, align 1
  %.val418 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.val418, i64 %i.ab
  %.0.copyload.i514 = load i32, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i514) #13, !srcloc !14
  %.val448 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.val448, i64 %i.bf
  store i32 %.0.copyload.i514, ptr %i.ct, align 1
  %.val460 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.val460, i64 %i.aa
  %.0.copyload.i515 = load i64, ptr %i.cu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i515) #13, !srcloc !33
  %.val472 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.val472, i64 %i.ap
  store i64 %.0.copyload.i515, ptr %i.cv, align 1
  %.val417 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.bt
  %.0.copyload.i516 = load i32, ptr %i.cw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i516) #13, !srcloc !14
  %i.cx = zext i32 %1 to i64                      ; 6 uses
  %.val416 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.cx
  %.0.copyload.i517 = load i32, ptr %i.cy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i517) #13, !srcloc !14
  %i.cz = icmp ult i32 %.0.copyload.i516, %.0.copyload.i517
  br i1 %i.cz, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = add nuw nsw i32 %i.d, 3                 ; 3 uses
  %i.db = icmp ugt i32 %.0.copyload.i516, %.0.copyload.i517
  br i1 %i.db, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val415 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.bt
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %.0.copyload.i518 = load i32, ptr %i.dd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i518) #13, !srcloc !14
  %.val414 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.cx
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %.0.copyload.i519 = load i32, ptr %i.df, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i519) #13, !srcloc !14
  %i.dg = icmp ult i32 %.0.copyload.i518, %.0.copyload.i519
  br i1 %i.dg, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = icmp ugt i32 %.0.copyload.i518, %.0.copyload.i519
  br i1 %i.dh, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val413 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.cj
  %.0.copyload.i520 = load i32, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i520) #13, !srcloc !14
  %i.dj = and i32 %.0.copyload.i520, 2147483647
  %.val412 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.cx
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.0.copyload.i521 = load i32, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i521) #13, !srcloc !14
  %i.dm = and i32 %.0.copyload.i521, 2147483647
  %.not409 = icmp samesign ult i32 %i.dj, %i.dm
  br i1 %.not409, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.p
  %i.dn = add nuw nsw i64 %i.cx, 8                ; 2 uses
  %.val411 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.dn
  %.0.copyload.i522 = load i32, ptr %i.do, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i522) #13, !srcloc !14
  %.val447 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dp = getelementptr inbounds nuw i8, ptr %.val447, i64 %i.ab
  store i32 %.0.copyload.i522, ptr %i.dp, align 1
  %.val459 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %.val459, i64 %i.cx
  %.0.copyload.i523 = load i64, ptr %i.dq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i523) #13, !srcloc !33
  %.val471 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dr = getelementptr inbounds nuw i8, ptr %.val471, i64 %i.aa
  store i64 %.0.copyload.i523, ptr %i.dr, align 1
  %.val410 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ds = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.cj
  %.0.copyload.i524 = load i32, ptr %i.ds, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i524) #13, !srcloc !14
  %.val446 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %.val446, i64 %i.dn
  store i32 %.0.copyload.i524, ptr %i.dt, align 1
  %.val458 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %.val458, i64 %i.bt
  %.0.copyload.i525 = load i64, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i525) #13, !srcloc !33
  %.val470 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %.val470, i64 %i.cx
  store i64 %.0.copyload.i525, ptr %i.dv, align 1
  %.val = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ab
  %.0.copyload.i526 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i526) #13, !srcloc !14
  %.val445 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dx = getelementptr inbounds nuw i8, ptr %.val445, i64 %i.cj
  store i32 %.0.copyload.i526, ptr %i.dx, align 1
  %.val457 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dy = getelementptr inbounds nuw i8, ptr %.val457, i64 %i.aa
  %.0.copyload.i527 = load i64, ptr %i.dy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i527) #13, !srcloc !33
  %.val469 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dz = getelementptr inbounds nuw i8, ptr %.val469, i64 %i.bt
  store i64 %.0.copyload.i527, ptr %i.dz, align 1
  %i.ea = add nuw nsw i32 %i.d, 4
  br label %bb.v

bb.v:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g, %bb.u
  %.0 = phi i32 [ %i.ea, %bb.u ], [ %i.da, %bb.q ], [ %i.da, %bb.s ], [ %i.da, %bb.t ], [ %i.bw, %bb.l ], [ %i.bw, %bb.n ], [ %i.bw, %bb.o ], [ %i.as, %bb.g ], [ %i.as, %bb.i ], [ %i.as, %bb.j ], [ %i.d, %bb.d ], [ %i.d, %bb.b ], [ %i.d, %bb.e ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret i32 %.0
}

declare i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 190 uses
  %i.e = zext i32 %i.c to i64                     ; 16 uses
  %i.f = add nuw nsw i64 %i.e, 8                  ; 15 uses
  br label %.backedge2790

.backedge2790:                                    ; preds = %.backedge2790.backedge, %bb.a
  %.02311 = phi i32 [ %1, %bb.a ], [ %.02294, %.backedge2790.backedge ]
  %.02309 = phi i32 [ %2, %bb.a ], [ %.14, %.backedge2790.backedge ] ; 12 uses
  %.02306 = phi i32 [ %3, %bb.a ], [ %i.nq, %.backedge2790.backedge ]
  %i.g = add i32 %.02309, -4
  %i.h = add i32 %.02309, -12
  %i.i = add i32 %.02309, -32                     ; 2 uses
  %i.j = add i32 %.02309, -16                     ; 14 uses
  %i.k = zext i32 %i.g to i64
  %i.l = zext i32 %i.h to i64
  %i.m = zext i32 %i.j to i64                     ; 7 uses
  %i.n = add nuw nsw i64 %i.m, 8                  ; 4 uses
  br label %.loopexit2781

.loopexit2781:                                    ; preds = %.loopexit2781.backedge, %.backedge2790
  %.22308 = phi i32 [ %.02306, %.backedge2790 ], [ %i.nq, %.loopexit2781.backedge ] ; 2 uses
  %.02294 = phi i32 [ %.02311, %.backedge2790 ], [ %.02294.be, %.loopexit2781.backedge ] ; 46 uses
  %i.o = sub i32 %.02309, %.02294                 ; 4 uses
  %i.p = ashr i32 %i.o, 4                         ; 6 uses
  switch i32 %i.p, label %bb.k [
    i32 0, label %.loopexit2772
    i32 1, label %.loopexit2772
    i32 2, label %bb.b
    i32 3, label %bb.df
    i32 4, label %bb.i
    i32 5, label %bb.j
  ]

bb.b:                                             ; preds = %.loopexit2781
  %.val2494 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val2494, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.0.copyload.i = load i32, ptr %i.r, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.s = zext i32 %.02294 to i64                  ; 5 uses
  %.val2493 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val2493, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %.0.copyload.i2650 = load i32, ptr %i.u, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2650) #13, !srcloc !14
  %i.v = icmp ult i32 %.0.copyload.i, %.0.copyload.i2650
  br i1 %i.v, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = icmp ugt i32 %.0.copyload.i, %.0.copyload.i2650
  br i1 %i.w, label %.loopexit2772, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val2588 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val2588, i64 %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.0.copyload.i2651 = load i64, ptr %i.y, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2651) #13, !srcloc !33
  %i.z = lshr i64 %.0.copyload.i2651, 32          ; 2 uses
  %.val2587 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2587, i64 %i.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.0.copyload.i2652 = load i64, ptr %i.ab, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2652) #13, !srcloc !33
  %i.ac = lshr i64 %.0.copyload.i2652, 32         ; 2 uses
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.ac) ; 2 uses
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = trunc i64 %.0.copyload.i2652 to i32
  %i.ag = trunc i64 %.0.copyload.i2651 to i32
  %i.ah = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ae) #13 ; 2 uses
  %.not2393 = icmp eq i32 %i.ah, 0
  br i1 %.not2393, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %.loopexit2772

bb.g:                                             ; preds = %bb.e, %bb.d
  %.not2394 = icmp samesign ugt i64 %i.z, %i.ac
  br i1 %.not2394, label %bb.h, label %.loopexit2772

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b
  %i.aj = add i32 %.02294, 8
  %i.ak = zext i32 %i.aj to i64
  %.val2586 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.val2586, i64 %i.ak
  %.0.copyload.i2653 = load i64, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2653) #13, !srcloc !33
  %.val2649 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val2649, i64 %i.f
  store i64 %.0.copyload.i2653, ptr %i.am, align 1
  %.val2585 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.val2585, i64 %i.s
  %.0.copyload.i2654 = load i64, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2654) #13, !srcloc !33
  %.val2648 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2648, i64 %i.e
  store i64 %.0.copyload.i2654, ptr %i.ao, align 1
  %.val2584 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2584, i64 %i.n
  %.0.copyload.i2655 = load i64, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2655) #13, !srcloc !33
  %.val2647 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2647, i64 %i.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.0.copyload.i2655, ptr %i.ar, align 1
  %.val2583 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val2583, i64 %i.m
  %.0.copyload.i2656 = load i64, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2656) #13, !srcloc !33
  %.val2646 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val2646, i64 %i.s
  store i64 %.0.copyload.i2656, ptr %i.at, align 1
  %.val2582 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val2582, i64 %i.f
  %.0.copyload.i2657 = load i64, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2657) #13, !srcloc !33
  %.val2645 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val2645, i64 %i.n
  store i64 %.0.copyload.i2657, ptr %i.av, align 1
  %.val2581 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val2581, i64 %i.e
  %.0.copyload.i2658 = load i64, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2658) #13, !srcloc !33
  %.val2644 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2644, i64 %i.m
  store i64 %.0.copyload.i2658, ptr %i.ax, align 1
  br label %.loopexit2772

bb.i:                                             ; preds = %.loopexit2781
  %i.ay = add i32 %.02294, 16
  %i.az = add i32 %.02294, 32
  %i.ba = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.02294, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.j) ; 0 uses
  br label %.loopexit2772

bb.j:                                             ; preds = %.loopexit2781
  %i.bb = add i32 %.02294, 16
  %i.bc = add i32 %.02294, 32
  %i.bd = add i32 %.02294, 48
  %i.be = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.02294, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.j) ; 0 uses
  br label %.loopexit2772

bb.k:                                             ; preds = %.loopexit2781
  %i.bf = icmp slt i32 %i.o, 496
  br i1 %i.bf, label %bb.l, label %4

bb.l:                                             ; preds = %bb.k
  %i.bg = add i32 %.02294, 16
  %i.bh = add i32 %.02294, 32                     ; 2 uses
  %i.bi = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.02294, i32 noundef %i.bg, i32 noundef %i.bh) ; 0 uses
  %i.bj = add i32 %.02294, 48                     ; 2 uses
  %i.bk = icmp eq i32 %i.bj, %.02309
  br i1 %i.bk, label %.loopexit2772, label %.preheader

.preheader:                                       ; preds = %bb.l, %bb.aa
  %.22313 = phi i32 [ %i.dr, %bb.aa ], [ %i.bj, %bb.l ] ; 3 uses
  %.02300 = phi i32 [ %.22313, %bb.aa ], [ %i.bh, %bb.l ] ; 3 uses
  %i.bl = zext i32 %.22313 to i64                 ; 5 uses
  %.val2580 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2580, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.0.copyload.i2659 = load i64, ptr %i.bn, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2659) #13, !srcloc !33
  %.val2492 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2492, i64 %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %.0.copyload.i2660 = load i32, ptr %i.bp, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2660) #13, !srcloc !14
  %i.bq = zext i32 %.02300 to i64                 ; 4 uses
  %.val2491 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val2491, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %.0.copyload.i2661 = load i32, ptr %i.bs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2661) #13, !srcloc !14
  %i.bt = icmp ult i32 %.0.copyload.i2660, %.0.copyload.i2661
  br i1 %i.bt, label %bb.r, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bu = icmp ult i32 %.0.copyload.i2661, %.0.copyload.i2660
  br i1 %i.bu, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val2579 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.val2579, i64 %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.0.copyload.i2662 = load i64, ptr %i.bw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2662) #13, !srcloc !33
  %i.bx = lshr i64 %.0.copyload.i2662, 32         ; 2 uses
  %i.by = lshr i64 %.0.copyload.i2659, 32         ; 2 uses
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.by) ; 2 uses
  %.not2454 = icmp eq i64 %i.bz, 0
  br i1 %.not2454, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = trunc i64 %.0.copyload.i2659 to i32
  %i.cc = trunc i64 %.0.copyload.i2662 to i32
  %i.cd = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.ca) #13 ; 2 uses
  %.not2455 = icmp eq i32 %i.cd, 0
  br i1 %.not2455, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.r, label %bb.aa

bb.q:                                             ; preds = %bb.o, %bb.n
  %.not2456 = icmp samesign ugt i64 %i.bx, %i.by
  br i1 %.not2456, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q, %bb.p, %.preheader
  %.val2490 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %.val2490, i64 %i.bl
  %.0.copyload.i2663 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2663) #13, !srcloc !14
  %.val2578 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.val2578, i64 %i.bq
  %.0.copyload.i2664 = load i64, ptr %i.cg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2664) #13, !srcloc !33
  %.val2643 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.val2643, i64 %i.bl
  store i64 %.0.copyload.i2664, ptr %i.ch, align 1
  %.val2577 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %.val2577, i64 %i.bq
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.0.copyload.i2665 = load i64, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2665) #13, !srcloc !33
  %.val2642 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.val2642, i64 %i.bl
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %.0.copyload.i2665, ptr %i.cl, align 1
  %i.cm = icmp eq i32 %.02300, %.02294
  br i1 %i.cm, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = lshr i64 %.0.copyload.i2659, 32         ; 2 uses
  %i.co = trunc i64 %.0.copyload.i2659 to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.s
  %.12301 = phi i32 [ %.02300, %bb.s ], [ %i.cp, %bb.z ] ; 5 uses
  %i.cp = add i32 %.12301, -16                    ; 3 uses
  %i.cq = zext i32 %i.cp to i64                   ; 4 uses
  %.val2489 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %.val2489, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %.0.copyload.i2666 = load i32, ptr %i.cs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2666) #13, !srcloc !14
  %i.ct = icmp ult i32 %.0.copyload.i2660, %.0.copyload.i2666
  br i1 %i.ct, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = icmp ugt i32 %.0.copyload.i2660, %.0.copyload.i2666
  br i1 %i.cu, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val2576 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.val2576, i64 %i.cq
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %.0.copyload.i2667 = load i64, ptr %i.cw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2667) #13, !srcloc !33
  %i.cx = lshr i64 %.0.copyload.i2667, 32         ; 2 uses
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cx) ; 2 uses
  %.not2457 = icmp eq i64 %i.cy, 0
  br i1 %.not2457, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = trunc nuw i64 %i.cy to i32
  %i.da = trunc i64 %.0.copyload.i2667 to i32
  %i.db = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.co, i32 noundef %i.da, i32 noundef %i.cz) #13 ; 2 uses
  %.not2458 = icmp eq i32 %i.db, 0
  br i1 %.not2458, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dc = icmp samesign ult i64 %i.cn, %i.cx
  br i1 %i.dc, label %bb.z, label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.dd = icmp sgt i32 %i.db, -1
  br i1 %i.dd, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.t
  %.val2575 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.val2575, i64 %i.cq
  %.0.copyload.i2668 = load i64, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2668) #13, !srcloc !33
  %i.df = zext i32 %.12301 to i64                 ; 2 uses
  %.val2641 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %.val2641, i64 %i.df
  store i64 %.0.copyload.i2668, ptr %i.dg, align 1
  %.val2574 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.val2574, i64 %i.cq
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.0.copyload.i2669 = load i64, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2669) #13, !srcloc !33
  %.val2640 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %.val2640, i64 %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %.0.copyload.i2669, ptr %i.dk, align 1
  %.not2459 = icmp eq i32 %i.cp, %.02294
  br i1 %.not2459, label %.loopexit, label %bb.t

.loopexit:                                        ; preds = %bb.z, %bb.y, %bb.x, %bb.u, %bb.r
  %.32314 = phi i32 [ %.02294, %bb.r ], [ %.02294, %bb.z ], [ %.12301, %bb.y ], [ %.12301, %bb.u ], [ %.12301, %bb.x ]
  %i.dl = zext i32 %.32314 to i64                 ; 3 uses
  %.val2500 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.val2500, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 %.0.copyload.i2660, ptr %i.dn, align 1
  %.val2639 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %.val2639, i64 %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i64 %.0.copyload.i2659, ptr %i.dp, align 1
  %.val2499 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %.val2499, i64 %i.dl
  store i32 %.0.copyload.i2663, ptr %i.dq, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.q, %bb.p, %bb.m, %.loopexit
  %i.dr = add i32 %.22313, 16                     ; 2 uses
  %.not2460 = icmp eq i32 %i.dr, %.02309
  br i1 %.not2460, label %.loopexit2772, label %.preheader

4:                                                ; preds = %bb.k
  %.not2395 = icmp eq i32 %.22308, 0
  br i1 %.not2395, label %bb.ab, label %bb.cn

bb.ab:                                            ; preds = %4
  %i.ds = icmp eq i32 %.02309, %.02294
  br i1 %i.ds, label %.loopexit2772, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dt = add nsw i32 %i.p, -2                    ; 2 uses
  %i.du = lshr i32 %i.dt, 1                       ; 2 uses
  %i.dv = lshr i32 %i.dt, 1
  %i.dw = zext nneg i32 %i.dv to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.bi, %bb.ac
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bi ], [ %i.dw, %bb.ac ] ; 3 uses
  %i.dx = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.dy = shl i32 %i.dx, 4
  %i.dz = add i32 %i.dy, %.02294
  %i.ea = shl i32 %i.dx, 1                        ; 2 uses
  %i.eb = or disjoint i32 %i.ea, 1                ; 5 uses
  %i.ec = shl i32 %i.eb, 4
  %i.ed = add i32 %i.ec, %.02294                  ; 6 uses
  %i.ee = add i32 %i.ea, 2                        ; 2 uses
  %.not2432 = icmp sgt i32 %i.p, %i.ee
  br i1 %.not2432, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.ef = zext i32 %i.ed to i64                   ; 4 uses
  %.val2488 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %.val2488, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %.0.copyload.i2670 = load i32, ptr %i.eh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2670) #13, !srcloc !14
  %.val2487 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %.val2487, i64 %i.ef
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  %.0.copyload.i2671 = load i32, ptr %i.ej, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2671) #13, !srcloc !14
  %i.ek = icmp ult i32 %.0.copyload.i2670, %.0.copyload.i2671
  br i1 %i.ek, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.el = icmp ult i32 %.0.copyload.i2671, %.0.copyload.i2670
  br i1 %i.el, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val2573 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.em = getelementptr inbounds nuw i8, ptr %.val2573, i64 %i.ef
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %.0.copyload.i2672 = load i64, ptr %i.en, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2672) #13, !srcloc !33
  %i.eo = lshr i64 %.0.copyload.i2672, 32         ; 2 uses
  %.val2572 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %.val2572, i64 %i.ef
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %.0.copyload.i2673 = load i64, ptr %i.eq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2673) #13, !srcloc !33
  %i.er = lshr i64 %.0.copyload.i2673, 32         ; 2 uses
  %i.es = tail call i64 @llvm.umin.i64(i64 %i.er, i64 %i.eo) ; 2 uses
  %.not2433 = icmp eq i64 %i.es, 0
  br i1 %.not2433, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = trunc nuw i64 %i.es to i32
  %i.eu = trunc i64 %.0.copyload.i2673 to i32
  %i.ev = trunc i64 %.0.copyload.i2672 to i32
  %i.ew = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.eu, i32 noundef %i.ev, i32 noundef %i.et) #13 ; 2 uses
  %.not2434 = icmp eq i32 %i.ew, 0
  br i1 %.not2434, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.ey = icmp samesign ult i64 %i.er, %i.eo
  br i1 %i.ey, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ae
  %i.ez = add i32 %i.ed, 16
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.af, %bb.ad, %bb.ak
  %.32303 = phi i32 [ %i.ed, %bb.af ], [ %i.ez, %bb.ak ], [ %i.ed, %bb.ad ], [ %i.ed, %bb.ai ], [ %i.ed, %bb.aj ] ; 2 uses
  %.02286 = phi i32 [ %i.eb, %bb.af ], [ %i.ee, %bb.ak ], [ %i.eb, %bb.ad ], [ %i.eb, %bb.ai ], [ %i.eb, %bb.aj ] ; 2 uses
  %i.fa = zext i32 %.32303 to i64                 ; 5 uses
  %.val2486 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %.val2486, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %.0.copyload.i2674 = load i32, ptr %i.fc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2674) #13, !srcloc !14
  %i.fd = zext i32 %i.dz to i64                   ; 5 uses
  %.val2485 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fe = getelementptr inbounds nuw i8, ptr %.val2485, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %.0.copyload.i2675 = load i32, ptr %i.ff, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2675) #13, !srcloc !14
  %i.fg = icmp ult i32 %.0.copyload.i2674, %.0.copyload.i2675
  br i1 %i.fg, label %bb.bi, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val2571 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fh = getelementptr inbounds nuw i8, ptr %.val2571, i64 %i.fd
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %.0.copyload.i2676 = load i64, ptr %i.fi, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2676) #13, !srcloc !33
  %i.fj = icmp ugt i32 %.0.copyload.i2674, %.0.copyload.i2675
  br i1 %i.fj, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fk = lshr i64 %.0.copyload.i2676, 32         ; 2 uses
  %.val2570 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fl = getelementptr inbounds nuw i8, ptr %.val2570, i64 %i.fa
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %.0.copyload.i2677 = load i64, ptr %i.fm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2677) #13, !srcloc !33
  %i.fn = lshr i64 %.0.copyload.i2677, 32         ; 2 uses
  %i.fo = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 %i.fn) ; 2 uses
  %.not2435 = icmp eq i64 %i.fo, 0
  br i1 %.not2435, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fp = trunc nuw i64 %i.fo to i32
  %i.fq = trunc i64 %.0.copyload.i2677 to i32
  %i.fr = trunc i64 %.0.copyload.i2676 to i32
  %i.fs = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.fq, i32 noundef %i.fr, i32 noundef %i.fp) #13 ; 2 uses
  %.not2436 = icmp eq i32 %i.fs, 0
  br i1 %.not2436, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ft = icmp sgt i32 %i.fs, -1
  br i1 %i.ft, label %bb.ar, label %bb.bi

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.fu = icmp samesign ugt i64 %i.fk, %i.fn
  br i1 %i.fu, label %bb.bi, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.am
  %.val2484 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fv = getelementptr inbounds nuw i8, ptr %.val2484, i64 %i.fd
  %.0.copyload.i2678 = load i32, ptr %i.fv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2678) #13, !srcloc !14
  %.val2569 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %.val2569, i64 %i.fa
  %.0.copyload.i2679 = load i64, ptr %i.fw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2679) #13, !srcloc !33
  %.val2638 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fx = getelementptr inbounds nuw i8, ptr %.val2638, i64 %i.fd
  store i64 %.0.copyload.i2679, ptr %i.fx, align 1
  %.val2568 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %.val2568, i64 %i.fa
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.0.copyload.i2680 = load i64, ptr %i.fz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2680) #13, !srcloc !33
  %.val2637 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ga = getelementptr inbounds nuw i8, ptr %.val2637, i64 %i.fd
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i64 %.0.copyload.i2680, ptr %i.gb, align 1
  %i.gc = icmp sgt i32 %.02286, %i.du
  br i1 %i.gc, label %.loopexit2775, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gd = lshr i64 %.0.copyload.i2676, 32         ; 2 uses
  %i.ge = trunc i64 %.0.copyload.i2676 to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.bh, %bb.as
  %.42304 = phi i32 [ %.32303, %bb.as ], [ %.52305, %bb.bh ] ; 4 uses
  %.12287 = phi i32 [ %.02286, %bb.as ], [ %.22288, %bb.bh ]
  %i.gf = shl i32 %.12287, 1                      ; 2 uses
  %i.gg = or disjoint i32 %i.gf, 1                ; 5 uses
  %i.gh = shl i32 %i.gg, 4
  %i.gi = add i32 %i.gh, %.02294                  ; 6 uses
  %i.gj = add i32 %i.gf, 2                        ; 2 uses
  %.not2437 = icmp sgt i32 %i.p, %i.gj
  br i1 %.not2437, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.gk = zext i32 %i.gi to i64                   ; 4 uses
  %.val2483 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gl = getelementptr inbounds nuw i8, ptr %.val2483, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %.0.copyload.i2681 = load i32, ptr %i.gm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2681) #13, !srcloc !14
  %.val2482 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gn = getelementptr inbounds nuw i8, ptr %.val2482, i64 %i.gk
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 28
  %.0.copyload.i2682 = load i32, ptr %i.go, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2682) #13, !srcloc !14
  %i.gp = icmp ult i32 %.0.copyload.i2681, %.0.copyload.i2682
  br i1 %i.gp, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gq = icmp ugt i32 %.0.copyload.i2681, %.0.copyload.i2682
  br i1 %i.gq, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val2567 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %.val2567, i64 %i.gk
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 20
  %.0.copyload.i2683 = load i64, ptr %i.gs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2683) #13, !srcloc !33
  %i.gt = lshr i64 %.0.copyload.i2683, 32         ; 2 uses
  %.val2566 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gu = getelementptr inbounds nuw i8, ptr %.val2566, i64 %i.gk
end_hunk_4
begin_hunk_5_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  %i.kk = add nuw nsw i64 %i.jo, 8                ; 2 uses
  %.val2626 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kl = getelementptr inbounds nuw i8, ptr %.val2626, i64 %i.kk
  store i64 %.0.copyload.i2700, ptr %i.kl, align 1
  %.val2552 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.km = getelementptr inbounds nuw i8, ptr %.val2552, i64 %i.e
  %.0.copyload.i2701 = load i64, ptr %i.km, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2701) #13, !srcloc !33
  %.val2625 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kn = getelementptr inbounds nuw i8, ptr %.val2625, i64 %i.ke
  store i64 %.0.copyload.i2701, ptr %i.kn, align 1
  %.val2551 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ko = getelementptr inbounds nuw i8, ptr %.val2551, i64 %i.f
  %.0.copyload.i2702 = load i64, ptr %i.ko, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2702) #13, !srcloc !33
  %.val2624 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kp = getelementptr inbounds nuw i8, ptr %.val2624, i64 %i.ke
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i64 %.0.copyload.i2702, ptr %i.kq, align 1
  %.reass.reass.reass = add i32 %.9, %invariant.op ; 2 uses
  %i.kr = icmp slt i32 %.reass.reass.reass, 17
  br i1 %i.kr, label %bb.cm, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.val2550 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ks = getelementptr inbounds nuw i8, ptr %.val2550, i64 %i.jo
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %.0.copyload.i2703 = load i64, ptr %i.kt, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2703) #13, !srcloc !33
  %i.ku = lshr i32 %.reass.reass.reass, 4
  %i.kv = add nsw i32 %i.ku, -2                   ; 2 uses
  %i.kw = lshr i32 %i.kv, 1                       ; 2 uses
  %i.kx = shl i32 %i.kw, 4
  %i.ky = add i32 %i.kx, %.02294                  ; 2 uses
  %i.kz = zext i32 %i.ky to i64                   ; 5 uses
  %.val2478 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.la = getelementptr inbounds nuw i8, ptr %.val2478, i64 %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 12
  %.0.copyload.i2704 = load i32, ptr %i.lb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2704) #13, !srcloc !14
  %.val2477 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lc = getelementptr inbounds nuw i8, ptr %.val2477, i64 %i.jo
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  %.0.copyload.i2705 = load i32, ptr %i.ld, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2705) #13, !srcloc !14
  %i.le = icmp ult i32 %.0.copyload.i2704, %.0.copyload.i2705
  br i1 %i.le, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lf = icmp ugt i32 %.0.copyload.i2704, %.0.copyload.i2705
  br i1 %i.lf, label %bb.cm, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lg = lshr i64 %.0.copyload.i2703, 32         ; 2 uses
  %.val2549 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lh = getelementptr inbounds nuw i8, ptr %.val2549, i64 %i.kz
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %.0.copyload.i2706 = load i64, ptr %i.li, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2706) #13, !srcloc !33
  %i.lj = lshr i64 %.0.copyload.i2706, 32         ; 2 uses
  %i.lk = tail call i64 @llvm.umin.i64(i64 %i.lg, i64 %i.lj) ; 2 uses
  %.not2449 = icmp eq i64 %i.lk, 0
  br i1 %.not2449, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ll = trunc nuw i64 %i.lk to i32
  %i.lm = trunc i64 %.0.copyload.i2706 to i32
  %i.ln = trunc i64 %.0.copyload.i2703 to i32
  %i.lo = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.lm, i32 noundef %i.ln, i32 noundef %i.ll) #13 ; 2 uses
  %.not2450 = icmp eq i32 %i.lo, 0
  br i1 %.not2450, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lp = icmp slt i32 %i.lo, 0
  br i1 %i.lp, label %bb.cd, label %bb.cm

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %.not2451 = icmp samesign ugt i64 %i.lg, %i.lj
  br i1 %.not2451, label %bb.cd, label %bb.cm

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.bx
  %.val2476 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lq = getelementptr inbounds nuw i8, ptr %.val2476, i64 %i.jo
  %.0.copyload.i2707 = load i32, ptr %i.lq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2707) #13, !srcloc !14
  %.val2548 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lr = getelementptr inbounds nuw i8, ptr %.val2548, i64 %i.kz
  %.0.copyload.i2708 = load i64, ptr %i.lr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2708) #13, !srcloc !33
  %.val2623 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ls = getelementptr inbounds nuw i8, ptr %.val2623, i64 %i.jo
  store i64 %.0.copyload.i2708, ptr %i.ls, align 1
  %.val2547 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lt = getelementptr inbounds nuw i8, ptr %.val2547, i64 %i.kz
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %.0.copyload.i2709 = load i64, ptr %i.lu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2709) #13, !srcloc !33
  %.val2622 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lv = getelementptr inbounds nuw i8, ptr %.val2622, i64 %i.kk
  store i64 %.0.copyload.i2709, ptr %i.lv, align 1
  %i.lw = icmp ult i32 %i.kv, 2
  br i1 %i.lw, label %.loopexit2773, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lx = lshr i64 %.0.copyload.i2703, 32         ; 2 uses
  %i.ly = trunc i64 %.0.copyload.i2703 to i32
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cl, %bb.ce
  %.62317 = phi i32 [ %i.ky, %bb.ce ], [ %i.mc, %bb.cl ] ; 4 uses
  %.32289 = phi i32 [ %i.kw, %bb.ce ], [ %i.ma, %bb.cl ]
  %i.lz = add nsw i32 %.32289, -1                 ; 2 uses
  %i.ma = lshr i32 %i.lz, 1                       ; 2 uses
  %i.mb = shl i32 %i.ma, 4
  %i.mc = add i32 %i.mb, %.02294                  ; 3 uses
  %i.md = zext i32 %i.mc to i64                   ; 4 uses
  %.val2475 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.me = getelementptr inbounds nuw i8, ptr %.val2475, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 12
  %.0.copyload.i2710 = load i32, ptr %i.mf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2710) #13, !srcloc !14
  %i.mg = icmp ult i32 %.0.copyload.i2710, %.0.copyload.i2705
  br i1 %i.mg, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mh = icmp ult i32 %.0.copyload.i2705, %.0.copyload.i2710
  br i1 %i.mh, label %.loopexit2773.loopexit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.val2546 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mi = getelementptr inbounds nuw i8, ptr %.val2546, i64 %i.md
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %.0.copyload.i2711 = load i64, ptr %i.mj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2711) #13, !srcloc !33
  %i.mk = lshr i64 %.0.copyload.i2711, 32         ; 2 uses
  %i.ml = tail call i64 @llvm.umin.i64(i64 %i.lx, i64 %i.mk) ; 2 uses
  %.not2452 = icmp eq i64 %i.ml, 0
  br i1 %.not2452, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mm = trunc nuw i64 %i.ml to i32
  %i.mn = trunc i64 %.0.copyload.i2711 to i32
  %i.mo = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.mn, i32 noundef %i.ly, i32 noundef %i.mm) #13 ; 2 uses
  %.not2453 = icmp eq i32 %i.mo, 0
  br i1 %.not2453, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.mp = icmp samesign ugt i64 %i.lx, %i.mk
  br i1 %i.mp, label %bb.cl, label %.loopexit2773.loopexit

bb.ck:                                            ; preds = %bb.ci
  %i.mq = icmp slt i32 %i.mo, 0
  br i1 %i.mq, label %bb.cl, label %.loopexit2773.loopexit

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.cf
  %.val2545 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mr = getelementptr inbounds nuw i8, ptr %.val2545, i64 %i.md
  %.0.copyload.i2712 = load i64, ptr %i.mr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2712) #13, !srcloc !33
  %i.ms = zext i32 %.62317 to i64                 ; 2 uses
  %.val2621 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mt = getelementptr inbounds nuw i8, ptr %.val2621, i64 %i.ms
  store i64 %.0.copyload.i2712, ptr %i.mt, align 1
  %.val2544 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mu = getelementptr inbounds nuw i8, ptr %.val2544, i64 %i.md
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %.0.copyload.i2713 = load i64, ptr %i.mv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2713) #13, !srcloc !33
  %.val2620 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mw = getelementptr inbounds nuw i8, ptr %.val2620, i64 %i.ms
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store i64 %.0.copyload.i2713, ptr %i.mx, align 1
  %i.my = icmp ugt i32 %i.lz, 1
  br i1 %i.my, label %bb.cf, label %.loopexit2773.loopexit

.loopexit2773.loopexit:                           ; preds = %bb.cl, %bb.cg, %bb.cj, %bb.ck
  %.72318.ph = phi i32 [ %i.mc, %bb.cl ], [ %.62317, %bb.cg ], [ %.62317, %bb.cj ], [ %.62317, %bb.ck ]
  %.pre = zext i32 %.72318.ph to i64
  br label %.loopexit2773

.loopexit2773:                                    ; preds = %.loopexit2773.loopexit, %bb.cd
  %.pre-phi = phi i64 [ %.pre, %.loopexit2773.loopexit ], [ %i.kz, %bb.cd ] ; 3 uses
  %.val2496 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mz = getelementptr inbounds nuw i8, ptr %.val2496, i64 %.pre-phi
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  store i32 %.0.copyload.i2705, ptr %i.na, align 1
  %.val2619 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nb = getelementptr inbounds nuw i8, ptr %.val2619, i64 %.pre-phi
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  store i64 %.0.copyload.i2703, ptr %i.nc, align 1
  %.val2495 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nd = getelementptr inbounds nuw i8, ptr %.val2495, i64 %.pre-phi
  store i32 %.0.copyload.i2707, ptr %i.nd, align 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cc, %bb.cb, %bb.by, %bb.bw, %.loopexit2773, %bb.bv
  %i.ne = add nsw i32 %.7, -1
  %i.nf = icmp sgt i32 %.7, 2
  br i1 %i.nf, label %bb.bk, label %.loopexit2772

bb.cn:                                            ; preds = %4
  %i.ng = shl nuw nsw i32 %i.p, 3
  %i.nh = and i32 %i.ng, 1073741808
  %i.ni = add i32 %i.nh, %.02294                  ; 6 uses
  %i.nj = icmp samesign ugt i32 %i.o, 15984
  br i1 %i.nj, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.nk = shl nuw nsw i32 %i.p, 2
  %i.nl = and i32 %i.nk, 536870896                ; 2 uses
  %i.nm = add i32 %i.nl, %.02294
  %i.nn = add i32 %i.ni, %i.nl
  %i.no = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.02294, i32 noundef %i.nm, i32 noundef %i.ni, i32 noundef %i.nn, i32 noundef %i.j)
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.np = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.02294, i32 noundef %i.ni, i32 noundef %i.j)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.0 = phi i32 [ %i.no, %bb.co ], [ %i.np, %bb.cp ] ; 4 uses
  %i.nq = add i32 %.22308, -1                     ; 4 uses
  %i.nr = add i32 %.02294, 12
  %i.ns = zext i32 %i.nr to i64
  %.val2474 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nt = getelementptr inbounds nuw i8, ptr %.val2474, i64 %i.ns
  %.0.copyload.i2714 = load i32, ptr %i.nt, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2714) #13, !srcloc !14
  %i.nu = zext i32 %i.ni to i64                   ; 2 uses
  %.val2473 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nv = getelementptr inbounds nuw i8, ptr %.val2473, i64 %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  %.0.copyload.i2715 = load i32, ptr %i.nw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2715) #13, !srcloc !14
  %i.nx = icmp ult i32 %.0.copyload.i2714, %.0.copyload.i2715
  br i1 %i.nx, label %.loopexit2787, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.val2543 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ny = getelementptr inbounds nuw i8, ptr %.val2543, i64 %i.nu
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %.0.copyload.i2716 = load i64, ptr %i.nz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2716) #13, !srcloc !33
  %i.oa = add i32 %.02294, 4
  %i.ob = zext i32 %i.oa to i64
  %.val2542 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.oc = getelementptr inbounds nuw i8, ptr %.val2542, i64 %i.ob
  %.0.copyload.i2717 = load i64, ptr %i.oc, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2717) #13, !srcloc !33
  %i.od = icmp ugt i32 %.0.copyload.i2714, %.0.copyload.i2715
  br i1 %i.od, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.oe = lshr i64 %.0.copyload.i2716, 32         ; 2 uses
  %i.of = lshr i64 %.0.copyload.i2717, 32         ; 2 uses
  %i.og = tail call i64 @llvm.umin.i64(i64 %i.oe, i64 %i.of) ; 2 uses
  %.not2396 = icmp eq i64 %i.og, 0
  br i1 %.not2396, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.oh = trunc nuw i64 %i.og to i32
  %i.oi = trunc i64 %.0.copyload.i2717 to i32
  %i.oj = trunc i64 %.0.copyload.i2716 to i32
  %i.ok = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.oi, i32 noundef %i.oj, i32 noundef %i.oh) #13 ; 2 uses
  %.not2397 = icmp eq i32 %i.ok, 0
  br i1 %.not2397, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.not2398 = icmp samesign ugt i64 %i.oe, %i.of
  br i1 %.not2398, label %.loopexit2787, label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.ol = icmp sgt i32 %i.ok, -1
  br i1 %i.ol, label %bb.cw, label %.loopexit2787

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.cr
  %i.om = icmp eq i32 %.02294, %i.i
  br i1 %i.om, label %.loopexit2783, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.on = lshr i64 %.0.copyload.i2716, 32         ; 2 uses
  %i.oo = trunc i64 %.0.copyload.i2716 to i32
  br label %bb.cy

bb.cy:                                            ; preds = %bb.de, %bb.cx
  %.82319 = phi i32 [ %i.i, %bb.cx ], [ %i.pd, %bb.de ] ; 5 uses
  %.02290 = phi i32 [ %i.j, %bb.cx ], [ %.82319, %bb.de ]
  %i.op = add i32 %.02290, -16
  %i.oq = zext i32 %i.op to i64                   ; 2 uses
  %.val2472 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.or = getelementptr inbounds nuw i8, ptr %.val2472, i64 %i.oq
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 12
  %.0.copyload.i2718 = load i32, ptr %i.os, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2718) #13, !srcloc !14
  %i.ot = icmp ult i32 %.0.copyload.i2718, %.0.copyload.i2715
  br i1 %i.ot, label %bb.ei, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ou = icmp ugt i32 %.0.copyload.i2718, %.0.copyload.i2715
  br i1 %i.ou, label %bb.de, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.val2541 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ov = getelementptr inbounds nuw i8, ptr %.val2541, i64 %i.oq
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %.0.copyload.i2719 = load i64, ptr %i.ow, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2719) #13, !srcloc !33
  %i.ox = lshr i64 %.0.copyload.i2719, 32         ; 2 uses
  %i.oy = tail call i64 @llvm.umin.i64(i64 %i.ox, i64 %i.on) ; 2 uses
  %.not2399 = icmp eq i64 %i.oy, 0
  br i1 %.not2399, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.oz = trunc nuw i64 %i.oy to i32
  %i.pa = trunc i64 %.0.copyload.i2719 to i32
  %i.pb = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.pa, i32 noundef %i.oo, i32 noundef %i.oz) #13 ; 2 uses
  %.not2400 = icmp eq i32 %i.pb, 0
  br i1 %.not2400, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.not2401 = icmp samesign ult i64 %i.ox, %i.on
  br i1 %.not2401, label %bb.ei, label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.pc = icmp slt i32 %i.pb, 0
  br i1 %i.pc, label %bb.ei, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.cz
  %i.pd = add i32 %.82319, -16                    ; 2 uses
  %.not2402 = icmp eq i32 %.02294, %i.pd
  br i1 %.not2402, label %.loopexit2783, label %bb.cy

bb.df:                                            ; preds = %.loopexit2781
  %i.pe = add i32 %.02294, 16
  %i.pf = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.02294, i32 noundef %i.pe, i32 noundef %i.j) ; 0 uses
  br label %.loopexit2772

.loopexit2783:                                    ; preds = %bb.de, %bb.cw
  %i.pg = add i32 %.02294, 16                     ; 5 uses
  %.val2471 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ph = getelementptr inbounds nuw i8, ptr %.val2471, i64 %i.k
  %.0.copyload.i2720 = load i32, ptr %i.ph, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2720) #13, !srcloc !14
  %i.pi = icmp ult i32 %.0.copyload.i2714, %.0.copyload.i2720
  br i1 %i.pi, label %bb.dv, label %bb.dg

bb.dg:                                            ; preds = %.loopexit2783
  %i.pj = icmp ult i32 %.0.copyload.i2720, %.0.copyload.i2714
  br i1 %i.pj, label %bb.dl, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.val2540 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.pk = getelementptr inbounds nuw i8, ptr %.val2540, i64 %i.l
  %.0.copyload.i2721 = load i64, ptr %i.pk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2721) #13, !srcloc !33
  %i.pl = lshr i64 %.0.copyload.i2721, 32         ; 2 uses
  %i.pm = lshr i64 %.0.copyload.i2717, 32         ; 2 uses
  %i.pn = tail call i64 @llvm.umin.i64(i64 %i.pl, i64 %i.pm) ; 2 uses
  %.not2403 = icmp eq i64 %i.pn, 0
  br i1 %.not2403, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.po = trunc nuw i64 %i.pn to i32
  %i.pp = trunc i64 %.0.copyload.i2717 to i32
  %i.pq = trunc i64 %.0.copyload.i2721 to i32
  %i.pr = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.pp, i32 noundef %i.pq, i32 noundef %i.po) #13 ; 2 uses
  %.not2404 = icmp eq i32 %i.pr, 0
  br i1 %.not2404, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.not2405 = icmp samesign ugt i64 %i.pl, %i.pm
  br i1 %.not2405, label %bb.dv, label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.ps = icmp slt i32 %i.pr, 0
  br i1 %i.ps, label %bb.dv, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.dg
  %i.pt = icmp eq i32 %i.pg, %i.j
  br i1 %i.pt, label %.loopexit2772, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pu = lshr i64 %.0.copyload.i2717, 32         ; 2 uses
  %i.pv = trunc i64 %.0.copyload.i2717 to i32
  br label %bb.dn

bb.dn:                                            ; preds = %bb.du, %bb.dm
  %.12295 = phi i32 [ %i.pg, %bb.dm ], [ %i.qz, %bb.du ] ; 4 uses
  %i.pw = zext i32 %.12295 to i64                 ; 5 uses
  %.val2470 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.px = getelementptr inbounds nuw i8, ptr %.val2470, i64 %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 12
  %.0.copyload.i2722 = load i32, ptr %i.py, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2722) #13, !srcloc !14
  %i.pz = icmp ult i32 %.0.copyload.i2714, %.0.copyload.i2722
  br i1 %i.pz, label %bb.dt, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.qa = icmp ult i32 %.0.copyload.i2722, %.0.copyload.i2714
  br i1 %i.qa, label %bb.du, label %bb.dp

end_hunk_5
begin_hunk_6_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  %.val2513 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vw = getelementptr inbounds nuw i8, ptr %.val2513, i64 %i.uk
  %.0.copyload.i2757 = load i64, ptr %i.vw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2757) #13, !srcloc !33
  %.val2599 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.vx = getelementptr inbounds nuw i8, ptr %.val2599, i64 %i.e
  store i64 %.0.copyload.i2757, ptr %i.vx, align 1
  %i.vy = add i32 %.5, 8
  %i.vz = zext i32 %i.vy to i64
  %.val2512 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.wa = getelementptr inbounds nuw i8, ptr %.val2512, i64 %i.vz
  %.0.copyload.i2758 = load i64, ptr %i.wa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2758) #13, !srcloc !33
  %.val2598 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.wb = getelementptr inbounds nuw i8, ptr %.val2598, i64 %i.uk
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store i64 %.0.copyload.i2758, ptr %i.wc, align 1
  %i.wd = zext i32 %.5 to i64                     ; 3 uses
  %.val2511 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.we = getelementptr inbounds nuw i8, ptr %.val2511, i64 %i.wd
  %.0.copyload.i2759 = load i64, ptr %i.we, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2759) #13, !srcloc !33
  %.val2597 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.wf = getelementptr inbounds nuw i8, ptr %.val2597, i64 %i.uk
  store i64 %.0.copyload.i2759, ptr %i.wf, align 1
  %.val2510 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.wg = getelementptr inbounds nuw i8, ptr %.val2510, i64 %i.f
  %.0.copyload.i2760 = load i64, ptr %i.wg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2760) #13, !srcloc !33
  %.val2596 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.wh = getelementptr inbounds nuw i8, ptr %.val2596, i64 %i.wd
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  store i64 %.0.copyload.i2760, ptr %i.wi, align 1
  %.val2509 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.wj = getelementptr inbounds nuw i8, ptr %.val2509, i64 %i.e
  %.0.copyload.i2761 = load i64, ptr %i.wj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2761) #13, !srcloc !33
  %.val2595 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.wk = getelementptr inbounds nuw i8, ptr %.val2595, i64 %i.wd
  store i64 %.0.copyload.i2761, ptr %i.wk, align 1
  %i.wl = icmp eq i32 %.13, %.02284
  %i.wm = select i1 %i.wl, i32 %.5, i32 %.02284
  %i.wn = add i32 %.13, 16
  %i.wo = add i32 %.1, 1
  br label %.preheader2784

.loopexit2785:                                    ; preds = %.loopexit2779, %.loopexit2787
  %.14 = phi i32 [ %i.uc, %.loopexit2787 ], [ %.13, %.loopexit2779 ] ; 11 uses
  %.12285 = phi i32 [ %i.ni, %.loopexit2787 ], [ %.02284, %.loopexit2779 ] ; 3 uses
  %.2 = phi i32 [ %.02281, %.loopexit2787 ], [ %.1, %.loopexit2779 ] ; 5 uses
  %i.wp = icmp eq i32 %.14, %.12285
  br i1 %i.wp, label %bb.fe, label %bb.ex

bb.ex:                                            ; preds = %.loopexit2785
  %i.wq = zext i32 %.12285 to i64                 ; 5 uses
  %.val2461 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.wr = getelementptr inbounds nuw i8, ptr %.val2461, i64 %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 12
  %.0.copyload.i2762 = load i32, ptr %i.ws, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2762) #13, !srcloc !14
  %i.wt = zext i32 %.14 to i64                    ; 5 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.wu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.wt
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 12
  %.0.copyload.i2763 = load i32, ptr %i.wv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2763) #13, !srcloc !14
  %i.ww = icmp ult i32 %.0.copyload.i2762, %.0.copyload.i2763
  br i1 %i.ww, label %bb.fd, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.wx = icmp ugt i32 %.0.copyload.i2762, %.0.copyload.i2763
  br i1 %i.wx, label %bb.fe, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %.val2508 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.wy = getelementptr inbounds nuw i8, ptr %.val2508, i64 %i.wt
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 4
  %.0.copyload.i2764 = load i64, ptr %i.wz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2764) #13, !srcloc !33
  %i.xa = lshr i64 %.0.copyload.i2764, 32         ; 2 uses
  %.val2507 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.xb = getelementptr inbounds nuw i8, ptr %.val2507, i64 %i.wq
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  %.0.copyload.i2765 = load i64, ptr %i.xc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2765) #13, !srcloc !33
  %i.xd = lshr i64 %.0.copyload.i2765, 32         ; 2 uses
  %i.xe = tail call i64 @llvm.umin.i64(i64 %i.xa, i64 %i.xd) ; 2 uses
  %.not2425 = icmp eq i64 %i.xe, 0
  br i1 %.not2425, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.xf = trunc nuw i64 %i.xe to i32
  %i.xg = trunc i64 %.0.copyload.i2765 to i32
  %i.xh = trunc i64 %.0.copyload.i2764 to i32
  %i.xi = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.xg, i32 noundef %i.xh, i32 noundef %i.xf) #13 ; 2 uses
  %.not2426 = icmp eq i32 %i.xi, 0
  br i1 %.not2426, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.xj = icmp slt i32 %i.xi, 0
  br i1 %i.xj, label %bb.fd, label %bb.fe

bb.fc:                                            ; preds = %bb.fa, %bb.ez
  %.not2427 = icmp samesign ugt i64 %i.xa, %i.xd
  br i1 %.not2427, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.ex
  %i.xk = add i32 %.14, 8
  %i.xl = zext i32 %i.xk to i64
  %.val2506 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.xm = getelementptr inbounds nuw i8, ptr %.val2506, i64 %i.xl
  %.0.copyload.i2766 = load i64, ptr %i.xm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2766) #13, !srcloc !33
  %.val2594 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.xn = getelementptr inbounds nuw i8, ptr %.val2594, i64 %i.f
  store i64 %.0.copyload.i2766, ptr %i.xn, align 1
  %.val2505 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.xo = getelementptr inbounds nuw i8, ptr %.val2505, i64 %i.wt
  %.0.copyload.i2767 = load i64, ptr %i.xo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2767) #13, !srcloc !33
  %.val2593 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.xp = getelementptr inbounds nuw i8, ptr %.val2593, i64 %i.e
  store i64 %.0.copyload.i2767, ptr %i.xp, align 1
  %i.xq = add i32 %.12285, 8
  %i.xr = zext i32 %i.xq to i64
  %.val2504 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.xs = getelementptr inbounds nuw i8, ptr %.val2504, i64 %i.xr
  %.0.copyload.i2768 = load i64, ptr %i.xs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2768) #13, !srcloc !33
  %.val2592 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.xt = getelementptr inbounds nuw i8, ptr %.val2592, i64 %i.wt
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  store i64 %.0.copyload.i2768, ptr %i.xu, align 1
  %.val2503 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.xv = getelementptr inbounds nuw i8, ptr %.val2503, i64 %i.wq
  %.0.copyload.i2769 = load i64, ptr %i.xv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2769) #13, !srcloc !33
  %.val2591 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.xw = getelementptr inbounds nuw i8, ptr %.val2591, i64 %i.wt
  store i64 %.0.copyload.i2769, ptr %i.xw, align 1
  %.val2502 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.xx = getelementptr inbounds nuw i8, ptr %.val2502, i64 %i.f
  %.0.copyload.i2770 = load i64, ptr %i.xx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2770) #13, !srcloc !33
  %.val2590 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.xy = getelementptr inbounds nuw i8, ptr %.val2590, i64 %i.wq
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  store i64 %.0.copyload.i2770, ptr %i.xz, align 1
  %.val2501 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ya = getelementptr inbounds nuw i8, ptr %.val2501, i64 %i.e
  %.0.copyload.i2771 = load i64, ptr %i.ya, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2771) #13, !srcloc !33
  %.val2589 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.yb = getelementptr inbounds nuw i8, ptr %.val2589, i64 %i.wq
  store i64 %.0.copyload.i2771, ptr %i.yb, align 1
  %i.yc = add i32 %.2, 1
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fc, %bb.fb, %bb.ey, %.loopexit2785, %bb.fd
  %.3 = phi i32 [ %.2, %.loopexit2785 ], [ %i.yc, %bb.fd ], [ %.2, %bb.ey ], [ %.2, %bb.fc ], [ %.2, %bb.fb ]
  %.not2428 = icmp eq i32 %.3, 0
  br i1 %.not2428, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  %i.yd = tail call i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.02294, i32 noundef %.14) #13
  %i.ye = add i32 %.14, 16                        ; 2 uses
  %i.yf = tail call i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %i.ye, i32 noundef %.02309) #13
  %.not2429 = icmp eq i32 %i.yf, 0
  %.not2430 = icmp eq i32 %i.yd, 0                ; 2 uses
  br i1 %.not2429, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  br i1 %.not2430, label %.backedge2790.backedge, label %.loopexit2772

bb.fh:                                            ; preds = %bb.ff
  br i1 %.not2430, label %bb.fi, label %.loopexit2781.backedge

bb.fi:                                            ; preds = %bb.fh, %bb.fe
  %i.yg = sub i32 %.14, %.02294
  %i.yh = sub i32 %.02309, %.14
  %i.yi = icmp slt i32 %i.yg, %i.yh
  br i1 %i.yi, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %.02294, i32 noundef %.14, i32 noundef %i.nq)
  %i.yj = add i32 %.14, 16
  br label %.loopexit2781.backedge

.loopexit2781.backedge:                           ; preds = %bb.eg, %bb.fj, %bb.fh
  %.02294.be = phi i32 [ %i.ye, %bb.fh ], [ %i.yj, %bb.fj ], [ %.52299, %bb.eg ]
  br label %.loopexit2781

bb.fk:                                            ; preds = %bb.fi
  %i.yk = add i32 %.14, 16
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %i.yk, i32 noundef %.02309, i32 noundef %i.nq)
  br label %.backedge2790.backedge

.backedge2790.backedge:                           ; preds = %bb.fk, %bb.fg
  br label %.backedge2790

.loopexit2772:                                    ; preds = %bb.fg, %bb.dv, %bb.dl, %.loopexit2781, %.loopexit2781, %bb.du, %bb.cm, %bb.aa, %bb.ab, %bb.l, %bb.g, %bb.f, %bb.c, %bb.df, %bb.j, %bb.i, %bb.h
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 6) i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 48 uses
  %i.f = zext i32 %4 to i64                       ; 5 uses
  %.val372 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.0.copyload.i = load i32, ptr %i.h, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.i = zext i32 %3 to i64                       ; 8 uses
  %i.j = add nuw nsw i64 %i.i, 12                 ; 2 uses
  %.val371 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.val371, i64 %i.j
  %.0.copyload.i415 = load i32, ptr %i.k, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i415) #13, !srcloc !14
  %i.l = icmp ult i32 %.0.copyload.i, %.0.copyload.i415
  br i1 %i.l, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i32 %.0.copyload.i, %.0.copyload.i415
  br i1 %i.m, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val396 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val396, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.0.copyload.i416 = load i64, ptr %i.o, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i416) #13, !srcloc !33
  %i.p = lshr i64 %.0.copyload.i416, 32           ; 2 uses
  %.val395 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val395, i64 %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.0.copyload.i417 = load i64, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i417) #13, !srcloc !33
  %i.s = lshr i64 %.0.copyload.i417, 32           ; 2 uses
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.s) ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = trunc i64 %.0.copyload.i417 to i32
  %i.w = trunc i64 %.0.copyload.i416 to i32
  %i.x = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.u) #13 ; 2 uses
  %.not361 = icmp eq i32 %i.x, 0
  br i1 %.not361, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.t

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.z = icmp samesign ugt i64 %i.p, %i.s
  br i1 %i.z, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.a
  %i.aa = add nuw nsw i64 %i.i, 8                 ; 4 uses
  %.val394 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val394, i64 %i.aa
  %.0.copyload.i418 = load i64, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i418) #13, !srcloc !33
  %i.ac = zext i32 %i.c to i64                    ; 7 uses
  %i.ad = add nuw nsw i64 %i.ac, 8                ; 6 uses
  %.val414 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.ad
  store i64 %.0.copyload.i418, ptr %i.ae, align 1
  %.val393 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.val393, i64 %i.i
  %.0.copyload.i419 = load i64, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i419) #13, !srcloc !33
  %.val413 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.ac
  store i64 %.0.copyload.i419, ptr %i.ag, align 1
  %i.ah = add i32 %4, 8
  %i.ai = zext i32 %i.ah to i64
  %.val392 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val392, i64 %i.ai
  %.0.copyload.i420 = load i64, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i420) #13, !srcloc !33
  %.val412 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.aa
  store i64 %.0.copyload.i420, ptr %i.ak, align 1
  %.val391 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.val391, i64 %i.f
  %.0.copyload.i421 = load i64, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i421) #13, !srcloc !33
  %.val411 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.i
  store i64 %.0.copyload.i421, ptr %i.am, align 1
  %.val390 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.val390, i64 %i.ad
  %.0.copyload.i422 = load i64, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i422) #13, !srcloc !33
  %.val410 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.0.copyload.i422, ptr %i.ap, align 1
  %.val389 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val389, i64 %i.ac
  %.0.copyload.i423 = load i64, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i423) #13, !srcloc !33
  %.val409 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.f
  store i64 %.0.copyload.i423, ptr %i.ar, align 1
  %.val370 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.j
  %.0.copyload.i424 = load i32, ptr %i.as, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i424) #13, !srcloc !14
  %i.at = zext i32 %2 to i64                      ; 8 uses
  %i.au = add nuw nsw i64 %i.at, 12               ; 2 uses
  %.val369 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.au
  %.0.copyload.i425 = load i32, ptr %i.av, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i425) #13, !srcloc !14
  %i.aw = icmp ult i32 %.0.copyload.i424, %.0.copyload.i425
  br i1 %i.aw, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = add nuw nsw i32 %i.d, 1                 ; 3 uses
  %i.ay = icmp ugt i32 %.0.copyload.i424, %.0.copyload.i425
  br i1 %i.ay, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val388 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.val388, i64 %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.0.copyload.i426 = load i64, ptr %i.ba, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i426) #13, !srcloc !33
  %i.bb = lshr i64 %.0.copyload.i426, 32          ; 2 uses
  %.val387 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.val387, i64 %i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.0.copyload.i427 = load i64, ptr %i.bd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i427) #13, !srcloc !33
  %i.be = lshr i64 %.0.copyload.i427, 32          ; 2 uses
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.be) ; 2 uses
  %.not362 = icmp eq i64 %i.bf, 0
  br i1 %.not362, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = trunc i64 %.0.copyload.i427 to i32
  %i.bi = trunc i64 %.0.copyload.i426 to i32
  %i.bj = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.bh, i32 noundef %i.bi, i32 noundef %i.bg) #13 ; 2 uses
  %.not363 = icmp eq i32 %i.bj, 0
  br i1 %.not363, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %bb.m, label %bb.t

bb.l:                                             ; preds = %bb.j, %bb.i
  %.not364 = icmp samesign ugt i64 %i.bb, %i.be
  br i1 %.not364, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.g
  %i.bl = add nuw nsw i64 %i.at, 8                ; 4 uses
  %.val386 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val386, i64 %i.bl
  %.0.copyload.i428 = load i64, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i428) #13, !srcloc !33
  %.val408 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.ad
  store i64 %.0.copyload.i428, ptr %i.bn, align 1
  %.val385 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val385, i64 %i.at
  %.0.copyload.i429 = load i64, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i429) #13, !srcloc !33
  %.val407 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.ac
  store i64 %.0.copyload.i429, ptr %i.bp, align 1
  %.val384 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.val384, i64 %i.aa
  %.0.copyload.i430 = load i64, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i430) #13, !srcloc !33
  %.val406 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.bl
  store i64 %.0.copyload.i430, ptr %i.br, align 1
  %.val383 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.val383, i64 %i.i
  %.0.copyload.i431 = load i64, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i431) #13, !srcloc !33
  %.val405 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.at
  store i64 %.0.copyload.i431, ptr %i.bt, align 1
  %.val382 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val382, i64 %i.ad
  %.0.copyload.i432 = load i64, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i432) #13, !srcloc !33
  %.val404 = load ptr, ptr %i.e, align 8, !tbaa !13
end_hunk_6
begin_hunk_7_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsift_up0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3Aallocate0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x290x3A0x3A0x24_00x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3Aallocate0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cunsigned0x20int0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
.loopexit1653:                                    ; preds = %.preheader1652, %bb.l
  %.81425 = phi i32 [ %.0.copyload.i1608, %bb.l ], [ %i.je, %.preheader1652 ]
  %.5 = phi i32 [ %.0.copyload.i1610, %bb.l ], [ %i.jd, %.preheader1652 ] ; 2 uses
  %i.jg = add i32 %.0.copyload.i1609, 536870911
  %i.jh = and i32 %i.jg, 536870911
  %i.ji = icmp samesign ult i32 %i.jh, 7
  br i1 %i.ji, label %.loopexit1651, label %.preheader1650

.preheader1650:                                   ; preds = %.loopexit1653, %.preheader1650
  %.91426 = phi i32 [ %i.kh, %.preheader1650 ], [ %.81425, %.loopexit1653 ] ; 2 uses
  %.6 = phi i32 [ %i.kg, %.preheader1650 ], [ %.5, %.loopexit1653 ]
  %i.jj = zext i32 %.91426 to i64                 ; 8 uses
  %.val1490 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jk = getelementptr inbounds nuw i8, ptr %.val1490, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 56
  %.0.copyload.i1631 = load i32, ptr %i.jl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1631) #13, !srcloc !14
  %.val1489 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1489, i64 %i.jj
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  %.0.copyload.i1632 = load i32, ptr %i.jn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1632) #13, !srcloc !14
  %.val1488 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jo = getelementptr inbounds nuw i8, ptr %.val1488, i64 %i.jj
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %.0.copyload.i1633 = load i32, ptr %i.jp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1633) #13, !srcloc !14
  %.val1487 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jq = getelementptr inbounds nuw i8, ptr %.val1487, i64 %i.jj
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %.0.copyload.i1634 = load i32, ptr %i.jr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1634) #13, !srcloc !14
  %.val1486 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.js = getelementptr inbounds nuw i8, ptr %.val1486, i64 %i.jj
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %.0.copyload.i1635 = load i32, ptr %i.jt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1635) #13, !srcloc !14
  %.val1485 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ju = getelementptr inbounds nuw i8, ptr %.val1485, i64 %i.jj
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %.0.copyload.i1636 = load i32, ptr %i.jv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1636) #13, !srcloc !14
  %.val1484 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1484, i64 %i.jj
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.0.copyload.i1637 = load i32, ptr %i.jx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1637) #13, !srcloc !14
  %.val1483 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jy = getelementptr inbounds nuw i8, ptr %.val1483, i64 %i.jj
  %.0.copyload.i1638 = load i32, ptr %i.jy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1638) #13, !srcloc !14
  %i.jz = tail call i32 @llvm.umin.i32(i32 %.6, i32 %.0.copyload.i1638)
  %i.ka = tail call i32 @llvm.umin.i32(i32 %i.jz, i32 %.0.copyload.i1637)
  %i.kb = tail call i32 @llvm.umin.i32(i32 %i.ka, i32 %.0.copyload.i1636)
  %i.kc = tail call i32 @llvm.umin.i32(i32 %i.kb, i32 %.0.copyload.i1635)
  %i.kd = tail call i32 @llvm.umin.i32(i32 %i.kc, i32 %.0.copyload.i1634)
  %i.ke = tail call i32 @llvm.umin.i32(i32 %.0.copyload.i1633, i32 %i.kd)
  %i.kf = tail call i32 @llvm.umin.i32(i32 %.0.copyload.i1632, i32 %i.ke)
  %i.kg = tail call i32 @llvm.umin.i32(i32 %.0.copyload.i1631, i32 %i.kf) ; 2 uses
  %i.kh = add i32 %.91426, 64                     ; 2 uses
  %.not1469 = icmp eq i32 %i.kh, %i.gd
  br i1 %.not1469, label %.loopexit1651, label %.preheader1650

.loopexit1651:                                    ; preds = %.preheader1650, %.loopexit1653, %bb.k
  %.7 = phi i32 [ %.0.copyload.i1610, %bb.k ], [ %.5, %.loopexit1653 ], [ %i.kg, %.preheader1650 ]
  br i1 %.not1463, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.loopexit1651
  %i.ki = and i32 %.0.copyload.i1620, 7           ; 2 uses
  %.not1470 = icmp eq i32 %i.ki, 0
  br i1 %.not1470, label %.loopexit1649, label %.preheader1648

.preheader1648:                                   ; preds = %bb.m, %.preheader1648
  %.91440 = phi i32 [ %i.kn, %.preheader1648 ], [ 0, %bb.m ]
  %.101427 = phi i32 [ %i.kl, %.preheader1648 ], [ %.0.copyload.i1579, %bb.m ]
  %.17 = phi i32 [ %i.km, %.preheader1648 ], [ %.0.copyload.i1577, %bb.m ] ; 2 uses
  %i.kj = zext i32 %.17 to i64
  %.val1482 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1482, i64 %i.kj
  %.0.copyload.i1639 = load i32, ptr %i.kk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1639) #13, !srcloc !14
  %i.kl = tail call i32 @llvm.umin.i32(i32 %.101427, i32 %.0.copyload.i1639) ; 2 uses
  %i.km = add i32 %.17, 8                         ; 2 uses
  %i.kn = add nuw nsw i32 %.91440, 1              ; 2 uses
  %.not1471 = icmp eq i32 %i.kn, %i.ki
  br i1 %.not1471, label %.loopexit1649, label %.preheader1648

.loopexit1649:                                    ; preds = %.preheader1648, %bb.m
  %.111428 = phi i32 [ %.0.copyload.i1579, %bb.m ], [ %i.kl, %.preheader1648 ] ; 2 uses
  %.18 = phi i32 [ %.0.copyload.i1577, %bb.m ], [ %i.km, %.preheader1648 ]
  %i.ko = add i32 %.0.copyload.i1620, 536870911
  %i.kp = and i32 %i.ko, 536870911
  %i.kq = icmp samesign ult i32 %i.kp, 7
  br i1 %i.kq, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit1649, %.preheader
  %.121429 = phi i32 [ %i.lo, %.preheader ], [ %.111428, %.loopexit1649 ]
  %.19 = phi i32 [ %i.lp, %.preheader ], [ %.18, %.loopexit1649 ] ; 2 uses
  %i.kr = zext i32 %.19 to i64                    ; 8 uses
  %.val1481 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ks = getelementptr inbounds nuw i8, ptr %.val1481, i64 %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 56
  %.0.copyload.i1640 = load i32, ptr %i.kt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1640) #13, !srcloc !14
  %.val1480 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ku = getelementptr inbounds nuw i8, ptr %.val1480, i64 %i.kr
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  %.0.copyload.i1641 = load i32, ptr %i.kv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1641) #13, !srcloc !14
  %.val1479 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.kw = getelementptr inbounds nuw i8, ptr %.val1479, i64 %i.kr
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 40
  %.0.copyload.i1642 = load i32, ptr %i.kx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1642) #13, !srcloc !14
  %.val1478 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ky = getelementptr inbounds nuw i8, ptr %.val1478, i64 %i.kr
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %.0.copyload.i1643 = load i32, ptr %i.kz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1643) #13, !srcloc !14
  %.val1477 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.la = getelementptr inbounds nuw i8, ptr %.val1477, i64 %i.kr
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %.0.copyload.i1644 = load i32, ptr %i.lb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1644) #13, !srcloc !14
  %.val1476 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.lc = getelementptr inbounds nuw i8, ptr %.val1476, i64 %i.kr
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %.0.copyload.i1645 = load i32, ptr %i.ld, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1645) #13, !srcloc !14
  %.val1475 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.le = getelementptr inbounds nuw i8, ptr %.val1475, i64 %i.kr
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %.0.copyload.i1646 = load i32, ptr %i.lf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1646) #13, !srcloc !14
  %.val = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.lg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.kr
  %.0.copyload.i1647 = load i32, ptr %i.lg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1647) #13, !srcloc !14
  %i.lh = tail call i32 @llvm.umin.i32(i32 %.121429, i32 %.0.copyload.i1647)
  %i.li = tail call i32 @llvm.umin.i32(i32 %i.lh, i32 %.0.copyload.i1646)
  %i.lj = tail call i32 @llvm.umin.i32(i32 %i.li, i32 %.0.copyload.i1645)
  %i.lk = tail call i32 @llvm.umin.i32(i32 %i.lj, i32 %.0.copyload.i1644)
  %i.ll = tail call i32 @llvm.umin.i32(i32 %i.lk, i32 %.0.copyload.i1643)
  %i.lm = tail call i32 @llvm.umin.i32(i32 %i.ll, i32 %.0.copyload.i1642)
  %i.ln = tail call i32 @llvm.umin.i32(i32 %i.lm, i32 %.0.copyload.i1641)
  %i.lo = tail call i32 @llvm.umin.i32(i32 %.0.copyload.i1640, i32 %i.ln) ; 2 uses
  %i.lp = add i32 %.19, 64                        ; 2 uses
  %.not1472 = icmp eq i32 %i.lp, %i.hq
  br i1 %.not1472, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.loopexit1649, %.loopexit1651
  %.131430 = phi i32 [ %.0.copyload.i1579, %.loopexit1651 ], [ %.111428, %.loopexit1649 ], [ %i.lo, %.preheader ]
  %.not1473 = icmp ult i32 %.0.copyload.i1607, %.0.copyload.i1566
  %i.lq = icmp eq i32 %.131430, %.7
  %or.cond1474 = select i1 %.not1473, i1 %i.lq, i1 false
  br i1 %or.cond1474, label %bb.n, label %.loopexit..loopexit1663.loopexit_crit_edge

.loopexit..loopexit1663.loopexit_crit_edge:       ; preds = %.loopexit
  %.pre1726 = zext i32 %.01394 to i64
  br label %.loopexit1663

bb.n:                                             ; preds = %.loopexit, %.loopexit1655
  %i.lr = zext i32 %.01394 to i64
  %.val1561 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ls = getelementptr inbounds nuw i8, ptr %.val1561, i64 %i.lr
  store i32 %.0.copyload.i1607, ptr %i.ls, align 1
  %i.lt = icmp ugt i32 %i.fq, 1
  br i1 %i.lt, label %.preheader1662, label %.loopexit1663

.loopexit1663:                                    ; preds = %bb.n, %.loopexit..loopexit1663.loopexit_crit_edge, %bb.h
  %.pre-phi = phi i64 [ %i.j, %bb.h ], [ %.pre1726, %.loopexit..loopexit1663.loopexit_crit_edge ], [ %i.fu, %bb.n ]
  %.val1560 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.lu = getelementptr inbounds nuw i8, ptr %.val1560, i64 %.pre-phi
  store i32 %.0.copyload.i1566, ptr %i.lu, align 1
  br label %bb.o

bb.o:                                             ; preds = %.loopexit1665, %bb.a, %.loopexit1663
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cunsigned0x20int0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 26 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 276 uses
  %i.e = zext i32 %i.c to i64                     ; 7 uses
  %i.f = add nuw nsw i64 %i.e, 28                 ; 4 uses
  %.val1843 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val1843, i64 %i.f
  store i32 %1, ptr %i.g, align 1
  %i.h = add nuw nsw i64 %i.e, 20                 ; 10 uses
  %i.i = add nuw nsw i64 %i.e, 16                 ; 28 uses
  %i.j = add nuw nsw i64 %i.e, 12                 ; 19 uses
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.backedge.outer.backedge, %bb.a
  %.11554.ph = phi i32 [ %1, %bb.a ], [ %.21555, %.backedge.outer.backedge ]
  %.11549.ph = phi i32 [ %2, %bb.a ], [ %.11549.ph.be, %.backedge.outer.backedge ] ; 11 uses
  %.11544.ph = phi i32 [ %4, %bb.a ], [ %i.mq, %.backedge.outer.backedge ]
  %.01535.ph = phi i32 [ %1, %bb.a ], [ %.01535.ph.be, %.backedge.outer.backedge ]
  %i.k = add i32 %.11549.ph, -4                   ; 12 uses
  %i.l = zext i32 %i.k to i64                     ; 7 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.bn
  %.11554 = phi i32 [ %i.ti, %bb.bn ], [ %.11554.ph, %.backedge.outer ]
  %.11544 = phi i32 [ %i.mq, %bb.bn ], [ %.11544.ph, %.backedge.outer ]
  %.01535 = phi i32 [ %i.ti, %bb.bn ], [ %.01535.ph, %.backedge.outer ]
  br label %bb.b

bb.b:                                             ; preds = %bb.br, %.backedge
  %.21555 = phi i32 [ %.11554, %.backedge ], [ %.0.copyload.i2034, %bb.br ] ; 4 uses
  %.21545 = phi i32 [ %.11544, %.backedge ], [ %i.mq, %bb.br ] ; 2 uses
  %.11536 = phi i32 [ %.01535, %.backedge ], [ %.0.copyload.i2034, %bb.br ] ; 38 uses
  %i.m = sub i32 %.11549.ph, %.11536              ; 3 uses
  %i.n = ashr i32 %i.m, 2                         ; 5 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %.loopexit2045
    i32 1, label %.loopexit2045
    i32 2, label %bb.c
    i32 3, label %bb.bm
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = add nuw nsw i64 %i.e, 24                 ; 2 uses
  %.val1842 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val1842, i64 %i.o
  store i32 %i.k, ptr %i.p, align 1
  %.val1762 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val1762, i64 %i.l
  %.0.copyload.i = load i32, ptr %i.q, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.r = zext i32 %.11536 to i64
  %.val1761 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val1761, i64 %i.r
  %.0.copyload.i1844 = load i32, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1844) #13, !srcloc !14
  %.not = icmp ult i32 %.0.copyload.i, %.0.copyload.i1844
  br i1 %.not, label %bb.d, label %.loopexit2045

bb.d:                                             ; preds = %bb.c
  %.val1760 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val1760, i64 %i.f
  %.0.copyload.i1845 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1845) #13, !srcloc !14
  %i.u = zext i32 %.0.copyload.i1845 to i64       ; 2 uses
  %.val1759 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val1759, i64 %i.u
  %.0.copyload.i1846 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1846) #13, !srcloc !14
  %.val1758 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.val1758, i64 %i.o
  %.0.copyload.i1847 = load i32, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1847) #13, !srcloc !14
  %i.x = zext i32 %.0.copyload.i1847 to i64       ; 2 uses
  %.val1757 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.val1757, i64 %i.x
  %.0.copyload.i1848 = load i32, ptr %i.y, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1848) #13, !srcloc !14
  %.val1841 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val1841, i64 %i.u
  store i32 %.0.copyload.i1848, ptr %i.z, align 1
  %.val1840 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1840, i64 %i.x
  store i32 %.0.copyload.i1846, ptr %i.aa, align 1
  br label %.loopexit2045

bb.e:                                             ; preds = %bb.b
  %i.ab = add i32 %.11536, 4
  %i.ac = add i32 %.11536, 8
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fuse_branchless_sort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x3A0x3Avalue0x2C0x20void0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort4_maybe_branchless0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.11536, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.k)
  br label %.loopexit2045

bb.f:                                             ; preds = %bb.b
  %i.ad = add i32 %.11536, 4
  %i.ae = add i32 %.11536, 8
  %i.af = add i32 %.11536, 12
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fuse_branchless_sort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x3A0x3Avalue0x2C0x20void0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_maybe_branchless0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.11536, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.k)
  br label %.loopexit2045

bb.g:                                             ; preds = %bb.b
  %i.ag = icmp slt i32 %i.m, 124
  br i1 %i.ag, label %bb.h, label %5

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !32
  %i.ai = add i32 %i.ah, -16                      ; 2 uses
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !32
  %i.aj = add i32 %.11536, 4                      ; 5 uses
  %i.ak = add i32 %.11536, 8                      ; 6 uses
  %i.al = zext i32 %i.aj to i64                   ; 4 uses
  %.val35.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val35.i.i, i64 %i.al
  %.0.copyload.i.i.i = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i.i) #13, !srcloc !14
  %i.an = zext i32 %i.ak to i64                   ; 4 uses
  %.val34.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 %i.an
  %.0.copyload.i38.i.i = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i38.i.i) #13, !srcloc !14
  %i.ap = icmp ult i32 %.0.copyload.i.i.i, %.0.copyload.i38.i.i ; 2 uses
  %i.aq = select i1 %i.ap, i32 %i.aj, i32 %i.ak
  %i.ar = zext i32 %i.aq to i64
  %.val33.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 %i.ar
  %.0.copyload.i39.i.i = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i39.i.i) #13, !srcloc !14
  %i.at = select i1 %i.ap, i32 %i.ak, i32 %i.aj
  %i.au = zext i32 %i.at to i64
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.au
  %.0.copyload.i40.i.i = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i40.i.i) #13, !srcloc !14
  %.val37.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val37.i.i, i64 %i.an
  store i32 %.0.copyload.i40.i.i, ptr %i.aw, align 1
  %.val36.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val36.i.i, i64 %i.al
  store i32 %.0.copyload.i39.i.i, ptr %i.ax, align 1
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.az = add i32 %i.ay, -16                      ; 2 uses
  store i32 %i.az, ptr %i.a, align 8, !tbaa !32
  %.val83.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.val83.i.i, i64 %i.an
  %.0.copyload.i.i11.i = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i11.i) #13, !srcloc !14
  %i.bb = zext i32 %.11536 to i64                 ; 3 uses
  %.val82.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.val82.i.i, i64 %i.bb
  %.0.copyload.i88.i.i = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88.i.i) #13, !srcloc !14
  %i.bd = icmp ult i32 %.0.copyload.i.i11.i, %.0.copyload.i88.i.i ; 2 uses
  %i.be = select i1 %i.bd, i32 %i.ak, i32 %.11536
  %i.bf = zext i32 %i.be to i64
  %.val81.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val81.i.i, i64 %i.bf
  %.0.copyload.i89.i.i = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89.i.i) #13, !srcloc !14
  %i.bh = zext i32 %i.az to i64
  %.val87.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val87.i.i, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 %.0.copyload.i89.i.i, ptr %i.bj, align 1
  %i.bk = select i1 %i.bd, i32 %.11536, i32 %i.ak
  %i.bl = zext i32 %i.bk to i64
  %.val80.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val80.i.i, i64 %i.bl
  %.0.copyload.i90.i.i = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90.i.i) #13, !srcloc !14
  %.val86.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val86.i.i, i64 %i.an
  store i32 %.0.copyload.i90.i.i, ptr %i.bn, align 1
  %i.bo = add i32 %i.ay, -4                       ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %.val79.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.val79.i.i, i64 %i.bp
  %.0.copyload.i91.i.i = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91.i.i) #13, !srcloc !14
  %.val78.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val78.i.i, i64 %i.al
  %.0.copyload.i92.i.i = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i92.i.i) #13, !srcloc !14
  %i.bs = icmp ult i32 %.0.copyload.i91.i.i, %.0.copyload.i92.i.i ; 2 uses
  %i.bt = select i1 %i.bs, i32 %.11536, i32 %i.aj
  %i.bu = zext i32 %i.bt to i64
  %.val77.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.val77.i.i, i64 %i.bu
  %.0.copyload.i93.i.i = load i32, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i93.i.i) #13, !srcloc !14
  %.val85.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.val85.i.i, i64 %i.bb
  store i32 %.0.copyload.i93.i.i, ptr %i.bw, align 1
  %i.bx = select i1 %i.bs, i32 %i.aj, i32 %i.bo
  %i.by = zext i32 %i.bx to i64
  %.val.i12.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i12.i, i64 %i.by
  %.0.copyload.i94.i.i = load i32, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i94.i.i) #13, !srcloc !14
  %.val84.i.i = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.val84.i.i, i64 %i.al
  store i32 %.0.copyload.i94.i.i, ptr %i.ca, align 1
  store i32 %i.ay, ptr %i.a, align 8, !tbaa !32
  %i.cb = add i32 %.11536, 12                     ; 3 uses
  %i.cc = zext i32 %i.ai to i64                   ; 3 uses
  %i.cd = add nuw nsw i64 %i.cc, 12               ; 5 uses
  %.val18392156 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.val18392156, i64 %i.cd
  store i32 %i.cb, ptr %i.ce, align 1
  %i.cf = icmp eq i32 %i.cb, %.11549.ph
  br i1 %i.cf, label %.loopexit2045, label %.lr.ph2160

.lr.ph2160:                                       ; preds = %bb.h
  %i.cg = add nuw nsw i64 %i.cc, 8                ; 3 uses
  %i.ch = add nuw nsw i64 %i.cc, 4                ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph2160, %bb.m
  %.315462158 = phi i32 [ %i.ak, %.lr.ph2160 ], [ %.0.copyload.i1860, %bb.m ] ; 2 uses
  %.315562157 = phi i32 [ %i.cb, %.lr.ph2160 ], [ %i.dj, %bb.m ]
  %i.ci = zext i32 %.315562157 to i64
  %.val1756 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1756, i64 %i.ci
  %.0.copyload.i1849 = load i32, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1849) #13, !srcloc !14
  %i.ck = zext i32 %.315462158 to i64
  %.val1755 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1755, i64 %i.ck
  %.0.copyload.i1850 = load i32, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1850) #13, !srcloc !14
  %i.cm = icmp ult i32 %.0.copyload.i1849, %.0.copyload.i1850
  br i1 %i.cm, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.val1754 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1754, i64 %i.cd
  %.0.copyload.i1851 = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1851) #13, !srcloc !14
  %i.co = zext i32 %.0.copyload.i1851 to i64
  %.val1753 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1753, i64 %i.co
  %.0.copyload.i1852 = load i32, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1852) #13, !srcloc !14
  %.val1838 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1838, i64 %i.cg
  store i32 %.0.copyload.i1852, ptr %i.cq, align 1
  %.val1837 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1837, i64 %i.ch
  store i32 %.315462158, ptr %i.cr, align 1
  %.val1752 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1752, i64 %i.cd
  %.0.copyload.i1853 = load i32, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1853) #13, !srcloc !14
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.41557 = phi i32 [ %.0.copyload.i1853, %bb.j ], [ %.0.copyload.i1856, %bb.l ]
  %.val1751 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1751, i64 %i.ch
  %.0.copyload.i1854 = load i32, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1854) #13, !srcloc !14
  %i.cu = zext i32 %.0.copyload.i1854 to i64
  %.val1750 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1750, i64 %i.cu
  %.0.copyload.i1855 = load i32, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1855) #13, !srcloc !14
  %i.cw = zext i32 %.41557 to i64
  %.val1836 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1836, i64 %i.cw
  store i32 %.0.copyload.i1855, ptr %i.cx, align 1
  %.val1749 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1749, i64 %i.ch
  %.0.copyload.i1856 = load i32, ptr %i.cy, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1856) #13, !srcloc !14
  %i.cz = icmp eq i32 %.11536, %.0.copyload.i1856
  br i1 %i.cz, label %split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.da = add i32 %.0.copyload.i1856, -4          ; 2 uses
  %.val1835 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.db = getelementptr inbounds nuw i8, ptr %.val1835, i64 %i.ch
  store i32 %i.da, ptr %i.db, align 1
  %.val1748 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.val1748, i64 %i.cg
  %.0.copyload.i1857 = load i32, ptr %i.dc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1857) #13, !srcloc !14
  %i.dd = zext i32 %i.da to i64
  %.val1747 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.val1747, i64 %i.dd
  %.0.copyload.i1858 = load i32, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1858) #13, !srcloc !14
  %i.df = icmp ult i32 %.0.copyload.i1857, %.0.copyload.i1858
  br i1 %i.df, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre2231 = zext i32 %.0.copyload.i1856 to i64
  br label %split

split:                                            ; preds = %bb.k, %._crit_edge
  %.pre-phi = phi i64 [ %.pre2231, %._crit_edge ], [ %i.bb, %bb.k ]
  %.val1746 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %.val1746, i64 %i.cg
  %.0.copyload.i1859 = load i32, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1859) #13, !srcloc !14
  %.val1834 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1834, i64 %.pre-phi
  store i32 %.0.copyload.i1859, ptr %i.dh, align 1
  br label %bb.m

bb.m:                                             ; preds = %split, %bb.i
  %.val1745 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %.val1745, i64 %i.cd
  %.0.copyload.i1860 = load i32, ptr %i.di, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1860) #13, !srcloc !14
  %i.dj = add i32 %.0.copyload.i1860, 4           ; 3 uses
  %.val1839 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.val1839, i64 %i.cd
  store i32 %i.dj, ptr %i.dk, align 1
  %i.dl = icmp eq i32 %i.dj, %.11549.ph
  br i1 %i.dl, label %.loopexit2045, label %bb.i

5:                                                ; preds = %bb.g
  %.not1573 = icmp eq i32 %.21545, 0
  br i1 %.not1573, label %bb.n, label %bb.ac

bb.n:                                             ; preds = %5
  %i.dm = icmp eq i32 %.11549.ph, %.11536
  br i1 %i.dm, label %.loopexit2045, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = load i32, ptr %i.a, align 8, !tbaa !32
  %i.do = add i32 %i.dn, -16                      ; 2 uses
  store i32 %i.do, ptr %i.a, align 8, !tbaa !32
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = add nuw nsw i64 %i.dp, 12               ; 2 uses
  %.val1833 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dr = getelementptr inbounds nuw i8, ptr %.val1833, i64 %i.dq
  store i32 %.11536, ptr %i.dr, align 1
  %i.ds = add nsw i32 %i.n, -2
  %i.dt = lshr i32 %i.ds, 1
  br label %bb.p

.preheader:                                       ; preds = %bb.p
  %i.du = add nuw nsw i64 %i.dp, 8                ; 2 uses
  %.val18322144 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %.val18322144, i64 %i.du
  store i32 %.11549.ph, ptr %i.dv, align 1
  %.val17442145 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %.val17442145, i64 %i.dq
  %.0.copyload.i18612146 = load i32, ptr %i.dw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i18612146) #13, !srcloc !14
  %i.dx = sub i32 %.11549.ph, %.0.copyload.i18612146
  %i.dy = ashr i32 %i.dx, 2                       ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 1
  br i1 %i.dz, label %.lr.ph2154.preheader, label %._crit_edge2155

.lr.ph2154.preheader:                             ; preds = %.preheader
  %.pre = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ea = add i32 %.pre, -16                      ; 2 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = add nuw nsw i64 %i.eb, 12               ; 3 uses
  %i.ed = add nuw nsw i64 %i.eb, 8                ; 3 uses
  br label %.lr.ph2154

bb.p:                                             ; preds = %bb.o, %bb.p
  %.215502143 = phi i32 [ %i.dt, %bb.o ], [ %i.eg, %bb.p ] ; 3 uses
  %i.ee = shl i32 %.215502143, 2
  %i.ef = add i32 %i.ee, %.11536
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsift_down0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cunsigned0x20int0x2A0x3E0x3A0x3Adifference_type0x2C0x20unsigned0x20int0x2A0x29(ptr noundef nonnull %0, i32 noundef %.11536, i32 noundef %i.n, i32 noundef %i.ef)
  %i.eg = add nsw i32 %.215502143, -1
  %i.eh = icmp eq i32 %.215502143, 0
  br i1 %i.eh, label %.preheader, label %bb.p

.lr.ph2154:                                       ; preds = %.lr.ph2154.preheader, %bb.ab
  %.415522152 = phi i32 [ %i.hr, %bb.ab ], [ %i.dy, %.lr.ph2154.preheader ] ; 4 uses
  %.615592151 = phi i32 [ %i.fn, %bb.ab ], [ %.11549.ph, %.lr.ph2154.preheader ]
  store i32 %i.ea, ptr %i.a, align 8, !tbaa !32
  %.val1829 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1829, i64 %i.ec
  store i32 %.0.copyload.i18612146, ptr %i.ei, align 1
  %.val1735 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %.val1735, i64 %i.ec
  %.0.copyload.i1870 = load i32, ptr %i.ej, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1870) #13, !srcloc !14
  %i.ek = zext i32 %.0.copyload.i1870 to i64
  %.val1734 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %.val1734, i64 %i.ek
  %.0.copyload.i1871 = load i32, ptr %i.el, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1871) #13, !srcloc !14
  %i.em = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.en = add i32 %i.em, -16                      ; 2 uses
  store i32 %i.en, ptr %i.a, align 8, !tbaa !32
  %i.eo = add nsw i32 %.415522152, -2
  %i.ep = lshr i32 %i.eo, 1
  %i.eq = zext i32 %i.en to i64
  %i.er = add nuw nsw i64 %i.eq, 12               ; 5 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph2154
  %.7 = phi i32 [ 0, %.lr.ph2154 ], [ %.8, %bb.t ] ; 2 uses
  %.21537 = phi i32 [ %.0.copyload.i1870, %.lr.ph2154 ], [ %.0.copyload.i1877, %bb.t ] ; 2 uses
  %i.es = shl i32 %.7, 2
  %i.et = add i32 %i.es, %.21537                  ; 2 uses
  %i.eu = add i32 %i.et, 4
  %.val1828 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %.val1828, i64 %i.er
  store i32 %i.eu, ptr %i.ev, align 1
  %i.ew = shl i32 %.7, 1                          ; 2 uses
  %i.ex = or disjoint i32 %i.ew, 1                ; 2 uses
  %i.ey = add i32 %i.ew, 2                        ; 2 uses
  %.not1591 = icmp slt i32 %i.ey, %.415522152
  br i1 %.not1591, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ez = zext i32 %i.et to i64                   ; 2 uses
  %.val1733 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fa = getelementptr inbounds nuw i8, ptr %.val1733, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %.0.copyload.i1872 = load i32, ptr %i.fb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1872) #13, !srcloc !14
  %.val1732 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %.val1732, i64 %i.ez
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.0.copyload.i1873 = load i32, ptr %i.fd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1873) #13, !srcloc !14
  %.not1592 = icmp ult i32 %.0.copyload.i1872, %.0.copyload.i1873
  br i1 %.not1592, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.val1731 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fe = getelementptr inbounds nuw i8, ptr %.val1731, i64 %i.er
  %.0.copyload.i1874 = load i32, ptr %i.fe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1874) #13, !srcloc !14
  %i.ff = add i32 %.0.copyload.i1874, 4
  %.val1827 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fg = getelementptr inbounds nuw i8, ptr %.val1827, i64 %i.er
  store i32 %i.ff, ptr %i.fg, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.s
  %.8 = phi i32 [ %i.ex, %bb.q ], [ %i.ex, %bb.r ], [ %i.ey, %bb.s ] ; 2 uses
  %.val1730 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fh = getelementptr inbounds nuw i8, ptr %.val1730, i64 %i.er
  %.0.copyload.i1875 = load i32, ptr %i.fh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1875) #13, !srcloc !14
  %i.fi = zext i32 %.0.copyload.i1875 to i64
  %.val1729 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %.val1729, i64 %i.fi
  %.0.copyload.i1876 = load i32, ptr %i.fj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1876) #13, !srcloc !14
  %i.fk = zext i32 %.21537 to i64
  %.val1826 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fl = getelementptr inbounds nuw i8, ptr %.val1826, i64 %i.fk
  store i32 %.0.copyload.i1876, ptr %i.fl, align 1
  %.val1728 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fm = getelementptr inbounds nuw i8, ptr %.val1728, i64 %i.er
  %.0.copyload.i1877 = load i32, ptr %i.fm, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1877) #13, !srcloc !14
  %.not1593 = icmp sgt i32 %.8, %i.ep
  br i1 %.not1593, label %bb.u, label %bb.q

bb.u:                                             ; preds = %bb.t
  store i32 %i.em, ptr %i.a, align 8, !tbaa !32
  %i.fn = add i32 %.615592151, -4                 ; 3 uses
  %.val1825 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1825, i64 %i.ed
  store i32 %i.fn, ptr %i.fo, align 1
  %i.fp = icmp eq i32 %i.fn, %.0.copyload.i1877
  br i1 %i.fp, label %.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1727 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1727, i64 %i.ed
  %.0.copyload.i1878 = load i32, ptr %i.fq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1878) #13, !srcloc !14
  %i.fr = zext i32 %.0.copyload.i1878 to i64
  %.val1726 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %.val1726, i64 %i.fr
  %.0.copyload.i1879 = load i32, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1879) #13, !srcloc !14
  %i.ft = zext i32 %.0.copyload.i1877 to i64      ; 2 uses
  %.val1823 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %.val1823, i64 %i.ft
  store i32 %.0.copyload.i1879, ptr %i.fu, align 1
  %.val1725 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fv = getelementptr inbounds nuw i8, ptr %.val1725, i64 %i.ed
  %.0.copyload.i1880 = load i32, ptr %i.fv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1880) #13, !srcloc !14
  %i.fw = zext i32 %.0.copyload.i1880 to i64
  %.val1822 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fx = getelementptr inbounds nuw i8, ptr %.val1822, i64 %i.fw
  store i32 %.0.copyload.i1871, ptr %i.fx, align 1
  %.val1724 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1724, i64 %i.ec
  %.0.copyload.i1881 = load i32, ptr %i.fy, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1881) #13, !srcloc !14
  %i.fz = load i32, ptr %i.a, align 8, !tbaa !32
  %i.ga = add i32 %i.fz, -16                      ; 2 uses
  store i32 %i.ga, ptr %i.a, align 8, !tbaa !32
  %i.gb = add i32 %.0.copyload.i1877, 4
  %i.gc = sub i32 %i.gb, %.0.copyload.i1881
  %i.gd = ashr i32 %i.gc, 2                       ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 2
  br i1 %i.ge, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gf = zext i32 %i.ga to i64                   ; 3 uses
  %i.gg = add nuw nsw i64 %i.gf, 12               ; 5 uses
  %.val1821 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %.val1821, i64 %i.gg
  store i32 %.0.copyload.i1877, ptr %i.gh, align 1
  %i.gi = add nsw i32 %i.gd, -2
  %i.gj = lshr i32 %i.gi, 1                       ; 2 uses
  %i.gk = shl nuw nsw i32 %i.gj, 2
  %i.gl = add i32 %i.gk, %.0.copyload.i1881       ; 2 uses
  %i.gm = add nuw nsw i64 %i.gf, 8                ; 4 uses
  %.val1820 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gn = getelementptr inbounds nuw i8, ptr %.val1820, i64 %i.gm
  store i32 %i.gl, ptr %i.gn, align 1
  %i.go = zext i32 %i.gl to i64
  %.val1723 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gp = getelementptr inbounds nuw i8, ptr %.val1723, i64 %i.go
  %.0.copyload.i1882 = load i32, ptr %i.gp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1882) #13, !srcloc !14
  %.val1722 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1722, i64 %i.ft
  %.0.copyload.i1883 = load i32, ptr %i.gq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1883) #13, !srcloc !14
  %.not1594 = icmp ult i32 %.0.copyload.i1882, %.0.copyload.i1883
  br i1 %.not1594, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %.val1721 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %.val1721, i64 %i.gg
  %.0.copyload.i1884 = load i32, ptr %i.gr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1884) #13, !srcloc !14
  %i.gs = zext i32 %.0.copyload.i1884 to i64
  %.val1720 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gt = getelementptr inbounds nuw i8, ptr %.val1720, i64 %i.gs
  %.0.copyload.i1885 = load i32, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1885) #13, !srcloc !14
  %i.gu = add nuw nsw i64 %i.gf, 4                ; 3 uses
  %.val1819 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gv = getelementptr inbounds nuw i8, ptr %.val1819, i64 %i.gu
  store i32 %.0.copyload.i1885, ptr %i.gv, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.41547 = phi i32 [ %i.gj, %bb.x ], [ %i.hf, %bb.z ] ; 2 uses
  %.val1719 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gw = getelementptr inbounds nuw i8, ptr %.val1719, i64 %i.gg
  %.0.copyload.i1886 = load i32, ptr %i.gw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1886) #13, !srcloc !14
  %.val1718 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1718, i64 %i.gm
  %.0.copyload.i1887 = load i32, ptr %i.gx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1887) #13, !srcloc !14
  %i.gy = zext i32 %.0.copyload.i1887 to i64
  %.val1717 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gz = getelementptr inbounds nuw i8, ptr %.val1717, i64 %i.gy
  %.0.copyload.i1888 = load i32, ptr %i.gz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1888) #13, !srcloc !14
  %i.ha = zext i32 %.0.copyload.i1886 to i64
  %.val1818 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hb = getelementptr inbounds nuw i8, ptr %.val1818, i64 %i.ha
  store i32 %.0.copyload.i1888, ptr %i.hb, align 1
  %.val1716 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1716, i64 %i.gm
  %.0.copyload.i1889 = load i32, ptr %i.hc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1889) #13, !srcloc !14
  %.val1817 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1817, i64 %i.gg
  store i32 %.0.copyload.i1889, ptr %i.hd, align 1
  %.not1595 = icmp eq i32 %.41547, 0
  br i1 %.not1595, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.he = add nsw i32 %.41547, -1
  %i.hf = lshr i32 %i.he, 1                       ; 2 uses
  %i.hg = shl nuw nsw i32 %i.hf, 2
  %i.hh = add i32 %i.hg, %.0.copyload.i1881       ; 2 uses
  %.val1816 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hi = getelementptr inbounds nuw i8, ptr %.val1816, i64 %i.gm
  store i32 %i.hh, ptr %i.hi, align 1
  %i.hj = zext i32 %i.hh to i64
  %.val1715 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hk = getelementptr inbounds nuw i8, ptr %.val1715, i64 %i.hj
  %.0.copyload.i1890 = load i32, ptr %i.hk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1890) #13, !srcloc !14
  %.val1714 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hl = getelementptr inbounds nuw i8, ptr %.val1714, i64 %i.gu
  %.0.copyload.i1891 = load i32, ptr %i.hl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1891) #13, !srcloc !14
  %i.hm = icmp ult i32 %.0.copyload.i1890, %.0.copyload.i1891
  br i1 %i.hm, label %bb.y, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val1713 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hn = getelementptr inbounds nuw i8, ptr %.val1713, i64 %i.gg
  %.0.copyload.i1892 = load i32, ptr %i.hn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1892) #13, !srcloc !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.aa
  %.31538 = phi i32 [ %.0.copyload.i1892, %bb.aa ], [ %.0.copyload.i1889, %bb.y ]
  %.val1712 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ho = getelementptr inbounds nuw i8, ptr %.val1712, i64 %i.gu
  %.0.copyload.i1893 = load i32, ptr %i.ho, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1893) #13, !srcloc !14
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %.loopexit
  %.31538.sink = phi i32 [ %.31538, %.loopexit ], [ %.0.copyload.i1877, %bb.u ]
  %.0.copyload.i1893.sink = phi i32 [ %.0.copyload.i1893, %.loopexit ], [ %.0.copyload.i1871, %bb.u ]
  %i.hp = zext i32 %.31538.sink to i64
  %.val1815 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hq = getelementptr inbounds nuw i8, ptr %.val1815, i64 %i.hp
  store i32 %.0.copyload.i1893.sink, ptr %i.hq, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.v, %bb.w
  store i32 %.pre, ptr %i.a, align 8, !tbaa !32
  %i.hr = add nsw i32 %.415522152, -1
  %i.hs = icmp sgt i32 %.415522152, 2
  br i1 %i.hs, label %.lr.ph2154, label %._crit_edge2155

._crit_edge2155:                                  ; preds = %bb.ab, %.preheader
  %.val1711 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1711, i64 %i.du
  %.0.copyload.i1894 = load i32, ptr %i.ht, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1894) #13, !srcloc !14
  br label %.loopexit2045

bb.ac:                                            ; preds = %5
  %i.hu = shl nuw nsw i32 %i.n, 1
  %i.hv = and i32 %i.hu, 1073741820
  %i.hw = add i32 %i.hv, %.11536                  ; 7 uses
  %.val1814 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hx = getelementptr inbounds nuw i8, ptr %.val1814, i64 %i.h
  store i32 %i.hw, ptr %i.hx, align 1
  %i.hy = icmp samesign ugt i32 %i.m, 3996
  br i1 %i.hy, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.hz = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ia = add i32 %i.hz, -32                      ; 2 uses
  store i32 %i.ia, ptr %i.a, align 8, !tbaa !32
  %i.ib = and i32 %i.n, 536870908                 ; 2 uses
  %i.ic = add i32 %i.ib, %.11536                  ; 5 uses
  %i.id = zext i32 %i.ia to i64                   ; 5 uses
  %i.ie = add nuw nsw i64 %i.id, 24               ; 4 uses
  %.val1813 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.if = getelementptr inbounds nuw i8, ptr %.val1813, i64 %i.ie
  store i32 %i.ic, ptr %i.if, align 1
  %i.ig = add nuw nsw i64 %i.id, 28               ; 2 uses
  %.val1812 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ih = getelementptr inbounds nuw i8, ptr %.val1812, i64 %i.ig
  store i32 %.11536, ptr %i.ih, align 1
  %i.ii = add nuw nsw i64 %i.id, 20               ; 4 uses
  %.val1811 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ij = getelementptr inbounds nuw i8, ptr %.val1811, i64 %i.ii
  store i32 %i.hw, ptr %i.ij, align 1
  %i.ik = add i32 %i.hw, %i.ib                    ; 3 uses
  %i.il = add nuw nsw i64 %i.id, 16               ; 4 uses
  %.val1810 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.im = getelementptr inbounds nuw i8, ptr %.val1810, i64 %i.il
  store i32 %i.ik, ptr %i.im, align 1
  %i.in = add nuw nsw i64 %i.id, 12               ; 2 uses
  %.val1809 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.io = getelementptr inbounds nuw i8, ptr %.val1809, i64 %i.in
  store i32 %i.k, ptr %i.io, align 1
  %i.ip = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.iq = add i32 %i.ip, -16                      ; 2 uses
  store i32 %i.iq, ptr %i.a, align 8, !tbaa !32
  %i.ir = zext i32 %i.iq to i64                   ; 5 uses
  %i.is = add nuw nsw i64 %i.ir, 8                ; 4 uses
  %.val1808 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.it = getelementptr inbounds nuw i8, ptr %.val1808, i64 %i.is
  store i32 %i.ic, ptr %i.it, align 1
  %i.iu = add nuw nsw i64 %i.ir, 12               ; 2 uses
  %.val1807 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.iv = getelementptr inbounds nuw i8, ptr %.val1807, i64 %i.iu
  store i32 %.11536, ptr %i.iv, align 1
  %i.iw = add nuw nsw i64 %i.ir, 4                ; 4 uses
  %.val1806 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ix = getelementptr inbounds nuw i8, ptr %.val1806, i64 %i.iw
  store i32 %i.hw, ptr %i.ix, align 1
  %.val1805 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1805, i64 %i.ir
  store i32 %i.ik, ptr %i.iy, align 1
  %i.iz = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.11536, i32 noundef %i.ic, i32 noundef %i.hw) ; 4 uses
  %i.ja = zext i32 %i.ik to i64                   ; 2 uses
  %.val1710 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jb = getelementptr inbounds nuw i8, ptr %.val1710, i64 %i.ja
  %.0.copyload.i1895 = load i32, ptr %i.jb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1895) #13, !srcloc !14
  %i.jc = zext i32 %i.hw to i64                   ; 2 uses
  %.val1709 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jd = getelementptr inbounds nuw i8, ptr %.val1709, i64 %i.jc
  %.0.copyload.i1896 = load i32, ptr %i.jd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1896) #13, !srcloc !14
  %.not1574 = icmp ult i32 %.0.copyload.i1895, %.0.copyload.i1896
  br i1 %.not1574, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %.val1708 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.je = getelementptr inbounds nuw i8, ptr %.val1708, i64 %i.iw
  %.0.copyload.i1897 = load i32, ptr %i.je, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1897) #13, !srcloc !14
  %i.jf = zext i32 %.0.copyload.i1897 to i64      ; 2 uses
  %.val1707 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jg = getelementptr inbounds nuw i8, ptr %.val1707, i64 %i.jf
  %.0.copyload.i1898 = load i32, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1898) #13, !srcloc !14
  %.val1706 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jh = getelementptr inbounds nuw i8, ptr %.val1706, i64 %i.ir
  %.0.copyload.i1899 = load i32, ptr %i.jh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1899) #13, !srcloc !14
  %i.ji = zext i32 %.0.copyload.i1899 to i64      ; 2 uses
  %.val1705 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jj = getelementptr inbounds nuw i8, ptr %.val1705, i64 %i.ji
  %.0.copyload.i1900 = load i32, ptr %i.jj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1900) #13, !srcloc !14
  %.val1804 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jk = getelementptr inbounds nuw i8, ptr %.val1804, i64 %i.jf
  store i32 %.0.copyload.i1900, ptr %i.jk, align 1
  %.val1803 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1803, i64 %i.ji
  store i32 %.0.copyload.i1898, ptr %i.jl, align 1
  %.val1704 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1704, i64 %i.iw
  %.0.copyload.i1901 = load i32, ptr %i.jm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1901) #13, !srcloc !14
  %i.jn = zext i32 %.0.copyload.i1901 to i64
  %.val1703 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jo = getelementptr inbounds nuw i8, ptr %.val1703, i64 %i.jn
  %.0.copyload.i1902 = load i32, ptr %i.jo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1902) #13, !srcloc !14
  %i.jp = zext i32 %i.ic to i64
  %.val1702 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jq = getelementptr inbounds nuw i8, ptr %.val1702, i64 %i.jp
  %.0.copyload.i1903 = load i32, ptr %i.jq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1903) #13, !srcloc !14
  %.not1575 = icmp ult i32 %.0.copyload.i1902, %.0.copyload.i1903
  br i1 %.not1575, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jr = add nuw nsw i32 %i.iz, 1
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %.val1701 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.js = getelementptr inbounds nuw i8, ptr %.val1701, i64 %i.is
  %.0.copyload.i1904 = load i32, ptr %i.js, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1904) #13, !srcloc !14
  %i.jt = zext i32 %.0.copyload.i1904 to i64      ; 2 uses
  %.val1700 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ju = getelementptr inbounds nuw i8, ptr %.val1700, i64 %i.jt
  %.0.copyload.i1905 = load i32, ptr %i.ju, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1905) #13, !srcloc !14
  %.val1699 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jv = getelementptr inbounds nuw i8, ptr %.val1699, i64 %i.iw
  %.0.copyload.i1906 = load i32, ptr %i.jv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1906) #13, !srcloc !14
  %i.jw = zext i32 %.0.copyload.i1906 to i64      ; 2 uses
  %.val1698 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jx = getelementptr inbounds nuw i8, ptr %.val1698, i64 %i.jw
  %.0.copyload.i1907 = load i32, ptr %i.jx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1907) #13, !srcloc !14
  %.val1802 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jy = getelementptr inbounds nuw i8, ptr %.val1802, i64 %i.jt
  store i32 %.0.copyload.i1907, ptr %i.jy, align 1
  %.val1801 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jz = getelementptr inbounds nuw i8, ptr %.val1801, i64 %i.jw
  store i32 %.0.copyload.i1905, ptr %i.jz, align 1
  %.val1697 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ka = getelementptr inbounds nuw i8, ptr %.val1697, i64 %i.is
  %.0.copyload.i1908 = load i32, ptr %i.ka, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1908) #13, !srcloc !14
  %i.kb = zext i32 %.0.copyload.i1908 to i64
  %.val1696 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kc = getelementptr inbounds nuw i8, ptr %.val1696, i64 %i.kb
  %.0.copyload.i1909 = load i32, ptr %i.kc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1909) #13, !srcloc !14
  %i.kd = zext i32 %.11536 to i64
  %.val1695 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1695, i64 %i.kd
  %.0.copyload.i1910 = load i32, ptr %i.ke, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1910) #13, !srcloc !14
  %.not1576 = icmp ult i32 %.0.copyload.i1909, %.0.copyload.i1910
  br i1 %.not1576, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kf = add nuw nsw i32 %i.iz, 2
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.kg = add nuw nsw i32 %i.iz, 3
  %.val1694 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %.val1694, i64 %i.iu
  %.0.copyload.i1911 = load i32, ptr %i.kh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1911) #13, !srcloc !14
  %i.ki = zext i32 %.0.copyload.i1911 to i64      ; 2 uses
  %.val1693 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1693, i64 %i.ki
  %.0.copyload.i1912 = load i32, ptr %i.kj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1912) #13, !srcloc !14
  %.val1692 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1692, i64 %i.is
  %.0.copyload.i1913 = load i32, ptr %i.kk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1913) #13, !srcloc !14
  %i.kl = zext i32 %.0.copyload.i1913 to i64      ; 2 uses
  %.val1691 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.km = getelementptr inbounds nuw i8, ptr %.val1691, i64 %i.kl
  %.0.copyload.i1914 = load i32, ptr %i.km, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1914) #13, !srcloc !14
  %.val1800 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kn = getelementptr inbounds nuw i8, ptr %.val1800, i64 %i.ki
  store i32 %.0.copyload.i1914, ptr %i.kn, align 1
  %.val1799 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ko = getelementptr inbounds nuw i8, ptr %.val1799, i64 %i.kl
  store i32 %.0.copyload.i1912, ptr %i.ko, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ad, %bb.ai, %bb.ah, %bb.af
  %.01539 = phi i32 [ %i.iz, %bb.ad ], [ %i.jr, %bb.af ], [ %i.kf, %bb.ah ], [ %i.kg, %bb.ai ] ; 5 uses
  store i32 %i.ip, ptr %i.a, align 8, !tbaa !32
  %.val1690 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kp = getelementptr inbounds nuw i8, ptr %.val1690, i64 %i.l
  %.0.copyload.i1915 = load i32, ptr %i.kp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1915) #13, !srcloc !14
  %.val1689 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1689, i64 %i.ja
  %.0.copyload.i1916 = load i32, ptr %i.kq, align 1 ; 2 uses
end_hunk_7
begin_hunk_8_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cunsigned0x20int0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  %i.rt = getelementptr inbounds nuw i8, ptr %.val35.i.i1997, i64 %i.rs
  %.0.copyload.i.i.i1998 = load i32, ptr %i.rt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i.i1998) #13, !srcloc !14
  %.val34.i.i1999 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ru = getelementptr inbounds nuw i8, ptr %.val34.i.i1999, i64 %i.l
  %.0.copyload.i38.i.i2000 = load i32, ptr %i.ru, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i38.i.i2000) #13, !srcloc !14
  %i.rv = icmp ult i32 %.0.copyload.i.i.i1998, %.0.copyload.i38.i.i2000 ; 2 uses
  %i.rw = select i1 %i.rv, i32 %i.rr, i32 %i.k
  %i.rx = zext i32 %i.rw to i64
  %.val33.i.i2001 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ry = getelementptr inbounds nuw i8, ptr %.val33.i.i2001, i64 %i.rx
  %.0.copyload.i39.i.i2002 = load i32, ptr %i.ry, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i39.i.i2002) #13, !srcloc !14
  %i.rz = select i1 %i.rv, i32 %i.k, i32 %i.rr
  %i.sa = zext i32 %i.rz to i64
  %.val.i.i2003 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sb = getelementptr inbounds nuw i8, ptr %.val.i.i2003, i64 %i.sa
  %.0.copyload.i40.i.i2004 = load i32, ptr %i.sb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i40.i.i2004) #13, !srcloc !14
  %.val37.i.i2005 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sc = getelementptr inbounds nuw i8, ptr %.val37.i.i2005, i64 %i.l
  store i32 %.0.copyload.i40.i.i2004, ptr %i.sc, align 1
  %.val36.i.i2006 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sd = getelementptr inbounds nuw i8, ptr %.val36.i.i2006, i64 %i.rs
  store i32 %.0.copyload.i39.i.i2002, ptr %i.sd, align 1
  %i.se = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.sf = add i32 %i.se, -16                      ; 2 uses
  store i32 %i.sf, ptr %i.a, align 8, !tbaa !32
  %.val83.i.i2007 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sg = getelementptr inbounds nuw i8, ptr %.val83.i.i2007, i64 %i.l
  %.0.copyload.i.i11.i2008 = load i32, ptr %i.sg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i11.i2008) #13, !srcloc !14
  %i.sh = zext i32 %.11536 to i64                 ; 2 uses
  %.val82.i.i2009 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.si = getelementptr inbounds nuw i8, ptr %.val82.i.i2009, i64 %i.sh
  %.0.copyload.i88.i.i2010 = load i32, ptr %i.si, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88.i.i2010) #13, !srcloc !14
  %i.sj = icmp ult i32 %.0.copyload.i.i11.i2008, %.0.copyload.i88.i.i2010 ; 2 uses
  %i.sk = select i1 %i.sj, i32 %i.k, i32 %.11536
  %i.sl = zext i32 %i.sk to i64
  %.val81.i.i2011 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sm = getelementptr inbounds nuw i8, ptr %.val81.i.i2011, i64 %i.sl
  %.0.copyload.i89.i.i2012 = load i32, ptr %i.sm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89.i.i2012) #13, !srcloc !14
  %i.sn = zext i32 %i.sf to i64
  %.val87.i.i2013 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.so = getelementptr inbounds nuw i8, ptr %.val87.i.i2013, i64 %i.sn
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 12
  store i32 %.0.copyload.i89.i.i2012, ptr %i.sp, align 1
  %i.sq = select i1 %i.sj, i32 %.11536, i32 %i.k
  %i.sr = zext i32 %i.sq to i64
  %.val80.i.i2014 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ss = getelementptr inbounds nuw i8, ptr %.val80.i.i2014, i64 %i.sr
  %.0.copyload.i90.i.i2015 = load i32, ptr %i.ss, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90.i.i2015) #13, !srcloc !14
  %.val86.i.i2016 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.st = getelementptr inbounds nuw i8, ptr %.val86.i.i2016, i64 %i.l
  store i32 %.0.copyload.i90.i.i2015, ptr %i.st, align 1
  %i.su = add i32 %i.se, -4                       ; 2 uses
  %i.sv = zext i32 %i.su to i64
  %.val79.i.i2017 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sw = getelementptr inbounds nuw i8, ptr %.val79.i.i2017, i64 %i.sv
  %.0.copyload.i91.i.i2018 = load i32, ptr %i.sw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91.i.i2018) #13, !srcloc !14
  %.val78.i.i2019 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sx = getelementptr inbounds nuw i8, ptr %.val78.i.i2019, i64 %i.rs
  %.0.copyload.i92.i.i2020 = load i32, ptr %i.sx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i92.i.i2020) #13, !srcloc !14
  %i.sy = icmp ult i32 %.0.copyload.i91.i.i2018, %.0.copyload.i92.i.i2020 ; 2 uses
  %i.sz = select i1 %i.sy, i32 %.11536, i32 %i.rr
  %i.ta = zext i32 %i.sz to i64
  %.val77.i.i2021 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tb = getelementptr inbounds nuw i8, ptr %.val77.i.i2021, i64 %i.ta
  %.0.copyload.i93.i.i2022 = load i32, ptr %i.tb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i93.i.i2022) #13, !srcloc !14
  %.val85.i.i2023 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tc = getelementptr inbounds nuw i8, ptr %.val85.i.i2023, i64 %i.sh
  store i32 %.0.copyload.i93.i.i2022, ptr %i.tc, align 1
  %i.td = select i1 %i.sy, i32 %i.rr, i32 %i.su
  %i.te = zext i32 %i.td to i64
  %.val.i12.i2024 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tf = getelementptr inbounds nuw i8, ptr %.val.i12.i2024, i64 %i.te
  %.0.copyload.i94.i.i2025 = load i32, ptr %i.tf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i94.i.i2025) #13, !srcloc !14
  %.val84.i.i2026 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tg = getelementptr inbounds nuw i8, ptr %.val84.i.i2026, i64 %i.rs
  store i32 %.0.copyload.i94.i.i2025, ptr %i.tg, align 1
  br label %.loopexit2045

bb.bn:                                            ; preds = %bb.bj, %bb.bk
  %.val1608 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.th = getelementptr inbounds nuw i8, ptr %.val1608, i64 %i.i
  %.0.copyload.i2027 = load i32, ptr %i.th, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2027) #13, !srcloc !14
  %i.ti = add i32 %.0.copyload.i2027, 4           ; 3 uses
  %.val1768 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tj = getelementptr inbounds nuw i8, ptr %.val1768, i64 %i.f
  store i32 %i.ti, ptr %i.tj, align 1
  br label %.backedge

bb.bo:                                            ; preds = %bb.au, %bb.av
  %.5 = phi i32 [ %.0.copyload.i1947, %bb.au ], [ %i.ny, %bb.av ] ; 2 uses
  %.val1607 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tk = getelementptr inbounds nuw i8, ptr %.val1607, i64 %i.j
  %.0.copyload.i2028 = load i32, ptr %i.tk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2028) #13, !srcloc !14
  %i.tl = icmp eq i32 %.5, %.0.copyload.i2028
  br i1 %i.tl, label %.loopexit2045, label %.preheader2043

.preheader2043:                                   ; preds = %bb.bo, %bb.bs
  %.6 = phi i32 [ %i.uj, %bb.bs ], [ %.5, %bb.bo ]
  %.val1606 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tm = getelementptr inbounds nuw i8, ptr %.val1606, i64 %i.mt
  %.0.copyload.i2029 = load i32, ptr %i.tm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2029) #13, !srcloc !14
  %i.tn = zext i32 %.6 to i64
  %.val1605 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.to = getelementptr inbounds nuw i8, ptr %.val1605, i64 %i.tn
  %.0.copyload.i2030 = load i32, ptr %i.to, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2030) #13, !srcloc !14
  %.not1590 = icmp ult i32 %.0.copyload.i2029, %.0.copyload.i2030
  br i1 %.not1590, label %.preheader2041, label %bb.bs

.preheader2041:                                   ; preds = %.preheader2043, %.preheader2041
  %.val1604 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tp = getelementptr inbounds nuw i8, ptr %.val1604, i64 %i.j
  %.0.copyload.i2031 = load i32, ptr %i.tp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2031) #13, !srcloc !14
  %i.tq = add i32 %.0.copyload.i2031, -4          ; 2 uses
  %.val1767 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tr = getelementptr inbounds nuw i8, ptr %.val1767, i64 %i.j
  store i32 %i.tq, ptr %i.tr, align 1
  %.val1603 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ts = getelementptr inbounds nuw i8, ptr %.val1603, i64 %i.mt
  %.0.copyload.i2032 = load i32, ptr %i.ts, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2032) #13, !srcloc !14
  %i.tt = zext i32 %i.tq to i64
  %.val1602 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tu = getelementptr inbounds nuw i8, ptr %.val1602, i64 %i.tt
  %.0.copyload.i2033 = load i32, ptr %i.tu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2033) #13, !srcloc !14
  %i.tv = icmp ult i32 %.0.copyload.i2032, %.0.copyload.i2033
  br i1 %i.tv, label %.preheader2041, label %bb.bp

bb.bp:                                            ; preds = %.preheader2041
  %.val1601 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tw = getelementptr inbounds nuw i8, ptr %.val1601, i64 %i.i
  %.0.copyload.i2034 = load i32, ptr %i.tw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2034) #13, !srcloc !14
  %.val1600 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tx = getelementptr inbounds nuw i8, ptr %.val1600, i64 %i.j
  %.0.copyload.i2035 = load i32, ptr %i.tx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2035) #13, !srcloc !14
  %i.ty = icmp ult i32 %.0.copyload.i2034, %.0.copyload.i2035
  %.val1599 = load ptr, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  br i1 %i.ty, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.tz = getelementptr inbounds nuw i8, ptr %.val1599, i64 %i.i
  %.0.copyload.i2036 = load i32, ptr %i.tz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2036) #13, !srcloc !14
  %i.ua = zext i32 %.0.copyload.i2036 to i64      ; 2 uses
  %.val1598 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ub = getelementptr inbounds nuw i8, ptr %.val1598, i64 %i.ua
  %.0.copyload.i2037 = load i32, ptr %i.ub, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2037) #13, !srcloc !14
  %.val1597 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.uc = getelementptr inbounds nuw i8, ptr %.val1597, i64 %i.j
  %.0.copyload.i2038 = load i32, ptr %i.uc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2038) #13, !srcloc !14
  %i.ud = zext i32 %.0.copyload.i2038 to i64      ; 2 uses
  %.val1596 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ue = getelementptr inbounds nuw i8, ptr %.val1596, i64 %i.ud
  %.0.copyload.i2039 = load i32, ptr %i.ue, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2039) #13, !srcloc !14
  %.val1766 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.uf = getelementptr inbounds nuw i8, ptr %.val1766, i64 %i.ua
  store i32 %.0.copyload.i2039, ptr %i.uf, align 1
  %.val1765 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ug = getelementptr inbounds nuw i8, ptr %.val1765, i64 %i.ud
  store i32 %.0.copyload.i2037, ptr %i.ug, align 1
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.uh = getelementptr inbounds nuw i8, ptr %.val1599, i64 %i.f
  store i32 %.0.copyload.i2034, ptr %i.uh, align 1
  br label %bb.b

bb.bs:                                            ; preds = %.preheader2043, %bb.bq
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ui = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i
  %.0.copyload.i2040 = load i32, ptr %i.ui, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2040) #13, !srcloc !14
  %i.uj = add i32 %.0.copyload.i2040, 4           ; 2 uses
  %.val1763 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.uk = getelementptr inbounds nuw i8, ptr %.val1763, i64 %i.i
  store i32 %i.uj, ptr %i.uk, align 1
  br label %.preheader2043

.loopexit2045:                                    ; preds = %bb.bh, %bb.bo, %bb.b, %bb.b, %.preheader2044, %bb.aw, %bb.m, %bb.h, %bb.n, %bb.c, %bb.bm, %._crit_edge2155, %bb.f, %bb.e, %bb.d
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fuse_branchless_sort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x3A0x3Avalue0x2C0x20void0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort4_maybe_branchless0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 30 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %.val35.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.val35.i, i64 %i.b
  %.0.copyload.i.i = load i32, ptr %i.c, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #13, !srcloc !14
  %i.d = zext i32 %3 to i64                       ; 6 uses
  %.val34.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %.val34.i, i64 %i.d
  %.0.copyload.i38.i = load i32, ptr %i.e, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i38.i) #13, !srcloc !14
  %i.f = icmp ult i32 %.0.copyload.i.i, %.0.copyload.i38.i ; 2 uses
  %i.g = select i1 %i.f, i32 %1, i32 %3
  %i.h = zext i32 %i.g to i64
  %.val33.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val33.i, i64 %i.h
  %.0.copyload.i39.i = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i39.i) #13, !srcloc !14
  %i.j = select i1 %i.f, i32 %3, i32 %1
  %i.k = zext i32 %i.j to i64
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.k
  %.0.copyload.i40.i = load i32, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i40.i) #13, !srcloc !14
  %.val37.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %.val37.i, i64 %i.d
  store i32 %.0.copyload.i40.i, ptr %i.m, align 1
  %.val36.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val36.i, i64 %i.b
  store i32 %.0.copyload.i39.i, ptr %i.n, align 1
  %i.o = zext i32 %2 to i64                       ; 6 uses
  %.val35.i24 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val35.i24, i64 %i.o
  %.0.copyload.i.i25 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i25) #13, !srcloc !14
  %i.q = zext i32 %4 to i64                       ; 4 uses
  %.val34.i26 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val34.i26, i64 %i.q
  %.0.copyload.i38.i27 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i38.i27) #13, !srcloc !14
  %i.s = icmp ult i32 %.0.copyload.i.i25, %.0.copyload.i38.i27 ; 2 uses
  %i.t = select i1 %i.s, i32 %2, i32 %4
  %i.u = zext i32 %i.t to i64
  %.val33.i28 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val33.i28, i64 %i.u
  %.0.copyload.i39.i29 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i39.i29) #13, !srcloc !14
  %i.w = select i1 %i.s, i32 %4, i32 %2
  %i.x = zext i32 %i.w to i64
  %.val.i30 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i30, i64 %i.x
  %.0.copyload.i40.i31 = load i32, ptr %i.y, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i40.i31) #13, !srcloc !14
  %.val37.i32 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val37.i32, i64 %i.q
  store i32 %.0.copyload.i40.i31, ptr %i.z, align 1
  %.val36.i33 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.val36.i33, i64 %i.o
  store i32 %.0.copyload.i39.i29, ptr %i.aa, align 1
  %.val35.i34 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val35.i34, i64 %i.b
  %.0.copyload.i.i35 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i35) #13, !srcloc !14
  %.val34.i36 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val34.i36, i64 %i.o
  %.0.copyload.i38.i37 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i38.i37) #13, !srcloc !14
  %i.ad = icmp ult i32 %.0.copyload.i.i35, %.0.copyload.i38.i37 ; 2 uses
  %i.ae = select i1 %i.ad, i32 %1, i32 %2
  %i.af = zext i32 %i.ae to i64
  %.val33.i38 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val33.i38, i64 %i.af
  %.0.copyload.i39.i39 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i39.i39) #13, !srcloc !14
  %i.ah = select i1 %i.ad, i32 %2, i32 %1
  %i.ai = zext i32 %i.ah to i64
  %.val.i40 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i40, i64 %i.ai
  %.0.copyload.i40.i41 = load i32, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i40.i41) #13, !srcloc !14
  %.val37.i42 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val37.i42, i64 %i.o
  store i32 %.0.copyload.i40.i41, ptr %i.ak, align 1
  %.val36.i43 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.val36.i43, i64 %i.b
  store i32 %.0.copyload.i39.i39, ptr %i.al, align 1
  %.val35.i44 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val35.i44, i64 %i.d
  %.0.copyload.i.i45 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i45) #13, !srcloc !14
  %.val34.i46 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.val34.i46, i64 %i.q
  %.0.copyload.i38.i47 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i38.i47) #13, !srcloc !14
  %i.ao = icmp ult i32 %.0.copyload.i.i45, %.0.copyload.i38.i47 ; 2 uses
  %i.ap = select i1 %i.ao, i32 %3, i32 %4
  %i.aq = zext i32 %i.ap to i64
  %.val33.i48 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.val33.i48, i64 %i.aq
  %.0.copyload.i39.i49 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i39.i49) #13, !srcloc !14
  %i.as = select i1 %i.ao, i32 %4, i32 %3
  %i.at = zext i32 %i.as to i64
  %.val.i50 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i50, i64 %i.at
  %.0.copyload.i40.i51 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i40.i51) #13, !srcloc !14
  %.val37.i52 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val37.i52, i64 %i.q
  store i32 %.0.copyload.i40.i51, ptr %i.av, align 1
  %.val36.i53 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val36.i53, i64 %i.d
  store i32 %.0.copyload.i39.i49, ptr %i.aw, align 1
  %.val35.i54 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val35.i54, i64 %i.o
  %.0.copyload.i.i55 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i55) #13, !srcloc !14
  %.val34.i56 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val34.i56, i64 %i.d
  %.0.copyload.i38.i57 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i38.i57) #13, !srcloc !14
  %i.az = icmp ult i32 %.0.copyload.i.i55, %.0.copyload.i38.i57 ; 2 uses
  %i.ba = select i1 %i.az, i32 %2, i32 %3
  %i.bb = zext i32 %i.ba to i64
  %.val33.i58 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.val33.i58, i64 %i.bb
  %.0.copyload.i39.i59 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i39.i59) #13, !srcloc !14
  %i.bd = select i1 %i.az, i32 %3, i32 %2
  %i.be = zext i32 %i.bd to i64
  %.val.i60 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i60, i64 %i.be
  %.0.copyload.i40.i61 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i40.i61) #13, !srcloc !14
  %.val37.i62 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val37.i62, i64 %i.d
  store i32 %.0.copyload.i40.i61, ptr %i.bg, align 1
  %.val36.i63 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.val36.i63, i64 %i.o
  store i32 %.0.copyload.i39.i59, ptr %i.bh, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fuse_branchless_sort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x3A0x3Avalue0x2C0x20void0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_maybe_branchless0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x29(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 54 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %.val35.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.val35.i, i64 %i.b
  %.0.copyload.i.i = load i32, ptr %i.c, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #13, !srcloc !14
  %i.d = zext i32 %2 to i64                       ; 6 uses
  %.val34.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %.val34.i, i64 %i.d
  %.0.copyload.i38.i = load i32, ptr %i.e, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i38.i) #13, !srcloc !14
  %i.f = icmp ult i32 %.0.copyload.i.i, %.0.copyload.i38.i ; 2 uses
  %i.g = select i1 %i.f, i32 %1, i32 %2
  %i.h = zext i32 %i.g to i64
  %.val33.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val33.i, i64 %i.h
  %.0.copyload.i39.i = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i39.i) #13, !srcloc !14
  %i.j = select i1 %i.f, i32 %2, i32 %1
  %i.k = zext i32 %i.j to i64
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.k
  %.0.copyload.i40.i = load i32, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i40.i) #13, !srcloc !14
  %.val37.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %.val37.i, i64 %i.d
  store i32 %.0.copyload.i40.i, ptr %i.m, align 1
  %.val36.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val36.i, i64 %i.b
  store i32 %.0.copyload.i39.i, ptr %i.n, align 1
  %i.o = zext i32 %4 to i64                       ; 8 uses
  %.val35.i35 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val35.i35, i64 %i.o
  %.0.copyload.i.i36 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i36) #13, !srcloc !14
  %i.q = zext i32 %5 to i64                       ; 6 uses
  %.val34.i37 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val34.i37, i64 %i.q
  %.0.copyload.i38.i38 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i38.i38) #13, !srcloc !14
  %i.s = icmp ult i32 %.0.copyload.i.i36, %.0.copyload.i38.i38 ; 2 uses
  %i.t = select i1 %i.s, i32 %4, i32 %5
  %i.u = zext i32 %i.t to i64
  %.val33.i39 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val33.i39, i64 %i.u
  %.0.copyload.i39.i40 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i39.i40) #13, !srcloc !14
end_hunk_8
begin_hunk_9_@w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x29:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val225, i64 %i.f
  store i32 %2, ptr %i.g, align 1
  %i.h = add nuw nsw i64 %i.e, 12                 ; 3 uses
  %.val224 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val224, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = add nuw nsw i64 %i.e, 4                  ; 4 uses
  %.val223 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.val223, i64 %i.j
  store i32 %3, ptr %i.k, align 1
  %i.l = zext i32 %2 to i64
  %.val212 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %.val212, i64 %i.l
  %.0.copyload.i = load i32, ptr %i.m, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.n = zext i32 %3 to i64                       ; 2 uses
  %.val211 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val211, i64 %i.n
  %.0.copyload.i226 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i226) #13, !srcloc !14
  %.not183 = icmp ugt i32 %.0.copyload.i, %.0.copyload.i226 ; 2 uses
  %i.p = zext i32 %1 to i64                       ; 2 uses
  %.val210 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val210, i64 %i.p
  %.0.copyload.i227 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i227) #13, !srcloc !14
  %.not = icmp ult i32 %.0.copyload.i, %.0.copyload.i227
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not183, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.val209 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val209, i64 %i.f
  %.0.copyload.i228 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i228) #13, !srcloc !14
  %i.s = zext i32 %.0.copyload.i228 to i64        ; 2 uses
  %.val208 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val208, i64 %i.s
  %.0.copyload.i229 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i229) #13, !srcloc !14
  %.val207 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val207, i64 %i.j
  %.0.copyload.i230 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i230) #13, !srcloc !14
  %i.v = zext i32 %.0.copyload.i230 to i64        ; 2 uses
  %.val206 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.val206, i64 %i.v
  %.0.copyload.i231 = load i32, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i231) #13, !srcloc !14
  %.val222 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val222, i64 %i.s
  store i32 %.0.copyload.i231, ptr %i.x, align 1
  %.val221 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.val221, i64 %i.v
  store i32 %.0.copyload.i229, ptr %i.y, align 1
  %.val205 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val205, i64 %i.f
  %.0.copyload.i232 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i232) #13, !srcloc !14
  %i.aa = zext i32 %.0.copyload.i232 to i64
  %.val204 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val204, i64 %i.aa
  %.0.copyload.i233 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i233) #13, !srcloc !14
  %.val203 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val203, i64 %i.p
  %.0.copyload.i234 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i234) #13, !srcloc !14
  %.not184 = icmp ult i32 %.0.copyload.i233, %.0.copyload.i234
  br i1 %.not184, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.val202 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.val202, i64 %i.h
  %.0.copyload.i235 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i235) #13, !srcloc !14
  %i.ae = zext i32 %.0.copyload.i235 to i64       ; 2 uses
  %.val201 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.ae
  %.0.copyload.i236 = load i32, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i236) #13, !srcloc !14
  %.val200 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.f
  %.0.copyload.i237 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i237) #13, !srcloc !14
  %i.ah = zext i32 %.0.copyload.i237 to i64       ; 2 uses
  %.val199 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.ah
  %.0.copyload.i238 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i238) #13, !srcloc !14
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %.val198 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.h
  %.0.copyload.i239 = load i32, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i239) #13
  %i.ak = zext i32 %.0.copyload.i239 to i64       ; 3 uses
  %.val197 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.ak
  %.0.copyload.i240 = load i32, ptr %i.al, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i240) #13
  %.val196 = load ptr, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  br i1 %.not183, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.j
  %.0.copyload.i241 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i241) #13, !srcloc !14
  %i.an = zext i32 %.0.copyload.i241 to i64       ; 2 uses
  %.val195 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.an
  %.0.copyload.i242 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i242) #13, !srcloc !14
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.f
  %.0.copyload.i245 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i245) #13, !srcloc !14
  %i.aq = zext i32 %.0.copyload.i245 to i64       ; 2 uses
  %.val191 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.aq
  %.0.copyload.i246 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i246) #13, !srcloc !14
  %.val216 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val216, i64 %i.ak
  store i32 %.0.copyload.i246, ptr %i.as, align 1
  %.val215 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val215, i64 %i.aq
  store i32 %.0.copyload.i240, ptr %i.at, align 1
  %.val190 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.n
  %.0.copyload.i247 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i247) #13, !srcloc !14
  %.val189 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.f
  %.0.copyload.i248 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i248) #13, !srcloc !14
  %i.aw = zext i32 %.0.copyload.i248 to i64
  %.val188 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.aw
  %.0.copyload.i249 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i249) #13, !srcloc !14
  %.not182 = icmp ult i32 %.0.copyload.i247, %.0.copyload.i249
  br i1 %.not182, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val187 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.f
  %.0.copyload.i250 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i250) #13, !srcloc !14
  %i.az = zext i32 %.0.copyload.i250 to i64       ; 2 uses
  %.val186 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.az
  %.0.copyload.i251 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i251) #13, !srcloc !14
  %.val185 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.j
  %.0.copyload.i252 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i252) #13, !srcloc !14
  %i.bc = zext i32 %.0.copyload.i252 to i64       ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bc
  %.0.copyload.i253 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i253) #13, !srcloc !14
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.h, %bb.d
  %.sink255 = phi i64 [ %i.ae, %bb.d ], [ %i.az, %bb.h ], [ %i.ak, %bb.f ]
  %.0.copyload.i238.sink = phi i32 [ %.0.copyload.i238, %bb.d ], [ %.0.copyload.i253, %bb.h ], [ %.0.copyload.i242, %bb.f ]
  %.sink254 = phi i64 [ %i.ah, %bb.d ], [ %i.bc, %bb.h ], [ %i.an, %bb.f ]
  %.0.copyload.i236.sink = phi i32 [ %.0.copyload.i236, %bb.d ], [ %.0.copyload.i251, %bb.h ], [ %.0.copyload.i240, %bb.f ]
  %.0.ph = phi i32 [ 2, %bb.d ], [ 2, %bb.h ], [ 1, %bb.f ]
  %.val220 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val220, i64 %.sink255
  store i32 %.0.copyload.i238.sink, ptr %i.be, align 1
  %.val219 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val219, i64 %.sink254
  store i32 %.0.copyload.i236.sink, ptr %i.bf, align 1
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %bb.g ], [ %.0.ph, %.sink.split ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret i32 %.0
}

declare i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 142 uses
  br label %.backedge1903

.backedge1903:                                    ; preds = %.backedge1903.backedge, %bb.a
  %.01536 = phi i32 [ %1, %bb.a ], [ %.01517, %.backedge1903.backedge ]
  %.01533 = phi i32 [ %2, %bb.a ], [ %.6, %.backedge1903.backedge ] ; 11 uses
  %.01524 = phi i32 [ %4, %bb.a ], [ %i.iw, %.backedge1903.backedge ]
  %i.b = add i32 %.01533, -4
  %i.c = add i32 %.01533, -16                     ; 2 uses
  %i.d = add i32 %.01533, -8                      ; 13 uses
  %i.e = zext i32 %i.d to i64                     ; 4 uses
  %i.f = zext i32 %i.b to i64                     ; 6 uses
  br label %.loopexit1892

.loopexit1892:                                    ; preds = %.loopexit1892.backedge, %.backedge1903
  %.21526 = phi i32 [ %.01524, %.backedge1903 ], [ %i.iw, %.loopexit1892.backedge ] ; 2 uses
  %.01517 = phi i32 [ %.01536, %.backedge1903 ], [ %.01517.be, %.loopexit1892.backedge ] ; 41 uses
  %i.g = sub i32 %.01533, %.01517                 ; 4 uses
  %i.h = ashr i32 %i.g, 3                         ; 7 uses
  switch i32 %i.h, label %bb.h [
    i32 0, label %.thread
    i32 1, label %.thread
    i32 2, label %bb.b
    i32 3, label %bb.r
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %.loopexit1892
  %.val1733 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val1733, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.i, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.j = zext i32 %.01517 to i64                  ; 4 uses
  %.val1732 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.val1732, i64 %i.j
  %.0.copyload.i1788 = load i32, ptr %i.k, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1788) #13, !srcloc !14
  %.not = icmp ult i32 %.0.copyload.i, %.0.copyload.i1788
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ugt i32 %.0.copyload.i, %.0.copyload.i1788
  br i1 %i.l, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1731 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %.val1731, i64 %i.f
  %.0.copyload.i1789 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1789) #13, !srcloc !14
  %.val1730 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val1730, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.0.copyload.i1790 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1790) #13, !srcloc !14
  %.not1604 = icmp ult i32 %.0.copyload.i1789, %.0.copyload.i1790
  br i1 %.not1604, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d, %bb.b
  %.val1783 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val1783, i64 %i.j
  store i32 %.0.copyload.i, ptr %i.p, align 1
  %.val1782 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val1782, i64 %i.e
  store i32 %.0.copyload.i1788, ptr %i.q, align 1
  %i.r = add nuw nsw i64 %i.j, 4                  ; 2 uses
  %.val1729 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val1729, i64 %i.r
  %.0.copyload.i1791 = load i32, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1791) #13, !srcloc !14
  %.val1728 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val1728, i64 %i.f
  %.0.copyload.i1792 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1792) #13, !srcloc !14
  %.val1781 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val1781, i64 %i.r
  store i32 %.0.copyload.i1792, ptr %i.u, align 1
  %.val1780 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val1780, i64 %i.f
  store i32 %.0.copyload.i1791, ptr %i.v, align 1
  br label %.thread

bb.f:                                             ; preds = %.loopexit1892
  %i.w = add i32 %.01517, 8
  %i.x = add i32 %.01517, 16
  %i.y = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr noundef %0, i32 noundef %.01517, i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.d) ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %.loopexit1892
  %i.z = add i32 %.01517, 8
  %i.aa = add i32 %.01517, 16
  %i.ab = add i32 %.01517, 24
  %i.ac = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort50x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr noundef %0, i32 noundef %.01517, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.d) ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %.loopexit1892
  %i.ad = icmp sgt i32 %i.g, 55
  br i1 %i.ad, label %5, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = add i32 %.01517, 8
  %i.af = add i32 %.01517, 16                     ; 2 uses
  %i.ag = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr noundef %0, i32 noundef %.01517, i32 noundef %i.ae, i32 noundef %i.af) ; 0 uses
  %i.ah = add i32 %.01517, 24                     ; 2 uses
  %i.ai = icmp eq i32 %i.ah, %.01533
  br i1 %i.ai, label %.thread, label %.preheader1885

.preheader1885:                                   ; preds = %bb.i, %bb.q
  %.21538 = phi i32 [ %i.bv, %bb.q ], [ %i.ah, %bb.i ] ; 3 uses
  %.01518 = phi i32 [ %.21538, %bb.q ], [ %i.af, %bb.i ] ; 3 uses
  %i.aj = zext i32 %.21538 to i64                 ; 5 uses
  %.val1727 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1727, i64 %i.aj
  %.0.copyload.i1793 = load i32, ptr %i.ak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1793) #13, !srcloc !14
  %i.al = zext i32 %.01518 to i64                 ; 3 uses
  %.val1726 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val1726, i64 %i.al
  %.0.copyload.i1794 = load i32, ptr %i.am, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1794) #13, !srcloc !14
  %.not1605 = icmp ult i32 %.0.copyload.i1793, %.0.copyload.i1794
  br i1 %.not1605, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.preheader1885
  %i.an = icmp ult i32 %.0.copyload.i1794, %.0.copyload.i1793
  br i1 %i.an, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1725 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1725, i64 %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.0.copyload.i1795 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1795) #13, !srcloc !14
  %.val1724 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1724, i64 %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.0.copyload.i1796 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1796) #13, !srcloc !14
  %.not1606 = icmp ult i32 %.0.copyload.i1795, %.0.copyload.i1796
  br i1 %.not1606, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k, %.preheader1885
  %.val1787 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val1787, i64 %i.aj
  %.0.copyload.i1797 = load i64, ptr %i.as, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1797) #13, !srcloc !33
  %.val1779 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val1779, i64 %i.aj
  store i32 %.0.copyload.i1794, ptr %i.at, align 1
  %.val1723 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val1723, i64 %i.al
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.0.copyload.i1798 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1798) #13, !srcloc !14
  %.val1778 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1778, i64 %i.aj
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %.0.copyload.i1798, ptr %i.ax, align 1
  %i.ay = lshr i64 %.0.copyload.i1797, 32
  %i.az = trunc nuw i64 %i.ay to i32              ; 2 uses
  %i.ba = trunc i64 %.0.copyload.i1797 to i32     ; 3 uses
  %i.bb = icmp eq i32 %.01518, %.01517
  br i1 %i.bb, label %.loopexit1884, label %.preheader1883

.preheader1883:                                   ; preds = %bb.l, %bb.p
  %.11519 = phi i32 [ %i.bc, %bb.p ], [ %.01518, %bb.l ] ; 6 uses
  %i.bc = add i32 %.11519, -8                     ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %.val1722 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val1722, i64 %i.bd
  %.0.copyload.i1799 = load i32, ptr %i.be, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1799) #13, !srcloc !14
  %i.bf = icmp ugt i32 %.0.copyload.i1799, %i.ba
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader1883
  %i.bg = add i32 %.11519, -4
  %i.bh = zext i32 %i.bg to i64
  %.val1721 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1721, i64 %i.bh
  %.0.copyload.i1800 = load i32, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1800) #13, !srcloc !14
  br label %bb.p

bb.n:                                             ; preds = %.preheader1883
  %.not1607 = icmp ult i32 %.0.copyload.i1799, %i.ba
  br i1 %.not1607, label %.loopexit1884, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = add i32 %.11519, -4
  %i.bk = zext i32 %i.bj to i64
  %.val1720 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1720, i64 %i.bk
  %.0.copyload.i1801 = load i32, ptr %i.bl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1801) #13, !srcloc !14
  %i.bm = icmp ugt i32 %.0.copyload.i1801, %i.az
  br i1 %i.bm, label %bb.p, label %.loopexit1884

bb.p:                                             ; preds = %bb.o, %bb.m
  %.01508 = phi i32 [ %.0.copyload.i1800, %bb.m ], [ %.0.copyload.i1801, %bb.o ]
  %i.bn = zext i32 %.11519 to i64                 ; 2 uses
  %.val1777 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1777, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %.01508, ptr %i.bp, align 1
  %.val1776 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1776, i64 %i.bn
  store i32 %.0.copyload.i1799, ptr %i.bq, align 1
  %.not1608 = icmp eq i32 %i.bc, %.01517
  br i1 %.not1608, label %.loopexit1884, label %.preheader1883

.loopexit1884:                                    ; preds = %bb.p, %bb.n, %bb.o, %bb.l
  %.0 = phi i32 [ %.01517, %bb.l ], [ %.01517, %bb.p ], [ %.11519, %bb.o ], [ %.11519, %bb.n ]
  %i.br = zext i32 %.0 to i64                     ; 2 uses
  %.val1775 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1775, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %i.az, ptr %i.bt, align 1
  %.val1774 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1774, i64 %i.br
  store i32 %i.ba, ptr %i.bu, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.j, %.loopexit1884
  %i.bv = add i32 %.21538, 8                      ; 2 uses
  %.not1609 = icmp eq i32 %i.bv, %.01533
  br i1 %.not1609, label %.thread, label %.preheader1885

bb.r:                                             ; preds = %.loopexit1892
  %i.bw = add i32 %.01517, 8
  %i.bx = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr noundef %0, i32 noundef %.01517, i32 noundef %i.bw, i32 noundef %i.d) ; 0 uses
  br label %.thread

5:                                                ; preds = %bb.h
  %.not1610 = icmp eq i32 %.21526, 0
  br i1 %.not1610, label %bb.s, label %bb.bg

bb.s:                                             ; preds = %5
  %i.by = icmp eq i32 %.01533, %.01517
  br i1 %i.by, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = add nsw i32 %i.h, -2                    ; 2 uses
  %i.ca = lshr i32 %i.bz, 1                       ; 3 uses
  %i.cb = icmp slt i32 %i.h, 2
  br i1 %i.cb, label %.split1997.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.t
  %i.cc = lshr i32 %i.bz, 1
  %i.cd = zext nneg i32 %i.cc to i64
  br label %.split

.split:                                           ; preds = %.split.preheader, %bb.al
  %indvars.iv = phi i64 [ %i.cd, %.split.preheader ], [ %indvars.iv.next, %bb.al ] ; 3 uses
  %i.ce = trunc nuw i64 %indvars.iv to i32
  %i.cf = shl i32 %i.ce, 3                        ; 3 uses
  %i.cg = add i32 %i.cf, %.01517
  %i.ch = ashr exact i32 %i.cf, 3
  %i.ci = icmp slt i32 %i.ca, %i.ch
  br i1 %i.ci, label %bb.al, label %bb.u

bb.u:                                             ; preds = %.split
  %i.cj = ashr exact i32 %i.cf, 2                 ; 2 uses
  %i.ck = or disjoint i32 %i.cj, 1                ; 4 uses
  %i.cl = shl i32 %i.ck, 3
  %i.cm = add i32 %i.cl, %.01517                  ; 5 uses
  %i.cn = add nsw i32 %i.cj, 2                    ; 2 uses
  %.not1634 = icmp sgt i32 %i.h, %i.cn
  br i1 %.not1634, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.co = zext i32 %i.cm to i64                   ; 4 uses
  %.val1719 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1719, i64 %i.co
  %.0.copyload.i1802 = load i32, ptr %i.cp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1802) #13, !srcloc !14
  %.val1718 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1718, i64 %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.0.copyload.i1803 = load i32, ptr %i.cr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1803) #13, !srcloc !14
  %i.cs = icmp ult i32 %.0.copyload.i1802, %.0.copyload.i1803
  br i1 %i.cs, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = icmp ugt i32 %.0.copyload.i1802, %.0.copyload.i1803
  br i1 %i.ct, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val1717 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1717, i64 %i.co
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %.0.copyload.i1804 = load i32, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1804) #13, !srcloc !14
  %.val1716 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1716, i64 %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %.0.copyload.i1805 = load i32, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1805) #13, !srcloc !14
  %i.cy = icmp ult i32 %.0.copyload.i1804, %.0.copyload.i1805
  br i1 %i.cy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.cz = add i32 %i.cm, 8
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.u, %bb.y
  %.31539 = phi i32 [ %i.ck, %bb.w ], [ %i.cn, %bb.y ], [ %i.ck, %bb.u ], [ %i.ck, %bb.x ] ; 2 uses
  %.31527 = phi i32 [ %i.cm, %bb.w ], [ %i.cz, %bb.y ], [ %i.cm, %bb.u ], [ %i.cm, %bb.x ] ; 2 uses
  %i.da = zext i32 %.31527 to i64                 ; 4 uses
  %.val1715 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.db = getelementptr inbounds nuw i8, ptr %.val1715, i64 %i.da
  %.0.copyload.i1806 = load i32, ptr %i.db, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1806) #13, !srcloc !14
  %i.dc = zext i32 %i.cg to i64                   ; 5 uses
  %.val1714 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %.val1714, i64 %i.dc
  %.0.copyload.i1807 = load i32, ptr %i.dd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1807) #13, !srcloc !14
  %i.de = icmp ult i32 %.0.copyload.i1806, %.0.copyload.i1807
  br i1 %i.de, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not1635 = icmp ugt i32 %.0.copyload.i1806, %.0.copyload.i1807
  br i1 %.not1635, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val1713 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %.val1713, i64 %i.da
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %.0.copyload.i1808 = load i32, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1808) #13, !srcloc !14
  %.val1712 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1712, i64 %i.dc
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %.0.copyload.i1809 = load i32, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1809) #13, !srcloc !14
  %i.dj = icmp ult i32 %.0.copyload.i1808, %.0.copyload.i1809
  br i1 %i.dj, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.val1786 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.val1786, i64 %i.dc
  %.0.copyload.i1810 = load i64, ptr %i.dk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1810) #13, !srcloc !33
  %.val1773 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %.val1773, i64 %i.dc
  store i32 %.0.copyload.i1806, ptr %i.dl, align 1
  %.val1711 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1711, i64 %i.da
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %.0.copyload.i1811 = load i32, ptr %i.dn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1811) #13, !srcloc !14
  %.val1772 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %.val1772, i64 %i.dc
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 %.0.copyload.i1811, ptr %i.dp, align 1
  %i.dq = lshr i64 %.0.copyload.i1810, 32
  %i.dr = trunc nuw i64 %i.dq to i32              ; 2 uses
  %i.ds = trunc i64 %.0.copyload.i1810 to i32     ; 3 uses
  %i.dt = icmp sgt i32 %.31539, %i.ca
  br i1 %i.dt, label %.loopexit1882, label %.preheader1881

.preheader1881:                                   ; preds = %bb.ac, %bb.ak
  %.41540 = phi i32 [ %.51541, %bb.ak ], [ %.31539, %bb.ac ]
  %.41528 = phi i32 [ %.01529, %bb.ak ], [ %.31527, %bb.ac ] ; 3 uses
  %i.du = shl i32 %.41540, 1                      ; 2 uses
  %i.dv = or disjoint i32 %i.du, 1                ; 4 uses
  %i.dw = shl i32 %i.dv, 3
  %i.dx = add i32 %i.dw, %.01517                  ; 5 uses
  %i.dy = add i32 %i.du, 2                        ; 2 uses
  %.not1636 = icmp sgt i32 %i.h, %i.dy
  br i1 %.not1636, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %.preheader1881
  %i.dz = zext i32 %i.dx to i64                   ; 4 uses
  %.val1710 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ea = getelementptr inbounds nuw i8, ptr %.val1710, i64 %i.dz
  %.0.copyload.i1812 = load i32, ptr %i.ea, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1812) #13, !srcloc !14
  %.val1709 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %.val1709, i64 %i.dz
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.0.copyload.i1813 = load i32, ptr %i.ec, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1813) #13, !srcloc !14
  %i.ed = icmp ult i32 %.0.copyload.i1812, %.0.copyload.i1813
  br i1 %i.ed, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = icmp ugt i32 %.0.copyload.i1812, %.0.copyload.i1813
  br i1 %i.ee, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val1708 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1708, i64 %i.dz
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %.0.copyload.i1814 = load i32, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1814) #13, !srcloc !14
  %.val1707 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.eh = getelementptr inbounds nuw i8, ptr %.val1707, i64 %i.dz
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %.0.copyload.i1815 = load i32, ptr %i.ei, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1815) #13, !srcloc !14
  %i.ej = icmp ult i32 %.0.copyload.i1814, %.0.copyload.i1815
  br i1 %i.ej, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.ek = add i32 %i.dx, 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ae, %.preheader1881, %bb.ag
  %.51541 = phi i32 [ %i.dv, %bb.ae ], [ %i.dy, %bb.ag ], [ %i.dv, %.preheader1881 ], [ %i.dv, %bb.af ] ; 2 uses
  %.01529 = phi i32 [ %i.dx, %bb.ae ], [ %i.ek, %bb.ag ], [ %i.dx, %.preheader1881 ], [ %i.dx, %bb.af ] ; 3 uses
  %i.el = zext i32 %.01529 to i64                 ; 3 uses
  %.val1706 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.em = getelementptr inbounds nuw i8, ptr %.val1706, i64 %i.el
  %.0.copyload.i1816 = load i32, ptr %i.em, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1816) #13, !srcloc !14
  %i.en = icmp ult i32 %.0.copyload.i1816, %i.ds
  br i1 %i.en, label %.loopexit1882.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eo = icmp ugt i32 %.0.copyload.i1816, %i.ds
  br i1 %i.eo, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val1705 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %.val1705, i64 %i.el
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %.0.copyload.i1817 = load i32, ptr %i.eq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1817) #13, !srcloc !14
  %.not1637 = icmp ult i32 %.0.copyload.i1817, %i.dr
  br i1 %.not1637, label %.loopexit1882.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.er = zext i32 %.41528 to i64                 ; 2 uses
  %.val1771 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.es = getelementptr inbounds nuw i8, ptr %.val1771, i64 %i.er
  store i32 %.0.copyload.i1816, ptr %i.es, align 1
  %.val1704 = load ptr, ptr %i.a, align 8, !tbaa !13
end_hunk_9
begin_hunk_10_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.as
  %.71543 = phi i32 [ %i.fh, %bb.aq ], [ %i.fl, %bb.as ], [ %i.fh, %bb.ao ], [ %i.fh, %bb.ar ] ; 2 uses
  %.31532 = phi i32 [ %i.fk, %bb.aq ], [ %i.fx, %bb.as ], [ %i.fk, %bb.ao ], [ %i.fk, %bb.ar ] ; 4 uses
  %i.fy = zext i32 %.31532 to i64                 ; 7 uses
  %.val1699 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %.val1699, i64 %i.fy
  %.0.copyload.i1824 = load i32, ptr %i.fz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1824) #13, !srcloc !14
  %i.ga = zext i32 %.21531 to i64                 ; 2 uses
  %.val1767 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1767, i64 %i.ga
  store i32 %.0.copyload.i1824, ptr %i.gb, align 1
  %i.gc = add nuw nsw i64 %i.fy, 4                ; 5 uses
  %.val1698 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1698, i64 %i.gc
  %.0.copyload.i1825 = load i32, ptr %i.gd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1825) #13, !srcloc !14
  %.val1766 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %.val1766, i64 %i.ga
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i32 %.0.copyload.i1825, ptr %i.gf, align 1
  %.not1641 = icmp sgt i32 %.71543, %i.fe
  br i1 %.not1641, label %bb.au, label %bb.ao

bb.au:                                            ; preds = %bb.at
  %i.gg = lshr i64 %.0.copyload.i1819, 32
  %i.gh = trunc nuw i64 %i.gg to i32              ; 2 uses
  %i.gi = trunc i64 %.0.copyload.i1819 to i32     ; 2 uses
  %i.gj = add i32 %.11534, -8                     ; 3 uses
  %i.gk = icmp eq i32 %i.gj, %.31532
  br i1 %i.gk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.val1765 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gl = getelementptr inbounds nuw i8, ptr %.val1765, i64 %i.fy
  store i32 %i.gi, ptr %i.gl, align 1
  br label %.sink.split

bb.aw:                                            ; preds = %bb.au
  %i.gm = zext i32 %i.gj to i64                   ; 2 uses
  %.val1697 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gn = getelementptr inbounds nuw i8, ptr %.val1697, i64 %i.gm
  %.0.copyload.i1826 = load i32, ptr %i.gn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1826) #13, !srcloc !14
  %.val1763 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.go = getelementptr inbounds nuw i8, ptr %.val1763, i64 %i.fy
  store i32 %.0.copyload.i1826, ptr %i.go, align 1
  %i.gp = add i32 %.11534, -4
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %.val1696 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %.val1696, i64 %i.gq
  %.0.copyload.i1827 = load i32, ptr %i.gr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1827) #13, !srcloc !14
  %.val1762 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gs = getelementptr inbounds nuw i8, ptr %.val1762, i64 %i.gc
  store i32 %.0.copyload.i1827, ptr %i.gs, align 1
  %.val1761 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gt = getelementptr inbounds nuw i8, ptr %.val1761, i64 %i.gm
  store i32 %i.gi, ptr %i.gt, align 1
  %.val1760 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1760, i64 %i.gq
  store i32 %i.gh, ptr %i.gu, align 1
  %.reass.reass.reass = add i32 %.31532, %invariant.op ; 2 uses
  %i.gv = icmp slt i32 %.reass.reass.reass, 9
  br i1 %i.gv, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gw = lshr i32 %.reass.reass.reass, 3
  %i.gx = add nsw i32 %i.gw, -2                   ; 2 uses
  %i.gy = lshr i32 %i.gx, 1                       ; 2 uses
  %i.gz = shl i32 %i.gy, 3
  %i.ha = add i32 %i.gz, %.01517                  ; 2 uses
  %i.hb = zext i32 %i.ha to i64                   ; 4 uses
  %.val1695 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1695, i64 %i.hb
  %.0.copyload.i1828 = load i32, ptr %i.hc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1828) #13, !srcloc !14
  %.val1694 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1694, i64 %i.fy
  %.0.copyload.i1829 = load i32, ptr %i.hd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1829) #13, !srcloc !14
  %.not1642 = icmp ult i32 %.0.copyload.i1828, %.0.copyload.i1829
  br i1 %.not1642, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.he = icmp ugt i32 %.0.copyload.i1828, %.0.copyload.i1829
  br i1 %i.he, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val1693 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hf = getelementptr inbounds nuw i8, ptr %.val1693, i64 %i.hb
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %.0.copyload.i1830 = load i32, ptr %i.hg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1830) #13, !srcloc !14
  %.val1692 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1692, i64 %i.gc
  %.0.copyload.i1831 = load i32, ptr %i.hh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1831) #13, !srcloc !14
  %.not1643 = icmp ult i32 %.0.copyload.i1830, %.0.copyload.i1831
  br i1 %.not1643, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.val1784 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hi = getelementptr inbounds nuw i8, ptr %.val1784, i64 %i.fy
  %.0.copyload.i1832 = load i64, ptr %i.hi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1832) #13, !srcloc !33
  %.val1759 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1759, i64 %i.fy
  store i32 %.0.copyload.i1828, ptr %i.hj, align 1
  %.val1691 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hk = getelementptr inbounds nuw i8, ptr %.val1691, i64 %i.hb
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %.0.copyload.i1833 = load i32, ptr %i.hl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1833) #13, !srcloc !14
  %.val1758 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hm = getelementptr inbounds nuw i8, ptr %.val1758, i64 %i.gc
  store i32 %.0.copyload.i1833, ptr %i.hm, align 1
  %i.hn = lshr i64 %.0.copyload.i1832, 32
  %i.ho = trunc nuw i64 %i.hn to i32              ; 2 uses
  %i.hp = trunc i64 %.0.copyload.i1832 to i32     ; 3 uses
  %i.hq = icmp ult i32 %i.gx, 2
  br i1 %i.hq, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ba, %bb.be
  %.8 = phi i32 [ %i.hu, %bb.be ], [ %i.ha, %bb.ba ] ; 3 uses
  %.01503 = phi i32 [ %i.hs, %bb.be ], [ %i.gy, %bb.ba ]
  %i.hr = add nsw i32 %.01503, -1                 ; 2 uses
  %i.hs = lshr i32 %i.hr, 1                       ; 2 uses
  %i.ht = shl i32 %i.hs, 3
  %i.hu = add i32 %i.ht, %.01517                  ; 3 uses
  %i.hv = zext i32 %i.hu to i64                   ; 3 uses
  %.val1690 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hw = getelementptr inbounds nuw i8, ptr %.val1690, i64 %i.hv
  %.0.copyload.i1834 = load i32, ptr %i.hw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1834) #13, !srcloc !14
  %i.hx = icmp ult i32 %.0.copyload.i1834, %i.hp
  br i1 %i.hx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.preheader
  %.val1689 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hy = getelementptr inbounds nuw i8, ptr %.val1689, i64 %i.hv
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %.0.copyload.i1835 = load i32, ptr %i.hz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1835) #13, !srcloc !14
  br label %bb.be

bb.bc:                                            ; preds = %.preheader
  %i.ia = icmp ugt i32 %.0.copyload.i1834, %i.hp
  br i1 %i.ia, label %.loopexit.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val1688 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ib = getelementptr inbounds nuw i8, ptr %.val1688, i64 %i.hv
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %.0.copyload.i1836 = load i32, ptr %i.ic, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1836) #13, !srcloc !14
  %.not1644 = icmp ult i32 %.0.copyload.i1836, %i.ho
  br i1 %.not1644, label %bb.be, label %.loopexit.loopexit

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %.21510 = phi i32 [ %.0.copyload.i1835, %bb.bb ], [ %.0.copyload.i1836, %bb.bd ]
  %i.id = zext i32 %.8 to i64                     ; 2 uses
  %.val1757 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ie = getelementptr inbounds nuw i8, ptr %.val1757, i64 %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i32 %.21510, ptr %i.if, align 1
  %.val1756 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ig = getelementptr inbounds nuw i8, ptr %.val1756, i64 %i.id
  store i32 %.0.copyload.i1834, ptr %i.ig, align 1
  %i.ih = icmp ugt i32 %i.hr, 1
  br i1 %i.ih, label %.preheader, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.be, %bb.bd, %bb.bc
  %.21535.ph = phi i32 [ %i.hu, %bb.be ], [ %.8, %bb.bc ], [ %.8, %bb.bd ]
  %.pre = zext i32 %.21535.ph to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ba
  %.pre-phi = phi i64 [ %.pre, %.loopexit.loopexit ], [ %i.hb, %bb.ba ] ; 2 uses
  %.val1755 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ii = getelementptr inbounds nuw i8, ptr %.val1755, i64 %.pre-phi
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store i32 %i.ho, ptr %i.ij, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.av, %.loopexit
  %.pre-phi.sink = phi i64 [ %.pre-phi, %.loopexit ], [ %i.gc, %bb.av ]
  %.sink = phi i32 [ %i.hp, %.loopexit ], [ %i.gh, %bb.av ]
  %.val1754 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ik = getelementptr inbounds nuw i8, ptr %.val1754, i64 %.pre-phi.sink
  store i32 %.sink, ptr %i.ik, align 1
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split, %bb.az, %bb.ay, %bb.aw
  %.not1880 = icmp eq i32 %.21520, 2
  %i.il = add nsw i32 %.21520, -1
  br i1 %.not1880, label %.thread, label %bb.am

bb.bg:                                            ; preds = %5
  %i.im = shl nuw nsw i32 %i.h, 2
  %i.in = and i32 %i.im, 1073741816
  %i.io = add i32 %i.in, %.01517                  ; 6 uses
  %i.ip = icmp samesign ugt i32 %i.g, 7992
  br i1 %i.ip, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.iq = shl nuw nsw i32 %i.h, 1
  %i.ir = and i32 %i.iq, 536870904                ; 2 uses
  %i.is = add i32 %i.ir, %.01517
  %i.it = add i32 %i.io, %i.ir
  %i.iu = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort50x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr noundef %0, i32 noundef %.01517, i32 noundef %i.is, i32 noundef %i.io, i32 noundef %i.it, i32 noundef %i.d)
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.iv = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr noundef %0, i32 noundef %.01517, i32 noundef %i.io, i32 noundef %i.d)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.1 = phi i32 [ %i.iu, %bb.bh ], [ %i.iv, %bb.bi ] ; 3 uses
  %i.iw = add i32 %.21526, -1                     ; 4 uses
  %i.ix = zext i32 %.01517 to i64                 ; 9 uses
  %.val1687 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1687, i64 %i.ix
  %.0.copyload.i1837 = load i32, ptr %i.iy, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1837) #13, !srcloc !14
  %i.iz = zext i32 %i.io to i64                   ; 3 uses
  %.val1686 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ja = getelementptr inbounds nuw i8, ptr %.val1686, i64 %i.iz
  %.0.copyload.i1838 = load i32, ptr %i.ja, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1838) #13, !srcloc !14
  %i.jb = icmp ult i32 %.0.copyload.i1837, %.0.copyload.i1838
  br i1 %i.jb, label %.loopexit1900, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jc = icmp ult i32 %.0.copyload.i1838, %.0.copyload.i1837
  br i1 %i.jc, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.val1685 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.jd = getelementptr inbounds nuw i8, ptr %.val1685, i64 %i.ix
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %.0.copyload.i1839 = load i32, ptr %i.je, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1839) #13, !srcloc !14
  %.val1684 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.jf = getelementptr inbounds nuw i8, ptr %.val1684, i64 %i.iz
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %.0.copyload.i1840 = load i32, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1840) #13, !srcloc !14
  %.not1611 = icmp ult i32 %.0.copyload.i1839, %.0.copyload.i1840
  br i1 %.not1611, label %.loopexit1900, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.not1612 = icmp eq i32 %.01517, %i.c
  br i1 %.not1612, label %.loopexit1896, label %.preheader1895

.preheader1895:                                   ; preds = %bb.bm, %bb.bp
  %.10 = phi i32 [ %i.jq, %bb.bp ], [ %i.c, %bb.bm ] ; 4 uses
  %.31521 = phi i32 [ %.10, %bb.bp ], [ %i.d, %bb.bm ] ; 2 uses
  %i.jh = zext i32 %.10 to i64                    ; 2 uses
  %.val1683 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ji = getelementptr inbounds nuw i8, ptr %.val1683, i64 %i.jh
  %.0.copyload.i1841 = load i32, ptr %i.ji, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1841) #13, !srcloc !14
  %i.jj = icmp ult i32 %.0.copyload.i1841, %.0.copyload.i1838
  br i1 %i.jj, label %.preheader1895._crit_edge, label %bb.bn

.preheader1895._crit_edge:                        ; preds = %.preheader1895
  %.pre2096 = add i32 %.31521, -4
  %.pre2098 = zext i32 %.pre2096 to i64
  br label %split

bb.bn:                                            ; preds = %.preheader1895
  %.not1613 = icmp ult i32 %.0.copyload.i1838, %.0.copyload.i1841
  br i1 %.not1613, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jk = add i32 %.31521, -4
  %i.jl = zext i32 %i.jk to i64                   ; 2 uses
  %.val1682 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1682, i64 %i.jl
  %.0.copyload.i1842 = load i32, ptr %i.jm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1842) #13, !srcloc !14
  %.val1681 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1681, i64 %i.iz
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %.0.copyload.i1843 = load i32, ptr %i.jo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1843) #13, !srcloc !14
  %i.jp = icmp ult i32 %.0.copyload.i1842, %.0.copyload.i1843
  br i1 %i.jp, label %split, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.jq = add i32 %.10, -8                        ; 2 uses
  %.not1614 = icmp eq i32 %.01517, %i.jq
  br i1 %.not1614, label %.loopexit1896, label %.preheader1895

.loopexit1896:                                    ; preds = %bb.bp, %bb.bm
  %i.jr = add i32 %.01517, 8                      ; 4 uses
  %.val1680 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.js = getelementptr inbounds nuw i8, ptr %.val1680, i64 %i.e
  %.0.copyload.i1844 = load i32, ptr %i.js, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1844) #13, !srcloc !14
  %i.jt = icmp ult i32 %.0.copyload.i1837, %.0.copyload.i1844
  br i1 %i.jt, label %bb.cq, label %bb.bq

bb.bq:                                            ; preds = %.loopexit1896
  %.not1615 = icmp ult i32 %.0.copyload.i1844, %.0.copyload.i1837
  br i1 %.not1615, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.val1679 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ju = getelementptr inbounds nuw i8, ptr %.val1679, i64 %i.ix
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %.0.copyload.i1845 = load i32, ptr %i.jv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1845) #13, !srcloc !14
  %.val1678 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1678, i64 %i.f
  %.0.copyload.i1846 = load i32, ptr %i.jw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1846) #13, !srcloc !14
  %i.jx = icmp ult i32 %.0.copyload.i1845, %.0.copyload.i1846
  br i1 %i.jx, label %bb.cq, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.jy = icmp eq i32 %i.jr, %i.d
  br i1 %i.jy, label %.thread, label %.preheader1893

.preheader1893:                                   ; preds = %bb.bs, %bb.bw
  %.01512 = phi i32 [ %i.ko, %bb.bw ], [ %i.jr, %bb.bs ] ; 3 uses
  %i.jz = zext i32 %.01512 to i64                 ; 4 uses
  %.val1677 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ka = getelementptr inbounds nuw i8, ptr %.val1677, i64 %i.jz
  %.0.copyload.i1847 = load i32, ptr %i.ka, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1847) #13, !srcloc !14
  %.not1616 = icmp ugt i32 %.0.copyload.i1847, %.0.copyload.i1837
  br i1 %.not1616, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %.preheader1893
  %i.kb = icmp ult i32 %.0.copyload.i1847, %.0.copyload.i1837
  br i1 %i.kb, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.val1676 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kc = getelementptr inbounds nuw i8, ptr %.val1676, i64 %i.ix
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %.0.copyload.i1848 = load i32, ptr %i.kd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1848) #13, !srcloc !14
  %.val1675 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1675, i64 %i.jz
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %.0.copyload.i1849 = load i32, ptr %i.kf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1849) #13, !srcloc !14
  %.not1617 = icmp ult i32 %.0.copyload.i1848, %.0.copyload.i1849
  br i1 %.not1617, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %.preheader1893
  %.val1753 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kg = getelementptr inbounds nuw i8, ptr %.val1753, i64 %i.jz
  store i32 %.0.copyload.i1844, ptr %i.kg, align 1
  %.val1752 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %.val1752, i64 %i.e
  store i32 %.0.copyload.i1847, ptr %i.kh, align 1
  %i.ki = add nuw nsw i64 %i.jz, 4                ; 2 uses
  %.val1674 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1674, i64 %i.ki
  %.0.copyload.i1850 = load i32, ptr %i.kj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1850) #13, !srcloc !14
  %.val1673 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1673, i64 %i.f
  %.0.copyload.i1851 = load i32, ptr %i.kk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1851) #13, !srcloc !14
  %.val1751 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kl = getelementptr inbounds nuw i8, ptr %.val1751, i64 %i.ki
  store i32 %.0.copyload.i1851, ptr %i.kl, align 1
  %.val1750 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.km = getelementptr inbounds nuw i8, ptr %.val1750, i64 %i.f
  store i32 %.0.copyload.i1850, ptr %i.km, align 1
  %i.kn = add i32 %.01512, 8
  br label %bb.cq

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.ko = add i32 %.01512, 8                      ; 2 uses
  %.not1618 = icmp eq i32 %i.ko, %i.d
  br i1 %.not1618, label %.thread, label %.preheader1893

split:                                            ; preds = %bb.bo, %.preheader1895._crit_edge
  %.pre-phi2099 = phi i64 [ %.pre2098, %.preheader1895._crit_edge ], [ %i.jl, %bb.bo ] ; 2 uses
  %.val1749 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kp = getelementptr inbounds nuw i8, ptr %.val1749, i64 %i.ix
  store i32 %.0.copyload.i1841, ptr %i.kp, align 1
  %.val1748 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1748, i64 %i.jh
  store i32 %.0.copyload.i1837, ptr %i.kq, align 1
  %i.kr = add nuw nsw i64 %i.ix, 4                ; 2 uses
  %.val1672 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ks = getelementptr inbounds nuw i8, ptr %.val1672, i64 %i.kr
  %.0.copyload.i1852 = load i32, ptr %i.ks, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1852) #13, !srcloc !14
  %.val1671 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kt = getelementptr inbounds nuw i8, ptr %.val1671, i64 %.pre-phi2099
  %.0.copyload.i1853 = load i32, ptr %i.kt, align 1 ; 2 uses
end_hunk_10
begin_hunk_11_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %.0.copyload.i1867 = load i32, ptr %i.mt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1867) #13, !srcloc !14
  %.not1629 = icmp ult i32 %.0.copyload.i1866, %.0.copyload.i1867
  br i1 %.not1629, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  %.val1741 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.mu = getelementptr inbounds nuw i8, ptr %.val1741, i64 %i.mn
  store i32 %.0.copyload.i1864, ptr %i.mu, align 1
  %.val1740 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.mv = getelementptr inbounds nuw i8, ptr %.val1740, i64 %i.ml
  store i32 %.0.copyload.i1865, ptr %i.mv, align 1
  %i.mw = add nuw nsw i64 %i.mn, 4                ; 2 uses
  %.val1656 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.mx = getelementptr inbounds nuw i8, ptr %.val1656, i64 %i.mw
  %.0.copyload.i1868 = load i32, ptr %i.mx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1868) #13, !srcloc !14
  %i.my = add nuw nsw i64 %i.ml, 4                ; 2 uses
  %.val1655 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.mz = getelementptr inbounds nuw i8, ptr %.val1655, i64 %i.my
  %.0.copyload.i1869 = load i32, ptr %i.mz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1869) #13, !srcloc !14
  %.val1739 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.na = getelementptr inbounds nuw i8, ptr %.val1739, i64 %i.mw
  store i32 %.0.copyload.i1869, ptr %i.na, align 1
  %.val1738 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.nb = getelementptr inbounds nuw i8, ptr %.val1738, i64 %i.my
  store i32 %.0.copyload.i1868, ptr %i.nb, align 1
  %i.nc = add i32 %.2, 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.cg, %.loopexit1898, %bb.ci
  %.3 = phi i32 [ %.2, %.loopexit1898 ], [ %.2, %bb.cg ], [ %.2, %bb.ch ], [ %i.nc, %bb.ci ]
  %.not1630 = icmp eq i32 %.3, 0
  br i1 %.not1630, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.nd = tail call i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01517, i32 noundef %.6) #13
  %i.ne = add i32 %.6, 8                          ; 2 uses
  %i.nf = tail call i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %i.ne, i32 noundef %.01533) #13
  %.not1631 = icmp eq i32 %i.nf, 0
  %.not1632 = icmp eq i32 %i.nd, 0                ; 2 uses
  br i1 %.not1631, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  br i1 %.not1632, label %.backedge1903.backedge, label %.thread

bb.cm:                                            ; preds = %bb.ck
  br i1 %.not1632, label %bb.cn, label %.loopexit1892.backedge

bb.cn:                                            ; preds = %bb.cm, %bb.cj
  %i.ng = sub i32 %.6, %.01517
  %i.nh = sub i32 %.01533, %.6
  %i.ni = icmp slt i32 %i.ng, %i.nh
  br i1 %i.ni, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %.01517, i32 noundef %.6, i32 noundef %3, i32 noundef %i.iw)
  %i.nj = add i32 %.6, 8
  br label %.loopexit1892.backedge

.loopexit1892.backedge:                           ; preds = %bb.cv, %bb.co, %bb.cm
  %.01517.be = phi i32 [ %i.ne, %bb.cm ], [ %i.nj, %bb.co ], [ %.5, %bb.cv ]
  br label %.loopexit1892

bb.cp:                                            ; preds = %bb.cn
  %i.nk = add i32 %.6, 8
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %i.nk, i32 noundef %.01533, i32 noundef %3, i32 noundef %i.iw)
  br label %.backedge1903.backedge

.backedge1903.backedge:                           ; preds = %bb.cp, %bb.cl
  br label %.backedge1903

bb.cq:                                            ; preds = %bb.br, %.loopexit1896, %bb.bv
  %.31515 = phi i32 [ %i.jr, %.loopexit1896 ], [ %i.jr, %bb.br ], [ %i.kn, %bb.bv ] ; 2 uses
  %i.nl = icmp eq i32 %.31515, %i.d
  br i1 %i.nl, label %.thread, label %.preheader1891

.preheader1891:                                   ; preds = %bb.cq, %bb.cw
  %.15 = phi i32 [ %i.nz, %bb.cw ], [ %i.d, %bb.cq ]
  %.41516 = phi i32 [ %i.ot, %bb.cw ], [ %.31515, %bb.cq ] ; 3 uses
  %.val1654 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.nm = getelementptr inbounds nuw i8, ptr %.val1654, i64 %i.ix
  %.0.copyload.i1870 = load i32, ptr %i.nm, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1870) #13, !srcloc !14
  %i.nn = zext i32 %.41516 to i64
  %.val1653 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.no = getelementptr inbounds nuw i8, ptr %.val1653, i64 %i.nn
  %.0.copyload.i1871 = load i32, ptr %i.no, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1871) #13, !srcloc !14
  %i.np = icmp ult i32 %.0.copyload.i1870, %.0.copyload.i1871
  br i1 %i.np, label %.loopexit1888, label %.preheader1887

.preheader1887:                                   ; preds = %.preheader1891, %bb.cs
  %.7 = phi i32 [ %i.ny, %bb.cs ], [ %.41516, %.preheader1891 ] ; 4 uses
  %.21506 = phi i32 [ %.0.copyload.i1874, %bb.cs ], [ %.0.copyload.i1871, %.preheader1891 ] ; 2 uses
  %i.nq = icmp ugt i32 %.0.copyload.i1870, %.21506
  br i1 %i.nq, label %.preheader1887._crit_edge, label %bb.cr

.preheader1887._crit_edge:                        ; preds = %.preheader1887
  %.pre2094 = zext i32 %.7 to i64
  br label %bb.cs

bb.cr:                                            ; preds = %.preheader1887
  %.val1652 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.nr = getelementptr inbounds nuw i8, ptr %.val1652, i64 %i.ix
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %.0.copyload.i1872 = load i32, ptr %i.ns, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1872) #13, !srcloc !14
  %i.nt = zext i32 %.7 to i64                     ; 2 uses
  %.val1651 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.nu = getelementptr inbounds nuw i8, ptr %.val1651, i64 %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %.0.copyload.i1873 = load i32, ptr %i.nv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1873) #13, !srcloc !14
  %.not1619 = icmp ult i32 %.0.copyload.i1872, %.0.copyload.i1873
  br i1 %.not1619, label %.loopexit1888, label %bb.cs

bb.cs:                                            ; preds = %.preheader1887._crit_edge, %bb.cr
  %.pre-phi2095 = phi i64 [ %.pre2094, %.preheader1887._crit_edge ], [ %i.nt, %bb.cr ]
  %.val1650 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.nw = getelementptr inbounds nuw i8, ptr %.val1650, i64 %.pre-phi2095
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %.0.copyload.i1874 = load i32, ptr %i.nx, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1874) #13, !srcloc !14
  %i.ny = add i32 %.7, 8                          ; 2 uses
  %.not1620 = icmp ult i32 %.0.copyload.i1870, %.0.copyload.i1874
  br i1 %.not1620, label %.loopexit1888, label %.preheader1887

.loopexit1888:                                    ; preds = %bb.cr, %bb.cs, %.preheader1891
  %.5 = phi i32 [ %.41516, %.preheader1891 ], [ %.7, %bb.cr ], [ %i.ny, %bb.cs ] ; 4 uses
  %.31507 = phi i32 [ %.0.copyload.i1871, %.preheader1891 ], [ %.21506, %bb.cr ], [ %.0.copyload.i1874, %bb.cs ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.loopexit1888
  %.16 = phi i32 [ %.15, %.loopexit1888 ], [ %i.nz, %.backedge.backedge ] ; 3 uses
  %i.nz = add i32 %.16, -8                        ; 4 uses
  %i.oa = zext i32 %i.nz to i64                   ; 2 uses
  %.val1649 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ob = getelementptr inbounds nuw i8, ptr %.val1649, i64 %i.oa
  %.0.copyload.i1875 = load i32, ptr %i.ob, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1875) #13, !srcloc !14
  %i.oc = icmp ult i32 %.0.copyload.i1870, %.0.copyload.i1875
  br i1 %i.oc, label %.backedge.backedge, label %bb.ct

.backedge.backedge:                               ; preds = %.backedge, %bb.cu
  br label %.backedge

bb.ct:                                            ; preds = %.backedge
  %.not1621 = icmp ugt i32 %.0.copyload.i1870, %.0.copyload.i1875
  br i1 %.not1621, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.val1648 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.od = getelementptr inbounds nuw i8, ptr %.val1648, i64 %i.ix
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %.0.copyload.i1876 = load i32, ptr %i.oe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1876) #13, !srcloc !14
  %i.of = add i32 %.16, -4
  %i.og = zext i32 %i.of to i64
  %.val1647 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.oh = getelementptr inbounds nuw i8, ptr %.val1647, i64 %i.og
  %.0.copyload.i1877 = load i32, ptr %i.oh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1877) #13, !srcloc !14
  %i.oi = icmp ult i32 %.0.copyload.i1876, %.0.copyload.i1877
  br i1 %i.oi, label %.backedge.backedge, label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.not1622 = icmp ugt i32 %i.nz, %.5
  br i1 %.not1622, label %bb.cw, label %.loopexit1892.backedge

bb.cw:                                            ; preds = %bb.cv
  %i.oj = zext i32 %.5 to i64                     ; 2 uses
  %.val1737 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ok = getelementptr inbounds nuw i8, ptr %.val1737, i64 %i.oj
  store i32 %.0.copyload.i1875, ptr %i.ok, align 1
  %.val1736 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ol = getelementptr inbounds nuw i8, ptr %.val1736, i64 %i.oa
  store i32 %.31507, ptr %i.ol, align 1
  %i.om = add nuw nsw i64 %i.oj, 4                ; 2 uses
  %.val1646 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.on = getelementptr inbounds nuw i8, ptr %.val1646, i64 %i.om
  %.0.copyload.i1878 = load i32, ptr %i.on, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1878) #13, !srcloc !14
  %i.oo = add i32 %.16, -4
  %i.op = zext i32 %i.oo to i64                   ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.oq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.op
  %.0.copyload.i1879 = load i32, ptr %i.oq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1879) #13, !srcloc !14
  %.val1735 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.or = getelementptr inbounds nuw i8, ptr %.val1735, i64 %i.om
  store i32 %.0.copyload.i1879, ptr %i.or, align 1
  %.val1734 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.os = getelementptr inbounds nuw i8, ptr %.val1734, i64 %i.op
  store i32 %.0.copyload.i1878, ptr %i.os, align 1
  %i.ot = add i32 %.5, 8
  br label %.preheader1891

.thread:                                          ; preds = %bb.cl, %.loopexit1892, %.loopexit1892, %bb.bs, %bb.cq, %bb.bw, %bb.q, %bb.am, %bb.bf, %bb.r, %bb.c, %bb.d, %bb.i, %bb.s, %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 6) i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 30 uses
  %i.c = zext i32 %4 to i64                       ; 4 uses
  %.val202 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %.val202, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.e = zext i32 %3 to i64                       ; 6 uses
  %.val201 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.e
  %.0.copyload.i215 = load i32, ptr %i.f, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i215) #13, !srcloc !14
  %i.g = icmp ult i32 %.0.copyload.i, %.0.copyload.i215
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %.0.copyload.i, %.0.copyload.i215
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val200 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.0.copyload.i216 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i216) #13, !srcloc !14
  %.val199 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.0.copyload.i217 = load i32, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i217) #13, !srcloc !14
  %i.m = icmp ult i32 %.0.copyload.i216, %.0.copyload.i217
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.a
  %.val214 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val214, i64 %i.e
  store i32 %.0.copyload.i, ptr %i.n, align 1
  %.val213 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val213, i64 %i.c
  store i32 %.0.copyload.i215, ptr %i.o, align 1
  %i.p = add nuw nsw i64 %i.e, 4                  ; 5 uses
  %.val198 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.p
  %.0.copyload.i218 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i218) #13, !srcloc !14
  %i.r = add nuw nsw i64 %i.c, 4                  ; 2 uses
  %.val197 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.r
  %.0.copyload.i219 = load i32, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i219) #13, !srcloc !14
  %.val212 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val212, i64 %i.p
  store i32 %.0.copyload.i219, ptr %i.t, align 1
  %.val211 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val211, i64 %i.r
  store i32 %.0.copyload.i218, ptr %i.u, align 1
  %.val196 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.e
  %.0.copyload.i220 = load i32, ptr %i.v, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i220) #13, !srcloc !14
  %i.w = zext i32 %2 to i64                       ; 6 uses
  %.val195 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.w
  %.0.copyload.i221 = load i32, ptr %i.x, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i221) #13, !srcloc !14
  %.not = icmp ult i32 %.0.copyload.i220, %.0.copyload.i221
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.z = icmp ugt i32 %.0.copyload.i220, %.0.copyload.i221
  br i1 %i.z, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val194 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.p
  %.0.copyload.i222 = load i32, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i222) #13, !srcloc !14
  %.val193 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.0.copyload.i223 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i223) #13, !srcloc !14
  %.not183 = icmp ult i32 %.0.copyload.i222, %.0.copyload.i223
  br i1 %.not183, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.d
  %.val210 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.val210, i64 %i.w
  store i32 %.0.copyload.i220, ptr %i.ad, align 1
  %.val209 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.val209, i64 %i.e
  store i32 %.0.copyload.i221, ptr %i.ae, align 1
  %i.af = add nuw nsw i64 %i.w, 4                 ; 5 uses
  %.val192 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.af
  %.0.copyload.i224 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i224) #13, !srcloc !14
  %.val191 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.p
  %.0.copyload.i225 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i225) #13, !srcloc !14
  %.val208 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val208, i64 %i.af
  store i32 %.0.copyload.i225, ptr %i.ai, align 1
  %.val207 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val207, i64 %i.p
  store i32 %.0.copyload.i224, ptr %i.aj, align 1
  %.val190 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.w
  %.0.copyload.i226 = load i32, ptr %i.ak, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i226) #13, !srcloc !14
  %i.al = zext i32 %1 to i64                      ; 4 uses
  %.val189 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.al
  %.0.copyload.i227 = load i32, ptr %i.am, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i227) #13, !srcloc !14
  %.not184 = icmp ult i32 %.0.copyload.i226, %.0.copyload.i227
  br i1 %.not184, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = add nuw nsw i32 %i.a, 2                 ; 2 uses
  %i.ao = icmp ugt i32 %.0.copyload.i226, %.0.copyload.i227
  br i1 %i.ao, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val188 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.af
  %.0.copyload.i228 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i228) #13, !srcloc !14
  %.val187 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.0.copyload.i229 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i229) #13, !srcloc !14
  %.not185 = icmp ult i32 %.0.copyload.i228, %.0.copyload.i229
  br i1 %.not185, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g
  %.val206 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val206, i64 %i.al
  store i32 %.0.copyload.i226, ptr %i.as, align 1
  %.val205 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val205, i64 %i.w
  store i32 %.0.copyload.i227, ptr %i.at, align 1
  %i.au = add nuw nsw i64 %i.al, 4                ; 2 uses
  %.val186 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.au
  %.0.copyload.i230 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i230) #13, !srcloc !14
  %.val = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 %i.af
  %.0.copyload.i231 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i231) #13, !srcloc !14
  %.val204 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val204, i64 %i.au
  store i32 %.0.copyload.i231, ptr %i.ax, align 1
  %.val203 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val203, i64 %i.af
  store i32 %.0.copyload.i230, ptr %i.ay, align 1
  %i.az = add nuw nsw i32 %i.a, 3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e, %bb.f, %bb.h, %bb.i, %bb.c, %bb.b
  %.0 = phi i32 [ %i.a, %bb.c ], [ %i.a, %bb.b ], [ %i.y, %bb.e ], [ %i.y, %bb.f ], [ %i.an, %bb.h ], [ %i.an, %bb.i ], [ %i.az, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 10) i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort50x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 40 uses
  %i.c = zext i32 %5 to i64                       ; 4 uses
  %.val269 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %.val269, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.e = zext i32 %4 to i64                       ; 6 uses
  %.val268 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %.val268, i64 %i.e
  %.0.copyload.i286 = load i32, ptr %i.f, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i286) #13, !srcloc !14
  %i.g = icmp ult i32 %.0.copyload.i, %.0.copyload.i286
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %.0.copyload.i, %.0.copyload.i286
  br i1 %i.h, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val267 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val267, i64 %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
end_hunk_11
begin_hunk_12_@w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort50x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29:bb.a
  %.val284 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val284, i64 %i.c
  store i32 %.0.copyload.i286, ptr %i.o, align 1
  %i.p = add nuw nsw i64 %i.e, 4                  ; 5 uses
  %.val265 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val265, i64 %i.p
  %.0.copyload.i289 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i289) #13, !srcloc !14
  %i.r = add nuw nsw i64 %i.c, 4                  ; 2 uses
  %.val264 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val264, i64 %i.r
  %.0.copyload.i290 = load i32, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i290) #13, !srcloc !14
  %.val283 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val283, i64 %i.p
  store i32 %.0.copyload.i290, ptr %i.t, align 1
  %.val282 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val282, i64 %i.r
  store i32 %.0.copyload.i289, ptr %i.u, align 1
  %.val263 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val263, i64 %i.e
  %.0.copyload.i291 = load i32, ptr %i.v, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i291) #13, !srcloc !14
  %i.w = zext i32 %3 to i64                       ; 6 uses
  %.val262 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val262, i64 %i.w
  %.0.copyload.i292 = load i32, ptr %i.x, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i292) #13, !srcloc !14
  %.not = icmp ult i32 %.0.copyload.i291, %.0.copyload.i292
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.z = icmp ugt i32 %.0.copyload.i291, %.0.copyload.i292
  br i1 %i.z, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val261 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.val261, i64 %i.p
  %.0.copyload.i293 = load i32, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i293) #13, !srcloc !14
  %.val260 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val260, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.0.copyload.i294 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i294) #13, !srcloc !14
  %.not242 = icmp ult i32 %.0.copyload.i293, %.0.copyload.i294
  br i1 %.not242, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f, %bb.d
  %.val281 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.val281, i64 %i.w
  store i32 %.0.copyload.i291, ptr %i.ad, align 1
  %.val280 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.val280, i64 %i.e
  store i32 %.0.copyload.i292, ptr %i.ae, align 1
  %i.af = add nuw nsw i64 %i.w, 4                 ; 5 uses
  %.val259 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val259, i64 %i.af
  %.0.copyload.i295 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i295) #13, !srcloc !14
  %.val258 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.val258, i64 %i.p
  %.0.copyload.i296 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i296) #13, !srcloc !14
  %.val279 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.af
  store i32 %.0.copyload.i296, ptr %i.ai, align 1
  %.val278 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val278, i64 %i.p
  store i32 %.0.copyload.i295, ptr %i.aj, align 1
  %.val257 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val257, i64 %i.w
  %.0.copyload.i297 = load i32, ptr %i.ak, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i297) #13, !srcloc !14
  %i.al = zext i32 %2 to i64                      ; 6 uses
  %.val256 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val256, i64 %i.al
  %.0.copyload.i298 = load i32, ptr %i.am, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i298) #13, !srcloc !14
  %.not243 = icmp ult i32 %.0.copyload.i297, %.0.copyload.i298
  br i1 %.not243, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = add nuw nsw i32 %i.a, 2                 ; 2 uses
  %i.ao = icmp ugt i32 %.0.copyload.i297, %.0.copyload.i298
  br i1 %i.ao, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val255 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val255, i64 %i.af
  %.0.copyload.i299 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i299) #13, !srcloc !14
  %.val254 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val254, i64 %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.0.copyload.i300 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i300) #13, !srcloc !14
  %.not244 = icmp ult i32 %.0.copyload.i299, %.0.copyload.i300
  br i1 %.not244, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i, %bb.g
  %.val277 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val277, i64 %i.al
  store i32 %.0.copyload.i297, ptr %i.as, align 1
  %.val276 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val276, i64 %i.w
  store i32 %.0.copyload.i298, ptr %i.at, align 1
  %i.au = add nuw nsw i64 %i.al, 4                ; 5 uses
  %.val253 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val253, i64 %i.au
  %.0.copyload.i301 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i301) #13, !srcloc !14
  %.val252 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val252, i64 %i.af
  %.0.copyload.i302 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i302) #13, !srcloc !14
  %.val275 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val275, i64 %i.au
  store i32 %.0.copyload.i302, ptr %i.ax, align 1
  %.val274 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val274, i64 %i.af
  store i32 %.0.copyload.i301, ptr %i.ay, align 1
  %.val251 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.val251, i64 %i.al
  %.0.copyload.i303 = load i32, ptr %i.az, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i303) #13, !srcloc !14
  %i.ba = zext i32 %1 to i64                      ; 4 uses
  %.val250 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.val250, i64 %i.ba
  %.0.copyload.i304 = load i32, ptr %i.bb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i304) #13, !srcloc !14
  %.not245 = icmp ult i32 %.0.copyload.i303, %.0.copyload.i304
  br i1 %.not245, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = add nuw nsw i32 %i.a, 3                 ; 2 uses
  %i.bd = icmp ugt i32 %.0.copyload.i303, %.0.copyload.i304
  br i1 %i.bd, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val249 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val249, i64 %i.au
  %.0.copyload.i305 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i305) #13, !srcloc !14
  %.val248 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val248, i64 %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.0.copyload.i306 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i306) #13, !srcloc !14
  %.not246 = icmp ult i32 %.0.copyload.i305, %.0.copyload.i306
  br i1 %.not246, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.j
  %.val273 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.val273, i64 %i.ba
  store i32 %.0.copyload.i303, ptr %i.bh, align 1
  %.val272 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val272, i64 %i.al
  store i32 %.0.copyload.i304, ptr %i.bi, align 1
  %i.bj = add nuw nsw i64 %i.ba, 4                ; 2 uses
  %.val247 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val247, i64 %i.bj
  %.0.copyload.i307 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i307) #13, !srcloc !14
  %.val = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 %i.au
  %.0.copyload.i308 = load i32, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i308) #13, !srcloc !14
  %.val271 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val271, i64 %i.bj
  store i32 %.0.copyload.i308, ptr %i.bm, align 1
  %.val270 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val270, i64 %i.au
  store i32 %.0.copyload.i307, ptr %i.bn, align 1
  %i.bo = add nuw nsw i32 %i.a, 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e, %bb.f, %bb.h, %bb.i, %bb.k, %bb.l, %bb.c, %bb.b
  %.0 = phi i32 [ %i.a, %bb.c ], [ %i.a, %bb.b ], [ %i.y, %bb.e ], [ %i.y, %bb.f ], [ %i.an, %bb.h ], [ %i.an, %bb.i ], [ %i.bc, %bb.k ], [ %i.bc, %bb.l ], [ %i.bo, %bb.m ]
  ret i32 %.0
}

declare i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x3E0x260x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3ASMFixIt0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 380 uses
  %i.e = zext i32 %i.c to i64                     ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 11                 ; 12 uses
  %i.g = add nuw nsw i64 %i.e, 8                  ; 12 uses
  br label %.backedge4401

.backedge4401:                                    ; preds = %.backedge4401.backedge, %bb.a
  %.03519 = phi i32 [ %1, %bb.a ], [ %.03501, %.backedge4401.backedge ]
  %.03514 = phi i32 [ %2, %bb.a ], [ %.8, %.backedge4401.backedge ] ; 14 uses
  %.03506 = phi i32 [ %4, %bb.a ], [ %i.rs, %.backedge4401.backedge ]
  %i.h = add i32 %.03514, -8
  %i.i = add i32 %.03514, -1
  %i.j = add i32 %.03514, -12                     ; 3 uses
  %i.k = add i32 %.03514, -16
  %i.l = add i32 %.03514, -40                     ; 2 uses
  %i.m = add i32 %.03514, -20                     ; 15 uses
  %i.n = zext i32 %i.m to i64                     ; 10 uses
  %i.o = zext i32 %i.k to i64                     ; 2 uses
  %i.p = zext i32 %i.h to i64                     ; 4 uses
  %i.q = zext i32 %i.i to i64                     ; 4 uses
  %i.r = zext i32 %i.j to i64                     ; 5 uses
  br label %.loopexit4392

.loopexit4392:                                    ; preds = %.loopexit4392.backedge, %.backedge4401
  %.23508 = phi i32 [ %.03506, %.backedge4401 ], [ %i.rs, %.loopexit4392.backedge ] ; 2 uses
  %.03501 = phi i32 [ %.03519, %.backedge4401 ], [ %.03501.be, %.loopexit4392.backedge ] ; 45 uses
  %i.s = sub i32 %.03514, %.03501                 ; 4 uses
  %i.t = sdiv i32 %i.s, 20                        ; 5 uses
  switch i32 %i.t, label %bb.m [
    i32 0, label %.loopexit4393
    i32 1, label %.loopexit4393
    i32 2, label %bb.b
    i32 3, label %bb.cx
    i32 4, label %bb.k
    i32 5, label %bb.l
  ]

bb.b:                                             ; preds = %.loopexit4392
  %.val3930 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val3930, i64 %i.n
  %.0.copyload.i = load i32, ptr %i.u, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.v = zext i32 %.03501 to i64                  ; 12 uses
  %.val3929 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.val3929, i64 %i.v
  %.0.copyload.i4140 = load i32, ptr %i.w, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4140) #13, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i, %.0.copyload.i4140
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp ugt i32 %.0.copyload.i4140, %.0.copyload.i
  br i1 %i.x, label %bb.j, label %.loopexit4393

bb.d:                                             ; preds = %bb.b
  %.val3928 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.val3928, i64 %i.o
  %.0.copyload.i4141 = load i32, ptr %i.y, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4141) #13, !srcloc !14
  %.val3927 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val3927, i64 %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.0.copyload.i4142 = load i32, ptr %i.aa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4142) #13, !srcloc !14
  %.not3642 = icmp eq i32 %.0.copyload.i4141, %.0.copyload.i4142
  br i1 %.not3642, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ugt i32 %.0.copyload.i4142, %.0.copyload.i4141
  br i1 %i.ab, label %bb.j, label %.loopexit4393

bb.f:                                             ; preds = %bb.d
  %.val3926 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val3926, i64 %i.v
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.0.copyload.i4143 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4143) #13, !srcloc !14
  %.val4030 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4030, i64 %i.v
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 19
  %.0.copyload.i4144 = load i8, ptr %i.af, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4144) #13, !srcloc !31
  %i.ag = zext i8 %.0.copyload.i4144 to i32
  %.not3643 = icmp sgt i8 %.0.copyload.i4144, -1  ; 2 uses
  %i.ah = select i1 %.not3643, i32 %i.ag, i32 %.0.copyload.i4143 ; 2 uses
  %.val3925 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val3925, i64 %i.p
  %.0.copyload.i4145 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4145) #13, !srcloc !14
  %.val4029 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val4029, i64 %i.q
  %.0.copyload.i4146 = load i8, ptr %i.aj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4146) #13, !srcloc !31
  %i.ak = zext i8 %.0.copyload.i4146 to i32
  %.not3644 = icmp sgt i8 %.0.copyload.i4146, -1  ; 2 uses
  %i.al = select i1 %.not3644, i32 %i.ak, i32 %.0.copyload.i4145 ; 2 uses
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %i.ah) ; 2 uses
  %.not3645 = icmp eq i32 %i.am, 0
  br i1 %.not3645, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val3924 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.val3924, i64 %i.r
  %.0.copyload.i4147 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4147) #13, !srcloc !14
  %i.ao = select i1 %.not3644, i32 %i.j, i32 %.0.copyload.i4147
  %.val3923 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val3923, i64 %i.v
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.0.copyload.i4148 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4148) #13, !srcloc !14
  %i.ar = add i32 %.03501, 8
  %i.as = select i1 %.not3643, i32 %i.ar, i32 %.0.copyload.i4148
  %i.at = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.ao, i32 noundef %i.as, i32 noundef %i.am) #13 ; 2 uses
  %.not3646 = icmp eq i32 %i.at, 0
  br i1 %.not3646, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.au = icmp ult i32 %i.al, %i.ah
  br i1 %i.au, label %bb.j, label %.loopexit4393

bb.i:                                             ; preds = %bb.g
  %i.av = icmp sgt i32 %i.at, -1
  br i1 %i.av, label %.loopexit4393, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.c
  %i.aw = add nuw nsw i64 %i.v, 8                 ; 3 uses
  %.val3922 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val3922, i64 %i.aw
  %.0.copyload.i4149 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4149) #13, !srcloc !14
  %.val4087 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val4087, i64 %i.v
  %.0.copyload.i4150 = load i64, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4150) #13, !srcloc !33
  %.val3921 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.val3921, i64 %i.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 15
  %.0.copyload.i4151 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4151) #13, !srcloc !14
  %.val3993 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.val3993, i64 %i.f
  store i32 %.0.copyload.i4151, ptr %i.bb, align 1
  %.val3920 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.val3920, i64 %i.v
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %.0.copyload.i4152 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4152) #13, !srcloc !14
  %.val3992 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val3992, i64 %i.g
  store i32 %.0.copyload.i4152, ptr %i.be, align 1
  %.val4136 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val4136, i64 %i.aw
  store i64 0, ptr %i.bf, align 1
  %.val4028 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val4028, i64 %i.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 19
  %.0.copyload.i4153 = load i8, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4153) #13, !srcloc !31
  %i.bi = add nuw nsw i64 %i.v, 16                ; 2 uses
  %.val3991 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.val3991, i64 %i.bi
  store i32 0, ptr %i.bj, align 1
  %.val4086 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val4086, i64 %i.n
  %.0.copyload.i4154 = load i64, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4154) #13, !srcloc !33
  %.val4135 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val4135, i64 %i.v
  store i64 %.0.copyload.i4154, ptr %i.bl, align 1
  %i.bm = add nuw nsw i64 %i.n, 8                 ; 2 uses
  %.val4085 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val4085, i64 %i.bm
  %.0.copyload.i4155 = load i64, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4155) #13, !srcloc !33
  %.val4134 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val4134, i64 %i.aw
  store i64 %.0.copyload.i4155, ptr %i.bo, align 1
  %.val3919 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.val3919, i64 %i.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.0.copyload.i4156 = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4156) #13, !srcloc !14
  %.val3990 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val3990, i64 %i.bi
  store i32 %.0.copyload.i4156, ptr %i.br, align 1
  %.val4133 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.val4133, i64 %i.n
  store i64 %.0.copyload.i4150, ptr %i.bs, align 1
  %.val3989 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.val3989, i64 %i.bm
  store i32 %.0.copyload.i4149, ptr %i.bt, align 1
  %.val3918 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val3918, i64 %i.g
  %.0.copyload.i4157 = load i32, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4157) #13, !srcloc !14
  %.val3988 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.val3988, i64 %i.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 %.0.copyload.i4157, ptr %i.bw, align 1
  %.val3917 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.val3917, i64 %i.f
  %.0.copyload.i4158 = load i32, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4158) #13, !srcloc !14
  %.val3987 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.val3987, i64 %i.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 15
  store i32 %.0.copyload.i4158, ptr %i.bz, align 1
  %.val4048 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.val4048, i64 %i.q
  store i8 %.0.copyload.i4153, ptr %i.ca, align 1
  br label %.loopexit4393

bb.k:                                             ; preds = %.loopexit4392
  %i.cb = add i32 %.03501, 20
  %i.cc = add i32 %.03501, 40
  %i.cd = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.03501, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.m) ; 0 uses
  br label %.loopexit4393

bb.l:                                             ; preds = %.loopexit4392
  %i.ce = add i32 %.03501, 20
  %i.cf = add i32 %.03501, 40
  %i.cg = add i32 %.03501, 60
  %i.ch = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort50x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.03501, i32 noundef %i.ce, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.m) ; 0 uses
  br label %.loopexit4393

bb.m:                                             ; preds = %.loopexit4392
  %i.ci = icmp slt i32 %i.s, 140
  br i1 %i.ci, label %bb.n, label %5

bb.n:                                             ; preds = %bb.m
  %i.cj = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ck = add i32 %i.cj, -32                      ; 2 uses
  store i32 %i.ck, ptr %i.a, align 8, !tbaa !32
  %i.cl = add i32 %.03501, 20
  %i.cm = add i32 %.03501, 40                     ; 2 uses
  %i.cn = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.03501, i32 noundef %i.cl, i32 noundef %i.cm) ; 0 uses
  %i.co = add i32 %.03501, 60                     ; 2 uses
  %.not3746 = icmp eq i32 %i.co, %.03514
  br i1 %.not3746, label %.loopexit4393, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = add i32 %i.cj, -16                      ; 2 uses
  %i.cq = zext i32 %i.ck to i64                   ; 5 uses
  %i.cr = add nuw nsw i64 %i.cq, 8                ; 3 uses
  %i.cs = zext i32 %i.cp to i64                   ; 3 uses
  %i.ct = add nuw nsw i64 %i.cs, 8                ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.ag, %bb.o
  %.23521 = phi i32 [ %i.co, %bb.o ], [ %i.hi, %bb.ag ] ; 4 uses
  %.03510 = phi i32 [ %i.cm, %bb.o ], [ %.23521, %bb.ag ] ; 5 uses
  %i.cu = zext i32 %.23521 to i64                 ; 9 uses
  %.val3916 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.val3916, i64 %i.cu
  %.0.copyload.i4159 = load i32, ptr %i.cv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4159) #13, !srcloc !14
  %i.cw = zext i32 %.03510 to i64                 ; 9 uses
  %.val3915 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.val3915, i64 %i.cw
  %.0.copyload.i4160 = load i32, ptr %i.cx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4160) #13, !srcloc !14
  %.not3747 = icmp eq i32 %.0.copyload.i4159, %.0.copyload.i4160
  br i1 %.not3747, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = icmp ugt i32 %.0.copyload.i4160, %.0.copyload.i4159
  br i1 %i.cy, label %bb.x, label %bb.ag

bb.r:                                             ; preds = %bb.p
  %.val3914 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %.val3914, i64 %i.cu
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.0.copyload.i4161 = load i32, ptr %i.da, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4161) #13, !srcloc !14
  %.val3913 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.db = getelementptr inbounds nuw i8, ptr %.val3913, i64 %i.cw
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %.0.copyload.i4162 = load i32, ptr %i.dc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4162) #13, !srcloc !14
  %.not3748 = icmp eq i32 %.0.copyload.i4161, %.0.copyload.i4162
  br i1 %.not3748, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = icmp ugt i32 %.0.copyload.i4162, %.0.copyload.i4161
  br i1 %i.dd, label %bb.x, label %bb.ag

bb.t:                                             ; preds = %bb.r
  %.val3912 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.val3912, i64 %i.cw
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %.0.copyload.i4163 = load i32, ptr %i.df, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4163) #13, !srcloc !14
  %.val4027 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %.val4027, i64 %i.cw
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 19
  %.0.copyload.i4164 = load i8, ptr %i.dh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4164) #13, !srcloc !31
  %i.di = zext i8 %.0.copyload.i4164 to i32
  %.not3749 = icmp sgt i8 %.0.copyload.i4164, -1  ; 2 uses
  %i.dj = select i1 %.not3749, i32 %i.di, i32 %.0.copyload.i4163 ; 2 uses
  %.val3911 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.val3911, i64 %i.cu
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %.0.copyload.i4165 = load i32, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4165) #13, !srcloc !14
  %.val4026 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.val4026, i64 %i.cu
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 19
  %.0.copyload.i4166 = load i8, ptr %i.dn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4166) #13, !srcloc !31
  %i.do = zext i8 %.0.copyload.i4166 to i32
  %.not3750 = icmp sgt i8 %.0.copyload.i4166, -1  ; 2 uses
  %i.dp = select i1 %.not3750, i32 %i.do, i32 %.0.copyload.i4165 ; 2 uses
  %i.dq = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 %i.dp) ; 2 uses
  %.not3751 = icmp eq i32 %i.dq, 0
  br i1 %.not3751, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val3910 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dr = getelementptr inbounds nuw i8, ptr %.val3910, i64 %i.cu
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.0.copyload.i4167 = load i32, ptr %i.ds, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4167) #13, !srcloc !14
  %i.dt = add i32 %.23521, 8
  %i.du = select i1 %.not3750, i32 %i.dt, i32 %.0.copyload.i4167
  %.val3909 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %.val3909, i64 %i.cw
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.0.copyload.i4168 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4168) #13, !srcloc !14
  %i.dx = add i32 %.03510, 8
  %i.dy = select i1 %.not3749, i32 %i.dx, i32 %.0.copyload.i4168
  %i.dz = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.du, i32 noundef %i.dy, i32 noundef %i.dq) #13 ; 2 uses
  %.not3752 = icmp eq i32 %i.dz, 0
  br i1 %.not3752, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ea = icmp ugt i32 %i.dj, %i.dp
  br i1 %i.ea, label %bb.x, label %bb.ag

bb.w:                                             ; preds = %bb.u
  %i.eb = icmp sgt i32 %i.dz, -1
  br i1 %i.eb, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.s, %bb.q
  %.val4084 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ec = getelementptr inbounds nuw i8, ptr %.val4084, i64 %i.cu
  %.0.copyload.i4169 = load i64, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4169) #13, !srcloc !33
  %.val4132 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %.val4132, i64 %i.cr
  store i64 %.0.copyload.i4169, ptr %i.ed, align 1
  %i.ee = add nuw nsw i64 %i.cu, 16               ; 3 uses
  %.val3908 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ef = getelementptr inbounds nuw i8, ptr %.val3908, i64 %i.ee
  %.0.copyload.i4170 = load i32, ptr %i.ef, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4170) #13, !srcloc !14
  %.val3986 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %.val3986, i64 %i.ct
  store i32 %.0.copyload.i4170, ptr %i.eg, align 1
  %i.eh = add nuw nsw i64 %i.cu, 8                ; 3 uses
  %.val4083 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %.val4083, i64 %i.eh
  %.0.copyload.i4171 = load i64, ptr %i.ei, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4171) #13, !srcloc !33
  %.val4131 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %.val4131, i64 %i.cs
  store i64 %.0.copyload.i4171, ptr %i.ej, align 1
  %.val4130 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ek = getelementptr inbounds nuw i8, ptr %.val4130, i64 %i.eh
  store i64 0, ptr %i.ek, align 1
  %.val3985 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %.val3985, i64 %i.ee
  store i32 0, ptr %i.el, align 1
  %.val4082 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.em = getelementptr inbounds nuw i8, ptr %.val4082, i64 %i.cw
  %.0.copyload.i4172 = load i64, ptr %i.em, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4172) #13, !srcloc !33
  %.val4129 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %.val4129, i64 %i.cu
  store i64 %.0.copyload.i4172, ptr %i.en, align 1
  %.val3907 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.eo = getelementptr inbounds nuw i8, ptr %.val3907, i64 %i.cw
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %.0.copyload.i4173 = load i32, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4173) #13, !srcloc !14
  %.val3984 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.eq = getelementptr inbounds nuw i8, ptr %.val3984, i64 %i.ee
  store i32 %.0.copyload.i4173, ptr %i.eq, align 1
  %i.er = add nuw nsw i64 %i.cw, 8                ; 2 uses
  %.val4081 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.es = getelementptr inbounds nuw i8, ptr %.val4081, i64 %i.er
  %.0.copyload.i4174 = load i64, ptr %i.es, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4174) #13, !srcloc !33
  %.val4128 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.et = getelementptr inbounds nuw i8, ptr %.val4128, i64 %i.eh
  store i64 %.0.copyload.i4174, ptr %i.et, align 1
  %.val4047 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.eu = getelementptr inbounds nuw i8, ptr %.val4047, i64 %i.cw
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 19
  store i8 0, ptr %i.ev, align 1
  %.val4046 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ew = getelementptr inbounds nuw i8, ptr %.val4046, i64 %i.er
  store i8 0, ptr %i.ew, align 1
  %i.ex = add i32 %.03510, 8                      ; 2 uses
  %i.ey = icmp eq i32 %.03510, %.03501
  br i1 %i.ey, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.x, %bb.af
  %.13511 = phi i32 [ %i.fa, %bb.af ], [ %.03510, %bb.x ] ; 11 uses
  %.03496 = phi i32 [ %i.gl, %bb.af ], [ %i.ex, %bb.x ] ; 4 uses
  %.val3906 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ez = getelementptr inbounds nuw i8, ptr %.val3906, i64 %i.cr
  %.0.copyload.i4175 = load i32, ptr %i.ez, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4175) #13, !srcloc !14
  %i.fa = add i32 %.13511, -20                    ; 3 uses
  %i.fb = zext i32 %i.fa to i64                   ; 5 uses
  %.val3905 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %.val3905, i64 %i.fb
  %.0.copyload.i4176 = load i32, ptr %i.fc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4176) #13, !srcloc !14
  %.not3753 = icmp eq i32 %.0.copyload.i4175, %.0.copyload.i4176
  br i1 %.not3753, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader
  %i.fd = icmp ugt i32 %.0.copyload.i4176, %.0.copyload.i4175
  br i1 %i.fd, label %bb.af, label %.loopexit

bb.z:                                             ; preds = %.preheader
  %.val3904 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fe = getelementptr inbounds nuw i8, ptr %.val3904, i64 %i.cq
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %.0.copyload.i4177 = load i32, ptr %i.ff, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4177) #13, !srcloc !14
  %i.fg = add i32 %.13511, -16
  %i.fh = zext i32 %i.fg to i64
  %.val3903 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %.val3903, i64 %i.fh
  %.0.copyload.i4178 = load i32, ptr %i.fi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4178) #13, !srcloc !14
  %.not3754 = icmp eq i32 %.0.copyload.i4177, %.0.copyload.i4178
  br i1 %.not3754, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fj = icmp ugt i32 %.0.copyload.i4178, %.0.copyload.i4177
  br i1 %i.fj, label %bb.af, label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %.val3902 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fk = getelementptr inbounds nuw i8, ptr %.val3902, i64 %i.fb
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  %.0.copyload.i4179 = load i32, ptr %i.fl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4179) #13, !srcloc !14
  %i.fm = add i32 %.13511, -1
  %i.fn = zext i32 %i.fm to i64
  %.val4025 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fo = getelementptr inbounds nuw i8, ptr %.val4025, i64 %i.fn
  %.0.copyload.i4180 = load i8, ptr %i.fo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4180) #13, !srcloc !31
  %i.fp = zext i8 %.0.copyload.i4180 to i32
  %.not3755 = icmp sgt i8 %.0.copyload.i4180, -1  ; 2 uses
  %i.fq = select i1 %.not3755, i32 %i.fp, i32 %.0.copyload.i4179 ; 2 uses
  %.val3901 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fr = getelementptr inbounds nuw i8, ptr %.val3901, i64 %i.cq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 20
  %.0.copyload.i4181 = load i32, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4181) #13, !srcloc !14
  %.val4024 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ft = getelementptr inbounds nuw i8, ptr %.val4024, i64 %i.cq
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 27
  %.0.copyload.i4182 = load i8, ptr %i.fu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4182) #13, !srcloc !31
  %i.fv = zext i8 %.0.copyload.i4182 to i32
  %.not3756 = icmp sgt i8 %.0.copyload.i4182, -1  ; 2 uses
  %i.fw = select i1 %.not3756, i32 %i.fv, i32 %.0.copyload.i4181 ; 2 uses
  %i.fx = tail call i32 @llvm.umin.i32(i32 %i.fw, i32 %i.fq) ; 2 uses
  %.not3757 = icmp eq i32 %i.fx, 0
  br i1 %.not3757, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val3900 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %.val3900, i64 %i.cq
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %.0.copyload.i4183 = load i32, ptr %i.fz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4183) #13, !srcloc !14
  %i.ga = select i1 %.not3756, i32 %i.cp, i32 %.0.copyload.i4183
  %i.gb = add i32 %.13511, -12                    ; 2 uses
  %i.gc = zext i32 %i.gb to i64
  %.val3899 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %.val3899, i64 %i.gc
  %.0.copyload.i4184 = load i32, ptr %i.gd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4184) #13, !srcloc !14
  %i.ge = select i1 %.not3755, i32 %i.gb, i32 %.0.copyload.i4184
  %i.gf = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.ga, i32 noundef %i.ge, i32 noundef %i.fx) #13 ; 2 uses
  %.not3758 = icmp eq i32 %i.gf, 0
  br i1 %.not3758, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gg = icmp ult i32 %i.fw, %i.fq
  br i1 %i.gg, label %bb.af, label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  %i.gh = icmp sgt i32 %i.gf, -1
  br i1 %i.gh, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.y
  %.val4080 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gi = getelementptr inbounds nuw i8, ptr %.val4080, i64 %i.fb
  %.0.copyload.i4185 = load i64, ptr %i.gi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4185) #13, !srcloc !33
  %i.gj = zext i32 %.13511 to i64                 ; 3 uses
  %.val4127 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %.val4127, i64 %i.gj
  store i64 %.0.copyload.i4185, ptr %i.gk, align 1
  %i.gl = add i32 %.13511, -12                    ; 3 uses
  %i.gm = zext i32 %i.gl to i64
  %.val4079 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gn = getelementptr inbounds nuw i8, ptr %.val4079, i64 %i.gm
  %.0.copyload.i4186 = load i64, ptr %i.gn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4186) #13, !srcloc !33
  %.val4045 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.go = getelementptr inbounds nuw i8, ptr %.val4045, i64 %i.fb
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i8 0, ptr %i.gp, align 1
  %.val4126 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gq = getelementptr inbounds nuw i8, ptr %.val4126, i64 %i.gj
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i64 %.0.copyload.i4186, ptr %i.gr, align 1
  %.val3898 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gs = getelementptr inbounds nuw i8, ptr %.val3898, i64 %i.fb
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %.0.copyload.i4187 = load i32, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4187) #13, !srcloc !14
  %i.gu = add i32 %.13511, -1
  %i.gv = zext i32 %i.gu to i64
  %.val4044 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gw = getelementptr inbounds nuw i8, ptr %.val4044, i64 %i.gv
  store i8 0, ptr %i.gw, align 1
  %.val3983 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gx = getelementptr inbounds nuw i8, ptr %.val3983, i64 %i.gj
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i32 %.0.copyload.i4187, ptr %i.gy, align 1
  %.not3759 = icmp eq i32 %i.fa, %.03501
  br i1 %.not3759, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.af, %bb.ae, %bb.ad, %bb.aa, %bb.y, %bb.x
  %.33522 = phi i32 [ %.03501, %bb.x ], [ %.03501, %bb.af ], [ %.13511, %bb.ae ], [ %.13511, %bb.aa ], [ %.13511, %bb.y ], [ %.13511, %bb.ad ]
  %.13497 = phi i32 [ %i.ex, %bb.x ], [ %i.gl, %bb.af ], [ %.03496, %bb.ae ], [ %.03496, %bb.aa ], [ %.03496, %bb.y ], [ %.03496, %bb.ad ]
  %.val4078 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gz = getelementptr inbounds nuw i8, ptr %.val4078, i64 %i.cr
  %.0.copyload.i4188 = load i64, ptr %i.gz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4188) #13, !srcloc !33
  %i.ha = zext i32 %.33522 to i64
  %.val4125 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hb = getelementptr inbounds nuw i8, ptr %.val4125, i64 %i.ha
  store i64 %.0.copyload.i4188, ptr %i.hb, align 1
  %.val3897 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hc = getelementptr inbounds nuw i8, ptr %.val3897, i64 %i.ct
  %.0.copyload.i4189 = load i32, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4189) #13, !srcloc !14
  %i.hd = zext i32 %.13497 to i64                 ; 2 uses
  %.val3982 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.he = getelementptr inbounds nuw i8, ptr %.val3982, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i32 %.0.copyload.i4189, ptr %i.hf, align 1
  %.val4077 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hg = getelementptr inbounds nuw i8, ptr %.val4077, i64 %i.cs
  %.0.copyload.i4190 = load i64, ptr %i.hg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4190) #13, !srcloc !33
  %.val4124 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hh = getelementptr inbounds nuw i8, ptr %.val4124, i64 %i.hd
  store i64 %.0.copyload.i4190, ptr %i.hh, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %bb.v, %bb.s, %bb.q, %.loopexit
  %i.hi = add i32 %.23521, 20                     ; 2 uses
  %.not3760 = icmp eq i32 %i.hi, %.03514
  br i1 %.not3760, label %.loopexit4393, label %bb.p

5:                                                ; preds = %bb.m
  %.not3647 = icmp eq i32 %.23508, 0
  br i1 %.not3647, label %bb.ah, label %bb.cb

bb.ah:                                            ; preds = %5
  %i.hj = icmp eq i32 %.03514, %.03501
  br i1 %i.hj, label %.loopexit4393, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hk = load i32, ptr %i.a, align 8, !tbaa !32
  %i.hl = add i32 %i.hk, -16                      ; 2 uses
  store i32 %i.hl, ptr %i.a, align 8, !tbaa !32
  %i.hm = add nsw i32 %i.t, -2
  %i.hn = lshr i32 %i.hm, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.13515 = phi i32 [ %i.hn, %bb.ai ], [ %i.hq, %bb.aj ] ; 3 uses
  %i.ho = mul i32 %.13515, 20
  %i.hp = add i32 %i.ho, %.03501
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsift_down0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3ASMFixIt0x2A0x3E0x3A0x3Adifference_type0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x29(ptr noundef nonnull %0, i32 noundef %.03501, i32 noundef %i.t, i32 noundef %i.hp)
  %i.hq = add nsw i32 %.13515, -1
  %.not3725 = icmp eq i32 %.13515, 0
  br i1 %.not3725, label %bb.ak, label %bb.aj

bb.ak:                                            ; preds = %bb.aj
  %i.hr = udiv i32 %i.s, 20
  %i.hs = zext i32 %.03501 to i64                 ; 6 uses
  %i.ht = add nuw nsw i64 %i.hs, 8                ; 2 uses
  %i.hu = zext i32 %i.hl to i64                   ; 2 uses
  %i.hv = add nuw nsw i64 %i.hu, 8                ; 3 uses
  %i.hw = add nuw nsw i64 %i.hu, 11               ; 3 uses
  %invariant.op = sub i32 20, %.03501
  br label %bb.al

bb.al:                                            ; preds = %bb.ca, %bb.ak
  %.43523 = phi i32 [ %.03514, %bb.ak ], [ %i.kv, %bb.ca ] ; 2 uses
  %.03502 = phi i32 [ %i.hr, %bb.ak ], [ %i.rh, %bb.ca ] ; 4 uses
  %.val3896 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hx = getelementptr inbounds nuw i8, ptr %.val3896, i64 %i.ht
  %.0.copyload.i4191 = load i32, ptr %i.hx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4191) #13, !srcloc !14
  %.val4076 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hy = getelementptr inbounds nuw i8, ptr %.val4076, i64 %i.hs
  %.0.copyload.i4192 = load i64, ptr %i.hy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4192) #13, !srcloc !33
  %.val3895 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hz = getelementptr inbounds nuw i8, ptr %.val3895, i64 %i.hs
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %.0.copyload.i4193 = load i32, ptr %i.ia, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4193) #13, !srcloc !14
  %.val3981 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ib = getelementptr inbounds nuw i8, ptr %.val3981, i64 %i.hv
  store i32 %.0.copyload.i4193, ptr %i.ib, align 1
  %.val3894 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ic = getelementptr inbounds nuw i8, ptr %.val3894, i64 %i.hs
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 15
  %.0.copyload.i4194 = load i32, ptr %i.id, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4194) #13, !srcloc !14
  %.val3980 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ie = getelementptr inbounds nuw i8, ptr %.val3980, i64 %i.hw
  store i32 %.0.copyload.i4194, ptr %i.ie, align 1
  %.val4023 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.if = getelementptr inbounds nuw i8, ptr %.val4023, i64 %i.hs
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 19
  %.0.copyload.i4195 = load i8, ptr %i.ig, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4195) #13, !srcloc !31
  %.val4123 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ih = getelementptr inbounds nuw i8, ptr %.val4123, i64 %i.ht
  store i64 0, ptr %i.ih, align 1
  %.val3979 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ii = getelementptr inbounds nuw i8, ptr %.val3979, i64 %i.hs
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store i32 0, ptr %i.ij, align 1
  %i.ik = add nsw i32 %.03502, -2
  %i.il = lshr i32 %i.ik, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ay, %bb.al
  %.23512 = phi i32 [ 0, %bb.al ], [ %.33513, %bb.ay ] ; 2 uses
  %.33509 = phi i32 [ %.03501, %bb.al ], [ %.03500, %bb.ay ] ; 2 uses
  %i.im = shl i32 %.23512, 1                      ; 2 uses
  %i.in = or disjoint i32 %i.im, 1                ; 5 uses
  %i.io = mul i32 %.23512, 20
  %i.ip = add i32 %i.io, 20
  %i.iq = add i32 %i.ip, %.33509                  ; 9 uses
  %i.ir = add i32 %i.im, 2                        ; 2 uses
  %.not3726 = icmp sgt i32 %.03502, %i.ir
  br i1 %.not3726, label %bb.an, label %bb.aw

bb.an:                                            ; preds = %bb.am
  %i.is = zext i32 %i.iq to i64                   ; 9 uses
  %.val3893 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.it = getelementptr inbounds nuw i8, ptr %.val3893, i64 %i.is
  %.0.copyload.i4196 = load i32, ptr %i.it, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4196) #13, !srcloc !14
  %.val3892 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.iu = getelementptr inbounds nuw i8, ptr %.val3892, i64 %i.is
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 20
  %.0.copyload.i4197 = load i32, ptr %i.iv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4197) #13, !srcloc !14
  %.not3727 = icmp eq i32 %.0.copyload.i4196, %.0.copyload.i4197
  br i1 %.not3727, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iw = icmp ult i32 %.0.copyload.i4196, %.0.copyload.i4197
  br i1 %i.iw, label %bb.av, label %bb.aw

bb.ap:                                            ; preds = %bb.an
  %.val3891 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ix = getelementptr inbounds nuw i8, ptr %.val3891, i64 %i.is
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %.0.copyload.i4198 = load i32, ptr %i.iy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4198) #13, !srcloc !14
  %.val3890 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.iz = getelementptr inbounds nuw i8, ptr %.val3890, i64 %i.is
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %.0.copyload.i4199 = load i32, ptr %i.ja, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4199) #13, !srcloc !14
  %.not3728 = icmp eq i32 %.0.copyload.i4198, %.0.copyload.i4199
  br i1 %.not3728, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jb = icmp ult i32 %.0.copyload.i4198, %.0.copyload.i4199
  br i1 %i.jb, label %bb.av, label %bb.aw

bb.ar:                                            ; preds = %bb.ap
  %.val3889 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jc = getelementptr inbounds nuw i8, ptr %.val3889, i64 %i.is
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %.0.copyload.i4200 = load i32, ptr %i.jd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4200) #13, !srcloc !14
  %.val4022 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.je = getelementptr inbounds nuw i8, ptr %.val4022, i64 %i.is
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 39
  %.0.copyload.i4201 = load i8, ptr %i.jf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4201) #13, !srcloc !31
  %i.jg = zext i8 %.0.copyload.i4201 to i32
  %.not3729 = icmp sgt i8 %.0.copyload.i4201, -1  ; 2 uses
  %i.jh = select i1 %.not3729, i32 %i.jg, i32 %.0.copyload.i4200 ; 2 uses
  %.val3888 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ji = getelementptr inbounds nuw i8, ptr %.val3888, i64 %i.is
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %.0.copyload.i4202 = load i32, ptr %i.jj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4202) #13, !srcloc !14
  %.val4021 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jk = getelementptr inbounds nuw i8, ptr %.val4021, i64 %i.is
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 19
  %.0.copyload.i4203 = load i8, ptr %i.jl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4203) #13, !srcloc !31
  %i.jm = zext i8 %.0.copyload.i4203 to i32
  %.not3730 = icmp sgt i8 %.0.copyload.i4203, -1  ; 2 uses
  %i.jn = select i1 %.not3730, i32 %i.jm, i32 %.0.copyload.i4202 ; 2 uses
  %i.jo = tail call i32 @llvm.umin.i32(i32 %i.jn, i32 %i.jh) ; 2 uses
  %.not3731 = icmp eq i32 %i.jo, 0
  br i1 %.not3731, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val3887 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jp = getelementptr inbounds nuw i8, ptr %.val3887, i64 %i.is
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %.0.copyload.i4204 = load i32, ptr %i.jq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4204) #13, !srcloc !14
  %i.jr = add i32 %i.iq, 8
  %i.js = select i1 %.not3730, i32 %i.jr, i32 %.0.copyload.i4204
  %i.jt = add i32 %i.iq, 28                       ; 2 uses
  %i.ju = zext i32 %i.jt to i64
  %.val3886 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jv = getelementptr inbounds nuw i8, ptr %.val3886, i64 %i.ju
  %.0.copyload.i4205 = load i32, ptr %i.jv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4205) #13, !srcloc !14
  %i.jw = select i1 %.not3729, i32 %i.jt, i32 %.0.copyload.i4205
  %i.jx = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.js, i32 noundef %i.jw, i32 noundef %i.jo) #13 ; 2 uses
  %.not3732 = icmp eq i32 %i.jx, 0
  br i1 %.not3732, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.jy = icmp ult i32 %i.jn, %i.jh
  br i1 %i.jy, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.jz = icmp slt i32 %i.jx, 0
  br i1 %i.jz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.aq, %bb.ao
  %i.ka = add i32 %i.iq, 20
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.aq, %bb.ao, %bb.am, %bb.av
  %.33513 = phi i32 [ %i.in, %bb.aq ], [ %i.ir, %bb.av ], [ %i.in, %bb.am ], [ %i.in, %bb.ao ], [ %i.in, %bb.at ], [ %i.in, %bb.au ] ; 2 uses
  %.03500 = phi i32 [ %i.iq, %bb.aq ], [ %i.ka, %bb.av ], [ %i.iq, %bb.am ], [ %i.iq, %bb.ao ], [ %i.iq, %bb.at ], [ %i.iq, %bb.au ] ; 7 uses
  %i.kb = zext i32 %.03500 to i64                 ; 12 uses
  %.val4075 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kc = getelementptr inbounds nuw i8, ptr %.val4075, i64 %i.kb
  %.0.copyload.i4206 = load i64, ptr %i.kc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4206) #13, !srcloc !33
  %i.kd = zext i32 %.33509 to i64                 ; 5 uses
  %.val4122 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ke = getelementptr inbounds nuw i8, ptr %.val4122, i64 %i.kd
  store i64 %.0.copyload.i4206, ptr %i.ke, align 1
  %.val4139 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kf = getelementptr inbounds nuw i8, ptr %.val4139, i64 %i.kd
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 19
  %.0.copyload.i4207 = load i8, ptr %i.kg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4207) #13, !srcloc !36
  %i.kh = icmp slt i8 %.0.copyload.i4207, 0
  br i1 %i.kh, label %bb.ax, label %bb.ay
end_hunk_12
begin_hunk_13_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3ASMFixIt0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4237) #13, !srcloc !33
  %.val4112 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.oq = getelementptr inbounds nuw i8, ptr %.val4112, i64 %i.kk
  store i64 %.0.copyload.i4237, ptr %i.oq, align 1
  %.val4039 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.or = getelementptr inbounds nuw i8, ptr %.val4039, i64 %i.mo
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 19
  store i8 0, ptr %i.os, align 1
  %.val4038 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ot = getelementptr inbounds nuw i8, ptr %.val4038, i64 %i.oo
  store i8 0, ptr %i.ot, align 1
  %i.ou = add i32 %i.mn, 8                        ; 2 uses
  %i.ov = add i32 %i.mg, -16                      ; 2 uses
  %i.ow = icmp samesign ult i32 %.reass.reass, 80
  br i1 %i.ow, label %.loopexit4390, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val3866 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ox = getelementptr inbounds nuw i8, ptr %.val3866, i64 %i.ny
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 20
  %.0.copyload.i4238 = load i32, ptr %i.oy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4238) #13, !srcloc !14
  %.val4018 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.oz = getelementptr inbounds nuw i8, ptr %.val4018, i64 %i.ny
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 27
  %.0.copyload.i4239 = load i8, ptr %i.pa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4239) #13, !srcloc !31
  %i.pb = zext i8 %.0.copyload.i4239 to i32
  %.not3740 = icmp sgt i8 %.0.copyload.i4239, -1  ; 2 uses
  %i.pc = select i1 %.not3740, i32 %i.pb, i32 %.0.copyload.i4238 ; 2 uses
  %.val3865 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.pd = getelementptr inbounds nuw i8, ptr %.val3865, i64 %i.of
  %.0.copyload.i4240 = load i32, ptr %i.pd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4240) #13, !srcloc !14
  %i.pe = select i1 %.not3740, i32 %i.ov, i32 %.0.copyload.i4240
  %.val3864 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.pf = getelementptr inbounds nuw i8, ptr %.val3864, i64 %i.ny
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  %.0.copyload.i4241 = load i32, ptr %i.pg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4241) #13, !srcloc !14
  %.val3863 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ph = getelementptr inbounds nuw i8, ptr %.val3863, i64 %i.nz
  %.0.copyload.i4242 = load i32, ptr %i.ph, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4242) #13, !srcloc !14
  br label %bb.bq

bb.bq:                                            ; preds = %bb.by, %bb.bp
  %.33517 = phi i32 [ %i.mn, %bb.bp ], [ %i.pl, %bb.by ] ; 5 uses
  %.03494 = phi i32 [ %i.ou, %bb.bp ], [ %i.qu, %bb.by ] ; 4 uses
  %.03493 = phi i32 [ %i.ml, %bb.bp ], [ %i.pj, %bb.by ]
  %i.pi = add nsw i32 %.03493, -1                 ; 2 uses
  %i.pj = lshr i32 %i.pi, 1                       ; 2 uses
  %i.pk = mul i32 %i.pj, 20
  %i.pl = add i32 %i.pk, %.03501                  ; 5 uses
  %i.pm = zext i32 %i.pl to i64                   ; 9 uses
  %.val3862 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.pn = getelementptr inbounds nuw i8, ptr %.val3862, i64 %i.pm
  %.0.copyload.i4243 = load i32, ptr %i.pn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4243) #13, !srcloc !14
  %.not3741 = icmp eq i32 %.0.copyload.i4242, %.0.copyload.i4243
  br i1 %.not3741, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.po = icmp ult i32 %.0.copyload.i4243, %.0.copyload.i4242
  br i1 %i.po, label %bb.by, label %.loopexit4390.loopexit

bb.bs:                                            ; preds = %bb.bq
  %.val3861 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.pp = getelementptr inbounds nuw i8, ptr %.val3861, i64 %i.pm
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  %.0.copyload.i4244 = load i32, ptr %i.pq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4244) #13, !srcloc !14
  %.not3742 = icmp eq i32 %.0.copyload.i4241, %.0.copyload.i4244
  br i1 %.not3742, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pr = icmp ult i32 %.0.copyload.i4244, %.0.copyload.i4241
  br i1 %i.pr, label %bb.by, label %.loopexit4390.loopexit

bb.bu:                                            ; preds = %bb.bs
  %.val3860 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ps = getelementptr inbounds nuw i8, ptr %.val3860, i64 %i.pm
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 12
  %.0.copyload.i4245 = load i32, ptr %i.pt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4245) #13, !srcloc !14
  %.val4017 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.pu = getelementptr inbounds nuw i8, ptr %.val4017, i64 %i.pm
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 19
  %.0.copyload.i4246 = load i8, ptr %i.pv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4246) #13, !srcloc !31
  %i.pw = zext i8 %.0.copyload.i4246 to i32
  %.not3743 = icmp sgt i8 %.0.copyload.i4246, -1  ; 2 uses
  %i.px = select i1 %.not3743, i32 %i.pw, i32 %.0.copyload.i4245 ; 2 uses
  %i.py = tail call i32 @llvm.umin.i32(i32 %i.px, i32 %i.pc) ; 2 uses
  %.not3744 = icmp eq i32 %i.py, 0
  br i1 %.not3744, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.val3859 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.pz = getelementptr inbounds nuw i8, ptr %.val3859, i64 %i.pm
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %.0.copyload.i4247 = load i32, ptr %i.qa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4247) #13, !srcloc !14
  %i.qb = add i32 %i.pl, 8
  %i.qc = select i1 %.not3743, i32 %i.qb, i32 %.0.copyload.i4247
  %i.qd = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.qc, i32 noundef %i.pe, i32 noundef %i.py) #13 ; 2 uses
  %.not3745 = icmp eq i32 %i.qd, 0
  br i1 %.not3745, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.qe = icmp ult i32 %i.px, %i.pc
  br i1 %i.qe, label %bb.by, label %.loopexit4390.loopexit

bb.bx:                                            ; preds = %bb.bv
  %i.qf = icmp slt i32 %i.qd, 0
  br i1 %i.qf, label %bb.by, label %.loopexit4390.loopexit

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bt, %bb.br
  %.val4067 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.qg = getelementptr inbounds nuw i8, ptr %.val4067, i64 %i.pm
  %.0.copyload.i4248 = load i64, ptr %i.qg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4248) #13, !srcloc !33
  %i.qh = zext i32 %.33517 to i64                 ; 3 uses
  %.val4111 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.qi = getelementptr inbounds nuw i8, ptr %.val4111, i64 %i.qh
  store i64 %.0.copyload.i4248, ptr %i.qi, align 1
  %i.qj = add nuw nsw i64 %i.pm, 8                ; 2 uses
  %.val4066 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.qk = getelementptr inbounds nuw i8, ptr %.val4066, i64 %i.qj
  %.0.copyload.i4249 = load i64, ptr %i.qk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4249) #13, !srcloc !33
  %.val4110 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ql = getelementptr inbounds nuw i8, ptr %.val4110, i64 %i.qh
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  store i64 %.0.copyload.i4249, ptr %i.qm, align 1
  %.val3858 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.qn = getelementptr inbounds nuw i8, ptr %.val3858, i64 %i.pm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %.0.copyload.i4250 = load i32, ptr %i.qo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4250) #13, !srcloc !14
  %.val3967 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.qp = getelementptr inbounds nuw i8, ptr %.val3967, i64 %i.qh
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  store i32 %.0.copyload.i4250, ptr %i.qq, align 1
  %.val4037 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.qr = getelementptr inbounds nuw i8, ptr %.val4037, i64 %i.pm
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 19
  store i8 0, ptr %i.qs, align 1
  %.val4036 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.qt = getelementptr inbounds nuw i8, ptr %.val4036, i64 %i.qj
  store i8 0, ptr %i.qt, align 1
  %i.qu = add i32 %i.pl, 8                        ; 2 uses
  %i.qv = icmp ugt i32 %i.pi, 1
  br i1 %i.qv, label %bb.bq, label %.loopexit4390.loopexit

.loopexit4390.loopexit:                           ; preds = %bb.by, %bb.br, %bb.bt, %bb.bw, %bb.bx
  %.43518.ph = phi i32 [ %i.pl, %bb.by ], [ %.33517, %bb.bt ], [ %.33517, %bb.br ], [ %.33517, %bb.bw ], [ %.33517, %bb.bx ]
  %.13495.ph = phi i32 [ %i.qu, %bb.by ], [ %.03494, %bb.bt ], [ %.03494, %bb.br ], [ %.03494, %bb.bw ], [ %.03494, %bb.bx ]
  %.pre = zext i32 %.43518.ph to i64
  br label %.loopexit4390

.loopexit4390:                                    ; preds = %.loopexit4390.loopexit, %bb.bo
  %.pre-phi = phi i64 [ %.pre, %.loopexit4390.loopexit ], [ %i.mo, %bb.bo ]
  %.13495 = phi i32 [ %.13495.ph, %.loopexit4390.loopexit ], [ %i.ou, %bb.bo ]
  %.val4065 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.qw = getelementptr inbounds nuw i8, ptr %.val4065, i64 %i.nz
  %.0.copyload.i4251 = load i64, ptr %i.qw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4251) #13, !srcloc !33
  %.val4109 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.qx = getelementptr inbounds nuw i8, ptr %.val4109, i64 %.pre-phi
  store i64 %.0.copyload.i4251, ptr %i.qx, align 1
  %i.qy = zext i32 %i.ov to i64                   ; 2 uses
  %.val3857 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.qz = getelementptr inbounds nuw i8, ptr %.val3857, i64 %i.qy
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %.0.copyload.i4252 = load i32, ptr %i.ra, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4252) #13, !srcloc !14
  %i.rb = zext i32 %.13495 to i64                 ; 2 uses
  %.val3966 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rc = getelementptr inbounds nuw i8, ptr %.val3966, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  store i32 %.0.copyload.i4252, ptr %i.rd, align 1
  %.val4064 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.re = getelementptr inbounds nuw i8, ptr %.val4064, i64 %i.qy
  %.0.copyload.i4253 = load i64, ptr %i.re, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4253) #13, !srcloc !33
  %.val4108 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rf = getelementptr inbounds nuw i8, ptr %.val4108, i64 %i.rb
  store i64 %.0.copyload.i4253, ptr %i.rf, align 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bn, %bb.bm, %bb.bj, %bb.bh, %bb.bf, %.loopexit4390
  store i32 %i.mg, ptr %i.a, align 8, !tbaa !32
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bc
  %i.rg = icmp sgt i32 %.03502, 2
  %i.rh = add nsw i32 %.03502, -1
  br i1 %i.rg, label %bb.al, label %.loopexit4393

bb.cb:                                            ; preds = %5
  %i.ri = lshr i32 %i.t, 1
  %i.rj = mul nuw nsw i32 %i.ri, 20
  %i.rk = add i32 %i.rj, %.03501                  ; 8 uses
  %i.rl = icmp samesign ugt i32 %i.s, 19980
  br i1 %i.rl, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.rm = lshr i32 %i.t, 2
  %i.rn = mul nuw nsw i32 %i.rm, 20               ; 2 uses
  %i.ro = add i32 %i.rn, %.03501
  %i.rp = add i32 %i.rk, %i.rn
  %i.rq = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort50x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x29(ptr noundef %0, i32 noundef %.03501, i32 noundef %i.ro, i32 noundef %i.rk, i32 noundef %i.rp, i32 noundef %i.m)
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.rr = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x29(ptr noundef %0, i32 noundef %.03501, i32 noundef %i.rk, i32 noundef %i.m)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.0 = phi i32 [ %i.rq, %bb.cc ], [ %i.rr, %bb.cd ] ; 5 uses
  %i.rs = add i32 %.23508, -1                     ; 4 uses
  %i.rt = zext i32 %.03501 to i64                 ; 26 uses
  %.val3856 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ru = getelementptr inbounds nuw i8, ptr %.val3856, i64 %i.rt
  %.0.copyload.i4254 = load i32, ptr %i.ru, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4254) #13, !srcloc !14
  %i.rv = zext i32 %i.rk to i64                   ; 8 uses
  %.val3855 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rw = getelementptr inbounds nuw i8, ptr %.val3855, i64 %i.rv
  %.0.copyload.i4255 = load i32, ptr %i.rw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4255) #13, !srcloc !14
  %.not3648 = icmp eq i32 %.0.copyload.i4254, %.0.copyload.i4255
  br i1 %.not3648, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.not3656 = icmp ugt i32 %.0.copyload.i4255, %.0.copyload.i4254
  br i1 %.not3656, label %.loopexit4398, label %bb.cm

bb.cg:                                            ; preds = %bb.ce
  %.val3854 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rx = getelementptr inbounds nuw i8, ptr %.val3854, i64 %i.rt
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %.0.copyload.i4256 = load i32, ptr %i.ry, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4256) #13, !srcloc !14
  %.val3853 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rz = getelementptr inbounds nuw i8, ptr %.val3853, i64 %i.rv
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 4
  %.0.copyload.i4257 = load i32, ptr %i.sa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4257) #13, !srcloc !14
  %.not3649 = icmp eq i32 %.0.copyload.i4256, %.0.copyload.i4257
  br i1 %.not3649, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not3655 = icmp ugt i32 %.0.copyload.i4257, %.0.copyload.i4256
  br i1 %.not3655, label %.loopexit4398, label %bb.cm

bb.ci:                                            ; preds = %bb.cg
  %.val3852 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sb = getelementptr inbounds nuw i8, ptr %.val3852, i64 %i.rv
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 12
  %.0.copyload.i4258 = load i32, ptr %i.sc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4258) #13, !srcloc !14
  %.val4016 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sd = getelementptr inbounds nuw i8, ptr %.val4016, i64 %i.rv
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 19
  %.0.copyload.i4259 = load i8, ptr %i.se, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4259) #13, !srcloc !31
  %i.sf = zext i8 %.0.copyload.i4259 to i32
  %.not3650 = icmp sgt i8 %.0.copyload.i4259, -1  ; 2 uses
  %i.sg = select i1 %.not3650, i32 %i.sf, i32 %.0.copyload.i4258 ; 2 uses
  %.val3851 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sh = getelementptr inbounds nuw i8, ptr %.val3851, i64 %i.rt
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 12
  %.0.copyload.i4260 = load i32, ptr %i.si, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4260) #13, !srcloc !14
  %.val4015 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sj = getelementptr inbounds nuw i8, ptr %.val4015, i64 %i.rt
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 19
  %.0.copyload.i4261 = load i8, ptr %i.sk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4261) #13, !srcloc !31
  %i.sl = zext i8 %.0.copyload.i4261 to i32
  %.not3651 = icmp sgt i8 %.0.copyload.i4261, -1  ; 2 uses
  %i.sm = select i1 %.not3651, i32 %i.sl, i32 %.0.copyload.i4260 ; 2 uses
  %i.sn = tail call i32 @llvm.umin.i32(i32 %i.sm, i32 %i.sg) ; 2 uses
  %.not3652 = icmp eq i32 %i.sn, 0
  br i1 %.not3652, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.val3850 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.so = getelementptr inbounds nuw i8, ptr %.val3850, i64 %i.rt
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %.0.copyload.i4262 = load i32, ptr %i.sp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4262) #13, !srcloc !14
  %i.sq = add i32 %.03501, 8
  %i.sr = select i1 %.not3651, i32 %i.sq, i32 %.0.copyload.i4262
  %.val3849 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ss = getelementptr inbounds nuw i8, ptr %.val3849, i64 %i.rv
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %.0.copyload.i4263 = load i32, ptr %i.st, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4263) #13, !srcloc !14
  %i.su = add i32 %i.rk, 8
  %i.sv = select i1 %.not3650, i32 %i.su, i32 %.0.copyload.i4263
  %i.sw = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.sr, i32 noundef %i.sv, i32 noundef %i.sn) #13 ; 2 uses
  %.not3653 = icmp eq i32 %i.sw, 0
  br i1 %.not3653, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.not3654 = icmp ult i32 %i.sm, %i.sg
  br i1 %.not3654, label %.loopexit4398, label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.sx = icmp sgt i32 %i.sw, -1
  br i1 %i.sx, label %bb.cm, label %.loopexit4398

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.ch, %bb.cf
  %i.sy = icmp eq i32 %.03501, %i.l
  br i1 %i.sy, label %.loopexit4394, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sz = add i32 %i.rk, 8                        ; 2 uses
  %i.ta = zext i32 %i.sz to i64
  br label %bb.co

bb.co:                                            ; preds = %bb.cw, %bb.cn
  %.53524 = phi i32 [ %i.m, %bb.cn ], [ %.13503, %bb.cw ] ; 6 uses
  %.13503 = phi i32 [ %i.l, %bb.cn ], [ %i.uh, %bb.cw ] ; 4 uses
  %i.tb = zext i32 %.13503 to i64                 ; 3 uses
  %.val3848 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tc = getelementptr inbounds nuw i8, ptr %.val3848, i64 %i.tb
  %.0.copyload.i4264 = load i32, ptr %i.tc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4264) #13, !srcloc !14
  %.not3657 = icmp eq i32 %.0.copyload.i4255, %.0.copyload.i4264
  br i1 %.not3657, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.not3663 = icmp ult i32 %.0.copyload.i4264, %.0.copyload.i4255
  br i1 %.not3663, label %bb.em, label %bb.cw

bb.cq:                                            ; preds = %bb.co
  %i.td = add i32 %.53524, -16
  %i.te = zext i32 %i.td to i64
  %.val3847 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tf = getelementptr inbounds nuw i8, ptr %.val3847, i64 %i.te
  %.0.copyload.i4265 = load i32, ptr %i.tf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4265) #13, !srcloc !14
  %.val3846 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tg = getelementptr inbounds nuw i8, ptr %.val3846, i64 %i.rv
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  %.0.copyload.i4266 = load i32, ptr %i.th, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4266) #13, !srcloc !14
  %.not3658 = icmp eq i32 %.0.copyload.i4265, %.0.copyload.i4266
  br i1 %.not3658, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ti = icmp ugt i32 %.0.copyload.i4266, %.0.copyload.i4265
  br i1 %i.ti, label %bb.em, label %bb.cw

bb.cs:                                            ; preds = %bb.cq
  %.val3845 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tj = getelementptr inbounds nuw i8, ptr %.val3845, i64 %i.rv
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 12
  %.0.copyload.i4267 = load i32, ptr %i.tk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4267) #13, !srcloc !14
  %.val4014 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tl = getelementptr inbounds nuw i8, ptr %.val4014, i64 %i.rv
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 19
  %.0.copyload.i4268 = load i8, ptr %i.tm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4268) #13, !srcloc !31
  %i.tn = zext i8 %.0.copyload.i4268 to i32
  %.not3659 = icmp sgt i8 %.0.copyload.i4268, -1  ; 2 uses
  %i.to = select i1 %.not3659, i32 %i.tn, i32 %.0.copyload.i4267 ; 2 uses
  %i.tp = add i32 %.53524, -8
  %i.tq = zext i32 %i.tp to i64
  %.val3844 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tr = getelementptr inbounds nuw i8, ptr %.val3844, i64 %i.tq
  %.0.copyload.i4269 = load i32, ptr %i.tr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4269) #13, !srcloc !14
  %i.ts = add i32 %.53524, -1
  %i.tt = zext i32 %i.ts to i64
  %.val4013 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.tu = getelementptr inbounds nuw i8, ptr %.val4013, i64 %i.tt
  %.0.copyload.i4270 = load i8, ptr %i.tu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4270) #13, !srcloc !31
  %i.tv = zext i8 %.0.copyload.i4270 to i32
  %.not3660 = icmp sgt i8 %.0.copyload.i4270, -1  ; 2 uses
  %i.tw = select i1 %.not3660, i32 %i.tv, i32 %.0.copyload.i4269 ; 2 uses
  %i.tx = tail call i32 @llvm.umin.i32(i32 %i.to, i32 %i.tw) ; 2 uses
  %.not3661 = icmp eq i32 %i.tx, 0
  br i1 %.not3661, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ty = add i32 %.53524, -12                    ; 2 uses
  %i.tz = zext i32 %i.ty to i64
  %.val3843 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ua = getelementptr inbounds nuw i8, ptr %.val3843, i64 %i.tz
  %.0.copyload.i4271 = load i32, ptr %i.ua, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4271) #13, !srcloc !14
  %i.ub = select i1 %.not3660, i32 %i.ty, i32 %.0.copyload.i4271
  %.val3842 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.uc = getelementptr inbounds nuw i8, ptr %.val3842, i64 %i.ta
end_hunk_13
begin_hunk_14_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3ASMFixIt0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4372) #13, !srcloc !14
  %.not3683 = icmp eq i32 %.0.copyload.i4371, %.0.copyload.i4372
  br i1 %.not3683, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ahj = icmp ugt i32 %.0.copyload.i4372, %.0.copyload.i4371
  br i1 %i.ahj, label %bb.fn, label %bb.fo

bb.fj:                                            ; preds = %bb.fh
  %.val3769 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ahk = getelementptr inbounds nuw i8, ptr %.val3769, i64 %i.ahc
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 12
  %.0.copyload.i4373 = load i32, ptr %i.ahl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4373) #13, !srcloc !14
  %.val3996 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ahm = getelementptr inbounds nuw i8, ptr %.val3996, i64 %i.ahc
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 19
  %.0.copyload.i4374 = load i8, ptr %i.ahn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4374) #13, !srcloc !31
  %i.aho = zext i8 %.0.copyload.i4374 to i32
  %.not3684 = icmp sgt i8 %.0.copyload.i4374, -1  ; 2 uses
  %i.ahp = select i1 %.not3684, i32 %i.aho, i32 %.0.copyload.i4373 ; 2 uses
  %.val3768 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ahq = getelementptr inbounds nuw i8, ptr %.val3768, i64 %i.aha
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 12
  %.0.copyload.i4375 = load i32, ptr %i.ahr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4375) #13, !srcloc !14
  %.val3995 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ahs = getelementptr inbounds nuw i8, ptr %.val3995, i64 %i.aha
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 19
  %.0.copyload.i4376 = load i8, ptr %i.aht, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4376) #13, !srcloc !31
  %i.ahu = zext i8 %.0.copyload.i4376 to i32
  %.not3685 = icmp sgt i8 %.0.copyload.i4376, -1  ; 2 uses
  %i.ahv = select i1 %.not3685, i32 %i.ahu, i32 %.0.copyload.i4375 ; 2 uses
  %i.ahw = tail call i32 @llvm.umin.i32(i32 %i.ahv, i32 %i.ahp) ; 2 uses
  %.not3686 = icmp eq i32 %i.ahw, 0
  br i1 %.not3686, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.val3767 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ahx = getelementptr inbounds nuw i8, ptr %.val3767, i64 %i.aha
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %.0.copyload.i4377 = load i32, ptr %i.ahy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4377) #13, !srcloc !14
  %i.ahz = add i32 %.13499, 8
  %i.aia = select i1 %.not3685, i32 %i.ahz, i32 %.0.copyload.i4377
  %.val3766 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aib = getelementptr inbounds nuw i8, ptr %.val3766, i64 %i.ahc
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %.0.copyload.i4378 = load i32, ptr %i.aic, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4378) #13, !srcloc !14
  %i.aid = add i32 %.8, 8
  %i.aie = select i1 %.not3684, i32 %i.aid, i32 %.0.copyload.i4378
  %i.aif = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.aia, i32 noundef %i.aie, i32 noundef %i.ahw) #13 ; 2 uses
  %.not3687 = icmp eq i32 %i.aif, 0
  br i1 %.not3687, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.aig = icmp ult i32 %i.ahv, %i.ahp
  br i1 %i.aig, label %bb.fn, label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  %i.aih = icmp sgt i32 %i.aif, -1
  br i1 %i.aih, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl, %bb.fi, %bb.fg
  %.val4051 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aii = getelementptr inbounds nuw i8, ptr %.val4051, i64 %i.ahc
  %.0.copyload.i4379 = load i64, ptr %i.aii, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4379) #13, !srcloc !33
  %i.aij = add nuw nsw i64 %i.ahc, 8              ; 3 uses
  %.val3765 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aik = getelementptr inbounds nuw i8, ptr %.val3765, i64 %i.aij
  %.0.copyload.i4380 = load i32, ptr %i.aik, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4380) #13, !srcloc !14
  %.val3764 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ail = getelementptr inbounds nuw i8, ptr %.val3764, i64 %i.ahc
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 15
  %.0.copyload.i4381 = load i32, ptr %i.aim, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4381) #13, !srcloc !14
  %.val3937 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ain = getelementptr inbounds nuw i8, ptr %.val3937, i64 %i.f
  store i32 %.0.copyload.i4381, ptr %i.ain, align 1
  %.val3763 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aio = getelementptr inbounds nuw i8, ptr %.val3763, i64 %i.ahc
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 12
  %.0.copyload.i4382 = load i32, ptr %i.aip, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4382) #13, !srcloc !14
  %.val3936 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aiq = getelementptr inbounds nuw i8, ptr %.val3936, i64 %i.g
  store i32 %.0.copyload.i4382, ptr %i.aiq, align 1
  %.val4091 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.air = getelementptr inbounds nuw i8, ptr %.val4091, i64 %i.aij
  store i64 0, ptr %i.air, align 1
  %.val3994 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ais = getelementptr inbounds nuw i8, ptr %.val3994, i64 %i.ahc
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 19
  %.0.copyload.i4383 = load i8, ptr %i.ait, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4383) #13, !srcloc !31
  %i.aiu = add nuw nsw i64 %i.ahc, 16             ; 2 uses
  %.val3935 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aiv = getelementptr inbounds nuw i8, ptr %.val3935, i64 %i.aiu
  store i32 0, ptr %i.aiv, align 1
  %.val4050 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aiw = getelementptr inbounds nuw i8, ptr %.val4050, i64 %i.aha
  %.0.copyload.i4384 = load i64, ptr %i.aiw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4384) #13, !srcloc !33
  %.val4090 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aix = getelementptr inbounds nuw i8, ptr %.val4090, i64 %i.ahc
  store i64 %.0.copyload.i4384, ptr %i.aix, align 1
  %.val3762 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aiy = getelementptr inbounds nuw i8, ptr %.val3762, i64 %i.aha
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  %.0.copyload.i4385 = load i32, ptr %i.aiz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4385) #13, !srcloc !14
  %.val3934 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aja = getelementptr inbounds nuw i8, ptr %.val3934, i64 %i.aiu
  store i32 %.0.copyload.i4385, ptr %i.aja, align 1
  %i.ajb = add nuw nsw i64 %i.aha, 8              ; 2 uses
  %.val4049 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ajc = getelementptr inbounds nuw i8, ptr %.val4049, i64 %i.ajb
  %.0.copyload.i4386 = load i64, ptr %i.ajc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4386) #13, !srcloc !33
  %.val4089 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ajd = getelementptr inbounds nuw i8, ptr %.val4089, i64 %i.aij
  store i64 %.0.copyload.i4386, ptr %i.ajd, align 1
  %.val3933 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aje = getelementptr inbounds nuw i8, ptr %.val3933, i64 %i.ajb
  store i32 %.0.copyload.i4380, ptr %i.aje, align 1
  %.val4088 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ajf = getelementptr inbounds nuw i8, ptr %.val4088, i64 %i.aha
  store i64 %.0.copyload.i4379, ptr %i.ajf, align 1
  %.val3761 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ajg = getelementptr inbounds nuw i8, ptr %.val3761, i64 %i.f
  %.0.copyload.i4387 = load i32, ptr %i.ajg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4387) #13, !srcloc !14
  %.val3932 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ajh = getelementptr inbounds nuw i8, ptr %.val3932, i64 %i.aha
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 15
  store i32 %.0.copyload.i4387, ptr %i.aji, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ajj = getelementptr inbounds nuw i8, ptr %.val, i64 %i.g
  %.0.copyload.i4388 = load i32, ptr %i.ajj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4388) #13, !srcloc !14
  %.val3931 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ajk = getelementptr inbounds nuw i8, ptr %.val3931, i64 %i.aha
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 12
  store i32 %.0.copyload.i4388, ptr %i.ajl, align 1
  %.val4031 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ajm = getelementptr inbounds nuw i8, ptr %.val4031, i64 %i.aha
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 19
  store i8 %.0.copyload.i4383, ptr %i.ajn, align 1
  %i.ajo = add i32 %.2, 1
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fm, %bb.fl, %bb.fi, %bb.fg, %.loopexit4396, %bb.fn
  %.3 = phi i32 [ %.2, %.loopexit4396 ], [ %i.ajo, %bb.fn ], [ %.2, %bb.fg ], [ %.2, %bb.fi ], [ %.2, %bb.fm ], [ %.2, %bb.fl ]
  %.not3688 = icmp eq i32 %.3, 0
  br i1 %.not3688, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.ajp = tail call i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.03501, i32 noundef %.8) #13
  %i.ajq = add i32 %.8, 20                        ; 2 uses
  %i.ajr = tail call i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %i.ajq, i32 noundef %.03514) #13
  %.not3689 = icmp eq i32 %i.ajr, 0
  %.not3690 = icmp eq i32 %i.ajp, 0               ; 2 uses
  br i1 %.not3689, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  br i1 %.not3690, label %.backedge4401.backedge, label %.loopexit4393

bb.fr:                                            ; preds = %bb.fp
  br i1 %.not3690, label %bb.fs, label %.loopexit4392.backedge

bb.fs:                                            ; preds = %bb.fr, %bb.fo
  %i.ajs = sub i32 %.8, %.03501
  %i.ajt = sdiv i32 %i.ajs, 20
  %i.aju = sub i32 %.03514, %.8
  %i.ajv = sdiv i32 %i.aju, 20
  %i.ajw = icmp slt i32 %i.ajt, %i.ajv
  br i1 %i.ajw, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3ASMFixIt0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %.03501, i32 noundef %.8, i32 noundef %3, i32 noundef %i.rs)
  %i.ajx = add i32 %.8, 20
  br label %.loopexit4392.backedge

.loopexit4392.backedge:                           ; preds = %bb.ek, %bb.ft, %bb.fr
  %.03501.be = phi i32 [ %i.ajq, %bb.fr ], [ %i.ajx, %bb.ft ], [ %.5, %bb.ek ]
  br label %.loopexit4392

bb.fu:                                            ; preds = %bb.fs
  %i.ajy = add i32 %.8, 20
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3ASMFixIt0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %i.ajy, i32 noundef %.03514, i32 noundef %3, i32 noundef %i.rs)
  br label %.backedge4401.backedge

.backedge4401.backedge:                           ; preds = %bb.fu, %bb.fq
  br label %.backedge4401

.loopexit4393:                                    ; preds = %bb.fq, %bb.dr, %bb.df, %.loopexit4392, %.loopexit4392, %bb.dq, %bb.ca, %bb.ag, %bb.n, %bb.ah, %bb.i, %bb.h, %bb.e, %bb.c, %bb.cx, %bb.l, %bb.k, %bb.j
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 6) i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 96 uses
  %i.f = zext i32 %4 to i64                       ; 12 uses
  %.val698 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val698, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.h = zext i32 %3 to i64                       ; 16 uses
  %.val697 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val697, i64 %i.h
  %.0.copyload.i753 = load i32, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i753) #13, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i, %.0.copyload.i753
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i32 %.0.copyload.i753, %.0.copyload.i
  br i1 %i.j, label %bb.i, label %bb.z

bb.c:                                             ; preds = %bb.a
  %.val696 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.val696, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.0.copyload.i754 = load i32, ptr %i.l, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i754) #13, !srcloc !14
  %.val695 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %.val695, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.0.copyload.i755 = load i32, ptr %i.n, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i755) #13, !srcloc !14
  %.not641 = icmp eq i32 %.0.copyload.i754, %.0.copyload.i755
  br i1 %.not641, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ugt i32 %.0.copyload.i755, %.0.copyload.i754
  br i1 %i.o, label %bb.i, label %bb.z

bb.e:                                             ; preds = %bb.c
  %.val694 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val694, i64 %i.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.0.copyload.i756 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i756) #13, !srcloc !14
  %.val728 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val728, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 19
  %.0.copyload.i757 = load i8, ptr %i.s, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i757) #13, !srcloc !31
  %i.t = zext i8 %.0.copyload.i757 to i32
  %.not642 = icmp sgt i8 %.0.copyload.i757, -1    ; 2 uses
  %i.u = select i1 %.not642, i32 %i.t, i32 %.0.copyload.i756 ; 2 uses
  %.val693 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.0.copyload.i758 = load i32, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i758) #13, !srcloc !14
  %.val727 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val727, i64 %i.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 19
  %.0.copyload.i759 = load i8, ptr %i.y, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i759) #13, !srcloc !31
  %i.z = zext i8 %.0.copyload.i759 to i32
  %.not643 = icmp sgt i8 %.0.copyload.i759, -1    ; 2 uses
  %i.aa = select i1 %.not643, i32 %i.z, i32 %.0.copyload.i758 ; 2 uses
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.u) ; 2 uses
  %.not644 = icmp eq i32 %i.ab, 0
  br i1 %.not644, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val692 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.0.copyload.i760 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i760) #13, !srcloc !14
  %i.ae = add i32 %4, 8
  %i.af = select i1 %.not643, i32 %i.ae, i32 %.0.copyload.i760
  %.val691 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val691, i64 %i.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.0.copyload.i761 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i761) #13, !srcloc !14
  %i.ai = add i32 %3, 8
  %i.aj = select i1 %.not642, i32 %i.ai, i32 %.0.copyload.i761
  %i.ak = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.af, i32 noundef %i.aj, i32 noundef %i.ab) #13 ; 2 uses
  %.not645 = icmp eq i32 %i.ak, 0
  br i1 %.not645, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = icmp ult i32 %i.aa, %i.u
  br i1 %i.al, label %bb.i, label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.am = icmp slt i32 %i.ak, 0
  br i1 %i.am, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  %.val740 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.val740, i64 %i.h
  %.0.copyload.i762 = load i64, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i762) #13, !srcloc !33
  %i.ao = add nuw nsw i64 %i.h, 8                 ; 4 uses
  %.val690 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val690, i64 %i.ao
  %.0.copyload.i763 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i763) #13, !srcloc !14
  %i.aq = add nuw nsw i64 %i.h, 15                ; 2 uses
  %.val689 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.aq
  %.0.copyload.i764 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i764) #13, !srcloc !14
  %i.as = zext i32 %i.c to i64                    ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 11               ; 6 uses
  %.val719 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val719, i64 %i.at
  store i32 %.0.copyload.i764, ptr %i.au, align 1
  %i.av = add nuw nsw i64 %i.h, 12                ; 3 uses
  %.val688 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val688, i64 %i.av
  %.0.copyload.i765 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i765) #13, !srcloc !14
  %i.ax = add nuw nsw i64 %i.as, 8                ; 6 uses
  %.val718 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val718, i64 %i.ax
  store i32 %.0.copyload.i765, ptr %i.ay, align 1
  %.val752 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.val752, i64 %i.ao
  store i64 0, ptr %i.az, align 1
  %i.ba = add nuw nsw i64 %i.h, 19                ; 3 uses
  %.val726 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.val726, i64 %i.ba
  %.0.copyload.i766 = load i8, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i766) #13, !srcloc !31
  %i.bc = add nuw nsw i64 %i.h, 16                ; 2 uses
  %.val717 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.val717, i64 %i.bc
  store i32 0, ptr %i.bd, align 1
  %.val739 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val739, i64 %i.f
  %.0.copyload.i767 = load i64, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i767) #13, !srcloc !33
  %.val751 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val751, i64 %i.h
  store i64 %.0.copyload.i767, ptr %i.bf, align 1
  %.val687 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val687, i64 %i.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.0.copyload.i768 = load i32, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i768) #13, !srcloc !14
  %.val716 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val716, i64 %i.bc
  store i32 %.0.copyload.i768, ptr %i.bi, align 1
  %i.bj = add nuw nsw i64 %i.f, 8                 ; 2 uses
  %.val738 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val738, i64 %i.bj
  %.0.copyload.i769 = load i64, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i769) #13, !srcloc !33
  %.val750 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val750, i64 %i.ao
  store i64 %.0.copyload.i769, ptr %i.bl, align 1
  %.val715 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val715, i64 %i.bj
  store i32 %.0.copyload.i763, ptr %i.bm, align 1
  %.val749 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val749, i64 %i.f
  store i64 %.0.copyload.i762, ptr %i.bn, align 1
  %.val686 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.at
  %.0.copyload.i770 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i770) #13, !srcloc !14
  %.val714 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.val714, i64 %i.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 15
  store i32 %.0.copyload.i770, ptr %i.bq, align 1
  %.val685 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val685, i64 %i.ax
  %.0.copyload.i771 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i771) #13, !srcloc !14
  %.val713 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.val713, i64 %i.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 %.0.copyload.i771, ptr %i.bt, align 1
  %.val731 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val731, i64 %i.f
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 19
  store i8 %.0.copyload.i766, ptr %i.bv, align 1
  %i.bw = add nuw nsw i32 %i.d, 1                 ; 4 uses
  %i.bx = add i32 %3, 8                           ; 3 uses
  %.val684 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.val684, i64 %i.h
end_hunk_14
begin_hunk_15_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsift_down0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3ASMFixIt0x2A0x3E0x3A0x3Adifference_type0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x29:bb.a
bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.er = icmp ult i32 %i.eg, %i.ea
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.es = icmp slt i32 %i.eq, 0
  br i1 %i.es, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.y, %bb.w
  %i.et = add i32 %i.dj, 20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.y, %bb.w, %.preheader, %bb.ad
  %.2695 = phi i32 [ %i.dj, %bb.y ], [ %i.et, %bb.ad ], [ %i.dj, %.preheader ], [ %i.dj, %bb.w ], [ %i.dj, %bb.ab ], [ %i.dj, %bb.ac ] ; 5 uses
  %.2 = phi i32 [ %i.dh, %bb.y ], [ %i.dk, %bb.ad ], [ %i.dh, %.preheader ], [ %i.dh, %bb.w ], [ %i.dh, %bb.ab ], [ %i.dh, %bb.ac ] ; 2 uses
  %i.eu = zext i32 %.2695 to i64                  ; 9 uses
  %.val765 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %.val765, i64 %i.eu
  %.0.copyload.i861 = load i32, ptr %i.ev, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i861) #13, !srcloc !14
  %.val764 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.ew = getelementptr inbounds nuw i8, ptr %.val764, i64 %i.cg
  %.0.copyload.i862 = load i32, ptr %i.ew, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i862) #13, !srcloc !14
  %.not747 = icmp eq i32 %.0.copyload.i861, %.0.copyload.i862
  br i1 %.not747, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not755 = icmp ugt i32 %.0.copyload.i862, %.0.copyload.i861
  br i1 %.not755, label %.loopexit.loopexit, label %bb.am

bb.ag:                                            ; preds = %bb.ae
  %.val763 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.ex = getelementptr inbounds nuw i8, ptr %.val763, i64 %i.eu
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.0.copyload.i863 = load i32, ptr %i.ey, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i863) #13, !srcloc !14
  %.val762 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.ez = getelementptr inbounds nuw i8, ptr %.val762, i64 %i.cf
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %.0.copyload.i864 = load i32, ptr %i.fa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i864) #13, !srcloc !14
  %.not748 = icmp eq i32 %.0.copyload.i863, %.0.copyload.i864
  br i1 %.not748, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not754 = icmp ugt i32 %.0.copyload.i864, %.0.copyload.i863
  br i1 %.not754, label %.loopexit.loopexit, label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %.val761 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %.val761, i64 %i.cf
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 20
  %.0.copyload.i865 = load i32, ptr %i.fc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i865) #13, !srcloc !14
  %.val798 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.fd = getelementptr inbounds nuw i8, ptr %.val798, i64 %i.cf
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 27
  %.0.copyload.i866 = load i8, ptr %i.fe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i866) #13, !srcloc !31
  %i.ff = zext i8 %.0.copyload.i866 to i32
  %.not749 = icmp sgt i8 %.0.copyload.i866, -1    ; 2 uses
  %i.fg = select i1 %.not749, i32 %i.ff, i32 %.0.copyload.i865 ; 2 uses
  %.val760 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.fh = getelementptr inbounds nuw i8, ptr %.val760, i64 %i.eu
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  %.0.copyload.i867 = load i32, ptr %i.fi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i867) #13, !srcloc !14
  %.val797 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %.val797, i64 %i.eu
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 19
  %.0.copyload.i868 = load i8, ptr %i.fk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i868) #13, !srcloc !31
  %i.fl = zext i8 %.0.copyload.i868 to i32
  %.not750 = icmp sgt i8 %.0.copyload.i868, -1    ; 2 uses
  %i.fm = select i1 %.not750, i32 %i.fl, i32 %.0.copyload.i867 ; 2 uses
  %i.fn = tail call i32 @llvm.umin.i32(i32 %i.fg, i32 %i.fm) ; 2 uses
  %.not751 = icmp eq i32 %i.fn, 0
  br i1 %.not751, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val759 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.fo = getelementptr inbounds nuw i8, ptr %.val759, i64 %i.eu
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.0.copyload.i869 = load i32, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i869) #13, !srcloc !14
  %i.fq = add i32 %.2695, 8
  %i.fr = select i1 %.not750, i32 %i.fq, i32 %.0.copyload.i869
  %.val758 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %.val758, i64 %i.co
  %.0.copyload.i870 = load i32, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i870) #13, !srcloc !14
  %i.ft = select i1 %.not749, i32 %i.de, i32 %.0.copyload.i870
  %i.fu = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.fr, i32 noundef %i.ft, i32 noundef %i.fn) #13 ; 2 uses
  %.not752 = icmp eq i32 %i.fu, 0
  br i1 %.not752, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.not753 = icmp ugt i32 %i.fg, %i.fm
  br i1 %.not753, label %.loopexit.loopexit, label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fv = icmp sgt i32 %i.fu, -1
  br i1 %i.fv, label %bb.am, label %.loopexit.loopexit

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ah, %bb.af
  %.val812 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %.val812, i64 %i.eu
  %.0.copyload.i871 = load i64, ptr %i.fw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i871) #13, !srcloc !33
  %i.fx = zext i32 %.1694 to i64                  ; 3 uses
  %.val820 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %.val820, i64 %i.fx
  store i64 %.0.copyload.i871, ptr %i.fy, align 1
  %.val757 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %.val757, i64 %i.eu
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %.0.copyload.i872 = load i32, ptr %i.ga, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i872) #13, !srcloc !14
  %.val793 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.gb = getelementptr inbounds nuw i8, ptr %.val793, i64 %i.fx
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i32 %.0.copyload.i872, ptr %i.gc, align 1
  %i.gd = add nuw nsw i64 %i.eu, 8                ; 2 uses
  %.val811 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %.val811, i64 %i.gd
  %.0.copyload.i873 = load i64, ptr %i.ge, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i873) #13, !srcloc !33
  %.val819 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.gf = getelementptr inbounds nuw i8, ptr %.val819, i64 %i.fx
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i64 %.0.copyload.i873, ptr %i.gg, align 1
  %.val806 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %.val806, i64 %i.eu
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 19
  store i8 0, ptr %i.gi, align 1
  %.val805 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.gj = getelementptr inbounds nuw i8, ptr %.val805, i64 %i.gd
  store i8 0, ptr %i.gj, align 1
  %i.gk = add i32 %.2695, 8                       ; 2 uses
  %.not756 = icmp sgt i32 %.2, %i.h
  br i1 %.not756, label %.loopexit.loopexit, label %.preheader

.loopexit.loopexit:                               ; preds = %bb.am, %bb.af, %bb.ah, %bb.ak, %bb.al
  %.3.ph = phi i32 [ %.2695, %bb.am ], [ %.1694, %bb.ah ], [ %.1694, %bb.af ], [ %.1694, %bb.ak ], [ %.1694, %bb.al ]
  %.1.ph = phi i32 [ %i.gk, %bb.am ], [ %.0, %bb.ah ], [ %.0, %bb.af ], [ %.0, %bb.ak ], [ %.0, %bb.al ]
  %.pre = zext i32 %.3.ph to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.u
  %.pre-phi = phi i64 [ %.pre, %.loopexit.loopexit ], [ %i.az, %bb.u ]
  %.1 = phi i32 [ %.1.ph, %.loopexit.loopexit ], [ %i.dd, %bb.u ]
  %.val810 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.gl = getelementptr inbounds nuw i8, ptr %.val810, i64 %i.cg
  %.0.copyload.i874 = load i64, ptr %i.gl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i874) #13, !srcloc !33
  %.val818 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.gm = getelementptr inbounds nuw i8, ptr %.val818, i64 %.pre-phi
  store i64 %.0.copyload.i874, ptr %i.gm, align 1
  %i.gn = zext i32 %i.de to i64                   ; 2 uses
  %.val = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.go = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.0.copyload.i875 = load i32, ptr %i.gp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i875) #13, !srcloc !14
  %i.gq = zext i32 %.1 to i64                     ; 2 uses
  %.val792 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %.val792, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i32 %.0.copyload.i875, ptr %i.gs, align 1
  %.val809 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.gt = getelementptr inbounds nuw i8, ptr %.val809, i64 %i.gn
  %.0.copyload.i876 = load i64, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i876) #13, !srcloc !33
  %.val817 = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.gu = getelementptr inbounds nuw i8, ptr %.val817, i64 %i.gq
  store i64 %.0.copyload.i876, ptr %i.gu, align 1
  br label %bb.an

bb.an:                                            ; preds = %bb.t, %bb.s, %bb.p, %bb.n, %bb.b, %bb.a, %.loopexit
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret void
}

declare i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x2C0x20llvh0x3A0x3ASMFixIt0x2A0x3E0x28llvh0x3A0x3ASMFixIt0x2A0x2C0x20llvh0x3A0x3ASMFixIt0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cllvh0x3A0x3ASMFixIt0x2C0x20llvh0x3A0x3ASMFixIt0x3E0x260x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x28hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 245 uses
  %i.e = zext i32 %i.c to i64                     ; 19 uses
  %i.f = add nuw nsw i64 %i.e, 8                  ; 18 uses
  br label %.backedge2370

.backedge2370:                                    ; preds = %.backedge2370.backedge, %bb.a
  %.01817 = phi i32 [ %1, %bb.a ], [ %.01804, %.backedge2370.backedge ]
  %.01813 = phi i32 [ %2, %bb.a ], [ %.41801, %.backedge2370.backedge ] ; 11 uses
  %.01805 = phi i32 [ %4, %bb.a ], [ %i.ma, %.backedge2370.backedge ]
  %i.g = add i32 %.01813, -4
  %i.h = add i32 %.01813, -32                     ; 2 uses
  %i.i = add i32 %.01813, -16                     ; 12 uses
  %i.j = zext i32 %i.g to i64
  %i.k = zext i32 %i.i to i64                     ; 12 uses
  %i.l = add nuw nsw i64 %i.k, 8                  ; 6 uses
  br label %.loopexit2359

.loopexit2359:                                    ; preds = %.loopexit2359.backedge, %.backedge2370
  %.21807 = phi i32 [ %.01805, %.backedge2370 ], [ %i.ma, %.loopexit2359.backedge ] ; 2 uses
  %.01804 = phi i32 [ %.01817, %.backedge2370 ], [ %.01804.be, %.loopexit2359.backedge ] ; 42 uses
  %i.m = sub i32 %.01813, %.01804                 ; 4 uses
  %i.n = ashr i32 %i.m, 4                         ; 7 uses
  switch i32 %i.n, label %bb.q [
    i32 0, label %.loopexit2348
    i32 1, label %.loopexit2348
    i32 2, label %bb.b
    i32 3, label %bb.cq
    i32 4, label %bb.f
    i32 5, label %bb.p
  ]

bb.b:                                             ; preds = %.loopexit2359
  %.val2022 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val2022, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.0.copyload.i = load i32, ptr %i.p, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.q = zext i32 %.01804 to i64                  ; 5 uses
  %.val2021 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val2021, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.0.copyload.i2187 = load i32, ptr %i.s, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2187) #13, !srcloc !14
  %.not1894 = icmp ugt i32 %.0.copyload.i, %.0.copyload.i2187
  br i1 %.not1894, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1895 = icmp eq i32 %.0.copyload.i, %.0.copyload.i2187
  br i1 %.not1895, label %bb.d, label %.loopexit2348

bb.d:                                             ; preds = %bb.c
  %.val2020 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val2020, i64 %i.k
  %.0.copyload.i2188 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2188) #13, !srcloc !14
  %.val2019 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val2019, i64 %i.q
  %.0.copyload.i2189 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2189) #13, !srcloc !14
  %.not1896 = icmp ult i32 %.0.copyload.i2188, %.0.copyload.i2189
  br i1 %.not1896, label %bb.e, label %.loopexit2348

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.v = add nuw nsw i64 %i.q, 8                  ; 2 uses
  %.val2107 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.val2107, i64 %i.v
  %.0.copyload.i2190 = load i64, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2190) #13, !srcloc !33
  %.val2186 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val2186, i64 %i.f
  store i64 %.0.copyload.i2190, ptr %i.x, align 1
  %.val2106 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.val2106, i64 %i.q
  %.0.copyload.i2191 = load i64, ptr %i.y, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2191) #13, !srcloc !33
  %.val2185 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val2185, i64 %i.e
  store i64 %.0.copyload.i2191, ptr %i.z, align 1
  %.val2105 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2105, i64 %i.l
  %.0.copyload.i2192 = load i64, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2192) #13, !srcloc !33
  %.val2184 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2184, i64 %i.v
  store i64 %.0.copyload.i2192, ptr %i.ab, align 1
  %.val2104 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2104, i64 %i.k
  %.0.copyload.i2193 = load i64, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2193) #13, !srcloc !33
  %.val2183 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2183, i64 %i.q
  store i64 %.0.copyload.i2193, ptr %i.ad, align 1
  %.val2103 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2103, i64 %i.f
  %.0.copyload.i2194 = load i64, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2194) #13, !srcloc !33
  %.val2182 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.val2182, i64 %i.l
  store i64 %.0.copyload.i2194, ptr %i.af, align 1
  %.val2102 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2102, i64 %i.e
  %.0.copyload.i2195 = load i64, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2195) #13, !srcloc !33
  %.val2181 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2181, i64 %i.k
  store i64 %.0.copyload.i2195, ptr %i.ah, align 1
  br label %.loopexit2348

bb.f:                                             ; preds = %.loopexit2359
  %i.ai = add i32 %.01804, 16
  %i.aj = add i32 %.01804, 32
  %i.ak = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x28hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01804, i32 noundef %i.ai, i32 noundef %i.aj) ; 0 uses
  %.val2018 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.val2018, i64 %i.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %.0.copyload.i2196 = load i32, ptr %i.am, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2196) #13, !srcloc !14
  %i.an = zext i32 %.01804 to i64                 ; 13 uses
  %i.ao = add nuw nsw i64 %i.an, 44               ; 2 uses
  %.val2017 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2017, i64 %i.ao
  %.0.copyload.i2197 = load i32, ptr %i.ap, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2197) #13, !srcloc !14
  %.not = icmp ugt i32 %.0.copyload.i2196, %.0.copyload.i2197
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not1886 = icmp eq i32 %.0.copyload.i2196, %.0.copyload.i2197
  br i1 %.not1886, label %bb.h, label %.loopexit2348

bb.h:                                             ; preds = %bb.g
  %.val2016 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2016, i64 %i.k
  %.0.copyload.i2198 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2198) #13, !srcloc !14
  %.val2015 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2015, i64 %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.0.copyload.i2199 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2199) #13, !srcloc !14
  %.not1887 = icmp ult i32 %.0.copyload.i2198, %.0.copyload.i2199
  br i1 %.not1887, label %bb.i, label %.loopexit2348

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.at = add nuw nsw i64 %i.an, 40               ; 4 uses
  %.val2101 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val2101, i64 %i.at
  %.0.copyload.i2200 = load i64, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2200) #13, !srcloc !33
  %.val2180 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val2180, i64 %i.f
  store i64 %.0.copyload.i2200, ptr %i.av, align 1
  %i.aw = add nuw nsw i64 %i.an, 32               ; 5 uses
  %.val2100 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2100, i64 %i.aw
  %.0.copyload.i2201 = load i64, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2201) #13, !srcloc !33
  %.val2179 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val2179, i64 %i.e
  store i64 %.0.copyload.i2201, ptr %i.ay, align 1
  %.val2099 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.val2099, i64 %i.l
  %.0.copyload.i2202 = load i64, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2202) #13, !srcloc !33
  %.val2178 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2178, i64 %i.at
  store i64 %.0.copyload.i2202, ptr %i.ba, align 1
  %.val2098 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.val2098, i64 %i.k
  %.0.copyload.i2203 = load i64, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2203) #13, !srcloc !33
  %.val2177 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.val2177, i64 %i.aw
  store i64 %.0.copyload.i2203, ptr %i.bc, align 1
  %.val2097 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.val2097, i64 %i.f
  %.0.copyload.i2204 = load i64, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2204) #13, !srcloc !33
  %.val2176 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val2176, i64 %i.l
  store i64 %.0.copyload.i2204, ptr %i.be, align 1
  %.val2096 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val2096, i64 %i.e
  %.0.copyload.i2205 = load i64, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2205) #13, !srcloc !33
  %.val2175 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val2175, i64 %i.k
  store i64 %.0.copyload.i2205, ptr %i.bg, align 1
  %.val2014 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.val2014, i64 %i.ao
  %.0.copyload.i2206 = load i32, ptr %i.bh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2206) #13, !srcloc !14
  %i.bi = add nuw nsw i64 %i.an, 28               ; 2 uses
  %.val2013 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2013, i64 %i.bi
  %.0.copyload.i2207 = load i32, ptr %i.bj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2207) #13, !srcloc !14
  %.not1888 = icmp ugt i32 %.0.copyload.i2206, %.0.copyload.i2207
  br i1 %.not1888, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not1889 = icmp eq i32 %.0.copyload.i2206, %.0.copyload.i2207
  br i1 %.not1889, label %bb.k, label %.loopexit2348

bb.k:                                             ; preds = %bb.j
  %.val2012 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val2012, i64 %i.aw
  %.0.copyload.i2208 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2208) #13, !srcloc !14
  %.val2011 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val2011, i64 %i.an
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.0.copyload.i2209 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2209) #13, !srcloc !14
  %.not1890 = icmp ult i32 %.0.copyload.i2208, %.0.copyload.i2209
  br i1 %.not1890, label %bb.l, label %.loopexit2348

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.bn = add nuw nsw i64 %i.an, 24               ; 4 uses
  %.val2095 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2095, i64 %i.bn
  %.0.copyload.i2210 = load i64, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2210) #13, !srcloc !33
  %.val2174 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2174, i64 %i.f
  store i64 %.0.copyload.i2210, ptr %i.bp, align 1
  %i.bq = add nuw nsw i64 %i.an, 16               ; 5 uses
  %.val2094 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val2094, i64 %i.bq
  %.0.copyload.i2211 = load i64, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2211) #13, !srcloc !33
  %.val2173 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.val2173, i64 %i.e
  store i64 %.0.copyload.i2211, ptr %i.bs, align 1
  %.val2093 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2093, i64 %i.at
  %.0.copyload.i2212 = load i64, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2212) #13, !srcloc !33
  %.val2172 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val2172, i64 %i.bn
  store i64 %.0.copyload.i2212, ptr %i.bu, align 1
  %.val2092 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.val2092, i64 %i.aw
  %.0.copyload.i2213 = load i64, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2213) #13, !srcloc !33
  %.val2171 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.val2171, i64 %i.bq
  store i64 %.0.copyload.i2213, ptr %i.bw, align 1
  %.val2091 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2091, i64 %i.f
  %.0.copyload.i2214 = load i64, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2214) #13, !srcloc !33
  %.val2170 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.val2170, i64 %i.at
  store i64 %.0.copyload.i2214, ptr %i.by, align 1
  %.val2090 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %.val2090, i64 %i.e
  %.0.copyload.i2215 = load i64, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2215) #13, !srcloc !33
  %.val2169 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.val2169, i64 %i.aw
  store i64 %.0.copyload.i2215, ptr %i.ca, align 1
  %.val2010 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2010, i64 %i.bi
  %.0.copyload.i2216 = load i32, ptr %i.cb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2216) #13, !srcloc !14
  %.val2009 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.val2009, i64 %i.an
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %.0.copyload.i2217 = load i32, ptr %i.cd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2217) #13, !srcloc !14
  %.not1891 = icmp ugt i32 %.0.copyload.i2216, %.0.copyload.i2217
  br i1 %.not1891, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not1892 = icmp eq i32 %.0.copyload.i2216, %.0.copyload.i2217
  br i1 %.not1892, label %bb.n, label %.loopexit2348

bb.n:                                             ; preds = %bb.m
  %.val2008 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2008, i64 %i.bq
  %.0.copyload.i2218 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2218) #13, !srcloc !14
  %.val2007 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %.val2007, i64 %i.an
  %.0.copyload.i2219 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2219) #13, !srcloc !14
  %.not1893 = icmp ult i32 %.0.copyload.i2218, %.0.copyload.i2219
  br i1 %.not1893, label %bb.o, label %.loopexit2348

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.cg = add nuw nsw i64 %i.an, 8                ; 2 uses
  %.val2089 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.val2089, i64 %i.cg
  %.0.copyload.i2220 = load i64, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2220) #13, !srcloc !33
  %.val2168 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %.val2168, i64 %i.f
  store i64 %.0.copyload.i2220, ptr %i.ci, align 1
  %.val2088 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.val2088, i64 %i.an
  %.0.copyload.i2221 = load i64, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2221) #13, !srcloc !33
  %.val2167 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.val2167, i64 %i.e
  store i64 %.0.copyload.i2221, ptr %i.ck, align 1
  %.val2087 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.val2087, i64 %i.bn
  %.0.copyload.i2222 = load i64, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2222) #13, !srcloc !33
  %.val2166 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.val2166, i64 %i.cg
  store i64 %.0.copyload.i2222, ptr %i.cm, align 1
  %.val2086 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.val2086, i64 %i.bq
  %.0.copyload.i2223 = load i64, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2223) #13, !srcloc !33
  %.val2165 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %.val2165, i64 %i.an
  store i64 %.0.copyload.i2223, ptr %i.co, align 1
  %.val2085 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.val2085, i64 %i.f
  %.0.copyload.i2224 = load i64, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2224) #13, !srcloc !33
  %.val2164 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.val2164, i64 %i.bn
  store i64 %.0.copyload.i2224, ptr %i.cq, align 1
  %.val2084 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %.val2084, i64 %i.e
  %.0.copyload.i2225 = load i64, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2225) #13, !srcloc !33
  %.val2163 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.val2163, i64 %i.bq
  store i64 %.0.copyload.i2225, ptr %i.cs, align 1
  br label %.loopexit2348

bb.p:                                             ; preds = %.loopexit2359
  %i.ct = add i32 %.01804, 16
  %i.cu = add i32 %.01804, 32
  %i.cv = add i32 %.01804, 48
  %i.cw = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort50x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x28hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01804, i32 noundef %i.ct, i32 noundef %i.cu, i32 noundef %i.cv, i32 noundef %i.i) ; 0 uses
  br label %.loopexit2348

bb.q:                                             ; preds = %.loopexit2359
  %i.cx = icmp slt i32 %i.m, 496
  br i1 %i.cx, label %bb.r, label %5

bb.r:                                             ; preds = %bb.q
  %i.cy = add i32 %.01804, 16
  %i.cz = add i32 %.01804, 32                     ; 2 uses
  %i.da = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x28hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01804, i32 noundef %i.cy, i32 noundef %i.cz) ; 0 uses
  %i.db = add i32 %.01804, 48                     ; 2 uses
  %i.dc = icmp eq i32 %i.db, %.01813
  br i1 %i.dc, label %.loopexit2348, label %.preheader2347

.preheader2347:                                   ; preds = %bb.r, %bb.z
  %.21819 = phi i32 [ %.01797, %bb.z ], [ %i.cz, %bb.r ] ; 3 uses
  %.01797 = phi i32 [ %i.eq, %bb.z ], [ %i.db, %bb.r ] ; 3 uses
  %i.dd = zext i32 %.01797 to i64                 ; 6 uses
  %.val2006 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.val2006, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %.0.copyload.i2226 = load i32, ptr %i.df, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2226) #13, !srcloc !14
  %i.dg = zext i32 %.21819 to i64                 ; 4 uses
  %.val2005 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.val2005, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %.0.copyload.i2227 = load i32, ptr %i.di, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2227) #13, !srcloc !14
  %i.dj = icmp ugt i32 %.0.copyload.i2226, %.0.copyload.i2227
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader2347
  %.val2004 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.val2004, i64 %i.dd
  %.0.copyload.i2228 = load i32, ptr %i.dk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2228) #13, !srcloc !14
  br label %bb.v

bb.t:                                             ; preds = %.preheader2347
  %.not1936 = icmp eq i32 %.0.copyload.i2227, %.0.copyload.i2226
  br i1 %.not1936, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %.val2003 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %.val2003, i64 %i.dd
  %.0.copyload.i2229 = load i32, ptr %i.dl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2229) #13, !srcloc !14
  %.val2002 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.val2002, i64 %i.dg
  %.0.copyload.i2230 = load i32, ptr %i.dm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2230) #13, !srcloc !14
  %.not1937 = icmp ult i32 %.0.copyload.i2229, %.0.copyload.i2230
  br i1 %.not1937, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u, %bb.s
  %.01786 = phi i32 [ %.0.copyload.i2228, %bb.s ], [ %.0.copyload.i2229, %bb.u ] ; 2 uses
  %.val2083 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.val2083, i64 %i.dd
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %.0.copyload.i2231 = load i64, ptr %i.do, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2231) #13, !srcloc !33
  %.val2082 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dp = getelementptr inbounds nuw i8, ptr %.val2082, i64 %i.dg
  %.0.copyload.i2232 = load i64, ptr %i.dp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2232) #13, !srcloc !33
  %.val2162 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %.val2162, i64 %i.dd
  store i64 %.0.copyload.i2232, ptr %i.dq, align 1
  %.val2081 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dr = getelementptr inbounds nuw i8, ptr %.val2081, i64 %i.dg
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.0.copyload.i2233 = load i64, ptr %i.ds, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2233) #13, !srcloc !33
  %.val2161 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %.val2161, i64 %i.dd
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %.0.copyload.i2233, ptr %i.du, align 1
  %i.dv = icmp eq i32 %.21819, %.01804
  br i1 %i.dv, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.v, %bb.y
  %.31820 = phi i32 [ %i.dw, %bb.y ], [ %.21819, %bb.v ] ; 4 uses
  %i.dw = add i32 %.31820, -16                    ; 3 uses
  %i.dx = zext i32 %i.dw to i64                   ; 4 uses
  %.val2001 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dy = getelementptr inbounds nuw i8, ptr %.val2001, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %.0.copyload.i2234 = load i32, ptr %i.dz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2234) #13, !srcloc !14
  %i.ea = icmp ugt i32 %.0.copyload.i2226, %.0.copyload.i2234
  br i1 %i.ea, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.preheader
  %.not1938 = icmp eq i32 %.0.copyload.i2226, %.0.copyload.i2234
  br i1 %.not1938, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w
  %.val2000 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %.val2000, i64 %i.dx
  %.0.copyload.i2235 = load i32, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2235) #13, !srcloc !14
  %i.ec = icmp ult i32 %.01786, %.0.copyload.i2235
  br i1 %i.ec, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x, %.preheader
  %.val2080 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %.val2080, i64 %i.dx
  %.0.copyload.i2236 = load i64, ptr %i.ed, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2236) #13, !srcloc !33
  %i.ee = zext i32 %.31820 to i64                 ; 2 uses
  %.val2160 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ef = getelementptr inbounds nuw i8, ptr %.val2160, i64 %i.ee
  store i64 %.0.copyload.i2236, ptr %i.ef, align 1
  %.val2079 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %.val2079, i64 %i.dx
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.0.copyload.i2237 = load i64, ptr %i.eh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2237) #13, !srcloc !33
  %.val2159 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %.val2159, i64 %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.0.copyload.i2237, ptr %i.ej, align 1
  %.not1939 = icmp eq i32 %i.dw, %.01804
  br i1 %.not1939, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.0 = phi i32 [ %.01804, %bb.v ], [ %.01804, %bb.y ], [ %.31820, %bb.w ], [ %.31820, %bb.x ]
  %i.ek = zext i32 %.0 to i64                     ; 3 uses
  %.val2028 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %.val2028, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 %.0.copyload.i2226, ptr %i.em, align 1
  %.val2158 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %.val2158, i64 %i.ek
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i64 %.0.copyload.i2231, ptr %i.eo, align 1
  %.val2027 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %.val2027, i64 %i.ek
  store i32 %.01786, ptr %i.ep, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.t, %.loopexit
  %i.eq = add i32 %.01797, 16                     ; 2 uses
  %.not1940 = icmp eq i32 %i.eq, %.01813
  br i1 %.not1940, label %.loopexit2348, label %.preheader2347

5:                                                ; preds = %bb.q
  %.not1897 = icmp eq i32 %.21807, 0
  br i1 %.not1897, label %bb.aa, label %bb.bn

bb.aa:                                            ; preds = %5
  %i.er = icmp eq i32 %.01813, %.01804
  br i1 %i.er, label %.loopexit2348, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = add nsw i32 %i.n, -2                    ; 2 uses
  %i.et = lshr i32 %i.es, 1                       ; 3 uses
  %i.eu = icmp slt i32 %i.n, 2
  br i1 %i.eu, label %.split2448.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ab
  %i.ev = lshr i32 %i.es, 1
  %i.ew = zext nneg i32 %i.ev to i64
  br label %.split

.split:                                           ; preds = %.split.preheader, %bb.at
  %indvars.iv = phi i64 [ %i.ew, %.split.preheader ], [ %indvars.iv.next, %bb.at ] ; 3 uses
  %i.ex = trunc nuw i64 %indvars.iv to i32
  %i.ey = shl i32 %i.ex, 4                        ; 3 uses
  %i.ez = add i32 %i.ey, %.01804
  %i.fa = ashr exact i32 %i.ey, 4
  %i.fb = icmp slt i32 %i.et, %i.fa
  br i1 %i.fb, label %bb.at, label %bb.ac

bb.ac:                                            ; preds = %.split
  %i.fc = ashr exact i32 %i.ey, 3                 ; 2 uses
  %i.fd = or disjoint i32 %i.fc, 1                ; 4 uses
  %i.fe = shl i32 %i.fd, 4
  %i.ff = add i32 %i.fe, %.01804                  ; 5 uses
  %i.fg = add nsw i32 %i.fc, 2                    ; 2 uses
  %.not1921 = icmp sgt i32 %i.n, %i.fg
  br i1 %.not1921, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.fh = zext i32 %i.ff to i64                   ; 4 uses
  %.val1999 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %.val1999, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %.0.copyload.i2238 = load i32, ptr %i.fj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2238) #13, !srcloc !14
  %.val1998 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fk = getelementptr inbounds nuw i8, ptr %.val1998, i64 %i.fh
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 28
  %.0.copyload.i2239 = load i32, ptr %i.fl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2239) #13, !srcloc !14
  %i.fm = icmp ugt i32 %.0.copyload.i2238, %.0.copyload.i2239
  br i1 %i.fm, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not1922 = icmp eq i32 %.0.copyload.i2238, %.0.copyload.i2239
  br i1 %.not1922, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.val1997 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1997, i64 %i.fh
  %.0.copyload.i2240 = load i32, ptr %i.fn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2240) #13, !srcloc !14
  %.val1996 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1996, i64 %i.fh
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %.0.copyload.i2241 = load i32, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2241) #13, !srcloc !14
  %i.fq = icmp ult i32 %.0.copyload.i2240, %.0.copyload.i2241
  br i1 %i.fq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.fr = add i32 %i.ff, 16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ag
  %.41821 = phi i32 [ %i.fd, %bb.ae ], [ %i.fg, %bb.ag ], [ %i.fd, %bb.ac ], [ %i.fd, %bb.af ] ; 2 uses
  %.31808 = phi i32 [ %i.ff, %bb.ae ], [ %i.fr, %bb.ag ], [ %i.ff, %bb.ac ], [ %i.ff, %bb.af ] ; 2 uses
  %i.fs = zext i32 %.31808 to i64                 ; 5 uses
  %.val1995 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1995, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %.0.copyload.i2242 = load i32, ptr %i.fu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2242) #13, !srcloc !14
  %i.fv = zext i32 %i.ez to i64                   ; 5 uses
  %.val1994 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1994, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %.0.copyload.i2243 = load i32, ptr %i.fx, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2243) #13, !srcloc !14
  %i.fy = icmp ugt i32 %.0.copyload.i2242, %.0.copyload.i2243
  br i1 %i.fy, label %bb.at, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not1923 = icmp eq i32 %.0.copyload.i2242, %.0.copyload.i2243
  %.val1992 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %.val1992, i64 %i.fv
  %.0.copyload.i2245 = load i32, ptr %i.fz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2245) #13
  br i1 %.not1923, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.val1991 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ga = getelementptr inbounds nuw i8, ptr %.val1991, i64 %i.fs
  %.0.copyload.i2246 = load i32, ptr %i.ga, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2246) #13, !srcloc !14
  %i.gb = icmp ugt i32 %.0.copyload.i2245, %.0.copyload.i2246
  br i1 %i.gb, label %bb.at, label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.val2078 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gc = getelementptr inbounds nuw i8, ptr %.val2078, i64 %i.fv
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %.0.copyload.i2247 = load i64, ptr %i.gd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2247) #13, !srcloc !33
  %.val2077 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %.val2077, i64 %i.fs
  %.0.copyload.i2248 = load i64, ptr %i.ge, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2248) #13, !srcloc !33
  %.val2157 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gf = getelementptr inbounds nuw i8, ptr %.val2157, i64 %i.fv
  store i64 %.0.copyload.i2248, ptr %i.gf, align 1
  %.val2076 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gg = getelementptr inbounds nuw i8, ptr %.val2076, i64 %i.fs
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.0.copyload.i2249 = load i64, ptr %i.gh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2249) #13, !srcloc !33
  %.val2156 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gi = getelementptr inbounds nuw i8, ptr %.val2156, i64 %i.fv
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %.0.copyload.i2249, ptr %i.gj, align 1
  %i.gk = icmp sgt i32 %.41821, %i.et
  br i1 %i.gk, label %.loopexit2353, label %.preheader2352

.preheader2352:                                   ; preds = %bb.ak, %bb.as
  %.51822 = phi i32 [ %.61823, %bb.as ], [ %.41821, %bb.ak ]
  %.41809 = phi i32 [ %.01811, %bb.as ], [ %.31808, %bb.ak ] ; 3 uses
  %i.gl = shl i32 %.51822, 1                      ; 2 uses
  %i.gm = or disjoint i32 %i.gl, 1                ; 4 uses
  %i.gn = shl i32 %i.gm, 4
  %i.go = add i32 %i.gn, %.01804                  ; 5 uses
  %i.gp = add i32 %i.gl, 2                        ; 2 uses
  %.not1924 = icmp sgt i32 %i.n, %i.gp
  br i1 %.not1924, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %.preheader2352
  %i.gq = zext i32 %i.go to i64                   ; 4 uses
  %.val1990 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %.val1990, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %.0.copyload.i2250 = load i32, ptr %i.gs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2250) #13, !srcloc !14
  %.val1989 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gt = getelementptr inbounds nuw i8, ptr %.val1989, i64 %i.gq
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 28
  %.0.copyload.i2251 = load i32, ptr %i.gu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2251) #13, !srcloc !14
  %i.gv = icmp ugt i32 %.0.copyload.i2250, %.0.copyload.i2251
  br i1 %i.gv, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not1925 = icmp eq i32 %.0.copyload.i2250, %.0.copyload.i2251
  br i1 %.not1925, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %.val1988 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gw = getelementptr inbounds nuw i8, ptr %.val1988, i64 %i.gq
  %.0.copyload.i2252 = load i32, ptr %i.gw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2252) #13, !srcloc !14
  %.val1987 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1987, i64 %i.gq
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %.0.copyload.i2253 = load i32, ptr %i.gy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2253) #13, !srcloc !14
  %i.gz = icmp ult i32 %.0.copyload.i2252, %.0.copyload.i2253
  br i1 %i.gz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.al
  %i.ha = add i32 %i.go, 16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.am, %.preheader2352, %bb.ao
  %.61823 = phi i32 [ %i.gm, %bb.am ], [ %i.gp, %bb.ao ], [ %i.gm, %.preheader2352 ], [ %i.gm, %bb.an ] ; 2 uses
  %.01811 = phi i32 [ %i.go, %bb.am ], [ %i.ha, %bb.ao ], [ %i.go, %.preheader2352 ], [ %i.go, %bb.an ] ; 3 uses
  %i.hb = zext i32 %.01811 to i64                 ; 4 uses
  %.val1986 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1986, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %.0.copyload.i2254 = load i32, ptr %i.hd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2254) #13, !srcloc !14
  %i.he = icmp ult i32 %.0.copyload.i2243, %.0.copyload.i2254
  br i1 %i.he, label %.loopexit2353.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not1926 = icmp eq i32 %.0.copyload.i2243, %.0.copyload.i2254
  br i1 %.not1926, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.val1985 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hf = getelementptr inbounds nuw i8, ptr %.val1985, i64 %i.hb
  %.0.copyload.i2255 = load i32, ptr %i.hf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2255) #13, !srcloc !14
  %.not1927 = icmp ult i32 %.0.copyload.i2255, %.0.copyload.i2245
  br i1 %.not1927, label %.loopexit2353.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.val2075 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hg = getelementptr inbounds nuw i8, ptr %.val2075, i64 %i.hb
  %.0.copyload.i2256 = load i64, ptr %i.hg, align 1 ; 2 uses
end_hunk_15
begin_hunk_16_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x28hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x3A0x3Adifference_type0x29:bb.a

bb.bb:                                            ; preds = %bb.ba
  %i.je = add i32 %.51810, -16                    ; 3 uses
  %i.jf = icmp eq i32 %i.je, %.9
  br i1 %i.jf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.val2069 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jg = getelementptr inbounds nuw i8, ptr %.val2069, i64 %i.hw
  %.0.copyload.i2266 = load i64, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2266) #13, !srcloc !33
  %.val2148 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jh = getelementptr inbounds nuw i8, ptr %.val2148, i64 %i.iw
  store i64 %.0.copyload.i2266, ptr %i.jh, align 1
  %.val2068 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ji = getelementptr inbounds nuw i8, ptr %.val2068, i64 %i.hx
  %.0.copyload.i2267 = load i64, ptr %i.ji, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2267) #13, !srcloc !33
  %.val2147 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jj = getelementptr inbounds nuw i8, ptr %.val2147, i64 %i.ja
  store i64 %.0.copyload.i2267, ptr %i.jj, align 1
  br label %bb.bm

bb.bd:                                            ; preds = %bb.bb
  %i.jk = zext i32 %i.je to i64                   ; 3 uses
  %.val2067 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jl = getelementptr inbounds nuw i8, ptr %.val2067, i64 %i.jk
  %.0.copyload.i2268 = load i64, ptr %i.jl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2268) #13, !srcloc !33
  %.val2146 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %.val2146, i64 %i.iw
  store i64 %.0.copyload.i2268, ptr %i.jm, align 1
  %i.jn = add nuw nsw i64 %i.jk, 8                ; 2 uses
  %.val2066 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jo = getelementptr inbounds nuw i8, ptr %.val2066, i64 %i.jn
  %.0.copyload.i2269 = load i64, ptr %i.jo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2269) #13, !srcloc !33
  %.val2145 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jp = getelementptr inbounds nuw i8, ptr %.val2145, i64 %i.ja
  store i64 %.0.copyload.i2269, ptr %i.jp, align 1
  %.val2065 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jq = getelementptr inbounds nuw i8, ptr %.val2065, i64 %i.hw
  %.0.copyload.i2270 = load i64, ptr %i.jq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2270) #13, !srcloc !33
  %.val2144 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jr = getelementptr inbounds nuw i8, ptr %.val2144, i64 %i.jk
  store i64 %.0.copyload.i2270, ptr %i.jr, align 1
  %.val2064 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.js = getelementptr inbounds nuw i8, ptr %.val2064, i64 %i.hx
  %.0.copyload.i2271 = load i64, ptr %i.js, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2271) #13, !srcloc !33
  %.val2143 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jt = getelementptr inbounds nuw i8, ptr %.val2143, i64 %i.jn
  store i64 %.0.copyload.i2271, ptr %i.jt, align 1
  %.reass.reass.reass = add i32 %.9, %invariant.op ; 2 uses
  %i.ju = icmp slt i32 %.reass.reass.reass, 17
  br i1 %i.ju, label %bb.bm, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jv = lshr i32 %.reass.reass.reass, 4
  %i.jw = add nsw i32 %i.jv, -2                   ; 2 uses
  %i.jx = lshr i32 %i.jw, 1                       ; 2 uses
  %i.jy = shl i32 %i.jx, 4
  %i.jz = add i32 %i.jy, %.01804                  ; 2 uses
  %i.ka = zext i32 %i.jz to i64                   ; 5 uses
  %.val1980 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kb = getelementptr inbounds nuw i8, ptr %.val1980, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  %.0.copyload.i2272 = load i32, ptr %i.kc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2272) #13, !srcloc !14
  %.val1979 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kd = getelementptr inbounds nuw i8, ptr %.val1979, i64 %i.iw
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  %.0.copyload.i2273 = load i32, ptr %i.ke, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2273) #13, !srcloc !14
  %i.kf = icmp ugt i32 %.0.copyload.i2272, %.0.copyload.i2273
  br i1 %i.kf, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %.val1978 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kg = getelementptr inbounds nuw i8, ptr %.val1978, i64 %i.iw
  %.0.copyload.i2274 = load i32, ptr %i.kg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2274) #13, !srcloc !14
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %.not1933 = icmp eq i32 %.0.copyload.i2273, %.0.copyload.i2272
  br i1 %.not1933, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %.val1977 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %.val1977, i64 %i.iw
  %.0.copyload.i2275 = load i32, ptr %i.kh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2275) #13, !srcloc !14
  %.val1976 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ki = getelementptr inbounds nuw i8, ptr %.val1976, i64 %i.ka
  %.0.copyload.i2276 = load i32, ptr %i.ki, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2276) #13, !srcloc !14
  %.not1934 = icmp ugt i32 %.0.copyload.i2275, %.0.copyload.i2276
  br i1 %.not1934, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.11798 = phi i32 [ %.0.copyload.i2274, %bb.bf ], [ %.0.copyload.i2275, %bb.bh ] ; 2 uses
  %.val2063 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kj = getelementptr inbounds nuw i8, ptr %.val2063, i64 %i.iw
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %.0.copyload.i2277 = load i64, ptr %i.kk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2277) #13, !srcloc !33
  %.val2062 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kl = getelementptr inbounds nuw i8, ptr %.val2062, i64 %i.ka
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %.0.copyload.i2278 = load i64, ptr %i.km, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2278) #13, !srcloc !33
  %.val2142 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kn = getelementptr inbounds nuw i8, ptr %.val2142, i64 %i.ja
  store i64 %.0.copyload.i2278, ptr %i.kn, align 1
  %.val2061 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ko = getelementptr inbounds nuw i8, ptr %.val2061, i64 %i.ka
  %.0.copyload.i2279 = load i64, ptr %i.ko, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2279) #13, !srcloc !33
  %.val2141 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kp = getelementptr inbounds nuw i8, ptr %.val2141, i64 %i.iw
  store i64 %.0.copyload.i2279, ptr %i.kp, align 1
  %i.kq = icmp ult i32 %i.jw, 2
  br i1 %i.kq, label %.loopexit2350, label %.preheader2349

.preheader2349:                                   ; preds = %bb.bi, %bb.bl
  %.31816 = phi i32 [ %i.ku, %bb.bl ], [ %i.jz, %bb.bi ] ; 3 uses
  %.01792 = phi i32 [ %i.ks, %bb.bl ], [ %i.jx, %bb.bi ]
  %i.kr = add nsw i32 %.01792, -1                 ; 2 uses
  %i.ks = lshr i32 %i.kr, 1                       ; 2 uses
  %i.kt = shl i32 %i.ks, 4
  %i.ku = add i32 %i.kt, %.01804                  ; 3 uses
  %i.kv = zext i32 %i.ku to i64                   ; 4 uses
  %.val1975 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kw = getelementptr inbounds nuw i8, ptr %.val1975, i64 %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  %.0.copyload.i2280 = load i32, ptr %i.kx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2280) #13, !srcloc !14
  %i.ky = icmp ugt i32 %.0.copyload.i2280, %.0.copyload.i2273
  br i1 %i.ky, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.preheader2349
  %.not1935 = icmp eq i32 %.0.copyload.i2273, %.0.copyload.i2280
  br i1 %.not1935, label %bb.bk, label %.loopexit2350.loopexit

bb.bk:                                            ; preds = %bb.bj
  %.val1974 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kz = getelementptr inbounds nuw i8, ptr %.val1974, i64 %i.kv
  %.0.copyload.i2281 = load i32, ptr %i.kz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2281) #13, !srcloc !14
  %i.la = icmp ult i32 %.0.copyload.i2281, %.11798
  br i1 %i.la, label %bb.bl, label %.loopexit2350.loopexit

bb.bl:                                            ; preds = %bb.bk, %.preheader2349
  %.val2060 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lb = getelementptr inbounds nuw i8, ptr %.val2060, i64 %i.kv
  %.0.copyload.i2282 = load i64, ptr %i.lb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2282) #13, !srcloc !33
  %i.lc = zext i32 %.31816 to i64                 ; 2 uses
  %.val2140 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ld = getelementptr inbounds nuw i8, ptr %.val2140, i64 %i.lc
  store i64 %.0.copyload.i2282, ptr %i.ld, align 1
  %.val2059 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.le = getelementptr inbounds nuw i8, ptr %.val2059, i64 %i.kv
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %.0.copyload.i2283 = load i64, ptr %i.lf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2283) #13, !srcloc !33
  %.val2139 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lg = getelementptr inbounds nuw i8, ptr %.val2139, i64 %i.lc
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store i64 %.0.copyload.i2283, ptr %i.lh, align 1
  %i.li = icmp ugt i32 %i.kr, 1
  br i1 %i.li, label %.preheader2349, label %.loopexit2350.loopexit

.loopexit2350.loopexit:                           ; preds = %bb.bl, %bb.bj, %bb.bk
  %.10.ph = phi i32 [ %i.ku, %bb.bl ], [ %.31816, %bb.bj ], [ %.31816, %bb.bk ]
  %.pre = zext i32 %.10.ph to i64
  br label %.loopexit2350

.loopexit2350:                                    ; preds = %.loopexit2350.loopexit, %bb.bi
  %.pre-phi = phi i64 [ %.pre, %.loopexit2350.loopexit ], [ %i.ka, %bb.bi ] ; 3 uses
  %.val2024 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lj = getelementptr inbounds nuw i8, ptr %.val2024, i64 %.pre-phi
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  store i32 %.0.copyload.i2273, ptr %i.lk, align 1
  %.val2138 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ll = getelementptr inbounds nuw i8, ptr %.val2138, i64 %.pre-phi
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  store i64 %.0.copyload.i2277, ptr %i.lm, align 1
  %.val2023 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ln = getelementptr inbounds nuw i8, ptr %.val2023, i64 %.pre-phi
  store i32 %.11798, ptr %i.ln, align 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bh, %bb.bg, %bb.bd, %.loopexit2350, %bb.bc
  %i.lo = add nsw i32 %.7, -1
  %i.lp = icmp sgt i32 %.7, 2
  br i1 %i.lp, label %bb.au, label %.loopexit2348

bb.bn:                                            ; preds = %5
  %i.lq = shl nuw nsw i32 %i.n, 3
  %i.lr = and i32 %i.lq, 1073741808
  %i.ls = add i32 %i.lr, %.01804                  ; 6 uses
  %i.lt = icmp samesign ugt i32 %i.m, 15984
  br i1 %i.lt, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lu = shl nuw nsw i32 %i.n, 2
  %i.lv = and i32 %i.lu, 536870896                ; 2 uses
  %i.lw = add i32 %i.lv, %.01804
  %i.lx = add i32 %i.ls, %i.lv
  %i.ly = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort50x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x28hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01804, i32 noundef %i.lw, i32 noundef %i.ls, i32 noundef %i.lx, i32 noundef %i.i)
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.lz = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x28hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01804, i32 noundef %i.ls, i32 noundef %i.i)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.1 = phi i32 [ %i.ly, %bb.bo ], [ %i.lz, %bb.bp ] ; 3 uses
  %i.ma = add i32 %.21807, -1                     ; 4 uses
  %i.mb = zext i32 %.01804 to i64                 ; 9 uses
  %i.mc = add nuw nsw i64 %i.mb, 12               ; 2 uses
  %.val1973 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.md = getelementptr inbounds nuw i8, ptr %.val1973, i64 %i.mc
  %.0.copyload.i2284 = load i32, ptr %i.md, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2284) #13, !srcloc !14
  %i.me = zext i32 %i.ls to i64                   ; 3 uses
  %.val1972 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mf = getelementptr inbounds nuw i8, ptr %.val1972, i64 %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 12
  %.0.copyload.i2285 = load i32, ptr %i.mg, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2285) #13, !srcloc !14
  %i.mh = icmp ugt i32 %.0.copyload.i2284, %.0.copyload.i2285
  br i1 %i.mh, label %.loopexit2367, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not1898 = icmp eq i32 %.0.copyload.i2284, %.0.copyload.i2285
  br i1 %.not1898, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %.val1971 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mi = getelementptr inbounds nuw i8, ptr %.val1971, i64 %i.mb
  %.0.copyload.i2286 = load i32, ptr %i.mi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2286) #13, !srcloc !14
  %.val1970 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mj = getelementptr inbounds nuw i8, ptr %.val1970, i64 %i.me
  %.0.copyload.i2287 = load i32, ptr %i.mj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2287) #13, !srcloc !14
  %.not1899 = icmp ult i32 %.0.copyload.i2286, %.0.copyload.i2287
  br i1 %.not1899, label %.loopexit2367, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.mk = icmp eq i32 %.01804, %i.h
  br i1 %i.mk, label %.loopexit2363, label %.preheader2362

.preheader2362:                                   ; preds = %bb.bt, %bb.bw
  %.11 = phi i32 [ %i.mu, %bb.bw ], [ %i.h, %bb.bt ] ; 5 uses
  %.11789 = phi i32 [ %.11, %bb.bw ], [ %i.i, %bb.bt ]
  %i.ml = add i32 %.11789, -4
  %i.mm = zext i32 %i.ml to i64
  %.val1969 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mn = getelementptr inbounds nuw i8, ptr %.val1969, i64 %i.mm
  %.0.copyload.i2288 = load i32, ptr %i.mn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2288) #13, !srcloc !14
  %i.mo = icmp ugt i32 %.0.copyload.i2288, %.0.copyload.i2285
  br i1 %i.mo, label %.preheader2362._crit_edge, label %bb.bu

.preheader2362._crit_edge:                        ; preds = %.preheader2362
  %.pre2531 = zext i32 %.11 to i64
  br label %split

bb.bu:                                            ; preds = %.preheader2362
  %i.mp = icmp eq i32 %.0.copyload.i2288, %.0.copyload.i2285
  br i1 %i.mp, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.mq = zext i32 %.11 to i64                    ; 2 uses
  %.val1968 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mr = getelementptr inbounds nuw i8, ptr %.val1968, i64 %i.mq
  %.0.copyload.i2289 = load i32, ptr %i.mr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2289) #13, !srcloc !14
  %.val1967 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ms = getelementptr inbounds nuw i8, ptr %.val1967, i64 %i.me
  %.0.copyload.i2290 = load i32, ptr %i.ms, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2290) #13, !srcloc !14
  %i.mt = icmp ult i32 %.0.copyload.i2289, %.0.copyload.i2290
  br i1 %i.mt, label %split, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.mu = add i32 %.11, -16                       ; 2 uses
  %.not1900 = icmp eq i32 %i.mu, %.01804
  br i1 %.not1900, label %.loopexit2363, label %.preheader2362

split:                                            ; preds = %bb.bv, %.preheader2362._crit_edge
  %.pre-phi2532 = phi i64 [ %.pre2531, %.preheader2362._crit_edge ], [ %i.mq, %bb.bv ] ; 3 uses
  %i.mv = add nuw nsw i64 %i.mb, 8                ; 2 uses
  %.val2058 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mw = getelementptr inbounds nuw i8, ptr %.val2058, i64 %i.mv
  %.0.copyload.i2291 = load i64, ptr %i.mw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2291) #13, !srcloc !33
  %.val2137 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mx = getelementptr inbounds nuw i8, ptr %.val2137, i64 %i.f
  store i64 %.0.copyload.i2291, ptr %i.mx, align 1
  %.val2057 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.my = getelementptr inbounds nuw i8, ptr %.val2057, i64 %i.mb
  %.0.copyload.i2292 = load i64, ptr %i.my, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2292) #13, !srcloc !33
  %.val2136 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.mz = getelementptr inbounds nuw i8, ptr %.val2136, i64 %i.e
  store i64 %.0.copyload.i2292, ptr %i.mz, align 1
  %i.na = add nuw nsw i64 %.pre-phi2532, 8        ; 2 uses
  %.val2056 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nb = getelementptr inbounds nuw i8, ptr %.val2056, i64 %i.na
  %.0.copyload.i2293 = load i64, ptr %i.nb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2293) #13, !srcloc !33
  %.val2135 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nc = getelementptr inbounds nuw i8, ptr %.val2135, i64 %i.mv
  store i64 %.0.copyload.i2293, ptr %i.nc, align 1
  %.val2055 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nd = getelementptr inbounds nuw i8, ptr %.val2055, i64 %.pre-phi2532
  %.0.copyload.i2294 = load i64, ptr %i.nd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2294) #13, !srcloc !33
  %.val2134 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ne = getelementptr inbounds nuw i8, ptr %.val2134, i64 %i.mb
  store i64 %.0.copyload.i2294, ptr %i.ne, align 1
  %.val2054 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nf = getelementptr inbounds nuw i8, ptr %.val2054, i64 %i.f
  %.0.copyload.i2295 = load i64, ptr %i.nf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2295) #13, !srcloc !33
  %.val2133 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ng = getelementptr inbounds nuw i8, ptr %.val2133, i64 %i.na
  store i64 %.0.copyload.i2295, ptr %i.ng, align 1
  %.val2053 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nh = getelementptr inbounds nuw i8, ptr %.val2053, i64 %i.e
  %.0.copyload.i2296 = load i64, ptr %i.nh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2296) #13, !srcloc !33
  %.val2132 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ni = getelementptr inbounds nuw i8, ptr %.val2132, i64 %.pre-phi2532
  store i64 %.0.copyload.i2296, ptr %i.ni, align 1
  %i.nj = add nuw nsw i32 %.1, 1
  br label %.loopexit2367

.loopexit2367:                                    ; preds = %bb.bs, %bb.bq, %split
  %.12 = phi i32 [ %.11, %split ], [ %i.i, %bb.bq ], [ %i.i, %bb.bs ] ; 2 uses
  %.11787 = phi i32 [ %i.nj, %split ], [ %.1, %bb.bq ], [ %.1, %bb.bs ] ; 2 uses
  %i.nk = add i32 %.01804, 16                     ; 3 uses
  %.not1909 = icmp ult i32 %i.nk, %.12
  br i1 %.not1909, label %.preheader2364, label %.loopexit2365

.preheader2364:                                   ; preds = %.loopexit2367, %bb.ce
  %.13 = phi i32 [ %.15, %bb.ce ], [ %.12, %.loopexit2367 ]
  %.21799 = phi i32 [ %i.pa, %bb.ce ], [ %i.nk, %.loopexit2367 ]
  %.11793 = phi i32 [ %i.oz, %bb.ce ], [ %i.ls, %.loopexit2367 ] ; 4 uses
  %.2 = phi i32 [ %i.pb, %bb.ce ], [ %.11787, %.loopexit2367 ] ; 2 uses
  %i.nl = zext i32 %.11793 to i64                 ; 3 uses
  %.val1966 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nm = getelementptr inbounds nuw i8, ptr %.val1966, i64 %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  %.0.copyload.i2297 = load i32, ptr %i.nn, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2297) #13, !srcloc !14
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ca, %.preheader2364
  %.31800 = phi i32 [ %.21799, %.preheader2364 ], [ %i.nt, %bb.ca ] ; 6 uses
  %i.no = zext i32 %.31800 to i64                 ; 5 uses
  %.val1965 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.np = getelementptr inbounds nuw i8, ptr %.val1965, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 12
  %.0.copyload.i2298 = load i32, ptr %i.nq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2298) #13, !srcloc !14
  %.not1910 = icmp ult i32 %.0.copyload.i2297, %.0.copyload.i2298
  br i1 %.not1910, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.not1911 = icmp eq i32 %.0.copyload.i2298, %.0.copyload.i2297
  br i1 %.not1911, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %.val1964 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nr = getelementptr inbounds nuw i8, ptr %.val1964, i64 %i.no
  %.0.copyload.i2299 = load i32, ptr %i.nr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2299) #13, !srcloc !14
  %.val1963 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ns = getelementptr inbounds nuw i8, ptr %.val1963, i64 %i.nl
  %.0.copyload.i2300 = load i32, ptr %i.ns, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2300) #13, !srcloc !14
  %.not1912 = icmp ult i32 %.0.copyload.i2299, %.0.copyload.i2300
  br i1 %.not1912, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.bx
  %i.nt = add i32 %.31800, 16
  br label %bb.bx

bb.cb:                                            ; preds = %bb.bz, %bb.by
  %i.nu = add i32 %.13, -16                       ; 3 uses
  %i.nv = zext i32 %i.nu to i64
  %.val1962 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.nw = getelementptr inbounds nuw i8, ptr %.val1962, i64 %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 12
end_hunk_16
begin_hunk_17_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x28hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  %.0.copyload.i2326 = load i32, ptr %i.qw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2326) #13, !srcloc !14
  %.not1903 = icmp ult i32 %.0.copyload.i2325, %.0.copyload.i2326
  br i1 %.not1903, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv, %.preheader2360
  %i.qx = add nuw nsw i64 %i.qs, 8                ; 2 uses
  %.val2040 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.qy = getelementptr inbounds nuw i8, ptr %.val2040, i64 %i.qx
  %.0.copyload.i2327 = load i64, ptr %i.qy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2327) #13, !srcloc !33
  %.val2119 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.qz = getelementptr inbounds nuw i8, ptr %.val2119, i64 %i.f
  store i64 %.0.copyload.i2327, ptr %i.qz, align 1
  %.val2039 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ra = getelementptr inbounds nuw i8, ptr %.val2039, i64 %i.qs
  %.0.copyload.i2328 = load i64, ptr %i.ra, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2328) #13, !srcloc !33
  %.val2118 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rb = getelementptr inbounds nuw i8, ptr %.val2118, i64 %i.e
  store i64 %.0.copyload.i2328, ptr %i.rb, align 1
  %.val2038 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rc = getelementptr inbounds nuw i8, ptr %.val2038, i64 %i.l
  %.0.copyload.i2329 = load i64, ptr %i.rc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2329) #13, !srcloc !33
  %.val2117 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rd = getelementptr inbounds nuw i8, ptr %.val2117, i64 %i.qx
  store i64 %.0.copyload.i2329, ptr %i.rd, align 1
  %.val2037 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.re = getelementptr inbounds nuw i8, ptr %.val2037, i64 %i.k
  %.0.copyload.i2330 = load i64, ptr %i.re, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2330) #13, !srcloc !33
  %.val2116 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rf = getelementptr inbounds nuw i8, ptr %.val2116, i64 %i.qs
  store i64 %.0.copyload.i2330, ptr %i.rf, align 1
  %.val2036 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rg = getelementptr inbounds nuw i8, ptr %.val2036, i64 %i.f
  %.0.copyload.i2331 = load i64, ptr %i.rg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2331) #13, !srcloc !33
  %.val2115 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rh = getelementptr inbounds nuw i8, ptr %.val2115, i64 %i.l
  store i64 %.0.copyload.i2331, ptr %i.rh, align 1
  %.val2035 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ri = getelementptr inbounds nuw i8, ptr %.val2035, i64 %i.e
  %.0.copyload.i2332 = load i64, ptr %i.ri, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2332) #13, !srcloc !33
  %.val2114 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rj = getelementptr inbounds nuw i8, ptr %.val2114, i64 %i.k
  store i64 %.0.copyload.i2332, ptr %i.rj, align 1
  %i.rk = add i32 %.31795, 16
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv, %bb.cu
  %i.rl = add i32 %.31795, 16                     ; 2 uses
  %.not1904 = icmp eq i32 %i.rl, %i.i
  br i1 %.not1904, label %.loopexit2348, label %.preheader2360

bb.cy:                                            ; preds = %bb.cs, %.loopexit2363, %bb.cw
  %.41796 = phi i32 [ %i.qk, %.loopexit2363 ], [ %i.qk, %bb.cs ], [ %i.rk, %bb.cw ] ; 2 uses
  %i.rm = icmp eq i32 %.41796, %i.i
  br i1 %i.rm, label %.loopexit2348, label %.preheader2358

.preheader2358:                                   ; preds = %bb.cy, %bb.de
  %.51802 = phi i32 [ %i.ry, %bb.de ], [ %i.i, %bb.cy ]
  %.5 = phi i32 [ %i.sw, %bb.de ], [ %.41796, %bb.cy ] ; 3 uses
  %.val1948 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rn = getelementptr inbounds nuw i8, ptr %.val1948, i64 %i.mc
  %.0.copyload.i2333 = load i32, ptr %i.rn, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2333) #13, !srcloc !14
  %i.ro = zext i32 %.5 to i64
  %.val1947 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rp = getelementptr inbounds nuw i8, ptr %.val1947, i64 %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 12
  %.0.copyload.i2334 = load i32, ptr %i.rq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2334) #13, !srcloc !14
  %i.rr = icmp ugt i32 %.0.copyload.i2333, %.0.copyload.i2334
  br i1 %i.rr, label %.loopexit2355, label %.preheader2354

.preheader2354:                                   ; preds = %.preheader2358, %bb.da
  %.16 = phi i32 [ %.0.copyload.i2337, %bb.da ], [ %.0.copyload.i2334, %.preheader2358 ]
  %.31791 = phi i32 [ %i.rv, %bb.da ], [ %.5, %.preheader2358 ] ; 4 uses
  %.not1905 = icmp eq i32 %.16, %.0.copyload.i2333
  br i1 %.not1905, label %bb.cz, label %.preheader2354._crit_edge

.preheader2354._crit_edge:                        ; preds = %.preheader2354
  %.pre2529 = zext i32 %.31791 to i64
  br label %bb.da

bb.cz:                                            ; preds = %.preheader2354
  %.val1946 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rs = getelementptr inbounds nuw i8, ptr %.val1946, i64 %i.mb
  %.0.copyload.i2335 = load i32, ptr %i.rs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2335) #13, !srcloc !14
  %i.rt = zext i32 %.31791 to i64                 ; 2 uses
  %.val1945 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ru = getelementptr inbounds nuw i8, ptr %.val1945, i64 %i.rt
  %.0.copyload.i2336 = load i32, ptr %i.ru, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2336) #13, !srcloc !14
  %.not1906 = icmp ult i32 %.0.copyload.i2335, %.0.copyload.i2336
  br i1 %.not1906, label %.loopexit2355, label %bb.da

bb.da:                                            ; preds = %.preheader2354._crit_edge, %bb.cz
  %.pre-phi2530 = phi i64 [ %.pre2529, %.preheader2354._crit_edge ], [ %i.rt, %bb.cz ]
  %i.rv = add i32 %.31791, 16                     ; 2 uses
  %.val1944 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.rw = getelementptr inbounds nuw i8, ptr %.val1944, i64 %.pre-phi2530
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 28
  %.0.copyload.i2337 = load i32, ptr %i.rx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2337) #13, !srcloc !14
  %.not1907 = icmp ugt i32 %.0.copyload.i2333, %.0.copyload.i2337
  br i1 %.not1907, label %.loopexit2355, label %.preheader2354

.loopexit2355:                                    ; preds = %bb.cz, %bb.da, %.preheader2358
  %.6 = phi i32 [ %.5, %.preheader2358 ], [ %.31791, %bb.cz ], [ %i.rv, %bb.da ] ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.loopexit2355
  %.61803 = phi i32 [ %.51802, %.loopexit2355 ], [ %i.ry, %.backedge.backedge ]
  %i.ry = add i32 %.61803, -16                    ; 4 uses
  %i.rz = zext i32 %i.ry to i64                   ; 5 uses
  %.val1943 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sa = getelementptr inbounds nuw i8, ptr %.val1943, i64 %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 12
  %.0.copyload.i2338 = load i32, ptr %i.sb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2338) #13, !srcloc !14
  %i.sc = icmp ugt i32 %.0.copyload.i2333, %.0.copyload.i2338
  br i1 %i.sc, label %.backedge.backedge, label %bb.db

.backedge.backedge:                               ; preds = %.backedge, %bb.dc
  br label %.backedge

bb.db:                                            ; preds = %.backedge
  %i.sd = icmp eq i32 %.0.copyload.i2338, %.0.copyload.i2333
  br i1 %i.sd, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %.val1942 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.se = getelementptr inbounds nuw i8, ptr %.val1942, i64 %i.mb
  %.0.copyload.i2339 = load i32, ptr %i.se, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2339) #13, !srcloc !14
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sf = getelementptr inbounds nuw i8, ptr %.val, i64 %i.rz
  %.0.copyload.i2340 = load i32, ptr %i.sf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2340) #13, !srcloc !14
  %i.sg = icmp ult i32 %.0.copyload.i2339, %.0.copyload.i2340
  br i1 %i.sg, label %.backedge.backedge, label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.not1908 = icmp ugt i32 %i.ry, %.6
  br i1 %.not1908, label %bb.de, label %.loopexit2359.backedge

bb.de:                                            ; preds = %bb.dd
  %i.sh = zext i32 %.6 to i64                     ; 3 uses
  %i.si = add nuw nsw i64 %i.sh, 8                ; 2 uses
  %.val2034 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sj = getelementptr inbounds nuw i8, ptr %.val2034, i64 %i.si
  %.0.copyload.i2341 = load i64, ptr %i.sj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2341) #13, !srcloc !33
  %.val2113 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sk = getelementptr inbounds nuw i8, ptr %.val2113, i64 %i.f
  store i64 %.0.copyload.i2341, ptr %i.sk, align 1
  %.val2033 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sl = getelementptr inbounds nuw i8, ptr %.val2033, i64 %i.sh
  %.0.copyload.i2342 = load i64, ptr %i.sl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2342) #13, !srcloc !33
  %.val2112 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sm = getelementptr inbounds nuw i8, ptr %.val2112, i64 %i.e
  store i64 %.0.copyload.i2342, ptr %i.sm, align 1
  %i.sn = add nuw nsw i64 %i.rz, 8                ; 2 uses
  %.val2032 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.so = getelementptr inbounds nuw i8, ptr %.val2032, i64 %i.sn
  %.0.copyload.i2343 = load i64, ptr %i.so, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2343) #13, !srcloc !33
  %.val2111 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sp = getelementptr inbounds nuw i8, ptr %.val2111, i64 %i.si
  store i64 %.0.copyload.i2343, ptr %i.sp, align 1
  %.val2031 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sq = getelementptr inbounds nuw i8, ptr %.val2031, i64 %i.rz
  %.0.copyload.i2344 = load i64, ptr %i.sq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2344) #13, !srcloc !33
  %.val2110 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sr = getelementptr inbounds nuw i8, ptr %.val2110, i64 %i.sh
  store i64 %.0.copyload.i2344, ptr %i.sr, align 1
  %.val2030 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ss = getelementptr inbounds nuw i8, ptr %.val2030, i64 %i.f
  %.0.copyload.i2345 = load i64, ptr %i.ss, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2345) #13, !srcloc !33
  %.val2109 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.st = getelementptr inbounds nuw i8, ptr %.val2109, i64 %i.sn
  store i64 %.0.copyload.i2345, ptr %i.st, align 1
  %.val2029 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.su = getelementptr inbounds nuw i8, ptr %.val2029, i64 %i.e
  %.0.copyload.i2346 = load i64, ptr %i.su, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2346) #13, !srcloc !33
  %.val2108 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.sv = getelementptr inbounds nuw i8, ptr %.val2108, i64 %i.rz
  store i64 %.0.copyload.i2346, ptr %i.sv, align 1
  %i.sw = add i32 %.6, 16
  br label %.preheader2358

.loopexit2348:                                    ; preds = %bb.cl, %bb.cy, %bb.ct, %.loopexit2359, %.loopexit2359, %bb.cx, %bb.bm, %bb.z, %bb.aa, %bb.r, %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d, %bb.c, %bb.cq, %bb.p, %bb.o, %bb.e
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 10) i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort50x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x28hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x29(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x28hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 112 uses
  %i.f = zext i32 %4 to i64                       ; 12 uses
  %i.g = add nuw nsw i64 %i.f, 12                 ; 3 uses
  %.val582 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %.val582, i64 %i.g
  %.0.copyload.i = load i32, ptr %i.h, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.i = zext i32 %3 to i64                       ; 15 uses
  %i.j = add nuw nsw i64 %i.i, 12                 ; 4 uses
  %.val581 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.val581, i64 %i.j
  %.0.copyload.i667 = load i32, ptr %i.k, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i667) #13, !srcloc !14
  %i.l = icmp ugt i32 %.0.copyload.i, %.0.copyload.i667
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %.0.copyload.i, %.0.copyload.i667
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %.val580 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %.val580, i64 %i.f
  %.0.copyload.i668 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i668) #13, !srcloc !14
  %.val579 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val579, i64 %i.i
  %.0.copyload.i669 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i669) #13, !srcloc !14
  %i.o = icmp ult i32 %.0.copyload.i668, %.0.copyload.i669
  br i1 %i.o, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.p = add nuw nsw i64 %i.i, 8                  ; 4 uses
  %.val624 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val624, i64 %i.p
  %.0.copyload.i670 = load i64, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i670) #13, !srcloc !33
  %i.r = zext i32 %i.c to i64                     ; 7 uses
  %i.s = add nuw nsw i64 %i.r, 8                  ; 6 uses
  %.val666 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val666, i64 %i.s
  store i64 %.0.copyload.i670, ptr %i.t, align 1
  %.val623 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val623, i64 %i.i
  %.0.copyload.i671 = load i64, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i671) #13, !srcloc !33
  %.val665 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val665, i64 %i.r
  store i64 %.0.copyload.i671, ptr %i.v, align 1
  %i.w = add nuw nsw i64 %i.f, 8                  ; 2 uses
  %.val622 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val622, i64 %i.w
  %.0.copyload.i672 = load i64, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i672) #13, !srcloc !33
  %.val664 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.val664, i64 %i.p
  store i64 %.0.copyload.i672, ptr %i.y, align 1
  %.val621 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val621, i64 %i.f
  %.0.copyload.i673 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i673) #13, !srcloc !33
  %.val663 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.val663, i64 %i.i
  store i64 %.0.copyload.i673, ptr %i.aa, align 1
  %.val620 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val620, i64 %i.s
  %.0.copyload.i674 = load i64, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i674) #13, !srcloc !33
  %.val662 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val662, i64 %i.w
  store i64 %.0.copyload.i674, ptr %i.ac, align 1
  %.val619 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.val619, i64 %i.r
  %.0.copyload.i675 = load i64, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i675) #13, !srcloc !33
  %.val661 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.val661, i64 %i.f
  store i64 %.0.copyload.i675, ptr %i.ae, align 1
  %.val578 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.val578, i64 %i.j
  %.0.copyload.i676 = load i32, ptr %i.af, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i676) #13, !srcloc !14
  %i.ag = zext i32 %2 to i64                      ; 8 uses
  %i.ah = add nuw nsw i64 %i.ag, 12               ; 2 uses
  %.val577 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val577, i64 %i.ah
  %.0.copyload.i677 = load i32, ptr %i.ai, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i677) #13, !srcloc !14
  %.not540 = icmp ugt i32 %.0.copyload.i676, %.0.copyload.i677
  br i1 %.not540, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = add nuw nsw i32 %i.d, 1                 ; 2 uses
  %.not541 = icmp eq i32 %.0.copyload.i676, %.0.copyload.i677
  br i1 %.not541, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %.val576 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val576, i64 %i.i
  %.0.copyload.i678 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i678) #13, !srcloc !14
  %.val575 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.val575, i64 %i.ag
  %.0.copyload.i679 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i679) #13, !srcloc !14
  %.not542 = icmp ult i32 %.0.copyload.i678, %.0.copyload.i679
  br i1 %.not542, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.am = add nuw nsw i64 %i.ag, 8                ; 4 uses
  %.val618 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.val618, i64 %i.am
  %.0.copyload.i680 = load i64, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i680) #13, !srcloc !33
  %.val660 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val660, i64 %i.s
  store i64 %.0.copyload.i680, ptr %i.ao, align 1
  %.val617 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val617, i64 %i.ag
  %.0.copyload.i681 = load i64, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i681) #13, !srcloc !33
  %.val659 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val659, i64 %i.r
  store i64 %.0.copyload.i681, ptr %i.aq, align 1
  %.val616 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.val616, i64 %i.p
  %.0.copyload.i682 = load i64, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i682) #13, !srcloc !33
  %.val658 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val658, i64 %i.am
  store i64 %.0.copyload.i682, ptr %i.as, align 1
  %.val615 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val615, i64 %i.i
  %.0.copyload.i683 = load i64, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i683) #13, !srcloc !33
  %.val657 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val657, i64 %i.ag
  store i64 %.0.copyload.i683, ptr %i.au, align 1
  %.val614 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val614, i64 %i.s
  %.0.copyload.i684 = load i64, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i684) #13, !srcloc !33
  %.val656 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val656, i64 %i.p
  store i64 %.0.copyload.i684, ptr %i.aw, align 1
  %.val613 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val613, i64 %i.r
  %.0.copyload.i685 = load i64, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i685) #13, !srcloc !33
  %.val655 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val655, i64 %i.i
  store i64 %.0.copyload.i685, ptr %i.ay, align 1
  %.val574 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.val574, i64 %i.ah
  %.0.copyload.i686 = load i32, ptr %i.az, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i686) #13, !srcloc !14
  %i.ba = zext i32 %1 to i64                      ; 5 uses
  %.val573 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.val573, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %.0.copyload.i687 = load i32, ptr %i.bc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i687) #13, !srcloc !14
  %.not543 = icmp ugt i32 %.0.copyload.i686, %.0.copyload.i687
  br i1 %.not543, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = add nuw nsw i32 %i.d, 2                 ; 2 uses
  %.not544 = icmp eq i32 %.0.copyload.i686, %.0.copyload.i687
  br i1 %.not544, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.val572 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val572, i64 %i.ag
  %.0.copyload.i688 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i688) #13, !srcloc !14
  %.val571 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val571, i64 %i.ba
  %.0.copyload.i689 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i689) #13, !srcloc !14
  %.not545 = icmp ult i32 %.0.copyload.i688, %.0.copyload.i689
  br i1 %.not545, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.bg = add nuw nsw i64 %i.ba, 8                ; 2 uses
  %.val612 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.val612, i64 %i.bg
  %.0.copyload.i690 = load i64, ptr %i.bh, align 1 ; 2 uses
end_hunk_17
begin_hunk_18_@w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort50x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x28hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x29:bb.a
  %.0.copyload.i711 = load i64, ptr %i.da, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i711) #13, !srcloc !33
  %.val641 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.db = getelementptr inbounds nuw i8, ptr %.val641, i64 %i.ce
  store i64 %.0.copyload.i711, ptr %i.db, align 1
  %.val598 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.val598, i64 %i.cc
  %.0.copyload.i712 = load i64, ptr %i.dc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i712) #13, !srcloc !33
  %.val640 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %.val640, i64 %i.cx
  store i64 %.0.copyload.i712, ptr %i.dd, align 1
  %.val597 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.val597, i64 %i.f
  %.0.copyload.i713 = load i64, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i713) #13, !srcloc !33
  %.val639 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %.val639, i64 %i.i
  store i64 %.0.copyload.i713, ptr %i.df, align 1
  %.val596 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %.val596, i64 %i.cf
  %.0.copyload.i714 = load i64, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i714) #13, !srcloc !33
  %.val638 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.val638, i64 %i.cc
  store i64 %.0.copyload.i714, ptr %i.dh, align 1
  %.val595 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %.val595, i64 %i.ce
  %.0.copyload.i715 = load i64, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i715) #13, !srcloc !33
  %.val637 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %.val637, i64 %i.f
  store i64 %.0.copyload.i715, ptr %i.dj, align 1
  %.val562 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.val562, i64 %i.j
  %.0.copyload.i716 = load i32, ptr %i.dk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i716) #13, !srcloc !14
  %i.dl = zext i32 %2 to i64                      ; 8 uses
  %i.dm = add nuw nsw i64 %i.dl, 12               ; 2 uses
  %.val561 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.val561, i64 %i.dm
  %.0.copyload.i717 = load i32, ptr %i.dn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i717) #13, !srcloc !14
  %.not550 = icmp ugt i32 %.0.copyload.i716, %.0.copyload.i717
  br i1 %.not550, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = add nuw nsw i32 %.0, 2                  ; 2 uses
  %.not551 = icmp eq i32 %.0.copyload.i716, %.0.copyload.i717
  br i1 %.not551, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %.val560 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dp = getelementptr inbounds nuw i8, ptr %.val560, i64 %i.i
  %.0.copyload.i718 = load i32, ptr %i.dp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i718) #13, !srcloc !14
  %.val559 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %.val559, i64 %i.dl
  %.0.copyload.i719 = load i32, ptr %i.dq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i719) #13, !srcloc !14
  %.not552 = icmp ult i32 %.0.copyload.i718, %.0.copyload.i719
  br i1 %.not552, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.dr = add nuw nsw i64 %i.dl, 8                ; 4 uses
  %.val594 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ds = getelementptr inbounds nuw i8, ptr %.val594, i64 %i.dr
  %.0.copyload.i720 = load i64, ptr %i.ds, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i720) #13, !srcloc !33
  %.val636 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %.val636, i64 %i.cf
  store i64 %.0.copyload.i720, ptr %i.dt, align 1
  %.val593 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %.val593, i64 %i.dl
  %.0.copyload.i721 = load i64, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i721) #13, !srcloc !33
  %.val635 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %.val635, i64 %i.ce
  store i64 %.0.copyload.i721, ptr %i.dv, align 1
  %.val592 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %.val592, i64 %i.cx
  %.0.copyload.i722 = load i64, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i722) #13, !srcloc !33
  %.val634 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dx = getelementptr inbounds nuw i8, ptr %.val634, i64 %i.dr
  store i64 %.0.copyload.i722, ptr %i.dx, align 1
  %.val591 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dy = getelementptr inbounds nuw i8, ptr %.val591, i64 %i.i
  %.0.copyload.i723 = load i64, ptr %i.dy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i723) #13, !srcloc !33
  %.val633 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dz = getelementptr inbounds nuw i8, ptr %.val633, i64 %i.dl
  store i64 %.0.copyload.i723, ptr %i.dz, align 1
  %.val590 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ea = getelementptr inbounds nuw i8, ptr %.val590, i64 %i.cf
  %.0.copyload.i724 = load i64, ptr %i.ea, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i724) #13, !srcloc !33
  %.val632 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %.val632, i64 %i.cx
  store i64 %.0.copyload.i724, ptr %i.eb, align 1
  %.val589 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ec = getelementptr inbounds nuw i8, ptr %.val589, i64 %i.ce
  %.0.copyload.i725 = load i64, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i725) #13, !srcloc !33
  %.val631 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %.val631, i64 %i.i
  store i64 %.0.copyload.i725, ptr %i.ed, align 1
  %.val558 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ee = getelementptr inbounds nuw i8, ptr %.val558, i64 %i.dm
  %.0.copyload.i726 = load i32, ptr %i.ee, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i726) #13, !srcloc !14
  %i.ef = zext i32 %1 to i64                      ; 5 uses
  %.val557 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %.val557, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %.0.copyload.i727 = load i32, ptr %i.eh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i727) #13, !srcloc !14
  %.not553 = icmp ugt i32 %.0.copyload.i726, %.0.copyload.i727
  br i1 %.not553, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = add nuw nsw i32 %.0, 3                  ; 2 uses
  %.not554 = icmp eq i32 %.0.copyload.i726, %.0.copyload.i727
  br i1 %.not554, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.val556 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %.val556, i64 %i.dl
  %.0.copyload.i728 = load i32, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i728) #13, !srcloc !14
  %.val = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ek = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ef
  %.0.copyload.i729 = load i32, ptr %i.ek, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i729) #13, !srcloc !14
  %.not555 = icmp ult i32 %.0.copyload.i728, %.0.copyload.i729
  br i1 %.not555, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.el = add nuw nsw i64 %i.ef, 8                ; 2 uses
  %.val588 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.em = getelementptr inbounds nuw i8, ptr %.val588, i64 %i.el
  %.0.copyload.i730 = load i64, ptr %i.em, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i730) #13, !srcloc !33
  %.val630 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %.val630, i64 %i.cf
  store i64 %.0.copyload.i730, ptr %i.en, align 1
  %.val587 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.eo = getelementptr inbounds nuw i8, ptr %.val587, i64 %i.ef
  %.0.copyload.i731 = load i64, ptr %i.eo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i731) #13, !srcloc !33
  %.val629 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %.val629, i64 %i.ce
  store i64 %.0.copyload.i731, ptr %i.ep, align 1
  %.val586 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.eq = getelementptr inbounds nuw i8, ptr %.val586, i64 %i.dr
  %.0.copyload.i732 = load i64, ptr %i.eq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i732) #13, !srcloc !33
  %.val628 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %.val628, i64 %i.el
  store i64 %.0.copyload.i732, ptr %i.er, align 1
  %.val585 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.es = getelementptr inbounds nuw i8, ptr %.val585, i64 %i.dl
  %.0.copyload.i733 = load i64, ptr %i.es, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i733) #13, !srcloc !33
  %.val627 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.et = getelementptr inbounds nuw i8, ptr %.val627, i64 %i.ef
  store i64 %.0.copyload.i733, ptr %i.et, align 1
  %.val584 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.eu = getelementptr inbounds nuw i8, ptr %.val584, i64 %i.cf
  %.0.copyload.i734 = load i64, ptr %i.eu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i734) #13, !srcloc !33
  %.val626 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %.val626, i64 %i.dr
  store i64 %.0.copyload.i734, ptr %i.ev, align 1
  %.val583 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ew = getelementptr inbounds nuw i8, ptr %.val583, i64 %i.ce
  %.0.copyload.i735 = load i64, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i735) #13, !srcloc !33
  %.val625 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ex = getelementptr inbounds nuw i8, ptr %.val625, i64 %i.dl
  store i64 %.0.copyload.i735, ptr %i.ex, align 1
  %i.ey = add nuw nsw i32 %.0, 4
  br label %bb.x

bb.x:                                             ; preds = %bb.m, %bb.l, %bb.v, %bb.u, %bb.s, %bb.r, %bb.p, %bb.o, %bb.w
  %.0525 = phi i32 [ %i.cu, %bb.o ], [ %i.cu, %bb.p ], [ %i.do, %bb.r ], [ %i.do, %bb.s ], [ %i.ei, %bb.u ], [ %i.ei, %bb.v ], [ %i.ey, %bb.w ], [ %.0, %bb.l ], [ %.0, %bb.m ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret i32 %.0525
}

declare i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x3E0x28hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3AExceptionHandlerInfo0x2C0x20hermes0x3A0x3AExceptionHandlerInfo0x3E0x260x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 255 uses
  br label %.backedge2205

.backedge2205:                                    ; preds = %.backedge2205.backedge, %bb.a
  %.01765 = phi i32 [ %1, %bb.a ], [ %.01747, %.backedge2205.backedge ]
  %.01763 = phi i32 [ %2, %bb.a ], [ %.10, %.backedge2205.backedge ] ; 13 uses
  %.01758 = phi i32 [ %3, %bb.a ], [ %i.ne, %.backedge2205.backedge ]
  %i.b = add i32 %.01763, -4
  %i.c = add i32 %.01763, -8
  %i.d = add i32 %.01763, -12
  %i.e = add i32 %.01763, -20
  %i.f = add i32 %.01763, -24                     ; 12 uses
  %i.g = zext i32 %i.e to i64                     ; 6 uses
  %i.h = zext i32 %i.f to i64                     ; 7 uses
  %i.i = zext i32 %i.d to i64                     ; 2 uses
  %i.j = zext i32 %i.c to i64                     ; 2 uses
  %i.k = zext i32 %i.b to i64                     ; 2 uses
  br label %.loopexit2196

.loopexit2196:                                    ; preds = %.loopexit2196.backedge, %.backedge2205
  %.21760 = phi i32 [ %.01758, %.backedge2205 ], [ %i.ne, %.loopexit2196.backedge ] ; 2 uses
  %.01747 = phi i32 [ %.01765, %.backedge2205 ], [ %.01747.be, %.loopexit2196.backedge ] ; 45 uses
  %i.l = sub i32 %.01763, %.01747                 ; 4 uses
  %i.m = sdiv i32 %i.l, 24                        ; 6 uses
  switch i32 %i.m, label %bb.f [
    i32 0, label %.loopexit
    i32 1, label %.loopexit
    i32 2, label %bb.b
    i32 3, label %bb.az
    i32 4, label %bb.d
    i32 5, label %bb.e
  ]

bb.b:                                             ; preds = %.loopexit2196
  %.val1907 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val1907, i64 %i.g
  %.0.copyload.i = load i32, ptr %i.n, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.o = add i32 %.01747, 4
  %i.p = zext i32 %i.o to i64
  %.val1906 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val1906, i64 %i.p
  %.0.copyload.i2067 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2067) #13, !srcloc !14
  %.not = icmp ult i32 %.0.copyload.i, %.0.copyload.i2067
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.r = add i32 %.01747, 20
  %i.s = zext i32 %i.r to i64
  %.val1905 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val1905, i64 %i.s
  %.0.copyload.i2068 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2068) #13, !srcloc !14
  %i.u = zext i32 %.01747 to i64                  ; 6 uses
  %i.v = add nuw nsw i64 %i.u, 20                 ; 2 uses
  %.val1991 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.val1991, i64 %i.v
  store i32 0, ptr %i.w, align 1
  %i.x = add i32 %.01747, 12
  %i.y = zext i32 %i.x to i64
  %.val2021 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val2021, i64 %i.y
  %.0.copyload.i2069 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2069) #13, !srcloc !33
  %i.aa = add nuw nsw i64 %i.u, 12                ; 2 uses
  %.val2066 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2066, i64 %i.aa
  store i64 0, ptr %i.ab, align 1
  %.val1904 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1904, i64 %i.u
  %.0.copyload.i2070 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2070) #13, !srcloc !14
  %.val1903 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1903, i64 %i.h
  %.0.copyload.i2071 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2071) #13, !srcloc !14
  %.val1990 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1990, i64 %i.u
  store i32 %.0.copyload.i2071, ptr %i.ae, align 1
  %i.af = add nuw nsw i64 %i.u, 4                 ; 2 uses
  %.val2020 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2020, i64 %i.af
  %.0.copyload.i2072 = load i64, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2072) #13, !srcloc !33
  %.val2019 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2019, i64 %i.g
  %.0.copyload.i2073 = load i64, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2073) #13, !srcloc !33
  %.val2065 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2065, i64 %i.af
  store i64 %.0.copyload.i2073, ptr %i.ai, align 1
  %i.aj = add nuw nsw i64 %i.h, 12                ; 2 uses
  %.val1902 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1902, i64 %i.aj
  %.0.copyload.i2074 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2074) #13, !srcloc !14
  %.val1989 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.val1989, i64 %i.aa
  store i32 %.0.copyload.i2074, ptr %i.al, align 1
  %.val1901 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val1901, i64 %i.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.0.copyload.i2075 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2075) #13, !srcloc !14
  %.val1988 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1988, i64 %i.u
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 %.0.copyload.i2075, ptr %i.ap, align 1
  %i.aq = add nuw nsw i64 %i.h, 20                ; 2 uses
  %.val1900 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1900, i64 %i.aq
  %.0.copyload.i2076 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2076) #13, !srcloc !14
  %.val1987 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val1987, i64 %i.v
  store i32 %.0.copyload.i2076, ptr %i.as, align 1
  %.val1986 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val1986, i64 %i.h
  store i32 %.0.copyload.i2070, ptr %i.at, align 1
  %.val2064 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val2064, i64 %i.g
  store i64 %.0.copyload.i2072, ptr %i.au, align 1
  %.val1985 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val1985, i64 %i.aq
  store i32 %.0.copyload.i2068, ptr %i.av, align 1
  %.val2063 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val2063, i64 %i.aj
  store i64 %.0.copyload.i2069, ptr %i.aw, align 1
  br label %.loopexit

bb.d:                                             ; preds = %.loopexit2196
  %i.ax = add i32 %.01747, 24
  %i.ay = add i32 %.01747, 48
  %i.az = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr noundef %0, i32 noundef %.01747, i32 noundef %i.ax, i32 noundef %i.ay, i32 noundef %i.f) ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %.loopexit2196
  %i.ba = add i32 %.01747, 24
  %i.bb = add i32 %.01747, 48
  %i.bc = add i32 %.01747, 72
  %i.bd = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr noundef %0, i32 noundef %.01747, i32 noundef %i.ba, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.f) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %.loopexit2196
  %i.be = icmp slt i32 %i.l, 168
  br i1 %i.be, label %bb.g, label %4

bb.g:                                             ; preds = %bb.f
  %i.bf = add i32 %.01747, 24
  %i.bg = add i32 %.01747, 48                     ; 2 uses
  %i.bh = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr noundef %0, i32 noundef %.01747, i32 noundef %i.bf, i32 noundef %i.bg) ; 0 uses
  %i.bi = add i32 %.01747, 72                     ; 2 uses
  %i.bj = icmp eq i32 %i.bi, %.01763
  br i1 %i.bj, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %.pre = zext i32 %.01747 to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.l
  %.31761 = phi i32 [ %i.dt, %bb.l ], [ %i.bi, %.preheader ] ; 7 uses
  %.01743 = phi i32 [ %.31761, %bb.l ], [ %i.bg, %.preheader ] ; 2 uses
  %i.bk = add i32 %.31761, 4
  %i.bl = zext i32 %i.bk to i64
  %.val1899 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1899, i64 %i.bl
  %.0.copyload.i2077 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2077) #13, !srcloc !14
  %i.bn = zext i32 %.01743 to i64
  %.val1898 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1898, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.0.copyload.i2078 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2078) #13, !srcloc !14
  %i.bq = icmp ult i32 %.0.copyload.i2077, %.0.copyload.i2078
  br i1 %i.bq, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.br = add i32 %.31761, 20
  %i.bs = zext i32 %i.br to i64
  %.val1897 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1897, i64 %i.bs
  %.0.copyload.i2079 = load i32, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2079) #13, !srcloc !14
  %i.bu = zext i32 %.31761 to i64                 ; 5 uses
  %.val1984 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1984, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  store i32 0, ptr %i.bw, align 1
  %.val1896 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1896, i64 %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.0.copyload.i2080 = load i32, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2080) #13, !srcloc !14
  %i.bz = add i32 %.31761, 12
  %i.ca = zext i32 %i.bz to i64
  %.val1895 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1895, i64 %i.ca
  %.0.copyload.i2081 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2081) #13, !srcloc !14
  %.val2062 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.val2062, i64 %i.bu
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i64 0, ptr %i.cd, align 1
  %.val2018 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2018, i64 %i.bu
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %.0.copyload.i2082 = load i64, ptr %i.cf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2082) #13, !srcloc !33
  %i.cg = trunc i64 %.0.copyload.i2082 to i32
  %.val1894 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1894, i64 %i.bu
  %.0.copyload.i2083 = load i32, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2083) #13, !srcloc !14
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.01748 = phi i32 [ %.31761, %bb.i ], [ %.11744, %bb.k ]
  %.11744 = phi i32 [ %.01743, %bb.i ], [ %i.df, %bb.k ] ; 6 uses
  %i.ci = zext i32 %.11744 to i64                 ; 5 uses
  %.val1893 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1893, i64 %i.ci
  %.0.copyload.i2084 = load i32, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2084) #13, !srcloc !14
  %i.ck = zext i32 %.01748 to i64                 ; 4 uses
  %.val1983 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1983, i64 %i.ck
  store i32 %.0.copyload.i2084, ptr %i.cl, align 1
  %.val2017 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.val2017, i64 %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %.0.copyload.i2085 = load i64, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2085) #13, !srcloc !33
  %.val2061 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %.val2061, i64 %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i64 %.0.copyload.i2085, ptr %i.cp, align 1
  %i.cq = add i32 %.11744, 12
  %i.cr = zext i32 %i.cq to i64
  %.val2016 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.val2016, i64 %i.cr
  %.0.copyload.i2086 = load i64, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2086) #13, !srcloc !33
  %.val2060 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.val2060, i64 %i.ck
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i64 %.0.copyload.i2086, ptr %i.cu, align 1
  %i.cv = add i32 %.11744, 20
  %i.cw = zext i32 %i.cv to i64
  %.val1892 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1892, i64 %i.cw
  %.0.copyload.i2087 = load i32, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2087) #13, !srcloc !14
  %.val1982 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1982, i64 %i.ck
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  store i32 %.0.copyload.i2087, ptr %i.cz, align 1
  %.val1981 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %.val1981, i64 %i.ci
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  store i32 0, ptr %i.db, align 1
  %.val2059 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.val2059, i64 %i.ci
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i64 0, ptr %i.dd, align 1
  %i.de = icmp eq i32 %.11744, %.01747
  br i1 %i.de, label %split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = add i32 %.11744, -24                    ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %.val1891 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1891, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %.0.copyload.i2088 = load i32, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2088) #13, !srcloc !14
  %i.dj = icmp ugt i32 %.0.copyload.i2088, %i.cg
  br i1 %i.dj, label %bb.j, label %split

split:                                            ; preds = %bb.k, %bb.j
  %.pre-phi = phi i64 [ %.pre, %bb.j ], [ %i.ci, %bb.k ] ; 5 uses
  %.val2058 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.val2058, i64 %.pre-phi
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store i64 %.0.copyload.i2082, ptr %i.dl, align 1
  %.val1980 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1980, i64 %.pre-phi
  store i32 %.0.copyload.i2083, ptr %i.dm, align 1
  %.val1979 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.val1979, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  store i32 %.0.copyload.i2079, ptr %i.do, align 1
  %.val1978 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dp = getelementptr inbounds nuw i8, ptr %.val1978, i64 %.pre-phi
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i32 %.0.copyload.i2080, ptr %i.dq, align 1
  %.val1977 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dr = getelementptr inbounds nuw i8, ptr %.val1977, i64 %.pre-phi
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 %.0.copyload.i2081, ptr %i.ds, align 1
  br label %bb.l

bb.l:                                             ; preds = %split, %bb.h
  %i.dt = add i32 %.31761, 24                     ; 2 uses
  %.not1812 = icmp eq i32 %i.dt, %.01763
  br i1 %.not1812, label %.loopexit, label %bb.h

4:                                                ; preds = %bb.f
  %.not1794 = icmp eq i32 %.21760, 0
  br i1 %.not1794, label %bb.m, label %bb.am

bb.m:                                             ; preds = %4
  %i.du = icmp eq i32 %.01763, %.01747
  br i1 %i.du, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dv = add nsw i32 %i.m, -2                    ; 2 uses
  %i.dw = lshr i32 %i.dv, 1
  %i.dx = lshr i32 %i.dv, 1
  %i.dy = zext nneg i32 %i.dx to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.x, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ %i.dy, %bb.n ] ; 3 uses
  %i.dz = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ea = mul i32 %i.dz, 24
  %i.eb = add i32 %i.ea, %.01747                  ; 5 uses
  %i.ec = shl i32 %i.dz, 1                        ; 2 uses
  %i.ed = or disjoint i32 %i.ec, 1                ; 3 uses
  %i.ee = mul i32 %i.ed, 24
  %i.ef = add i32 %i.ee, %.01747                  ; 3 uses
  %i.eg = add i32 %i.ec, 2                        ; 2 uses
  %i.eh = icmp sgt i32 %i.m, %i.eg
  br i1 %i.eh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ei = zext i32 %i.ef to i64                   ; 2 uses
  %.val1890 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %.val1890, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %.0.copyload.i2089 = load i32, ptr %i.ek, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2089) #13, !srcloc !14
  %.val1889 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %.val1889, i64 %i.ei
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 28
  %.0.copyload.i2090 = load i32, ptr %i.em, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2090) #13, !srcloc !14
  %i.en = icmp ult i32 %.0.copyload.i2089, %.0.copyload.i2090 ; 2 uses
  %i.eo = select i1 %i.en, i32 %i.eg, i32 %i.ed
  %i.ep = select i1 %i.en, i32 24, i32 0
  %i.eq = add i32 %i.ep, %i.ef
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.11749 = phi i32 [ %i.eq, %bb.p ], [ %i.ef, %bb.o ] ; 2 uses
  %.21745 = phi i32 [ %i.eo, %bb.p ], [ %i.ed, %bb.o ]
  %i.er = zext i32 %.11749 to i64
  %.val1888 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.es = getelementptr inbounds nuw i8, ptr %.val1888, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %.0.copyload.i2091 = load i32, ptr %i.et, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2091) #13, !srcloc !14
  %i.eu = add i32 %i.eb, 4
  %i.ev = zext i32 %i.eu to i64
  %.val1887 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ew = getelementptr inbounds nuw i8, ptr %.val1887, i64 %i.ev
  %.0.copyload.i2092 = load i32, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2092) #13, !srcloc !14
  %i.ex = icmp ult i32 %.0.copyload.i2091, %.0.copyload.i2092
  br i1 %i.ex, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ey = add i32 %i.eb, 20
  %i.ez = zext i32 %i.ey to i64
  %.val1886 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fa = getelementptr inbounds nuw i8, ptr %.val1886, i64 %i.ez
  %.0.copyload.i2093 = load i32, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2093) #13, !srcloc !14
  %i.fb = zext i32 %i.eb to i64                   ; 5 uses
  %.val1976 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %.val1976, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 20
  store i32 0, ptr %i.fd, align 1
  %.val1885 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fe = getelementptr inbounds nuw i8, ptr %.val1885, i64 %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %.0.copyload.i2094 = load i32, ptr %i.ff, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2094) #13, !srcloc !14
  %i.fg = add i32 %i.eb, 12
  %i.fh = zext i32 %i.fg to i64
  %.val1884 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %.val1884, i64 %i.fh
  %.0.copyload.i2095 = load i32, ptr %i.fi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2095) #13, !srcloc !14
  %.val2057 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %.val2057, i64 %i.fb
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i64 0, ptr %i.fk, align 1
  %.val2015 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fl = getelementptr inbounds nuw i8, ptr %.val2015, i64 %i.fb
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %.0.copyload.i2096 = load i64, ptr %i.fm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2096) #13, !srcloc !33
  %i.fn = trunc i64 %.0.copyload.i2096 to i32
  %.val1883 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1883, i64 %i.fb
  %.0.copyload.i2097 = load i32, ptr %i.fo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2097) #13, !srcloc !14
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r
  %.41769 = phi i32 [ %i.eb, %bb.r ], [ %.21750, %bb.v ]
  %.21750 = phi i32 [ %.11749, %bb.r ], [ %.31751, %bb.v ] ; 2 uses
  %.31746 = phi i32 [ %.21745, %bb.r ], [ %.4, %bb.v ] ; 2 uses
  %i.fp = zext i32 %.21750 to i64                 ; 6 uses
  %.val1882 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1882, i64 %i.fp
  %.0.copyload.i2098 = load i32, ptr %i.fq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2098) #13, !srcloc !14
  %i.fr = zext i32 %.41769 to i64                 ; 4 uses
  %.val1975 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %.val1975, i64 %i.fr
  store i32 %.0.copyload.i2098, ptr %i.fs, align 1
  %i.ft = add nuw nsw i64 %i.fp, 4                ; 2 uses
  %.val2014 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %.val2014, i64 %i.ft
  %.0.copyload.i2099 = load i64, ptr %i.fu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2099) #13, !srcloc !33
  %.val2056 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fv = getelementptr inbounds nuw i8, ptr %.val2056, i64 %i.fr
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i64 %.0.copyload.i2099, ptr %i.fw, align 1
  %i.fx = add nuw nsw i64 %i.fp, 12               ; 3 uses
  %.val2013 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %.val2013, i64 %i.fx
  %.0.copyload.i2100 = load i64, ptr %i.fy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2100) #13, !srcloc !33
  %.val2055 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %.val2055, i64 %i.fr
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i64 %.0.copyload.i2100, ptr %i.ga, align 1
  %i.gb = add nuw nsw i64 %i.fp, 20               ; 3 uses
  %.val1881 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gc = getelementptr inbounds nuw i8, ptr %.val1881, i64 %i.gb
  %.0.copyload.i2101 = load i32, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2101) #13, !srcloc !14
  %.val1974 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1974, i64 %i.fr
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  store i32 %.0.copyload.i2101, ptr %i.ge, align 1
  %.val1973 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gf = getelementptr inbounds nuw i8, ptr %.val1973, i64 %i.gb
  store i32 0, ptr %i.gf, align 1
  %.val2054 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gg = getelementptr inbounds nuw i8, ptr %.val2054, i64 %i.fx
  store i64 0, ptr %i.gg, align 1
  %i.gh = icmp sgt i32 %.31746, %i.dw
  br i1 %i.gh, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gi = shl i32 %.31746, 1                      ; 2 uses
  %i.gj = or disjoint i32 %i.gi, 1                ; 3 uses
  %i.gk = mul i32 %i.gj, 24
  %i.gl = add i32 %i.gk, %.01747                  ; 3 uses
  %i.gm = add i32 %i.gi, 2                        ; 2 uses
  %i.gn = icmp sgt i32 %i.m, %i.gm
  br i1 %i.gn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.go = zext i32 %i.gl to i64                   ; 2 uses
  %.val1880 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gp = getelementptr inbounds nuw i8, ptr %.val1880, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %.0.copyload.i2102 = load i32, ptr %i.gq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2102) #13, !srcloc !14
  %.val1879 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %.val1879, i64 %i.go
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 28
  %.0.copyload.i2103 = load i32, ptr %i.gs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2103) #13, !srcloc !14
  %i.gt = icmp ult i32 %.0.copyload.i2102, %.0.copyload.i2103 ; 2 uses
  %i.gu = select i1 %i.gt, i32 %i.gm, i32 %i.gj
  %i.gv = select i1 %i.gt, i32 24, i32 0
  %i.gw = add i32 %i.gv, %i.gl
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.31751 = phi i32 [ %i.gw, %bb.u ], [ %i.gl, %bb.t ] ; 2 uses
  %.4 = phi i32 [ %i.gu, %bb.u ], [ %i.gj, %bb.t ]
  %i.gx = zext i32 %.31751 to i64
  %.val1878 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.gy = getelementptr inbounds nuw i8, ptr %.val1878, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %.0.copyload.i2104 = load i32, ptr %i.gz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2104) #13, !srcloc !14
  %.not1806 = icmp ult i32 %.0.copyload.i2104, %i.fn
  br i1 %.not1806, label %bb.w, label %bb.s

bb.w:                                             ; preds = %bb.v, %bb.s
  %.val2053 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ha = getelementptr inbounds nuw i8, ptr %.val2053, i64 %i.ft
  store i64 %.0.copyload.i2096, ptr %i.ha, align 1
  %.val1972 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hb = getelementptr inbounds nuw i8, ptr %.val1972, i64 %i.fp
  store i32 %.0.copyload.i2097, ptr %i.hb, align 1
  %.val1971 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1971, i64 %i.gb
  store i32 %.0.copyload.i2093, ptr %i.hc, align 1
  %.val1970 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1970, i64 %i.fp
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store i32 %.0.copyload.i2094, ptr %i.he, align 1
  %.val1969 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.hf = getelementptr inbounds nuw i8, ptr %.val1969, i64 %i.fx
end_hunk_18
begin_hunk_19_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  %.val1960 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.js = getelementptr inbounds nuw i8, ptr %.val1960, i64 %i.ik
  store i32 %.0.copyload.i2116, ptr %i.js, align 1
  %i.jt = add i32 %.11764, -20
  %i.ju = zext i32 %i.jt to i64
  %.val2009 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.jv = getelementptr inbounds nuw i8, ptr %.val2009, i64 %i.ju
  %.0.copyload.i2117 = load i64, ptr %i.jv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2117) #13, !srcloc !33
  %i.jw = add nuw nsw i64 %i.ik, 4                ; 3 uses
  %.val2047 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.jx = getelementptr inbounds nuw i8, ptr %.val2047, i64 %i.jw
  store i64 %.0.copyload.i2117, ptr %i.jx, align 1
  %i.jy = add i32 %.11764, -12
  %i.jz = zext i32 %i.jy to i64
  %.val1868 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ka = getelementptr inbounds nuw i8, ptr %.val1868, i64 %i.jz
  %.0.copyload.i2118 = load i32, ptr %i.ka, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2118) #13, !srcloc !14
  %.val1959 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kb = getelementptr inbounds nuw i8, ptr %.val1959, i64 %i.jf
  store i32 %.0.copyload.i2118, ptr %i.kb, align 1
  %i.kc = add i32 %.11764, -8
  %i.kd = zext i32 %i.kc to i64
  %.val1867 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1867, i64 %i.kd
  %.0.copyload.i2119 = load i32, ptr %i.ke, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2119) #13, !srcloc !14
  %i.kf = add nuw nsw i64 %i.ik, 16               ; 2 uses
  %.val1958 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kg = getelementptr inbounds nuw i8, ptr %.val1958, i64 %i.kf
  store i32 %.0.copyload.i2119, ptr %i.kg, align 1
  %i.kh = add i32 %.11764, -4
  %i.ki = zext i32 %i.kh to i64
  %.val1866 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1866, i64 %i.ki
  %.0.copyload.i2120 = load i32, ptr %i.kj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2120) #13, !srcloc !14
  %.val1957 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1957, i64 %i.jd
  store i32 %.0.copyload.i2120, ptr %i.kk, align 1
  %.val1956 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kl = getelementptr inbounds nuw i8, ptr %.val1956, i64 %i.jq
  store i32 %.0.copyload.i2109, ptr %i.kl, align 1
  %.val1955 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.km = getelementptr inbounds nuw i8, ptr %.val1955, i64 %i.jq
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 20
  store i32 %.0.copyload.i2105, ptr %i.kn, align 1
  %.val1954 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ko = getelementptr inbounds nuw i8, ptr %.val1954, i64 %i.jq
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  store i32 %.0.copyload.i2106, ptr %i.kp, align 1
  %.val1953 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1953, i64 %i.jq
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  store i32 %.0.copyload.i2107, ptr %i.kr, align 1
  %.val2046 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ks = getelementptr inbounds nuw i8, ptr %.val2046, i64 %i.jq
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  store i64 %.0.copyload.i2108, ptr %i.kt, align 1
  %.reass.reass.reass = add i32 %.61771, %invariant.op ; 2 uses
  %i.ku = icmp slt i32 %.reass.reass.reass, 25
  br i1 %i.ku, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kv = udiv i32 %.reass.reass.reass, 24
  %i.kw = add nsw i32 %i.kv, -2
  %i.kx = lshr i32 %i.kw, 1                       ; 2 uses
  %i.ky = mul i32 %i.kx, 24
  %i.kz = add i32 %i.ky, %.01747                  ; 2 uses
  %i.la = zext i32 %i.kz to i64
  %.val1865 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.lb = getelementptr inbounds nuw i8, ptr %.val1865, i64 %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %.0.copyload.i2121 = load i32, ptr %i.lc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2121) #13, !srcloc !14
  %.val1864 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ld = getelementptr inbounds nuw i8, ptr %.val1864, i64 %i.jw
  %.0.copyload.i2122 = load i32, ptr %i.ld, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2122) #13, !srcloc !14
  %.not1810 = icmp ult i32 %.0.copyload.i2121, %.0.copyload.i2122
  br i1 %.not1810, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %.val1863 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.le = getelementptr inbounds nuw i8, ptr %.val1863, i64 %i.kf
  %.0.copyload.i2123 = load i32, ptr %i.le, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2123) #13, !srcloc !14
  %.val1862 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.lf = getelementptr inbounds nuw i8, ptr %.val1862, i64 %i.jf
  %.0.copyload.i2124 = load i32, ptr %i.lf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2124) #13, !srcloc !14
  %.val2045 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.lg = getelementptr inbounds nuw i8, ptr %.val2045, i64 %i.jf
  store i64 0, ptr %i.lg, align 1
  %.val1861 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.lh = getelementptr inbounds nuw i8, ptr %.val1861, i64 %i.jd
  %.0.copyload.i2125 = load i32, ptr %i.lh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2125) #13, !srcloc !14
  %.val1952 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.li = getelementptr inbounds nuw i8, ptr %.val1952, i64 %i.jd
  store i32 0, ptr %i.li, align 1
  %.val2008 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.lj = getelementptr inbounds nuw i8, ptr %.val2008, i64 %i.jw
  %.0.copyload.i2126 = load i64, ptr %i.lj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2126) #13, !srcloc !33
  %i.lk = trunc i64 %.0.copyload.i2126 to i32
  %.val1860 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ll = getelementptr inbounds nuw i8, ptr %.val1860, i64 %i.ik
  %.0.copyload.i2127 = load i32, ptr %i.ll, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2127) #13, !srcloc !14
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %.71772 = phi i32 [ %.61771, %bb.ah ], [ %.41762, %bb.aj ]
  %.41762 = phi i32 [ %i.kz, %bb.ah ], [ %i.mh, %bb.aj ] ; 2 uses
  %.7 = phi i32 [ %i.kx, %bb.ah ], [ %i.mf, %bb.aj ] ; 2 uses
  %i.lm = zext i32 %.41762 to i64                 ; 6 uses
  %.val1859 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ln = getelementptr inbounds nuw i8, ptr %.val1859, i64 %i.lm
  %.0.copyload.i2128 = load i32, ptr %i.ln, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2128) #13, !srcloc !14
  %i.lo = zext i32 %.71772 to i64                 ; 4 uses
  %.val1951 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.lp = getelementptr inbounds nuw i8, ptr %.val1951, i64 %i.lo
  store i32 %.0.copyload.i2128, ptr %i.lp, align 1
  %i.lq = add nuw nsw i64 %i.lm, 4                ; 2 uses
  %.val2007 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.lr = getelementptr inbounds nuw i8, ptr %.val2007, i64 %i.lq
  %.0.copyload.i2129 = load i64, ptr %i.lr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2129) #13, !srcloc !33
  %.val2044 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ls = getelementptr inbounds nuw i8, ptr %.val2044, i64 %i.lo
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store i64 %.0.copyload.i2129, ptr %i.lt, align 1
  %i.lu = add nuw nsw i64 %i.lm, 12               ; 3 uses
  %.val2006 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.lv = getelementptr inbounds nuw i8, ptr %.val2006, i64 %i.lu
  %.0.copyload.i2130 = load i64, ptr %i.lv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2130) #13, !srcloc !33
  %.val2043 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.lw = getelementptr inbounds nuw i8, ptr %.val2043, i64 %i.lo
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 12
  store i64 %.0.copyload.i2130, ptr %i.lx, align 1
  %i.ly = add nuw nsw i64 %i.lm, 20               ; 3 uses
  %.val1858 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.lz = getelementptr inbounds nuw i8, ptr %.val1858, i64 %i.ly
  %.0.copyload.i2131 = load i32, ptr %i.lz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2131) #13, !srcloc !14
  %.val1950 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ma = getelementptr inbounds nuw i8, ptr %.val1950, i64 %i.lo
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 20
  store i32 %.0.copyload.i2131, ptr %i.mb, align 1
  %.val1949 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.mc = getelementptr inbounds nuw i8, ptr %.val1949, i64 %i.ly
  store i32 0, ptr %i.mc, align 1
  %.val2042 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.md = getelementptr inbounds nuw i8, ptr %.val2042, i64 %i.lu
  store i64 0, ptr %i.md, align 1
  %.not1811 = icmp eq i32 %.7, 0
  br i1 %.not1811, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.me = add nsw i32 %.7, -1
  %i.mf = lshr i32 %i.me, 1                       ; 2 uses
  %i.mg = mul i32 %i.mf, 24
  %i.mh = add i32 %i.mg, %.01747                  ; 2 uses
  %i.mi = zext i32 %i.mh to i64
  %.val1857 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.mj = getelementptr inbounds nuw i8, ptr %.val1857, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %.0.copyload.i2132 = load i32, ptr %i.mk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2132) #13, !srcloc !14
  %i.ml = icmp ult i32 %.0.copyload.i2132, %i.lk
  br i1 %i.ml, label %bb.ai, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.val2041 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.mm = getelementptr inbounds nuw i8, ptr %.val2041, i64 %i.lq
  store i64 %.0.copyload.i2126, ptr %i.mm, align 1
  %.val1948 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.mn = getelementptr inbounds nuw i8, ptr %.val1948, i64 %i.lm
  store i32 %.0.copyload.i2127, ptr %i.mn, align 1
  %.val1947 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.mo = getelementptr inbounds nuw i8, ptr %.val1947, i64 %i.ly
  store i32 %.0.copyload.i2125, ptr %i.mo, align 1
  %.val1946 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.mp = getelementptr inbounds nuw i8, ptr %.val1946, i64 %i.lm
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  store i32 %.0.copyload.i2123, ptr %i.mq, align 1
  %.val1945 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.mr = getelementptr inbounds nuw i8, ptr %.val1945, i64 %i.lu
  store i32 %.0.copyload.i2124, ptr %i.mr, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ag, %bb.af, %bb.ak, %bb.ae
  %i.ms = add nsw i32 %.51770, -1
  %i.mt = icmp sgt i32 %.51770, 2
  br i1 %i.mt, label %bb.z, label %.loopexit

bb.am:                                            ; preds = %4
  %i.mu = lshr i32 %i.m, 1
  %i.mv = mul nuw nsw i32 %i.mu, 24
  %i.mw = add i32 %i.mv, %.01747                  ; 6 uses
  %i.mx = icmp samesign ugt i32 %i.l, 23976
  br i1 %i.mx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.my = lshr i32 %i.m, 2
  %i.mz = mul nuw nsw i32 %i.my, 24               ; 2 uses
  %i.na = add i32 %i.mz, %.01747
  %i.nb = add i32 %i.mw, %i.mz
  %i.nc = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr noundef %0, i32 noundef %.01747, i32 noundef %i.na, i32 noundef %i.mw, i32 noundef %i.nb, i32 noundef %i.f)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.nd = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr noundef %0, i32 noundef %.01747, i32 noundef %i.mw, i32 noundef %i.f)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0 = phi i32 [ %i.nc, %bb.an ], [ %i.nd, %bb.ao ] ; 2 uses
  %i.ne = add i32 %.21760, -1                     ; 4 uses
  %i.nf = add i32 %.01747, 4
  %i.ng = zext i32 %i.nf to i64
  %.val1856 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.nh = getelementptr inbounds nuw i8, ptr %.val1856, i64 %i.ng
  %.0.copyload.i2133 = load i32, ptr %i.nh, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2133) #13, !srcloc !14
  %i.ni = zext i32 %i.mw to i64
  %.val1855 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.nj = getelementptr inbounds nuw i8, ptr %.val1855, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %.0.copyload.i2134 = load i32, ptr %i.nk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2134) #13, !srcloc !14
  %i.nl = icmp ult i32 %.0.copyload.i2133, %.0.copyload.i2134
  br i1 %i.nl, label %.loopexit2203, label %.preheader2199

.preheader2199:                                   ; preds = %bb.ap, %bb.au
  %.51753 = phi i32 [ %i.nm, %bb.au ], [ %i.f, %bb.ap ] ; 4 uses
  %i.nm = add i32 %.51753, -24                    ; 4 uses
  %i.nn = icmp eq i32 %i.nm, %.01747
  br i1 %i.nn, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %.preheader2199
  %i.no = add i32 %.01747, 24                     ; 3 uses
  %.val1854 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.np = getelementptr inbounds nuw i8, ptr %.val1854, i64 %i.g
  %.0.copyload.i2135 = load i32, ptr %i.np, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2135) #13, !srcloc !14
  %i.nq = icmp ult i32 %.0.copyload.i2133, %.0.copyload.i2135
  br i1 %i.nq, label %bb.bj, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.nr = icmp eq i32 %i.no, %i.f
  br i1 %i.nr, label %.loopexit, label %.preheader2197

.preheader2197:                                   ; preds = %bb.ar, %bb.at
  %.61754 = phi i32 [ %i.pe, %bb.at ], [ %i.no, %bb.ar ] ; 7 uses
  %i.ns = add i32 %.61754, 4
  %i.nt = zext i32 %i.ns to i64
  %.val1853 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.nu = getelementptr inbounds nuw i8, ptr %.val1853, i64 %i.nt
  %.0.copyload.i2136 = load i32, ptr %i.nu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2136) #13, !srcloc !14
  %i.nv = icmp ugt i32 %.0.copyload.i2136, %.0.copyload.i2133
  br i1 %i.nv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader2197
  %i.nw = add i32 %.61754, 20
  %i.nx = zext i32 %i.nw to i64
  %.val1852 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ny = getelementptr inbounds nuw i8, ptr %.val1852, i64 %i.nx
  %.0.copyload.i2137 = load i32, ptr %i.ny, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2137) #13, !srcloc !14
  %i.nz = zext i32 %.61754 to i64                 ; 6 uses
  %i.oa = add nuw nsw i64 %i.nz, 20               ; 2 uses
  %.val1944 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ob = getelementptr inbounds nuw i8, ptr %.val1944, i64 %i.oa
  store i32 0, ptr %i.ob, align 1
  %i.oc = add i32 %.61754, 16
  %i.od = zext i32 %i.oc to i64
  %.val1851 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.oe = getelementptr inbounds nuw i8, ptr %.val1851, i64 %i.od
  %.0.copyload.i2138 = load i32, ptr %i.oe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2138) #13, !srcloc !14
  %i.of = add i32 %.61754, 12
  %i.og = zext i32 %i.of to i64
  %.val1850 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.oh = getelementptr inbounds nuw i8, ptr %.val1850, i64 %i.og
  %.0.copyload.i2139 = load i32, ptr %i.oh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2139) #13, !srcloc !14
  %i.oi = add nuw nsw i64 %i.nz, 12               ; 2 uses
  %.val2040 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.oj = getelementptr inbounds nuw i8, ptr %.val2040, i64 %i.oi
  store i64 0, ptr %i.oj, align 1
  %.val1849 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ok = getelementptr inbounds nuw i8, ptr %.val1849, i64 %i.nz
  %.0.copyload.i2140 = load i32, ptr %i.ok, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2140) #13, !srcloc !14
  %.val1848 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ol = getelementptr inbounds nuw i8, ptr %.val1848, i64 %i.h
  %.0.copyload.i2141 = load i32, ptr %i.ol, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2141) #13, !srcloc !14
  %.val1943 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.om = getelementptr inbounds nuw i8, ptr %.val1943, i64 %i.nz
  store i32 %.0.copyload.i2141, ptr %i.om, align 1
  %i.on = add nuw nsw i64 %i.nz, 4                ; 2 uses
  %.val2005 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.oo = getelementptr inbounds nuw i8, ptr %.val2005, i64 %i.on
  %.0.copyload.i2142 = load i64, ptr %i.oo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2142) #13, !srcloc !33
  %.val2004 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.op = getelementptr inbounds nuw i8, ptr %.val2004, i64 %i.g
  %.0.copyload.i2143 = load i64, ptr %i.op, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2143) #13, !srcloc !33
  %.val2039 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.oq = getelementptr inbounds nuw i8, ptr %.val2039, i64 %i.on
  store i64 %.0.copyload.i2143, ptr %i.oq, align 1
  %.val1847 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.or = getelementptr inbounds nuw i8, ptr %.val1847, i64 %i.i
  %.0.copyload.i2144 = load i32, ptr %i.or, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2144) #13, !srcloc !14
  %.val1942 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.os = getelementptr inbounds nuw i8, ptr %.val1942, i64 %i.oi
  store i32 %.0.copyload.i2144, ptr %i.os, align 1
  %.val1846 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ot = getelementptr inbounds nuw i8, ptr %.val1846, i64 %i.j
  %.0.copyload.i2145 = load i32, ptr %i.ot, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2145) #13, !srcloc !14
  %.val1941 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ou = getelementptr inbounds nuw i8, ptr %.val1941, i64 %i.nz
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  store i32 %.0.copyload.i2145, ptr %i.ov, align 1
  %.val1845 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ow = getelementptr inbounds nuw i8, ptr %.val1845, i64 %i.k
  %.0.copyload.i2146 = load i32, ptr %i.ow, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2146) #13, !srcloc !14
  %.val1940 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ox = getelementptr inbounds nuw i8, ptr %.val1940, i64 %i.oa
  store i32 %.0.copyload.i2146, ptr %i.ox, align 1
  %.val1939 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.oy = getelementptr inbounds nuw i8, ptr %.val1939, i64 %i.h
  store i32 %.0.copyload.i2140, ptr %i.oy, align 1
  %.val2038 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.oz = getelementptr inbounds nuw i8, ptr %.val2038, i64 %i.g
  store i64 %.0.copyload.i2142, ptr %i.oz, align 1
  %.val1938 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.pa = getelementptr inbounds nuw i8, ptr %.val1938, i64 %i.i
  store i32 %.0.copyload.i2139, ptr %i.pa, align 1
  %.val1937 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.pb = getelementptr inbounds nuw i8, ptr %.val1937, i64 %i.j
  store i32 %.0.copyload.i2138, ptr %i.pb, align 1
  %.val1936 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.pc = getelementptr inbounds nuw i8, ptr %.val1936, i64 %i.k
  store i32 %.0.copyload.i2137, ptr %i.pc, align 1
  %i.pd = add i32 %.61754, 24
  br label %bb.bj

bb.at:                                            ; preds = %.preheader2197
  %i.pe = add i32 %.61754, 24                     ; 2 uses
  %.not1796 = icmp eq i32 %i.pe, %i.f
  br i1 %.not1796, label %.loopexit, label %.preheader2197

bb.au:                                            ; preds = %.preheader2199
  %i.pf = add i32 %.51753, -20
  %i.pg = zext i32 %i.pf to i64                   ; 3 uses
  %.val1844 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ph = getelementptr inbounds nuw i8, ptr %.val1844, i64 %i.pg
  %.0.copyload.i2147 = load i32, ptr %i.ph, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2147) #13, !srcloc !14
  %.not1795 = icmp ult i32 %.0.copyload.i2147, %.0.copyload.i2134
  br i1 %.not1795, label %bb.av, label %.preheader2199

bb.av:                                            ; preds = %bb.au
  %i.pi = add i32 %.01747, 20
  %i.pj = zext i32 %i.pi to i64
  %.val1843 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.pk = getelementptr inbounds nuw i8, ptr %.val1843, i64 %i.pj
  %.0.copyload.i2148 = load i32, ptr %i.pk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2148) #13, !srcloc !14
  %i.pl = zext i32 %.01747 to i64                 ; 6 uses
  %i.pm = add nuw nsw i64 %i.pl, 20               ; 2 uses
  %.val1935 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.pn = getelementptr inbounds nuw i8, ptr %.val1935, i64 %i.pm
  store i32 0, ptr %i.pn, align 1
  %i.po = add i32 %.01747, 12
  %i.pp = zext i32 %i.po to i64
  %.val2003 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.pq = getelementptr inbounds nuw i8, ptr %.val2003, i64 %i.pp
  %.0.copyload.i2149 = load i64, ptr %i.pq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2149) #13, !srcloc !33
  %i.pr = add nuw nsw i64 %i.pl, 12               ; 2 uses
  %.val2037 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ps = getelementptr inbounds nuw i8, ptr %.val2037, i64 %i.pr
  store i64 0, ptr %i.ps, align 1
  %.val1842 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.pt = getelementptr inbounds nuw i8, ptr %.val1842, i64 %i.pl
  %.0.copyload.i2150 = load i32, ptr %i.pt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2150) #13, !srcloc !14
  %i.pu = zext i32 %i.nm to i64                   ; 5 uses
  %.val1841 = load ptr, ptr %i.a, align 8, !tbaa !13
end_hunk_19
begin_hunk_20_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  %i.uf = getelementptr inbounds nuw i8, ptr %.val1917, i64 %i.te
  store i32 %.0.copyload.i2179, ptr %i.uf, align 1
  %.val1916 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ug = getelementptr inbounds nuw i8, ptr %.val1916, i64 %i.tm
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 20
  store i32 %.0.copyload.i2171, ptr %i.uh, align 1
  %.val2027 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ui = getelementptr inbounds nuw i8, ptr %.val2027, i64 %i.tm
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 12
  store i64 %.0.copyload.i2172, ptr %i.uj, align 1
  %.val2026 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.uk = getelementptr inbounds nuw i8, ptr %.val2026, i64 %i.tr
  store i64 %.0.copyload.i2175, ptr %i.uk, align 1
  %.val1915 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ul = getelementptr inbounds nuw i8, ptr %.val1915, i64 %i.tm
  store i32 %.0.copyload.i2173, ptr %i.ul, align 1
  %i.um = add i32 %.2, 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %.loopexit2201, %bb.bb
  %.3 = phi i32 [ %.2, %.loopexit2201 ], [ %.2, %bb.ba ], [ %i.um, %bb.bb ]
  %.not1802 = icmp eq i32 %.3, 0
  br i1 %.not1802, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.un = tail call i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Chermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr noundef nonnull %0, i32 noundef %.01747, i32 noundef %.10) #13
  %i.uo = add i32 %.10, 24                        ; 2 uses
  %i.up = tail call i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Chermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr noundef nonnull %0, i32 noundef %i.uo, i32 noundef %.01763) #13
  %.not1803 = icmp eq i32 %i.up, 0
  %.not1804 = icmp eq i32 %i.un, 0                ; 2 uses
  br i1 %.not1803, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %.not1804, label %.backedge2205.backedge, label %.loopexit

bb.bf:                                            ; preds = %bb.bd
  br i1 %.not1804, label %bb.bg, label %.loopexit2196.backedge

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  %i.uq = sub i32 %.10, %.01747
  %i.ur = sdiv i32 %i.uq, 24
  %i.us = sub i32 %.01763, %.10
  %i.ut = sdiv i32 %i.us, 24
  %i.uu = icmp slt i32 %i.ur, %i.ut
  br i1 %i.uu, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %.01747, i32 noundef %.10, i32 noundef %i.ne)
  %i.uv = add i32 %.10, 24
  br label %.loopexit2196.backedge

.loopexit2196.backedge:                           ; preds = %bb.bm, %bb.bh, %bb.bf
  %.01747.be = phi i32 [ %i.uo, %bb.bf ], [ %i.uv, %bb.bh ], [ %.91757, %bb.bm ]
  br label %.loopexit2196

bb.bi:                                            ; preds = %bb.bg
  %i.uw = add i32 %.10, 24
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %i.uw, i32 noundef %.01763, i32 noundef %i.ne)
  br label %.backedge2205.backedge

.backedge2205.backedge:                           ; preds = %bb.bi, %bb.be
  br label %.backedge2205

bb.bj:                                            ; preds = %bb.aq, %bb.as
  %.71755 = phi i32 [ %i.no, %bb.aq ], [ %i.pd, %bb.as ] ; 2 uses
  %i.ux = icmp eq i32 %i.f, %.71755
  br i1 %i.ux, label %.loopexit, label %.preheader2195

.preheader2195:                                   ; preds = %bb.bj
  %i.uy = zext i32 %.01747 to i64
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader2195, %bb.bn
  %.11 = phi i32 [ %i.vf, %bb.bn ], [ %i.f, %.preheader2195 ]
  %.81756 = phi i32 [ %i.vb, %bb.bn ], [ %.71755, %.preheader2195 ]
  %.val1820 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.uz = getelementptr inbounds nuw i8, ptr %.val1820, i64 %i.uy
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %.0.copyload.i2180 = load i32, ptr %i.va, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2180) #13, !srcloc !14
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %.91757 = phi i32 [ %.81756, %bb.bk ], [ %i.vb, %bb.bl ] ; 7 uses
  %i.vb = add i32 %.91757, 24                     ; 2 uses
  %i.vc = add i32 %.91757, 4
  %i.vd = zext i32 %i.vc to i64
  %.val1819 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ve = getelementptr inbounds nuw i8, ptr %.val1819, i64 %i.vd
  %.0.copyload.i2181 = load i32, ptr %i.ve, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2181) #13, !srcloc !14
  %.not1797 = icmp ult i32 %.0.copyload.i2180, %.0.copyload.i2181
  br i1 %.not1797, label %.preheader2193, label %bb.bl

.preheader2193:                                   ; preds = %bb.bl, %.preheader2193
  %.12 = phi i32 [ %i.vf, %.preheader2193 ], [ %.11, %bb.bl ] ; 4 uses
  %i.vf = add i32 %.12, -24                       ; 4 uses
  %i.vg = add i32 %.12, -20
  %i.vh = zext i32 %i.vg to i64
  %.val1818 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.vi = getelementptr inbounds nuw i8, ptr %.val1818, i64 %i.vh
  %.0.copyload.i2182 = load i32, ptr %i.vi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2182) #13, !srcloc !14
  %i.vj = icmp ult i32 %.0.copyload.i2180, %.0.copyload.i2182
  br i1 %i.vj, label %.preheader2193, label %bb.bm

bb.bm:                                            ; preds = %.preheader2193
  %.not1798 = icmp ugt i32 %i.vf, %.91757
  br i1 %.not1798, label %bb.bn, label %.loopexit2196.backedge

bb.bn:                                            ; preds = %bb.bm
  %i.vk = add i32 %.91757, 20
  %i.vl = zext i32 %i.vk to i64
  %.val1817 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.vm = getelementptr inbounds nuw i8, ptr %.val1817, i64 %i.vl
  %.0.copyload.i2183 = load i32, ptr %i.vm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2183) #13, !srcloc !14
  %i.vn = zext i32 %.91757 to i64                 ; 6 uses
  %i.vo = add nuw nsw i64 %i.vn, 20               ; 2 uses
  %.val1914 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.vp = getelementptr inbounds nuw i8, ptr %.val1914, i64 %i.vo
  store i32 0, ptr %i.vp, align 1
  %i.vq = add i32 %.91757, 12
  %i.vr = zext i32 %i.vq to i64
  %.val1994 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.vs = getelementptr inbounds nuw i8, ptr %.val1994, i64 %i.vr
  %.0.copyload.i2184 = load i64, ptr %i.vs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2184) #13, !srcloc !33
  %i.vt = add nuw nsw i64 %i.vn, 12               ; 2 uses
  %.val2025 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.vu = getelementptr inbounds nuw i8, ptr %.val2025, i64 %i.vt
  store i64 0, ptr %i.vu, align 1
  %.val1816 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.vv = getelementptr inbounds nuw i8, ptr %.val1816, i64 %i.vn
  %.0.copyload.i2185 = load i32, ptr %i.vv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2185) #13, !srcloc !14
  %i.vw = zext i32 %i.vf to i64                   ; 6 uses
  %.val1815 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.vx = getelementptr inbounds nuw i8, ptr %.val1815, i64 %i.vw
  %.0.copyload.i2186 = load i32, ptr %i.vx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2186) #13, !srcloc !14
  %.val1913 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.vy = getelementptr inbounds nuw i8, ptr %.val1913, i64 %i.vn
  store i32 %.0.copyload.i2186, ptr %i.vy, align 1
  %i.vz = add nuw nsw i64 %i.vn, 4                ; 2 uses
  %.val1993 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.wa = getelementptr inbounds nuw i8, ptr %.val1993, i64 %i.vz
  %.0.copyload.i2187 = load i64, ptr %i.wa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2187) #13, !srcloc !33
  %i.wb = add nuw nsw i64 %i.vw, 4                ; 2 uses
  %.val1992 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.wc = getelementptr inbounds nuw i8, ptr %.val1992, i64 %i.wb
  %.0.copyload.i2188 = load i64, ptr %i.wc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2188) #13, !srcloc !33
  %.val2024 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.wd = getelementptr inbounds nuw i8, ptr %.val2024, i64 %i.vz
  store i64 %.0.copyload.i2188, ptr %i.wd, align 1
  %i.we = add i32 %.12, -12
  %i.wf = zext i32 %i.we to i64
  %.val1814 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.wg = getelementptr inbounds nuw i8, ptr %.val1814, i64 %i.wf
  %.0.copyload.i2189 = load i32, ptr %i.wg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2189) #13, !srcloc !14
  %.val1912 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.wh = getelementptr inbounds nuw i8, ptr %.val1912, i64 %i.vt
  store i32 %.0.copyload.i2189, ptr %i.wh, align 1
  %.val1813 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.wi = getelementptr inbounds nuw i8, ptr %.val1813, i64 %i.vw
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %.0.copyload.i2190 = load i32, ptr %i.wj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2190) #13, !srcloc !14
  %.val1911 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.wk = getelementptr inbounds nuw i8, ptr %.val1911, i64 %i.vn
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  store i32 %.0.copyload.i2190, ptr %i.wl, align 1
  %i.wm = add i32 %.12, -4
  %i.wn = zext i32 %i.wm to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.wo = getelementptr inbounds nuw i8, ptr %.val, i64 %i.wn
  %.0.copyload.i2191 = load i32, ptr %i.wo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2191) #13, !srcloc !14
  %.val1910 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.wp = getelementptr inbounds nuw i8, ptr %.val1910, i64 %i.vo
  store i32 %.0.copyload.i2191, ptr %i.wp, align 1
  %.val1909 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.wq = getelementptr inbounds nuw i8, ptr %.val1909, i64 %i.vw
  store i32 %.0.copyload.i2185, ptr %i.wq, align 1
  %.val2023 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.wr = getelementptr inbounds nuw i8, ptr %.val2023, i64 %i.wb
  store i64 %.0.copyload.i2187, ptr %i.wr, align 1
  %.val1908 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ws = getelementptr inbounds nuw i8, ptr %.val1908, i64 %i.vw
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 20
  store i32 %.0.copyload.i2183, ptr %i.wt, align 1
  %.val2022 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.wu = getelementptr inbounds nuw i8, ptr %.val2022, i64 %i.vw
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 12
  store i64 %.0.copyload.i2184, ptr %i.wv, align 1
  br label %bb.bk

.loopexit:                                        ; preds = %bb.be, %.loopexit2196, %.loopexit2196, %bb.ar, %bb.bj, %bb.at, %bb.al, %bb.l, %bb.az, %bb.b, %bb.g, %bb.m, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 6) i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 66 uses
  %i.c = zext i32 %4 to i64                       ; 6 uses
  %i.d = add nuw nsw i64 %i.c, 4                  ; 3 uses
  %.val305 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %.val305, i64 %i.d
  %.0.copyload.i = load i32, ptr %i.e, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.f = zext i32 %3 to i64                       ; 8 uses
  %i.g = add nuw nsw i64 %i.f, 4                  ; 6 uses
  %.val304 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %.val304, i64 %i.g
  %.0.copyload.i348 = load i32, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i348) #13, !srcloc !14
  %i.i = icmp ult i32 %.0.copyload.i, %.0.copyload.i348
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i64 %i.f, 20                 ; 5 uses
  %.val303 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.val303, i64 %i.j
  %.0.copyload.i349 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i349) #13, !srcloc !14
  %.val326 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.val326, i64 %i.j
  store i32 0, ptr %i.l, align 1
  %i.m = add nuw nsw i64 %i.f, 12                 ; 5 uses
  %.val335 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.m
  %.0.copyload.i350 = load i64, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i350) #13, !srcloc !33
  %.val347 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val347, i64 %i.m
  store i64 0, ptr %i.o, align 1
  %.val302 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val302, i64 %i.f
  %.0.copyload.i351 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i351) #13, !srcloc !14
  %.val301 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val301, i64 %i.c
  %.0.copyload.i352 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i352) #13, !srcloc !14
  %.val325 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val325, i64 %i.f
  store i32 %.0.copyload.i352, ptr %i.r, align 1
  %.val334 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val334, i64 %i.g
  %.0.copyload.i353 = load i64, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i353) #13, !srcloc !33
  %.val333 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val333, i64 %i.d
  %.0.copyload.i354 = load i64, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i354) #13, !srcloc !33
  %.val346 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val346, i64 %i.g
  store i64 %.0.copyload.i354, ptr %i.u, align 1
  %i.v = add nuw nsw i64 %i.c, 12                 ; 2 uses
  %.val300 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.val300, i64 %i.v
  %.0.copyload.i355 = load i32, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i355) #13, !srcloc !14
  %.val324 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val324, i64 %i.m
  store i32 %.0.copyload.i355, ptr %i.x, align 1
  %.val299 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.val299, i64 %i.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.0.copyload.i356 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i356) #13, !srcloc !14
  %i.aa = add nuw nsw i64 %i.f, 16                ; 2 uses
  %.val323 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val323, i64 %i.aa
  store i32 %.0.copyload.i356, ptr %i.ab, align 1
  %i.ac = add nuw nsw i64 %i.c, 20                ; 2 uses
  %.val298 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.val298, i64 %i.ac
  %.0.copyload.i357 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i357) #13, !srcloc !14
  %.val322 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.val322, i64 %i.j
  store i32 %.0.copyload.i357, ptr %i.ae, align 1
  %.val321 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.val321, i64 %i.ac
  store i32 %.0.copyload.i349, ptr %i.af, align 1
  %.val345 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val345, i64 %i.v
  store i64 %.0.copyload.i350, ptr %i.ag, align 1
  %.val344 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.val344, i64 %i.d
  store i64 %.0.copyload.i353, ptr %i.ah, align 1
  %.val320 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val320, i64 %i.c
  store i32 %.0.copyload.i351, ptr %i.ai, align 1
  %.val297 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val297, i64 %i.g
  %.0.copyload.i358 = load i32, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i358) #13, !srcloc !14
  %i.ak = zext i32 %2 to i64                      ; 8 uses
  %i.al = add nuw nsw i64 %i.ak, 4                ; 6 uses
  %.val296 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val296, i64 %i.al
  %.0.copyload.i359 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i359) #13, !srcloc !14
  %.not = icmp ult i32 %.0.copyload.i358, %.0.copyload.i359
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = add nuw nsw i32 %i.a, 1
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.ao = add nuw nsw i64 %i.ak, 20               ; 5 uses
  %.val295 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val295, i64 %i.ao
  %.0.copyload.i360 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i360) #13, !srcloc !14
  %.val319 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val319, i64 %i.ao
  store i32 0, ptr %i.aq, align 1
  %i.ar = add nuw nsw i64 %i.ak, 12               ; 5 uses
  %.val332 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.ar
  %.0.copyload.i361 = load i64, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i361) #13, !srcloc !33
  %.val343 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val343, i64 %i.ar
  store i64 0, ptr %i.at, align 1
  %.val294 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val294, i64 %i.ak
  %.0.copyload.i362 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i362) #13, !srcloc !14
  %.val293 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val293, i64 %i.f
  %.0.copyload.i363 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i363) #13, !srcloc !14
  %.val318 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val318, i64 %i.ak
  store i32 %.0.copyload.i363, ptr %i.aw, align 1
  %.val331 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val331, i64 %i.al
  %.0.copyload.i364 = load i64, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i364) #13, !srcloc !33
  %.val330 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val330, i64 %i.g
  %.0.copyload.i365 = load i64, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i365) #13, !srcloc !33
  %.val342 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.val342, i64 %i.al
  store i64 %.0.copyload.i365, ptr %i.az, align 1
  %.val292 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.val292, i64 %i.m
  %.0.copyload.i366 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i366) #13, !srcloc !14
  %.val317 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.val317, i64 %i.ar
  store i32 %.0.copyload.i366, ptr %i.bb, align 1
  %.val291 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.val291, i64 %i.aa
  %.0.copyload.i367 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i367) #13, !srcloc !14
  %i.bd = add nuw nsw i64 %i.ak, 16               ; 2 uses
  %.val316 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val316, i64 %i.bd
  store i32 %.0.copyload.i367, ptr %i.be, align 1
  %.val290 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val290, i64 %i.j
  %.0.copyload.i368 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i368) #13, !srcloc !14
  %.val315 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val315, i64 %i.ao
  store i32 %.0.copyload.i368, ptr %i.bg, align 1
  %.val314 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.val314, i64 %i.j
  store i32 %.0.copyload.i360, ptr %i.bh, align 1
  %.val341 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val341, i64 %i.m
  store i64 %.0.copyload.i361, ptr %i.bi, align 1
  %.val340 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.val340, i64 %i.g
  store i64 %.0.copyload.i364, ptr %i.bj, align 1
  %.val313 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val313, i64 %i.f
  store i32 %.0.copyload.i362, ptr %i.bk, align 1
  %.val289 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val289, i64 %i.al
  %.0.copyload.i369 = load i32, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i369) #13, !srcloc !14
  %i.bm = zext i32 %1 to i64                      ; 6 uses
  %i.bn = add nuw nsw i64 %i.bm, 4                ; 3 uses
  %.val288 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val288, i64 %i.bn
  %.0.copyload.i370 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i370) #13, !srcloc !14
  %.not282 = icmp ult i32 %.0.copyload.i369, %.0.copyload.i370
end_hunk_20
begin_hunk_21_@w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %.val390, i64 %i.bn
  %.0.copyload.i486 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i486) #13, !srcloc !14
  %.not375 = icmp ult i32 %.0.copyload.i485, %.0.copyload.i486
  br i1 %.not375, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = add nuw nsw i32 %i.a, 2
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bq = add nuw nsw i64 %i.bm, 20               ; 5 uses
  %.val389 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val389, i64 %i.bq
  %.0.copyload.i487 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i487) #13, !srcloc !14
  %.val421 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.bq
  store i32 0, ptr %i.bs, align 1
  %i.bt = add nuw nsw i64 %i.bm, 12               ; 5 uses
  %.val441 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val441, i64 %i.bt
  %.0.copyload.i488 = load i64, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i488) #13, !srcloc !33
  %.val455 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.val455, i64 %i.bt
  store i64 0, ptr %i.bv, align 1
  %.val388 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.val388, i64 %i.bm
  %.0.copyload.i489 = load i32, ptr %i.bw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i489) #13, !srcloc !14
  %.val387 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.val387, i64 %i.ak
  %.0.copyload.i490 = load i32, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i490) #13, !srcloc !14
  %.val420 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.val420, i64 %i.bm
  store i32 %.0.copyload.i490, ptr %i.by, align 1
  %.val440 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %.val440, i64 %i.bn
  %.0.copyload.i491 = load i64, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i491) #13, !srcloc !33
  %.val439 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.val439, i64 %i.al
  %.0.copyload.i492 = load i64, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i492) #13, !srcloc !33
  %.val454 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.val454, i64 %i.bn
  store i64 %.0.copyload.i492, ptr %i.cb, align 1
  %.val386 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.val386, i64 %i.ar
  %.0.copyload.i493 = load i32, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i493) #13, !srcloc !14
  %.val419 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %.val419, i64 %i.bt
  store i32 %.0.copyload.i493, ptr %i.cd, align 1
  %.val385 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.val385, i64 %i.bd
  %.0.copyload.i494 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i494) #13, !srcloc !14
  %i.cf = add nuw nsw i64 %i.bm, 16               ; 2 uses
  %.val418 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.val418, i64 %i.cf
  store i32 %.0.copyload.i494, ptr %i.cg, align 1
  %.val384 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.val384, i64 %i.ao
  %.0.copyload.i495 = load i32, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i495) #13, !srcloc !14
  %.val417 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.bq
  store i32 %.0.copyload.i495, ptr %i.ci, align 1
  %.val416 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.ao
  store i32 %.0.copyload.i487, ptr %i.cj, align 1
  %.val453 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.val453, i64 %i.ar
  store i64 %.0.copyload.i488, ptr %i.ck, align 1
  %.val452 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.val452, i64 %i.al
  store i64 %.0.copyload.i491, ptr %i.cl, align 1
  %.val415 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.ak
  store i32 %.0.copyload.i489, ptr %i.cm, align 1
  %.val383 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.val383, i64 %i.bn
  %.0.copyload.i496 = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i496) #13, !srcloc !14
  %i.co = zext i32 %1 to i64                      ; 6 uses
  %i.cp = add nuw nsw i64 %i.co, 4                ; 3 uses
  %.val382 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.val382, i64 %i.cp
  %.0.copyload.i497 = load i32, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i497) #13, !srcloc !14
  %.not376 = icmp ult i32 %.0.copyload.i496, %.0.copyload.i497
  br i1 %.not376, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cr = add nuw nsw i32 %i.a, 3
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cs = add nuw nsw i64 %i.co, 20               ; 3 uses
  %.val381 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.val381, i64 %i.cs
  %.0.copyload.i498 = load i32, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i498) #13, !srcloc !14
  %.val414 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.cs
  store i32 0, ptr %i.cu, align 1
  %i.cv = add nuw nsw i64 %i.co, 12               ; 3 uses
  %.val438 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.cv
  %.0.copyload.i499 = load i64, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i499) #13, !srcloc !33
  %.val451 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.val451, i64 %i.cv
  store i64 0, ptr %i.cx, align 1
  %.val380 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.co
  %.0.copyload.i500 = load i32, ptr %i.cy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i500) #13, !srcloc !14
  %.val379 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.bm
  %.0.copyload.i501 = load i32, ptr %i.cz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i501) #13, !srcloc !14
  %.val413 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.co
  store i32 %.0.copyload.i501, ptr %i.da, align 1
  %.val437 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.db = getelementptr inbounds nuw i8, ptr %.val437, i64 %i.cp
  %.0.copyload.i502 = load i64, ptr %i.db, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i502) #13, !srcloc !33
  %.val436 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.val436, i64 %i.bn
  %.0.copyload.i503 = load i64, ptr %i.dc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i503) #13, !srcloc !33
  %.val450 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %.val450, i64 %i.cp
  store i64 %.0.copyload.i503, ptr %i.dd, align 1
  %.val378 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.val378, i64 %i.bt
  %.0.copyload.i504 = load i32, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i504) #13, !srcloc !14
  %.val412 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.cv
  store i32 %.0.copyload.i504, ptr %i.df, align 1
  %.val377 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.cf
  %.0.copyload.i505 = load i32, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i505) #13, !srcloc !14
  %.val411 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.co
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 %.0.copyload.i505, ptr %i.di, align 1
  %.val = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %.0.copyload.i506 = load i32, ptr %i.dj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i506) #13, !srcloc !14
  %.val410 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.cs
  store i32 %.0.copyload.i506, ptr %i.dk, align 1
  %.val409 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.bq
  store i32 %.0.copyload.i498, ptr %i.dl, align 1
  %.val449 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.val449, i64 %i.bt
  store i64 %.0.copyload.i499, ptr %i.dm, align 1
  %.val448 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.val448, i64 %i.bn
  store i64 %.0.copyload.i502, ptr %i.dn, align 1
  %.val408 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.bm
  store i32 %.0.copyload.i500, ptr %i.do, align 1
  %i.dp = add nuw nsw i32 %i.a, 4
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ %i.an, %bb.c ], [ %i.bp, %bb.e ], [ %i.cr, %bb.g ], [ %i.dp, %bb.h ], [ %i.a, %bb.a ]
  ret i32 %.0
}

declare i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Chermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.c = add i32 %i.b, -64                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 631 uses
  %i.e = zext i32 %i.c to i64                     ; 23 uses
  %i.f = add nuw nsw i64 %i.e, 32                 ; 18 uses
  %i.g = add nuw nsw i64 %i.e, 24                 ; 21 uses
  %i.h = add nuw nsw i64 %i.e, 11                 ; 12 uses
  %i.i = add nuw nsw i64 %i.e, 8                  ; 15 uses
  br label %.backedge5674

.backedge5674:                                    ; preds = %.backedge5674.backedge, %bb.a
  %.04298 = phi i32 [ %1, %bb.a ], [ %.04275, %.backedge5674.backedge ]
  %.04296 = phi i32 [ %2, %bb.a ], [ %.64286, %.backedge5674.backedge ] ; 15 uses
  %.04287 = phi i32 [ %3, %bb.a ], [ %i.afb, %.backedge5674.backedge ]
  %i.j = add i32 %.04296, -16
  %i.k = add i32 %.04296, -8
  %i.l = add i32 %.04296, -9
  %i.m = add i32 %.04296, -20                     ; 3 uses
  %i.n = add i32 %.04296, -32
  %i.o = add i32 %.04296, -72                     ; 2 uses
  %i.p = add i32 %.04296, -36                     ; 13 uses
  %i.q = zext i32 %i.n to i64
  %i.r = zext i32 %i.p to i64                     ; 13 uses
  %i.s = zext i32 %i.j to i64                     ; 4 uses
  %i.t = zext i32 %i.l to i64                     ; 8 uses
  %i.u = zext i32 %i.m to i64                     ; 7 uses
  %i.v = add nuw nsw i64 %i.r, 8                  ; 4 uses
  %i.w = zext i32 %i.k to i64                     ; 2 uses
  br label %.loopexit5664

.loopexit5664:                                    ; preds = %.loopexit5664.backedge, %.backedge5674
  %.24289 = phi i32 [ %.04287, %.backedge5674 ], [ %i.afb, %.loopexit5664.backedge ] ; 2 uses
  %.04275 = phi i32 [ %.04298, %.backedge5674 ], [ %.04275.be, %.loopexit5664.backedge ] ; 46 uses
  %i.x = sub i32 %.04296, %.04275                 ; 4 uses
  %i.y = sdiv i32 %i.x, 36                        ; 6 uses
  switch i32 %i.y, label %bb.o [
    i32 0, label %.loopexit
    i32 1, label %.loopexit
    i32 2, label %bb.b
    i32 3, label %bb.ew
    i32 4, label %bb.m
    i32 5, label %bb.n
  ]

bb.b:                                             ; preds = %.loopexit5664
  %.val4845 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val4845, i64 %i.r
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.0.copyload.i = load i32, ptr %i.aa, align 1   ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %.val4844 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4844, i64 %i.r
  %.0.copyload.i5249 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5249) #13, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i5249, 0
  %.not4334 = icmp eq i32 %.0.copyload.i, 0
  %or.cond = select i1 %.not, i1 %.not4334, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val4843 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4843, i64 %i.s
  %.0.copyload.i5250 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5250) #13, !srcloc !14
  %.val4959 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4959, i64 %i.t
  %.0.copyload.i5251 = load i8, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5251) #13, !srcloc !31
  %i.ae = zext i8 %.0.copyload.i5251 to i32
  %.not4335 = icmp sgt i8 %.0.copyload.i5251, -1  ; 2 uses
  %i.af = select i1 %.not4335, i32 %i.ae, i32 %.0.copyload.i5250
  %.not4336 = icmp eq i32 %i.af, 23
  br i1 %.not4336, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val4842 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4842, i64 %i.u
  %.0.copyload.i5252 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5252) #13, !srcloc !14
  %i.ah = select i1 %.not4335, i32 %i.m, i32 %.0.copyload.i5252
  %i.ai = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.ah, i32 noundef 71264, i32 noundef 23) #13
  %.not4337 = icmp eq i32 %i.ai, 0
  br i1 %.not4337, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.aj = zext i32 %.04275 to i64                 ; 15 uses
  %.val4841 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4841, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.0.copyload.i5253 = load i32, ptr %i.al, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5253) #13, !srcloc !14
  %.val4840 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val4840, i64 %i.aj
  %.0.copyload.i5254 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5254) #13, !srcloc !14
  %.not4338 = icmp eq i32 %.0.copyload.i5254, 0
  %.not4339 = icmp eq i32 %.0.copyload.i5253, 0
  %or.cond4585 = select i1 %.not4338, i1 %.not4339, i1 false
  br i1 %or.cond4585, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.val4839 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.val4839, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %.0.copyload.i5255 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5255) #13, !srcloc !14
  %.val4958 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val4958, i64 %i.aj
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 27
  %.0.copyload.i5256 = load i8, ptr %i.aq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5256) #13, !srcloc !31
  %i.ar = zext i8 %.0.copyload.i5256 to i32
  %i.as = icmp slt i8 %.0.copyload.i5256, 0       ; 2 uses
  %i.at = select i1 %i.as, i32 %.0.copyload.i5255, i32 %i.ar
  %.not4340 = icmp eq i32 %i.at, 23
  br i1 %.not4340, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val4838 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val4838, i64 %i.aj
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.0.copyload.i5257 = load i32, ptr %i.av, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5257) #13, !srcloc !14
  %i.aw = add i32 %.04275, 16
  %i.ax = select i1 %i.as, i32 %.0.copyload.i5257, i32 %i.aw
  %i.ay = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.ax, i32 noundef 71264, i32 noundef 23) #13
  %.not4341 = icmp eq i32 %i.ay, 0
  br i1 %.not4341, label %bb.j, label %.loopexit

bb.h:                                             ; preds = %bb.f, %bb.e
  %.not4342 = icmp ugt i32 %.0.copyload.i5253, %.0.copyload.i
  br i1 %.not4342, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %.val4957 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.val4957, i64 %i.aj
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 27
  %.0.copyload.i5258 = load i8, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5258) #13, !srcloc !31
  %.val4837 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.val4837, i64 %i.aj
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.0.copyload.i5259 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5259) #13, !srcloc !14
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %.04276 = phi i32 [ %.0.copyload.i5259, %bb.i ], [ %.0.copyload.i5257, %bb.g ]
  %.04271 = phi i8 [ %.0.copyload.i5258, %bb.i ], [ %.0.copyload.i5256, %bb.g ]
  %i.bd = add nuw nsw i64 %i.aj, 8                ; 2 uses
  %.val5106 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val5106, i64 %i.bd
  %.0.copyload.i5260 = load i64, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5260) #13, !srcloc !33
  %.val5230 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val5230, i64 %i.f
  store i64 %.0.copyload.i5260, ptr %i.bf, align 1
  %.val5105 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val5105, i64 %i.aj
  %.0.copyload.i5261 = load i64, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5261) #13, !srcloc !33
  %.val5229 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.val5229, i64 %i.g
  store i64 %.0.copyload.i5261, ptr %i.bh, align 1
  %.val4836 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val4836, i64 %i.aj
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 23
  %.0.copyload.i5262 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5262) #13, !srcloc !14
  %.val4912 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val4912, i64 %i.h
  store i32 %.0.copyload.i5262, ptr %i.bk, align 1
  %.val4835 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val4835, i64 %i.aj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %.0.copyload.i5263 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5263) #13, !srcloc !14
  %.val4911 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val4911, i64 %i.i
  store i32 %.0.copyload.i5263, ptr %i.bn, align 1
  %i.bo = add nuw nsw i64 %i.aj, 24               ; 2 uses
  %.val4910 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.val4910, i64 %i.bo
  store i32 0, ptr %i.bp, align 1
  %i.bq = add nuw nsw i64 %i.aj, 16               ; 2 uses
  %.val5228 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val5228, i64 %i.bq
  store i64 0, ptr %i.br, align 1
  %.val5104 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.val5104, i64 %i.v
  %.0.copyload.i5264 = load i64, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5264) #13, !srcloc !33
  %.val5227 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.val5227, i64 %i.bd
  store i64 %.0.copyload.i5264, ptr %i.bt, align 1
  %.val5103 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val5103, i64 %i.r
  %.0.copyload.i5265 = load i64, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5265) #13, !srcloc !33
  %.val5226 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.val5226, i64 %i.aj
  store i64 %.0.copyload.i5265, ptr %i.bv, align 1
  %.val4834 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.val4834, i64 %i.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.0.copyload.i5266 = load i32, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5266) #13, !srcloc !14
  %.val4909 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.val4909, i64 %i.bo
  store i32 %.0.copyload.i5266, ptr %i.by, align 1
  %i.bz = add nuw nsw i64 %i.r, 16                ; 4 uses
  %.val5102 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.val5102, i64 %i.bz
  %.0.copyload.i5267 = load i64, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5267) #13, !srcloc !33
  %.val5225 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.val5225, i64 %i.bq
  store i64 %.0.copyload.i5267, ptr %i.cb, align 1
  %i.cc = add nuw nsw i64 %i.aj, 28               ; 2 uses
  %.val5101 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %.val5101, i64 %i.cc
  %.0.copyload.i5268 = load i64, ptr %i.cd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5268) #13, !srcloc !33
  %.val4993 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.val4993, i64 %i.bz
  store i8 0, ptr %i.ce, align 1
  %.val4992 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %.val4992, i64 %i.t
  store i8 0, ptr %i.cf, align 1
  %i.cg = add nuw nsw i64 %i.r, 28                ; 2 uses
  %.val5100 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.val5100, i64 %i.cg
  %.0.copyload.i5269 = load i64, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5269) #13, !srcloc !33
  %.val5224 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %.val5224, i64 %i.cc
  store i64 %.0.copyload.i5269, ptr %i.ci, align 1
  %.val5099 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.val5099, i64 %i.f
  %.0.copyload.i5270 = load i64, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5270) #13, !srcloc !33
  %.val5223 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.val5223, i64 %i.v
  store i64 %.0.copyload.i5270, ptr %i.ck, align 1
  %.val5098 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.val5098, i64 %i.g
  %.0.copyload.i5271 = load i64, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5271) #13, !srcloc !33
  %.val5222 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.val5222, i64 %i.r
  store i64 %.0.copyload.i5271, ptr %i.cm, align 1
  %.val5248 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.val5248, i64 %i.t
  %.0.copyload.i5272 = load i8, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5272) #13, !srcloc !36
  %i.co = icmp slt i8 %.0.copyload.i5272, 0
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val4833 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.val4833, i64 %i.bz
  %.0.copyload.i5273 = load i32, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5273) #13, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i5273) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.val4908 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.val4908, i64 %i.bz
  store i32 %.04276, ptr %i.cq, align 1
  %.val4832 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %.val4832, i64 %i.h
  %.0.copyload.i5274 = load i32, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5274) #13, !srcloc !14
  %.val4907 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.val4907, i64 %i.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 23
  store i32 %.0.copyload.i5274, ptr %i.ct, align 1
  %.val4831 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.val4831, i64 %i.i
  %.0.copyload.i5275 = load i32, ptr %i.cu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5275) #13, !srcloc !14
  %.val4906 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.val4906, i64 %i.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  store i32 %.0.copyload.i5275, ptr %i.cw, align 1
  %.val4991 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.val4991, i64 %i.t
  store i8 %.04271, ptr %i.cx, align 1
  %.val5221 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %.val5221, i64 %i.cg
  store i64 %.0.copyload.i5268, ptr %i.cy, align 1
  br label %.loopexit

bb.m:                                             ; preds = %.loopexit5664
  %i.cz = add i32 %.04275, 36
  %i.da = add i32 %.04275, 72
  %i.db = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x29(ptr noundef nonnull %0, i32 noundef %.04275, i32 noundef %i.cz, i32 noundef %i.da, i32 noundef %i.p) ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %.loopexit5664
  %i.dc = add i32 %.04275, 36
  %i.dd = add i32 %.04275, 72
  %i.de = add i32 %.04275, 108
  %i.df = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x29(ptr noundef nonnull %0, i32 noundef %.04275, i32 noundef %i.dc, i32 noundef %i.dd, i32 noundef %i.de, i32 noundef %i.p) ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %.loopexit5664
  %i.dg = icmp slt i32 %i.x, 252
  br i1 %i.dg, label %bb.p, label %4

bb.p:                                             ; preds = %bb.o
  %i.dh = add i32 %.04275, 36
  %i.di = add i32 %.04275, 72                     ; 2 uses
  %i.dj = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x29(ptr noundef nonnull %0, i32 noundef %.04275, i32 noundef %i.dh, i32 noundef %i.di) ; 0 uses
  %i.dk = add i32 %.04275, 108                    ; 2 uses
  %i.dl = icmp eq i32 %i.dk, %.04296
  br i1 %i.dl, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = add i32 %i.b, -24                       ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 3 uses
  %i.do = add nuw nsw i64 %i.dn, 8                ; 2 uses
  %i.dp = add nuw nsw i64 %i.e, 52                ; 2 uses
  %.pre = zext i32 %.04275 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.ak, %bb.q
  %.24300 = phi i32 [ %i.dk, %bb.q ], [ %i.il, %bb.ak ] ; 5 uses
  %.14277 = phi i32 [ %i.di, %bb.q ], [ %.24300, %bb.ak ] ; 3 uses
  %i.dq = zext i32 %.24300 to i64                 ; 10 uses
  %.val4830 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dr = getelementptr inbounds nuw i8, ptr %.val4830, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %.0.copyload.i5276 = load i32, ptr %i.ds, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5276) #13, !srcloc !14
  %.val4829 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %.val4829, i64 %i.dq
  %.0.copyload.i5277 = load i32, ptr %i.dt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5277) #13, !srcloc !14
  %.not4560 = icmp eq i32 %.0.copyload.i5277, 0
  %.not4561 = icmp eq i32 %.0.copyload.i5276, 0
  %or.cond4586 = select i1 %.not4560, i1 %.not4561, i1 false
  br i1 %or.cond4586, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %.val4828 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %.val4828, i64 %i.dq
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  %.0.copyload.i5278 = load i32, ptr %i.dv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5278) #13, !srcloc !14
  %.val4956 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %.val4956, i64 %i.dq
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 27
  %.0.copyload.i5279 = load i8, ptr %i.dx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5279) #13, !srcloc !31
  %i.dy = zext i8 %.0.copyload.i5279 to i32
  %.not4563 = icmp sgt i8 %.0.copyload.i5279, -1  ; 2 uses
  %i.dz = select i1 %.not4563, i32 %i.dy, i32 %.0.copyload.i5278
  %.not4564 = icmp eq i32 %i.dz, 23
  br i1 %.not4564, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val4827 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ea = getelementptr inbounds nuw i8, ptr %.val4827, i64 %i.dq
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %.0.copyload.i5280 = load i32, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5280) #13, !srcloc !14
  %i.ec = add i32 %.24300, 16
  %i.ed = select i1 %.not4563, i32 %i.ec, i32 %.0.copyload.i5280
  %i.ee = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.ed, i32 noundef 71264, i32 noundef 23) #13
  %.not4565 = icmp eq i32 %i.ee, 0
  br i1 %.not4565, label %bb.ak, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ef = zext i32 %.14277 to i64                 ; 5 uses
  %.val4826 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %.val4826, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %.0.copyload.i5281 = load i32, ptr %i.eh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5281) #13, !srcloc !14
  %.val4825 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %.val4825, i64 %i.ef
  %.0.copyload.i5282 = load i32, ptr %i.ei, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5282) #13, !srcloc !14
  %.not4566 = icmp eq i32 %.0.copyload.i5282, 0
  %.not4567 = icmp eq i32 %.0.copyload.i5281, 0
  %or.cond4587 = select i1 %.not4566, i1 %.not4567, i1 false
  br i1 %or.cond4587, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.val4824 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %.val4824, i64 %i.ef
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %.0.copyload.i5283 = load i32, ptr %i.ek, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5283) #13, !srcloc !14
  %.val4955 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %.val4955, i64 %i.ef
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 27
  %.0.copyload.i5284 = load i8, ptr %i.em, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5284) #13, !srcloc !31
  %i.en = zext i8 %.0.copyload.i5284 to i32
  %.not4569 = icmp sgt i8 %.0.copyload.i5284, -1  ; 2 uses
  %i.eo = select i1 %.not4569, i32 %i.en, i32 %.0.copyload.i5283
  %.not4570 = icmp eq i32 %i.eo, 23
  br i1 %.not4570, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.val4823 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %.val4823, i64 %i.ef
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %.0.copyload.i5285 = load i32, ptr %i.eq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5285) #13, !srcloc !14
  %i.er = add i32 %.14277, 16
  %i.es = select i1 %.not4569, i32 %i.er, i32 %.0.copyload.i5285
  %i.et = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.es, i32 noundef 71264, i32 noundef 23) #13
  %.not4571 = icmp eq i32 %i.et, 0
  br i1 %.not4571, label %bb.y, label %bb.ak

bb.x:                                             ; preds = %bb.v, %bb.u
  %.not4572 = icmp ugt i32 %.0.copyload.i5281, %.0.copyload.i5276
  br i1 %.not4572, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x, %bb.w
  %.val5097 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.eu = getelementptr inbounds nuw i8, ptr %.val5097, i64 %i.dq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.0.copyload.i5286 = load i64, ptr %i.ev, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5286) #13, !srcloc !33
  %.val5220 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ew = getelementptr inbounds nuw i8, ptr %.val5220, i64 %i.f
  store i64 %.0.copyload.i5286, ptr %i.ew, align 1
  %.val5096 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ex = getelementptr inbounds nuw i8, ptr %.val5096, i64 %i.dq
  %.0.copyload.i5287 = load i64, ptr %i.ex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5287) #13, !srcloc !33
  %.val5219 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ey = getelementptr inbounds nuw i8, ptr %.val5219, i64 %i.g
  store i64 %.0.copyload.i5287, ptr %i.ey, align 1
  %i.ez = add nuw nsw i64 %i.dq, 24               ; 2 uses
  %.val4822 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fa = getelementptr inbounds nuw i8, ptr %.val4822, i64 %i.ez
  %.0.copyload.i5288 = load i32, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5288) #13, !srcloc !14
  %.val4905 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %.val4905, i64 %i.do
  store i32 %.0.copyload.i5288, ptr %i.fb, align 1
  %i.fc = add nuw nsw i64 %i.dq, 16               ; 2 uses
  %.val5095 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fd = getelementptr inbounds nuw i8, ptr %.val5095, i64 %i.fc
  %.0.copyload.i5289 = load i64, ptr %i.fd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5289) #13, !srcloc !33
  %.val5218 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fe = getelementptr inbounds nuw i8, ptr %.val5218, i64 %i.dn
  store i64 %.0.copyload.i5289, ptr %i.fe, align 1
  %.val4904 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %.val4904, i64 %i.ez
  store i32 0, ptr %i.ff, align 1
  %.val5217 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fg = getelementptr inbounds nuw i8, ptr %.val5217, i64 %i.fc
  store i64 0, ptr %i.fg, align 1
  %.val5094 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fh = getelementptr inbounds nuw i8, ptr %.val5094, i64 %i.dq
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 28
  %.0.copyload.i5290 = load i64, ptr %i.fi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5290) #13, !srcloc !33
  %.val5216 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %.val5216, i64 %i.dp
  store i64 %.0.copyload.i5290, ptr %i.fj, align 1
  %.val4821 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fk = getelementptr inbounds nuw i8, ptr %.val4821, i64 %i.e
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 28
  %.0.copyload.i5291 = load i32, ptr %i.fl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5291) #13, !srcloc !14
  %.val4820 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fm = getelementptr inbounds nuw i8, ptr %.val4820, i64 %i.g
  %.0.copyload.i5292 = load i32, ptr %i.fm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5292) #13, !srcloc !14
  %i.fn = or i32 %.0.copyload.i5292, %.0.copyload.i5291
  %.not4573 = icmp eq i32 %i.fn, 0
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.y
  %.04280 = phi i32 [ %.24300, %bb.y ], [ %.24278, %.backedge.backedge ]
  %.24278 = phi i32 [ %.14277, %bb.y ], [ %i.he, %.backedge.backedge ] ; 8 uses
  %i.fo = zext i32 %.24278 to i64                 ; 9 uses
  %.val5093 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fp = getelementptr inbounds nuw i8, ptr %.val5093, i64 %i.fo
  %.0.copyload.i5293 = load i64, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5293) #13, !srcloc !33
  %i.fq = zext i32 %.04280 to i64                 ; 7 uses
  %.val5215 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fr = getelementptr inbounds nuw i8, ptr %.val5215, i64 %i.fq
  store i64 %.0.copyload.i5293, ptr %i.fr, align 1
  %.val5092 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %.val5092, i64 %i.fo
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.0.copyload.i5294 = load i64, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5294) #13, !srcloc !33
  %.val5214 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %.val5214, i64 %i.fq
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i64 %.0.copyload.i5294, ptr %i.fv, align 1
  %.val5247 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %.val5247, i64 %i.fq
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 27
  %.0.copyload.i5295 = load i8, ptr %i.fx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5295) #13, !srcloc !36
  %i.fy = icmp slt i8 %.0.copyload.i5295, 0
  br i1 %i.fy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.backedge
  %.val4819 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %.val4819, i64 %i.fq
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %.0.copyload.i5296 = load i32, ptr %i.ga, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5296) #13, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i5296) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.backedge
  %i.gb = add nuw nsw i64 %i.fo, 16               ; 4 uses
  %.val5091 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gc = getelementptr inbounds nuw i8, ptr %.val5091, i64 %i.gb
  %.0.copyload.i5297 = load i64, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5297) #13, !srcloc !33
  %.val5213 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %.val5213, i64 %i.fq
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i64 %.0.copyload.i5297, ptr %i.ge, align 1
  %i.gf = add nuw nsw i64 %i.fo, 24               ; 2 uses
  %.val4818 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gg = getelementptr inbounds nuw i8, ptr %.val4818, i64 %i.gf
  %.0.copyload.i5298 = load i32, ptr %i.gg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5298) #13, !srcloc !14
  %.val4903 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %.val4903, i64 %i.fq
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  store i32 %.0.copyload.i5298, ptr %i.gi, align 1
  %.val4990 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gj = getelementptr inbounds nuw i8, ptr %.val4990, i64 %i.fo
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 27
  store i8 0, ptr %i.gk, align 1
  %.val4989 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gl = getelementptr inbounds nuw i8, ptr %.val4989, i64 %i.gb
  store i8 0, ptr %i.gl, align 1
  %.val5090 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gm = getelementptr inbounds nuw i8, ptr %.val5090, i64 %i.fo
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %.0.copyload.i5299 = load i64, ptr %i.gn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5299) #13, !srcloc !33
  %.val5212 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.go = getelementptr inbounds nuw i8, ptr %.val5212, i64 %i.fq
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 28
  store i64 %.0.copyload.i5299, ptr %i.gp, align 1
  %i.gq = icmp eq i32 %.24278, %.04275
  br i1 %i.gq, label %split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not4573, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.val4817 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %.val4817, i64 %i.e
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 44
  %.0.copyload.i5300 = load i32, ptr %i.gs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5300) #13, !srcloc !14
  %.val4954 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gt = getelementptr inbounds nuw i8, ptr %.val4954, i64 %i.e
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 51
  %.0.copyload.i5301 = load i8, ptr %i.gu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5301) #13, !srcloc !31
  %i.gv = zext i8 %.0.copyload.i5301 to i32
  %.not4575 = icmp sgt i8 %.0.copyload.i5301, -1  ; 2 uses
  %i.gw = select i1 %.not4575, i32 %i.gv, i32 %.0.copyload.i5300
  %.not4576 = icmp eq i32 %i.gw, 23
  br i1 %.not4576, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.val4816 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gx = getelementptr inbounds nuw i8, ptr %.val4816, i64 %i.e
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %.0.copyload.i5302 = load i32, ptr %i.gy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5302) #13, !srcloc !14
  %i.gz = select i1 %.not4575, i32 %i.dm, i32 %.0.copyload.i5302
  %i.ha = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.gz, i32 noundef 71264, i32 noundef 23) #13
  %.not4577 = icmp eq i32 %i.ha, 0
  br i1 %.not4577, label %split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.hb = add i32 %.24278, -32
  %i.hc = zext i32 %i.hb to i64
  %.val4815 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hd = getelementptr inbounds nuw i8, ptr %.val4815, i64 %i.hc
  %.0.copyload.i5303 = load i32, ptr %i.hd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5303) #13, !srcloc !14
  %i.he = add i32 %.24278, -36                    ; 2 uses
  %i.hf = zext i32 %i.he to i64
  %.val4814 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hg = getelementptr inbounds nuw i8, ptr %.val4814, i64 %i.hf
  %.0.copyload.i5304 = load i32, ptr %i.hg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5304) #13, !srcloc !14
  %.not4578 = icmp eq i32 %.0.copyload.i5304, 0
  %.not4579 = icmp eq i32 %.0.copyload.i5303, 0
  %or.cond4588 = select i1 %.not4578, i1 %.not4579, i1 false
  br i1 %or.cond4588, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.hh = add i32 %.24278, -16
  %i.hi = zext i32 %i.hh to i64
  %.val4813 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hj = getelementptr inbounds nuw i8, ptr %.val4813, i64 %i.hi
  %.0.copyload.i5305 = load i32, ptr %i.hj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5305) #13, !srcloc !14
  %i.hk = add i32 %.24278, -9
  %i.hl = zext i32 %i.hk to i64
  %.val4953 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hm = getelementptr inbounds nuw i8, ptr %.val4953, i64 %i.hl
  %.0.copyload.i5306 = load i8, ptr %i.hm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5306) #13, !srcloc !31
  %i.hn = zext i8 %.0.copyload.i5306 to i32
  %.not4581 = icmp sgt i8 %.0.copyload.i5306, -1  ; 2 uses
  %i.ho = select i1 %.not4581, i32 %i.hn, i32 %.0.copyload.i5305
  %.not4582 = icmp eq i32 %i.ho, 23
  br i1 %.not4582, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hp = add i32 %.24278, -20                    ; 2 uses
  %i.hq = zext i32 %i.hp to i64
  %.val4812 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hr = getelementptr inbounds nuw i8, ptr %.val4812, i64 %i.hq
  %.0.copyload.i5307 = load i32, ptr %i.hr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5307) #13, !srcloc !14
  %i.hs = select i1 %.not4581, i32 %i.hp, i32 %.0.copyload.i5307
  %i.ht = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.hs, i32 noundef 71264, i32 noundef 23) #13
  %.not4583 = icmp eq i32 %i.ht, 0
  br i1 %.not4583, label %.backedge.backedge, label %split

.backedge.backedge:                               ; preds = %bb.ag, %bb.ah
  br label %.backedge

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.hu = icmp ult i32 %.0.copyload.i5291, %.0.copyload.i5303
  br i1 %i.hu, label %.backedge.backedge, label %split

split:                                            ; preds = %bb.ad, %bb.ag, %bb.ah, %bb.aa
  %.pre-phi5923 = phi i64 [ %.pre, %bb.aa ], [ %i.fo, %bb.ah ], [ %i.fo, %bb.ag ], [ %i.fo, %bb.ad ] ; 4 uses
  %.val5089 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hv = getelementptr inbounds nuw i8, ptr %.val5089, i64 %i.g
  %.0.copyload.i5308 = load i64, ptr %i.hv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5308) #13, !srcloc !33
  %.val5211 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hw = getelementptr inbounds nuw i8, ptr %.val5211, i64 %.pre-phi5923
  store i64 %.0.copyload.i5308, ptr %i.hw, align 1
  %.val5088 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hx = getelementptr inbounds nuw i8, ptr %.val5088, i64 %i.f
  %.0.copyload.i5309 = load i64, ptr %i.hx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5309) #13, !srcloc !33
  %.val5210 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hy = getelementptr inbounds nuw i8, ptr %.val5210, i64 %.pre-phi5923
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store i64 %.0.copyload.i5309, ptr %i.hz, align 1
  %.val5246 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ia = getelementptr inbounds nuw i8, ptr %.val5246, i64 %.pre-phi5923
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 27
  %.0.copyload.i5310 = load i8, ptr %i.ib, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5310) #13, !srcloc !36
  %i.ic = icmp slt i8 %.0.copyload.i5310, 0
  br i1 %i.ic, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %split
  %.val4811 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.id = getelementptr inbounds nuw i8, ptr %.val4811, i64 %i.gb
  %.0.copyload.i5311 = load i32, ptr %i.id, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5311) #13, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i5311) #13
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %split
  %.val5087 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ie = getelementptr inbounds nuw i8, ptr %.val5087, i64 %i.dn
  %.0.copyload.i5312 = load i64, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5312) #13, !srcloc !33
  %.val5209 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.if = getelementptr inbounds nuw i8, ptr %.val5209, i64 %i.gb
  store i64 %.0.copyload.i5312, ptr %i.if, align 1
  %.val4810 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ig = getelementptr inbounds nuw i8, ptr %.val4810, i64 %i.do
  %.0.copyload.i5313 = load i32, ptr %i.ig, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5313) #13, !srcloc !14
  %.val4902 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ih = getelementptr inbounds nuw i8, ptr %.val4902, i64 %i.gf
  store i32 %.0.copyload.i5313, ptr %i.ih, align 1
  %.val5086 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ii = getelementptr inbounds nuw i8, ptr %.val5086, i64 %i.dp
  %.0.copyload.i5314 = load i64, ptr %i.ii, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5314) #13, !srcloc !33
  %.val5208 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ij = getelementptr inbounds nuw i8, ptr %.val5208, i64 %.pre-phi5923
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 28
  store i64 %.0.copyload.i5314, ptr %i.ik, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.x, %bb.w, %bb.t, %bb.aj
  %i.il = add i32 %.24300, 36                     ; 2 uses
  %.not4584 = icmp eq i32 %i.il, %.04296
  br i1 %.not4584, label %.loopexit, label %bb.r

4:                                                ; preds = %bb.o
  %.not4343 = icmp eq i32 %.24289, 0
  br i1 %.not4343, label %bb.al, label %bb.ec

bb.al:                                            ; preds = %4
  %i.im = icmp eq i32 %.04296, %.04275
  br i1 %i.im, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.in = add i32 %i.b, -24                       ; 3 uses
  %i.io = add nsw i32 %i.y, -2                    ; 2 uses
  %i.ip = lshr i32 %i.io, 1
  %i.iq = zext i32 %i.in to i64                   ; 5 uses
  %i.ir = add nuw nsw i64 %i.iq, 8                ; 4 uses
  %i.is = add nuw nsw i64 %i.e, 52                ; 4 uses
  %i.it = lshr i32 %i.io, 1
  %i.iu = zext nneg i32 %i.it to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.bz, %bb.am
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bz ], [ %i.iu, %bb.am ] ; 3 uses
  %i.iv = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.iw = shl i32 %i.iv, 1                        ; 2 uses
  %i.ix = or disjoint i32 %i.iw, 1                ; 5 uses
  %i.iy = mul i32 %i.ix, 36
  %i.iz = add i32 %i.iy, %.04275                  ; 8 uses
  %i.ja = add i32 %i.iw, 2                        ; 2 uses
  %.not4455 = icmp sgt i32 %i.y, %i.ja
  br i1 %.not4455, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.jb = zext i32 %i.iz to i64                   ; 9 uses
  %.val4809 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jc = getelementptr inbounds nuw i8, ptr %.val4809, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %.0.copyload.i5315 = load i32, ptr %i.jd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5315) #13, !srcloc !14
  %.val4808 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.je = getelementptr inbounds nuw i8, ptr %.val4808, i64 %i.jb
  %.0.copyload.i5316 = load i32, ptr %i.je, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5316) #13, !srcloc !14
  %.not4456 = icmp eq i32 %.0.copyload.i5316, 0
  %.not4457 = icmp eq i32 %.0.copyload.i5315, 0
  %or.cond4589 = select i1 %.not4456, i1 %.not4457, i1 false
  br i1 %or.cond4589, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %.val4807 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jf = getelementptr inbounds nuw i8, ptr %.val4807, i64 %i.jb
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 20
  %.0.copyload.i5317 = load i32, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5317) #13, !srcloc !14
  %.val4952 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jh = getelementptr inbounds nuw i8, ptr %.val4952, i64 %i.jb
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 27
  %.0.copyload.i5318 = load i8, ptr %i.ji, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5318) #13, !srcloc !31
  %i.jj = zext i8 %.0.copyload.i5318 to i32
  %.not4459 = icmp sgt i8 %.0.copyload.i5318, -1  ; 2 uses
  %i.jk = select i1 %.not4459, i32 %i.jj, i32 %.0.copyload.i5317
  %.not4460 = icmp eq i32 %i.jk, 23
  br i1 %.not4460, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.val4806 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jl = getelementptr inbounds nuw i8, ptr %.val4806, i64 %i.jb
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %.0.copyload.i5319 = load i32, ptr %i.jm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5319) #13, !srcloc !14
  %i.jn = add i32 %i.iz, 16
  %i.jo = select i1 %.not4459, i32 %i.jn, i32 %.0.copyload.i5319
  %i.jp = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.jo, i32 noundef 71264, i32 noundef 23) #13
  %.not4461 = icmp eq i32 %i.jp, 0
  br i1 %.not4461, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.val4805 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jq = getelementptr inbounds nuw i8, ptr %.val4805, i64 %i.jb
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %.0.copyload.i5320 = load i32, ptr %i.jr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5320) #13, !srcloc !14
  %.val4804 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.js = getelementptr inbounds nuw i8, ptr %.val4804, i64 %i.jb
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 36
  %.0.copyload.i5321 = load i32, ptr %i.jt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5321) #13, !srcloc !14
  %.not4462 = icmp eq i32 %.0.copyload.i5321, 0
  %.not4463 = icmp eq i32 %.0.copyload.i5320, 0
  %or.cond4590 = select i1 %.not4462, i1 %.not4463, i1 false
  br i1 %or.cond4590, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %.val4803 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ju = getelementptr inbounds nuw i8, ptr %.val4803, i64 %i.jb
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 56
  %.0.copyload.i5322 = load i32, ptr %i.jv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5322) #13, !srcloc !14
  %.val4951 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jw = getelementptr inbounds nuw i8, ptr %.val4951, i64 %i.jb
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 63
  %.0.copyload.i5323 = load i8, ptr %i.jx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5323) #13, !srcloc !31
  %i.jy = zext i8 %.0.copyload.i5323 to i32
  %.not4465 = icmp sgt i8 %.0.copyload.i5323, -1  ; 2 uses
  %i.jz = select i1 %.not4465, i32 %i.jy, i32 %.0.copyload.i5322
  %.not4466 = icmp eq i32 %i.jz, 23
  br i1 %.not4466, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ka = add i32 %i.iz, 52                       ; 2 uses
  %i.kb = zext i32 %i.ka to i64
  %.val4802 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kc = getelementptr inbounds nuw i8, ptr %.val4802, i64 %i.kb
  %.0.copyload.i5324 = load i32, ptr %i.kc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5324) #13, !srcloc !14
  %i.kd = select i1 %.not4465, i32 %i.ka, i32 %.0.copyload.i5324
  %i.ke = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.kd, i32 noundef 71264, i32 noundef 23) #13
  %.not4467 = icmp eq i32 %i.ke, 0
  br i1 %.not4467, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.kf = icmp ult i32 %.0.copyload.i5315, %.0.copyload.i5320
  br i1 %i.kf, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.kg = add i32 %i.iz, 36
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.aq, %bb.an, %bb.av
  %.44302 = phi i32 [ %i.iz, %bb.an ], [ %i.kg, %bb.av ], [ %i.iz, %bb.at ], [ %i.iz, %bb.aq ], [ %i.iz, %bb.au ] ; 3 uses
  %.34290 = phi i32 [ %i.ix, %bb.an ], [ %i.ja, %bb.av ], [ %i.ix, %bb.at ], [ %i.ix, %bb.aq ], [ %i.ix, %bb.au ]
  %i.kh = mul i32 %i.iv, 36
  %i.ki = add i32 %i.kh, %.04275                  ; 4 uses
  %i.kj = zext i32 %.44302 to i64                 ; 5 uses
  %.val4801 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %.val4801, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %.0.copyload.i5325 = load i32, ptr %i.kl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5325) #13, !srcloc !14
  %.val4800 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.km = getelementptr inbounds nuw i8, ptr %.val4800, i64 %i.kj
  %.0.copyload.i5326 = load i32, ptr %i.km, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5326) #13, !srcloc !14
  %.not4468 = icmp eq i32 %.0.copyload.i5326, 0
  %.not4469 = icmp eq i32 %.0.copyload.i5325, 0
  %or.cond4591 = select i1 %.not4468, i1 %.not4469, i1 false
  br i1 %or.cond4591, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %.val4799 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kn = getelementptr inbounds nuw i8, ptr %.val4799, i64 %i.kj
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 20
  %.0.copyload.i5327 = load i32, ptr %i.ko, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5327) #13, !srcloc !14
  %.val4950 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kp = getelementptr inbounds nuw i8, ptr %.val4950, i64 %i.kj
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 27
  %.0.copyload.i5328 = load i8, ptr %i.kq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5328) #13, !srcloc !31
  %i.kr = zext i8 %.0.copyload.i5328 to i32
  %.not4471 = icmp sgt i8 %.0.copyload.i5328, -1  ; 2 uses
  %i.ks = select i1 %.not4471, i32 %i.kr, i32 %.0.copyload.i5327
  %.not4472 = icmp eq i32 %i.ks, 23
  br i1 %.not4472, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %.val4798 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kt = getelementptr inbounds nuw i8, ptr %.val4798, i64 %i.kj
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %.0.copyload.i5329 = load i32, ptr %i.ku, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5329) #13, !srcloc !14
  %i.kv = add i32 %.44302, 16
  %i.kw = select i1 %.not4471, i32 %i.kv, i32 %.0.copyload.i5329
  %i.kx = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.kw, i32 noundef 71264, i32 noundef 23) #13
  %.not4473 = icmp eq i32 %i.kx, 0
  br i1 %.not4473, label %._crit_edge, label %bb.az

._crit_edge:                                      ; preds = %bb.ay
  %.pre5924 = zext i32 %i.ki to i64
  br label %bb.bd

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.ky = zext i32 %i.ki to i64                   ; 7 uses
  %.val4797 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kz = getelementptr inbounds nuw i8, ptr %.val4797, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %.0.copyload.i5330 = load i32, ptr %i.la, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5330) #13, !srcloc !14
  %.val4796 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lb = getelementptr inbounds nuw i8, ptr %.val4796, i64 %i.ky
  %.0.copyload.i5331 = load i32, ptr %i.lb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5331) #13, !srcloc !14
  %.not4474 = icmp eq i32 %.0.copyload.i5331, 0
  %.not4475 = icmp eq i32 %.0.copyload.i5330, 0
  %or.cond4592 = select i1 %.not4474, i1 %.not4475, i1 false
  br i1 %or.cond4592, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %.val4795 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.lc = getelementptr inbounds nuw i8, ptr %.val4795, i64 %i.ky
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 20
  %.0.copyload.i5332 = load i32, ptr %i.ld, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5332) #13, !srcloc !14
  %.val4949 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.le = getelementptr inbounds nuw i8, ptr %.val4949, i64 %i.ky
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 27
  %.0.copyload.i5333 = load i8, ptr %i.lf, align 1 ; 3 uses
end_hunk_21
begin_hunk_22_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  %.114309 = phi i32 [ %.84306, %.preheader ], [ %.8, %.backedge5656.backedge ]
  %.84295 = phi i32 [ %i.wf, %.preheader ], [ %i.ade, %.backedge5656.backedge ] ; 2 uses
  %.8 = phi i32 [ %i.wh, %.preheader ], [ %i.adg, %.backedge5656.backedge ] ; 5 uses
  %i.acb = zext i32 %.8 to i64                    ; 9 uses
  %.val5046 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.acc = getelementptr inbounds nuw i8, ptr %.val5046, i64 %i.acb
  %.0.copyload.i5461 = load i64, ptr %i.acc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5461) #13, !srcloc !33
  %i.acd = zext i32 %.114309 to i64               ; 7 uses
  %.val5164 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ace = getelementptr inbounds nuw i8, ptr %.val5164, i64 %i.acd
  store i64 %.0.copyload.i5461, ptr %i.ace, align 1
  %.val5045 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.acf = getelementptr inbounds nuw i8, ptr %.val5045, i64 %i.acb
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %.0.copyload.i5462 = load i64, ptr %i.acg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5462) #13, !srcloc !33
  %.val5163 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ach = getelementptr inbounds nuw i8, ptr %.val5163, i64 %i.acd
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  store i64 %.0.copyload.i5462, ptr %i.aci, align 1
  %.val5237 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.acj = getelementptr inbounds nuw i8, ptr %.val5237, i64 %i.acd
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 27
  %.0.copyload.i5463 = load i8, ptr %i.ack, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5463) #13, !srcloc !36
  %i.acl = icmp slt i8 %.0.copyload.i5463, 0
  br i1 %i.acl, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.backedge5656
  %.val4726 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.acm = getelementptr inbounds nuw i8, ptr %.val4726, i64 %i.acd
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 16
  %.0.copyload.i5464 = load i32, ptr %i.acn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5464) #13, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i5464) #13
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.backedge5656
  %i.aco = add nuw nsw i64 %i.acb, 16             ; 2 uses
  %.val5044 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.acp = getelementptr inbounds nuw i8, ptr %.val5044, i64 %i.aco
  %.0.copyload.i5465 = load i64, ptr %i.acp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5465) #13, !srcloc !33
  %.val5162 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.acq = getelementptr inbounds nuw i8, ptr %.val5162, i64 %i.acd
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 16
  store i64 %.0.copyload.i5465, ptr %i.acr, align 1
  %.val4725 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.acs = getelementptr inbounds nuw i8, ptr %.val4725, i64 %i.acb
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 24
  %.0.copyload.i5466 = load i32, ptr %i.act, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5466) #13, !srcloc !14
  %.val4882 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.acu = getelementptr inbounds nuw i8, ptr %.val4882, i64 %i.acd
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 24
  store i32 %.0.copyload.i5466, ptr %i.acv, align 1
  %.val4976 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.acw = getelementptr inbounds nuw i8, ptr %.val4976, i64 %i.acb
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 27
  store i8 0, ptr %i.acx, align 1
  %.val4975 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.acy = getelementptr inbounds nuw i8, ptr %.val4975, i64 %i.aco
  store i8 0, ptr %i.acy, align 1
  %.val5043 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.acz = getelementptr inbounds nuw i8, ptr %.val5043, i64 %i.acb
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 28
  %.0.copyload.i5467 = load i64, ptr %i.ada, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5467) #13, !srcloc !33
  %.val5161 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.adb = getelementptr inbounds nuw i8, ptr %.val5161, i64 %i.acd
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 28
  store i64 %.0.copyload.i5467, ptr %i.adc, align 1
  %.not4536 = icmp eq i32 %.84295, 0
  br i1 %.not4536, label %.loopexit5654, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.add = add nsw i32 %.84295, -1
  %i.ade = lshr i32 %i.add, 1                     ; 2 uses
  %i.adf = mul i32 %i.ade, 36
  %i.adg = add i32 %i.adf, %.04275                ; 3 uses
  %i.adh = zext i32 %i.adg to i64                 ; 5 uses
  %.val4724 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.adi = getelementptr inbounds nuw i8, ptr %.val4724, i64 %i.adh
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 4
  %.0.copyload.i5468 = load i32, ptr %i.adj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5468) #13, !srcloc !14
  %.val4723 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.adk = getelementptr inbounds nuw i8, ptr %.val4723, i64 %i.adh
  %.0.copyload.i5469 = load i32, ptr %i.adk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5469) #13, !srcloc !14
  %.not4537 = icmp eq i32 %.0.copyload.i5469, 0
  %.not4538 = icmp eq i32 %.0.copyload.i5468, 0
  %or.cond4604 = select i1 %.not4537, i1 %.not4538, i1 false
  br i1 %or.cond4604, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %.val4722 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.adl = getelementptr inbounds nuw i8, ptr %.val4722, i64 %i.adh
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 20
  %.0.copyload.i5470 = load i32, ptr %i.adm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5470) #13, !srcloc !14
  %.val4936 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.adn = getelementptr inbounds nuw i8, ptr %.val4936, i64 %i.adh
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 27
  %.0.copyload.i5471 = load i8, ptr %i.ado, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5471) #13, !srcloc !31
  %i.adp = zext i8 %.0.copyload.i5471 to i32
  %.not4540 = icmp sgt i8 %.0.copyload.i5471, -1  ; 2 uses
  %i.adq = select i1 %.not4540, i32 %i.adp, i32 %.0.copyload.i5470
  %.not4541 = icmp eq i32 %i.adq, 23
  br i1 %.not4541, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %.val4721 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.adr = getelementptr inbounds nuw i8, ptr %.val4721, i64 %i.adh
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 16
  %.0.copyload.i5472 = load i32, ptr %i.ads, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5472) #13, !srcloc !14
  %i.adt = add i32 %i.adg, 16
  %i.adu = select i1 %.not4540, i32 %i.adt, i32 %.0.copyload.i5472
  %i.adv = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.adu, i32 noundef 71264, i32 noundef 23) #13
  %.not4542 = icmp eq i32 %i.adv, 0
  %or.cond4605 = select i1 %.not4542, i1 true, i1 %.not4543
  br i1 %or.cond4605, label %.loopexit5654, label %.backedge5656.backedge

bb.dz:                                            ; preds = %bb.dx, %bb.dw
  %i.adw = icmp ugt i32 %.0.copyload.i5432, %.0.copyload.i5468
  br i1 %i.adw, label %.backedge5656.backedge, label %.loopexit5654

.backedge5656.backedge:                           ; preds = %bb.dz, %bb.dy
  br label %.backedge5656

.loopexit5654:                                    ; preds = %bb.dk, %bb.dj, %bb.dg, %bb.dz, %bb.dy, %bb.dv, %bb.dt, %bb.ds, %bb.dp
  %.pre-phi = phi i64 [ %i.acb, %bb.dz ], [ %i.aae, %bb.dt ], [ %i.aae, %bb.dp ], [ %i.aae, %bb.ds ], [ %i.acb, %bb.dv ], [ %i.acb, %bb.dy ], [ %i.xy, %bb.dg ], [ %i.xy, %bb.dj ], [ %i.xy, %bb.dk ] ; 4 uses
  %.24282 = phi i32 [ %.8, %bb.dz ], [ %.7, %bb.dt ], [ %.7, %bb.dp ], [ %.7, %bb.ds ], [ %.8, %bb.dv ], [ %.8, %bb.dy ], [ %.6, %bb.dg ], [ %.6, %bb.dj ], [ %.6, %bb.dk ]
  %.14272 = add i32 %.24282, 16
  %.val5042 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.adx = getelementptr inbounds nuw i8, ptr %.val5042, i64 %i.g
  %.0.copyload.i5473 = load i64, ptr %i.adx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5473) #13, !srcloc !33
  %.val5160 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ady = getelementptr inbounds nuw i8, ptr %.val5160, i64 %.pre-phi
  store i64 %.0.copyload.i5473, ptr %i.ady, align 1
  %.val5041 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.adz = getelementptr inbounds nuw i8, ptr %.val5041, i64 %i.f
  %.0.copyload.i5474 = load i64, ptr %i.adz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5474) #13, !srcloc !33
  %.val5159 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aea = getelementptr inbounds nuw i8, ptr %.val5159, i64 %.pre-phi
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  store i64 %.0.copyload.i5474, ptr %i.aeb, align 1
  %.val5236 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aec = getelementptr inbounds nuw i8, ptr %.val5236, i64 %.pre-phi
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 27
  %.0.copyload.i5475 = load i8, ptr %i.aed, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5475) #13, !srcloc !36
  %i.aee = icmp slt i8 %.0.copyload.i5475, 0
  %i.aef = zext i32 %.14272 to i64                ; 3 uses
  br i1 %i.aee, label %bb.ea, label %.loopexit5654._crit_edge

bb.ea:                                            ; preds = %.loopexit5654
  %.val4720 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aeg = getelementptr inbounds nuw i8, ptr %.val4720, i64 %i.aef
  %.0.copyload.i5476 = load i32, ptr %i.aeg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5476) #13, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i5476) #13
  br label %.loopexit5654._crit_edge

.loopexit5654._crit_edge:                         ; preds = %.loopexit5654, %bb.ea
  %.val5040 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aeh = getelementptr inbounds nuw i8, ptr %.val5040, i64 %i.iq
  %.0.copyload.i5477 = load i64, ptr %i.aeh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5477) #13, !srcloc !33
  %.val5158 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aei = getelementptr inbounds nuw i8, ptr %.val5158, i64 %i.aef
  store i64 %.0.copyload.i5477, ptr %i.aei, align 1
  %.val4719 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aej = getelementptr inbounds nuw i8, ptr %.val4719, i64 %i.ir
  %.0.copyload.i5478 = load i32, ptr %i.aej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5478) #13, !srcloc !14
  %.val4881 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aek = getelementptr inbounds nuw i8, ptr %.val4881, i64 %i.aef
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  store i32 %.0.copyload.i5478, ptr %i.ael, align 1
  %.val5039 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aem = getelementptr inbounds nuw i8, ptr %.val5039, i64 %i.is
  %.0.copyload.i5479 = load i64, ptr %i.aem, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5479) #13, !srcloc !33
  %.val5157 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aen = getelementptr inbounds nuw i8, ptr %.val5157, i64 %.pre-phi
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 28
  store i64 %.0.copyload.i5479, ptr %i.aeo, align 1
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dd, %bb.dc, %bb.cz, %bb.cw, %.loopexit5654._crit_edge, %bb.cr
  %i.aep = add nsw i32 %.74305, -1
  %i.aeq = icmp sgt i32 %.74305, 2
  br i1 %i.aeq, label %bb.cb, label %.loopexit

bb.ec:                                            ; preds = %4
  %i.aer = lshr i32 %i.y, 1
  %i.aes = mul nuw nsw i32 %i.aer, 36
  %i.aet = add i32 %i.aes, %.04275                ; 9 uses
  %i.aeu = icmp samesign ugt i32 %i.x, 35964
  br i1 %i.aeu, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aev = lshr i32 %i.y, 2
  %i.aew = mul nuw nsw i32 %i.aev, 36             ; 2 uses
  %i.aex = add i32 %i.aew, %.04275
  %i.aey = add i32 %i.aet, %i.aew
  %i.aez = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x29(ptr noundef nonnull %0, i32 noundef %.04275, i32 noundef %i.aex, i32 noundef %i.aet, i32 noundef %i.aey, i32 noundef %i.p)
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.afa = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x29(ptr noundef nonnull %0, i32 noundef %.04275, i32 noundef %i.aet, i32 noundef %i.p)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.1 = phi i32 [ %i.aez, %bb.ed ], [ %i.afa, %bb.ee ] ; 3 uses
  %i.afb = add i32 %.24289, -1                    ; 4 uses
  %i.afc = zext i32 %.04275 to i64                ; 24 uses
  %i.afd = add nuw nsw i64 %i.afc, 4              ; 2 uses
  %.val4718 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.afe = getelementptr inbounds nuw i8, ptr %.val4718, i64 %i.afd
  %.0.copyload.i5480 = load i32, ptr %i.afe, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5480) #13, !srcloc !14
  %.val4717 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aff = getelementptr inbounds nuw i8, ptr %.val4717, i64 %i.afc
  %.0.copyload.i5481 = load i32, ptr %i.aff, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5481) #13, !srcloc !14
  %i.afg = or i32 %.0.copyload.i5481, %.0.copyload.i5480
  %.not4344 = icmp eq i32 %i.afg, 0               ; 3 uses
  br i1 %.not4344, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %.val4716 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.afh = getelementptr inbounds nuw i8, ptr %.val4716, i64 %i.afc
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 20
  %.0.copyload.i5482 = load i32, ptr %i.afi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5482) #13, !srcloc !14
  %.val4935 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.afj = getelementptr inbounds nuw i8, ptr %.val4935, i64 %i.afc
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 27
  %.0.copyload.i5483 = load i8, ptr %i.afk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5483) #13, !srcloc !31
  %i.afl = zext i8 %.0.copyload.i5483 to i32
  %.not4346 = icmp sgt i8 %.0.copyload.i5483, -1  ; 2 uses
  %i.afm = select i1 %.not4346, i32 %i.afl, i32 %.0.copyload.i5482
  %.not4347 = icmp eq i32 %i.afm, 23
  br i1 %.not4347, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %.val4715 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.afn = getelementptr inbounds nuw i8, ptr %.val4715, i64 %i.afc
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 16
  %.0.copyload.i5484 = load i32, ptr %i.afo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5484) #13, !srcloc !14
  %i.afp = add i32 %.04275, 16
  %i.afq = select i1 %.not4346, i32 %i.afp, i32 %.0.copyload.i5484
  %i.afr = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.afq, i32 noundef 71264, i32 noundef 23) #13
  %.not4348 = icmp eq i32 %i.afr, 0
  br i1 %.not4348, label %bb.em, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %bb.ef
  %i.afs = zext i32 %i.aet to i64                 ; 5 uses
  %.val4714 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aft = getelementptr inbounds nuw i8, ptr %.val4714, i64 %i.afs
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 4
  %.0.copyload.i5485 = load i32, ptr %i.afu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5485) #13, !srcloc !14
  %.val4713 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.afv = getelementptr inbounds nuw i8, ptr %.val4713, i64 %i.afs
  %.0.copyload.i5486 = load i32, ptr %i.afv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5486) #13, !srcloc !14
  %.not4349 = icmp eq i32 %.0.copyload.i5486, 0
  %.not4350 = icmp eq i32 %.0.copyload.i5485, 0
  %or.cond4606 = select i1 %.not4349, i1 %.not4350, i1 false
  br i1 %or.cond4606, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  %.val4712 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.afw = getelementptr inbounds nuw i8, ptr %.val4712, i64 %i.afs
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 20
  %.0.copyload.i5487 = load i32, ptr %i.afx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5487) #13, !srcloc !14
  %.val4934 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.afy = getelementptr inbounds nuw i8, ptr %.val4934, i64 %i.afs
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 27
  %.0.copyload.i5488 = load i8, ptr %i.afz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5488) #13, !srcloc !31
  %i.aga = zext i8 %.0.copyload.i5488 to i32
  %.not4352 = icmp sgt i8 %.0.copyload.i5488, -1  ; 2 uses
  %i.agb = select i1 %.not4352, i32 %i.aga, i32 %.0.copyload.i5487
  %.not4353 = icmp eq i32 %i.agb, 23
  br i1 %.not4353, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %.val4711 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.agc = getelementptr inbounds nuw i8, ptr %.val4711, i64 %i.afs
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 16
  %.0.copyload.i5489 = load i32, ptr %i.agd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5489) #13, !srcloc !14
  %i.age = add i32 %i.aet, 16
  %i.agf = select i1 %.not4352, i32 %i.age, i32 %.0.copyload.i5489
  %i.agg = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.agf, i32 noundef 71264, i32 noundef 23) #13
  %.not4354 = icmp eq i32 %i.agg, 0
  br i1 %.not4354, label %.loopexit5671, label %bb.em

bb.el:                                            ; preds = %bb.ej, %bb.ei
  %.not4355 = icmp ugt i32 %.0.copyload.i5485, %.0.copyload.i5480
  br i1 %.not4355, label %.loopexit5671, label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.eh
  %i.agh = icmp eq i32 %.04275, %i.o
  br i1 %i.agh, label %.loopexit5667, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.agi = add i32 %i.aet, 16                     ; 2 uses
  %i.agj = zext i32 %i.aet to i64                 ; 4 uses
  %i.agk = zext i32 %i.agi to i64
  br label %bb.eo

bb.eo:                                            ; preds = %bb.ev, %bb.en
  %.9 = phi i32 [ %i.p, %bb.en ], [ %.24273, %bb.ev ] ; 6 uses
  %.24273 = phi i32 [ %i.o, %bb.en ], [ %i.ahq, %bb.ev ] ; 4 uses
  %i.agl = add i32 %.9, -32
  %i.agm = zext i32 %i.agl to i64
  %.val4710 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.agn = getelementptr inbounds nuw i8, ptr %.val4710, i64 %i.agm
  %.0.copyload.i5490 = load i32, ptr %i.agn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5490) #13, !srcloc !14
  %i.ago = zext i32 %.24273 to i64                ; 4 uses
  %.val4709 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.agp = getelementptr inbounds nuw i8, ptr %.val4709, i64 %i.ago
  %.0.copyload.i5491 = load i32, ptr %i.agp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5491) #13, !srcloc !14
  %.not4356 = icmp eq i32 %.0.copyload.i5491, 0
  %.not4357 = icmp eq i32 %.0.copyload.i5490, 0
  %or.cond4607 = select i1 %.not4356, i1 %.not4357, i1 false
  br i1 %or.cond4607, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.agq = add i32 %.9, -16
  %i.agr = zext i32 %i.agq to i64
  %.val4708 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ags = getelementptr inbounds nuw i8, ptr %.val4708, i64 %i.agr
  %.0.copyload.i5492 = load i32, ptr %i.ags, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5492) #13, !srcloc !14
  %i.agt = add i32 %.9, -9
  %i.agu = zext i32 %i.agt to i64
  %.val4933 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.agv = getelementptr inbounds nuw i8, ptr %.val4933, i64 %i.agu
  %.0.copyload.i5493 = load i8, ptr %i.agv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5493) #13, !srcloc !31
  %i.agw = zext i8 %.0.copyload.i5493 to i32
  %.not4359 = icmp sgt i8 %.0.copyload.i5493, -1  ; 2 uses
  %i.agx = select i1 %.not4359, i32 %i.agw, i32 %.0.copyload.i5492
  %.not4360 = icmp eq i32 %i.agx, 23
  br i1 %.not4360, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.agy = add i32 %.9, -20                       ; 2 uses
  %i.agz = zext i32 %i.agy to i64
  %.val4707 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aha = getelementptr inbounds nuw i8, ptr %.val4707, i64 %i.agz
  %.0.copyload.i5494 = load i32, ptr %i.aha, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5494) #13, !srcloc !14
  %i.ahb = select i1 %.not4359, i32 %i.agy, i32 %.0.copyload.i5494
  %i.ahc = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.ahb, i32 noundef 71264, i32 noundef 23) #13
  %.not4361 = icmp eq i32 %i.ahc, 0
  br i1 %.not4361, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.eo
  %.val4706 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ahd = getelementptr inbounds nuw i8, ptr %.val4706, i64 %i.agj
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4
  %.0.copyload.i5495 = load i32, ptr %i.ahe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5495) #13, !srcloc !14
  %.val4705 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ahf = getelementptr inbounds nuw i8, ptr %.val4705, i64 %i.agj
  %.0.copyload.i5496 = load i32, ptr %i.ahf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5496) #13, !srcloc !14
  %.not4362 = icmp eq i32 %.0.copyload.i5496, 0
  %.not4363 = icmp eq i32 %.0.copyload.i5495, 0
  %or.cond4608 = select i1 %.not4362, i1 %.not4363, i1 false
  br i1 %or.cond4608, label %bb.es, label %bb.eu

bb.es:                                            ; preds = %bb.er
  %.val4704 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ahg = getelementptr inbounds nuw i8, ptr %.val4704, i64 %i.agj
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 20
  %.0.copyload.i5497 = load i32, ptr %i.ahh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5497) #13, !srcloc !14
  %.val4932 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ahi = getelementptr inbounds nuw i8, ptr %.val4932, i64 %i.agj
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 27
  %.0.copyload.i5498 = load i8, ptr %i.ahj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5498) #13, !srcloc !31
  %i.ahk = zext i8 %.0.copyload.i5498 to i32
end_hunk_22
begin_hunk_23_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 16
  %.0.copyload.i5637 = load i32, ptr %i.ayi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5637) #13, !srcloc !14
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hl, %bb.hn
  %.16 = phi i32 [ %.0.copyload.i5637, %bb.hn ], [ %.0.copyload.i5635, %bb.hl ]
  %.34274 = phi i8 [ %.0.copyload.i5636, %bb.hn ], [ %.0.copyload.i5634, %bb.hl ]
  %i.ayj = add nuw nsw i64 %i.axp, 8              ; 2 uses
  %.val5002 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ayk = getelementptr inbounds nuw i8, ptr %.val5002, i64 %i.ayj
  %.0.copyload.i5638 = load i64, ptr %i.ayk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5638) #13, !srcloc !33
  %.val5116 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ayl = getelementptr inbounds nuw i8, ptr %.val5116, i64 %i.f
  store i64 %.0.copyload.i5638, ptr %i.ayl, align 1
  %.val5001 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aym = getelementptr inbounds nuw i8, ptr %.val5001, i64 %i.axp
  %.0.copyload.i5639 = load i64, ptr %i.aym, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5639) #13, !srcloc !33
  %.val5115 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ayn = getelementptr inbounds nuw i8, ptr %.val5115, i64 %i.g
  store i64 %.0.copyload.i5639, ptr %i.ayn, align 1
  %.val4623 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ayo = getelementptr inbounds nuw i8, ptr %.val4623, i64 %i.axp
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 23
  %.0.copyload.i5640 = load i32, ptr %i.ayp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5640) #13, !srcloc !14
  %.val4852 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ayq = getelementptr inbounds nuw i8, ptr %.val4852, i64 %i.h
  store i32 %.0.copyload.i5640, ptr %i.ayq, align 1
  %.val4622 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ayr = getelementptr inbounds nuw i8, ptr %.val4622, i64 %i.axp
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 20
  %.0.copyload.i5641 = load i32, ptr %i.ays, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5641) #13, !srcloc !14
  %.val4851 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ayt = getelementptr inbounds nuw i8, ptr %.val4851, i64 %i.i
  store i32 %.0.copyload.i5641, ptr %i.ayt, align 1
  %i.ayu = add nuw nsw i64 %i.axp, 24             ; 2 uses
  %.val4850 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ayv = getelementptr inbounds nuw i8, ptr %.val4850, i64 %i.ayu
  store i32 0, ptr %i.ayv, align 1
  %i.ayw = add nuw nsw i64 %i.axp, 16             ; 2 uses
  %.val5114 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ayx = getelementptr inbounds nuw i8, ptr %.val5114, i64 %i.ayw
  store i64 0, ptr %i.ayx, align 1
  %i.ayy = add nuw nsw i64 %i.axa, 8              ; 2 uses
  %.val5000 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ayz = getelementptr inbounds nuw i8, ptr %.val5000, i64 %i.ayy
  %.0.copyload.i5642 = load i64, ptr %i.ayz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5642) #13, !srcloc !33
  %.val5113 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aza = getelementptr inbounds nuw i8, ptr %.val5113, i64 %i.ayj
  store i64 %.0.copyload.i5642, ptr %i.aza, align 1
  %.val4999 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azb = getelementptr inbounds nuw i8, ptr %.val4999, i64 %i.axa
  %.0.copyload.i5643 = load i64, ptr %i.azb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5643) #13, !srcloc !33
  %.val5112 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azc = getelementptr inbounds nuw i8, ptr %.val5112, i64 %i.axp
  store i64 %.0.copyload.i5643, ptr %i.azc, align 1
  %.val4621 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azd = getelementptr inbounds nuw i8, ptr %.val4621, i64 %i.axa
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 24
  %.0.copyload.i5644 = load i32, ptr %i.aze, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5644) #13, !srcloc !14
  %.val4849 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azf = getelementptr inbounds nuw i8, ptr %.val4849, i64 %i.ayu
  store i32 %.0.copyload.i5644, ptr %i.azf, align 1
  %i.azg = add nuw nsw i64 %i.axa, 16             ; 4 uses
  %.val4998 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azh = getelementptr inbounds nuw i8, ptr %.val4998, i64 %i.azg
  %.0.copyload.i5645 = load i64, ptr %i.azh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5645) #13, !srcloc !33
  %.val5111 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azi = getelementptr inbounds nuw i8, ptr %.val5111, i64 %i.ayw
  store i64 %.0.copyload.i5645, ptr %i.azi, align 1
  %i.azj = add nuw nsw i64 %i.axp, 28             ; 2 uses
  %.val4997 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azk = getelementptr inbounds nuw i8, ptr %.val4997, i64 %i.azj
  %.0.copyload.i5646 = load i64, ptr %i.azk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5646) #13, !srcloc !33
  %.val4962 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azl = getelementptr inbounds nuw i8, ptr %.val4962, i64 %i.azg
  store i8 0, ptr %i.azl, align 1
  %i.azm = add nuw nsw i64 %i.axa, 27             ; 3 uses
  %.val4961 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azn = getelementptr inbounds nuw i8, ptr %.val4961, i64 %i.azm
  store i8 0, ptr %i.azn, align 1
  %i.azo = add nuw nsw i64 %i.axa, 28             ; 2 uses
  %.val4996 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azp = getelementptr inbounds nuw i8, ptr %.val4996, i64 %i.azo
  %.0.copyload.i5647 = load i64, ptr %i.azp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5647) #13, !srcloc !33
  %.val5110 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azq = getelementptr inbounds nuw i8, ptr %.val5110, i64 %i.azj
  store i64 %.0.copyload.i5647, ptr %i.azq, align 1
  %.val4995 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azr = getelementptr inbounds nuw i8, ptr %.val4995, i64 %i.f
  %.0.copyload.i5648 = load i64, ptr %i.azr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5648) #13, !srcloc !33
  %.val5109 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azs = getelementptr inbounds nuw i8, ptr %.val5109, i64 %i.ayy
  store i64 %.0.copyload.i5648, ptr %i.azs, align 1
  %.val4994 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azt = getelementptr inbounds nuw i8, ptr %.val4994, i64 %i.g
  %.0.copyload.i5649 = load i64, ptr %i.azt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5649) #13, !srcloc !33
  %.val5108 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azu = getelementptr inbounds nuw i8, ptr %.val5108, i64 %i.axa
  store i64 %.0.copyload.i5649, ptr %i.azu, align 1
  %.val5231 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azv = getelementptr inbounds nuw i8, ptr %.val5231, i64 %i.azm
  %.0.copyload.i5650 = load i8, ptr %i.azv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5650) #13, !srcloc !36
  %i.azw = icmp slt i8 %.0.copyload.i5650, 0
  br i1 %i.azw, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %.val4620 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azx = getelementptr inbounds nuw i8, ptr %.val4620, i64 %i.azg
  %.0.copyload.i5651 = load i32, ptr %i.azx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5651) #13, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i5651) #13
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %.val4848 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azy = getelementptr inbounds nuw i8, ptr %.val4848, i64 %i.azg
  store i32 %.16, ptr %i.azy, align 1
  %.val4619 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.azz = getelementptr inbounds nuw i8, ptr %.val4619, i64 %i.i
  %.0.copyload.i5652 = load i32, ptr %i.azz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5652) #13, !srcloc !14
  %.val4847 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.baa = getelementptr inbounds nuw i8, ptr %.val4847, i64 %i.axa
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 20
  store i32 %.0.copyload.i5652, ptr %i.bab, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bac = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %.0.copyload.i5653 = load i32, ptr %i.bac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5653) #13, !srcloc !14
  %.val4846 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bad = getelementptr inbounds nuw i8, ptr %.val4846, i64 %i.axa
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 23
  store i32 %.0.copyload.i5653, ptr %i.bae, align 1
  %.val5107 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.baf = getelementptr inbounds nuw i8, ptr %.val5107, i64 %i.azo
  store i64 %.0.copyload.i5646, ptr %i.baf, align 1
  %.val4960 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bag = getelementptr inbounds nuw i8, ptr %.val4960, i64 %i.azm
  store i8 %.34274, ptr %i.bag, align 1
  %i.bah = add i32 %.2, 1
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hm, %bb.hl, %bb.hi, %.loopexit5669, %bb.hq
  %.3 = phi i32 [ %.2, %.loopexit5669 ], [ %.2, %bb.hm ], [ %i.bah, %bb.hq ], [ %.2, %bb.hl ], [ %.2, %bb.hi ]
  %.not4408 = icmp eq i32 %.3, 0
  br i1 %.not4408, label %bb.hs, label %bb.hv

bb.hs:                                            ; preds = %bb.hr
  %i.bai = tail call i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Chermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x29(ptr noundef nonnull %0, i32 noundef %.04275, i32 noundef %.64286) #13
  %i.baj = add i32 %.64286, 36                    ; 2 uses
  %i.bak = tail call i32 @w2c_hermes_bool0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Finsertion_sort_incomplete0x3Chermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x29(ptr noundef nonnull %0, i32 noundef %i.baj, i32 noundef %.04296) #13
  %.not4409 = icmp eq i32 %i.bak, 0
  %.not4410 = icmp eq i32 %i.bai, 0               ; 2 uses
  br i1 %.not4409, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  br i1 %.not4410, label %.backedge5674.backedge, label %.loopexit

bb.hu:                                            ; preds = %bb.hs
  br i1 %.not4410, label %bb.hv, label %.loopexit5664.backedge

bb.hv:                                            ; preds = %bb.hu, %bb.hr
  %i.bal = sub i32 %.64286, %.04275
  %i.bam = sdiv i32 %i.bal, 36
  %i.ban = sub i32 %.04296, %.64286
  %i.bao = sdiv i32 %i.ban, 36
  %i.bap = icmp slt i32 %i.bam, %i.bao
  br i1 %i.bap, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %.04275, i32 noundef %.64286, i32 noundef %i.afb)
  %i.baq = add i32 %.64286, 36
  br label %.loopexit5664.backedge

.loopexit5664.backedge:                           ; preds = %bb.gh, %bb.hw, %bb.hu
  %.04275.be = phi i32 [ %i.baj, %bb.hu ], [ %i.baq, %bb.hw ], [ %.154313, %bb.gh ]
  br label %.loopexit5664

bb.hx:                                            ; preds = %bb.hv
  %i.bar = add i32 %.64286, 36
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %i.bar, i32 noundef %.04296, i32 noundef %i.afb)
  br label %.backedge5674.backedge

.backedge5674.backedge:                           ; preds = %bb.hx, %bb.ht
  br label %.backedge5674

.loopexit:                                        ; preds = %bb.ht, %bb.fq, %bb.fd, %.loopexit5664, %.loopexit5664, %bb.fp, %bb.eb, %bb.ak, %bb.al, %bb.p, %bb.h, %bb.g, %bb.d, %bb.ew, %bb.n, %bb.m, %bb.l
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 6) i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 144 uses
  %i.f = zext i32 %4 to i64                       ; 14 uses
  %.val847 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val847, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.0.copyload.i = load i32, ptr %i.h, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %.val846 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val846, i64 %i.f
  %.0.copyload.i947 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i947) #13, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i947, 0
  %.not766 = icmp eq i32 %.0.copyload.i, 0
  %or.cond = select i1 %.not, i1 %.not766, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val845 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %.val845, i64 %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %.0.copyload.i948 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i948) #13, !srcloc !14
  %.val877 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.val877, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 27
  %.0.copyload.i949 = load i8, ptr %i.m, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i949) #13, !srcloc !31
  %i.n = zext i8 %.0.copyload.i949 to i32
  %.not767 = icmp sgt i8 %.0.copyload.i949, -1    ; 2 uses
  %i.o = select i1 %.not767, i32 %i.n, i32 %.0.copyload.i948
  %.not768 = icmp eq i32 %i.o, 23
  br i1 %.not768, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val844 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val844, i64 %i.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.0.copyload.i950 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i950) #13, !srcloc !14
  %i.r = add i32 %4, 16
  %i.s = select i1 %.not767, i32 %i.r, i32 %.0.copyload.i950
  %i.t = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.s, i32 noundef 71264, i32 noundef 23) #13
  %.not769 = icmp eq i32 %i.t, 0
  br i1 %.not769, label %bb.af, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.u = zext i32 %3 to i64                       ; 20 uses
  %i.v = add nuw nsw i64 %i.u, 4                  ; 2 uses
  %.val843 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.val843, i64 %i.v
  %.0.copyload.i951 = load i32, ptr %i.w, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i951) #13, !srcloc !14
  %.val842 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val842, i64 %i.u
  %.0.copyload.i952 = load i32, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i952) #13, !srcloc !14
  %.not770 = icmp eq i32 %.0.copyload.i952, 0
  %.not771 = icmp eq i32 %.0.copyload.i951, 0
  %or.cond799 = select i1 %.not770, i1 %.not771, i1 false
  br i1 %or.cond799, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.val841 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.val841, i64 %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %.0.copyload.i953 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i953) #13, !srcloc !14
  %.val876 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.val876, i64 %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 27
  %.0.copyload.i954 = load i8, ptr %i.ab, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i954) #13, !srcloc !31
  %i.ac = zext i8 %.0.copyload.i954 to i32
  %i.ad = icmp slt i8 %.0.copyload.i954, 0        ; 2 uses
  %i.ae = select i1 %i.ad, i32 %.0.copyload.i953, i32 %i.ac
  %.not772 = icmp eq i32 %i.ae, 23
  br i1 %.not772, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val840 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.val840, i64 %i.u
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.0.copyload.i955 = load i32, ptr %i.ag, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i955) #13, !srcloc !14
  %i.ah = add i32 %3, 16
  %i.ai = select i1 %i.ad, i32 %.0.copyload.i955, i32 %i.ah
  %i.aj = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef 71264, i32 noundef 23) #13
  %.not773 = icmp eq i32 %i.aj, 0
  br i1 %.not773, label %bb.i, label %bb.af

bb.g:                                             ; preds = %bb.e, %bb.d
  %.not774 = icmp ult i32 %.0.copyload.i, %.0.copyload.i951
  br i1 %.not774, label %bb.h, label %bb.af

bb.h:                                             ; preds = %bb.g
  %.val875 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val875, i64 %i.u
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 27
  %.0.copyload.i956 = load i8, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i956) #13, !srcloc !31
  %.val839 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val839, i64 %i.u
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.0.copyload.i957 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i957) #13, !srcloc !14
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.0762 = phi i8 [ %.0.copyload.i956, %bb.h ], [ %.0.copyload.i954, %bb.f ]
  %.0761 = phi i32 [ %.0.copyload.i957, %bb.h ], [ %.0.copyload.i955, %bb.f ]
  %i.ao = add nuw nsw i64 %i.u, 8                 ; 4 uses
  %.val913 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val913, i64 %i.ao
  %.0.copyload.i958 = load i64, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i958) #13, !srcloc !33
  %i.aq = zext i32 %i.c to i64                    ; 4 uses
  %i.ar = add nuw nsw i64 %i.aq, 24               ; 6 uses
  %.val943 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val943, i64 %i.ar
  store i64 %.0.copyload.i958, ptr %i.as, align 1
  %.val912 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val912, i64 %i.u
  %.0.copyload.i959 = load i64, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i959) #13, !srcloc !33
  %i.au = add nuw nsw i64 %i.aq, 16               ; 6 uses
  %.val942 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val942, i64 %i.au
  store i64 %.0.copyload.i959, ptr %i.av, align 1
  %i.aw = add nuw nsw i64 %i.u, 23                ; 2 uses
  %.val838 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val838, i64 %i.aw
  %.0.copyload.i960 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i960) #13, !srcloc !14
  %i.ay = add nuw nsw i64 %i.aq, 11               ; 6 uses
  %.val868 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.val868, i64 %i.ay
  store i32 %.0.copyload.i960, ptr %i.az, align 1
  %i.ba = add nuw nsw i64 %i.u, 20                ; 3 uses
  %.val837 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.val837, i64 %i.ba
  %.0.copyload.i961 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i961) #13, !srcloc !14
  %i.bc = add nuw nsw i64 %i.aq, 8                ; 6 uses
  %.val867 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.val867, i64 %i.bc
  store i32 %.0.copyload.i961, ptr %i.bd, align 1
  %i.be = add nuw nsw i64 %i.u, 24                ; 2 uses
  %.val866 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val866, i64 %i.be
  store i32 0, ptr %i.bf, align 1
  %i.bg = add nuw nsw i64 %i.u, 16                ; 4 uses
  %.val941 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %.val941, i64 %i.bg
  store i64 0, ptr %i.bh, align 1
  %i.bi = add nuw nsw i64 %i.f, 8                 ; 2 uses
  %.val911 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.val911, i64 %i.bi
  %.0.copyload.i962 = load i64, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i962) #13, !srcloc !33
  %.val940 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val940, i64 %i.ao
  store i64 %.0.copyload.i962, ptr %i.bk, align 1
  %.val910 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val910, i64 %i.f
  %.0.copyload.i963 = load i64, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i963) #13, !srcloc !33
  %.val939 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val939, i64 %i.u
  store i64 %.0.copyload.i963, ptr %i.bm, align 1
  %.val836 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val836, i64 %i.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.0.copyload.i964 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i964) #13, !srcloc !14
  %.val865 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.val865, i64 %i.be
  store i32 %.0.copyload.i964, ptr %i.bp, align 1
  %i.bq = add nuw nsw i64 %i.f, 16                ; 4 uses
  %.val909 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val909, i64 %i.bq
  %.0.copyload.i965 = load i64, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i965) #13, !srcloc !33
  %.val938 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.val938, i64 %i.bg
  store i64 %.0.copyload.i965, ptr %i.bs, align 1
  %i.bt = add nuw nsw i64 %i.u, 28                ; 4 uses
  %.val908 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val908, i64 %i.bt
end_hunk_23
begin_hunk_24_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3ADenseMapIterator0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRef0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRef0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x3E0x2C0x20false0x3E0x2C0x20bool0x3E0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ASmallDenseMap0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRef0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x208u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRef0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x3E0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRef0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRef0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x3E0x3E0x3A0x3Atry_emplace0x3Chermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x260x3E0x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x20const0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x260x29:bb.a
  %i.iq = zext i32 %i.ip to i64                   ; 2 uses
  %.val994 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ir = getelementptr inbounds nuw i8, ptr %.val994, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %.0.copyload.i1059 = load i16, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1059) #13, !srcloc !35
  %i.it = zext i16 %.0.copyload.i1059 to i32      ; 2 uses
  %i.iu = add i32 %.1859, 1
  %.val919 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.iv = getelementptr inbounds nuw i8, ptr %.val919, i64 %i.iq
  %.0.copyload.i1060 = load i32, ptr %i.iv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1060) #13, !srcloc !14
  %.not906 = icmp eq i32 %.0.copyload.i1060, %i.hu
  %.not907 = icmp eq i32 %i.ht, %i.it
  %or.cond912 = select i1 %.not906, i1 %.not907, i1 false
  br i1 %or.cond912, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.ar, %bb.ao, %bb.ap, %bb.g, %bb.aq
  %.11 = phi i32 [ %.2870, %bb.g ], [ %i.hy, %bb.ap ], [ 0, %bb.ao ], [ %i.ih, %bb.aq ], [ %i.ip, %bb.ar ] ; 2 uses
  %.1865 = phi i32 [ %.0.copyload.i1014, %bb.g ], [ %.0.copyload.i1054, %bb.ap ], [ %.0.copyload.i1054, %bb.ao ], [ %.0.copyload.i1054, %bb.aq ], [ %.0.copyload.i1054, %bb.ar ]
  %.1861 = phi i32 [ %i.az, %bb.g ], [ %i.hj, %bb.ap ], [ %i.hj, %bb.ao ], [ %i.hj, %bb.aq ], [ %i.hj, %bb.ar ]
  %i.iw = and i32 %.1865, -2
  %i.ix = or disjoint i32 %.1861, 2
  %i.iy = add i32 %i.ix, %i.iw
  %.val956 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.iz = getelementptr inbounds nuw i8, ptr %.val956, i64 %i.c
  store i32 %i.iy, ptr %i.iz, align 1
  %i.ja = zext i32 %.11 to i64                    ; 5 uses
  %.val918 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jb = getelementptr inbounds nuw i8, ptr %.val918, i64 %i.ja
  %.0.copyload.i1061 = load i32, ptr %i.jb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1061) #13, !srcloc !14
  %i.jc = icmp eq i32 %.0.copyload.i1061, 536870911
  br i1 %i.jc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.loopexit
  %.val993 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jd = getelementptr inbounds nuw i8, ptr %.val993, i64 %i.ja
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %.0.copyload.i1062 = load i16, ptr %i.je, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1062) #13, !srcloc !35
  %.not908 = icmp eq i16 %.0.copyload.i1062, 0
  br i1 %.not908, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %.loopexit
  %i.jf = add nuw nsw i64 %i.c, 4                 ; 2 uses
  %.val917 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jg = getelementptr inbounds nuw i8, ptr %.val917, i64 %i.jf
  %.0.copyload.i1063 = load i32, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1063) #13, !srcloc !14
  %i.jh = add i32 %.0.copyload.i1063, -1
  %.val955 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ji = getelementptr inbounds nuw i8, ptr %.val955, i64 %i.jf
  store i32 %i.jh, ptr %i.ji, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.jj = zext i32 %3 to i64                      ; 2 uses
  %.val916 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jk = getelementptr inbounds nuw i8, ptr %.val916, i64 %i.jj
  %.0.copyload.i1064 = load i32, ptr %i.jk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1064) #13, !srcloc !14
  %.val954 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jl = getelementptr inbounds nuw i8, ptr %.val954, i64 %i.ja
  store i32 %.0.copyload.i1064, ptr %i.jl, align 1
  %.val992 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %.val992, i64 %i.jj
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %.0.copyload.i1065 = load i16, ptr %i.jn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1065) #13, !srcloc !35
  %.val1006 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jo = getelementptr inbounds nuw i8, ptr %.val1006, i64 %i.ja
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  store i16 %.0.copyload.i1065, ptr %i.jp, align 1
  %i.jq = add i32 %4, 816
  %i.jr = zext i32 %5 to i64
  %.val915 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.js = getelementptr inbounds nuw i8, ptr %.val915, i64 %i.jr
  %.0.copyload.i1066 = load i32, ptr %i.js, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1066) #13, !srcloc !14
  %i.jt = zext i32 %.0.copyload.i1066 to i64
  %.val914 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ju = getelementptr inbounds nuw i8, ptr %.val914, i64 %i.jt
  %.0.copyload.i1067 = load i32, ptr %i.ju, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1067) #13, !srcloc !14
  %i.jv = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCBase0x3A0x3AallocWeakSlot0x28hermes0x3A0x3Avm0x3A0x3ACompressedPointer0x29(ptr noundef nonnull %0, i32 noundef %i.jq, i32 noundef %.0.copyload.i1067) #13
  %.val953 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jw = getelementptr inbounds nuw i8, ptr %.val953, i64 %i.ja
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i32 %i.jv, ptr %i.jx, align 1
  %.val913 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.jy = getelementptr inbounds nuw i8, ptr %.val913, i64 %i.c
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %.0.copyload.i1068 = load i32, ptr %i.jz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1068) #13, !srcloc !14
  %.val971 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ka = getelementptr inbounds nuw i8, ptr %.val971, i64 %i.c
  %.0.copyload.i1069 = load i8, ptr %i.ka, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1069) #13, !srcloc !31
  %i.kb = and i8 %.0.copyload.i1069, 1
  %.not909 = icmp eq i8 %i.kb, 0                  ; 2 uses
  %i.kc = select i1 %.not909, i32 %.0.copyload.i1068, i32 %i.a
  %.val = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.kd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.d
  %.0.copyload.i1070 = load i32, ptr %i.kd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1070) #13, !srcloc !14
  %i.ke = mul i32 %.0.copyload.i1070, 12
  %i.kf = select i1 %.not909, i32 %i.ke, i32 96
  %i.kg = add i32 %i.kf, %i.kc
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.loopexit1072
  %.0871 = phi i8 [ 1, %bb.au ], [ 0, %.loopexit1072 ]
  %.12 = phi i32 [ %.11, %bb.au ], [ %.1869, %.loopexit1072 ]
  %.1 = phi i32 [ %i.kg, %bb.au ], [ %i.at, %.loopexit1072 ]
  %i.kh = zext i32 %1 to i64                      ; 3 uses
  %.val973 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ki = getelementptr inbounds nuw i8, ptr %.val973, i64 %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i8 %.0871, ptr %i.kj, align 1
  %.val952 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %.val952, i64 %i.kh
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  store i32 %.1, ptr %i.kl, align 1
  %.val951 = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.km = getelementptr inbounds nuw i8, ptr %.val951, i64 %i.kh
  store i32 %.12, ptr %i.km, align 1
  ret void
}

declare void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ASmallDenseMap0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRef0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x208u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRef0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x3E0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRef0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRef0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRef0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRef0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x3E0x2A0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCBase0x3A0x3AallocWeakSlot0x28hermes0x3A0x3Avm0x3A0x3ACompressedPointer0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x3E0x3A0x3Avalue0x200x260x260x20is_constructible0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x3E0x3A0x3Areference0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x2A0x3E0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x3E0x3E0x3A0x3Ainsert0x3Cstd0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i32 %3, %4                           ; 5 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.loopexit521, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %i.a, 2                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 33 uses
  %i.e = zext i32 %1 to i64                       ; 5 uses
  %i.f = add nuw nsw i64 %i.e, 8                  ; 2 uses
  %.val485 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val485, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.h = add nuw nsw i64 %i.e, 4                  ; 4 uses
  %.val484 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val484, i64 %i.h
  %.0.copyload.i503 = load i32, ptr %i.i, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i503) #13, !srcloc !14
  %i.j = sub i32 %.0.copyload.i, %.0.copyload.i503
  %i.k = ashr i32 %i.j, 2
  %.not = icmp sgt i32 %i.c, %i.k
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sub i32 %.0.copyload.i503, %2            ; 3 uses
  %i.m = ashr i32 %i.l, 2
  %.not466 = icmp slt i32 %i.m, %i.c
  br i1 %.not466, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %i.l, -4
  %i.o = sub i32 %3, %i.n                         ; 3 uses
  %.not467 = icmp eq i32 %4, %i.o
  br i1 %.not467, label %.loopexit525, label %.preheader524

.preheader524:                                    ; preds = %bb.d, %.preheader524
  %.0439 = phi i32 [ %i.p, %.preheader524 ], [ %i.o, %bb.d ]
  %.0438 = phi i32 [ %i.u, %.preheader524 ], [ %.0.copyload.i503, %bb.d ] ; 2 uses
  %i.p = add i32 %.0439, -4                       ; 3 uses
  %i.q = zext i32 %i.p to i64
  %.val483 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val483, i64 %i.q
  %.0.copyload.i504 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i504) #13, !srcloc !14
  %i.s = zext i32 %.0438 to i64
  %.val502 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val502, i64 %i.s
  store i32 %.0.copyload.i504, ptr %i.t, align 1
  %i.u = add i32 %.0438, 4                        ; 2 uses
  %.not468 = icmp eq i32 %4, %i.p
  br i1 %.not468, label %.loopexit525, label %.preheader524

.loopexit525:                                     ; preds = %.preheader524, %bb.d
  %.1 = phi i32 [ %.0.copyload.i503, %bb.d ], [ %i.u, %.preheader524 ] ; 2 uses
  %.val501 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val501, i64 %i.h
  store i32 %.1, ptr %i.v, align 1
  %i.w = icmp sgt i32 %i.l, 0
  br i1 %i.w, label %bb.m, label %.loopexit521

bb.e:                                             ; preds = %bb.b
  %.val482 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val482, i64 %i.e
  %.0.copyload.i505 = load i32, ptr %i.x, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i505) #13, !srcloc !14
  %i.y = sub i32 %.0.copyload.i503, %.0.copyload.i505
  %i.z = ashr i32 %i.y, 2
  %i.aa = add nsw i32 %i.z, %i.c                  ; 2 uses
  %i.ab = icmp ult i32 %i.aa, 1073741824
  br i1 %i.ab, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ac = sub i32 %.0.copyload.i, %.0.copyload.i505 ; 2 uses
  %i.ad = ashr i32 %i.ac, 1
  %i.ae = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %i.ad)
  %i.af = icmp ugt i32 %i.ac, 2147483643
  %i.ag = select i1 %i.af, i32 1073741823, i32 %i.ae ; 3 uses
  %.not461 = icmp eq i32 %i.ag, 0
  br i1 %.not461, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp ugt i32 %i.ag, 1073741823
  br i1 %i.ah, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = shl nuw i32 %i.ag, 2                    ; 2 uses
  %i.aj = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ai)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.h
  %.pre-phi533 = phi i32 [ %i.ai, %bb.h ], [ 0, %bb.f ]
  %.0 = phi i32 [ %i.aj, %bb.h ], [ 0, %bb.f ]    ; 2 uses
  %i.ak = sub i32 %2, %.0.copyload.i505           ; 2 uses
  %i.al = and i32 %i.ak, -4
  %i.am = add i32 %.0, %i.al                      ; 5 uses
  %i.an = add i32 %.0, %.pre-phi533
  %i.ao = icmp eq i32 %3, %4
  br i1 %i.ao, label %bb.i, label %5

5:                                                ; preds = %._crit_edge
  %6 = and i32 %i.a, 2147483644
  %7 = add nsw i32 %i.a, -4                       ; 2 uses
  %8 = lshr i32 %7, 2
  %9 = add nuw nsw i32 %8, 1
  %10 = and i32 %9, 7                             ; 2 uses
  %.not462 = icmp eq i32 %10, 0
  br i1 %.not462, label %.loopexit519, label %.preheader518

.preheader518:                                    ; preds = %5, %.preheader518
  %.0445 = phi i32 [ %i.ap, %.preheader518 ], [ %3, %5 ]
  %.0442 = phi i32 [ %i.av, %.preheader518 ], [ 0, %5 ]
  %.1440 = phi i32 [ %i.au, %.preheader518 ], [ %i.am, %5 ] ; 2 uses
  %i.ap = add i32 %.0445, -4                      ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %.val481 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.val481, i64 %i.aq
  %.0.copyload.i506 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i506) #13, !srcloc !14
  %i.as = zext i32 %.1440 to i64
  %.val500 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val500, i64 %i.as
  store i32 %.0.copyload.i506, ptr %i.at, align 1
  %i.au = add i32 %.1440, 4                       ; 2 uses
  %i.av = add nuw nsw i32 %.0442, 1               ; 2 uses
  %.not463 = icmp eq i32 %i.av, %10
  br i1 %.not463, label %.loopexit519, label %.preheader518

.loopexit519:                                     ; preds = %.preheader518, %5
  %.1446 = phi i32 [ %3, %5 ], [ %i.ap, %.preheader518 ]
  %.2441 = phi i32 [ %i.am, %5 ], [ %i.au, %.preheader518 ]
  %i.aw = add i32 %i.am, %6                       ; 2 uses
  %i.ax = icmp ugt i32 %7, 27
  br i1 %i.ax, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit519, %.preheader
  %.2447 = phi i32 [ %i.ch, %.preheader ], [ %.1446, %.loopexit519 ] ; 8 uses
  %.3 = phi i32 [ %i.cm, %.preheader ], [ %.2441, %.loopexit519 ] ; 2 uses
  %i.ay = add i32 %.2447, -4
  %i.az = zext i32 %i.ay to i64
  %.val480 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.val480, i64 %i.az
  %.0.copyload.i507 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i507) #13, !srcloc !14
  %i.bb = zext i32 %.3 to i64                     ; 8 uses
  %.val499 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.val499, i64 %i.bb
  store i32 %.0.copyload.i507, ptr %i.bc, align 1
  %i.bd = add i32 %.2447, -8
  %i.be = zext i32 %i.bd to i64
  %.val479 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.be
  %.0.copyload.i508 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i508) #13, !srcloc !14
  %.val498 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val498, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 %.0.copyload.i508, ptr %i.bh, align 1
  %i.bi = add i32 %.2447, -12
  %i.bj = zext i32 %i.bi to i64
  %.val478 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val478, i64 %i.bj
  %.0.copyload.i509 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i509) #13, !srcloc !14
  %.val497 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val497, i64 %i.bb
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %.0.copyload.i509, ptr %i.bm, align 1
  %i.bn = add i32 %.2447, -16
  %i.bo = zext i32 %i.bn to i64
  %.val477 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.val477, i64 %i.bo
  %.0.copyload.i510 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i510) #13, !srcloc !14
  %.val496 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.val496, i64 %i.bb
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 %.0.copyload.i510, ptr %i.br, align 1
  %i.bs = add i32 %.2447, -20
  %i.bt = zext i32 %i.bs to i64
  %.val476 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val476, i64 %i.bt
  %.0.copyload.i511 = load i32, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i511) #13, !srcloc !14
  %.val495 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.val495, i64 %i.bb
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i32 %.0.copyload.i511, ptr %i.bw, align 1
  %i.bx = add i32 %.2447, -24
  %i.by = zext i32 %i.bx to i64
  %.val475 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %.val475, i64 %i.by
  %.0.copyload.i512 = load i32, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i512) #13, !srcloc !14
  %.val494 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.val494, i64 %i.bb
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  store i32 %.0.copyload.i512, ptr %i.cb, align 1
  %i.cc = add i32 %.2447, -28
  %i.cd = zext i32 %i.cc to i64
  %.val474 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.val474, i64 %i.cd
  %.0.copyload.i513 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i513) #13, !srcloc !14
  %.val493 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %.val493, i64 %i.bb
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store i32 %.0.copyload.i513, ptr %i.cg, align 1
  %i.ch = add i32 %.2447, -32                     ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %.val473 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.val473, i64 %i.ci
  %.0.copyload.i514 = load i32, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i514) #13, !srcloc !14
  %.val492 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.val492, i64 %i.bb
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  store i32 %.0.copyload.i514, ptr %i.cl, align 1
  %i.cm = add i32 %.3, 32                         ; 2 uses
  %.not464 = icmp eq i32 %i.cm, %i.aw
  br i1 %.not464, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.loopexit519
  %.val472 = load ptr, ptr %i.d, align 8, !tbaa !13
  %11 = getelementptr inbounds nuw i8, ptr %.val472, i64 %i.e
  %.0.copyload.i515 = load i32, ptr %11, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i515) #13, !srcloc !14
  %.pre = sub i32 %2, %.0.copyload.i515
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %.loopexit
  %.pre-phi = phi i32 [ %i.ak, %._crit_edge ], [ %.pre, %.loopexit ] ; 2 uses
  %.1443 = phi i32 [ %i.am, %._crit_edge ], [ %i.aw, %.loopexit ]
  %.4 = phi i32 [ %.0.copyload.i505, %._crit_edge ], [ %.0.copyload.i515, %.loopexit ] ; 3 uses
  %i.cn = sub i32 %i.am, %.pre-phi
  %i.co = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.cn, i32 noundef %.4, i32 noundef %.pre-phi) #13
  %i.cp = sub i32 %.0.copyload.i503, %2           ; 2 uses
  %i.cq = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.1443, i32 noundef %2, i32 noundef %i.cp) #13
  %.val491 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %.val491, i64 %i.f
  store i32 %i.an, ptr %i.cr, align 1
  %i.cs = add i32 %i.cq, %i.cp
  %.val490 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.h
  store i32 %i.cs, ptr %i.ct, align 1
  %.val489 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.val489, i64 %i.e
  store i32 %i.co, ptr %i.cu, align 1
  %.not465 = icmp eq i32 %.4, 0
  br i1 %.not465, label %.loopexit521, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.4) #13
  br label %.loopexit521

bb.k:                                             ; preds = %bb.e
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #13
  tail call void @wasm_rt_trap(i32 noundef 5) #14
  unreachable

bb.l:                                             ; preds = %bb.g
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef nonnull %0)
  unreachable

bb.m:                                             ; preds = %bb.c, %.loopexit525
  %.2 = phi i32 [ %.1, %.loopexit525 ], [ %.0.copyload.i503, %bb.c ] ; 6 uses
  %.0437 = phi i32 [ %i.o, %.loopexit525 ], [ %4, %bb.c ] ; 2 uses
  %i.cv = and i32 %i.a, 2147483644                ; 2 uses
  %i.cw = add i32 %i.cv, %2                       ; 2 uses
  %i.cx = sub i32 %.2, %i.cv                      ; 2 uses
  %i.cy = icmp ugt i32 %.0.copyload.i503, %i.cx
  br i1 %i.cy, label %.preheader522, label %.loopexit523

.preheader522:                                    ; preds = %bb.m, %.preheader522
  %.2444 = phi i32 [ %i.de, %.preheader522 ], [ %i.cx, %bb.m ] ; 2 uses
  %.5 = phi i32 [ %i.dd, %.preheader522 ], [ %.2, %bb.m ] ; 2 uses
  %i.cz = zext i32 %.2444 to i64
  %.val471 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %.val471, i64 %i.cz
  %.0.copyload.i516 = load i32, ptr %i.da, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i516) #13, !srcloc !14
  %i.db = zext i32 %.5 to i64
  %.val488 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.val488, i64 %i.db
  store i32 %.0.copyload.i516, ptr %i.dc, align 1
  %i.dd = add i32 %.5, 4                          ; 2 uses
  %i.de = add i32 %.2444, 4                       ; 2 uses
  %i.df = icmp ult i32 %i.de, %.0.copyload.i503
  br i1 %i.df, label %.preheader522, label %.loopexit523

.loopexit523:                                     ; preds = %.preheader522, %bb.m
  %.6 = phi i32 [ %.2, %bb.m ], [ %i.dd, %.preheader522 ]
  %.val487 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %.val487, i64 %i.h
  store i32 %.6, ptr %i.dg, align 1
  %.not469 = icmp eq i32 %.2, %i.cw
  br i1 %.not469, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit523
  %i.dh = sub i32 %.2, %i.cw                      ; 2 uses
  %i.di = and i32 %i.dh, -4
  %i.dj = sub i32 %.2, %i.di
  %i.dk = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.dj, i32 noundef %2, i32 noundef %i.dh) #13 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit523
  %i.dl = icmp eq i32 %3, %.0437
  br i1 %i.dl, label %.loopexit521, label %.preheader520

.preheader520:                                    ; preds = %bb.o, %.preheader520
  %.3448 = phi i32 [ %i.dm, %.preheader520 ], [ %3, %bb.o ]
  %.7 = phi i32 [ %i.dr, %.preheader520 ], [ %2, %bb.o ] ; 2 uses
  %i.dm = add i32 %.3448, -4                      ; 3 uses
  %i.dn = zext i32 %i.dm to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dn
  %.0.copyload.i517 = load i32, ptr %i.do, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i517) #13, !srcloc !14
  %i.dp = zext i32 %.7 to i64
  %.val486 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %.val486, i64 %i.dp
  store i32 %.0.copyload.i517, ptr %i.dq, align 1
  %i.dr = add i32 %.7, 4
  %.not470 = icmp eq i32 %i.dm, %.0437
  br i1 %.not470, label %.loopexit521, label %.preheader520

.loopexit521:                                     ; preds = %.preheader520, %bb.o, %bb.i, %bb.j, %.loopexit525, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cchar16_t0x20const0x2A0x3E0x3A0x3Avalue0x200x260x260x20is_constructible0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cchar16_t0x20const0x2A0x3E0x3A0x3Areference0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cchar16_t0x2A0x3E0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3A0x3Ainsert0x3Cchar16_t0x20const0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cchar16_t0x20const0x2A0x3E0x2C0x20char16_t0x20const0x2A0x2C0x20char16_t0x20const0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i32 %4, %3                           ; 4 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %i.a, 1                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.e = zext i32 %1 to i64                       ; 4 uses
  %i.f = add nuw nsw i64 %i.e, 8                  ; 2 uses
  %.val308.a = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val308.a, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.h = add nuw nsw i64 %i.e, 4                  ; 4 uses
  %.val307 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.h
  %.0.copyload.i316.a = load i32, ptr %i.i, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i316.a) #13, !srcloc !14
  %i.j = sub i32 %.0.copyload.i, %.0.copyload.i316.a
  %i.k = ashr i32 %i.j, 1
  %.not = icmp sgt i32 %i.c, %i.k
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sub i32 %.0.copyload.i316.a, %2          ; 3 uses
  %i.m = ashr i32 %i.l, 1
  %.not304.a = icmp slt i32 %i.m, %i.c
  br i1 %.not304.a, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %i.l, -2
  %i.o = add i32 %i.n, %3                         ; 4 uses
  %i.p = sub i32 %4, %i.o                         ; 2 uses
  %.not305.a = icmp eq i32 %4, %i.o
  br i1 %.not305.a, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0.copyload.i316.a, i32 noundef %i.o, i32 noundef %i.p) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = add i32 %i.p, %.0.copyload.i316.a        ; 2 uses
  %.val313.a = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val313.a, i64 %i.h
  store i32 %i.r, ptr %i.s, align 1
  %i.t = icmp slt i32 %i.l, 1
  br i1 %i.t, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.0286 = phi i32 [ %i.r, %bb.f ], [ %.0.copyload.i316.a, %bb.c ] ; 6 uses
  %.0285 = phi i32 [ %i.o, %bb.f ], [ %4, %bb.c ] ; 2 uses
  %i.u = and i32 %i.a, 2147483646                 ; 2 uses
  %i.v = add i32 %i.u, %2                         ; 2 uses
  %i.w = sub i32 %.0286, %i.u                     ; 2 uses
  %i.x = icmp ugt i32 %.0.copyload.i316.a, %i.w
  br i1 %i.x, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.g, %.preheader
  %.0287 = phi i32 [ %i.ac, %.preheader ], [ %.0286, %bb.g ] ; 2 uses
  %.0284 = phi i32 [ %i.ad, %.preheader ], [ %i.w, %bb.g ] ; 2 uses
  %i.y = zext i32 %.0284 to i64
  %.val314.a = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val314.a, i64 %i.y
  %.0.copyload.i317.a = load i16, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i317.a) #13, !srcloc !35
  %i.aa = zext i32 %.0287 to i64
  %.val315 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val315, i64 %i.aa
  store i16 %.0.copyload.i317.a, ptr %i.ab, align 1
  %i.ac = add i32 %.0287, 2                       ; 2 uses
  %i.ad = add i32 %.0284, 2                       ; 2 uses
  %i.ae = icmp ult i32 %i.ad, %.0.copyload.i316.a
  br i1 %i.ae, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.g
  %.1288 = phi i32 [ %.0286, %bb.g ], [ %i.ac, %.preheader ]
  %.val312 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.val312, i64 %i.h
  store i32 %.1288, ptr %i.af, align 1
  %.not306 = icmp eq i32 %.0286, %i.v
  br i1 %.not306, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ag = sub i32 %.0286, %i.v                    ; 2 uses
  %i.ah = and i32 %i.ag, -2
  %i.ai = sub i32 %.0286, %i.ah
  %i.aj = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef %2, i32 noundef %i.ag) #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.ak = icmp eq i32 %3, %.0285
  br i1 %i.ak, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = sub i32 %.0285, %3
  %i.am = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %i.al) #13 ; 0 uses
  br label %bb.s

bb.k:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %.0.copyload.i318 = load i32, ptr %i.an, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i318) #13, !srcloc !14
  %i.ao = sub i32 %.0.copyload.i316.a, %.0.copyload.i318
  %i.ap = ashr i32 %i.ao, 1
  %i.aq = add nsw i32 %i.ap, %i.c                 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = sub i32 %.0.copyload.i, %.0.copyload.i318 ; 2 uses
  %i.at = tail call i32 @llvm.umax.i32(i32 %i.aq, i32 %i.as)
  %i.au = icmp ugt i32 %i.as, 2147483645
  %i.av = select i1 %i.au, i32 2147483647, i32 %i.at ; 4 uses
  %.not301 = icmp eq i32 %i.av, 0
  br i1 %.not301, label %5, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = shl nuw i32 %i.av, 1
  %i.ay = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ax)
  br label %5

5:                                                ; preds = %bb.l, %bb.n
  %.0 = phi i32 [ %i.ay, %bb.n ], [ 0, %bb.l ]    ; 3 uses
  %6 = sub i32 %2, %.0.copyload.i318              ; 2 uses
  %7 = and i32 %6, -2
  %8 = add i32 %.0, %7                            ; 2 uses
  %.not302 = icmp eq i32 %3, %4
  br i1 %.not302, label %bb.o, label %9

9:                                                ; preds = %5
  %10 = and i32 %i.a, 2147483646                  ; 2 uses
  %11 = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %8, i32 noundef %3, i32 noundef %10) #13
  %12 = add i32 %11, %10
  br label %bb.o

bb.o:                                             ; preds = %9, %5
  %.1 = phi i32 [ %12, %9 ], [ %8, %5 ]
  %i.az = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %.0.copyload.i318, i32 noundef %6) #13
  %13 = sub i32 %.0.copyload.i316.a, %2           ; 2 uses
  %i.ba = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef %2, i32 noundef %13) #13
  %14 = shl nuw i32 %i.av, 1
  %i.bb = add i32 %.0, %14
  %.val311 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.f
  store i32 %i.bb, ptr %i.bc, align 1
  %i.bd = add i32 %i.ba, %13
  %.val310 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val310, i64 %i.h
  store i32 %i.bd, ptr %i.be, align 1
  %.val309 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.e
  store i32 %i.az, ptr %i.bf, align 1
  %.not303 = icmp eq i32 %.0.copyload.i318, 0
  br i1 %.not303, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i318) #13
  br label %bb.s

bb.q:                                             ; preds = %bb.k
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #13
  tail call void @wasm_rt_trap(i32 noundef 5) #14
  unreachable

bb.r:                                             ; preds = %bb.m
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef nonnull %0)
  unreachable

bb.s:                                             ; preds = %bb.a, %bb.f, %bb.i, %bb.p, %bb.o, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cchar0x2A0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cchar0x2A0x3E0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Ainsert0x3Cchar0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cchar0x20const0x2A0x3E0x2C0x20char0x2A0x2C0x20char0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 63 uses
  %i.e = zext i32 %1 to i64                       ; 9 uses
  %.val651 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %.val651, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.g = add nuw nsw i64 %i.e, 11                 ; 7 uses
  %.val676 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %.val676, i64 %i.g
  %.0.copyload.i706 = load i8, ptr %i.h, align 1  ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i706) #13, !srcloc !31
  %i.i = icmp slt i8 %.0.copyload.i706, 0         ; 2 uses
  %i.j = select i1 %i.i, i32 %.0.copyload.i, i32 %1 ; 7 uses
  %i.k = sub i32 %2, %i.j                         ; 8 uses
  %i.l = icmp eq i32 %3, %4
  br i1 %i.l, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = zext i8 %.0.copyload.i706 to i32
  %i.n = sub i32 %4, %3                           ; 18 uses
  %i.o = add nuw nsw i64 %i.e, 4                  ; 3 uses
  %.val650 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val650, i64 %i.o
  %.0.copyload.i707 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i707) #13, !srcloc !14
  %i.q = select i1 %i.i, i32 %.0.copyload.i707, i32 %i.m ; 13 uses
  %i.r = add i32 %i.q, %i.j
  %i.s = icmp ult i32 %i.r, %3
  %i.t = icmp ult i32 %3, %i.j
  %.not631 = or i1 %i.t, %i.s
  br i1 %.not631, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %.val649 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val649, i64 %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i708 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i708) #13, !srcloc !14
  %i.w = and i32 %.0.copyload.i708, 2147483647
  %i.x = add nsw i32 %i.w, -1
  %i.y = icmp sgt i8 %.0.copyload.i706, -1
  %i.z = select i1 %i.y, i32 10, i32 %i.x         ; 3 uses
  %i.aa = sub i32 %i.z, %i.q
  %.not638 = icmp ugt i32 %i.n, %i.aa
  br i1 %.not638, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i32 %i.q, %i.k
  br i1 %i.ab, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add i32 %i.n, %2
  %i.ad = sub i32 %i.q, %i.k
  %i.ae = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.ac, i32 noundef %2, i32 noundef %i.ad) #13 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.af = add i32 %i.q, %i.n
  %i.ag = sub i32 %i.af, %i.z
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fgrow_by0x28unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.z, i32 noundef %i.ag, i32 noundef %i.q, i32 noundef %i.k, i32 noundef 0, i32 noundef %i.n)
  %.val648 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.val648, i64 %i.e
  %.0.copyload.i709 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i709) #13, !srcloc !14
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.j, %bb.e ], [ %.0.copyload.i709, %bb.f ] ; 2 uses
  %i.ai = add i32 %i.q, %i.n                      ; 3 uses
  %.val705 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val705, i64 %i.g
  %.0.copyload.i710 = load i8, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i710) #13, !srcloc !36
  %i.ak = icmp slt i8 %.0.copyload.i710, 0
  %.val656 = load ptr, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.val656, i64 %i.o
  store i32 %i.ai, ptr %i.al, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = trunc i32 %i.ai to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.val656, i64 %i.g
  store i8 %i.am, ptr %i.an, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = add i32 %.0, %i.ai
  %i.ap = zext i32 %i.ao to i64
  %.val699 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val699, i64 %i.ap
  store i8 0, ptr %i.aq, align 1
  %i.ar = add i32 %.0, %i.k                       ; 2 uses
  %i.as = and i32 %i.n, 7                         ; 2 uses
  %.not639 = icmp eq i32 %i.as, 0
  br i1 %.not639, label %.loopexit743, label %.preheader742

.preheader742:                                    ; preds = %bb.j, %.preheader742
  %.0618 = phi i32 [ %i.az, %.preheader742 ], [ 0, %bb.j ]
  %.0612 = phi i32 [ %i.ax, %.preheader742 ], [ %3, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %i.ay, %.preheader742 ], [ %i.ar, %bb.j ] ; 2 uses
  %i.at = zext i32 %.0612 to i64
  %.val675 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val675, i64 %i.at
  %.0.copyload.i711 = load i8, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i711) #13, !srcloc !31
  %i.av = zext i32 %.1 to i64
  %.val698 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val698, i64 %i.av
  store i8 %.0.copyload.i711, ptr %i.aw, align 1
  %i.ax = add i32 %.0612, 1                       ; 2 uses
  %i.ay = add i32 %.1, 1                          ; 2 uses
  %i.az = add nuw nsw i32 %.0618, 1               ; 2 uses
  %.not640 = icmp eq i32 %i.az, %i.as
  br i1 %.not640, label %.loopexit743, label %.preheader742

.loopexit743:                                     ; preds = %.preheader742, %bb.j
  %.1613 = phi i32 [ %3, %bb.j ], [ %i.ax, %.preheader742 ]
  %.2 = phi i32 [ %i.ar, %bb.j ], [ %i.ay, %.preheader742 ]
  %i.ba = sub i32 %3, %4
  %i.bb = icmp ult i32 %i.ba, -7
  br i1 %i.bb, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit743, %.preheader
  %.2614 = phi i32 [ %i.cj, %.preheader ], [ %.1613, %.loopexit743 ] ; 2 uses
  %.3 = phi i32 [ %i.ci, %.preheader ], [ %.2, %.loopexit743 ] ; 2 uses
  %i.bc = zext i32 %.2614 to i64                  ; 8 uses
  %.val674 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.val674, i64 %i.bc
  %.0.copyload.i712 = load i8, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i712) #13, !srcloc !31
  %i.be = zext i32 %.3 to i64                     ; 8 uses
  %.val697 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val697, i64 %i.be
  store i8 %.0.copyload.i712, ptr %i.bf, align 1
  %.val673 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val673, i64 %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %.0.copyload.i713 = load i8, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i713) #13, !srcloc !31
  %.val696 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val696, i64 %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %.0.copyload.i713, ptr %i.bj, align 1
  %.val672 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val672, i64 %i.bc
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %.0.copyload.i714 = load i8, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i714) #13, !srcloc !31
  %.val695 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val695, i64 %i.be
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store i8 %.0.copyload.i714, ptr %i.bn, align 1
  %.val671 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val671, i64 %i.bc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %.0.copyload.i715 = load i8, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i715) #13, !srcloc !31
  %.val694 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.val694, i64 %i.be
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  store i8 %.0.copyload.i715, ptr %i.br, align 1
  %.val670 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.val670, i64 %i.bc
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %.0.copyload.i716 = load i8, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i716) #13, !srcloc !31
  %.val693 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.be
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i8 %.0.copyload.i716, ptr %i.bv, align 1
end_hunk_24
