Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_7?download=true
inline.NumInlined: 10002
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x3E0x3A0x3Avalue0x200x260x260x20is_constructible0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x3E0x3A0x3Areference0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x2A0x3E0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x3E0x3E0x3A0x3Ainsert0x3Cstd0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Areverse_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2A0x20const0x2A0x3E0x3E0x29:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %.val489, i64 %i.e
  store i32 %i.cu, ptr %i.da, align 1
  %.not465 = icmp eq i32 %.4, 0
  br i1 %.not465, label %.loopexit521, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.4) #13
  br label %.loopexit521

bb.l:                                             ; preds = %bb.e
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #13
  tail call void @wasm_rt_trap(i32 noundef 5) #14
  unreachable

bb.m:                                             ; preds = %bb.g
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef nonnull %0)
  unreachable

bb.n:                                             ; preds = %bb.c, %.loopexit525
  %.2 = phi i32 [ %.1, %.loopexit525 ], [ %.0.copyload.i503, %bb.c ] ; 6 uses
  %.0437 = phi i32 [ %i.o, %.loopexit525 ], [ %4, %bb.c ] ; 2 uses
  %i.db = and i32 %i.a, 2147483644                ; 2 uses
  %i.dc = add i32 %i.db, %2                       ; 2 uses
  %i.dd = sub i32 %.2, %i.db                      ; 2 uses
  %i.de = icmp ugt i32 %.0.copyload.i503, %i.dd
  br i1 %i.de, label %.preheader522, label %.loopexit523

.preheader522:                                    ; preds = %bb.n, %.preheader522
  %.2444 = phi i32 [ %i.dk, %.preheader522 ], [ %i.dd, %bb.n ] ; 2 uses
  %.5 = phi i32 [ %i.dj, %.preheader522 ], [ %.2, %bb.n ] ; 2 uses
  %i.df = zext i32 %.2444 to i64
  %.val471 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %.val471, i64 %i.df
  %.0.copyload.i516 = load i32, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i516) #13, !srcloc !14
  %i.dh = zext i32 %.5 to i64
  %.val488 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %.val488, i64 %i.dh
  store i32 %.0.copyload.i516, ptr %i.di, align 1
  %i.dj = add i32 %.5, 4                          ; 2 uses
  %i.dk = add i32 %.2444, 4                       ; 2 uses
  %i.dl = icmp ult i32 %i.dk, %.0.copyload.i503
  br i1 %i.dl, label %.preheader522, label %.loopexit523

.loopexit523:                                     ; preds = %.preheader522, %bb.n
  %.6 = phi i32 [ %.2, %bb.n ], [ %i.dj, %.preheader522 ]
  %.val487 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.val487, i64 %i.h
  store i32 %.6, ptr %i.dm, align 1
  %.not469 = icmp eq i32 %.2, %i.dc
  br i1 %.not469, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit523
  %i.dn = sub i32 %.2, %i.dc                      ; 2 uses
  %i.do = and i32 %i.dn, -4
  %i.dp = sub i32 %.2, %i.do
  %i.dq = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.dp, i32 noundef %2, i32 noundef %i.dn) #13 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit523
  %i.dr = icmp eq i32 %3, %.0437
  br i1 %i.dr, label %.loopexit521, label %.preheader520

.preheader520:                                    ; preds = %bb.p, %.preheader520
  %.3448 = phi i32 [ %i.ds, %.preheader520 ], [ %3, %bb.p ]
  %.7 = phi i32 [ %i.dx, %.preheader520 ], [ %2, %bb.p ] ; 2 uses
  %i.ds = add i32 %.3448, -4                      ; 3 uses
  %i.dt = zext i32 %i.ds to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dt
  %.0.copyload.i517 = load i32, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i517) #13, !srcloc !14
  %i.dv = zext i32 %.7 to i64
  %.val486 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %.val486, i64 %i.dv
  store i32 %.0.copyload.i517, ptr %i.dw, align 1
  %i.dx = add i32 %.7, 4
  %.not470 = icmp eq i32 %i.ds, %.0437
  br i1 %.not470, label %.loopexit521, label %.preheader520

