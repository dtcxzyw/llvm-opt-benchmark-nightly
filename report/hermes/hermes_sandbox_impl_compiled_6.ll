Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_6?download=true
inline.NumInlined: 8639
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@w2c_hermes_llvh0x3A0x3Araw_fd_ostream0x3A0x3Araw_fd_ostream0x28int0x2C0x20bool0x2C0x20bool0x29:bb.a

bb.b:                                             ; preds = %bb.a
  %.val93 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val93, i64 273393
  store i8 1, ptr %i.r, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val96 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %.val96, i64 %i.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 261704, ptr %i.t, align 1
  %.val95 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.val95, i64 %i.k
  %.0.copyload.i105 = load i32, ptr %i.u, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i105) #8, !srcloc !14
  %i.v = icmp slt i32 %.0.copyload.i105, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val92 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val92, i64 %i.i
  store i8 0, ptr %i.w, align 1
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.x = icmp samesign ult i32 %.0.copyload.i105, 3
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val91 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.val91, i64 %i.i
  store i8 0, ptr %i.y, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = tail call i64 @w2c_hermes_0x5F_lseek(ptr noundef nonnull %0, i32 noundef %.0.copyload.i105, i64 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.aa = icmp ne i64 %i.z, -1                    ; 2 uses
  %.val90 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ab = zext i1 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val90, i64 %i.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 25
  store i8 %i.ab, ptr %i.ad, align 1
  %.val102 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val102, i64 %i.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.af, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i64 %i.z, ptr %i.af, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.d
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3AStringRef0x3A0x3Afind_first_of0x28llvh0x3A0x3AStringRef0x2C0x20unsigned0x20long0x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = add i32 %i.b, -32                        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 19 uses
  %i.e = zext i32 %i.c to i64                     ; 4 uses
  %.val207 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val207, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.g, align 1
  %.val206 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val206, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.i, align 1
  %.val205 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val205, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.k, align 1
  %.val204 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %.val204, i64 %i.e
  store i64 0, ptr %i.l, align 1
  %i.m = zext i32 %2 to i64                       ; 2 uses
  %.val200 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.0.copyload.i = load i32, ptr %i.o, align 1    ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val199 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.m
  %.0.copyload.i208 = load i32, ptr %i.p, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i208) #8, !srcloc !14
  %.not185 = icmp eq i32 %.0.copyload.i, 1
  br i1 %.not185, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i32 %.0.copyload.i, -2               ; 2 uses
  %i.r = add i32 %.0.copyload.i208, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.s = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.t = add i32 %.0.copyload.i208, %i.s
  %i.u = zext i32 %i.t to i64
  %.val192 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.u
  %.0.copyload.i209 = load i8, ptr %i.v, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i209) #8, !srcloc !13
  %i.w = zext i8 %.0.copyload.i209 to i32         ; 2 uses
  %i.x = lshr i32 %i.w, 3
  %i.y = and i32 %i.x, 28
  %i.z = add i32 %i.y, %i.c
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %.val198 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.aa
  %.0.copyload.i210 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i210) #8, !srcloc !14
  %i.ac = and i32 %i.w, 31
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = or i32 %.0.copyload.i210, %i.ad
  %.val203 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %.val203, i64 %i.aa
  store i32 %i.ae, ptr %i.af, align 1
  %i.ag = add i32 %i.r, %i.s
  %i.ah = zext i32 %i.ag to i64
  %.val191 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.ah
  %.0.copyload.i211 = load i8, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i211) #8, !srcloc !13
  %i.aj = zext i8 %.0.copyload.i211 to i32        ; 2 uses
  %i.ak = lshr i32 %i.aj, 3
  %i.al = and i32 %i.ak, 28
  %i.am = add i32 %i.al, %i.c
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %.val197 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.an
  %.0.copyload.i212 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i212) #8, !srcloc !14
  %i.ap = and i32 %i.aj, 31
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = or i32 %.0.copyload.i212, %i.aq
  %.val202 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %.val202, i64 %i.an
  store i32 %i.ar, ptr %i.as, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars223 = trunc i64 %indvars.iv.next to i32
  %.not186 = icmp eq i32 %i.q, %indvars223
  br i1 %.not186, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.at = and i32 %.0.copyload.i, 1
  %.not187 = icmp eq i32 %i.at, 0
  br i1 %.not187, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.b, %bb.e
  %.1221 = phi i32 [ %i.q, %bb.e ], [ 0, %bb.b ]
  %i.au = add i32 %.1221, %.0.copyload.i208
  %i.av = zext i32 %i.au to i64
  %.val190 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.av
  %.0.copyload.i213 = load i8, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i213) #8, !srcloc !13
  %i.ax = zext i8 %.0.copyload.i213 to i32        ; 2 uses
  %i.ay = lshr i32 %i.ax, 3
  %i.az = and i32 %i.ay, 28
  %i.ba = add i32 %i.az, %i.c
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.val196 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.bb
  %.0.copyload.i214 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i214) #8, !srcloc !14
  %i.bd = and i32 %i.ax, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = or i32 %.0.copyload.i214, %i.be
  %.val201 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.bb
  store i32 %i.bf, ptr %i.bg, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %.thread
  %i.bh = zext i32 %1 to i64                      ; 2 uses
  %.val195 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.0.copyload.i215 = load i32, ptr %i.bj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i215) #8, !srcloc !14
  %i.bk = icmp ult i32 %3, %.0.copyload.i215
  br i1 %i.bk, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %.val194 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.bh
  %.0.copyload.i216 = load i32, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i216) #8, !srcloc !14
  %4 = zext i32 %3 to i64
  %5 = zext i32 %.0.copyload.i215 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %bb.i ], [ %4, %bb.g ] ; 2 uses
  %6 = trunc nuw i64 %indvars.iv225 to i32        ; 2 uses
  %i.bm = add i32 %.0.copyload.i216, %6
  %i.bn = zext i32 %i.bm to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bn
  %.0.copyload.i217 = load i8, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i217) #8, !srcloc !13
  %i.bp = zext i8 %.0.copyload.i217 to i32        ; 2 uses
  %i.bq = lshr i32 %i.bp, 3
  %i.br = and i32 %i.bq, 28
  %i.bs = add i32 %i.br, %i.c
  %i.bt = zext i32 %i.bs to i64
  %.val193 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.bt
  %.0.copyload.i218 = load i32, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i218) #8, !srcloc !14
  %i.bv = and i32 %i.bp, 31
  %i.bw = shl nuw i32 1, %i.bv
  %i.bx = and i32 %.0.copyload.i218, %i.bw
  %.not188 = icmp eq i32 %i.bx, 0
  br i1 %.not188, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %.not189 = icmp eq i64 %indvars.iv.next226, %5
  br i1 %.not189, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.f
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.i ], [ %6, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x3A0x3Aoperator0x3D0x28llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x260x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, %2
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %i.b = zext i32 %2 to i64                       ; 7 uses
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.d = add i32 %2, 12                           ; 2 uses
  %.not178 = icmp eq i32 %.0.copyload.i, %i.d
  %i.e = zext i32 %1 to i64                       ; 9 uses
  br i1 %.not178, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.e
  %.0.copyload.i203 = load i32, ptr %i.f, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i203) #8, !srcloc !14
  %i.g = add i32 %1, 12
  %.not182 = icmp eq i32 %.0.copyload.i203, %i.g
  br i1 %.not182, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i203) #8
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.b
  %.0.copyload.i204 = load i32, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i204) #8, !srcloc !14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %.0.copyload.i204, %bb.d ], [ %.0.copyload.i, %bb.c ]
  %.val202 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %.val202, i64 %i.e
  store i32 %.0, ptr %i.i, align 1
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.0.copyload.i205 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i205) #8, !srcloc !14
  %.val201 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %.0.copyload.i205, ptr %i.m, align 1
  %i.n = add nuw nsw i64 %i.b, 8                  ; 2 uses
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.n
  %.0.copyload.i206 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i206) #8, !srcloc !14
  %.val200 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %.0.copyload.i206, ptr %i.q, align 1
  %.val199 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.n
  store i32 0, ptr %i.r, align 1
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  %i.s = add nuw nsw i64 %i.e, 4                  ; 6 uses
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.s
  %.0.copyload.i207 = load i32, ptr %i.t, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #8, !srcloc !14
  %i.u = add nuw nsw i64 %i.b, 4                  ; 2 uses
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.u
  %.0.copyload.i208 = load i32, ptr %i.v, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i208) #8, !srcloc !14
  %.not179 = icmp ult i32 %.0.copyload.i207, %.0.copyload.i208
  br i1 %.not179, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not181 = icmp eq i32 %.0.copyload.i208, 0
  br i1 %.not181, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.e
  %.0.copyload.i209 = load i32, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i209) #8, !srcloc !14
  %i.x = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0.copyload.i209, i32 noundef %.0.copyload.i, i32 noundef %.0.copyload.i208) ; 0 uses
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %.val186 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.copyload.i210 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i210) #8, !srcloc !14
  %i.aa = icmp ugt i32 %.0.copyload.i208, %.0.copyload.i210
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val197 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.s
  store i32 0, ptr %i.ab, align 1
  %i.ac = add i32 %1, 12
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ac, i32 noundef %.0.copyload.i208, i32 noundef 1)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %.not180 = icmp eq i32 %.0.copyload.i207, 0
  br i1 %.not180, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val185 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.e
  %.0.copyload.i211 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i211) #8, !srcloc !14
  %i.ae = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0.copyload.i211, i32 noundef %.0.copyload.i, i32 noundef %.0.copyload.i207) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.0168 = phi i32 [ 0, %bb.j ], [ %.0.copyload.i207, %bb.l ], [ 0, %bb.k ] ; 4 uses
  %.val184 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.u
  %.0.copyload.i212 = load i32, ptr %i.af, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i212) #8, !srcloc !14
  %i.ag = icmp eq i32 %.0168, %.0.copyload.i212
  br i1 %i.ag, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val183 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.val183, i64 %i.e
  %.0.copyload.i213 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i213) #8, !srcloc !14
  %i.ai = add i32 %.0.copyload.i213, %.0168
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i214 = load i32, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i214) #8, !srcloc !14
  %i.ak = add i32 %.0.copyload.i214, %.0168
  %i.al = sub i32 %.0.copyload.i212, %.0168
  %i.am = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef %i.al) #8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.n, %bb.g, %bb.m, %bb.e
  %.sink218 = phi i64 [ %i.b, %bb.e ], [ %i.s, %bb.m ], [ %i.s, %bb.g ], [ %i.s, %bb.n ], [ %i.s, %bb.h ]
  %.0.copyload.i208.sink = phi i32 [ %i.d, %bb.e ], [ %.0.copyload.i208, %bb.m ], [ %.0.copyload.i208, %bb.g ], [ %.0.copyload.i208, %bb.n ], [ %.0.copyload.i208, %bb.h ]
  %.val196 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %.val196, i64 %.sink218
  store i32 %.0.copyload.i208.sink, ptr %i.an, align 1
  %.0167 = add i32 %2, 4
  %i.ao = zext i32 %.0167 to i64
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.ao
  store i32 0, ptr %i.ap, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x3A0x3Aswap0x28llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x260x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 48 uses
  %i.b = zext i32 %1 to i64                       ; 13 uses
  %.val245 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.val245, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.d = and i32 %.0.copyload.i, -2
  %i.e = zext i32 %2 to i64                       ; 12 uses
  %.val244 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val244, i64 %i.e
  %.0.copyload.i282 = load i32, ptr %i.f, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i282) #8, !srcloc !14
  %i.g = and i32 %.0.copyload.i282, 1
  %i.h = or disjoint i32 %i.g, %i.d
  %.val255 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %.val255, i64 %i.e
  store i32 %i.h, ptr %i.i, align 1
  %.val243 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val243, i64 %i.b
  %.0.copyload.i283 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i283) #8, !srcloc !14
  %i.k = and i32 %.0.copyload.i283, 1
  %i.l = and i32 %.0.copyload.i282, -2
  %i.m = or disjoint i32 %i.k, %i.l
  %.val254 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.val254, i64 %i.b
  store i32 %i.m, ptr %i.n, align 1
  %i.o = add nuw nsw i64 %i.b, 4                  ; 2 uses
  %.val242 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val242, i64 %i.o
  %.0.copyload.i284 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i284) #8, !srcloc !14
  %i.q = add nuw nsw i64 %i.e, 4                  ; 2 uses
  %.val241 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val241, i64 %i.q
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes_g_strtod:bb.a
  %i.ov = add i32 %.174360, %.24205
  %i.ow = zext i32 %i.ov to i64                   ; 4 uses
  %.val4812 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ox = getelementptr inbounds nuw i8, ptr %.val4812, i64 %i.ow
  %.0.copyload.i4898 = load i8, ptr %i.ox, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4898) #8, !srcloc !34
  %i.oy = sext i8 %.0.copyload.i4898 to i32
  %i.oz = mul i32 %.17, 10
  %i.pa = add i32 %i.oz, %i.oy
  %i.pb = mul i32 %i.pa, 10
  %.val4811 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pc = getelementptr inbounds nuw i8, ptr %.val4811, i64 %i.ow
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 1
  %.0.copyload.i4899 = load i8, ptr %i.pd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4899) #8, !srcloc !34
  %i.pe = sext i8 %.0.copyload.i4899 to i32
  %i.pf = add i32 %i.pb, %i.pe
  %i.pg = mul i32 %i.pf, 10
  %.val4810 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ph = getelementptr inbounds nuw i8, ptr %.val4810, i64 %i.ow
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 2
  %.0.copyload.i4900 = load i8, ptr %i.pi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4900) #8, !srcloc !34
  %i.pj = sext i8 %.0.copyload.i4900 to i32
  %i.pk = add i32 %i.pg, %i.pj
  %i.pl = mul i32 %i.pk, 10
  %.val4809 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pm = getelementptr inbounds nuw i8, ptr %.val4809, i64 %i.ow
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 3
  %.0.copyload.i4901 = load i8, ptr %i.pn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4901) #8, !srcloc !34
  %i.po = sext i8 %.0.copyload.i4901 to i32
  %i.pp = add i32 %i.pl, -53328
  %i.pq = add i32 %i.pp, %i.po                    ; 2 uses
  %i.pr = add i32 %.174360, 4
  %i.ps = add nsw i32 %.164304, 4                 ; 2 uses
  %i.pt = icmp slt i32 %i.ps, %.154333
  br i1 %i.pt, label %.preheader5064, label %.thread5026

