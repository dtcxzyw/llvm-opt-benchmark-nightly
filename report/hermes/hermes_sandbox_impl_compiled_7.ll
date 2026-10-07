Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_7?download=true
inline.NumInlined: 10002
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x260x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fassign_no_alias0x3Cfalse0x3E0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29:bb.a
  store i8 %.0.copyload.i84, ptr %i.t, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = add nsw i32 %i.h, -1
  %i.v = add i32 %3, 1
  %i.w = sub i32 %i.v, %i.h
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.0.copyload.i85 = load i32, ptr %i.y, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i85) #13, !srcloc !14
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fgrow_by_and_replace0x28unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.u, i32 noundef %i.w, i32 noundef %.0.copyload.i85, i32 noundef 0, i32 noundef %.0.copyload.i85, i32 noundef %3, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Cunsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20int0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cunsigned0x20int0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %common.ret20, label %bb.b

common.ret20:                                     ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.val18, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Cunsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20int0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cunsigned0x20int0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %.0.copyload.i)
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0.copyload.i19 = load i32, ptr %i.e, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i19) #13, !srcloc !14
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Cunsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20int0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cunsigned0x20int0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %.0.copyload.i19)
  tail call void @w2c_hermes_dlfree(ptr noundef %0, i32 noundef %2) #13
  br label %common.ret20
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_write(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = zext i32 %i.c to i64                     ; 3 uses
  %.val53 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %.val53, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %3, ptr %i.g, align 1
  %.val52 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %.val52, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %2, ptr %i.i, align 1
  %i.j = add i32 %i.b, -8
  %i.k = add i32 %i.b, -12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = tail call i32 @w2c_wasi__snapshot__preview1_fd_write(ptr noundef %i.m, i32 noundef %1, i32 noundef %i.j, i32 noundef 1, i32 noundef %i.k) #13 ; 2 uses
  %.not = icmp eq i32 %i.n, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val51 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val51, i64 272032
  store i32 %i.n, ptr %i.o, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.0.copyload.i = load i32, ptr %i.q, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  %i.r = select i1 %.not, i32 %.0.copyload.i, i32 -1
  ret i32 %i.r
}

declare i32 @w2c_wasi__snapshot__preview1_fd_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fpartially_sorted_swap0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Cunsigned0x20int0x2C0x20unsigned0x20int0x3E0x260x29(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val83 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %.val83, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.g = zext i32 %1 to i64                       ; 2 uses
  %.val82 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %.val82, i64 %i.g
  %.0.copyload.i88 = load i32, ptr %i.h, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88) #13, !srcloc !14
  %i.i = icmp ult i32 %.0.copyload.i, %.0.copyload.i88 ; 2 uses
  %i.j = select i1 %i.i, i32 %3, i32 %1
  %i.k = zext i32 %i.j to i64
  %.val81 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.val81, i64 %i.k
  %.0.copyload.i89 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89) #13, !srcloc !14
  %i.m = zext i32 %i.c to i64
  %.val87 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val87, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %.0.copyload.i89, ptr %i.o, align 1
  %i.p = select i1 %i.i, i32 %1, i32 %3
  %i.q = zext i32 %i.p to i64
  %.val80 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val80, i64 %i.q
  %.0.copyload.i90 = load i32, ptr %i.r, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90) #13, !srcloc !14
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val86, i64 %i.e
  store i32 %.0.copyload.i90, ptr %i.s, align 1
  %i.t = add i32 %i.b, -4                         ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.val79 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val79, i64 %i.u
  %.0.copyload.i91 = load i32, ptr %i.v, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i91) #13, !srcloc !14
  %i.w = zext i32 %2 to i64                       ; 2 uses
  %.val78 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val78, i64 %i.w
  %.0.copyload.i92 = load i32, ptr %i.x, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i92) #13, !srcloc !14
  %i.y = icmp ult i32 %.0.copyload.i91, %.0.copyload.i92 ; 2 uses
  %i.z = select i1 %i.y, i32 %1, i32 %2
  %i.aa = zext i32 %i.z to i64
  %.val77 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val77, i64 %i.aa
  %.0.copyload.i93 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i93) #13, !srcloc !14
  %.val85 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val85, i64 %i.g
  store i32 %.0.copyload.i93, ptr %i.ac, align 1
  %i.ad = select i1 %i.y, i32 %2, i32 %i.t
  %i.ae = zext i32 %i.ad to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ae
  %.0.copyload.i94 = load i32, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i94) #13, !srcloc !14
  %.val84 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val84, i64 %i.w
  store i32 %.0.copyload.i94, ptr %i.ag, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_unsigned0x20int0x20hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3AIdentifierHashTable0x3A0x3AlookupString0x3Cchar0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar0x3E0x2C0x20unsigned0x20int0x2C0x20bool0x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 38 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %.val527.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.val527.a, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.d = add i32 %.0.copyload.i, -1               ; 2 uses
  %i.e = and i32 %i.d, %3
  %i.f = zext i32 %2 to i64
  %.val535.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val535.a, i64 %i.f
  %.0.copyload.i547 = load i64, ptr %i.g, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i547) #13, !srcloc !33
  %i.h = trunc i64 %.0.copyload.i547 to i32       ; 5 uses
  %i.i = lshr i64 %.0.copyload.i547, 32           ; 2 uses
  %i.j = trunc nuw i64 %i.i to i32                ; 4 uses
  %i.k = add i32 %i.j, %i.h                       ; 4 uses
  %.val526.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.val526.a, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.0.copyload.i548 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i548) #13, !srcloc !14
  %.val525.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val525.a, i64 %i.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.0.copyload.i549 = load i32, ptr %i.o, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i549) #13, !srcloc !14
  %.val524.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val524.a, i64 %i.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.0.copyload.i550 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i550) #13, !srcloc !14
  %i.r = add i32 %.0.copyload.i550, -1            ; 3 uses
  %.not485 = icmp ne i32 %4, 0
  %i.s = zext i32 %.0.copyload.i548 to i64
  %.not488.a = icmp eq i64 %i.i, 0                ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.0464 = phi i32 [ 0, %bb.a ], [ %.5, %.loopexit ] ; 11 uses
  %.0460 = phi i32 [ 1, %bb.a ], [ %i.es, %.loopexit ] ; 2 uses
  %.0459 = phi i32 [ %i.e, %bb.a ], [ %i.eu, %.loopexit ] ; 20 uses
  %.0457 = phi i32 [ 0, %bb.a ], [ %.1458, %.loopexit ] ; 11 uses
  switch i32 %i.r, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = add i32 %.0459, %.0.copyload.i549
  %i.u = zext i32 %i.t to i64
  %.val534.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val534.a, i64 %i.u
  %.0.copyload.i551 = load i8, ptr %i.v, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i551) #13, !srcloc !31
  %i.w = zext i8 %.0.copyload.i551 to i32
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.x = shl i32 %.0459, 1
  %i.y = add i32 %i.x, %.0.copyload.i549
  %i.z = zext i32 %i.y to i64
  %.val540.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.val540.a, i64 %i.z
  %.0.copyload.i552 = load i16, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i552) #13, !srcloc !35
  %i.ab = zext i16 %.0.copyload.i552 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ac = shl i32 %.0459, 2
  %i.ad = add i32 %i.ac, %.0.copyload.i549
  %i.ae = zext i32 %i.ad to i64
  %.val523.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.val523.a, i64 %i.ae
  %.0.copyload.i553 = load i32, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i553) #13, !srcloc !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0456 = phi i32 [ %i.w, %bb.c ], [ %i.ab, %bb.d ], [ %.0.copyload.i553, %bb.e ]
  %.not = icmp eq i32 %.0456, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not506.a = icmp eq i32 %.0464, 0
  %i.ag = select i1 %.not506.a, i32 %.0459, i32 %.0457
  br label %.loopexit584

