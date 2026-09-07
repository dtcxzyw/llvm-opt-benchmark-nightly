Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_7?download=true
inline.NumInlined: 10002
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x20std0x3A0x3A_0x5F20x3A0x3Aoperator0x2B0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x28char0x20const0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x20const0x260x29:bb.a
.lr.ph:                                           ; preds = %.preheader69.i.preheader, %.preheader69.i
  %i.l = phi i32 [ %i.j, %.preheader69.i ], [ %i.h, %.preheader69.i.preheader ] ; 3 uses
  %i.m = zext i32 %i.l to i64
  %.val64.i = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val64.i, i64 %i.m
  %.0.copyload.i66.i = load i8, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i66.i) #13, !srcloc !31
  %.not60.i = icmp eq i8 %.0.copyload.i66.i, 0
  br i1 %.not60.i, label %.loopexit.i, label %.preheader69.i

.loopexit70.i:                                    ; preds = %.preheader69.i, %.preheader69.i.preheader, %bb.a
  %.1.i = phi i32 [ %2, %bb.a ], [ %i.h, %.preheader69.i.preheader ], [ %i.j, %.preheader69.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.loopexit70.i
  %.2.i = phi i32 [ %.1.i, %.loopexit70.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.p = add i32 %.2.i, 4
  %i.q = zext i32 %.2.i to i64
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.q
  %.0.copyload.i67.i = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i67.i) #13, !srcloc !14
  %i.s = sub i32 16843008, %.0.copyload.i67.i
  %i.t = or i32 %i.s, %.0.copyload.i67.i
  %i.u = and i32 %i.t, -2139062144
  %.not61.i = icmp eq i32 %i.u, -2139062144
  br i1 %.not61.i, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.056.i = phi i32 [ %i.v, %.preheader.i ], [ %.2.i, %bb.c ] ; 3 uses
  %i.v = add i32 %.056.i, 1
  %i.w = zext i32 %.056.i to i64
  %.val63.i = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.val63.i, i64 %i.w
  %.0.copyload.i68.i = load i8, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i68.i) #13, !srcloc !31
  %.not62.i = icmp eq i8 %.0.copyload.i68.i, 0
  br i1 %.not62.i, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph, %.preheader.i
  %.3.i = phi i32 [ %.056.i, %.preheader.i ], [ %i.l, %.lr.ph ]
  %i.y = sub i32 %.3.i, %2
  br label %w2c_hermes_strlen.exit

w2c_hermes_strlen.exit:                           ; preds = %bb.b, %.loopexit.i
  %.0.i = phi i32 [ %i.y, %.loopexit.i ], [ 0, %bb.b ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 21 uses
  %i.aa = zext i32 %3 to i64                      ; 3 uses
  %i.ab = add nuw nsw i64 %i.aa, 11               ; 3 uses
  %.val205 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val205, i64 %i.ab
  %.0.copyload.i = load i8, ptr %i.ac, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #13, !srcloc !31
  %.not = icmp sgt i8 %.0.copyload.i, -1
  %.val204 = load ptr, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %w2c_hermes_strlen.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.val204, i64 %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.0.copyload.i209 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i209) #13, !srcloc !14
  br label %bb.f

