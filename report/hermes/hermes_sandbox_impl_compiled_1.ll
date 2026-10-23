Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateReturnInst0x28hermes0x3A0x3AValue0x2A0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i168) #7, !srcloc !19
  %i.as = zext i32 %.0.copyload.i168 to i64
  %.val162 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val162, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  %.0.copyload.i169 = load i64, ptr %i.au, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i169) #7, !srcloc !20
  %i.av = and i64 %.0.copyload.i169, 1095216660480
  %.not = icmp eq i64 %i.av, 0
  %.val145 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val145, i64 %i.am
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.0.copyload.i171 = load i32, ptr %i.ax, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i171) #7
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit
  %i.ay = trunc i64 %.0.copyload.i169 to i32
  br label %bb.f

bb.d:                                             ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit
  %i.az = add i32 %.0.copyload.i, 36
  %i.ba = icmp eq i32 %.0.copyload.i171, %i.az
  br i1 %i.ba, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = zext i32 %.0.copyload.i171 to i64
  %.val144 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val144, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 76
  %.0.copyload.i172 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i172) #7, !srcloc !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i32 [ %i.ay, %bb.c ], [ 0, %bb.d ], [ %.0.copyload.i172, %bb.e ]
  %.val156 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val156, i64 %i.w
  store i32 %.0, ptr %i.be, align 1
  %.val143 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val143, i64 %i.am
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %.0.copyload.i173 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i173) #7, !srcloc !19
  %.val155 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val155, i64 %i.c
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  store i32 %.0.copyload.i173, ptr %i.bi, align 1
  %.val142 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val142, i64 %i.am
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.0.copyload.i174 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i174) #7, !srcloc !19
  %.val154 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val154, i64 %i.k
  store i32 %.0.copyload.i, ptr %i.bl, align 1
  %.val153 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val153, i64 %i.i
  store i32 %.0.copyload.i174, ptr %i.bm, align 1
  %i.bn = zext i32 %.0.copyload.i171 to i64       ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bn
  %.0.copyload.i175 = load i32, ptr %i.bo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i175) #7, !srcloc !19
  %.val152 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val152, i64 %i.c
  store i32 %.0.copyload.i175, ptr %i.bp, align 1
  %.val151 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val151, i64 %i.c
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %.0.copyload.i171, ptr %i.br, align 1
  %i.bs = zext i32 %.0.copyload.i175 to i64
  %.val150 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val150, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.a, ptr %i.bu, align 1
  %.val149 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val149, i64 %i.bn
  store i32 %i.a, ptr %i.bv, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AeraseFromParent0x280x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 27 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %i.c = add nuw nsw i64 %i.b, 44                 ; 2 uses
  %.val222 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val222, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %.loopexit250, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.b, 40                 ; 2 uses
  %.val221 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val221, i64 %i.e
  %.0.copyload.i231 = load i32, ptr %i.f, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i231) #7, !srcloc !19
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %.0190 = phi i32 [ %.0.copyload.i231, %bb.b ], [ %.2192, %bb.j ] ; 2 uses
  %.0189 = phi i32 [ %.0.copyload.i, %bb.b ], [ %.2, %bb.j ]
  %.0188 = phi i32 [ 0, %bb.b ], [ %i.bh, %bb.j ] ; 2 uses
  %i.g = shl i32 %.0188, 3                        ; 2 uses
  %i.h = add i32 %i.g, %.0190
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %.val220 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val220, i64 %i.i
  %.0.copyload.i232 = load i32, ptr %i.j, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i232) #7, !srcloc !19
  %.not200 = icmp eq i32 %.0.copyload.i232, 0
  br i1 %.not200, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext i32 %.0.copyload.i232 to i64        ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 8                  ; 2 uses
  %.val219 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val219, i64 %i.l
  %.0.copyload.i233 = load i32, ptr %i.m, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i233) #7, !srcloc !19
  %.val218 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val218, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.0.copyload.i234 = load i32, ptr %i.o, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i234) #7, !srcloc !19
  %i.p = shl i32 %.0.copyload.i234, 2             ; 2 uses
  %i.q = add i32 %i.p, %.0.copyload.i233
  %i.r = add nuw nsw i64 %i.k, 12                 ; 2 uses
  %.val217 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val217, i64 %i.r
  %.0.copyload.i235 = load i32, ptr %i.s, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i235) #7, !srcloc !19
  %i.t = shl i32 %.0.copyload.i235, 2
  %i.u = add i32 %.0.copyload.i233, -4
  %i.v = add i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %.val216 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val216, i64 %i.w
  %.0.copyload.i236 = load i32, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i236) #7, !srcloc !19
  %i.y = zext i32 %i.q to i64
  %.val228 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val228, i64 %i.y
  store i32 %.0.copyload.i236, ptr %i.z, align 1
  %i.aa = add i32 %.0.copyload.i235, -1           ; 4 uses
  %.val227 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val227, i64 %i.r
  store i32 %i.aa, ptr %i.ab, align 1
  %i.ac = icmp eq i32 %i.aa, %.0.copyload.i234
  br i1 %i.ac, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val215 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val215, i64 %i.l
  %.0.copyload.i237 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i237) #7, !srcloc !19
  %i.ae = add i32 %.0.copyload.i237, %i.p
  %i.af = zext i32 %i.ae to i64
  %.val214 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val214, i64 %i.af
  %.0.copyload.i238 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i238) #7, !srcloc !19
  %i.ah = zext i32 %.0.copyload.i238 to i64       ; 2 uses
  %.val213 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val213, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %.0.copyload.i239 = load i32, ptr %i.aj, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i239) #7, !srcloc !19
  %i.ak = icmp slt i32 %.0.copyload.i239, 1
  br i1 %i.ak, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val212 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val212, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.0.copyload.i240 = load i32, ptr %i.am, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i240) #7, !srcloc !19
  %i.an = zext i32 %.0.copyload.i240 to i64       ; 3 uses
  %.val211 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val211, i64 %i.an
  %.0.copyload.i241 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i241) #7, !srcloc !19
  %.not201 = icmp eq i32 %.0.copyload.i241, %.0.copyload.i232
  br i1 %.not201, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val210 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val210, i64 %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.0.copyload.i242 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i242) #7, !srcloc !19
  %.not202 = icmp eq i32 %.0.copyload.i242, %i.aa
  br i1 %.not202, label %.loopexit249, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = icmp eq i32 %.0.copyload.i239, 1
  br i1 %i.ar, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.backedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.backedge ], [ 1, %bb.h ] ; 2 uses
  %i.as = trunc nuw i64 %indvars.iv to i32
  %i.at = shl i32 %i.as, 3
  %i.au = add i32 %i.at, %.0.copyload.i240        ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  %.val209 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val209, i64 %i.av
  %.0.copyload.i243 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i243) #7, !srcloc !19
  %.not203 = icmp eq i32 %.0.copyload.i243, %.0.copyload.i232
  br i1 %.not203, label %bb.i, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %.0.copyload.i239, %lftr.wideiv
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %.val208 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val208, i64 %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.0.copyload.i244 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i244) #7, !srcloc !19
  %.not204 = icmp eq i32 %.0.copyload.i244, %i.aa
  br i1 %.not204, label %.loopexit249, label %.backedge