bb.ci:                                            ; preds = %bb.bz, %bb.cc
  %.164334 = phi i32 [ %i.lu, %bb.bz ], [ %i.mi, %bb.cc ] ; 3 uses
  %.34281 = phi i32 [ %.44220, %bb.bz ], [ %.154333, %bb.cc ] ; 5 uses
  %.74272 = phi i32 [ %i.ig, %bb.bz ], [ %i.mk, %bb.cc ] ; 3 uses
  %i.pu = add nuw i32 %.34281, 8
  %i.pv = sdiv i32 %i.pu, 9
  %i.pw = icmp sgt i32 %.34281, 9
  br i1 %i.pw, label %.preheader5063, label %.thread5026

.preheader5063:                                   ; preds = %bb.ci, %.preheader5063
  %.184361 = phi i32 [ %i.py, %.preheader5063 ], [ 1, %bb.ci ]
  %.174305 = phi i32 [ %i.px, %.preheader5063 ], [ 0, %bb.ci ] ; 3 uses
  %i.px = add i32 %.174305, 1                     ; 3 uses
  %i.py = shl i32 %.184361, 1                     ; 2 uses
  %i.pz = icmp sgt i32 %i.pv, %i.py
  br i1 %i.pz, label %.preheader5063, label %bb.cj

bb.cj:                                            ; preds = %.preheader5063
  %i.qa = icmp ugt i32 %.174305, 6
  br i1 %i.qa, label %bb.cl, label %.thread5026

.thread5026:                                      ; preds = %.preheader5064, %.loopexit5066, %.loopexit5068, %bb.cj, %bb.ci
  %.185042 = phi i32 [ %.104258, %bb.cj ], [ %.104258, %bb.ci ], [ %.164264, %.loopexit5066 ], [ %.144262, %.loopexit5068 ], [ %i.pq, %.preheader5064 ] ; 2 uses
  %.742725039 = phi i32 [ %.74272, %bb.cj ], [ %.74272, %bb.ci ], [ %i.mk, %.loopexit5066 ], [ %i.mk, %.loopexit5068 ], [ %i.mk, %.preheader5064 ] ; 2 uses
  %.342815036 = phi i32 [ %.34281, %bb.cj ], [ %.34281, %bb.ci ], [ %.154333, %.loopexit5066 ], [ %.154333, %.loopexit5068 ], [ %.154333, %.preheader5064 ] ; 2 uses
  %.1643345033 = phi i32 [ %.164334, %bb.cj ], [ %.164334, %bb.ci ], [ %i.mi, %.loopexit5066 ], [ %i.mi, %.loopexit5068 ], [ %i.mi, %.preheader5064 ] ; 2 uses
  %.184306 = phi i32 [ %i.px, %bb.cj ], [ 0, %bb.ci ], [ 0, %.loopexit5066 ], [ 0, %.loopexit5068 ], [ 0, %.preheader5064 ] ; 4 uses
  %i.qb = shl nuw nsw i32 %.184306, 2
  %i.qc = add i32 %i.qb, %i.c
  %i.qd = zext i32 %i.qc to i64
  %i.qe = add nuw nsw i64 %i.qd, 20               ; 2 uses
  %.val4704 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qf = getelementptr inbounds nuw i8, ptr %.val4704, i64 %i.qe
  %.0.copyload.i4902 = load i32, ptr %i.qf, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4902) #8, !srcloc !14
  %.not4493 = icmp eq i32 %.0.copyload.i4902, 0
  br i1 %.not4493, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %.thread5026
  %i.qg = zext i32 %.0.copyload.i4902 to i64      ; 2 uses
  %.val4703 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qh = getelementptr inbounds nuw i8, ptr %.val4703, i64 %i.qg
  %.0.copyload.i4903 = load i32, ptr %i.qh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4903) #8, !srcloc !14
  %.val4775 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qi = getelementptr inbounds nuw i8, ptr %.val4775, i64 %i.qe
  store i32 %.0.copyload.i4903, ptr %i.qi, align 1
  br label %bb.co

bb.cl:                                            ; preds = %bb.cj
  %i.qj = and i32 %.174305, 31                    ; 2 uses
  %i.qk = shl i32 8, %i.qj
  %i.ql = add nuw i32 %i.qk, 24
  %i.qm = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef %i.ql) #8 ; 2 uses
  %.val4774 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qn = getelementptr inbounds nuw i8, ptr %.val4774, i64 %i.e
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 12
  store i32 1, ptr %i.qo, align 1
  %i.qp = shl i32 2, %i.qj
  %.pre = zext i32 %i.qm to i64
  br label %bb.cn