.loopexit521:                                     ; preds = %.preheader520, %bb.p, %bb.j, %bb.k, %.loopexit525, %bb.a
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
  %.val308 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val308, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.h = add nuw nsw i64 %i.e, 4                  ; 4 uses
  %.val307 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.h
  %.0.copyload.i316 = load i32, ptr %i.i, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i316) #13, !srcloc !14
  %i.j = sub i32 %.0.copyload.i, %.0.copyload.i316
  %i.k = ashr i32 %i.j, 1
  %.not = icmp sgt i32 %i.c, %i.k
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sub i32 %.0.copyload.i316, %2            ; 3 uses
  %i.m = ashr i32 %i.l, 1
  %.not304 = icmp slt i32 %i.m, %i.c
  br i1 %.not304, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %i.l, -2
  %i.o = add i32 %i.n, %3                         ; 4 uses
  %i.p = sub i32 %4, %i.o                         ; 2 uses
  %.not305 = icmp eq i32 %4, %i.o
  br i1 %.not305, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0.copyload.i316, i32 noundef %i.o, i32 noundef %i.p) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = add i32 %i.p, %.0.copyload.i316          ; 2 uses
  %.val313 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val313, i64 %i.h
  store i32 %i.r, ptr %i.s, align 1
  %i.t = icmp slt i32 %i.l, 1
  br i1 %i.t, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.0286 = phi i32 [ %i.r, %bb.f ], [ %.0.copyload.i316, %bb.c ] ; 6 uses
  %.0285 = phi i32 [ %i.o, %bb.f ], [ %4, %bb.c ] ; 2 uses
  %i.u = and i32 %i.a, 2147483646                 ; 2 uses
  %i.v = add i32 %i.u, %2                         ; 2 uses
  %i.w = sub i32 %.0286, %i.u                     ; 2 uses
  %i.x = icmp ugt i32 %.0.copyload.i316, %i.w
  br i1 %i.x, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.g, %.preheader
  %.0287 = phi i32 [ %i.ac, %.preheader ], [ %.0286, %bb.g ] ; 2 uses
  %.0284 = phi i32 [ %i.ad, %.preheader ], [ %i.w, %bb.g ] ; 2 uses
  %i.y = zext i32 %.0284 to i64
  %.val314 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.val314, i64 %i.y
  %.0.copyload.i317 = load i16, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i317) #13, !srcloc !35
  %i.aa = zext i32 %.0287 to i64
  %.val315 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val315, i64 %i.aa
  store i16 %.0.copyload.i317, ptr %i.ab, align 1
  %i.ac = add i32 %.0287, 2                       ; 2 uses
  %i.ad = add i32 %.0284, 2                       ; 2 uses
  %i.ae = icmp ult i32 %i.ad, %.0.copyload.i316
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
  %i.ao = sub i32 %.0.copyload.i316, %.0.copyload.i318
  %i.ap = ashr i32 %i.ao, 1
  %i.aq = add nsw i32 %i.ap, %i.c                 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = sub i32 %.0.copyload.i, %.0.copyload.i318 ; 2 uses
  %i.at = tail call i32 @llvm.umax.i32(i32 %i.aq, i32 %i.as)
  %i.au = icmp ugt i32 %i.as, 2147483645
  %i.av = select i1 %i.au, i32 2147483647, i32 %i.at ; 4 uses
  %.not301 = icmp eq i32 %i.av, 0
  br i1 %.not301, label %bb.n, label %5

5:                                                ; preds = %bb.l
  %6 = icmp slt i32 %i.av, 0
  br i1 %6, label %7, label %bb.m

bb.m:                                             ; preds = %5
  %i.aw = shl nuw i32 %i.av, 1
  %i.ax = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.aw)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0 = phi i32 [ %i.ax, %bb.m ], [ 0, %bb.l ]    ; 3 uses
  %i.ay = sub i32 %2, %.0.copyload.i318           ; 2 uses
  %i.az = and i32 %i.ay, -2
  %i.ba = add i32 %.0, %i.az                      ; 2 uses
  %.not302 = icmp eq i32 %3, %4
  br i1 %.not302, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = and i32 %i.a, 2147483646                ; 2 uses
  %i.bc = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.ba, i32 noundef %3, i32 noundef %i.bb) #13
  %i.bd = add i32 %i.bc, %i.bb
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1 = phi i32 [ %i.bd, %bb.o ], [ %i.ba, %bb.n ]
  %i.be = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %.0.copyload.i318, i32 noundef %i.ay) #13
  %i.bf = sub i32 %.0.copyload.i316, %2           ; 2 uses
  %i.bg = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef %2, i32 noundef %i.bf) #13
  %i.bh = shl nuw i32 %i.av, 1
  %i.bi = add i32 %.0, %i.bh
  %.val311 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.f
  store i32 %i.bi, ptr %i.bj, align 1
  %i.bk = add i32 %i.bg, %i.bf
  %.val310 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val310, i64 %i.h
  store i32 %i.bk, ptr %i.bl, align 1
  %.val309 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.e
  store i32 %i.be, ptr %i.bm, align 1
  %.not303 = icmp eq i32 %.0.copyload.i318, 0
  br i1 %.not303, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i318) #13
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #13
  tail call void @wasm_rt_trap(i32 noundef 5) #14
  unreachable

7:                                                ; preds = %5
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef nonnull %0)
  unreachable

bb.s:                                             ; preds = %bb.a, %bb.f, %bb.i, %bb.q, %bb.p, %bb.j
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
  %.val669 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.val669, i64 %i.bc
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 5
  %.0.copyload.i717 = load i8, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i717) #13, !srcloc !31
  %.val692 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.be
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  store i8 %.0.copyload.i717, ptr %i.bz, align 1
  %.val668 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.val668, i64 %i.bc
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %.0.copyload.i718 = load i8, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i718) #13, !srcloc !31
  %.val691 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.val691, i64 %i.be
end_hunk_0