bb.h:                                             ; preds = %bb.f
  switch i32 %i.r, label %bb.i [
    i32 0, label %bb.j
    i32 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = add i32 %.0459, %.0.copyload.i549
  %i.ai = zext i32 %i.ah to i64
  %.val533.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val533.a, i64 %i.ai
  %.0.copyload.i554 = load i8, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i554) #13, !srcloc !31
  %i.ak = zext i8 %.0.copyload.i554 to i32
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.al = shl i32 %.0459, 1
  %i.am = add i32 %i.al, %.0.copyload.i549
  %i.an = zext i32 %i.am to i64
  %.val539.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val539.a, i64 %i.an
  %.0.copyload.i555 = load i16, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i555) #13, !srcloc !35
  %i.ap = zext i16 %.0.copyload.i555 to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.aq = shl i32 %.0459, 2
  %i.ar = add i32 %i.aq, %.0.copyload.i549
  %i.as = zext i32 %i.ar to i64
  %.val522.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val522.a, i64 %i.as
  %.0.copyload.i556 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i556) #13, !srcloc !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.0 = phi i32 [ %i.ak, %bb.i ], [ %i.ap, %bb.j ], [ %.0.copyload.i556, %bb.k ]
  %5 = icmp eq i32 %.0, 1                         ; 3 uses
  %brmerge = or i1 %5, %.not485
  %i.au = select i1 %5, i32 1, i32 %.0464
  %.0459.mux = select i1 %5, i32 %.0459, i32 %.0457
  br i1 %brmerge, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val521.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val521.a, i64 %i.s
  %.0.copyload.i557 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i557) #13, !srcloc !14
  switch i32 %i.r, label %bb.n [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.aw = add i32 %.0459, %.0.copyload.i549
  %i.ax = zext i32 %i.aw to i64
  %.val532.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val532.a, i64 %i.ax
  %.0.copyload.i558 = load i8, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i558) #13, !srcloc !31
  %i.az = zext i8 %.0.copyload.i558 to i32
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ba = shl i32 %.0459, 1
  %i.bb = add i32 %i.ba, %.0.copyload.i549
  %i.bc = zext i32 %i.bb to i64
  %.val538.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.val538.a, i64 %i.bc
  %.0.copyload.i559 = load i16, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i559) #13, !srcloc !35
  %i.be = zext i16 %.0.copyload.i559 to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bf = shl i32 %.0459, 2
  %i.bg = add i32 %i.bf, %.0.copyload.i549
  %i.bh = zext i32 %i.bg to i64
  %.val520.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val520.a, i64 %i.bh
  %.0.copyload.i560 = load i32, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i560) #13, !srcloc !14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.0455 = phi i32 [ %i.az, %bb.n ], [ %i.be, %bb.o ], [ %.0.copyload.i560, %bb.p ]
  %i.bj = mul i32 %.0455, 12
  %i.bk = add i32 %.0.copyload.i557, -24
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = zext i32 %i.bl to i64                   ; 3 uses
  %.val519.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val519.a, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.0.copyload.i561 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i561) #13, !srcloc !14
  %.not482 = icmp eq i32 %.0.copyload.i561, %3
  br i1 %.not482, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %.val518.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.val518.a, i64 %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %.0.copyload.i562 = load i32, ptr %i.bq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i562) #13, !srcloc !14
  %.val517.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val517.a, i64 %i.bm
  %.0.copyload.i563 = load i32, ptr %i.br, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i563) #13, !srcloc !14
  %.not483 = icmp eq i32 %.0.copyload.i563, 0     ; 2 uses
  %i.bs = icmp ult i32 %.0.copyload.i562, -8
  %or.cond508 = select i1 %.not483, i1 true, i1 %i.bs
  br i1 %or.cond508, label %bb.al, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = zext i32 %.0.copyload.i563 to i64       ; 8 uses
  %.val516.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val516.a, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.0.copyload.i564 = load i32, ptr %i.bv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i564) #13, !srcloc !14
  %.val515.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.val515.a, i64 %i.bt
  %.0.copyload.i565 = load i32, ptr %i.bw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i565) #13, !srcloc !14
  %i.bx = and i32 %.0.copyload.i565, 16777216
  %.not484 = icmp eq i32 %i.bx, 0
  %i.by = icmp ugt i32 %.0.copyload.i565, 150994943 ; 2 uses
  br i1 %.not484, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.val514.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %.val514.a, i64 %i.bt
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %.0.copyload.i566 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i566) #13, !srcloc !14
  %i.cb = add i32 %.0.copyload.i563, 12
  %.val546.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.val546.a, i64 %i.bt
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 23
  %.0.copyload.i567 = load i8, ptr %i.cd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i567) #13, !srcloc !36
  %i.ce = icmp slt i8 %.0.copyload.i567, 0
  %i.cf = select i1 %i.ce, i32 %.0.copyload.i566, i32 %i.cb
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.cg = and i32 %.0.copyload.i565, 234881024
  switch i32 %i.cg, label %bb.y [
    i32 67108864, label %bb.x
    i32 134217728, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.ch = add i32 %.0.copyload.i563, 12
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.ci = add i32 %.0.copyload.i563, 8
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %.val513.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.val513.a, i64 %i.bt
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.0.copyload.i568 = load i32, ptr %i.ck, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i568) #13, !srcloc !14
  %i.cl = zext i32 %.0.copyload.i568 to i64       ; 2 uses
  %.val512.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.val512.a, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %.0.copyload.i569 = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i569) #13, !srcloc !14
  %i.co = add i32 %.0.copyload.i568, 12
  %.val545.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %.val545.a, i64 %i.cl
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 23
  %.0.copyload.i570 = load i8, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i570) #13, !srcloc !36
  %i.cr = icmp slt i8 %.0.copyload.i570, 0
  %i.cs = select i1 %i.cr, i32 %.0.copyload.i569, i32 %i.co
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.u
  %.1 = phi i32 [ %i.cf, %bb.u ], [ %i.cs, %bb.y ], [ %i.ch, %bb.w ], [ %i.ci, %bb.x ]
  %i.ct = and i32 %.0.copyload.i564, 2147483647
  %.not493.a = icmp eq i32 %i.ct, %i.j
  br i1 %.not493.a, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  br i1 %.not488.a, label %.loopexit584, label %.preheader588