bb.e:                                             ; preds = %w2c_hermes_strlen.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.val204, i64 %i.ab
  %.0.copyload.i210 = load i8, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i210) #13, !srcloc !31
  %i.ag = and i8 %.0.copyload.i210, 127
  %i.ah = zext nneg i8 %i.ag to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0187 = phi i32 [ %.0.copyload.i209, %bb.d ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.aj = add i32 %i.ai, -16
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !32
  %i.ak = add i32 %.0187, %.0.i                   ; 5 uses
  %i.al = icmp ult i32 %i.ak, 2147483632
  br i1 %i.al, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.am = icmp samesign ult i32 %i.ak, 11
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = zext i32 %1 to i64                      ; 4 uses
  %.val208 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val208, i64 %i.an
  store i64 0, ptr %i.ao, align 1
  %.val199 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 0, ptr %i.aq, align 1
  %i.ar = add nuw nsw i64 %i.an, 11               ; 4 uses
  %.val203 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val203, i64 %i.ar
  %.0.copyload.i211 = load i8, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i211) #13, !srcloc !31
  %i.at = and i8 %.0.copyload.i211, -128
  %.val207 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.au = trunc nuw nsw i32 %i.ak to i8
  %i.av = or disjoint i8 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.val207, i64 %i.ar
  store i8 %i.av, ptr %i.aw, align 1
  %.val202 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val202, i64 %i.ar
  %.0.copyload.i212 = load i8, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i212) #13, !srcloc !31
  %i.ay = and i8 %.0.copyload.i212, 127
  %.val206 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.val206, i64 %i.ar
  store i8 %i.ay, ptr %i.az, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ba = add nuw nsw i32 %i.ak, 16
  %i.bb = and i32 %i.ba, 2147483632               ; 2 uses
  %i.bc = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bb)
  %i.bd = zext i32 %1 to i64                      ; 4 uses
  %i.be = add nuw nsw i64 %i.bd, 8                ; 4 uses
  %.val193 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.be
  %.0.copyload.i213 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i213) #13, !srcloc !14
  %i.bg = and i32 %.0.copyload.i213, -2147483648
  %i.bh = or disjoint i32 %i.bg, %i.bb
  %.val198 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.be
  store i32 %i.bh, ptr %i.bi, align 1
  %.val192 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.be
  %.0.copyload.i214 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i214) #13, !srcloc !14
  %i.bk = or i32 %.0.copyload.i214, -2147483648
  %.val197 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.be
  store i32 %i.bk, ptr %i.bl, align 1
  %.val196 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.bd
  store i32 %i.bc, ptr %i.bm, align 1
  %.val195 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.bd
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.ak, ptr %i.bo, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi = phi i64 [ %i.bd, %bb.i ], [ %i.an, %bb.h ] ; 2 uses
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !32
  %.val201 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.val201, i64 %.pre-phi
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 11
  %.0.copyload.i215 = load i8, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i215) #13, !srcloc !31
  %.not189 = icmp sgt i8 %.0.copyload.i215, -1
  br i1 %.not189, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.f
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x280x290x20const(ptr noundef nonnull %0)
  unreachable