bb.cm:                                            ; preds = %.thread5026
  %i.qq = shl nuw nsw i32 4, %.184306
  %i.qr = and i32 %i.qq, 2147483640
  %i.qs = add i32 %i.b, -2304
  %i.qt = add i32 %i.qs, %i.qr
  %.val4773 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qu = getelementptr inbounds nuw i8, ptr %.val4773, i64 %i.f
  store i32 %i.qt, ptr %i.qu, align 1
  %i.qv = shl nuw nsw i32 1, %.184306
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.pre-phi = phi i64 [ %i.i, %bb.cm ], [ %.pre, %bb.cl ] ; 3 uses
  %.185041 = phi i32 [ %.185042, %bb.cm ], [ %.104258, %bb.cl ]
  %.742725038 = phi i32 [ %.742725039, %bb.cm ], [ %.74272, %bb.cl ]
  %.342815035 = phi i32 [ %.342815036, %bb.cm ], [ %.34281, %bb.cl ]
  %.1643345032 = phi i32 [ %.1643345033, %bb.cm ], [ %.164334, %bb.cl ]
  %.194362 = phi i32 [ %i.h, %bb.cm ], [ %i.qm, %bb.cl ]
  %.194307 = phi i32 [ %.184306, %bb.cm ], [ %i.px, %bb.cl ]
  %.3 = phi i32 [ %i.qv, %bb.cm ], [ %i.qp, %bb.cl ]
  %.val4772 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qw = getelementptr inbounds nuw i8, ptr %.val4772, i64 %.pre-phi
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store i32 %.3, ptr %i.qx, align 1
  %.val4771 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qy = getelementptr inbounds nuw i8, ptr %.val4771, i64 %.pre-phi
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  store i32 %.194307, ptr %i.qz, align 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ck
  %.pre-phi5531 = phi i64 [ %.pre-phi, %bb.cn ], [ %i.qg, %bb.ck ] ; 2 uses
  %.185040 = phi i32 [ %.185041, %bb.cn ], [ %.185042, %bb.ck ]
  %.742725037 = phi i32 [ %.742725038, %bb.cn ], [ %.742725039, %bb.ck ] ; 3 uses
  %.342815034 = phi i32 [ %.342815035, %bb.cn ], [ %.342815036, %bb.ck ] ; 4 uses
  %.1643345031 = phi i32 [ %.1643345032, %bb.cn ], [ %.1643345033, %bb.ck ] ; 3 uses
  %.204363 = phi i32 [ %.194362, %bb.cn ], [ %.0.copyload.i4902, %bb.ck ] ; 2 uses
  %.val4770 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ra = getelementptr inbounds nuw i8, ptr %.val4770, i64 %.pre-phi5531
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 20
  store i32 %.185040, ptr %i.rb, align 1
  %.val4794 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rc = getelementptr inbounds nuw i8, ptr %.val4794, i64 %.pre-phi5531
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  store i64 4294967296, ptr %i.rd, align 1
  %i.re = icmp sgt i32 %.1643345031, 9
  %i.rf = add i32 %.24205, 9                      ; 2 uses
  br i1 %i.re, label %bb.cp, label %.loopexit5601

bb.cp:                                            ; preds = %bb.co
  %i.rg = add i32 %i.b, -2376
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %bb.cp
  %.214364 = phi i32 [ %.204363, %bb.cp ], [ %i.rl, %bb.cq ]
  %.204308 = phi i32 [ 9, %bb.cp ], [ %i.rn, %bb.cq ]
  %.19 = phi i32 [ %i.rf, %bb.cp ], [ %i.rm, %bb.cq ] ; 2 uses
  %i.rh = zext i32 %.19 to i64
  %.val4808 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ri = getelementptr inbounds nuw i8, ptr %.val4808, i64 %i.rh
  %.0.copyload.i4904 = load i8, ptr %i.ri, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4904) #8, !srcloc !34
  %i.rj = sext i8 %.0.copyload.i4904 to i32
  %i.rk = add nsw i32 %i.rj, -48
  %i.rl = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %i.rg, i32 noundef %.214364, i32 noundef 10, i32 noundef %i.rk) ; 2 uses
  %i.rm = add i32 %.19, 1                         ; 2 uses
  %i.rn = add nuw nsw i32 %.204308, 1             ; 2 uses
  %.not4494 = icmp eq i32 %i.rn, %.1643345031
  br i1 %.not4494, label %.loopexit5601, label %bb.cq

.loopexit5601:                                    ; preds = %bb.cq, %bb.co
  %.224365 = phi i32 [ %.204363, %bb.co ], [ %i.rl, %bb.cq ] ; 2 uses
  %.174335 = phi i32 [ 9, %bb.co ], [ %.1643345031, %bb.cq ] ; 2 uses
  %.pn = phi i32 [ %i.rf, %bb.co ], [ %i.rm, %bb.cq ]
  %i.ro = icmp slt i32 %.174335, %.342815034
  br i1 %i.ro, label %.preheader5061, label %..loopexit5062_crit_edge

..loopexit5062_crit_edge:                         ; preds = %.loopexit5601
  %.pre5540 = add i32 %i.b, -2376
  br label %.loopexit5062

.preheader5061:                                   ; preds = %.loopexit5601
  %.4 = add i32 %.pn, %.24173
  %i.rp = add i32 %i.b, -2376                     ; 2 uses
  br label %bb.cr

bb.cr:                                            ; preds = %.preheader5061, %bb.cr
  %.234366 = phi i32 [ %i.ru, %bb.cr ], [ %.224365, %.preheader5061 ]
  %.184336 = phi i32 [ %i.rw, %bb.cr ], [ %.174335, %.preheader5061 ]
  %.20 = phi i32 [ %i.rv, %bb.cr ], [ %.4, %.preheader5061 ] ; 2 uses
  %i.rq = zext i32 %.20 to i64
  %.val4807 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rr = getelementptr inbounds nuw i8, ptr %.val4807, i64 %i.rq
  %.0.copyload.i4905 = load i8, ptr %i.rr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4905) #8, !srcloc !34
  %i.rs = sext i8 %.0.copyload.i4905 to i32
  %i.rt = add nsw i32 %i.rs, -48
  %i.ru = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %i.rp, i32 noundef %.234366, i32 noundef 10, i32 noundef %i.rt) ; 2 uses
  %i.rv = add i32 %.20, 1
  %i.rw = add nuw nsw i32 %.184336, 1             ; 2 uses
  %.not4495 = icmp eq i32 %i.rw, %.342815034
  br i1 %.not4495, label %.loopexit5062, label %bb.cr

.loopexit5062:                                    ; preds = %bb.cr, %..loopexit5062_crit_edge
  %.pre-phi5541 = phi i32 [ %.pre5540, %..loopexit5062_crit_edge ], [ %i.rp, %bb.cr ] ; 18 uses
  %.244367 = phi i32 [ %.224365, %..loopexit5062_crit_edge ], [ %i.ru, %bb.cr ] ; 10 uses
  %i.rx = sub i32 0, %.742725037
  %i.ry = icmp sgt i32 %.742725037, -1            ; 2 uses
  %i.rz = select i1 %i.ry, i32 0, i32 %i.rx       ; 3 uses
  %i.sa = add i32 %.244367, 12
  %.not4496 = icmp ne i32 %.04190, 0              ; 9 uses
  %i.sb = sub i32 %.44220, %.54189                ; 6 uses
  %i.sc = icmp ne i32 %i.sb, %.342815034
  %i.sd = select i1 %i.ry, i32 %.742725037, i32 0 ; 3 uses
  %i.se = add i32 %i.sd, %.04190
  %i.sf = zext i32 %.244367 to i64                ; 3 uses
  %i.sg = add nuw nsw i64 %i.sf, 4                ; 2 uses
  %i.sh = add i32 %i.b, -24                       ; 2 uses
  %i.si = add i32 %i.b, -12
  %i.sj = add i32 %i.b, -16
  %i.sk = icmp slt i32 %i.rz, 1
  %.not4501 = icmp eq i32 %i.sd, 0
  %i.sl = icmp slt i32 %.342815034, %i.sb         ; 5 uses
  %i.sm = add i32 %i.b, -4                        ; 2 uses
  %i.sn = add i32 %i.b, -8                        ; 2 uses
  %i.so = add nuw nsw i64 %i.e, 2364              ; 5 uses
  %invariant.op = or i1 %i.sc, %.not4496
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.loopexit5062
  %.val4702 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sp = getelementptr inbounds nuw i8, ptr %.val4702, i64 %i.sg
  %.0.copyload.i4906 = load i32, ptr %i.sp, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4906) #8, !srcloc !14
  %i.sq = icmp slt i32 %.0.copyload.i4906, 8
  br i1 %i.sq, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %.backedge
  %i.sr = shl i32 %.0.copyload.i4906, 2
  %i.ss = add i32 %i.sr, %i.c
  %i.st = zext i32 %i.ss to i64
  %i.su = add nuw nsw i64 %i.st, 20               ; 2 uses
  %.val4701 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sv = getelementptr inbounds nuw i8, ptr %.val4701, i64 %i.su
  %.0.copyload.i4907 = load i32, ptr %i.sv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4907) #8, !srcloc !14
  %.not4497 = icmp eq i32 %.0.copyload.i4907, 0
  br i1 %.not4497, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sw = zext i32 %.0.copyload.i4907 to i64      ; 2 uses
  %.val4700 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sx = getelementptr inbounds nuw i8, ptr %.val4700, i64 %i.sw
  %.0.copyload.i4908 = load i32, ptr %i.sx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4908) #8, !srcloc !14
  %.val4769 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sy = getelementptr inbounds nuw i8, ptr %.val4769, i64 %i.su
  store i32 %.0.copyload.i4908, ptr %i.sy, align 1
  br label %bb.cz