.preheader588:                                    ; preds = %bb.aa, %bb.ab
  %.1465 = phi i32 [ %i.cz, %bb.ab ], [ %i.h, %bb.aa ] ; 2 uses
  %.1461 = phi i32 [ %i.cy, %bb.ab ], [ %.1, %bb.aa ] ; 2 uses
  %i.cu = zext i32 %.1465 to i64
  %.val531.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.val531.a, i64 %i.cu
  %.0.copyload.i571 = load i8, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i571) #13, !srcloc !31
  %i.cw = zext i32 %.1461 to i64
  %.val530.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.val530.a, i64 %i.cw
  %.0.copyload.i572 = load i8, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i572) #13, !srcloc !31
  %.not495 = icmp eq i8 %.0.copyload.i571, %.0.copyload.i572
  br i1 %.not495, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %.preheader588
  %i.cy = add i32 %.1461, 1
  %i.cz = add i32 %.1465, 1                       ; 2 uses
  %.not496 = icmp eq i32 %i.cz, %i.k
  br i1 %.not496, label %.loopexit584, label %.preheader588

bb.ac:                                            ; preds = %bb.s
  br i1 %i.by, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.val511 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %.val511, i64 %i.bt
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %.0.copyload.i573 = load i32, ptr %i.db, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i573) #13, !srcloc !14
  %i.dc = add i32 %.0.copyload.i563, 12
  %.val544.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %.val544.a, i64 %i.bt
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 23
  %.0.copyload.i574 = load i8, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i574) #13, !srcloc !36
  %i.df = icmp slt i8 %.0.copyload.i574, 0
  %i.dg = select i1 %i.df, i32 %.0.copyload.i573, i32 %i.dc
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %i.dh = and i32 %.0.copyload.i565, 251658240
  switch i32 %i.dh, label %bb.ah [
    i32 50331648, label %bb.ag
    i32 117440512, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.di = add i32 %.0.copyload.i563, 12
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.dj = add i32 %.0.copyload.i563, 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %.val510 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.bt
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.0.copyload.i575 = load i32, ptr %i.dl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i575) #13, !srcloc !14
  %i.dm = zext i32 %.0.copyload.i575 to i64       ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %.0.copyload.i576 = load i32, ptr %i.do, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i576) #13, !srcloc !14
  %i.dp = add i32 %.0.copyload.i575, 12
  %.val543.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %.val543.a, i64 %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 23
  %.0.copyload.i577 = load i8, ptr %i.dr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i577) #13, !srcloc !36
  %i.ds = icmp slt i8 %.0.copyload.i577, 0
  %i.dt = select i1 %i.ds, i32 %.0.copyload.i576, i32 %i.dp
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  %.2 = phi i32 [ %i.dg, %bb.ad ], [ %i.dt, %bb.ah ], [ %i.di, %bb.af ], [ %i.dj, %bb.ag ]
  %i.du = and i32 %.0.copyload.i564, 2147483647
  %.not487 = icmp eq i32 %i.du, %i.j
  br i1 %.not487, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not488.a, label %.loopexit584, label %.preheader591

.preheader591:                                    ; preds = %bb.aj, %bb.ak
  %.2466 = phi i32 [ %i.ec, %bb.ak ], [ %i.h, %bb.aj ] ; 2 uses
  %.2462 = phi i32 [ %i.eb, %bb.ak ], [ %.2, %bb.aj ] ; 2 uses
  %i.dv = zext i32 %.2466 to i64
  %.val542 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %.val542, i64 %i.dv
  %.0.copyload.i578 = load i8, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i578) #13, !srcloc !36
  %i.dx = sext i8 %.0.copyload.i578 to i32
  %i.dy = zext i32 %.2462 to i64
  %.val537 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dz = getelementptr inbounds nuw i8, ptr %.val537, i64 %i.dy
  %.0.copyload.i579 = load i16, ptr %i.dz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i579) #13, !srcloc !35
  %i.ea = zext i16 %.0.copyload.i579 to i32
  %.not489 = icmp eq i32 %i.dx, %i.ea
  br i1 %.not489, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %.preheader591
  %i.eb = add i32 %.2462, 2
  %i.ec = add i32 %.2466, 1                       ; 2 uses
  %.not490 = icmp eq i32 %i.ec, %i.k
  br i1 %.not490, label %.loopexit584, label %.preheader591

bb.al:                                            ; preds = %bb.r
  %i.ed = lshr i32 %.0.copyload.i562, 2
  %.not497 = trunc i32 %.0.copyload.i562 to i1
  %or.cond509.not = select i1 %.not483, i1 true, i1 %.not497
  %.not502 = icmp eq i32 %i.ed, %i.j              ; 2 uses
  br i1 %or.cond509.not, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %.not502, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  br i1 %.not488.a, label %.loopexit584, label %.preheader585