.loopexit249:                                     ; preds = %bb.i, %bb.g
  %.pre-phi = phi i64 [ %i.an, %bb.g ], [ %i.av, %bb.i ]
  %.1191 = phi i32 [ %.0.copyload.i240, %bb.g ], [ %i.au, %bb.i ]
  %.0 = add i32 %.1191, 4
  %.val226 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val226, i64 %.pre-phi
  store i32 %.0.copyload.i232, ptr %i.az, align 1
  %i.ba = zext i32 %.0 to i64
  %.val225 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val225, i64 %i.ba
  store i32 %.0.copyload.i234, ptr %i.bb, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.h, %bb.e, %bb.d, %.loopexit249
  %.val207 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val207, i64 %i.e
  %.0.copyload.i245 = load i32, ptr %i.bc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i245) #7, !srcloc !19
  %i.bd = add i32 %.0.copyload.i245, %i.g
  %i.be = zext i32 %i.bd to i64
  %.val230 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val230, i64 %i.be
  store i64 0, ptr %i.bf, align 1
  %.val206 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val206, i64 %i.c
  %.0.copyload.i246 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i246) #7, !srcloc !19
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.c
  %.2192 = phi i32 [ %.0.copyload.i245, %.loopexit ], [ %.0190, %bb.c ]
  %.2 = phi i32 [ %.0.copyload.i246, %.loopexit ], [ %.0189, %bb.c ] ; 2 uses
  %i.bh = add nuw i32 %.0188, 1                   ; 2 uses
  %i.bi = icmp ult i32 %i.bh, %.2
  br i1 %i.bi, label %bb.c, label %.loopexit250