bb.l:                                             ; preds = %bb.j
  %.val191 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val191, i64 %.pre-phi
  %.0.copyload.i216 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i216) #13, !srcloc !14
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.2 = phi i32 [ %.0.copyload.i216, %bb.l ], [ %1, %bb.j ] ; 2 uses
  %i.bs = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_random_access_iterator0x3Cchar0x20const0x2A0x3E0x3A0x3Avalue0x2C0x20char0x2A0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Acopy_n0x5Babi0x3Av150070x5D0x3Cchar0x20const0x2A0x2C0x20unsigned0x20long0x2C0x20char0x2A0x3E0x28char0x20const0x2A0x2C0x20unsigned0x20long0x2C0x20char0x2A0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %.0.i, i32 noundef %.2) ; 0 uses
  %.val200 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.ab
  %.0.copyload.i217 = load i8, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i217) #13, !srcloc !31
  %.not190 = icmp sgt i8 %.0.copyload.i217, -1
  br i1 %.not190, label %.lr.ph.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aa
  %.0.copyload.i218 = load i32, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i218) #13, !srcloc !14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.0 = phi i32 [ %.0.copyload.i218, %bb.n ], [ %3, %bb.m ]
  %i.bv = add i32 %.2, %.0.i                      ; 2 uses
  %i.bw = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_random_access_iterator0x3Cchar0x20const0x2A0x3E0x3A0x3Avalue0x2C0x20char0x2A0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Acopy_n0x5Babi0x3Av150070x5D0x3Cchar0x20const0x2A0x2C0x20unsigned0x20long0x2C0x20char0x2A0x3E0x28char0x20const0x2A0x2C0x20unsigned0x20long0x2C0x20char0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %.0187, i32 noundef %i.bv) ; 0 uses
  %i.bx = add i32 %i.bv, %.0187
  %i.by = load i32, ptr %i.a, align 8, !tbaa !32
  %i.bz = add i32 %i.by, -16                      ; 2 uses
  store i32 %i.bz, ptr %i.a, align 8, !tbaa !32
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 15               ; 2 uses
  %.val34.i = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.val34.i, i64 %i.cb
  store i8 0, ptr %i.cc, align 1
  %.val.i219 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i219, i64 %i.cb
  %.0.copyload.i.i220 = load i8, ptr %i.cd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i.i220) #13, !srcloc !31
  %4 = zext i32 %i.bx to i64
  %.val33.i = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.val33.i, i64 %4
  store i8 %.0.copyload.i.i220, ptr %i.ce, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Adeque0x3Cstd0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3E0x3E0x3A0x3A_0x5Fadd_back_capacity0x280x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.c = add i32 %i.b, -32                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 105 uses
  %i.e = zext i32 %1 to i64                       ; 14 uses
  %i.f = add nuw nsw i64 %i.e, 16                 ; 2 uses
  %.val1051 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val1051, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.h = icmp ugt i32 %.0.copyload.i, 340
  %.val1109 = load ptr, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %.0.copyload.i, -341
  %i.j = getelementptr inbounds nuw i8, ptr %.val1109, i64 %i.f
  store i32 %i.i, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %i.e, 4                  ; 5 uses
  %.val1050 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.val1050, i64 %i.k
  %.0.copyload.i1110 = load i32, ptr %i.l, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1110) #13, !srcloc !14
  %i.m = zext i32 %.0.copyload.i1110 to i64
  %.val1049 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val1049, i64 %i.m
  %.0.copyload.i1111 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1111) #13, !srcloc !14
  %i.o = add i32 %.0.copyload.i1110, 4            ; 10 uses
  %.val1108 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val1108, i64 %i.k
  store i32 %i.o, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 8                  ; 6 uses
  %.val1048 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val1048, i64 %i.q
  %.0.copyload.i1112 = load i32, ptr %i.r, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1112) #13, !srcloc !14
  %i.s = add nuw nsw i64 %i.e, 12                 ; 2 uses
  %.val1047 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val1047, i64 %i.s
  %.0.copyload.i1113 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1113) #13, !srcloc !14
  %.not999 = icmp eq i32 %.0.copyload.i1112, %.0.copyload.i1113
  br i1 %.not999, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.val1046 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val1046, i64 %i.e
  %.0.copyload.i1114 = load i32, ptr %i.u, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1114) #13, !srcloc !14
  %i.v = icmp ult i32 %.0.copyload.i1114, %i.o
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = sub nuw i32 %i.o, %.0.copyload.i1114
  %i.x = ashr i32 %i.w, 2
  %i.y = add nsw i32 %i.x, 1
  %i.z = sdiv i32 %i.y, -2
  %i.aa = shl nsw i32 %i.z, 2                     ; 2 uses
  %i.ab = add i32 %i.aa, %i.o
  %i.ac = sub i32 %.0.copyload.i1112, %i.o        ; 2 uses
  %i.ad = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef %i.o, i32 noundef %i.ac) #13
  %i.ae = add i32 %i.ad, %i.ac                    ; 2 uses
  %.val1107 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.val1107, i64 %i.q
  store i32 %i.ae, ptr %i.af, align 1
  %.val1045 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1045, i64 %i.k
  %.0.copyload.i1115 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1115) #13, !srcloc !14
  %i.ah = add i32 %.0.copyload.i1115, %i.aa
  %.val1106 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1106, i64 %i.k
  store i32 %i.ah, ptr %i.ai, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.aj = sub i32 %.0.copyload.i1112, %.0.copyload.i1114
  %i.ak = ashr i32 %i.aj, 1
  %i.al = icmp eq i32 %.0.copyload.i1112, %.0.copyload.i1114
  %i.am = select i1 %i.al, i32 1, i32 %i.ak       ; 3 uses
  %i.an = icmp ugt i32 %i.am, 1073741823
  br i1 %i.an, label %bb.ai, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = shl nuw i32 %i.am, 2                    ; 2 uses
  %i.ap = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ao) ; 3 uses
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = and i32 %i.am, 1073741820
  %i.as = add i32 %i.ap, %i.ar                    ; 5 uses
  %i.at = icmp eq i32 %.0.copyload.i1112, %i.o
  br i1 %i.at, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = sub i32 %.0.copyload.i1112, %i.o        ; 2 uses
  %i.av = and i32 %i.au, -4
  %i.aw = add i32 %i.au, -4                       ; 2 uses
  %i.ax = lshr i32 %i.aw, 2
  %i.ay = add nuw nsw i32 %i.ax, 1
  %i.az = and i32 %i.ay, 7                        ; 2 uses
  %.not1000 = icmp eq i32 %i.az, 0
  br i1 %.not1000, label %.loopexit1159, label %.preheader1158

