inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateStoreStackInst0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AAllocStackInst0x2A0x29:bb.a
  %.val169 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val169, i64 %i.w
  store i32 0, ptr %i.x, align 1
  %.val56.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val56.i, i64 %i.r
  %.0.copyload.i.i = load i32, ptr %i.y, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #7, !srcloc !19
  %.val55.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val55.i, i64 %i.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.0.copyload.i59.i = load i32, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i) #7, !srcloc !19
  %.not.i = icmp ult i32 %.0.copyload.i.i, %.0.copyload.i59.i
  br i1 %.not.i, label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = add i32 %i.a, 40
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef %i.t, i32 noundef 0, i32 noundef 8) #7
  %.val54.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val54.i, i64 %i.r
  %.0.copyload.i60.i = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60.i) #7, !srcloc !19
  br label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit

w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %.0.copyload.i60.i, %bb.b ], [ %.0.copyload.i.i, %bb.a ]
  %.val53.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val53.i, i64 %i.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.0.copyload.i61.i = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i61.i) #7, !srcloc !19
  %i.af = shl i32 %.0.i, 3
  %i.ag = add i32 %.0.copyload.i61.i, %i.af
  %i.ah = zext i32 %i.ag to i64
  %.val58.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val58.i, i64 %i.ah
  store i64 0, ptr %i.ai, align 1
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.r
  %.0.copyload.i62.i = load i32, ptr %i.aj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i62.i) #7, !srcloc !19
  %i.ak = add i32 %.0.copyload.i62.i, 1
  %.val57.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val57.i, i64 %i.r
  store i32 %i.ak, ptr %i.al, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.a, i32 noundef %2, i32 noundef %.0.copyload.i62.i)
  %i.am = add i32 %3, 8
  %.not = icmp eq i32 %3, 0
  %i.an = select i1 %.not, i32 0, i32 %i.am
  %.val56.i180 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val56.i180, i64 %i.r
  %.0.copyload.i.i181 = load i32, ptr %i.ao, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i181) #7, !srcloc !19
  %.val55.i182 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val55.i182, i64 %i.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.0.copyload.i59.i183 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i183) #7, !srcloc !19
  %.not.i184 = icmp ult i32 %.0.copyload.i.i181, %.0.copyload.i59.i183
  br i1 %.not.i184, label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit194, label %bb.c

bb.c:                                             ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit
  %i.ar = add i32 %i.a, 40
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ar, i32 noundef %i.t, i32 noundef 0, i32 noundef 8) #7
  %.val54.i185 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val54.i185, i64 %i.r
  %.0.copyload.i60.i186 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60.i186) #7, !srcloc !19
  br label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit194

w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit194: ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit, %bb.c
  %.0.i187 = phi i32 [ %.0.copyload.i60.i186, %bb.c ], [ %.0.copyload.i.i181, %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit ]
  %.val53.i188 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val53.i188, i64 %i.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %.0.copyload.i61.i189 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i61.i189) #7, !srcloc !19
  %i.av = shl i32 %.0.i187, 3
  %i.aw = add i32 %.0.copyload.i61.i189, %i.av
  %i.ax = zext i32 %i.aw to i64
  %.val58.i190 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val58.i190, i64 %i.ax
  store i64 0, ptr %i.ay, align 1
  %.val.i191 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i191, i64 %i.r
  %.0.copyload.i62.i192 = load i32, ptr %i.az, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i62.i192) #7, !srcloc !19
  %i.ba = add i32 %.0.copyload.i62.i192, 1
  %.val57.i193 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val57.i193, i64 %i.r
  store i32 %i.ba, ptr %i.bb, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.a, i32 noundef %i.an, i32 noundef %.0.copyload.i62.i192)
  %i.bc = zext i32 %1 to i64                      ; 4 uses
  %.val160 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val160, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.0.copyload.i = load i32, ptr %i.be, align 1   ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.bf = zext i32 %.0.copyload.i to i64
  %.val159 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val159, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  %.0.copyload.i195 = load i32, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i195) #7, !srcloc !19
  %i.bi = zext i32 %.0.copyload.i195 to i64
  %.val174 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val174, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 136
  %.0.copyload.i196 = load i64, ptr %i.bk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i196) #7, !srcloc !20
  %i.bl = and i64 %.0.copyload.i196, 1095216660480
  %.not153 = icmp eq i64 %i.bl, 0
  %.val157 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val157, i64 %i.bc
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.0.copyload.i198 = load i32, ptr %i.bn, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i198) #7
  br i1 %.not153, label %bb.e, label %bb.d