.preheader585:                                    ; preds = %bb.an, %bb.ao
  %.3467 = phi i32 [ %i.ej, %bb.ao ], [ %i.h, %bb.an ] ; 2 uses
  %.3463 = phi i32 [ %i.ei, %bb.ao ], [ %.0.copyload.i563, %bb.an ] ; 2 uses
  %i.ee = zext i32 %.3467 to i64
  %.val529 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ef = getelementptr inbounds nuw i8, ptr %.val529, i64 %i.ee
  %.0.copyload.i580 = load i8, ptr %i.ef, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i580) #13, !srcloc !31
  %i.eg = zext i32 %.3463 to i64
  %.val528 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.eh = getelementptr inbounds nuw i8, ptr %.val528, i64 %i.eg
  %.0.copyload.i581 = load i8, ptr %i.eh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i581) #13, !srcloc !31
  %.not500 = icmp eq i8 %.0.copyload.i580, %.0.copyload.i581
  br i1 %.not500, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %.preheader585
  %i.ei = add i32 %.3463, 1
  %i.ej = add i32 %.3467, 1                       ; 2 uses
  %.not501 = icmp eq i32 %i.ej, %i.k
  br i1 %.not501, label %.loopexit584, label %.preheader585

bb.ap:                                            ; preds = %bb.al
  br i1 %.not502, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not488.a, label %.loopexit584, label %.preheader

.preheader:                                       ; preds = %bb.aq, %bb.ar
  %.4468 = phi i32 [ %i.er, %bb.ar ], [ %i.h, %bb.aq ] ; 2 uses
  %.4 = phi i32 [ %i.eq, %bb.ar ], [ %.0.copyload.i563, %bb.aq ] ; 2 uses
  %i.ek = zext i32 %.4468 to i64
  %.val541 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %.val541, i64 %i.ek
  %.0.copyload.i582 = load i8, ptr %i.el, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i582) #13, !srcloc !36
  %i.em = sext i8 %.0.copyload.i582 to i32
  %i.en = zext i32 %.4 to i64
  %.val536 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.eo = getelementptr inbounds nuw i8, ptr %.val536, i64 %i.en
  %.0.copyload.i583 = load i16, ptr %i.eo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i583) #13, !srcloc !35
  %i.ep = zext i16 %.0.copyload.i583 to i32
  %.not504 = icmp eq i32 %i.em, %i.ep
  br i1 %.not504, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %.preheader
  %i.eq = add i32 %.4, 2
  %i.er = add i32 %.4468, 1                       ; 2 uses
  %.not505 = icmp eq i32 %i.er, %i.k
  br i1 %.not505, label %.loopexit584, label %.preheader

.loopexit:                                        ; preds = %.preheader591, %.preheader588, %.preheader585, %.preheader, %bb.l, %bb.q, %bb.z, %bb.ai, %bb.am, %bb.ap
  %.5 = phi i32 [ %i.au, %bb.l ], [ %.0464, %.preheader ], [ %.0464, %bb.q ], [ %.0464, %bb.ap ], [ %.0464, %bb.z ], [ %.0464, %bb.am ], [ %.0464, %.preheader588 ], [ %.0464, %bb.ai ], [ %.0464, %.preheader585 ], [ %.0464, %.preheader591 ]
  %.1458 = phi i32 [ %.0459.mux, %bb.l ], [ %.0457, %.preheader ], [ %.0457, %bb.q ], [ %.0457, %bb.ap ], [ %.0457, %bb.z ], [ %.0457, %bb.am ], [ %.0457, %.preheader588 ], [ %.0457, %bb.ai ], [ %.0457, %.preheader585 ], [ %.0457, %.preheader591 ]
  %i.es = add i32 %.0460, 1
  %i.et = add i32 %.0459, %.0460
  %i.eu = and i32 %i.et, %i.d
  br label %bb.b

.loopexit584:                                     ; preds = %bb.aa, %bb.aj, %bb.an, %bb.aq, %bb.ak, %bb.ab, %bb.ao, %bb.ar, %bb.g
  %.3 = phi i32 [ %i.ag, %bb.g ], [ %.0459, %bb.ao ], [ %.0459, %bb.ab ], [ %.0459, %bb.ak ], [ %.0459, %bb.ar ], [ %.0459, %bb.aq ], [ %.0459, %bb.an ], [ %.0459, %bb.aj ], [ %.0459, %bb.aa ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_unsigned0x20int0x20hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3AIdentifierHashTable0x3A0x3AlookupString0x3Cchar16_t0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20bool0x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 38 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %.val529.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.val529.a, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.d = add i32 %.0.copyload.i, -1               ; 2 uses
  %i.e = and i32 %i.d, %3
  %i.f = zext i32 %2 to i64
  %.val533.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val533.a, i64 %i.f
  %.0.copyload.i549 = load i64, ptr %i.g, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i549) #13, !srcloc !33
  %i.h = trunc i64 %.0.copyload.i549 to i32       ; 5 uses
  %i.i = lshr i64 %.0.copyload.i549, 32           ; 2 uses
  %i.j = trunc nuw i64 %i.i to i32                ; 4 uses
  %i.k = shl i32 %i.j, 1
  %i.l = add i32 %i.k, %i.h                       ; 4 uses
  %.val528.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %.val528.a, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.0.copyload.i550 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i550) #13, !srcloc !14
  %.val527.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val527.a, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.copyload.i551 = load i32, ptr %i.p, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i551) #13, !srcloc !14
  %.val526.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val526.a, i64 %i.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.0.copyload.i552 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i552) #13, !srcloc !14
  %i.s = add i32 %.0.copyload.i552, -1            ; 3 uses
  %.not487 = icmp ne i32 %4, 0
  %i.t = zext i32 %.0.copyload.i550 to i64
  %.not490.a = icmp eq i64 %i.i, 0                ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.0466 = phi i32 [ 0, %bb.a ], [ %.5, %.loopexit ] ; 11 uses
  %.0462 = phi i32 [ 1, %bb.a ], [ %i.et, %.loopexit ] ; 2 uses
  %.0461 = phi i32 [ %i.e, %bb.a ], [ %i.ev, %.loopexit ] ; 20 uses
  %.0459 = phi i32 [ 0, %bb.a ], [ %.1460, %.loopexit ] ; 11 uses
  switch i32 %i.s, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = add i32 %.0461, %.0.copyload.i551
  %i.v = zext i32 %i.u to i64
  %.val532.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.val532.a, i64 %i.v
  %.0.copyload.i553 = load i8, ptr %i.w, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i553) #13, !srcloc !31
  %i.x = zext i8 %.0.copyload.i553 to i32
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.y = shl i32 %.0461, 1
  %i.z = add i32 %i.y, %.0.copyload.i551
  %i.aa = zext i32 %i.z to i64
  %.val542.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val542.a, i64 %i.aa
  %.0.copyload.i554 = load i16, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i554) #13, !srcloc !35
  %i.ac = zext i16 %.0.copyload.i554 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ad = shl i32 %.0461, 2
  %i.ae = add i32 %i.ad, %.0.copyload.i551
  %i.af = zext i32 %i.ae to i64
  %.val525.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val525.a, i64 %i.af
  %.0.copyload.i555 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i555) #13, !srcloc !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0458 = phi i32 [ %i.x, %bb.c ], [ %i.ac, %bb.d ], [ %.0.copyload.i555, %bb.e ]
  %.not = icmp eq i32 %.0458, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not508.a = icmp eq i32 %.0466, 0
  %i.ah = select i1 %.not508.a, i32 %.0461, i32 %.0459
  br label %.loopexit586