bb.cu:                                            ; preds = %bb.cs
  %i.sz = and i32 %.0.copyload.i4906, 31          ; 2 uses
  %i.ta = shl nuw i32 1, %i.sz                    ; 2 uses
  %.val4699 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tb = getelementptr inbounds nuw i8, ptr %.val4699, i64 %i.t
  %.0.copyload.i4909 = load i32, ptr %i.tb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4909) #8, !srcloc !14
  %i.tc = shl i32 4, %i.sz
  %i.td = add nuw i32 %i.tc, 27                   ; 3 uses
  %i.te = lshr i32 %i.td, 3
  %.val4698 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tf = getelementptr inbounds nuw i8, ptr %.val4698, i64 %i.f
  %.0.copyload.i4910 = load i32, ptr %i.tf, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4910) #8, !srcloc !14
  %i.tg = sub i32 %.0.copyload.i4910, %i.h
  %i.th = ashr i32 %i.tg, 3
  %i.ti = add nsw i32 %i.th, %i.te
  %i.tj = icmp ult i32 %.0.copyload.i4909, %i.ti
  br i1 %i.tj, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tk = and i32 %i.td, -8
  %i.tl = add i32 %.0.copyload.i4910, %i.tk
  %.val4768 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tm = getelementptr inbounds nuw i8, ptr %.val4768, i64 %i.f
  store i32 %i.tl, ptr %i.tm, align 1
  br label %bb.cy

bb.cw:                                            ; preds = %.backedge
  %i.tn = and i32 %.0.copyload.i4906, 31          ; 2 uses
  %i.to = shl i32 4, %i.tn
  %i.tp = add nuw i32 %i.to, 27
  %i.tq = shl nuw i32 1, %i.tn
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cu, %bb.cw
  %.214309 = phi i32 [ %i.td, %bb.cu ], [ %i.tp, %bb.cw ]
  %.5 = phi i32 [ %i.ta, %bb.cu ], [ %i.tq, %bb.cw ]
  %i.tr = and i32 %.214309, -8
  %i.ts = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef %i.tr) #8
  %.val4767 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tt = getelementptr inbounds nuw i8, ptr %.val4767, i64 %i.e
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 12
  store i32 1, ptr %i.tu, align 1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cv
  %.21 = phi i32 [ %.5, %bb.cx ], [ %i.ta, %bb.cv ]
  %.44236 = phi i32 [ %i.ts, %bb.cx ], [ %.0.copyload.i4910, %bb.cv ] ; 2 uses
  %i.tv = zext i32 %.44236 to i64                 ; 3 uses
  %.val4766 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tw = getelementptr inbounds nuw i8, ptr %.val4766, i64 %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  store i32 %.21, ptr %i.tx, align 1
  %.val4765 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ty = getelementptr inbounds nuw i8, ptr %.val4765, i64 %i.tv
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 4
  store i32 %.0.copyload.i4906, ptr %i.tz, align 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.ct
  %.pre-phi5532 = phi i64 [ %i.tv, %bb.cy ], [ %i.sw, %bb.ct ]
  %.54237 = phi i32 [ %.44236, %bb.cy ], [ %.0.copyload.i4907, %bb.ct ] ; 3 uses
  %.val4793 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ua = getelementptr inbounds nuw i8, ptr %.val4793, i64 %.pre-phi5532
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 12
  store i64 0, ptr %i.ub, align 1
  %i.uc = add i32 %.54237, 12
  %.val4697 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ud = getelementptr inbounds nuw i8, ptr %.val4697, i64 %i.sf
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %.0.copyload.i4911 = load i32, ptr %i.ue, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4911) #8, !srcloc !14
  %i.uf = shl i32 %.0.copyload.i4911, 2
  %i.ug = add i32 %i.uf, 8
  %i.uh = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.uc, i32 noundef %i.sa, i32 noundef %i.ug) #8 ; 0 uses
  %i.ui = tail call i32 @w2c_hermes_d2b(ptr noundef nonnull %0, i32 noundef %.pre-phi5541, i32 noundef %i.sh, i32 noundef %i.si, i32 noundef %i.sj) #8 ; 6 uses
  %.val4696 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.uj = getelementptr inbounds nuw i8, ptr %.val4696, i64 %i.q
  %.0.copyload.i4912 = load i32, ptr %i.uj, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4912) #8, !srcloc !14
  %.not4498 = icmp eq i32 %.0.copyload.i4912, 0
  br i1 %.not4498, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.uk = zext i32 %.0.copyload.i4912 to i64      ; 2 uses
  %.val4695 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ul = getelementptr inbounds nuw i8, ptr %.val4695, i64 %i.uk
  %.0.copyload.i4913 = load i32, ptr %i.ul, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4913) #8, !srcloc !14
  %.val4764 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.um = getelementptr inbounds nuw i8, ptr %.val4764, i64 %i.q
  store i32 %.0.copyload.i4913, ptr %i.um, align 1
  br label %bb.df

bb.db:                                            ; preds = %bb.cz
  %.val4694 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.un = getelementptr inbounds nuw i8, ptr %.val4694, i64 %i.t
  %.0.copyload.i4914 = load i32, ptr %i.un, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4914) #8, !srcloc !14
  %.val4693 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.uo = getelementptr inbounds nuw i8, ptr %.val4693, i64 %i.f
  %.0.copyload.i4915 = load i32, ptr %i.uo, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4915) #8, !srcloc !14
  %i.up = sub i32 %.0.copyload.i4915, %i.h
  %i.uq = ashr i32 %i.up, 3
  %i.ur = add nsw i32 %i.uq, 4
  %.not4499 = icmp ult i32 %.0.copyload.i4914, %i.ur
  br i1 %.not4499, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.us = add i32 %.0.copyload.i4915, 32
  %.val4763 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ut = getelementptr inbounds nuw i8, ptr %.val4763, i64 %i.f
  store i32 %i.us, ptr %i.ut, align 1
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.uu = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef 32) #8
  %.val4762 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.uv = getelementptr inbounds nuw i8, ptr %.val4762, i64 %i.e
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  store i32 1, ptr %i.uw, align 1
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.224310 = phi i32 [ %.0.copyload.i4915, %bb.dc ], [ %i.uu, %bb.dd ] ; 2 uses
  %i.ux = zext i32 %.224310 to i64                ; 2 uses
  %.val4792 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.uy = getelementptr inbounds nuw i8, ptr %.val4792, i64 %i.ux
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 4
  store i64 8589934593, ptr %i.uz, align 1
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.da
  %.pre-phi5533 = phi i64 [ %i.ux, %bb.de ], [ %i.uk, %bb.da ] ; 2 uses
  %.234311 = phi i32 [ %.224310, %bb.de ], [ %.0.copyload.i4912, %bb.da ] ; 2 uses
  %.val4761 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.va = getelementptr inbounds nuw i8, ptr %.val4761, i64 %.pre-phi5533
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 20
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes_g_strtod:bb.a
bb.iq:                                            ; preds = %bb.ip, %bb.io
  %.64284 = phi i32 [ %.0.copyload.i4979, %bb.io ], [ %i.aly, %bb.ip ] ; 2 uses
  %i.amb = zext i32 %.64284 to i64                ; 2 uses
  %.val4787 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.amc = getelementptr inbounds nuw i8, ptr %.val4787, i64 %i.amb
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 4
  store i64 8589934593, ptr %i.amd, align 1
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.im
  %.pre-phi5535 = phi i64 [ %i.amb, %bb.iq ], [ %i.alo, %bb.im ] ; 4 uses
  %.74285 = phi i32 [ %.64284, %bb.iq ], [ %.54283, %bb.im ] ; 3 uses
  %.val4722 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ame = getelementptr inbounds nuw i8, ptr %.val4722, i64 %.pre-phi5535
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 20
  store i32 1, ptr %i.amf, align 1
  %.val4786 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.amg = getelementptr inbounds nuw i8, ptr %.val4786, i64 %.pre-phi5535
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 12
  store i64 4294967296, ptr %i.amh, align 1
  %i.ami = icmp sgt i32 %i.ajo, 1
  br i1 %i.ami, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.amj = add nsw i32 %i.ajo, -1
  %i.amk = tail call i32 @w2c_hermes_pow5mult(ptr noundef nonnull %0, i32 noundef %.pre-phi5541, i32 noundef %.74285, i32 noundef %i.amj) #8 ; 2 uses
  %.pre5536 = zext i32 %i.amk to i64
  br label %bb.iv

bb.it:                                            ; preds = %bb.ir
  %i.aml = icmp eq i32 %i.ajo, 1
  br i1 %i.aml, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.amm = sub i32 1, %i.ajo
  %i.amn = tail call i32 @w2c_hermes_pow5mult(ptr noundef nonnull %0, i32 noundef %.pre-phi5541, i32 noundef %.274370, i32 noundef %i.amm) #8
  br label %bb.iv