.preheader1158:                                   ; preds = %bb.g, %.preheader1158
  %.0959 = phi i32 [ %i.bf, %.preheader1158 ], [ %i.as, %bb.g ] ; 2 uses
  %.0951 = phi i32 [ %i.be, %.preheader1158 ], [ %i.o, %bb.g ] ; 2 uses
  %.0949 = phi i32 [ %i.bg, %.preheader1158 ], [ 0, %bb.g ]
  %i.ba = zext i32 %.0951 to i64
  %.val1044 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1044, i64 %i.ba
  %.0.copyload.i1116 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1116) #13, !srcloc !14
  %i.bc = zext i32 %.0959 to i64
  %.val1105 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1105, i64 %i.bc
  store i32 %.0.copyload.i1116, ptr %i.bd, align 1
  %i.be = add i32 %.0951, 4                       ; 2 uses
  %i.bf = add i32 %.0959, 4                       ; 2 uses
  %i.bg = add nuw nsw i32 %.0949, 1               ; 2 uses
  %.not1001 = icmp eq i32 %i.bg, %i.az
  br i1 %.not1001, label %.loopexit1159, label %.preheader1158

.loopexit1159:                                    ; preds = %.preheader1158, %bb.g
  %.1960 = phi i32 [ %i.as, %bb.g ], [ %i.bf, %.preheader1158 ]
  %.1952 = phi i32 [ %i.o, %bb.g ], [ %i.be, %.preheader1158 ]
  %i.bh = add i32 %i.as, %i.av                    ; 3 uses
  %i.bi = icmp ult i32 %i.aw, 28
  br i1 %i.bi, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit1159, %.preheader
  %.2961 = phi i32 [ %i.cq, %.preheader ], [ %.1960, %.loopexit1159 ] ; 2 uses
  %.2953 = phi i32 [ %i.cp, %.preheader ], [ %.1952, %.loopexit1159 ] ; 2 uses
  %i.bj = zext i32 %.2953 to i64                  ; 8 uses
  %.val1043 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1043, i64 %i.bj
  %.0.copyload.i1117 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1117) #13, !srcloc !14
  %i.bl = zext i32 %.2961 to i64                  ; 8 uses
  %.val1104 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1104, i64 %i.bl
  store i32 %.0.copyload.i1117, ptr %i.bm, align 1
  %.val1042 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1042, i64 %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %.0.copyload.i1118 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1118) #13, !srcloc !14
  %.val1103 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1103, i64 %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %.0.copyload.i1118, ptr %i.bq, align 1
  %.val1041 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val1041, i64 %i.bj
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.0.copyload.i1119 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1119) #13, !srcloc !14
  %.val1102 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1102, i64 %i.bl
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %.0.copyload.i1119, ptr %i.bu, align 1
  %.val1040 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1040, i64 %i.bj
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.0.copyload.i1120 = load i32, ptr %i.bw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1120) #13, !srcloc !14
  %.val1101 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1101, i64 %i.bl
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 %.0.copyload.i1120, ptr %i.by, align 1
  %.val1039 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1039, i64 %i.bj
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.0.copyload.i1121 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1121) #13, !srcloc !14
  %.val1100 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1100, i64 %i.bl
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i32 %.0.copyload.i1121, ptr %i.cc, align 1
  %.val1038 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %.val1038, i64 %i.bj
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %.0.copyload.i1122 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1122) #13, !srcloc !14
  %.val1099 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %.val1099, i64 %i.bl
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  store i32 %.0.copyload.i1122, ptr %i.cg, align 1
  %.val1037 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1037, i64 %i.bj
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
end_hunk_0