bb.h:                                             ; preds = %bb.f
  switch i32 %i.s, label %bb.i [
    i32 0, label %bb.j
    i32 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ai = add i32 %.0461, %.0.copyload.i551
  %i.aj = zext i32 %i.ai to i64
  %.val531 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val531, i64 %i.aj
  %.0.copyload.i556 = load i8, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i556) #13, !srcloc !31
  %i.al = zext i8 %.0.copyload.i556 to i32
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.am = shl i32 %.0461, 1
  %i.an = add i32 %i.am, %.0.copyload.i551
  %i.ao = zext i32 %i.an to i64
  %.val541.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val541.a, i64 %i.ao
  %.0.copyload.i557 = load i16, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i557) #13, !srcloc !35
  %i.aq = zext i16 %.0.copyload.i557 to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ar = shl i32 %.0461, 2
  %i.as = add i32 %i.ar, %.0.copyload.i551
  %i.at = zext i32 %i.as to i64
  %.val524.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val524.a, i64 %i.at
  %.0.copyload.i558 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i558) #13, !srcloc !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.0 = phi i32 [ %i.al, %bb.i ], [ %i.aq, %bb.j ], [ %.0.copyload.i558, %bb.k ]
  %5 = icmp eq i32 %.0, 1                         ; 3 uses
  %brmerge = or i1 %5, %.not487
  %i.av = select i1 %5, i32 1, i32 %.0466
  %.0461.mux = select i1 %5, i32 %.0461, i32 %.0459
  br i1 %brmerge, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val523.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val523.a, i64 %i.t
  %.0.copyload.i559 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i559) #13, !srcloc !14
  switch i32 %i.s, label %bb.n [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ax = add i32 %.0461, %.0.copyload.i551
  %i.ay = zext i32 %i.ax to i64
  %.val530 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.val530, i64 %i.ay
  %.0.copyload.i560 = load i8, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i560) #13, !srcloc !31
  %i.ba = zext i8 %.0.copyload.i560 to i32
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bb = shl i32 %.0461, 1
  %i.bc = add i32 %i.bb, %.0.copyload.i551
  %i.bd = zext i32 %i.bc to i64
  %.val540.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val540.a, i64 %i.bd
  %.0.copyload.i561 = load i16, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i561) #13, !srcloc !35
  %i.bf = zext i16 %.0.copyload.i561 to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bg = shl i32 %.0461, 2
  %i.bh = add i32 %i.bg, %.0.copyload.i551
  %i.bi = zext i32 %i.bh to i64
  %.val522.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.val522.a, i64 %i.bi
  %.0.copyload.i562 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i562) #13, !srcloc !14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.0457 = phi i32 [ %i.ba, %bb.n ], [ %i.bf, %bb.o ], [ %.0.copyload.i562, %bb.p ]
  %i.bk = mul i32 %.0457, 12
  %i.bl = add i32 %.0.copyload.i559, -24
  %i.bm = add i32 %i.bl, %i.bk
  %i.bn = zext i32 %i.bm to i64                   ; 3 uses
  %.val521.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val521.a, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.0.copyload.i563 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i563) #13, !srcloc !14
  %.not484 = icmp eq i32 %.0.copyload.i563, %3
  br i1 %.not484, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %.val520.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.val520.a, i64 %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %.0.copyload.i564 = load i32, ptr %i.br, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i564) #13, !srcloc !14
  %.val519.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.val519.a, i64 %i.bn
  %.0.copyload.i565 = load i32, ptr %i.bs, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i565) #13, !srcloc !14
  %.not485 = icmp eq i32 %.0.copyload.i565, 0     ; 2 uses
  %i.bt = icmp ult i32 %.0.copyload.i564, -8
  %or.cond510 = select i1 %.not485, i1 true, i1 %i.bt
  br i1 %or.cond510, label %bb.al, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = zext i32 %.0.copyload.i565 to i64       ; 8 uses
  %.val518.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.val518.a, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.0.copyload.i566 = load i32, ptr %i.bw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i566) #13, !srcloc !14
  %.val517.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.val517.a, i64 %i.bu
  %.0.copyload.i567 = load i32, ptr %i.bx, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i567) #13, !srcloc !14
  %i.by = and i32 %.0.copyload.i567, 16777216
  %.not486 = icmp eq i32 %i.by, 0
  %i.bz = icmp ugt i32 %.0.copyload.i567, 150994943 ; 2 uses
  br i1 %.not486, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.val516.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.val516.a, i64 %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %.0.copyload.i568 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i568) #13, !srcloc !14
  %i.cc = add i32 %.0.copyload.i565, 12
  %.val548.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %.val548.a, i64 %i.bu
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 23
  %.0.copyload.i569 = load i8, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i569) #13, !srcloc !36
  %i.cf = icmp slt i8 %.0.copyload.i569, 0
  %i.cg = select i1 %i.cf, i32 %.0.copyload.i568, i32 %i.cc
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.ch = and i32 %.0.copyload.i567, 234881024
  switch i32 %i.ch, label %bb.y [
    i32 67108864, label %bb.x
    i32 134217728, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.ci = add i32 %.0.copyload.i565, 12
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.cj = add i32 %.0.copyload.i565, 8
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %.val515.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.val515.a, i64 %i.bu
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.0.copyload.i570 = load i32, ptr %i.cl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i570) #13, !srcloc !14
  %i.cm = zext i32 %.0.copyload.i570 to i64       ; 2 uses
  %.val514.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.val514.a, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %.0.copyload.i571 = load i32, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i571) #13, !srcloc !14
  %i.cp = add i32 %.0.copyload.i570, 12
  %.val547.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.val547.a, i64 %i.cm
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 23
  %.0.copyload.i572 = load i8, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i572) #13, !srcloc !36
  %i.cs = icmp slt i8 %.0.copyload.i572, 0
  %i.ct = select i1 %i.cs, i32 %.0.copyload.i571, i32 %i.cp
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.u
  %.1 = phi i32 [ %i.cg, %bb.u ], [ %i.ct, %bb.y ], [ %i.ci, %bb.w ], [ %i.cj, %bb.x ]
  %i.cu = and i32 %.0.copyload.i566, 2147483647
  %.not495.a = icmp eq i32 %i.cu, %i.j
  br i1 %.not495.a, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  br i1 %.not490.a, label %.loopexit586, label %.preheader590