bb.iv:                                            ; preds = %bb.it, %bb.iu, %bb.is
  %.pre-phi5537 = phi i64 [ %.pre-phi5535, %bb.it ], [ %.pre-phi5535, %bb.iu ], [ %.pre5536, %bb.is ]
  %.284371 = phi i32 [ %.274370, %bb.it ], [ %i.amn, %bb.iu ], [ %.274370, %bb.is ] ; 2 uses
  %.84286 = phi i32 [ %.74285, %bb.it ], [ %.74285, %bb.iu ], [ %i.amk, %bb.is ] ; 3 uses
  %i.amo = xor i32 %i.alk, -1
  %i.amp = icmp ult i32 %i.alk, 2147483647        ; 2 uses
  %i.amq = select i1 %i.amp, i32 0, i32 %i.amo    ; 2 uses
  %.val4635 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.amr = getelementptr inbounds nuw i8, ptr %.val4635, i64 %.pre-phi5537
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 16
  %.0.copyload.i4980 = load i32, ptr %i.ams, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4980) #8, !srcloc !14
  %i.amt = shl i32 %.0.copyload.i4980, 2
  %i.amu = add i32 %i.amt, %.84286
  %i.amv = zext i32 %i.amu to i64
  %.val4634 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.amw = getelementptr inbounds nuw i8, ptr %.val4634, i64 %i.amv
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 16
  %.0.copyload.i4981 = load i32, ptr %i.amx, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4981) #8, !srcloc !14
  %i.amy = icmp ult i32 %.0.copyload.i4981, 65536 ; 2 uses
  %i.amz = select i1 %i.amy, i32 16, i32 0        ; 2 uses
  %i.ana = or disjoint i32 %i.amz, 8
  %i.anb = shl i32 %.0.copyload.i4981, 16
  %i.anc = select i1 %i.amy, i32 %i.anb, i32 %.0.copyload.i4981 ; 3 uses
  %i.and = icmp ult i32 %i.anc, 16777216          ; 2 uses
  %i.ane = select i1 %i.and, i32 %i.ana, i32 %i.amz ; 2 uses
  %i.anf = or disjoint i32 %i.ane, 4
  %i.ang = shl i32 %i.anc, 8
  %i.anh = select i1 %i.and, i32 %i.ang, i32 %i.anc ; 3 uses
  %i.ani = icmp ult i32 %i.anh, 268435456         ; 2 uses
  %i.anj = select i1 %i.ani, i32 %i.anf, i32 %i.ane ; 2 uses
  %i.ank = or disjoint i32 %i.anj, 2
  %i.anl = shl i32 %i.anh, 4
  %i.anm = select i1 %i.ani, i32 %i.anl, i32 %i.anh ; 3 uses
  %i.ann = icmp ult i32 %i.anm, 1073741824        ; 2 uses
  %i.ano = select i1 %i.ann, i32 %i.ank, i32 %i.anj ; 2 uses
  %i.anp = shl i32 %i.anm, 2
  %i.anq = select i1 %i.ann, i32 %i.anp, i32 %i.anm ; 2 uses
  %i.anr = icmp slt i32 %i.anq, 0
  %.not4558 = icmp ult i32 %i.anq, 1073741824
  %i.ans = add nuw nsw i32 %i.ano, 1
  %spec.select = select i1 %.not4558, i32 1073741824, i32 %i.ans
  %.6 = select i1 %i.anr, i32 %i.ano, i32 %spec.select
  %i.ant = tail call i32 @llvm.smax.i32(i32 %i.amq, i32 0)
  %reass.sub5373 = sub nsw i32 %.6, %i.ant
  %i.anu = add nsw i32 %reass.sub5373, 28
  %i.anv = and i32 %i.anu, 31                     ; 2 uses
  %i.anw = select i1 %i.amp, i32 %i.all, i32 0
  %i.anx = add i32 %i.anv, %i.anw                 ; 2 uses
  %.not4559 = icmp eq i32 %i.anx, 0
  br i1 %.not4559, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.any = tail call i32 @w2c_hermes_lshift(ptr noundef nonnull %0, i32 noundef %.pre-phi5541, i32 noundef %.284371, i32 noundef %i.anx)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %.294372 = phi i32 [ %i.any, %bb.iw ], [ %.284371, %bb.iv ] ; 3 uses
  %i.anz = add i32 %i.anv, %i.amq                 ; 2 uses
  %i.aoa = icmp sgt i32 %i.anz, 0
  br i1 %i.aoa, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.aob = tail call i32 @w2c_hermes_lshift(ptr noundef nonnull %0, i32 noundef %.pre-phi5541, i32 noundef %.84286, i32 noundef %i.anz)
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.94287 = phi i32 [ %i.aob, %bb.iy ], [ %.84286, %bb.ix ] ; 8 uses
  %i.aoc = tail call i32 @w2c_hermes_quorem(ptr noundef nonnull %0, i32 noundef %.294372, i32 noundef %.94287) #8 ; 2 uses
  %.not4560 = icmp eq i32 %i.aoc, 0
  br i1 %.not4560, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.aod = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %.pre-phi5541, i32 noundef %.294372, i32 noundef 10, i32 noundef 0) ; 2 uses
  %i.aoe = tail call i32 @w2c_hermes_quorem(ptr noundef nonnull %0, i32 noundef %i.aod, i32 noundef %.94287) #8
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %.304373 = phi i32 [ %i.aod, %bb.ja ], [ %.294372, %bb.iz ] ; 2 uses
  %.26 = phi i32 [ %i.aoe, %bb.ja ], [ %i.aoc, %bb.iz ] ; 2 uses
  %i.aof = icmp sgt i32 %i.lu, 0
  br i1 %i.aof, label %.preheader5054.preheader, label %.loopexit5056

.preheader5054.preheader:                         ; preds = %bb.jb
  %i.aog = zext nneg i32 %i.lu to i64
  br label %.preheader5054

.preheader5054:                                   ; preds = %.preheader5054.preheader, %bb.jf
  %indvars.iv5526 = phi i64 [ 0, %.preheader5054.preheader ], [ %indvars.iv.next5527, %bb.jf ] ; 2 uses
  %.31 = phi i32 [ %.304373, %.preheader5054.preheader ], [ %i.aow, %bb.jf ] ; 4 uses
  %.27 = phi i32 [ %.26, %.preheader5054.preheader ], [ %i.aox, %bb.jf ]
  %i.aoh = trunc nuw nsw i64 %indvars.iv5526 to i32
  %i.aoi = add i32 %.24205, %i.aoh
  %i.aoj = zext i32 %i.aoi to i64
  %.val4806 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aok = getelementptr inbounds nuw i8, ptr %.val4806, i64 %i.aoj
  %.0.copyload.i4982 = load i8, ptr %i.aok, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4982) #8, !srcloc !34
  %i.aol = sext i8 %.0.copyload.i4982 to i32
  %i.aom = sub i32 %i.aol, %.27
  %i.aon = add i32 %i.aom, -48                    ; 2 uses
  %.not4561 = icmp eq i32 %i.aon, 0
  br i1 %.not4561, label %bb.jc, label %.loopexit

bb.jc:                                            ; preds = %.preheader5054
  %indvars.iv.next5527 = add nuw nsw i64 %indvars.iv5526, 1 ; 3 uses
  %i.aoo = zext i32 %.31 to i64                   ; 3 uses
  %.val4633 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aop = getelementptr inbounds nuw i8, ptr %.val4633, i64 %i.aoo
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 20
  %.0.copyload.i4983 = load i32, ptr %i.aoq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4983) #8, !srcloc !14
  %.not4562 = icmp eq i32 %.0.copyload.i4983, 0
  br i1 %.not4562, label %bb.jd, label %bb.jf

bb.jd:                                            ; preds = %bb.jc
  %.val4632 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aor = getelementptr inbounds nuw i8, ptr %.val4632, i64 %i.aoo
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 16
  %.0.copyload.i4984 = load i32, ptr %i.aos, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4984) #8, !srcloc !14
  %.not4563 = icmp eq i32 %.0.copyload.i4984, 1
  br i1 %.not4563, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.aot = trunc nuw nsw i64 %indvars.iv.next5527 to i32
  %i.aou = icmp sgt i32 %i.sb, %i.aot
  %i.aov = zext i1 %i.aou to i32
  br label %bb.jn

bb.jf:                                            ; preds = %bb.jd, %bb.jc
  %i.aow = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %.pre-phi5541, i32 noundef %.31, i32 noundef 10, i32 noundef 0) ; 3 uses
  %i.aox = tail call i32 @w2c_hermes_quorem(ptr noundef nonnull %0, i32 noundef %i.aow, i32 noundef %.94287) #8 ; 2 uses
  %.not4564 = icmp eq i64 %indvars.iv.next5527, %i.aog
  br i1 %.not4564, label %.loopexit5056, label %.preheader5054

.loopexit5056:                                    ; preds = %bb.jf, %bb.jb
  %.32 = phi i32 [ %.304373, %bb.jb ], [ %i.aow, %bb.jf ] ; 2 uses
  %.234341 = phi i32 [ 0, %bb.jb ], [ %i.lu, %bb.jf ] ; 2 uses
  %.28 = phi i32 [ %.26, %bb.jb ], [ %i.aox, %bb.jf ] ; 2 uses
  %i.aoy = icmp slt i32 %.234341, %i.sb
  br i1 %i.aoy, label %.preheader, label %.loopexit5053

.preheader:                                       ; preds = %.loopexit5056, %bb.jj
  %.33 = phi i32 [ %i.apo, %bb.jj ], [ %.32, %.loopexit5056 ] ; 4 uses
  %.244342 = phi i32 [ %i.apf, %bb.jj ], [ %.234341, %.loopexit5056 ]
  %.29 = phi i32 [ %i.app, %bb.jj ], [ %.28, %.loopexit5056 ]
  %.34170 = phi i32 [ %i.apn, %bb.jj ], [ %.24169, %.loopexit5056 ] ; 2 uses
  %i.aoz = add i32 %.34170, %.24205
  %i.apa = zext i32 %i.aoz to i64
  %.val4805 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.apb = getelementptr inbounds nuw i8, ptr %.val4805, i64 %i.apa
  %.0.copyload.i4985 = load i8, ptr %i.apb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4985) #8, !srcloc !34
  %i.apc = sext i8 %.0.copyload.i4985 to i32
  %i.apd = sub i32 %i.apc, %.29
  %i.ape = add i32 %i.apd, -48                    ; 2 uses
  %.not4565 = icmp eq i32 %i.ape, 0
  br i1 %.not4565, label %bb.jg, label %.loopexit