.loopexit250:                                     ; preds = %bb.j, %bb.a
  %.val205 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val205, i64 %i.b
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %.0.copyload.i247 = load i32, ptr %i.bk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i247) #7, !srcloc !19
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i248 = load i32, ptr %i.bl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i248) #7, !srcloc !19
  %i.bm = zext i32 %.0.copyload.i247 to i64
  %.val224 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val224, i64 %i.bm
  store i32 %.0.copyload.i248, ptr %i.bn, align 1
  %i.bo = zext i32 %.0.copyload.i248 to i64
  %.val223 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val223, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %.0.copyload.i247, ptr %i.bq, align 1
  %.val229 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val229, i64 %i.b
  store i64 0, ptr %i.br, align 1
  %i.bs = add i32 %1, 8
  tail call void @w2c_hermes_hermes0x3A0x3AValue0x3A0x3Adestroy0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.bs)
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AFunctionContext0x3A0x3A0x7EFunctionContext0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenExpressionBranch0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 24 uses
  %i.e = zext i32 %i.c to i64                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.0270 = phi i32 [ %2, %bb.a ], [ %.0.copyload.i320, %bb.k ]
  %.0269 = phi i32 [ %3, %bb.a ], [ %.0268, %bb.k ] ; 5 uses
  %.0268 = phi i32 [ %4, %bb.a ], [ %.0269, %bb.k ] ; 5 uses
  %.0267 = phi i32 [ %5, %bb.a ], [ 0, %bb.k ]    ; 5 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.b
  %.1271 = phi i32 [ %.0270, %bb.b ], [ %.0, %bb.n ] ; 3 uses
  %i.f = zext i32 %.1271 to i64                   ; 9 uses
  %.val297 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val297, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i = load i32, ptr %i.h, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  switch i32 %.0.copyload.i, label %.loopexit326 [
    i32 39, label %bb.l
    i32 52, label %bb.j
    i32 58, label %bb.c
  ]

bb.c:                                             ; preds = %.loopexit
  %.val296 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val296, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %.0.copyload.i308 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i308) #7, !srcloc !19
  %i.k = zext i32 %.0.copyload.i308 to i64
  %.val303 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val303, i64 %i.k
  %.0.copyload.i309 = load i64, ptr %i.l, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i309) #7, !srcloc !20
  %i.m = add i32 %1, 4                            ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 8                  ; 2 uses
  %.val295 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val295, i64 %i.o
  %.0.copyload.i310 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i310) #7, !srcloc !19
  %i.q = zext i32 %.0.copyload.i310 to i64
  %.val294 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val294, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %.0.copyload.i311 = load i32, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i311) #7, !srcloc !19
  %i.t = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateBasicBlock0x28hermes0x3A0x3AFunction0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %.0.copyload.i311) #7 ; 6 uses
  %i.u = and i64 %.0.copyload.i309, -4294967296
  %.not277 = icmp eq i64 %i.u, 8589934592
  br i1 %.not277, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = and i64 %.0.copyload.i309, 4294967295    ; 2 uses
  %.val307 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.v
  %.0.copyload.i312 = load i16, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i312) #7, !srcloc !24
  %i.x = icmp eq i16 %.0.copyload.i312, 9766
  %.val293 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.val293, i64 %i.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %.0.copyload.i313 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i313) #7, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenExpressionBranch0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i313, i32 noundef %i.t, i32 noundef %.0268, i32 noundef %.0267)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.val293, i64 %i.v
  %.0.copyload.i314 = load i16, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i314) #7, !srcloc !24
  %.not278 = icmp eq i16 %.0.copyload.i314, 31868
  br i1 %.not278, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val292, i64 %i.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %.0.copyload.i315 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i315) #7, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenExpressionBranch0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i315, i32 noundef %.0269, i32 noundef %i.t, i32 noundef %.0267)
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.c
  %.val291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val291, i64 %i.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %.0.copyload.i316 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i316) #7, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenExpressionBranch0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i316, i32 noundef %.0269, i32 noundef %.0268, i32 noundef %i.t)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.val301 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val301, i64 %i.o
  store i32 %i.t, ptr %i.af, align 1
  %i.ag = add i32 %i.t, 36
  %.not279 = icmp eq i32 %i.t, 0
  %i.ah = select i1 %.not279, i32 0, i32 %i.ag
  %.val300 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val300, i64 %i.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ah, ptr %i.aj, align 1
  %.val290 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val290, i64 %i.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.0.copyload.i317 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i317) #7, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenExpressionBranch0x28hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i317, i32 noundef %.0269, i32 noundef %.0268, i32 noundef %.0267)
  br label %.loopexit327

bb.j:                                             ; preds = %.loopexit
end_hunk_0