.preheader590:                                    ; preds = %bb.aa, %bb.ab
  %.1467 = phi i32 [ %i.dc, %bb.ab ], [ %i.h, %bb.aa ] ; 2 uses
  %.1463 = phi i32 [ %i.db, %bb.ab ], [ %.1, %bb.aa ] ; 2 uses
  %i.cv = zext i32 %.1467 to i64
  %.val539.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.val539.a, i64 %i.cv
  %.0.copyload.i573 = load i16, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i573) #13, !srcloc !35
  %i.cx = zext i16 %.0.copyload.i573 to i32
  %i.cy = zext i32 %.1463 to i64
  %.val546.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %.val546.a, i64 %i.cy
  %.0.copyload.i574 = load i8, ptr %i.cz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i574) #13, !srcloc !36
  %i.da = sext i8 %.0.copyload.i574 to i32
  %.not497 = icmp eq i32 %i.cx, %i.da
  br i1 %.not497, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %.preheader590
  %i.db = add i32 %.1463, 1
  %i.dc = add i32 %.1467, 2                       ; 2 uses
  %.not498 = icmp eq i32 %i.dc, %i.l
  br i1 %.not498, label %.loopexit586, label %.preheader590

bb.ac:                                            ; preds = %bb.s
  br i1 %i.bz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.val513 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %.val513, i64 %i.bu
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %.0.copyload.i575 = load i32, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i575) #13, !srcloc !14
  %i.df = add i32 %.0.copyload.i565, 12
  %.val545.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %.val545.a, i64 %i.bu
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 23
  %.0.copyload.i576 = load i8, ptr %i.dh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i576) #13, !srcloc !36
  %i.di = icmp slt i8 %.0.copyload.i576, 0
  %i.dj = select i1 %i.di, i32 %.0.copyload.i575, i32 %i.df
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %i.dk = and i32 %.0.copyload.i567, 251658240
  switch i32 %i.dk, label %bb.ah [
    i32 50331648, label %bb.ag
    i32 117440512, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dl = add i32 %.0.copyload.i565, 12
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.dm = add i32 %.0.copyload.i565, 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %.val512 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.val512, i64 %i.bu
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.0.copyload.i577 = load i32, ptr %i.do, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i577) #13, !srcloc !14
  %i.dp = zext i32 %.0.copyload.i577 to i64       ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %.0.copyload.i578 = load i32, ptr %i.dr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i578) #13, !srcloc !14
  %i.ds = add i32 %.0.copyload.i577, 12
  %.val544 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %.val544, i64 %i.dp
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 23
  %.0.copyload.i579 = load i8, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i579) #13, !srcloc !36
  %i.dv = icmp slt i8 %.0.copyload.i579, 0
  %i.dw = select i1 %i.dv, i32 %.0.copyload.i578, i32 %i.ds
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  %.2 = phi i32 [ %i.dj, %bb.ad ], [ %i.dw, %bb.ah ], [ %i.dl, %bb.af ], [ %i.dm, %bb.ag ]
  %i.dx = and i32 %.0.copyload.i566, 2147483647
  %.not489 = icmp eq i32 %i.dx, %i.j
  br i1 %.not489, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not490.a, label %.loopexit586, label %.preheader593

.preheader593:                                    ; preds = %bb.aj, %bb.ak
  %.2468 = phi i32 [ %i.ed, %bb.ak ], [ %i.h, %bb.aj ] ; 2 uses
  %.2464 = phi i32 [ %i.ec, %bb.ak ], [ %.2, %bb.aj ] ; 2 uses
  %i.dy = zext i32 %.2468 to i64
  %.val538.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.dz = getelementptr inbounds nuw i8, ptr %.val538.a, i64 %i.dy
  %.0.copyload.i580 = load i16, ptr %i.dz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i580) #13, !srcloc !35
  %i.ea = zext i32 %.2464 to i64
  %.val537.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %.val537.a, i64 %i.ea
  %.0.copyload.i581 = load i16, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i581) #13, !srcloc !35
  %.not491 = icmp eq i16 %.0.copyload.i580, %.0.copyload.i581
  br i1 %.not491, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %.preheader593
  %i.ec = add i32 %.2464, 2
  %i.ed = add i32 %.2468, 2                       ; 2 uses
  %.not492 = icmp eq i32 %i.ed, %i.l
  br i1 %.not492, label %.loopexit586, label %.preheader593

bb.al:                                            ; preds = %bb.r
  %i.ee = lshr i32 %.0.copyload.i564, 2
  %.not499 = trunc i32 %.0.copyload.i564 to i1
  %or.cond511.not = select i1 %.not485, i1 true, i1 %.not499
  %.not504 = icmp eq i32 %i.ee, %i.j              ; 2 uses
  br i1 %or.cond511.not, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %.not504, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  br i1 %.not490.a, label %.loopexit586, label %.preheader587