bb.jg:                                            ; preds = %.preheader
  %i.apf = add nuw nsw i32 %.244342, 1            ; 3 uses
  %i.apg = zext i32 %.33 to i64                   ; 3 uses
  %.val4631 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aph = getelementptr inbounds nuw i8, ptr %.val4631, i64 %i.apg
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 20
  %.0.copyload.i4986 = load i32, ptr %i.api, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4986) #8, !srcloc !14
  %.not4566 = icmp eq i32 %.0.copyload.i4986, 0
  br i1 %.not4566, label %bb.jh, label %bb.jj

bb.jh:                                            ; preds = %bb.jg
  %.val4630 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.apj = getelementptr inbounds nuw i8, ptr %.val4630, i64 %i.apg
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 16
  %.0.copyload.i4987 = load i32, ptr %i.apk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4987) #8, !srcloc !14
  %.not4567 = icmp eq i32 %.0.copyload.i4987, 1
  br i1 %.not4567, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.apl = icmp slt i32 %i.apf, %i.sb
  %i.apm = zext i1 %i.apl to i32
  br label %bb.jn

bb.jj:                                            ; preds = %bb.jh, %bb.jg
  %i.apn = add i32 %.34170, 1
  %i.apo = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %.pre-phi5541, i32 noundef %.33, i32 noundef 10, i32 noundef 0) ; 3 uses
  %i.app = tail call i32 @w2c_hermes_quorem(ptr noundef nonnull %0, i32 noundef %i.apo, i32 noundef %.94287) #8 ; 2 uses
  %.not4568 = icmp eq i32 %i.apf, %i.sb
  br i1 %.not4568, label %.loopexit5053, label %.preheader

.loopexit5053:                                    ; preds = %bb.jj, %.loopexit5056
  %.34 = phi i32 [ %.32, %.loopexit5056 ], [ %i.apo, %bb.jj ] ; 4 uses
  %.30 = phi i32 [ %.28, %.loopexit5056 ], [ %i.app, %bb.jj ]
  %i.apq = icmp sgt i32 %.30, 0
  br i1 %i.apq, label %.loopexit, label %bb.jk

bb.jk:                                            ; preds = %.loopexit5053
  %i.apr = zext i32 %.34 to i64                   ; 4 uses
  %.val4629 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aps = getelementptr inbounds nuw i8, ptr %.val4629, i64 %i.apr
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 20
  %.0.copyload.i4988 = load i32, ptr %i.apt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4988) #8, !srcloc !14
  %.not4569 = icmp eq i32 %.0.copyload.i4988, 0
  br i1 %.not4569, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %.val4628 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.apu = getelementptr inbounds nuw i8, ptr %.val4628, i64 %i.apr
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 16
  %.0.copyload.i4989 = load i32, ptr %i.apv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4989) #8, !srcloc !14
  %i.apw = icmp slt i32 %.0.copyload.i4989, 2
  br i1 %i.apw, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  br label %bb.jn

.loopexit:                                        ; preds = %.preheader5054, %.preheader, %.loopexit5053
  %.35 = phi i32 [ %.33, %.preheader ], [ %.34, %.loopexit5053 ], [ %.31, %.preheader5054 ] ; 3 uses
  %.24213 = phi i32 [ %i.ape, %.preheader ], [ -1, %.loopexit5053 ], [ %i.aon, %.preheader5054 ] ; 2 uses
  %.not4570 = icmp eq i32 %.35, 0
  br i1 %.not4570, label %bb.jq, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre5542 = zext i32 %.35 to i64
  br label %bb.jn

bb.jn:                                            ; preds = %.loopexit._crit_edge, %bb.jl, %bb.jm, %bb.ji, %bb.je
  %.pre-phi5543 = phi i64 [ %.pre5542, %.loopexit._crit_edge ], [ %i.apr, %bb.jl ], [ %i.apr, %bb.jm ], [ %i.apg, %bb.ji ], [ %i.aoo, %bb.je ] ; 2 uses
  %.36 = phi i32 [ %.35, %.loopexit._crit_edge ], [ %.34, %bb.jl ], [ %.34, %bb.jm ], [ %.33, %bb.ji ], [ %.31, %bb.je ] ; 2 uses
  %.34214 = phi i32 [ %.24213, %.loopexit._crit_edge ], [ 0, %bb.jl ], [ -1, %bb.jm ], [ %i.apm, %bb.ji ], [ %i.aov, %bb.je ] ; 2 uses
  %.val4627 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.apx = getelementptr inbounds nuw i8, ptr %.val4627, i64 %.pre-phi5543
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 4
  %.0.copyload.i4990 = load i32, ptr %i.apy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4990) #8, !srcloc !14
  %i.apz = icmp sgt i32 %.0.copyload.i4990, 7
  br i1 %i.apz, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.36) #8
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jn
  %i.aqa = shl i32 %.0.copyload.i4990, 2
  %i.aqb = add i32 %i.aqa, %i.c
  %i.aqc = zext i32 %i.aqb to i64
  %i.aqd = add nuw nsw i64 %i.aqc, 20             ; 2 uses
  %.val4626 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqe = getelementptr inbounds nuw i8, ptr %.val4626, i64 %i.aqd
  %.0.copyload.i4991 = load i32, ptr %i.aqe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4991) #8, !srcloc !14
  %.val4721 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqf = getelementptr inbounds nuw i8, ptr %.val4721, i64 %.pre-phi5543
  store i32 %.0.copyload.i4991, ptr %i.aqf, align 1
  %.val4720 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqg = getelementptr inbounds nuw i8, ptr %.val4720, i64 %i.aqd
  store i32 %.36, ptr %i.aqg, align 1
  br label %bb.jq

bb.jq:                                            ; preds = %.loopexit, %bb.jp, %bb.jo
  %.44215 = phi i32 [ %.24213, %.loopexit ], [ %.34214, %bb.jo ], [ %.34214, %bb.jp ] ; 3 uses
  %.not4571 = icmp eq i32 %.94287, 0
  br i1 %.not4571, label %bb.ju, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aqh = zext i32 %.94287 to i64                ; 2 uses
  %.val4625 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqi = getelementptr inbounds nuw i8, ptr %.val4625, i64 %i.aqh
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 4
  %.0.copyload.i4992 = load i32, ptr %i.aqj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4992) #8, !srcloc !14
  %i.aqk = icmp sgt i32 %.0.copyload.i4992, 7
  br i1 %i.aqk, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.94287) #8
  br label %bb.ju

bb.jt:                                            ; preds = %bb.jr
  %i.aql = shl i32 %.0.copyload.i4992, 2
  %i.aqm = add i32 %i.aql, %i.c
  %i.aqn = zext i32 %i.aqm to i64
  %i.aqo = add nuw nsw i64 %i.aqn, 20             ; 2 uses
  %.val4624 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqp = getelementptr inbounds nuw i8, ptr %.val4624, i64 %i.aqo
  %.0.copyload.i4993 = load i32, ptr %i.aqp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4993) #8, !srcloc !14
  %.val4719 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqq = getelementptr inbounds nuw i8, ptr %.val4719, i64 %i.aqh
  store i32 %.0.copyload.i4993, ptr %i.aqq, align 1
  %.val4718 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqr = getelementptr inbounds nuw i8, ptr %.val4718, i64 %i.aqo
  store i32 %.94287, ptr %i.aqr, align 1
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jq, %bb.jt, %bb.js
  br i1 %i.ajq, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.aqs = icmp sgt i32 %.44215, 0
  br i1 %i.aqs, label %bb.kq, label %.sink.split

bb.jw:                                            ; preds = %bb.ju
  %i.aqt = icmp slt i32 %.44215, 0
  br i1 %i.aqt, label %bb.jx, label %bb.jz

bb.jx:                                            ; preds = %bb.jw
  br i1 %.44247, label %bb.jy, label %bb.kq

bb.jy:                                            ; preds = %bb.jx
  %.val4623 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqu = getelementptr inbounds nuw i8, ptr %.val4623, i64 %i.e
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 2364
  %.0.copyload.i4994 = load i32, ptr %i.aqv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4994) #8, !srcloc !14
  br label %bb.km

bb.jz:                                            ; preds = %bb.jw
  %.not4572 = icmp eq i32 %.44215, 0
  br i1 %.not4572, label %bb.kc, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  br i1 %.44247, label %bb.kq, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %.val4622 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqw = getelementptr inbounds nuw i8, ptr %.val4622, i64 %i.e
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 2364
  %.0.copyload.i4995 = load i32, ptr %i.aqx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4995) #8, !srcloc !14
  br label %bb.ki

bb.kc:                                            ; preds = %bb.jz
  %.val4621 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqy = getelementptr inbounds nuw i8, ptr %.val4621, i64 %i.e
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 2364
  %.0.copyload.i4996 = load i32, ptr %i.aqz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4996) #8, !srcloc !14
  %i.ara = lshr i32 %.0.copyload.i4996, 20
  %i.arb = and i32 %i.ara, 2047
  %i.arc = sub nsw i32 %i.arb, %.04190            ; 4 uses
  %i.ard = icmp slt i32 %i.arc, 1
  br i1 %i.ard, label %bb.kd, label %bb.kg