bb.d:                                             ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit194
  %i.bo = trunc i64 %.0.copyload.i196 to i32
  br label %bb.g

bb.e:                                             ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit194
  %i.bp = add i32 %.0.copyload.i, 36
  %i.bq = icmp eq i32 %.0.copyload.i198, %i.bp
  br i1 %i.bq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = zext i32 %.0.copyload.i198 to i64
  %.val156 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val156, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 76
  %.0.copyload.i199 = load i32, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i199) #7, !srcloc !19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.0 = phi i32 [ %i.bo, %bb.d ], [ 0, %bb.e ], [ %.0.copyload.i199, %bb.f ]
  %.val168 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val168, i64 %i.w
  store i32 %.0, ptr %i.bu, align 1
  %.val155 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val155, i64 %i.bc
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.0.copyload.i200 = load i32, ptr %i.bw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i200) #7, !srcloc !19
  %.val167 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val167, i64 %i.c
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  store i32 %.0.copyload.i200, ptr %i.by, align 1
  %.val154 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val154, i64 %i.bc
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.0.copyload.i201 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i201) #7, !srcloc !19
  %.val166 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val166, i64 %i.i
  store i32 %.0.copyload.i, ptr %i.cb, align 1
  %.val165 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val165, i64 %i.g
  store i32 %.0.copyload.i201, ptr %i.cc, align 1
  %i.cd = zext i32 %.0.copyload.i198 to i64       ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cd
  %.0.copyload.i202 = load i32, ptr %i.ce, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i202) #7, !srcloc !19
  %.val164 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val164, i64 %i.c
  store i32 %.0.copyload.i202, ptr %i.cf, align 1
  %.val163 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val163, i64 %i.c
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %.0.copyload.i198, ptr %i.ch, align 1
  %i.ci = zext i32 %.0.copyload.i202 to i64
  %.val162 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val162, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 %i.a, ptr %i.ck, align 1
  %.val161 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val161, i64 %i.cd
  store i32 %i.a, ptr %i.cl, align 1
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateLoadStackInst0x28hermes0x3A0x3AAllocStackInst0x2A0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3ABinaryOperatorInst0x3A0x3AparseOperator0x28llvh0x3A0x3AStringRef0x29(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3AUnaryOperatorInst0x3A0x3AparseOperator0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = zext i32 %1 to i64
  %.val56 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val56, i64 %i.b
  %.0.copyload.i = load i64, ptr %i.c, align 1
  %.0.copyload.i.fr = freeze i64 %.0.copyload.i   ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i.fr) #7, !srcloc !20
  %i.d = lshr i64 %.0.copyload.i.fr, 32           ; 2 uses
  %i.e = trunc nuw i64 %i.d to i32                ; 3 uses
  %i.f = trunc i64 %.0.copyload.i.fr to i32
  %.not53 = icmp eq i64 %i.d, 0
  br i1 %.not53, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.d
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.g = shl nuw nsw i64 %indvars.iv64, 2
  %.val.us = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val.us, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 262992
  %.0.copyload.i57.us = load i32, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i57.us) #7, !srcloc !19
  %.not.us = icmp eq i32 %.0.copyload.i57.us, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us
  %2 = tail call i32 @w2c_hermes_strlen(ptr noundef nonnull %0, i32 noundef %.0.copyload.i57.us) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split.us
  %.048.us = phi i32 [ %2, %bb.b ], [ 0, %.split.us ]
  %.not52.us = icmp eq i32 %.048.us, %i.e
  br i1 %.not52.us, label %.split59.us.loopexit.split.loop.exit72, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %.not55.us = icmp eq i64 %indvars.iv.next65, 26
  br i1 %.not55.us, label %.split59.us, label %.split.us