.preheader587:                                    ; preds = %bb.an, %bb.ao
  %.3469 = phi i32 [ %i.em, %bb.ao ], [ %i.h, %bb.an ] ; 2 uses
  %.3465 = phi i32 [ %i.el, %bb.ao ], [ %.0.copyload.i565, %bb.an ] ; 2 uses
  %i.ef = zext i32 %.3469 to i64
  %.val536.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %.val536.a, i64 %i.ef
  %.0.copyload.i582 = load i16, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i582) #13, !srcloc !35
  %i.eh = zext i16 %.0.copyload.i582 to i32
  %i.ei = zext i32 %.3465 to i64
  %.val543 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %.val543, i64 %i.ei
  %.0.copyload.i583 = load i8, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i583) #13, !srcloc !36
  %i.ek = sext i8 %.0.copyload.i583 to i32
  %.not502 = icmp eq i32 %i.eh, %i.ek
  br i1 %.not502, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %.preheader587
  %i.el = add i32 %.3465, 1
  %i.em = add i32 %.3469, 2                       ; 2 uses
  %.not503 = icmp eq i32 %i.em, %i.l
  br i1 %.not503, label %.loopexit586, label %.preheader587

bb.ap:                                            ; preds = %bb.al
  br i1 %.not504, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not490.a, label %.loopexit586, label %.preheader

.preheader:                                       ; preds = %bb.aq, %bb.ar
  %.4470 = phi i32 [ %i.es, %bb.ar ], [ %i.h, %bb.aq ] ; 2 uses
  %.4 = phi i32 [ %i.er, %bb.ar ], [ %.0.copyload.i565, %bb.aq ] ; 2 uses
  %i.en = zext i32 %.4470 to i64
  %.val535 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.eo = getelementptr inbounds nuw i8, ptr %.val535, i64 %i.en
  %.0.copyload.i584 = load i16, ptr %i.eo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i584) #13, !srcloc !35
  %i.ep = zext i32 %.4 to i64
  %.val534 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.eq = getelementptr inbounds nuw i8, ptr %.val534, i64 %i.ep
  %.0.copyload.i585 = load i16, ptr %i.eq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i585) #13, !srcloc !35
  %.not506 = icmp eq i16 %.0.copyload.i584, %.0.copyload.i585
  br i1 %.not506, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %.preheader
  %i.er = add i32 %.4, 2
  %i.es = add i32 %.4470, 2                       ; 2 uses
  %.not507 = icmp eq i32 %i.es, %i.l
  br i1 %.not507, label %.loopexit586, label %.preheader

.loopexit:                                        ; preds = %.preheader593, %.preheader590, %.preheader587, %.preheader, %bb.l, %bb.q, %bb.z, %bb.ai, %bb.am, %bb.ap
  %.5 = phi i32 [ %i.av, %bb.l ], [ %.0466, %.preheader ], [ %.0466, %bb.q ], [ %.0466, %bb.ap ], [ %.0466, %bb.z ], [ %.0466, %bb.am ], [ %.0466, %.preheader590 ], [ %.0466, %bb.ai ], [ %.0466, %.preheader587 ], [ %.0466, %.preheader593 ]
  %.1460 = phi i32 [ %.0461.mux, %bb.l ], [ %.0459, %.preheader ], [ %.0459, %bb.q ], [ %.0459, %bb.ap ], [ %.0459, %bb.z ], [ %.0459, %bb.am ], [ %.0459, %.preheader590 ], [ %.0459, %bb.ai ], [ %.0459, %.preheader587 ], [ %.0459, %.preheader593 ]
  %i.et = add i32 %.0462, 1
  %i.eu = add i32 %.0461, %.0462
  %i.ev = and i32 %i.eu, %i.d
  br label %bb.b