bb.kd:                                            ; preds = %bb.kc
  %i.are = icmp sgt i32 %i.arc, -31
  br i1 %i.are, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %.val4620 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.arf = getelementptr inbounds nuw i8, ptr %.val4620, i64 %i.w
  %.0.copyload.i4997 = load i32, ptr %i.arf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4997) #8, !srcloc !14
  %i.arg = sub nsw i32 1, %i.arc
  %i.arh = shl nuw i32 1, %i.arg
  %i.ari = and i32 %.0.copyload.i4997, %i.arh
  %.not4575 = icmp eq i32 %i.ari, 0
  br i1 %.not4575, label %bb.kq, label %bb.kh
end_hunk_2
begin_hunk_3_@w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcMultiplyPart0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x2C0x20bool0x29:bb.a
  %.val552 = load ptr, ptr %i.bj, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %.val552, i64 %i.bo
  %.0.copyload.i = load i64, ptr %i.bp, align 1   ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !33
  %i.bq = add i64 %.0.copyload.i, %.0489
  %.val535 = load ptr, ptr %i.bj, align 8, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %.val535, i64 %i.bo
  store i64 %i.bq, ptr %i.br, align 1
  %i.bs = add i32 %i.bk, %i.bm
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %.val551 = load ptr, ptr %i.bj, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %.val551, i64 %i.bt
  %.0.copyload.i553 = load i64, ptr %i.bu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i553) #8, !srcloc !33
  %i.bv = xor i64 %.0489, -1
  %i.bw = icmp ugt i64 %.0.copyload.i, %i.bv
  %i.bx = zext i1 %i.bw to i64                    ; 2 uses
  %i.by = add i64 %.0.copyload.i553, %i.bx
  %.val534 = load ptr, ptr %i.bj, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %.val534, i64 %i.bt
  store i64 %i.by, ptr %i.bz, align 1
  %i.ca = xor i64 %i.bx, -1
  %i.cb = icmp ugt i64 %.0.copyload.i553, %i.ca
  %i.cc = zext i1 %i.cb to i64                    ; 3 uses
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv584, 2 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next585 to i32
  %.not522 = icmp eq i32 %i.bi, %indvars
  br i1 %.not522, label %bb.k, label %bb.j

bb.k:                                             ; preds = %bb.j
  %.not523 = icmp eq i32 %i.c, 0
  br i1 %.not523, label %.loopexit566, label %.thread

.thread:                                          ; preds = %bb.d, %bb.k
  %.1490563 = phi i64 [ %i.cc, %bb.k ], [ 0, %bb.d ] ; 2 uses
  %.2494562 = phi i32 [ %i.bi, %bb.k ], [ 0, %bb.d ]
  %i.cd = shl i32 %.2494562, 3
  %i.ce = add i32 %i.cd, %1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cg = zext i32 %i.ce to i64                   ; 2 uses
  %.val550 = load ptr, ptr %i.cf, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %.val550, i64 %i.cg
  %.0.copyload.i554 = load i64, ptr %i.ch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i554) #8, !srcloc !33
  %i.ci = add i64 %.0.copyload.i554, %.1490563
  %.val533 = load ptr, ptr %i.cf, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %.val533, i64 %i.cg
  store i64 %i.ci, ptr %i.cj, align 1
  %i.ck = xor i64 %.1490563, -1
  %i.cl = icmp ugt i64 %.0.copyload.i554, %i.ck
  %i.cm = zext i1 %i.cl to i64
  br label %.loopexit566

bb.l:                                             ; preds = %bb.b
  %i.cn = lshr i64 %3, 32                         ; 4 uses
  %i.co = and i64 %3, 4294967295                  ; 4 uses
  %.not512 = icmp eq i32 %6, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.cq = zext i32 %i.b to i64                    ; 2 uses
  br i1 %.not512, label %.preheader568, label %.preheader570

.preheader570:                                    ; preds = %bb.l, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.2 = phi i64 [ %i.ec, %bb.n ], [ 0, %bb.l ]    ; 2 uses
  %i.cr = trunc nuw i64 %indvars.iv to i32
  %i.cs = shl i32 %i.cr, 3                        ; 2 uses
  %i.ct = add i32 %i.cs, %2
  %i.cu = zext i32 %i.ct to i64
  %.val549 = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %.val549, i64 %i.cu
  %.0.copyload.i555 = load i64, ptr %i.cv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i555) #8, !srcloc !33
  %.not515 = icmp eq i64 %.0.copyload.i555, 0
  br i1 %.not515, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader570
  %i.cw = lshr i64 %.0.copyload.i555, 32          ; 2 uses
  %i.cx = mul nuw i64 %i.cw, %i.cn
  %i.cy = and i64 %.0.copyload.i555, 4294967295   ; 2 uses
  %i.cz = mul nuw i64 %i.cy, %i.cn                ; 2 uses
  %i.da = lshr i64 %i.cz, 32
  %i.db = add nuw i64 %i.da, %i.cx
  %i.dc = mul nuw i64 %i.cw, %i.co                ; 2 uses
  %i.dd = lshr i64 %i.dc, 32
  %i.de = add nuw i64 %i.db, %i.dd
  %i.df = shl i64 %i.cz, 32                       ; 2 uses
  %i.dg = mul nuw i64 %i.cy, %i.co
  %i.dh = add i64 %i.df, %i.dg                    ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.df
  %i.dj = zext i1 %i.di to i64
  %i.dk = add nuw i64 %i.de, %i.dj
  %i.dl = shl i64 %i.dc, 32
  %i.dm = add i64 %i.dh, %i.dl                    ; 3 uses
  %i.dn = icmp ugt i64 %i.dh, %i.dm
  %i.do = zext i1 %i.dn to i64
  %i.dp = add nuw i64 %i.dk, %i.do
  %i.dq = add i64 %i.dm, %.2                      ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dm
  %i.ds = zext i1 %i.dr to i64
  %i.dt = add i64 %i.dp, %i.ds
  br label %bb.n

bb.n:                                             ; preds = %.preheader570, %bb.m
  %.3 = phi i64 [ %i.dq, %bb.m ], [ %.2, %.preheader570 ] ; 2 uses
  %.0 = phi i64 [ %i.dt, %bb.m ], [ 0, %.preheader570 ]
  %i.du = add i32 %i.cs, %1
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %.val548 = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %.val548, i64 %i.dv
  %.0.copyload.i556 = load i64, ptr %i.dw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i556) #8, !srcloc !33
  %i.dx = add i64 %.0.copyload.i556, %.3
  %.val532 = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %.val532, i64 %i.dv
  store i64 %i.dx, ptr %i.dy, align 1
  %i.dz = xor i64 %.3, -1
  %i.ea = icmp ugt i64 %.0.copyload.i556, %i.dz
  %i.eb = zext i1 %i.ea to i64
  %i.ec = add i64 %.0, %i.eb                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not516 = icmp eq i64 %indvars.iv.next, %i.cq
  br i1 %.not516, label %.loopexit566, label %.preheader570

.preheader568:                                    ; preds = %bb.l, %bb.p
  %indvars.iv581 = phi i64 [ %indvars.iv.next582, %bb.p ], [ 0, %bb.l ] ; 2 uses
  %.4 = phi i64 [ %.1, %bb.p ], [ 0, %bb.l ]      ; 2 uses
  %i.ed = trunc nuw i64 %indvars.iv581 to i32
  %i.ee = shl i32 %i.ed, 3                        ; 2 uses
  %i.ef = add i32 %i.ee, %2
  %i.eg = zext i32 %i.ef to i64
  %.val547 = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.eh = getelementptr inbounds nuw i8, ptr %.val547, i64 %i.eg
  %.0.copyload.i557 = load i64, ptr %i.eh, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i557) #8, !srcloc !33
  %.not513 = icmp eq i64 %.0.copyload.i557, 0
  br i1 %.not513, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader568
  %i.ei = lshr i64 %.0.copyload.i557, 32          ; 2 uses
  %i.ej = mul nuw i64 %i.ei, %i.cn
  %i.ek = and i64 %.0.copyload.i557, 4294967295   ; 2 uses
  %i.el = mul nuw i64 %i.ek, %i.cn                ; 2 uses
  %i.em = lshr i64 %i.el, 32
  %i.en = add nuw i64 %i.em, %i.ej
  %i.eo = mul nuw i64 %i.ei, %i.co                ; 2 uses
  %i.ep = lshr i64 %i.eo, 32
  %i.eq = add nuw i64 %i.en, %i.ep
  %i.er = shl i64 %i.el, 32                       ; 2 uses
  %i.es = mul nuw i64 %i.ek, %i.co
  %i.et = add i64 %i.er, %i.es                    ; 3 uses
  %i.eu = icmp ult i64 %i.et, %i.er
  %i.ev = zext i1 %i.eu to i64
  %i.ew = add nuw i64 %i.eq, %i.ev
  %i.ex = shl i64 %i.eo, 32
  %i.ey = add i64 %i.et, %i.ex                    ; 3 uses
  %i.ez = icmp ugt i64 %i.et, %i.ey
  %i.fa = zext i1 %i.ez to i64
  %i.fb = add nuw i64 %i.ew, %i.fa
  %i.fc = add i64 %i.ey, %.4                      ; 2 uses
  %i.fd = icmp ugt i64 %i.ey, %i.fc
  %i.fe = zext i1 %i.fd to i64
  %i.ff = add i64 %i.fb, %i.fe
  br label %bb.p