.split:                                           ; preds = %bb.a, %.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread ], [ 0, %bb.a ] ; 3 uses
  %i.j = shl nuw nsw i64 %indvars.iv, 2
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 262992
  %.0.copyload.i57 = load i32, ptr %i.l, align 1  ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i57) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i57, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %.split
  %i.m = tail call i32 @w2c_hermes_strlen(ptr noundef nonnull %0, i32 noundef %.0.copyload.i57) #7
  %i.n = icmp eq i32 %i.m, %i.e
  br i1 %i.n, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.copyload.i57, i32 noundef %i.e) #7
  %.not54 = icmp eq i32 %i.o, 0
  br i1 %.not54, label %.split59.us.loopexit68.split.loop.exit70, label %.thread

.thread:                                          ; preds = %.split, %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not55 = icmp eq i64 %indvars.iv.next, 26
  br i1 %.not55, label %.split59.us, label %.split

.split59.us.loopexit.split.loop.exit72:           ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %indvars.iv64 to i32
  br label %.split59.us

.split59.us.loopexit68.split.loop.exit70:         ; preds = %bb.f
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split59.us

.split59.us:                                      ; preds = %.thread, %bb.d, %.split59.us.loopexit68.split.loop.exit70, %.split59.us.loopexit.split.loop.exit72
  %.us-phi = phi i32 [ 26, %bb.d ], [ %i.p, %.split59.us.loopexit.split.loop.exit72 ], [ %i.q, %.split59.us.loopexit68.split.loop.exit70 ], [ 26, %.thread ]
  ret i32 %.us-phi
}

declare i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateDeletePropertyInst0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AgetLiteralString0x28hermes0x3A0x3AIdentifier0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext i32 %1 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.d = tail call i32 @w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralString0x28hermes0x3A0x3AIdentifier0x29(ptr noundef %0, i32 noundef %.0.copyload.i, i32 noundef %2)
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateUnaryOperatorInst0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AUnaryOperatorInst0x3A0x3AOpKind0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef 84) #7 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 34 uses
  %i.c = zext i32 %i.a to i64                     ; 16 uses
  %.val175 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val175, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i64 8589934592, ptr %i.e, align 1
  %.val169 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val169, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  store i32 459775, ptr %i.g, align 1
  %.val174 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val174, i64 %i.c
  store i64 0, ptr %i.h, align 1
  %i.i = add nuw nsw i64 %i.c, 68                 ; 2 uses
  %.val173 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val173, i64 %i.i
  store i64 0, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %i.c, 36                 ; 2 uses
  %.val168 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val168, i64 %i.k
  store i32 0, ptr %i.l, align 1
  %.val171 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val171, i64 %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 26, ptr %i.n, align 1
  %i.o = add i32 %i.a, 28
  %.val167 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val167, i64 %i.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %i.o, ptr %i.q, align 1
  %i.r = add nuw nsw i64 %i.c, 44                 ; 5 uses
  %.val172 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val172, i64 %i.r
  store i64 8589934592, ptr %i.s, align 1
  %i.t = add i32 %i.a, 52                         ; 2 uses
  %.val166 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val166, i64 %i.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 %i.t, ptr %i.v, align 1
  %i.w = add nuw nsw i64 %i.c, 76                 ; 2 uses
  %.val165 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val165, i64 %i.w
  store i32 0, ptr %i.x, align 1
  %.val56.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val56.i, i64 %i.r
  %.0.copyload.i.i = load i32, ptr %i.y, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #7, !srcloc !19
  %.val55.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val55.i, i64 %i.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.0.copyload.i59.i = load i32, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i) #7, !srcloc !19
  %.not.i = icmp ult i32 %.0.copyload.i.i, %.0.copyload.i59.i
  br i1 %.not.i, label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = add i32 %i.a, 40
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef %i.t, i32 noundef 0, i32 noundef 8) #7
  %.val54.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val54.i, i64 %i.r
  %.0.copyload.i60.i = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60.i) #7, !srcloc !19
  br label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit

w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %.0.copyload.i60.i, %bb.b ], [ %.0.copyload.i.i, %bb.a ]
  %.val53.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val53.i, i64 %i.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.0.copyload.i61.i = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i61.i) #7, !srcloc !19
  %i.af = shl i32 %.0.i, 3
  %i.ag = add i32 %.0.copyload.i61.i, %i.af
  %i.ah = zext i32 %i.ag to i64
  %.val58.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val58.i, i64 %i.ah
  store i64 0, ptr %i.ai, align 1
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.r
  %.0.copyload.i62.i = load i32, ptr %i.aj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i62.i) #7, !srcloc !19
  %i.ak = add i32 %.0.copyload.i62.i, 1
  %.val57.i = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val57.i, i64 %i.r
  store i32 %i.ak, ptr %i.al, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.a, i32 noundef %2, i32 noundef %.0.copyload.i62.i)
  %.val164 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val164, i64 %i.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store i32 %3, ptr %i.an, align 1
  %i.ao = zext i32 %1 to i64                      ; 4 uses
  %.val155 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val155, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.0.copyload.i = load i32, ptr %i.aq, align 1   ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.ar = zext i32 %.0.copyload.i to i64
  %.val154 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val154, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 44
  %.0.copyload.i176 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i176) #7, !srcloc !19
  %i.au = zext i32 %.0.copyload.i176 to i64
  %.val170 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val170, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %.0.copyload.i177 = load i64, ptr %i.aw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i177) #7, !srcloc !20
  %i.ax = and i64 %.0.copyload.i177, 1095216660480
  %.not = icmp eq i64 %i.ax, 0
  %.val152 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val152, i64 %i.ao
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %.0.copyload.i179 = load i32, ptr %i.az, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i179) #7
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit
  %i.ba = trunc i64 %.0.copyload.i177 to i32
  br label %bb.f

bb.d:                                             ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit
  %i.bb = add i32 %.0.copyload.i, 36
  %i.bc = icmp eq i32 %.0.copyload.i179, %i.bb
  br i1 %i.bc, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = zext i32 %.0.copyload.i179 to i64
  %.val151 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val151, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 76
  %.0.copyload.i180 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i180) #7, !srcloc !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i32 [ %i.ba, %bb.c ], [ 0, %bb.d ], [ %.0.copyload.i180, %bb.e ]
  %.val163 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val163, i64 %i.w
  store i32 %.0, ptr %i.bg, align 1
  %.val150 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val150, i64 %i.ao
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %.0.copyload.i181 = load i32, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i181) #7, !srcloc !19
  %.val162 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val162, i64 %i.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  store i32 %.0.copyload.i181, ptr %i.bk, align 1
  %.val149 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val149, i64 %i.ao
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.0.copyload.i182 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i182) #7, !srcloc !19
  %.val161 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val161, i64 %i.k
  store i32 %.0.copyload.i, ptr %i.bn, align 1
  %.val160 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val160, i64 %i.i
  store i32 %.0.copyload.i182, ptr %i.bo, align 1
  %i.bp = zext i32 %.0.copyload.i179 to i64       ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bp
  %.0.copyload.i183 = load i32, ptr %i.bq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i183) #7, !srcloc !19
  %.val159 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val159, i64 %i.c
  store i32 %.0.copyload.i183, ptr %i.br, align 1
  %.val158 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val158, i64 %i.c
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %.0.copyload.i179, ptr %i.bt, align 1
  %i.bu = zext i32 %.0.copyload.i183 to i64
  %.val157 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val157, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %i.a, ptr %i.bw, align 1
  %.val156 = load ptr, ptr %i.b, align 8, !tbaa !18
end_hunk_0