.loopexit586:                                     ; preds = %bb.aa, %bb.aj, %bb.an, %bb.aq, %bb.ak, %bb.ab, %bb.ao, %bb.ar, %bb.g
  %.3 = phi i32 [ %i.ah, %bb.g ], [ %.0461, %bb.ao ], [ %.0461, %bb.ab ], [ %.0461, %bb.ak ], [ %.0461, %bb.ar ], [ %.0461, %bb.aq ], [ %.0461, %bb.an ], [ %.0461, %bb.aj ], [ %.0461, %bb.aa ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Apair0x3Chermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x3E0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsearch_random_access_impl0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fequal_to0x3Cchar16_t0x2C0x20char16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fidentity0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fidentity0x2C0x20long0x2C0x20long0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fequal_to0x3Cchar16_t0x2C0x20char16_t0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fidentity0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fidentity0x260x2C0x20long0x2C0x20long0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 27 uses
  %i.b = zext i32 %2 to i64                       ; 7 uses
  %.val492.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.val492.a, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.d = add nuw nsw i64 %i.b, 4                  ; 5 uses
  %.val491.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %.val491.a, i64 %i.d
  %.0.copyload.i521 = load i32, ptr %i.e, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i521) #13, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i, 0           ; 5 uses
  %i.f = select i1 %.not, i32 %.0.copyload.i521, i32 %.0.copyload.i
  %i.g = add i32 %.0.copyload.i, %7
  %i.h = select i1 %.not, i32 0, i32 %i.g         ; 2 uses
  %i.i = sub i32 1, %8                            ; 2 uses
  %i.j = add i32 %i.h, %i.i
  %.not471 = icmp eq i32 %i.h, 0                  ; 2 uses
  %i.k = select i1 %.not471, i32 0, i32 %i.j      ; 5 uses
  %i.l = shl i32 %7, 1
  %i.m = select i1 %.not, i32 %i.l, i32 0
  %i.n = add i32 %.0.copyload.i521, %i.m
  %i.o = shl i32 %i.i, 1
  %i.p = select i1 %.not471, i32 %i.o, i32 0
  %i.q = add i32 %i.n, %i.p                       ; 5 uses
  %i.r = select i1 %.not, i32 %i.q, i32 %i.k
  %i.s = icmp eq i32 %i.f, %i.r
  br i1 %i.s, label %.loopexit541, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = zext i1 %.not to i32                     ; 2 uses
  %i.u = zext i32 %5 to i64                       ; 2 uses
  %.val490.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.val490.a, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.0.copyload.i522 = load i32, ptr %i.w, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i522) #13, !srcloc !14
  %i.x = zext i32 %4 to i64                       ; 2 uses
  %.val489.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.val489.a, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.0.copyload.i523 = load i32, ptr %i.z, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i523) #13, !srcloc !14
  %.val488 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.val488, i64 %i.x
  %.0.copyload.i524 = load i32, ptr %i.aa, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i524) #13, !srcloc !14
  %.not472 = icmp eq i32 %.0.copyload.i524, 0
  br i1 %.not472, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.ab = zext i32 %.0.copyload.i523 to i64
  %.val514 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val514, i64 %i.ab
  %.0.copyload.i525 = load i16, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i525) #13, !srcloc !35
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.0462 = phi i32 [ %.0.copyload.i521, %bb.c ], [ %.0462.be, %.backedge ] ; 7 uses
  %.0458 = phi i32 [ %i.t, %bb.c ], [ %.0458.be, %.backedge ] ; 3 uses
  %.0452 = phi i32 [ %.0.copyload.i, %bb.c ], [ %.0452.be, %.backedge ] ; 7 uses
  %.not481.a = icmp eq i32 %.0458, 0
  %.val520 = load ptr, ptr %i.a, align 8, !tbaa !13 ; 2 uses
  br i1 %.not481.a, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = zext i32 %.0452 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.val520, i64 %i.ad
  %.0.copyload.i526 = load i8, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i526) #13, !srcloc !36
  %i.af = sext i8 %.0.copyload.i526 to i16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ag = zext i32 %.0462 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.val520, i64 %i.ag
  %.0.copyload.i527 = load i16, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i527) #13, !srcloc !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i16 [ %i.af, %bb.e ], [ %.0.copyload.i527, %bb.f ]
  %i.ai = icmp eq i16 %.0.copyload.i525, %.0
  br i1 %i.ai, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %.val502.a = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val502.a, i64 %i.d
  store i32 %.0462, ptr %i.aj, align 1
  %.val501 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val501, i64 %i.b
  store i32 %.0452, ptr %i.ak, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %bb.h
  %.0467 = phi i32 [ %.0462, %bb.h ], [ %.1468, %bb.m ] ; 3 uses
  %.1459 = phi i32 [ %.0452, %bb.h ], [ %.0447, %bb.m ] ; 3 uses
  %.0450 = phi i32 [ %.0.copyload.i523, %bb.h ], [ %i.al, %bb.m ]
  %i.al = add i32 %.0450, 2                       ; 3 uses
  %i.am = icmp eq i32 %i.al, %.0.copyload.i522
  br i1 %i.am, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not484.a = icmp eq i32 %.1459, 0
  %.val512.a = load ptr, ptr %i.a, align 8, !tbaa !13 ; 2 uses
  br i1 %.not484.a, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = zext i32 %.1459 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.val512.a, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.0.copyload.i528 = load i8, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i528) #13, !srcloc !36
  %i.aq = add i32 %.1459, 1
  %i.ar = sext i8 %.0.copyload.i528 to i16
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.as = zext i32 %.0467 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.val512.a, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %.0.copyload.i529 = load i16, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i529) #13, !srcloc !35
  %i.av = add i32 %.0467, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1468 = phi i32 [ %.0467, %bb.k ], [ %i.av, %bb.l ]
  %.0455 = phi i16 [ %i.ar, %bb.k ], [ %.0.copyload.i529, %bb.l ]
  %.0447 = phi i32 [ %i.aq, %bb.k ], [ 0, %bb.l ]
  %i.aw = zext i32 %i.al to i64
  %.val511 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val511, i64 %i.aw
  %.0.copyload.i530 = load i16, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i530) #13, !srcloc !35
  %i.ay = icmp eq i16 %.0.copyload.i530, %.0455
  br i1 %i.ay, label %bb.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not485 = icmp eq i32 %.0452, 0
  %.val499.a = load ptr, ptr %i.a, align 8, !tbaa !13
  br i1 %.not485, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = add i32 %.0452, 1                       ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ba = add i32 %.0462, 2                       ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink563 = phi i64 [ %i.d, %bb.p ], [ %i.b, %bb.o ]
  %.sink = phi i32 [ %i.ba, %bb.p ], [ %i.az, %bb.o ]
  %.1463 = phi i32 [ %i.ba, %bb.p ], [ %.0462, %bb.o ] ; 2 uses
  %.1453 = phi i32 [ 0, %bb.p ], [ %i.az, %bb.o ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val499.a, i64 %.sink563
  store i32 %.sink, ptr %i.bb, align 1
  %.not486 = icmp eq i32 %.1453, 0                ; 3 uses
  %i.bc = select i1 %.not486, i32 %.1463, i32 %.1453
  %i.bd = select i1 %.not486, i32 %i.q, i32 %i.k
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %.loopexit541, label %.backedge

.backedge:                                        ; preds = %bb.q, %bb.r
  %.0462.be = phi i32 [ %.1463, %bb.q ], [ %i.bi, %bb.r ]
  %.0458.be.in = phi i1 [ %.not486, %bb.q ], [ %.not482, %bb.r ]
  %.0452.be = phi i32 [ %.1453, %bb.q ], [ %i.bg, %bb.r ]
  %.0458.be = zext i1 %.0458.be.in to i32
  br label %bb.d

bb.r:                                             ; preds = %bb.g
  %i.bf = xor i32 %.0458, 1
  %i.bg = add i32 %.0452, %i.bf                   ; 3 uses
  %.not482 = icmp eq i32 %i.bg, 0                 ; 3 uses
  %i.bh = shl nuw nsw i32 %.0458, 1
  %i.bi = add i32 %i.bh, %.0462                   ; 2 uses
  %i.bj = select i1 %.not482, i32 %i.bi, i32 %i.bg
  %i.bk = select i1 %.not482, i32 %i.q, i32 %i.k
  %.not483 = icmp eq i32 %i.bj, %i.bk
  br i1 %.not483, label %.loopexit541, label %.backedge

bb.s:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 %i.u
  %.0.copyload.i531 = load i32, ptr %i.bl, align 1 ; 2 uses
end_hunk_0