bb.p:                                             ; preds = %.preheader568, %bb.o
  %.0491 = phi i64 [ %i.fc, %bb.o ], [ %.4, %.preheader568 ]
  %.1 = phi i64 [ %i.ff, %bb.o ], [ 0, %.preheader568 ] ; 2 uses
  %i.fg = add i32 %i.ee, %1
  %i.fh = zext i32 %i.fg to i64
  %.val531 = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %.val531, i64 %i.fh
  store i64 %.0491, ptr %i.fi, align 1
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %.not514 = icmp eq i64 %indvars.iv.next582, %i.cq
  br i1 %.not514, label %.loopexit566, label %.preheader568

.loopexit566:                                     ; preds = %bb.n, %bb.p, %.preheader565, %.preheader565.1, %.preheader565.2, %.preheader565.3, %.preheader565.4, %.preheader565.5, %.preheader565.6, %bb.k, %.loopexit567, %bb.e, %bb.a, %.thread
  %.5 = phi i64 [ 0, %bb.a ], [ %i.cc, %bb.k ], [ %i.cm, %.thread ], [ 0, %bb.e ], [ 0, %.loopexit567 ], [ %.1, %bb.p ], [ 0, %.preheader565 ], [ 0, %.preheader565.6 ], [ 0, %.preheader565.5 ], [ 0, %.preheader565.4 ], [ 0, %.preheader565.3 ], [ 0, %.preheader565.2 ], [ 0, %.preheader565.1 ], [ %i.ec, %bb.n ] ; 2 uses
  br i1 %i.a, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit566
  %i.fj = shl i32 %4, 3
  %i.fk = add i32 %i.fj, %1
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fm = zext i32 %i.fk to i64
  %.val = load ptr, ptr %i.fl, align 8, !tbaa !12
  %i.fn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fm
  store i64 %.5, ptr %i.fn, align 1
  br label %.loopexit

bb.r:                                             ; preds = %.loopexit566
  %.not524 = icmp eq i64 %.5, 0
  %.not525 = icmp ne i64 %3, 0
  %or.cond.not564 = and i1 %.not525, %.not524
  %.not526 = icmp ugt i32 %4, %5
  %or.cond529 = and i1 %.not526, %or.cond.not564
  br i1 %or.cond529, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.r
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = zext i32 %5 to i64
  %8 = zext i32 %4 to i64
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %bb.s
  %indvars.iv597 = phi i64 [ %7, %.preheader ], [ %indvars.iv.next598, %bb.s ] ; 2 uses
  %9 = trunc nuw i64 %indvars.iv597 to i32
  %i.fp = shl i32 %9, 3
  %i.fq = add i32 %i.fp, %2
  %i.fr = zext i32 %i.fq to i64
  %.val546 = load ptr, ptr %i.fo, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.val546, i64 %i.fr
  %.0.copyload.i558 = load i64, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i558) #8, !srcloc !33
  %.not527 = icmp ne i64 %.0.copyload.i558, 0
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1 ; 2 uses
  %.not528 = icmp eq i64 %indvars.iv.next598, %8
  %or.cond530 = or i1 %.not528, %.not527
  br i1 %or.cond530, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %bb.s, %bb.r, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoPropertyDescriptor0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 29 uses
  %i.c = add i32 %i.b, -144                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 128 uses
  %i.e = zext i32 %2 to i64
  %i.f = add nuw nsw i64 %i.e, 4                  ; 3 uses
  %.val1077 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %.val1077, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = zext i32 %.0.copyload.i to i64           ; 4 uses
  %i.i = add nuw nsw i64 %i.h, 172                ; 2 uses
  %.val1076 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val1076, i64 %i.i
  %.0.copyload.i1179 = load i32, ptr %i.j, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1179) #8, !srcloc !14
  %i.k = add nuw nsw i64 %i.h, 164                ; 2 uses
  %.val1075 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %.val1075, i64 %i.k
  %.0.copyload.i1180 = load i32, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1180) #8, !srcloc !14
  %i.m = zext i32 %1 to i64
  %.val1143 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.val1143, i64 %i.m
  %.0.copyload.i1181 = load i64, ptr %i.n, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1181) #8, !srcloc !33
  %i.o = icmp ugt i64 %.0.copyload.i1181, -844424930131969
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = and i64 %.0.copyload.i1181, 4294967295
  %.val1074 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.val1074, i64 %i.p
  %.0.copyload.i1182 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1182) #8, !srcloc !14
  %i.r = add i32 %.0.copyload.i1182, -1291845632
  %i.s = icmp ult i32 %i.r, -855638016
  %i.t = select i1 %i.s, i32 70384, i32 %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.01017 = phi i32 [ %i.t, %bb.b ], [ 70384, %bb.a ] ; 19 uses
  %i.u = zext i32 %.01017 to i64
  %.val1142 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val1142, i64 %i.u
  %.0.copyload.i1183 = load i64, ptr %i.v, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1183) #8, !srcloc !33
  %i.w = icmp ult i64 %.0.copyload.i1183, -844424930131968
  %i.x = and i64 %.0.copyload.i1183, 4294967295
  %i.y = icmp eq i64 %i.x, 0
  %.not1028 = or i1 %i.w, %i.y
  %i.z = zext i32 %i.c to i64                     ; 47 uses
  %.val1115 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1115, i64 %i.z ; 2 uses
  br i1 %.not1028, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  store i32 0, ptr %i.ab, align 1
  %.val1132 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1132, i64 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store i64 257698037761, ptr %i.ad, align 1
  %.val1114 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1114, i64 %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store i32 3, ptr %i.af, align 1
  %.val1113 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1113, i64 %i.z
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  store i32 31162, ptr %i.ah, align 1
  %i.ai = add i32 %i.b, -40
  %i.aj = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ai) #8
  br label %bb.bp

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i64 -4294967296, ptr %i.ak, align 1
  %.val1161 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %.val1161, i64 %i.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 78
  store i16 1, ptr %i.am, align 1
  %i.an = add nuw nsw i64 %i.z, 104               ; 16 uses
  %.val1160 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1160, i64 %i.an
  store i16 1, ptr %i.ao, align 1
  %i.ap = add i32 %i.b, -66
  %i.aq = add i32 %i.b, -48                       ; 6 uses
  %i.ar = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedDescriptorUnsafe0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3ANamedPropertyDescriptor0x260x29(ptr noundef nonnull %0, i32 noundef %.01017, i32 noundef %2, i32 noundef 63, i32 noundef %i.ap, i32 noundef %i.aq) #8
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1112 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %.val1112, i64 %i.z
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  store i32 1, ptr %i.at, align 1
  %i.au = add nuw nsw i64 %i.z, 80                ; 3 uses
  %.val1111 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %.val1111, i64 %i.au
  store i32 1, ptr %i.av, align 1
  %i.aw = add i32 %i.b, -40
  %i.ax = add i32 %i.b, -72
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyCacheEntry0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.aw, i32 noundef %.01017, i32 noundef %2, i32 noundef 63, i32 noundef %.01017, i32 noundef %i.ax, i32 noundef 0) #8
  %.val1073 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1073, i64 %i.an
  %.0.copyload.i1184 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1184) #8, !srcloc !14
  %.not1029 = icmp eq i32 %.0.copyload.i1184, 0
  br i1 %.not1029, label %bb.bp, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1141 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.val1141, i64 %i.z
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %.0.copyload.i1185 = load i64, ptr %i.ba, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1185) #8, !srcloc !33
  %i.bb = ashr i64 %.0.copyload.i1185, 47
  %i.bc = trunc nsw i64 %i.bb to i32
  switch i32 %i.bc, label %bb.l [
    i32 -12, label %bb.n
    i32 -11, label %bb.n
    i32 -10, label %bb.h
    i32 -9, label %bb.i
    i32 -1, label %bb.i
    i32 -2, label %bb.i
    i32 -6, label %bb.k
    i32 -5, label %bb.k
    i32 -4, label %bb.j
    i32 -3, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.bd = trunc i64 %.0.copyload.i1185 to i16
  %i.be = and i16 %i.bd, 1
  br label %bb.n

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g
  br label %bb.n

bb.j:                                             ; preds = %bb.g, %bb.g
  %i.bf = trunc i64 %.0.copyload.i1185 to i32
  %i.bg = add i32 %i.bf, 8
  %.val1110 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1110, i64 %i.au
  store i32 %i.bg, ptr %i.bh, align 1
  %i.bi = and i64 %.0.copyload.i1185, 4294967295
  %.val1072 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1072, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %.0.copyload.i1186 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1186) #8, !srcloc !14
  %.val1109 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1109, i64 %i.z
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 84
  store i32 %.0.copyload.i1186, ptr %i.bm, align 1
  %.val1140 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1140, i64 %i.au
  %.0.copyload.i1187 = load i64, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1187) #8, !srcloc !33
  %.val1130 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1130, i64 %i.z
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store i64 %.0.copyload.i1187, ptr %i.bp, align 1
  %i.bq = add i32 %i.b, -80
  %i.br = tail call i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Acompare0x28hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bq, i64 noundef 0) #8
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i16
  br label %bb.n

bb.k:                                             ; preds = %bb.g, %bb.g
  %i.bu = and i64 %.0.copyload.i1185, 4294967295
  %.val1071 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1071, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.0.copyload.i1188 = load i32, ptr %i.bw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1188) #8, !srcloc !14
  %i.bx = and i32 %.0.copyload.i1188, 2147483647
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i16
  br label %bb.n

bb.l:                                             ; preds = %bb.g
  %i.ca = bitcast i64 %.0.copyload.i1185 to double ; 2 uses
  %i.cb = fcmp oeq double %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = fcmp ord double %i.ca, 0.000000e+00
end_hunk_3
