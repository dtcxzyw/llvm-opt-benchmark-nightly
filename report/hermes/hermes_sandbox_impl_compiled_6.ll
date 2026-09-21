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
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.0179 = phi i32 [ %3, %bb.g ], [ %4, %bb.i ]   ; 3 uses
  %i.bm = add i32 %.0179, %.0.copyload.i216
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
  %4 = add i32 %.0179, 1                          ; 2 uses
  %.not189 = icmp eq i32 %4, %.0.copyload.i215
  br i1 %.not189, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.f
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.i ], [ %.0179, %bb.h ]
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
begin_hunk_1_@w2c_hermes_llvh0x3A0x3ABumpPtrAllocatorImpl0x3Cllvh0x3A0x3AMallocAllocator0x2C0x204096ul0x2C0x204096ul0x3E0x3A0x3AAllocate0x28unsigned0x20long0x2C0x20unsigned0x20long0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i252) #8, !srcloc !14
  %i.bl = add i32 %.0.copyload.i252, 1
  %.val231 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %.val231, i64 %i.an
  store i32 %i.bl, ptr %i.bm, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.am, %bb.h ], [ %i.bh, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden double @w2c_hermes_hermes_g_strtod(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 13 uses
  %i.c = add i32 %i.b, -2384                      ; 21 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 265 uses
  %i.e = zext i32 %i.c to i64                     ; 33 uses
  %i.f = add nuw nsw i64 %i.e, 16                 ; 11 uses
  %.val4804 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %.val4804, i64 %i.f
  store i64 0, ptr %i.g, align 1
  %i.h = add i32 %i.b, -2328                      ; 7 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %.val4803 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val4803, i64 %i.i
  store i64 0, ptr %i.j, align 1
  %.val4802 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %.val4802, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 0, ptr %i.l, align 1
  %.val4801 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %.val4801, i64 %i.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 0, ptr %i.n, align 1
  %.val4800 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %.val4800, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 0, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 24                 ; 7 uses
  %.val4799 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val4799, i64 %i.q
  store i64 0, ptr %i.r, align 1
  %.val4784 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %.val4784, i64 %i.f
  store i32 %i.h, ptr %i.s, align 1
  %i.t = add nuw nsw i64 %i.e, 8                  ; 6 uses
  %.val4798 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.val4798, i64 %i.t
  store i64 0, ptr %i.u, align 1
  %.val4783 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val4783, i64 %i.t
  store i32 288, ptr %i.v, align 1
  %i.w = add nuw nsw i64 %i.e, 2360               ; 47 uses
  %.val4797 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.val4797, i64 %i.w
  store i64 0, ptr %i.x, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.04343 = phi i32 [ %1, %bb.a ], [ %i.am, %bb.e ] ; 4 uses
  %i.y = zext i32 %.04343 to i64                  ; 2 uses
  %.val4825 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %.val4825, i64 %i.y
  %.0.copyload.i = load i8, ptr %i.z, align 1     ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #8, !srcloc !34
  %i.aa = sext i8 %.0.copyload.i to i32           ; 2 uses
  %i.ab = add nsw i32 %i.aa, -9
  %i.ac = icmp ult i32 %i.ab, 5
  br i1 %i.ac, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %.0.copyload.i, label %.loopexit5086 [
    i8 32, label %bb.e
    i8 0, label %.loopexit5085
    i8 45, label %.loopexit5088
    i8 43, label %.loopexit5088.loopexit
  ]

.loopexit5088.loopexit:                           ; preds = %bb.c
  br label %.loopexit5088

.loopexit5088:                                    ; preds = %bb.c, %.loopexit5088.loopexit
  %.04164 = phi i32 [ 0, %.loopexit5088.loopexit ], [ 1, %bb.c ]
  %.val4609 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4609, i64 %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.0.copyload.i4868 = load i8, ptr %i.ae, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4868) #8, !srcloc !13
  %.not = icmp eq i8 %.0.copyload.i4868, 0
  br i1 %.not, label %.loopexit5085, label %bb.d

bb.d:                                             ; preds = %.loopexit5088
  %i.af = zext i8 %.0.copyload.i4868 to i32
  %i.ag = add i32 %.04343, 1
  br label %.loopexit5086

.loopexit5086:                                    ; preds = %bb.c, %bb.d
  %.14344 = phi i32 [ %i.ag, %bb.d ], [ %.04343, %bb.c ] ; 2 uses
  %.04221 = phi i32 [ %i.af, %bb.d ], [ %i.aa, %bb.c ] ; 7 uses
  %.14165 = phi i32 [ %.04164, %bb.d ], [ 0, %bb.c ] ; 10 uses
  %i.ah = and i32 %.04221, 255                    ; 3 uses
  %.not4461 = icmp eq i32 %i.ah, 48
  br i1 %.not4461, label %.preheader5083, label %bb.f

.preheader5083:                                   ; preds = %.loopexit5086, %.preheader5083
  %.24345 = phi i32 [ %i.al, %.preheader5083 ], [ %.14344, %.loopexit5086 ] ; 2 uses
  %i.ai = zext i32 %.24345 to i64
  %.val4608 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %.val4608, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %.0.copyload.i4869 = load i8, ptr %i.ak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4869) #8, !srcloc !13
  %i.al = add i32 %.24345, 1                      ; 3 uses
  switch i8 %.0.copyload.i4869, label %.loopexit5084 [
    i8 48, label %.preheader5083
    i8 0, label %.loopexit5085
  ]

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.am = add i32 %.04343, 1
  br label %bb.b

.loopexit5084:                                    ; preds = %.preheader5083
  %i.an = zext i8 %.0.copyload.i4869 to i32
  br label %bb.f

bb.f:                                             ; preds = %.loopexit5084, %.loopexit5086
  %.04318 = phi i32 [ %.04221, %.loopexit5086 ], [ %i.an, %.loopexit5084 ] ; 3 uses
  %.04203 = phi i32 [ %.14344, %.loopexit5086 ], [ %i.al, %.loopexit5084 ] ; 12 uses
  %sext = shl i32 %.04318, 24
  %i.ao = ashr exact i32 %sext, 24                ; 2 uses
  %i.ap = add nsw i32 %.04318, 208
  %i.aq = and i32 %i.ap, 254
  %i.ar = icmp samesign ult i32 %i.aq, 10         ; 2 uses
  br i1 %i.ar, label %.preheader5080, label %bb.m

.preheader5080:                                   ; preds = %bb.f, %bb.j
  %.14319 = phi i32 [ %.24320, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04288 = phi i32 [ %i.bf, %bb.j ], [ %i.ao, %bb.f ] ; 2 uses
  %.04265 = phi i32 [ %i.ba, %bb.j ], [ %.04203, %bb.f ] ; 3 uses
  %.04248 = phi i32 [ %.14249, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04243 = phi i32 [ %i.bb, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %i.as = icmp ult i32 %.04243, 9
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader5080
  %i.at = mul i32 %.04248, 10
  %i.au = add nsw i32 %.04288, -48
  %i.av = add i32 %i.au, %i.at
  br label %bb.j

bb.h:                                             ; preds = %.preheader5080
  %i.aw = icmp ugt i32 %.04243, 16
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = mul i32 %.14319, 10
  %i.ay = add i32 %i.ax, -48
  %i.az = add i32 %i.ay, %.04288
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.24320 = phi i32 [ %.14319, %bb.g ], [ %.14319, %bb.h ], [ %i.az, %bb.i ] ; 3 uses
  %.14249 = phi i32 [ %i.av, %bb.g ], [ %.04248, %bb.h ], [ %.04248, %bb.i ] ; 3 uses
  %i.ba = add i32 %.04265, 1                      ; 5 uses
  %i.bb = add i32 %.04243, 1                      ; 5 uses
  %i.bc = zext i32 %.04265 to i64
  %.val4824 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.val4824, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %.0.copyload.i4870 = load i8, ptr %i.be, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4870) #8, !srcloc !34
  %i.bf = sext i8 %.0.copyload.i4870 to i32       ; 3 uses
  %i.bg = add nsw i32 %i.bf, 208
  %i.bh = and i32 %i.bg, 254
  %i.bi = icmp samesign ult i32 %i.bh, 10
  br i1 %i.bi, label %.preheader5080, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = sub i32 %i.ba, %.04203                  ; 6 uses
  %.not4466 = icmp ugt i32 %i.ba, %.04203
  br i1 %.not4466, label %.preheader5078, label %.loopexit5079

.preheader5078:                                   ; preds = %bb.k, %bb.l
  %.04278 = phi i32 [ %i.bk, %bb.l ], [ %i.ba, %bb.k ]
  %.04184 = phi i32 [ %i.bn, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bk = add i32 %.04278, -1                     ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %.val4607 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %.val4607, i64 %i.bl
  %.0.copyload.i4871 = load i8, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4871) #8, !srcloc !13
  %.not4467 = icmp eq i8 %.0.copyload.i4871, 48
  br i1 %.not4467, label %bb.l, label %.loopexit5079

bb.l:                                             ; preds = %.preheader5078
  %i.bn = add i32 %.04184, 1                      ; 2 uses
  %.not4468 = icmp eq i32 %i.bn, %i.bj
  br i1 %.not4468, label %.loopexit5079, label %.preheader5078

.loopexit5079:                                    ; preds = %bb.l, %.preheader5078, %bb.k
  %.14185 = phi i32 [ 0, %bb.k ], [ %i.bj, %bb.l ], [ %.04184, %.preheader5078 ] ; 2 uses
  %i.bo = icmp eq i8 %.0.copyload.i4870, 46
  br i1 %i.bo, label %bb.o, label %.loopexit5076

bb.m:                                             ; preds = %bb.f
  %i.bp = and i32 %.04318, 255
  %.not4463 = icmp eq i32 %i.bp, 46
  br i1 %.not4463, label %bb.n, label %.loopexit5076

bb.n:                                             ; preds = %bb.m
  %i.bq = add i32 %.04203, 1                      ; 2 uses
  %i.br = zext i32 %.04203 to i64
  %.val4606 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %.val4606, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %.0.copyload.i4872 = load i8, ptr %i.bt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4872) #8, !srcloc !13
  %.not4464 = icmp eq i8 %.0.copyload.i4872, 48
  br i1 %.not4464, label %.preheader5081, label %.loopexit5082

.preheader5081:                                   ; preds = %bb.n, %.preheader5081
  %.34346 = phi i32 [ %i.by, %.preheader5081 ], [ %i.bq, %bb.n ] ; 2 uses
  %.04191 = phi i32 [ %i.bu, %.preheader5081 ], [ 0, %bb.n ]
  %i.bu = add i32 %.04191, 1                      ; 2 uses
  %i.bv = zext i32 %.34346 to i64
  %.val4605 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %.val4605, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %.0.copyload.i4873 = load i8, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4873) #8, !srcloc !13
  %i.by = add i32 %.34346, 1                      ; 2 uses
  %i.bz = icmp eq i8 %.0.copyload.i4873, 48
  br i1 %i.bz, label %.preheader5081, label %.loopexit5082

.loopexit5082:                                    ; preds = %.preheader5081, %bb.n
  %.34321.in = phi i8 [ %.0.copyload.i4872, %bb.n ], [ %.0.copyload.i4873, %.preheader5081 ]
  %.14266 = phi i32 [ %i.bq, %bb.n ], [ %i.by, %.preheader5081 ] ; 4 uses
  %.14192 = phi i32 [ 0, %bb.n ], [ %i.bu, %.preheader5081 ] ; 3 uses
  %i.ca = sext i8 %.34321.in to i32               ; 3 uses
  %i.cb = add nsw i32 %i.ca, -49
  %i.cc = icmp ult i32 %i.cb, 9
  br i1 %i.cc, label %bb.p, label %.loopexit5076

bb.o:                                             ; preds = %.loopexit5079
  %i.cd = add i32 %.04265, 2                      ; 2 uses
  %i.ce = sub i32 %i.cd, %.04203                  ; 2 uses
  %i.cf = sub i32 %i.ce, %i.bj
  br label %bb.q

bb.p:                                             ; preds = %.loopexit5082
  %i.cg = add i32 %.14192, 1
  %i.ch = add nsw i32 %i.ca, -48
  %i.ci = sub i32 %.04203, %.14266                ; 2 uses
  %i.cj = add i32 %i.ci, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.44322 = phi i32 [ %.24320, %bb.o ], [ 0, %bb.p ]
  %.34268 = phi i32 [ %i.cd, %bb.o ], [ %.14266, %bb.p ]
  %.24250 = phi i32 [ %.14249, %bb.o ], [ 0, %bb.p ]
  %.14244 = phi i32 [ %i.bb, %bb.o ], [ 0, %bb.p ] ; 3 uses
  %.04216 = phi i32 [ %i.bb, %bb.o ], [ 1, %bb.p ]
  %.04206 = phi i32 [ 0, %bb.o ], [ %i.cg, %bb.p ]
  %.14204 = phi i32 [ %.04203, %bb.o ], [ %.14266, %bb.p ] ; 3 uses
  %.04199 = phi i32 [ %i.bj, %bb.o ], [ %i.ci, %bb.p ] ; 3 uses
  %.34194 = phi i32 [ 0, %bb.o ], [ %.14192, %bb.p ]
  %.24186 = phi i32 [ %.14185, %bb.o ], [ 0, %bb.p ]
  %.04177 = phi i32 [ 0, %bb.o ], [ %i.ch, %bb.p ]
  %.14172 = phi i32 [ %i.cf, %bb.o ], [ 1, %bb.p ] ; 3 uses
  %.14168 = phi i32 [ %i.ce, %bb.o ], [ %i.cj, %bb.p ] ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit5077, %bb.q
  %.44347.ph = phi i1 [ true, %.loopexit5077 ], [ %i.ar, %bb.q ]
  %.54323.ph = phi i32 [ %.114329, %.loopexit5077 ], [ %.44322, %bb.q ] ; 12 uses
  %.44269.ph = phi i32 [ %i.es, %.loopexit5077 ], [ %.34268, %bb.q ] ; 5 uses
  %.34251.ph = phi i32 [ %.94257, %.loopexit5077 ], [ %.24250, %bb.q ] ; 12 uses
  %.14217.ph = phi i32 [ %.34219, %.loopexit5077 ], [ %.04216, %bb.q ] ; 18 uses
  %.14207.ph = phi i32 [ %.34209, %.loopexit5077 ], [ %.04206, %bb.q ] ; 10 uses
  %.44195.ph = phi i32 [ %.64197, %.loopexit5077 ], [ %.34194, %bb.q ] ; 7 uses
  %.34187.ph = phi i32 [ %.44188, %.loopexit5077 ], [ %.24186, %bb.q ] ; 6 uses
  %.14178.ph = phi i32 [ %.34180, %.loopexit5077 ], [ %.04177, %bb.q ]
  br i1 %.44347.ph, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer
  %i.ck = zext i32 %.44269.ph to i64              ; 2 uses
  %i.cl = add i32 %.44195.ph, 1                   ; 5 uses
  %i.cm = icmp slt i32 %.44195.ph, 1
  %i.cn = and i32 %.44195.ph, 1
  %i.co = and i32 %.44195.ph, 2147483646          ; 3 uses
  %.not4472 = icmp eq i32 %i.cn, 0
  br i1 %i.cm, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.val4823.us = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %.val4823.us, i64 %i.ck
  %.0.copyload.i4874.us = load i8, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4874.us) #8, !srcloc !34
  %i.cq = sext i8 %.0.copyload.i4874.us to i32    ; 2 uses
  %i.cr = add nsw i32 %i.cq, -48                  ; 4 uses
  %i.cs = icmp ugt i32 %i.cr, 9
  br i1 %i.cs, label %.loopexit5076, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us
  %.not4470.us = icmp eq i32 %i.cr, 0
  br i1 %.not4470.us, label %.loopexit5077, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = add i32 %i.cl, %.14207.ph               ; 2 uses
  %i.cu = add i32 %.14217.ph, 1                   ; 2 uses
  %i.cv = icmp sgt i32 %.14217.ph, 8
  br i1 %i.cv, label %.split.us, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cw = icmp eq i32 %.44195.ph, 1
  %.val4823.us5322 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %.val4823.us5322, i64 %i.ck
  %.0.copyload.i4874.us5323 = load i8, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4874.us5323) #8
  %i.cy = sext i8 %.0.copyload.i4874.us5323 to i32 ; 3 uses
  %i.cz = add nsw i32 %i.cy, -48                  ; 7 uses
  %i.da = icmp ugt i32 %i.cz, 9                   ; 2 uses
  br i1 %i.cw, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.da, label %.loopexit5076, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.us
  %.not4470.us5324 = icmp eq i32 %i.cz, 0
  br i1 %.not4470.us5324, label %.loopexit5077, label %.thread.us

.thread.us:                                       ; preds = %bb.t
  %i.db = add i32 %i.cl, %.14207.ph               ; 2 uses
  %i.dc = mul i32 %.34251.ph, 10
  %i.dd = icmp slt i32 %.14217.ph, 9
  %i.de = select i1 %i.dd, i32 %i.dc, i32 %.34251.ph ; 2 uses
  %i.df = mul i32 %.54323.ph, 10
  %i.dg = add i32 %.14217.ph, -17
  %i.dh = icmp ult i32 %i.dg, -8
  %i.di = select i1 %i.dh, i32 %.54323.ph, i32 %i.df ; 2 uses
  %i.dj = add i32 %.14217.ph, 1                   ; 2 uses
  %i.dk = add i32 %.14217.ph, 2                   ; 2 uses
  %i.dl = icmp sgt i32 %i.dj, 8
  br i1 %i.dl, label %.split.us, label %._crit_edge

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.da, label %.loopexit5076, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split
  %.not4470 = icmp eq i32 %i.cz, 0
  br i1 %.not4470, label %.loopexit5077, label %.preheader5739

.preheader5739:                                   ; preds = %bb.u, %.preheader5739
  %.54348 = phi i32 [ %i.ea, %.preheader5739 ], [ %.14217.ph, %bb.u ] ; 5 uses
  %.64324 = phi i32 [ %i.dz, %.preheader5739 ], [ %.54323.ph, %bb.u ] ; 2 uses
  %.24290 = phi i32 [ %i.eb, %.preheader5739 ], [ 0, %bb.u ]
  %.44252 = phi i32 [ %i.dr, %.preheader5739 ], [ %.34251.ph, %bb.u ] ; 2 uses
  %i.dm = mul i32 %.44252, 10
  %i.dn = icmp slt i32 %.54348, 9
  %i.do = select i1 %i.dn, i32 %i.dm, i32 %.44252 ; 2 uses
  %i.dp = mul i32 %i.do, 10
  %i.dq = icmp slt i32 %.54348, 8
  %i.dr = select i1 %i.dq, i32 %i.dp, i32 %i.do   ; 4 uses
  %i.ds = mul i32 %.64324, 10
  %i.dt = add i32 %.54348, -17
  %i.du = icmp ult i32 %i.dt, -8
  %i.dv = select i1 %i.du, i32 %.64324, i32 %i.ds ; 2 uses
  %i.dw = mul i32 %i.dv, 10
  %i.dx = add i32 %.54348, -16
  %i.dy = icmp ult i32 %i.dx, -8
  %i.dz = select i1 %i.dy, i32 %i.dv, i32 %i.dw   ; 4 uses
  %i.ea = add i32 %.54348, 2
  %i.eb = add i32 %.24290, 2                      ; 2 uses
  %.not4471 = icmp eq i32 %i.eb, %i.co
  br i1 %.not4471, label %bb.v, label %.preheader5739

bb.v:                                             ; preds = %.preheader5739
  %i.ec = add i32 %i.cl, %.14207.ph               ; 2 uses
  br i1 %.not4472, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.v
  %i.ed = add i32 %.14217.ph, %i.co
  %i.ee = mul i32 %i.dr, 10
  %i.ef = icmp slt i32 %i.ed, 9
  %i.eg = select i1 %i.ef, i32 %i.ee, i32 %i.dr
  %i.eh = mul i32 %i.dz, 10
  %op.rdx = add nsw i32 %i.co, -17
  %op.rdx5875 = add i32 %op.rdx, %.14217.ph
  %i.ei = icmp ult i32 %op.rdx5875, -8
  %i.ej = select i1 %i.ei, i32 %i.dz, i32 %i.eh
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v
  %.84326 = phi i32 [ %i.ej, %.thread ], [ %i.dz, %bb.v ] ; 2 uses
  %.64254 = phi i32 [ %i.eg, %.thread ], [ %i.dr, %bb.v ] ; 2 uses
  %i.ek = add i32 %.44195.ph, %.14217.ph          ; 3 uses
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes_g_strtod:bb.a
  %i.ow = add i32 %.174360, %.24205
  %i.ox = zext i32 %i.ow to i64                   ; 4 uses
  %.val4813 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oy = getelementptr inbounds nuw i8, ptr %.val4813, i64 %i.ox
  %.0.copyload.i4899 = load i8, ptr %i.oy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4899) #8, !srcloc !34
  %i.oz = sext i8 %.0.copyload.i4899 to i32
  %i.pa = mul i32 %.17, 10
  %i.pb = add i32 %i.pa, %i.oz
  %i.pc = mul i32 %i.pb, 10
  %.val4812 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pd = getelementptr inbounds nuw i8, ptr %.val4812, i64 %i.ox
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 1
  %.0.copyload.i4900 = load i8, ptr %i.pe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4900) #8, !srcloc !34
  %i.pf = sext i8 %.0.copyload.i4900 to i32
  %i.pg = add i32 %i.pc, %i.pf
  %i.ph = mul i32 %i.pg, 10
  %.val4811 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pi = getelementptr inbounds nuw i8, ptr %.val4811, i64 %i.ox
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 2
  %.0.copyload.i4901 = load i8, ptr %i.pj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4901) #8, !srcloc !34
  %i.pk = sext i8 %.0.copyload.i4901 to i32
  %i.pl = add i32 %i.ph, %i.pk
  %i.pm = mul i32 %i.pl, 10
  %.val4810 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pn = getelementptr inbounds nuw i8, ptr %.val4810, i64 %i.ox
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 3
  %.0.copyload.i4902 = load i8, ptr %i.po, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4902) #8, !srcloc !34
  %i.pp = sext i8 %.0.copyload.i4902 to i32
  %i.pq = add i32 %i.pm, -53328
  %i.pr = add i32 %i.pq, %i.pp                    ; 2 uses
  %i.ps = add i32 %.174360, 4
  %i.pt = add nsw i32 %.164304, 4                 ; 2 uses
  %i.pu = icmp slt i32 %i.pt, %.154333
  br i1 %i.pu, label %.preheader5065, label %.thread5027

bb.ci:                                            ; preds = %bb.bz, %bb.cc
  %.164334 = phi i32 [ %i.lv, %bb.bz ], [ %i.mj, %bb.cc ] ; 3 uses
  %.34281 = phi i32 [ %.44220, %bb.bz ], [ %.154333, %bb.cc ] ; 5 uses
  %.74272 = phi i32 [ %i.ih, %bb.bz ], [ %i.ml, %bb.cc ] ; 3 uses
  %i.pv = add nuw i32 %.34281, 8
  %i.pw = sdiv i32 %i.pv, 9
  %i.px = icmp sgt i32 %.34281, 9
  br i1 %i.px, label %.preheader5064, label %.thread5027

.preheader5064:                                   ; preds = %bb.ci, %.preheader5064
  %.184361 = phi i32 [ %i.pz, %.preheader5064 ], [ 1, %bb.ci ]
  %.174305 = phi i32 [ %i.py, %.preheader5064 ], [ 0, %bb.ci ] ; 3 uses
  %i.py = add i32 %.174305, 1                     ; 3 uses
  %i.pz = shl i32 %.184361, 1                     ; 2 uses
  %i.qa = icmp sgt i32 %i.pw, %i.pz
  br i1 %i.qa, label %.preheader5064, label %bb.cj

bb.cj:                                            ; preds = %.preheader5064
  %i.qb = icmp ugt i32 %.174305, 6
  br i1 %i.qb, label %bb.cl, label %.thread5027

.thread5027:                                      ; preds = %.preheader5065, %.loopexit5067, %.loopexit5069, %bb.cj, %bb.ci
  %.185043 = phi i32 [ %.104258, %bb.cj ], [ %.104258, %bb.ci ], [ %.164264, %.loopexit5067 ], [ %.144262, %.loopexit5069 ], [ %i.pr, %.preheader5065 ] ; 2 uses
  %.742725040 = phi i32 [ %.74272, %bb.cj ], [ %.74272, %bb.ci ], [ %i.ml, %.loopexit5067 ], [ %i.ml, %.loopexit5069 ], [ %i.ml, %.preheader5065 ] ; 2 uses
  %.342815037 = phi i32 [ %.34281, %bb.cj ], [ %.34281, %bb.ci ], [ %.154333, %.loopexit5067 ], [ %.154333, %.loopexit5069 ], [ %.154333, %.preheader5065 ] ; 2 uses
  %.1643345034 = phi i32 [ %.164334, %bb.cj ], [ %.164334, %bb.ci ], [ %i.mj, %.loopexit5067 ], [ %i.mj, %.loopexit5069 ], [ %i.mj, %.preheader5065 ] ; 2 uses
  %.184306 = phi i32 [ %i.py, %bb.cj ], [ 0, %bb.ci ], [ 0, %.loopexit5067 ], [ 0, %.loopexit5069 ], [ 0, %.preheader5065 ] ; 4 uses
  %i.qc = shl nuw nsw i32 %.184306, 2
  %i.qd = add i32 %i.qc, %i.c
  %i.qe = zext i32 %i.qd to i64
  %i.qf = add nuw nsw i64 %i.qe, 20               ; 2 uses
  %.val4705 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qg = getelementptr inbounds nuw i8, ptr %.val4705, i64 %i.qf
  %.0.copyload.i4903 = load i32, ptr %i.qg, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4903) #8, !srcloc !14
  %.not4494 = icmp eq i32 %.0.copyload.i4903, 0
  br i1 %.not4494, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %.thread5027
  %i.qh = zext i32 %.0.copyload.i4903 to i64      ; 2 uses
  %.val4704 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qi = getelementptr inbounds nuw i8, ptr %.val4704, i64 %i.qh
  %.0.copyload.i4904 = load i32, ptr %i.qi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4904) #8, !srcloc !14
  %.val4776 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qj = getelementptr inbounds nuw i8, ptr %.val4776, i64 %i.qf
  store i32 %.0.copyload.i4904, ptr %i.qj, align 1
  br label %bb.co

bb.cl:                                            ; preds = %bb.cj
  %i.qk = and i32 %.174305, 31                    ; 2 uses
  %i.ql = shl i32 8, %i.qk
  %i.qm = add nuw i32 %i.ql, 24
  %i.qn = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef %i.qm) #8 ; 2 uses
  %.val4775 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qo = getelementptr inbounds nuw i8, ptr %.val4775, i64 %i.e
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  store i32 1, ptr %i.qp, align 1
  %i.qq = shl i32 2, %i.qk
  %.pre = zext i32 %i.qn to i64
  br label %bb.cn

bb.cm:                                            ; preds = %.thread5027
  %i.qr = shl nuw nsw i32 4, %.184306
  %i.qs = and i32 %i.qr, 2147483640
  %i.qt = add i32 %i.b, -2304
  %i.qu = add i32 %i.qt, %i.qs
  %.val4774 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qv = getelementptr inbounds nuw i8, ptr %.val4774, i64 %i.f
  store i32 %i.qu, ptr %i.qv, align 1
  %i.qw = shl nuw nsw i32 1, %.184306
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.pre-phi = phi i64 [ %i.i, %bb.cm ], [ %.pre, %bb.cl ] ; 3 uses
  %.185042 = phi i32 [ %.185043, %bb.cm ], [ %.104258, %bb.cl ]
  %.742725039 = phi i32 [ %.742725040, %bb.cm ], [ %.74272, %bb.cl ]
  %.342815036 = phi i32 [ %.342815037, %bb.cm ], [ %.34281, %bb.cl ]
  %.1643345033 = phi i32 [ %.1643345034, %bb.cm ], [ %.164334, %bb.cl ]
  %.194362 = phi i32 [ %i.h, %bb.cm ], [ %i.qn, %bb.cl ]
  %.194307 = phi i32 [ %.184306, %bb.cm ], [ %i.py, %bb.cl ]
  %.3 = phi i32 [ %i.qw, %bb.cm ], [ %i.qq, %bb.cl ]
  %.val4773 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qx = getelementptr inbounds nuw i8, ptr %.val4773, i64 %.pre-phi
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  store i32 %.3, ptr %i.qy, align 1
  %.val4772 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qz = getelementptr inbounds nuw i8, ptr %.val4772, i64 %.pre-phi
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  store i32 %.194307, ptr %i.ra, align 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ck
  %.pre-phi5530 = phi i64 [ %.pre-phi, %bb.cn ], [ %i.qh, %bb.ck ] ; 2 uses
  %.185041 = phi i32 [ %.185042, %bb.cn ], [ %.185043, %bb.ck ]
  %.742725038 = phi i32 [ %.742725039, %bb.cn ], [ %.742725040, %bb.ck ] ; 3 uses
  %.342815035 = phi i32 [ %.342815036, %bb.cn ], [ %.342815037, %bb.ck ] ; 5 uses
  %.1643345032 = phi i32 [ %.1643345033, %bb.cn ], [ %.1643345034, %bb.ck ] ; 3 uses
  %.204363 = phi i32 [ %.194362, %bb.cn ], [ %.0.copyload.i4903, %bb.ck ] ; 2 uses
  %.val4771 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rb = getelementptr inbounds nuw i8, ptr %.val4771, i64 %.pre-phi5530
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 20
  store i32 %.185041, ptr %i.rc, align 1
  %.val4795 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rd = getelementptr inbounds nuw i8, ptr %.val4795, i64 %.pre-phi5530
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 12
  store i64 4294967296, ptr %i.re, align 1
  %i.rf = icmp sgt i32 %.1643345032, 9
  %i.rg = add i32 %.24205, 9                      ; 2 uses
  br i1 %i.rf, label %bb.cp, label %.loopexit5599

bb.cp:                                            ; preds = %bb.co
  %i.rh = add i32 %i.b, -2376
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %bb.cp
  %.214364 = phi i32 [ %.204363, %bb.cp ], [ %i.rm, %bb.cq ]
  %.204308 = phi i32 [ 9, %bb.cp ], [ %i.ro, %bb.cq ]
  %.19 = phi i32 [ %i.rg, %bb.cp ], [ %i.rn, %bb.cq ] ; 2 uses
  %i.ri = zext i32 %.19 to i64
  %.val4809 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rj = getelementptr inbounds nuw i8, ptr %.val4809, i64 %i.ri
  %.0.copyload.i4905 = load i8, ptr %i.rj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4905) #8, !srcloc !34
  %i.rk = sext i8 %.0.copyload.i4905 to i32
  %i.rl = add nsw i32 %i.rk, -48
  %i.rm = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %i.rh, i32 noundef %.214364, i32 noundef 10, i32 noundef %i.rl) ; 2 uses
  %i.rn = add i32 %.19, 1                         ; 2 uses
  %i.ro = add nuw nsw i32 %.204308, 1             ; 2 uses
  %.not4495 = icmp eq i32 %i.ro, %.1643345032
  br i1 %.not4495, label %.loopexit5599, label %bb.cq

.loopexit5599:                                    ; preds = %bb.cq, %bb.co
  %.224365 = phi i32 [ %.204363, %bb.co ], [ %i.rm, %bb.cq ] ; 2 uses
  %.174335 = phi i32 [ 9, %bb.co ], [ %.1643345032, %bb.cq ] ; 2 uses
  %.pn = phi i32 [ %i.rg, %bb.co ], [ %i.rn, %bb.cq ]
  %i.rp = icmp slt i32 %.174335, %.342815035
  br i1 %i.rp, label %.preheader5062, label %..loopexit5063_crit_edge

..loopexit5063_crit_edge:                         ; preds = %.loopexit5599
  %.pre5539 = add i32 %i.b, -2376
  br label %.loopexit5063

.preheader5062:                                   ; preds = %.loopexit5599
  %.4 = add i32 %.pn, %.24173
  %i.rq = add i32 %i.b, -2376                     ; 2 uses
  br label %bb.cr

bb.cr:                                            ; preds = %.preheader5062, %bb.cr
  %.234366 = phi i32 [ %i.rv, %bb.cr ], [ %.224365, %.preheader5062 ]
  %.184336 = phi i32 [ %i.rx, %bb.cr ], [ %.174335, %.preheader5062 ]
  %.20 = phi i32 [ %i.rw, %bb.cr ], [ %.4, %.preheader5062 ] ; 2 uses
  %i.rr = zext i32 %.20 to i64
  %.val4808 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rs = getelementptr inbounds nuw i8, ptr %.val4808, i64 %i.rr
  %.0.copyload.i4906 = load i8, ptr %i.rs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4906) #8, !srcloc !34
  %i.rt = sext i8 %.0.copyload.i4906 to i32
  %i.ru = add nsw i32 %i.rt, -48
  %i.rv = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %i.rq, i32 noundef %.234366, i32 noundef 10, i32 noundef %i.ru) ; 2 uses
  %i.rw = add i32 %.20, 1
  %i.rx = add i32 %.184336, 1                     ; 2 uses
  %.not4496 = icmp eq i32 %i.rx, %.342815035
  br i1 %.not4496, label %.loopexit5063, label %bb.cr

.loopexit5063:                                    ; preds = %bb.cr, %..loopexit5063_crit_edge
  %.pre-phi5540 = phi i32 [ %.pre5539, %..loopexit5063_crit_edge ], [ %i.rq, %bb.cr ] ; 18 uses
  %.244367 = phi i32 [ %.224365, %..loopexit5063_crit_edge ], [ %i.rv, %bb.cr ] ; 10 uses
  %i.ry = sub i32 0, %.742725038
  %i.rz = icmp sgt i32 %.742725038, -1            ; 2 uses
  %i.sa = select i1 %i.rz, i32 0, i32 %i.ry       ; 3 uses
  %i.sb = add i32 %.244367, 12
  %.not4497 = icmp ne i32 %.04190, 0              ; 9 uses
  %i.sc = sub i32 %.44220, %.54189                ; 7 uses
  %i.sd = icmp ne i32 %i.sc, %.342815035
  %i.se = select i1 %i.rz, i32 %.742725038, i32 0 ; 3 uses
  %i.sf = add i32 %i.se, %.04190
  %i.sg = zext i32 %.244367 to i64                ; 3 uses
  %i.sh = add nuw nsw i64 %i.sg, 4                ; 2 uses
  %i.si = add i32 %i.b, -24                       ; 2 uses
  %i.sj = add i32 %i.b, -12
  %i.sk = add i32 %i.b, -16
  %i.sl = icmp slt i32 %i.sa, 1
  %.not4502 = icmp eq i32 %i.se, 0
  %i.sm = icmp slt i32 %.342815035, %i.sc         ; 4 uses
  %i.sn = add i32 %i.b, -4                        ; 2 uses
  %i.so = add i32 %i.b, -8                        ; 2 uses
  %i.sp = add nuw nsw i64 %i.e, 2364              ; 5 uses
  %invariant.op = or i1 %i.sd, %.not4497
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.loopexit5063
  %.val4703 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sq = getelementptr inbounds nuw i8, ptr %.val4703, i64 %i.sh
  %.0.copyload.i4907 = load i32, ptr %i.sq, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4907) #8, !srcloc !14
  %i.sr = icmp slt i32 %.0.copyload.i4907, 8
  br i1 %i.sr, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %.backedge
  %i.ss = shl i32 %.0.copyload.i4907, 2
  %i.st = add i32 %i.ss, %i.c
  %i.su = zext i32 %i.st to i64
  %i.sv = add nuw nsw i64 %i.su, 20               ; 2 uses
  %.val4702 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sw = getelementptr inbounds nuw i8, ptr %.val4702, i64 %i.sv
  %.0.copyload.i4908 = load i32, ptr %i.sw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4908) #8, !srcloc !14
  %.not4498 = icmp eq i32 %.0.copyload.i4908, 0
  br i1 %.not4498, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sx = zext i32 %.0.copyload.i4908 to i64      ; 2 uses
  %.val4701 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sy = getelementptr inbounds nuw i8, ptr %.val4701, i64 %i.sx
  %.0.copyload.i4909 = load i32, ptr %i.sy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4909) #8, !srcloc !14
  %.val4770 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sz = getelementptr inbounds nuw i8, ptr %.val4770, i64 %i.sv
  store i32 %.0.copyload.i4909, ptr %i.sz, align 1
  br label %bb.cz

bb.cu:                                            ; preds = %bb.cs
  %i.ta = and i32 %.0.copyload.i4907, 31          ; 2 uses
  %i.tb = shl nuw i32 1, %i.ta                    ; 2 uses
  %.val4700 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tc = getelementptr inbounds nuw i8, ptr %.val4700, i64 %i.t
  %.0.copyload.i4910 = load i32, ptr %i.tc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4910) #8, !srcloc !14
  %i.td = shl i32 4, %i.ta
  %i.te = add nuw i32 %i.td, 27                   ; 3 uses
  %i.tf = lshr i32 %i.te, 3
  %.val4699 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tg = getelementptr inbounds nuw i8, ptr %.val4699, i64 %i.f
  %.0.copyload.i4911 = load i32, ptr %i.tg, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4911) #8, !srcloc !14
  %i.th = sub i32 %.0.copyload.i4911, %i.h
  %i.ti = ashr i32 %i.th, 3
  %i.tj = add nsw i32 %i.ti, %i.tf
  %i.tk = icmp ult i32 %.0.copyload.i4910, %i.tj
  br i1 %i.tk, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tl = and i32 %i.te, -8
  %i.tm = add i32 %.0.copyload.i4911, %i.tl
  %.val4769 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tn = getelementptr inbounds nuw i8, ptr %.val4769, i64 %i.f
  store i32 %i.tm, ptr %i.tn, align 1
  br label %bb.cy

bb.cw:                                            ; preds = %.backedge
  %i.to = and i32 %.0.copyload.i4907, 31          ; 2 uses
  %i.tp = shl i32 4, %i.to
  %i.tq = add nuw i32 %i.tp, 27
  %i.tr = shl nuw i32 1, %i.to
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cu, %bb.cw
  %.214309 = phi i32 [ %i.te, %bb.cu ], [ %i.tq, %bb.cw ]
  %.5 = phi i32 [ %i.tb, %bb.cu ], [ %i.tr, %bb.cw ]
  %i.ts = and i32 %.214309, -8
  %i.tt = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef %i.ts) #8
  %.val4768 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tu = getelementptr inbounds nuw i8, ptr %.val4768, i64 %i.e
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 12
  store i32 1, ptr %i.tv, align 1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cv
  %.21 = phi i32 [ %.5, %bb.cx ], [ %i.tb, %bb.cv ]
  %.44236 = phi i32 [ %i.tt, %bb.cx ], [ %.0.copyload.i4911, %bb.cv ] ; 2 uses
  %i.tw = zext i32 %.44236 to i64                 ; 3 uses
  %.val4767 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tx = getelementptr inbounds nuw i8, ptr %.val4767, i64 %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  store i32 %.21, ptr %i.ty, align 1
  %.val4766 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tz = getelementptr inbounds nuw i8, ptr %.val4766, i64 %i.tw
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 4
  store i32 %.0.copyload.i4907, ptr %i.ua, align 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.ct
  %.pre-phi5531 = phi i64 [ %i.tw, %bb.cy ], [ %i.sx, %bb.ct ]
  %.54237 = phi i32 [ %.44236, %bb.cy ], [ %.0.copyload.i4908, %bb.ct ] ; 3 uses
  %.val4794 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ub = getelementptr inbounds nuw i8, ptr %.val4794, i64 %.pre-phi5531
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 12
  store i64 0, ptr %i.uc, align 1
  %i.ud = add i32 %.54237, 12
  %.val4698 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ue = getelementptr inbounds nuw i8, ptr %.val4698, i64 %i.sg
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %.0.copyload.i4912 = load i32, ptr %i.uf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4912) #8, !srcloc !14
  %i.ug = shl i32 %.0.copyload.i4912, 2
  %i.uh = add i32 %i.ug, 8
  %i.ui = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.ud, i32 noundef %i.sb, i32 noundef %i.uh) #8 ; 0 uses
  %i.uj = tail call i32 @w2c_hermes_d2b(ptr noundef nonnull %0, i32 noundef %.pre-phi5540, i32 noundef %i.si, i32 noundef %i.sj, i32 noundef %i.sk) #8 ; 6 uses
  %.val4697 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.uk = getelementptr inbounds nuw i8, ptr %.val4697, i64 %i.q
  %.0.copyload.i4913 = load i32, ptr %i.uk, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4913) #8, !srcloc !14
  %.not4499 = icmp eq i32 %.0.copyload.i4913, 0
  br i1 %.not4499, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ul = zext i32 %.0.copyload.i4913 to i64      ; 2 uses
  %.val4696 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.um = getelementptr inbounds nuw i8, ptr %.val4696, i64 %i.ul
  %.0.copyload.i4914 = load i32, ptr %i.um, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4914) #8, !srcloc !14
  %.val4765 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.un = getelementptr inbounds nuw i8, ptr %.val4765, i64 %i.q
  store i32 %.0.copyload.i4914, ptr %i.un, align 1
  br label %bb.df

bb.db:                                            ; preds = %bb.cz
  %.val4695 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.uo = getelementptr inbounds nuw i8, ptr %.val4695, i64 %i.t
  %.0.copyload.i4915 = load i32, ptr %i.uo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4915) #8, !srcloc !14
  %.val4694 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.up = getelementptr inbounds nuw i8, ptr %.val4694, i64 %i.f
  %.0.copyload.i4916 = load i32, ptr %i.up, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4916) #8, !srcloc !14
  %i.uq = sub i32 %.0.copyload.i4916, %i.h
  %i.ur = ashr i32 %i.uq, 3
  %i.us = add nsw i32 %i.ur, 4
  %.not4500 = icmp ult i32 %.0.copyload.i4915, %i.us
  br i1 %.not4500, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ut = add i32 %.0.copyload.i4916, 32
  %.val4764 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.uu = getelementptr inbounds nuw i8, ptr %.val4764, i64 %i.f
  store i32 %i.ut, ptr %i.uu, align 1
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.uv = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef 32) #8
  %.val4763 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.uw = getelementptr inbounds nuw i8, ptr %.val4763, i64 %i.e
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 12
  store i32 1, ptr %i.ux, align 1
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.224310 = phi i32 [ %.0.copyload.i4916, %bb.dc ], [ %i.uv, %bb.dd ] ; 2 uses
  %i.uy = zext i32 %.224310 to i64                ; 2 uses
  %.val4793 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.uz = getelementptr inbounds nuw i8, ptr %.val4793, i64 %i.uy
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  store i64 8589934593, ptr %i.va, align 1
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.da
  %.pre-phi5532 = phi i64 [ %i.uy, %bb.de ], [ %i.ul, %bb.da ] ; 2 uses
  %.234311 = phi i32 [ %.224310, %bb.de ], [ %.0.copyload.i4913, %bb.da ] ; 2 uses
  %.val4762 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.vb = getelementptr inbounds nuw i8, ptr %.val4762, i64 %.pre-phi5532
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 20
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes_g_strtod:bb.a
bb.iq:                                            ; preds = %bb.ip, %bb.io
  %.64284 = phi i32 [ %.0.copyload.i4980, %bb.io ], [ %i.ama, %bb.ip ] ; 2 uses
  %i.amd = zext i32 %.64284 to i64                ; 2 uses
  %.val4788 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ame = getelementptr inbounds nuw i8, ptr %.val4788, i64 %i.amd
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 4
  store i64 8589934593, ptr %i.amf, align 1
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.im
  %.pre-phi5534 = phi i64 [ %i.amd, %bb.iq ], [ %i.alq, %bb.im ] ; 4 uses
  %.74285 = phi i32 [ %.64284, %bb.iq ], [ %.54283, %bb.im ] ; 3 uses
  %.val4723 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.amg = getelementptr inbounds nuw i8, ptr %.val4723, i64 %.pre-phi5534
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 20
  store i32 1, ptr %i.amh, align 1
  %.val4787 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ami = getelementptr inbounds nuw i8, ptr %.val4787, i64 %.pre-phi5534
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 12
  store i64 4294967296, ptr %i.amj, align 1
  %i.amk = icmp sgt i32 %i.ajq, 1
  br i1 %i.amk, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.aml = add nsw i32 %i.ajq, -1
  %i.amm = tail call i32 @w2c_hermes_pow5mult(ptr noundef nonnull %0, i32 noundef %.pre-phi5540, i32 noundef %.74285, i32 noundef %i.aml) #8 ; 2 uses
  %.pre5535 = zext i32 %i.amm to i64
  br label %bb.iv

bb.it:                                            ; preds = %bb.ir
  %i.amn = icmp eq i32 %i.ajq, 1
  br i1 %i.amn, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.amo = sub i32 1, %i.ajq
  %i.amp = tail call i32 @w2c_hermes_pow5mult(ptr noundef nonnull %0, i32 noundef %.pre-phi5540, i32 noundef %.274370, i32 noundef %i.amo) #8
  br label %bb.iv

bb.iv:                                            ; preds = %bb.it, %bb.iu, %bb.is
  %.pre-phi5536 = phi i64 [ %.pre-phi5534, %bb.it ], [ %.pre-phi5534, %bb.iu ], [ %.pre5535, %bb.is ]
  %.284371 = phi i32 [ %.274370, %bb.it ], [ %i.amp, %bb.iu ], [ %.274370, %bb.is ] ; 2 uses
  %.84286 = phi i32 [ %.74285, %bb.it ], [ %.74285, %bb.iu ], [ %i.amm, %bb.is ] ; 3 uses
  %i.amq = xor i32 %i.alm, -1
  %i.amr = icmp ult i32 %i.alm, 2147483647        ; 2 uses
  %i.ams = select i1 %i.amr, i32 0, i32 %i.amq    ; 2 uses
  %.val4636 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.amt = getelementptr inbounds nuw i8, ptr %.val4636, i64 %.pre-phi5536
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 16
  %.0.copyload.i4981 = load i32, ptr %i.amu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4981) #8, !srcloc !14
  %i.amv = shl i32 %.0.copyload.i4981, 2
  %i.amw = add i32 %i.amv, %.84286
  %i.amx = zext i32 %i.amw to i64
  %.val4635 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.amy = getelementptr inbounds nuw i8, ptr %.val4635, i64 %i.amx
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 16
  %.0.copyload.i4982 = load i32, ptr %i.amz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4982) #8, !srcloc !14
  %i.ana = icmp ult i32 %.0.copyload.i4982, 65536 ; 2 uses
  %i.anb = select i1 %i.ana, i32 16, i32 0        ; 2 uses
  %i.anc = or disjoint i32 %i.anb, 8
  %i.and = shl i32 %.0.copyload.i4982, 16
  %i.ane = select i1 %i.ana, i32 %i.and, i32 %.0.copyload.i4982 ; 3 uses
  %i.anf = icmp ult i32 %i.ane, 16777216          ; 2 uses
  %i.ang = select i1 %i.anf, i32 %i.anc, i32 %i.anb ; 2 uses
  %i.anh = or disjoint i32 %i.ang, 4
  %i.ani = shl i32 %i.ane, 8
  %i.anj = select i1 %i.anf, i32 %i.ani, i32 %i.ane ; 3 uses
  %i.ank = icmp ult i32 %i.anj, 268435456         ; 2 uses
  %i.anl = select i1 %i.ank, i32 %i.anh, i32 %i.ang ; 2 uses
  %i.anm = or disjoint i32 %i.anl, 2
  %i.ann = shl i32 %i.anj, 4
  %i.ano = select i1 %i.ank, i32 %i.ann, i32 %i.anj ; 3 uses
  %i.anp = icmp ult i32 %i.ano, 1073741824        ; 2 uses
  %i.anq = select i1 %i.anp, i32 %i.anm, i32 %i.anl ; 2 uses
  %i.anr = shl i32 %i.ano, 2
  %i.ans = select i1 %i.anp, i32 %i.anr, i32 %i.ano ; 2 uses
  %i.ant = icmp slt i32 %i.ans, 0
  %.not4559 = icmp ult i32 %i.ans, 1073741824
  %i.anu = add nuw nsw i32 %i.anq, 1
  %spec.select = select i1 %.not4559, i32 1073741824, i32 %i.anu
  %.6 = select i1 %i.ant, i32 %i.anq, i32 %spec.select
  %i.anv = tail call i32 @llvm.smax.i32(i32 %i.ams, i32 0)
  %reass.sub5374 = sub nsw i32 %.6, %i.anv
  %i.anw = add nsw i32 %reass.sub5374, 28
  %i.anx = and i32 %i.anw, 31                     ; 2 uses
  %i.any = select i1 %i.amr, i32 %i.aln, i32 0
  %i.anz = add i32 %i.anx, %i.any                 ; 2 uses
  %.not4560 = icmp eq i32 %i.anz, 0
  br i1 %.not4560, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.aoa = tail call i32 @w2c_hermes_lshift(ptr noundef nonnull %0, i32 noundef %.pre-phi5540, i32 noundef %.284371, i32 noundef %i.anz)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %.294372 = phi i32 [ %i.aoa, %bb.iw ], [ %.284371, %bb.iv ] ; 3 uses
  %i.aob = add i32 %i.anx, %i.ams                 ; 2 uses
  %i.aoc = icmp sgt i32 %i.aob, 0
  br i1 %i.aoc, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.aod = tail call i32 @w2c_hermes_lshift(ptr noundef nonnull %0, i32 noundef %.pre-phi5540, i32 noundef %.84286, i32 noundef %i.aob)
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.94287 = phi i32 [ %i.aod, %bb.iy ], [ %.84286, %bb.ix ] ; 8 uses
  %i.aoe = tail call i32 @w2c_hermes_quorem(ptr noundef nonnull %0, i32 noundef %.294372, i32 noundef %.94287) #8 ; 2 uses
  %.not4561 = icmp eq i32 %i.aoe, 0
  br i1 %.not4561, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.aof = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %.pre-phi5540, i32 noundef %.294372, i32 noundef 10, i32 noundef 0) ; 2 uses
  %i.aog = tail call i32 @w2c_hermes_quorem(ptr noundef nonnull %0, i32 noundef %i.aof, i32 noundef %.94287) #8
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %.304373 = phi i32 [ %i.aof, %bb.ja ], [ %.294372, %bb.iz ] ; 2 uses
  %.26 = phi i32 [ %i.aog, %bb.ja ], [ %i.aoe, %bb.iz ] ; 2 uses
  %i.aoh = icmp sgt i32 %i.lv, 0
  br i1 %i.aoh, label %.preheader5055.preheader, label %.loopexit5057

.preheader5055.preheader:                         ; preds = %bb.jb
  %i.aoi = zext nneg i32 %i.lv to i64
  br label %.preheader5055

.preheader5055:                                   ; preds = %.preheader5055.preheader, %bb.jf
  %indvars.iv5527 = phi i64 [ 0, %.preheader5055.preheader ], [ %indvars.iv.next5528, %bb.jf ] ; 2 uses
  %.31 = phi i32 [ %.304373, %.preheader5055.preheader ], [ %i.aoy, %bb.jf ] ; 4 uses
  %.27 = phi i32 [ %.26, %.preheader5055.preheader ], [ %i.aoz, %bb.jf ]
  %i.aoj = trunc nuw nsw i64 %indvars.iv5527 to i32
  %i.aok = add i32 %.24205, %i.aoj
  %i.aol = zext i32 %i.aok to i64
  %.val4807 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aom = getelementptr inbounds nuw i8, ptr %.val4807, i64 %i.aol
  %.0.copyload.i4983 = load i8, ptr %i.aom, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4983) #8, !srcloc !34
  %i.aon = sext i8 %.0.copyload.i4983 to i32
  %i.aoo = sub i32 %i.aon, %.27
  %i.aop = add i32 %i.aoo, -48                    ; 2 uses
  %.not4562 = icmp eq i32 %i.aop, 0
  br i1 %.not4562, label %bb.jc, label %.loopexit

bb.jc:                                            ; preds = %.preheader5055
  %indvars.iv.next5528 = add nuw nsw i64 %indvars.iv5527, 1 ; 3 uses
  %i.aoq = zext i32 %.31 to i64                   ; 3 uses
  %.val4634 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aor = getelementptr inbounds nuw i8, ptr %.val4634, i64 %i.aoq
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 20
  %.0.copyload.i4984 = load i32, ptr %i.aos, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4984) #8, !srcloc !14
  %.not4563 = icmp eq i32 %.0.copyload.i4984, 0
  br i1 %.not4563, label %bb.jd, label %bb.jf

bb.jd:                                            ; preds = %bb.jc
  %.val4633 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aot = getelementptr inbounds nuw i8, ptr %.val4633, i64 %i.aoq
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 16
  %.0.copyload.i4985 = load i32, ptr %i.aou, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4985) #8, !srcloc !14
  %.not4564 = icmp eq i32 %.0.copyload.i4985, 1
  br i1 %.not4564, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.aov = trunc nuw nsw i64 %indvars.iv.next5528 to i32
  %i.aow = icmp sgt i32 %i.sc, %i.aov
  %i.aox = zext i1 %i.aow to i32
  br label %bb.jn

bb.jf:                                            ; preds = %bb.jd, %bb.jc
  %i.aoy = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %.pre-phi5540, i32 noundef %.31, i32 noundef 10, i32 noundef 0) ; 3 uses
  %i.aoz = tail call i32 @w2c_hermes_quorem(ptr noundef nonnull %0, i32 noundef %i.aoy, i32 noundef %.94287) #8 ; 2 uses
  %.not4565 = icmp eq i64 %indvars.iv.next5528, %i.aoi
  br i1 %.not4565, label %.loopexit5057, label %.preheader5055

.loopexit5057:                                    ; preds = %bb.jf, %bb.jb
  %.32 = phi i32 [ %.304373, %bb.jb ], [ %i.aoy, %bb.jf ] ; 2 uses
  %.234341 = phi i32 [ 0, %bb.jb ], [ %i.lv, %bb.jf ] ; 2 uses
  %.28 = phi i32 [ %.26, %bb.jb ], [ %i.aoz, %bb.jf ] ; 2 uses
  %i.apa = icmp slt i32 %.234341, %i.sc
  br i1 %i.apa, label %.preheader, label %.loopexit5054

.preheader:                                       ; preds = %.loopexit5057, %bb.jj
  %.33 = phi i32 [ %i.apq, %bb.jj ], [ %.32, %.loopexit5057 ] ; 4 uses
  %.244342 = phi i32 [ %i.aph, %bb.jj ], [ %.234341, %.loopexit5057 ]
  %.29 = phi i32 [ %i.apr, %bb.jj ], [ %.28, %.loopexit5057 ]
  %.34170 = phi i32 [ %i.app, %bb.jj ], [ %.24169, %.loopexit5057 ] ; 2 uses
  %i.apb = add i32 %.34170, %.24205
  %i.apc = zext i32 %i.apb to i64
  %.val4806 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.apd = getelementptr inbounds nuw i8, ptr %.val4806, i64 %i.apc
  %.0.copyload.i4986 = load i8, ptr %i.apd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4986) #8, !srcloc !34
  %i.ape = sext i8 %.0.copyload.i4986 to i32
  %i.apf = sub i32 %i.ape, %.29
  %i.apg = add i32 %i.apf, -48                    ; 2 uses
  %.not4566 = icmp eq i32 %i.apg, 0
  br i1 %.not4566, label %bb.jg, label %.loopexit

bb.jg:                                            ; preds = %.preheader
  %i.aph = add i32 %.244342, 1                    ; 3 uses
  %i.api = zext i32 %.33 to i64                   ; 3 uses
  %.val4632 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.apj = getelementptr inbounds nuw i8, ptr %.val4632, i64 %i.api
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 20
  %.0.copyload.i4987 = load i32, ptr %i.apk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4987) #8, !srcloc !14
  %.not4567 = icmp eq i32 %.0.copyload.i4987, 0
  br i1 %.not4567, label %bb.jh, label %bb.jj

bb.jh:                                            ; preds = %bb.jg
  %.val4631 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.apl = getelementptr inbounds nuw i8, ptr %.val4631, i64 %i.api
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 16
  %.0.copyload.i4988 = load i32, ptr %i.apm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4988) #8, !srcloc !14
  %.not4568 = icmp eq i32 %.0.copyload.i4988, 1
  br i1 %.not4568, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.apn = icmp slt i32 %i.aph, %i.sc
  %i.apo = zext i1 %i.apn to i32
  br label %bb.jn

bb.jj:                                            ; preds = %bb.jh, %bb.jg
  %i.app = add i32 %.34170, 1
  %i.apq = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %.pre-phi5540, i32 noundef %.33, i32 noundef 10, i32 noundef 0) ; 3 uses
  %i.apr = tail call i32 @w2c_hermes_quorem(ptr noundef nonnull %0, i32 noundef %i.apq, i32 noundef %.94287) #8 ; 2 uses
  %.not4569 = icmp eq i32 %i.aph, %i.sc
  br i1 %.not4569, label %.loopexit5054, label %.preheader

.loopexit5054:                                    ; preds = %bb.jj, %.loopexit5057
  %.34 = phi i32 [ %.32, %.loopexit5057 ], [ %i.apq, %bb.jj ] ; 4 uses
  %.30 = phi i32 [ %.28, %.loopexit5057 ], [ %i.apr, %bb.jj ]
  %i.aps = icmp sgt i32 %.30, 0
  br i1 %i.aps, label %.loopexit, label %bb.jk

bb.jk:                                            ; preds = %.loopexit5054
  %i.apt = zext i32 %.34 to i64                   ; 4 uses
  %.val4630 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.apu = getelementptr inbounds nuw i8, ptr %.val4630, i64 %i.apt
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 20
  %.0.copyload.i4989 = load i32, ptr %i.apv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4989) #8, !srcloc !14
  %.not4570 = icmp eq i32 %.0.copyload.i4989, 0
  br i1 %.not4570, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %.val4629 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.apw = getelementptr inbounds nuw i8, ptr %.val4629, i64 %i.apt
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 16
  %.0.copyload.i4990 = load i32, ptr %i.apx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4990) #8, !srcloc !14
  %i.apy = icmp slt i32 %.0.copyload.i4990, 2
  br i1 %i.apy, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  br label %bb.jn

.loopexit:                                        ; preds = %.preheader5055, %.preheader, %.loopexit5054
  %.35 = phi i32 [ %.33, %.preheader ], [ %.34, %.loopexit5054 ], [ %.31, %.preheader5055 ] ; 3 uses
  %.24213 = phi i32 [ %i.apg, %.preheader ], [ -1, %.loopexit5054 ], [ %i.aop, %.preheader5055 ] ; 2 uses
  %.not4571 = icmp eq i32 %.35, 0
  br i1 %.not4571, label %bb.jq, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre5541 = zext i32 %.35 to i64
  br label %bb.jn

bb.jn:                                            ; preds = %.loopexit._crit_edge, %bb.jl, %bb.jm, %bb.ji, %bb.je
  %.pre-phi5542 = phi i64 [ %.pre5541, %.loopexit._crit_edge ], [ %i.apt, %bb.jl ], [ %i.apt, %bb.jm ], [ %i.api, %bb.ji ], [ %i.aoq, %bb.je ] ; 2 uses
  %.36 = phi i32 [ %.35, %.loopexit._crit_edge ], [ %.34, %bb.jl ], [ %.34, %bb.jm ], [ %.33, %bb.ji ], [ %.31, %bb.je ] ; 2 uses
  %.34214 = phi i32 [ %.24213, %.loopexit._crit_edge ], [ 0, %bb.jl ], [ -1, %bb.jm ], [ %i.apo, %bb.ji ], [ %i.aox, %bb.je ] ; 2 uses
  %.val4628 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.apz = getelementptr inbounds nuw i8, ptr %.val4628, i64 %.pre-phi5542
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 4
  %.0.copyload.i4991 = load i32, ptr %i.aqa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4991) #8, !srcloc !14
  %i.aqb = icmp sgt i32 %.0.copyload.i4991, 7
  br i1 %i.aqb, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.36) #8
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jn
  %i.aqc = shl i32 %.0.copyload.i4991, 2
  %i.aqd = add i32 %i.aqc, %i.c
  %i.aqe = zext i32 %i.aqd to i64
  %i.aqf = add nuw nsw i64 %i.aqe, 20             ; 2 uses
  %.val4627 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqg = getelementptr inbounds nuw i8, ptr %.val4627, i64 %i.aqf
  %.0.copyload.i4992 = load i32, ptr %i.aqg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4992) #8, !srcloc !14
  %.val4722 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqh = getelementptr inbounds nuw i8, ptr %.val4722, i64 %.pre-phi5542
  store i32 %.0.copyload.i4992, ptr %i.aqh, align 1
  %.val4721 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqi = getelementptr inbounds nuw i8, ptr %.val4721, i64 %i.aqf
  store i32 %.36, ptr %i.aqi, align 1
  br label %bb.jq

bb.jq:                                            ; preds = %.loopexit, %bb.jp, %bb.jo
  %.44215 = phi i32 [ %.24213, %.loopexit ], [ %.34214, %bb.jo ], [ %.34214, %bb.jp ] ; 3 uses
  %.not4572 = icmp eq i32 %.94287, 0
  br i1 %.not4572, label %bb.ju, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aqj = zext i32 %.94287 to i64                ; 2 uses
  %.val4626 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqk = getelementptr inbounds nuw i8, ptr %.val4626, i64 %i.aqj
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 4
  %.0.copyload.i4993 = load i32, ptr %i.aql, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4993) #8, !srcloc !14
  %i.aqm = icmp sgt i32 %.0.copyload.i4993, 7
  br i1 %i.aqm, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.94287) #8
  br label %bb.ju

bb.jt:                                            ; preds = %bb.jr
  %i.aqn = shl i32 %.0.copyload.i4993, 2
  %i.aqo = add i32 %i.aqn, %i.c
  %i.aqp = zext i32 %i.aqo to i64
  %i.aqq = add nuw nsw i64 %i.aqp, 20             ; 2 uses
  %.val4625 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqr = getelementptr inbounds nuw i8, ptr %.val4625, i64 %i.aqq
  %.0.copyload.i4994 = load i32, ptr %i.aqr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4994) #8, !srcloc !14
  %.val4720 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqs = getelementptr inbounds nuw i8, ptr %.val4720, i64 %i.aqj
  store i32 %.0.copyload.i4994, ptr %i.aqs, align 1
  %.val4719 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqt = getelementptr inbounds nuw i8, ptr %.val4719, i64 %i.aqq
  store i32 %.94287, ptr %i.aqt, align 1
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jq, %bb.jt, %bb.js
  br i1 %i.ajs, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.aqu = icmp sgt i32 %.44215, 0
  br i1 %i.aqu, label %bb.kq, label %.sink.split

bb.jw:                                            ; preds = %bb.ju
  %i.aqv = icmp slt i32 %.44215, 0
  br i1 %i.aqv, label %bb.jx, label %bb.jz

bb.jx:                                            ; preds = %bb.jw
  br i1 %.44247, label %bb.jy, label %bb.kq

bb.jy:                                            ; preds = %bb.jx
  %.val4624 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqw = getelementptr inbounds nuw i8, ptr %.val4624, i64 %i.e
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 2364
  %.0.copyload.i4995 = load i32, ptr %i.aqx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4995) #8, !srcloc !14
  br label %bb.km

bb.jz:                                            ; preds = %bb.jw
  %.not4573 = icmp eq i32 %.44215, 0
  br i1 %.not4573, label %bb.kc, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  br i1 %.44247, label %bb.kq, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %.val4623 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aqy = getelementptr inbounds nuw i8, ptr %.val4623, i64 %i.e
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 2364
  %.0.copyload.i4996 = load i32, ptr %i.aqz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4996) #8, !srcloc !14
  br label %bb.ki

bb.kc:                                            ; preds = %bb.jz
  %.val4622 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ara = getelementptr inbounds nuw i8, ptr %.val4622, i64 %i.e
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 2364
  %.0.copyload.i4997 = load i32, ptr %i.arb, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4997) #8, !srcloc !14
  %i.arc = lshr i32 %.0.copyload.i4997, 20
  %i.ard = and i32 %i.arc, 2047
  %i.are = sub nsw i32 %i.ard, %.04190            ; 4 uses
  %i.arf = icmp slt i32 %i.are, 1
  br i1 %i.arf, label %bb.kd, label %bb.kg

bb.kd:                                            ; preds = %bb.kc
  %i.arg = icmp sgt i32 %i.are, -31
  br i1 %i.arg, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %.val4621 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.arh = getelementptr inbounds nuw i8, ptr %.val4621, i64 %i.w
  %.0.copyload.i4998 = load i32, ptr %i.arh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4998) #8, !srcloc !14
  %i.ari = sub nsw i32 1, %i.are
  %i.arj = shl nuw i32 1, %i.ari
  %i.ark = and i32 %.0.copyload.i4998, %i.arj
  %.not4576 = icmp eq i32 %i.ark, 0
  br i1 %.not4576, label %bb.kq, label %bb.kh
end_hunk_3
begin_hunk_4_@w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcMultiplyPart0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x2C0x20bool0x29:bb.a
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
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %bb.s
  %.0502 = phi i32 [ %7, %bb.s ], [ %5, %.preheader ] ; 2 uses
  %i.fp = shl i32 %.0502, 3
  %i.fq = add i32 %i.fp, %2
  %i.fr = zext i32 %i.fq to i64
  %.val546 = load ptr, ptr %i.fo, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.val546, i64 %i.fr
  %.0.copyload.i558 = load i64, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i558) #8, !srcloc !33
  %.not527 = icmp ne i64 %.0.copyload.i558, 0
  %7 = add i32 %.0502, 1                          ; 2 uses
  %.not528 = icmp eq i32 %4, %7
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
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtypedArrayPrototypeToLocaleString0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a

bb.z:                                             ; preds = %bb.x
  %i.fo = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1383, i64 noundef %.0.copyload.i1382) #8 ; 2 uses
  %i.fp = zext i32 %i.fo to i64
  %.val1332 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1332, i64 %i.fp
  %.0.copyload.i1386 = load i64, ptr %i.fq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1386) #8, !srcloc !33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.01149 = phi i32 [ %.0.copyload.i1384, %bb.y ], [ %i.fo, %bb.z ]
  %.01145 = phi i64 [ %.0.copyload.i1382, %bb.y ], [ %.0.copyload.i1386, %bb.z ] ; 2 uses
  %i.fr = icmp ugt i64 %.01145, -844424930131969
  br i1 %i.fr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fs = and i64 %.01145, 4294967295
  %.val1248 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1248, i64 %i.fs
  %.0.copyload.i1387 = load i32, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1387) #8, !srcloc !14
  %i.fu = add i32 %.0.copyload.i1387, -1291845632
  %i.fv = icmp ult i32 %i.fu, -150994944
  %i.fw = select i1 %i.fv, i32 70384, i32 %.01149
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.01160 = phi i32 [ %i.fw, %bb.ab ], [ 70384, %bb.aa ] ; 2 uses
  %i.fx = zext i32 %.01160 to i64
  %.val1331 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1331, i64 %i.fx
  %.0.copyload.i1388 = load i64, ptr %i.fy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1388) #8, !srcloc !33
  %i.fz = icmp ult i64 %.0.copyload.i1388, -844424930131968
  %i.ga = and i64 %.0.copyload.i1388, 4294967295
  %.not1192 = icmp eq i64 %i.ga, 0
  %or.cond = or i1 %i.fz, %.not1192
  br i1 %or.cond, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallable0x3A0x3AexecuteCall00x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.cp, i32 noundef %.01160, i32 noundef %3, i32 noundef %.11156, i32 noundef 0) #8
  %.val1247 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1247, i64 %i.cm
  %.0.copyload.i1389 = load i32, ptr %i.gb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1389) #8, !srcloc !14
  %.not1193 = icmp eq i32 %.0.copyload.i1389, 0
  br i1 %.not1193, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val1330 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %.val1330, i64 %i.cq
  %.0.copyload.i1390 = load i64, ptr %i.gc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1390) #8, !srcloc !33
  %.val1246 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1246, i64 %i.i
  %.0.copyload.i1391 = load i32, ptr %i.gd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1391) #8, !srcloc !14
  %i.ge = zext i32 %.0.copyload.i1391 to i64      ; 2 uses
  %i.gf = add nuw nsw i64 %i.ge, 164              ; 2 uses
  %.val1245 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %.val1245, i64 %i.gf
  %.0.copyload.i1392 = load i32, ptr %i.gg, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1392) #8, !srcloc !14
  %.val1244 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gh = getelementptr inbounds nuw i8, ptr %.val1244, i64 %i.ge
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 168
  %.0.copyload.i1393 = load i32, ptr %i.gi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1393) #8, !srcloc !14
  %i.gj = icmp ult i32 %.0.copyload.i1392, %.0.copyload.i1393
  br i1 %i.gj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gk = add i32 %.0.copyload.i1392, 8
  %.val1293 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gl = getelementptr inbounds nuw i8, ptr %.val1293, i64 %i.gf
  store i32 %i.gk, ptr %i.gl, align 1
  %i.gm = zext i32 %.0.copyload.i1392 to i64
  %.val1321 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gn = getelementptr inbounds nuw i8, ptr %.val1321, i64 %i.gm
  store i64 %.0.copyload.i1390, ptr %i.gn, align 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.go = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1391, i64 noundef %.0.copyload.i1390) #8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.21157 = phi i32 [ %.0.copyload.i1392, %bb.af ], [ %i.go, %bb.ag ]
  %i.gp = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.21157) ; 2 uses
  %i.gq = icmp eq i32 %i.gp, -1
  br i1 %i.gq, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gr = zext i32 %i.gp to i64
  %i.gs = or disjoint i64 %i.gr, -844424930131968 ; 2 uses
  %.val1243 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gt = getelementptr inbounds nuw i8, ptr %.val1243, i64 %i.i
  %.0.copyload.i1394 = load i32, ptr %i.gt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1394) #8, !srcloc !14
  %i.gu = zext i32 %.0.copyload.i1394 to i64      ; 2 uses
  %i.gv = add nuw nsw i64 %i.gu, 164              ; 2 uses
  %.val1242 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %.val1242, i64 %i.gv
  %.0.copyload.i1395 = load i32, ptr %i.gw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1395) #8, !srcloc !14
  %.val1241 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1241, i64 %i.gu
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 168
  %.0.copyload.i1396 = load i32, ptr %i.gy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1396) #8, !srcloc !14
  %.not1194 = icmp ult i32 %.0.copyload.i1395, %.0.copyload.i1396
  br i1 %.not1194, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.gz = add i32 %.0.copyload.i1395, 8
  %.val1292 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %.val1292, i64 %i.gv
  store i32 %i.gz, ptr %i.ha, align 1
  %i.hb = zext i32 %.0.copyload.i1395 to i64      ; 2 uses
  %.val1320 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1320, i64 %i.hb
  store i64 %i.gs, ptr %i.hc, align 1
  br label %bb.an

bb.ak:                                            ; preds = %bb.ac
  %.val1291 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1291, i64 %i.e
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 264
  store i32 0, ptr %i.he, align 1
  %.val1319 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %.val1319, i64 %i.e
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 256
  store i64 124554051585, ptr %i.hg, align 1
  %.val1290 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1290, i64 %i.e
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 240
  store i32 3, ptr %i.hi, align 1
  %.val1289 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1289, i64 %i.cm
  store i32 51172, ptr %i.hj, align 1
  %i.hk = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.cp) #8
  %i.hl = zext i32 %1 to i64
  %.val1288 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hm = getelementptr inbounds nuw i8, ptr %.val1288, i64 %i.hl
  store i32 %i.hk, ptr %i.hm, align 1
  br label %bb.bx

bb.al:                                            ; preds = %bb.ah, %bb.ad
  %i.hn = zext i32 %1 to i64
  %.val1287 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ho = getelementptr inbounds nuw i8, ptr %.val1287, i64 %i.hn
  store i32 0, ptr %i.ho, align 1
  br label %bb.bx

bb.am:                                            ; preds = %bb.ai
  %i.hp = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1394, i64 noundef %i.gs) #8 ; 2 uses
  %.pre1475 = zext i32 %i.hp to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pre-phi1476 = phi i64 [ %.pre1475, %bb.am ], [ %i.hb, %bb.aj ]
  %.31158 = phi i32 [ %i.hp, %bb.am ], [ %.0.copyload.i1395, %bb.aj ]
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_setOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.cr, i32 noundef %i.bk, i32 noundef %3, i32 noundef %.01152, i32 noundef %.31158) #8
  %.val1240 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hq = getelementptr inbounds nuw i8, ptr %.val1240, i64 %.pre-phi1476
  %.0.copyload.i1397 = load i32, ptr %i.hq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1397) #8, !srcloc !14
  %i.hr = zext i32 %.0.copyload.i1397 to i64
  %.val1349 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1349, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %.0.copyload.i1398 = load i32, ptr %i.ht, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1398) #8, !srcloc !36
  %.val1239 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %.val1239, i64 %i.q
  %.0.copyload.i1399 = load i32, ptr %i.hu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1399) #8, !srcloc !14
  %i.hv = add i32 %.0.copyload.i1399, %i.ce
  %i.hw = zext i32 %i.hv to i64
  %.val1238 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hx = getelementptr inbounds nuw i8, ptr %.val1238, i64 %i.hw
  %.0.copyload.i1400 = load i32, ptr %i.hx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1400) #8, !srcloc !14
  %.val1286 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hy = getelementptr inbounds nuw i8, ptr %.val1286, i64 %i.u
  store i32 %.0.copyload.i1371, ptr %i.hy, align 1
  %.val1285 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %.val1285, i64 %i.z
  store i32 %.0.copyload.i1370, ptr %i.hz, align 1
  %i.ia = add i32 %.0.copyload.i1400, 128
  %.val1284 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ib = getelementptr inbounds nuw i8, ptr %.val1284, i64 %i.x
  store i32 %i.ia, ptr %i.ib, align 1
  %i.ic = and i32 %.0.copyload.i1398, 2147483647
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = add i64 %.01144, %i.id                  ; 3 uses
  %i.if = lshr i64 %i.ie, 32
  %i.ig = trunc nuw i64 %i.if to i32
  %i.ih = or i32 %.01147, %i.ig                   ; 2 uses
  %i.ii = add i32 %.01152, 1                      ; 2 uses
  %.not1195 = icmp eq i32 %i.ii, %.0.copyload.i1365
  br i1 %.not1195, label %bb.ao, label %bb.n

bb.ao:                                            ; preds = %bb.an
  %.not1196 = icmp eq i32 %i.ih, 0
  br i1 %.not1196, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val1283 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ij = getelementptr inbounds nuw i8, ptr %.val1283, i64 %i.e
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 264
  store i32 0, ptr %i.ik, align 1
  %.val1318 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %.val1318, i64 %i.e
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 256
  store i64 115964116993, ptr %i.im, align 1
  %.val1282 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %.val1282, i64 %i.cq
  store i32 3, ptr %i.in, align 1
  %.val1281 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.io = getelementptr inbounds nuw i8, ptr %.val1281, i64 %i.cm
  store i32 22519, ptr %i.io, align 1
  %i.ip = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.cp) #8 ; 0 uses
  br label %bb.bw

bb.aq:                                            ; preds = %bb.ao
  %i.iq = trunc i64 %i.ie to i32                  ; 3 uses
  %i.ir = icmp ult i32 %i.iq, 65536
  br i1 %i.ir, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADynamicStringPrimitive0x3Cchar16_t0x2C0x20false0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.cp, i32 noundef %3, i32 noundef %i.iq) #8
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.cp, i32 noundef %3, i32 noundef %i.iq) #8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.val1237 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.is = getelementptr inbounds nuw i8, ptr %.val1237, i64 %i.cm
  %.0.copyload.i1401 = load i32, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1401) #8, !srcloc !14
  %.not1197 = icmp eq i32 %.0.copyload.i1401, 0
  br i1 %.not1197, label %bb.bw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val1348 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.it = getelementptr inbounds nuw i8, ptr %.val1348, i64 %i.cq
  %.0.copyload.i1402 = load i32, ptr %i.it, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1402) #8, !srcloc !36
  %i.iu = zext i32 %.0.copyload.i1402 to i64
  %i.iv = or disjoint i64 %i.iu, -844424930131968 ; 2 uses
  %.val1236 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iw = getelementptr inbounds nuw i8, ptr %.val1236, i64 %i.i
  %.0.copyload.i1403 = load i32, ptr %i.iw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1403) #8, !srcloc !14
  %i.ix = zext i32 %.0.copyload.i1403 to i64      ; 2 uses
  %i.iy = add nuw nsw i64 %i.ix, 164              ; 2 uses
  %.val1235 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iz = getelementptr inbounds nuw i8, ptr %.val1235, i64 %i.iy
  %.0.copyload.i1404 = load i32, ptr %i.iz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1404) #8, !srcloc !14
  %.val1234 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %.val1234, i64 %i.ix
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 168
  %.0.copyload.i1405 = load i32, ptr %i.jb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1405) #8, !srcloc !14
  %i.jc = icmp ult i32 %.0.copyload.i1404, %.0.copyload.i1405
  br i1 %i.jc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jd = add i32 %.0.copyload.i1404, 8
  %.val1280 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.je = getelementptr inbounds nuw i8, ptr %.val1280, i64 %i.iy
  store i32 %i.jd, ptr %i.je, align 1
  %i.jf = zext i32 %.0.copyload.i1404 to i64
  %.val1317 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jg = getelementptr inbounds nuw i8, ptr %.val1317, i64 %i.jf
  store i64 %i.iv, ptr %i.jg, align 1
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.jh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1403, i64 noundef %i.iv) #8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.4 = phi i32 [ %.0.copyload.i1404, %bb.av ], [ %i.jh, %bb.aw ]
  %i.ji = add nuw nsw i64 %i.e, 28                ; 5 uses
  %.val1279 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jj = getelementptr inbounds nuw i8, ptr %.val1279, i64 %i.ji
  store i32 0, ptr %i.jj, align 1
  %.val1278 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jk = getelementptr inbounds nuw i8, ptr %.val1278, i64 %i.ck
  store i32 %.4, ptr %i.jk, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jl = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 36
  store i8 1, ptr %i.jm, align 1
  %.val1277 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1277, i64 %i.cl
  store i32 %3, ptr %i.jn, align 1
  %.val1233 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jo = getelementptr inbounds nuw i8, ptr %.val1233, i64 %i.i
  %.0.copyload.i1406 = load i32, ptr %i.jo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1406) #8, !srcloc !14
  %i.jp = zext i32 %.0.copyload.i1406 to i64      ; 2 uses
  %i.jq = add nuw nsw i64 %i.jp, 164              ; 2 uses
  %.val1232 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jr = getelementptr inbounds nuw i8, ptr %.val1232, i64 %i.jq
  %.0.copyload.i1407 = load i32, ptr %i.jr, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1407) #8, !srcloc !14
  %.val1231 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.js = getelementptr inbounds nuw i8, ptr %.val1231, i64 %i.jp
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 168
  %.0.copyload.i1408 = load i32, ptr %i.jt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1408) #8, !srcloc !14
  %i.ju = icmp ult i32 %.0.copyload.i1407, %.0.copyload.i1408
  br i1 %i.ju, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jv = add i32 %.0.copyload.i1407, 8
  %.val1276 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1276, i64 %i.jq
  store i32 %i.jv, ptr %i.jw, align 1
  %i.jx = zext i32 %.0.copyload.i1407 to i64
  %.val1316 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jy = getelementptr inbounds nuw i8, ptr %.val1316, i64 %i.jx
  store i64 -844424930131968, ptr %i.jy, align 1
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.jz = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1406, i64 noundef -844424930131968) #8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.11150 = phi i32 [ %.0.copyload.i1407, %bb.ay ], [ %i.jz, %bb.az ] ; 3 uses
  %i.ka = zext i32 %i.bk to i64                   ; 2 uses
  %.val1230 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kb = getelementptr inbounds nuw i8, ptr %.val1230, i64 %i.ka
  %.0.copyload.i1409 = load i32, ptr %i.kb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1409) #8, !srcloc !14
  %i.kc = zext i32 %.0.copyload.i1409 to i64      ; 3 uses
  %.val1229 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kd = getelementptr inbounds nuw i8, ptr %.val1229, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 20
  %.0.copyload.i1410 = load i32, ptr %i.ke, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1410) #8, !srcloc !14
  %.not1198 = icmp eq i32 %.0.copyload.i1410, 0
  br i1 %.not1198, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %.val1228 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kf = getelementptr inbounds nuw i8, ptr %.val1228, i64 %i.kc
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %.0.copyload.i1411 = load i32, ptr %i.kg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1411) #8, !srcloc !14
  %.not1199 = icmp eq i32 %.0.copyload.i1411, 0
  br i1 %.not1199, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val1227 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kh = getelementptr inbounds nuw i8, ptr %.val1227, i64 %i.kc
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 28
  %.0.copyload.i1412 = load i32, ptr %i.ki, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1412) #8, !srcloc !14
  %i.kj = zext i32 %.0.copyload.i1412 to i64
  %.val1347 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1347, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.0.copyload.i1413 = load i32, ptr %i.kl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1413) #8, !srcloc !36
  %i.km = and i32 %.0.copyload.i1413, -8
  %i.kn = zext i32 %i.km to i64
  %i.ko = or disjoint i64 %i.kn, -844424930131968
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.ba, %bb.bc
  %.11146 = phi i64 [ -844424930131968, %bb.ba ], [ -844424930131968, %bb.bb ], [ %i.ko, %bb.bc ] ; 2 uses
  %i.kp = zext i32 %.11150 to i64                 ; 2 uses
  %.val1315 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1315, i64 %i.kp
  store i64 %.11146, ptr %i.kq, align 1
  %i.kr = and i64 %.11146, 4294967295
  %.val1226 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ks = getelementptr inbounds nuw i8, ptr %.val1226, i64 %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %.0.copyload.i1414 = load i32, ptr %i.kt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1414) #8, !srcloc !14
  %i.ku = and i32 %.0.copyload.i1414, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.cj, i32 noundef %.11150, i32 noundef %i.ku) #8
  %.not1200 = icmp eq i32 %.0.copyload.i1365, 1
  br i1 %.not1200, label %.loopexit1447, label %.preheader1446

.preheader1446:                                   ; preds = %bb.bd, %bb.bv
  %.01159 = phi i32 [ %i.po, %bb.bv ], [ 1, %bb.bd ] ; 4 uses
  %.val1329 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kv = getelementptr inbounds nuw i8, ptr %.val1329, i64 %i.e
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  %.0.copyload.i1415 = load i64, ptr %i.kw, align 1 ; 4 uses
end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtypedArrayPrototypeToLocaleString0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.mg = getelementptr inbounds nuw i8, ptr %.val1343, i64 %i.mf
  %.0.copyload.i1425 = load i8, ptr %i.mg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1425) #8, !srcloc !34
  %i.mh = zext i32 %.11153 to i64
  %.val1359 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mi = sext i8 %.0.copyload.i1425 to i16
  %i.mj = getelementptr inbounds nuw i8, ptr %.val1359, i64 %i.mh
  store i16 %i.mi, ptr %i.mj, align 1
  %i.mk = add i32 %.11153, 2                      ; 2 uses
  %i.ml = add i32 %.11161, 1                      ; 2 uses
  %i.mm = add nuw nsw i32 %.11148, 1              ; 2 uses
  %.not1204 = icmp eq i32 %i.mm, %i.me
  br i1 %.not1204, label %.loopexit1445, label %.preheader

.loopexit1445:                                    ; preds = %.preheader, %bb.bn
  %.21162 = phi i32 [ %i.kz, %bb.bn ], [ %i.ml, %.preheader ]
  %.21154 = phi i32 [ %i.md, %bb.bn ], [ %i.mk, %.preheader ]
  %i.mn = icmp ult i64 %.0.copyload.i1415, 34359738368
  br i1 %i.mn, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %.loopexit1445
  %i.mo = add i32 %i.ky, %i.kz
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %bb.bo
  %.31163 = phi i32 [ %.21162, %bb.bo ], [ %i.oe, %bb.bp ] ; 2 uses
  %.3 = phi i32 [ %.21154, %bb.bo ], [ %i.od, %bb.bp ] ; 2 uses
  %i.mp = zext i32 %.31163 to i64                 ; 8 uses
  %.val1342 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mq = getelementptr inbounds nuw i8, ptr %.val1342, i64 %i.mp
  %.0.copyload.i1426 = load i8, ptr %i.mq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1426) #8, !srcloc !34
  %i.mr = zext i32 %.3 to i64                     ; 8 uses
  %.val1358 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ms = sext i8 %.0.copyload.i1426 to i16
  %i.mt = getelementptr inbounds nuw i8, ptr %.val1358, i64 %i.mr
  store i16 %i.ms, ptr %i.mt, align 1
  %.val1341 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mu = getelementptr inbounds nuw i8, ptr %.val1341, i64 %i.mp
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 1
  %.0.copyload.i1427 = load i8, ptr %i.mv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1427) #8, !srcloc !34
  %.val1357 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mw = sext i8 %.0.copyload.i1427 to i16
  %i.mx = getelementptr inbounds nuw i8, ptr %.val1357, i64 %i.mr
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 2
  store i16 %i.mw, ptr %i.my, align 1
  %.val1340 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mz = getelementptr inbounds nuw i8, ptr %.val1340, i64 %i.mp
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 2
  %.0.copyload.i1428 = load i8, ptr %i.na, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1428) #8, !srcloc !34
  %.val1356 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nb = sext i8 %.0.copyload.i1428 to i16
  %i.nc = getelementptr inbounds nuw i8, ptr %.val1356, i64 %i.mr
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  store i16 %i.nb, ptr %i.nd, align 1
  %.val1339 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ne = getelementptr inbounds nuw i8, ptr %.val1339, i64 %i.mp
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 3
  %.0.copyload.i1429 = load i8, ptr %i.nf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1429) #8, !srcloc !34
  %.val1355 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ng = sext i8 %.0.copyload.i1429 to i16
  %i.nh = getelementptr inbounds nuw i8, ptr %.val1355, i64 %i.mr
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 6
  store i16 %i.ng, ptr %i.ni, align 1
  %.val1338 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nj = getelementptr inbounds nuw i8, ptr %.val1338, i64 %i.mp
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %.0.copyload.i1430 = load i8, ptr %i.nk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1430) #8, !srcloc !34
  %.val1354 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nl = sext i8 %.0.copyload.i1430 to i16
  %i.nm = getelementptr inbounds nuw i8, ptr %.val1354, i64 %i.mr
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store i16 %i.nl, ptr %i.nn, align 1
  %.val1337 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.no = getelementptr inbounds nuw i8, ptr %.val1337, i64 %i.mp
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 5
  %.0.copyload.i1431 = load i8, ptr %i.np, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1431) #8, !srcloc !34
  %.val1353 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nq = sext i8 %.0.copyload.i1431 to i16
  %i.nr = getelementptr inbounds nuw i8, ptr %.val1353, i64 %i.mr
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 10
  store i16 %i.nq, ptr %i.ns, align 1
  %.val1336 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nt = getelementptr inbounds nuw i8, ptr %.val1336, i64 %i.mp
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 6
  %.0.copyload.i1432 = load i8, ptr %i.nu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1432) #8, !srcloc !34
  %.val1352 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nv = sext i8 %.0.copyload.i1432 to i16
  %i.nw = getelementptr inbounds nuw i8, ptr %.val1352, i64 %i.mr
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 12
  store i16 %i.nv, ptr %i.nx, align 1
  %.val1335 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ny = getelementptr inbounds nuw i8, ptr %.val1335, i64 %i.mp
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 7
  %.0.copyload.i1433 = load i8, ptr %i.nz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1433) #8, !srcloc !34
  %.val1351 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oa = sext i8 %.0.copyload.i1433 to i16
  %i.ob = getelementptr inbounds nuw i8, ptr %.val1351, i64 %i.mr
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 14
  store i16 %i.oa, ptr %i.oc, align 1
  %i.od = add i32 %.3, 16
  %i.oe = add i32 %.31163, 8                      ; 2 uses
  %.not1205 = icmp eq i32 %i.oe, %i.mo
  br i1 %.not1205, label %.loopexit, label %bb.bp

.loopexit:                                        ; preds = %bb.bp, %bb.bm, %bb.bh, %.loopexit1445, %bb.bi
  %.5 = phi i32 [ 0, %bb.bm ], [ %i.ky, %bb.bi ], [ 0, %bb.bh ], [ %i.ky, %.loopexit1445 ], [ %i.ky, %bb.bp ]
  %.val1218 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.of = getelementptr inbounds nuw i8, ptr %.val1218, i64 %i.ji
  %.0.copyload.i1434 = load i32, ptr %i.of, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1434) #8, !srcloc !14
  %i.og = add i32 %.0.copyload.i1434, %.5
  %.val1275 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oh = getelementptr inbounds nuw i8, ptr %.val1275, i64 %i.ji
  store i32 %i.og, ptr %i.oh, align 1
  %.val1217 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oi = getelementptr inbounds nuw i8, ptr %.val1217, i64 %i.ka
  %.0.copyload.i1435 = load i32, ptr %i.oi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1435) #8, !srcloc !14
  %i.oj = zext i32 %.0.copyload.i1435 to i64      ; 3 uses
  %.val1216 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ok = getelementptr inbounds nuw i8, ptr %.val1216, i64 %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 20
  %.0.copyload.i1436 = load i32, ptr %i.ol, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1436) #8, !srcloc !14
  %i.om = icmp ult i32 %.01159, %.0.copyload.i1436
  br i1 %i.om, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %.loopexit
  %.val1215 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.on = getelementptr inbounds nuw i8, ptr %.val1215, i64 %i.oj
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %.0.copyload.i1437 = load i32, ptr %i.oo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1437) #8, !srcloc !14
  %.not1207 = icmp ugt i32 %.0.copyload.i1437, %.01159
  br i1 %.not1207, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %.val1214 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.op = getelementptr inbounds nuw i8, ptr %.val1214, i64 %i.oj
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 28
  %.0.copyload.i1438 = load i32, ptr %i.oq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1438) #8, !srcloc !14
  %i.or = sub nuw i32 %.01159, %.0.copyload.i1436 ; 4 uses
  %i.os = icmp ult i32 %i.or, 4096
  br i1 %i.os, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ot = shl nuw nsw i32 %i.or, 2
  %i.ou = add i32 %.0.copyload.i1438, %i.ot
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.ov = add i32 %i.or, -4096
  %i.ow = lshr i32 %i.ov, 8
  %i.ox = and i32 %i.ow, 16777212
  %i.oy = add nuw nsw i32 %i.ox, 16392
  %i.oz = add i32 %i.oy, %.0.copyload.i1438
  %i.pa = zext i32 %i.oz to i64
  %.val1213 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pb = getelementptr inbounds nuw i8, ptr %.val1213, i64 %i.pa
  %.0.copyload.i1439 = load i32, ptr %i.pb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1439) #8, !srcloc !14
  %i.pc = shl i32 %i.or, 2
  %i.pd = and i32 %i.pc, 4092
  %i.pe = add i32 %.0.copyload.i1439, %i.pd
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.2.in = phi i32 [ %i.ou, %bb.bs ], [ %i.pe, %bb.bt ]
  %.2 = add i32 %.2.in, 8
  %i.pf = zext i32 %.2 to i64
  %.val1212 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pg = getelementptr inbounds nuw i8, ptr %.val1212, i64 %i.pf
  %.0.copyload.i1440 = load i32, ptr %i.pg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1440) #8, !srcloc !14
  %i.ph = and i32 %.0.copyload.i1440, -8
  %i.pi = zext i32 %i.ph to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bq, %.loopexit, %bb.bu
  %.6 = phi i64 [ 0, %.loopexit ], [ 0, %bb.bq ], [ %i.pi, %bb.bu ] ; 2 uses
  %i.pj = or disjoint i64 %.6, -844424930131968
  %.val1314 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pk = getelementptr inbounds nuw i8, ptr %.val1314, i64 %i.kp
  store i64 %i.pj, ptr %i.pk, align 1
  %.val1211 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pl = getelementptr inbounds nuw i8, ptr %.val1211, i64 %.6
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 4
  %.0.copyload.i1441 = load i32, ptr %i.pm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1441) #8, !srcloc !14
  %i.pn = and i32 %.0.copyload.i1441, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.cj, i32 noundef %.11150, i32 noundef %i.pn) #8
  %i.po = add i32 %.01159, 1                      ; 2 uses
  %.not1208 = icmp eq i32 %i.po, %.0.copyload.i1365
  br i1 %.not1208, label %.loopexit1447, label %.preheader1446

.loopexit1447:                                    ; preds = %bb.bv, %bb.bd
  %.val1210 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pp = getelementptr inbounds nuw i8, ptr %.val1210, i64 %i.ck
  %.0.copyload.i1442 = load i32, ptr %i.pp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1442) #8, !srcloc !14
  %i.pq = zext i32 %.0.copyload.i1442 to i64
  %.val1346 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pr = getelementptr inbounds nuw i8, ptr %.val1346, i64 %i.pq
  %.0.copyload.i1443 = load i32, ptr %i.pr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1443) #8, !srcloc !36
  %i.ps = zext i32 %.0.copyload.i1443 to i64
  %i.pt = zext i32 %1 to i64                      ; 2 uses
  %.val1274 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pu = getelementptr inbounds nuw i8, ptr %.val1274, i64 %i.pt
  store i32 1, ptr %i.pu, align 1
  %i.pv = or disjoint i64 %i.ps, -844424930131968
  %.val1313 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pw = getelementptr inbounds nuw i8, ptr %.val1313, i64 %i.pt
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  store i64 %i.pv, ptr %i.px, align 1
  br label %bb.bx

bb.bw:                                            ; preds = %bb.at, %bb.ap
  %i.py = zext i32 %1 to i64
  %.val1273 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pz = getelementptr inbounds nuw i8, ptr %.val1273, i64 %i.py
  store i32 0, ptr %i.pz, align 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.loopexit1447, %bb.al, %bb.ak, %bb.w, %bb.r, %bb.i, %bb.g, %bb.b
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ab) #8
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AcreateASCIIRef0x28char0x20const0x2A0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArray0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallable0x3A0x3AexecuteCall00x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20bool0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_setOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADynamicStringPrimitive0x3Cchar16_t0x2C0x20false0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtypedArrayPrototypeSymbolToStringTag0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = zext i32 %4 to i64
  %.val66 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.val66, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.d = zext i32 %.0.copyload.i to i64
  %.val70 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %.val70, i64 %i.d
  %.0.copyload.i71 = load i64, ptr %i.e, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i71) #8, !srcloc !33
  %i.f = icmp ugt i64 %.0.copyload.i71, -844424930131969
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %.0.copyload.i71, 4294967295     ; 2 uses
  %.val65 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val65, i64 %i.g
  %.0.copyload.i72 = load i32, ptr %i.h, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i72) #8, !srcloc !14
  %i.i = add i32 %.0.copyload.i72, -436207616
  %i.j = icmp ult i32 %i.i, 855638016
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val69 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %.val69, i64 70384
  %.0.copyload.i73 = load i64, ptr %i.k, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i73) #8, !srcloc !33
  %.pre = and i64 %.0.copyload.i73, 4294967295
  %i.l = icmp ult i64 %.0.copyload.i73, -844424930131968
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.g, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.063 = phi i1 [ false, %bb.b ], [ %i.l, %bb.c ]
  %.not = icmp eq i64 %.pre-phi, 0
  %or.cond = or i1 %.063, %.not
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 %.pre-phi
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %.0.copyload.i74 = load i8, ptr %i.n, align 1   ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i74) #8, !srcloc !13
  %switch.tableidx = add i8 %.0.copyload.i74, -35
  %i.o = icmp ult i8 %switch.tableidx, 11
  br i1 %i.o, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.e
  %i.p = add i32 %3, 5476
  %narrow = add nuw nsw i8 %.0.copyload.i74, -75
  %switch.offset = zext i8 %narrow to i32
  %i.q = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringPrim0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef %3, i32 noundef %switch.offset) #8
  %i.r = zext i32 %i.q to i64
  %i.s = or disjoint i64 %i.r, -844424930131968
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %switch.lookup
  %.062 = phi i64 [ -1688849860263936, %bb.d ], [ %i.s, %switch.lookup ], [ -1688849860263936, %bb.e ]
  %i.t = zext i32 %1 to i64                       ; 2 uses
  %.val68 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.val68, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.062, ptr %i.v, align 1
  %.val67 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.t
  store i32 1, ptr %i.w, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtypedArrayPrototypeSubarray0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 6 uses
  %i.c = add i32 %i.b, -64                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 52 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val478 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val478, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.g = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSTypedArrayBase0x3A0x3AvalidateTypedArray0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20bool0x29(ptr noundef %0, i32 noundef %3, i32 noundef %.0.copyload.i, i32 noundef 0) #8
  %.not = icmp eq i32 %i.g, 0
  %.val490 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.h
  store i32 0, ptr %i.i, align 1
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.j = zext i32 %.0.copyload.i to i64           ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.j
  %.0.copyload.i508 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i508) #8, !srcloc !14
  %i.l = zext i32 %.0.copyload.i508 to i64
  %.val476 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %.val476, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.0.copyload.i509 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i509) #8, !srcloc !14
  %i.o = add i32 %i.b, -40                        ; 2 uses
  %i.p = add i32 %.0.copyload.i, -8
  %.val475 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.val475, i64 %i.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.0.copyload.i510 = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i510) #8, !srcloc !14
  %.not453 = icmp eq i32 %.0.copyload.i510, 0
  %i.s = select i1 %.not453, i32 70392, i32 %i.p
  %i.t = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.u = add i32 %i.t, -16                        ; 3 uses
  store i32 %i.u, ptr %i.a, align 8, !tbaa !20
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumber_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.u, i32 noundef %3, i32 noundef %i.s)
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.v
  %.0.copyload.i.i = load i32, ptr %i.w, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #8, !srcloc !14
  %.not.i = icmp eq i32 %.0.copyload.i.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %wasm_trunc.exit.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = zext i32 %i.o to i64
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29.exit

wasm_trunc.exit.i:                                ; preds = %bb.c
  %.val42.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.val42.i, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i44.i = load double, ptr %i.y, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i44.i) #8, !srcloc !35
  %i.z = fcmp uno double %.0.copyload.i44.i, 0.000000e+00
  %i.aa = tail call double @llvm.trunc.f64(double %.0.copyload.i44.i)
  %i.ab = select i1 %i.z, double 0.000000e+00, double %i.aa, !prof !26
  %i.ac = zext i32 %i.o to i64                    ; 2 uses
  %.val43.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.val43.i, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtypedArrayPrototypeJoin0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  store i64 -1688849860263936, ptr %i.da, align 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.db = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i919, i64 noundef -1688849860263936) #8 ; 2 uses
  %.pre = zext i32 %i.db to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre-phi = phi i64 [ %.pre, %bb.u ], [ %i.cz, %bb.t ]
  %.0775 = phi i32 [ %i.db, %bb.u ], [ %.0.copyload.i920, %bb.t ]
  %i.dc = zext i32 %i.cp to i64
  %i.dd = add i32 %i.b, -28
  %i.de = add i32 %i.b, -168                      ; 2 uses
  %i.df = add i32 %i.b, -40
  %i.dg = zext i32 %i.c to i64                    ; 17 uses
  %i.dh = add nuw nsw i64 %i.dg, 16               ; 3 uses
  %i.di = add i32 %i.b, -176                      ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dl = load ptr, ptr @w2c_hermes_t9, align 8   ; 4 uses
  %i.dm = icmp ne ptr %i.dl, null
  br label %bb.w

bb.w:                                             ; preds = %bb.ad, %bb.v
  %.1779 = phi i32 [ 0, %bb.v ], [ %i.gp, %bb.ad ] ; 3 uses
  %.0773 = phi i32 [ 0, %bb.v ], [ %i.go, %bb.ad ]
  %.0771 = phi i64 [ %i.dc, %bb.v ], [ %i.gl, %bb.ad ]
  %.val875 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %.val875, i64 %i.dh
  store i32 %3, ptr %i.dn, align 1
  %.val840 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.do = getelementptr inbounds nuw i8, ptr %.val840, i64 %i.as
  %.0.copyload.i922 = load i32, ptr %i.do, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i922) #8, !srcloc !14
  %.val874 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %.val874, i64 %i.dg
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 164
  store i32 %i.de, ptr %i.dq, align 1
  %.val873 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %.val873, i64 %i.dg
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 152
  store i32 %i.dd, ptr %i.ds, align 1
  %.val872 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %.val872, i64 %i.dg
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i32 %.0.copyload.i922, ptr %i.du, align 1
  %.val871 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %.val871, i64 %i.dg
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 188
  store i32 0, ptr %i.dw, align 1
  %.val870 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dx = getelementptr inbounds nuw i8, ptr %.val870, i64 %i.dg
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 184
  store i32 %i.df, ptr %i.dy, align 1
  %.val869 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %.val869, i64 %i.dg
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 180
  store i32 %i.de, ptr %i.ea, align 1
  %.val895 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %.val895, i64 %i.dg
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 156
  store i64 17179869185, ptr %i.ec, align 1
  %.val868 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %.val868, i64 %i.as
  store i32 %i.di, ptr %i.ed, align 1
  %.val839 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %.val839, i64 %i.j
  %.0.copyload.i923 = load i32, ptr %i.ee, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i923) #8, !srcloc !14
  %i.ef = zext i32 %.0.copyload.i923 to i64
  %.val838 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %.val838, i64 %i.ef
  %.0.copyload.i924 = load i32, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i924) #8, !srcloc !14
  %i.eh = lshr i32 %.0.copyload.i924, 22
  %i.ei = and i32 %i.eh, 1020
  %.val837 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.val837, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 289808
  %.0.copyload.i925 = load i32, ptr %i.el, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i925) #8, !srcloc !14
  %i.em = zext i32 %.0.copyload.i925 to i64
  %.val836 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.en = getelementptr inbounds nuw i8, ptr %.val836, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %.0.copyload.i926 = load i32, ptr %i.eo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i926) #8, !srcloc !14
  %i.ep = load i32, ptr %i.dj, align 4, !tbaa !21
  %i.eq = icmp ult i32 %.0.copyload.i926, %i.ep
  br i1 %i.eq, label %bb.x, label %.critedge, !prof !22

bb.x:                                             ; preds = %bb.w
  %i.er = load ptr, ptr %i.dk, align 8, !tbaa !23
  %i.es = zext i32 %.0.copyload.i926 to i64
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.es ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !25 ; 2 uses
  %.not802 = icmp eq ptr %i.ev, null
  br i1 %.not802, label %.critedge, label %bb.y, !prof !26

bb.y:                                             ; preds = %bb.x
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !28 ; 4 uses
  %i.ex = icmp eq ptr %i.dl, %i.ew
  br i1 %i.ex, label %func_types_eq.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ey = icmp ne ptr %i.ew, null
  %or.cond.i = and i1 %i.dm, %i.ey
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !29

func_types_eq.exit:                               ; preds = %bb.z
  %i.ez = load i128, ptr %i.dl, align 1
  %i.fa = load i128, ptr %i.ew, align 1
  %i.fb = xor i128 %i.ez, %i.fa
  %i.fc = getelementptr i8, ptr %i.dl, i64 16
  %i.fd = getelementptr i8, ptr %i.ew, i64 16
  %i.fe = load i128, ptr %i.fc, align 1
  %i.ff = load i128, ptr %i.fd, align 1
  %i.fg = xor i128 %i.fe, %i.ff
  %i.fh = or i128 %i.fb, %i.fg
  %i.fi = icmp ne i128 %i.fh, 0
  %i.fj = zext i1 %i.fi to i32
  %.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !32

.critedge:                                        ; preds = %bb.z, %bb.x, %bb.w, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.y, %func_types_eq.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !31
  %i.fm = tail call i64 %i.ev(ptr noundef %i.fl, i32 noundef %.0.copyload.i923, i32 noundef %3, i32 noundef %.1779) #8
  %.val894 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fn = getelementptr inbounds nuw i8, ptr %.val894, i64 %.pre-phi
  store i64 %i.fm, ptr %i.fn, align 1
  %i.fo = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0775) ; 2 uses
  %i.fp = icmp eq i32 %i.fo, -1
  br i1 %i.fp, label %bb.ba, label %bb.aa

bb.aa:                                            ; preds = %func_types_eq.exit.thread
  %i.fq = zext i32 %i.fo to i64
  %i.fr = or disjoint i64 %i.fq, -844424930131968 ; 3 uses
  %.val835 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.val835, i64 %i.as
  %.0.copyload.i927 = load i32, ptr %i.fs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i927) #8, !srcloc !14
  %i.ft = zext i32 %.0.copyload.i927 to i64       ; 2 uses
  %i.fu = add nuw nsw i64 %i.ft, 164              ; 2 uses
  %.val834 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fv = getelementptr inbounds nuw i8, ptr %.val834, i64 %i.fu
  %.0.copyload.i928 = load i32, ptr %i.fv, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i928) #8, !srcloc !14
  %.val833 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %.val833, i64 %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 168
  %.0.copyload.i929 = load i32, ptr %i.fx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i929) #8, !srcloc !14
  %i.fy = icmp ult i32 %.0.copyload.i928, %.0.copyload.i929
  br i1 %i.fy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fz = add i32 %.0.copyload.i928, 8
  %.val867 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ga = getelementptr inbounds nuw i8, ptr %.val867, i64 %i.fu
  store i32 %i.fz, ptr %i.ga, align 1
  %i.gb = zext i32 %.0.copyload.i928 to i64
  %.val893 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %.val893, i64 %i.gb
  store i64 %i.fr, ptr %i.gc, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gd = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i927, i64 noundef %i.fr) #8 ; 2 uses
  %i.ge = zext i32 %i.gd to i64
  %.val901 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %.val901, i64 %i.ge
  %.0.copyload.i930 = load i64, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i930) #8, !srcloc !33
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0776 = phi i32 [ %.0.copyload.i928, %bb.ab ], [ %i.gd, %bb.ac ]
  %.0772 = phi i64 [ %i.fr, %bb.ab ], [ %.0.copyload.i930, %bb.ac ]
  %i.gg = and i64 %.0772, 4294967295
  %.val906 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gh = getelementptr inbounds nuw i8, ptr %.val906, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %.0.copyload.i931 = load i32, ptr %i.gi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i931) #8, !srcloc !36
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_setOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.c, i32 noundef %i.ck, i32 noundef %3, i32 noundef %.1779, i32 noundef %.0776) #8
  %i.gj = and i32 %.0.copyload.i931, 2147483647
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = add i64 %.0771, %i.gk                   ; 3 uses
  %i.gm = lshr i64 %i.gl, 32
  %i.gn = trunc nuw i64 %i.gm to i32
  %i.go = or i32 %.0773, %i.gn                    ; 2 uses
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.di) #8
  %i.gp = add i32 %.1779, 1                       ; 2 uses
  %.not803 = icmp eq i32 %i.gp, %.0.copyload.i908
  br i1 %.not803, label %bb.ae, label %bb.w

bb.ae:                                            ; preds = %bb.ad
  %.not804 = icmp eq i32 %i.go, 0
  br i1 %.not804, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val866 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %.val866, i64 %i.dg
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  store i32 0, ptr %i.gr, align 1
  %.val892 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gs = getelementptr inbounds nuw i8, ptr %.val892, i64 %i.dg
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  store i64 115964116993, ptr %i.gt, align 1
  %.val865 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gu = getelementptr inbounds nuw i8, ptr %.val865, i64 %i.dg
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store i32 3, ptr %i.gv, align 1
  %.val864 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %.val864, i64 %i.dh
  store i32 22519, ptr %i.gw, align 1
  %i.gx = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.di) #8 ; 0 uses
  br label %bb.bb

bb.ag:                                            ; preds = %bb.ae
  %i.gy = trunc i64 %i.gl to i32                  ; 3 uses
  %i.gz = icmp ult i32 %i.gy, 65536
  br i1 %i.gz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADynamicStringPrimitive0x3Cchar16_t0x2C0x20false0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.di, i32 noundef %3, i32 noundef %i.gy) #8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.di, i32 noundef %3, i32 noundef %i.gy) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.val832 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %.val832, i64 %i.dh
  %.0.copyload.i932 = load i32, ptr %i.ha, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i932) #8, !srcloc !14
  %.not805 = icmp eq i32 %.0.copyload.i932, 0
  br i1 %.not805, label %bb.bb, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val905 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %.val905, i64 %i.dg
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %.0.copyload.i933 = load i32, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i933) #8, !srcloc !36
  %i.hd = zext i32 %.0.copyload.i933 to i64
  %i.he = or disjoint i64 %i.hd, -844424930131968 ; 2 uses
  %.val831 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %.val831, i64 %i.as
  %.0.copyload.i934 = load i32, ptr %i.hf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i934) #8, !srcloc !14
  %i.hg = zext i32 %.0.copyload.i934 to i64       ; 2 uses
  %i.hh = add nuw nsw i64 %i.hg, 164              ; 2 uses
  %.val830 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hi = getelementptr inbounds nuw i8, ptr %.val830, i64 %i.hh
  %.0.copyload.i935 = load i32, ptr %i.hi, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i935) #8, !srcloc !14
  %.val829 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %.val829, i64 %i.hg
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 168
  %.0.copyload.i936 = load i32, ptr %i.hk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i936) #8, !srcloc !14
  %i.hl = icmp ult i32 %.0.copyload.i935, %.0.copyload.i936
  br i1 %i.hl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hm = add i32 %.0.copyload.i935, 8
  %.val863 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %.val863, i64 %i.hh
  store i32 %i.hm, ptr %i.hn, align 1
  %i.ho = zext i32 %.0.copyload.i935 to i64
  %.val891 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hp = getelementptr inbounds nuw i8, ptr %.val891, i64 %i.ho
  store i64 %i.he, ptr %i.hp, align 1
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.hq = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i934, i64 noundef %i.he) #8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.2 = phi i32 [ %.0.copyload.i935, %bb.al ], [ %i.hq, %bb.am ]
  %.val862 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hr = getelementptr inbounds nuw i8, ptr %.val862, i64 %i.dg
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store i32 0, ptr %i.hs, align 1
  %.val861 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ht = getelementptr inbounds nuw i8, ptr %.val861, i64 %i.dg
  store i32 %.2, ptr %i.ht, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dg
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  store i8 1, ptr %i.hv, align 1
  %.val860 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hw = getelementptr inbounds nuw i8, ptr %.val860, i64 %i.dg
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 %3, ptr %i.hx, align 1
  %.val828 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hy = getelementptr inbounds nuw i8, ptr %.val828, i64 %i.as
  %.0.copyload.i937 = load i32, ptr %i.hy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i937) #8, !srcloc !14
  %i.hz = zext i32 %.0.copyload.i937 to i64       ; 2 uses
  %i.ia = add nuw nsw i64 %i.hz, 164              ; 2 uses
  %.val827 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ib = getelementptr inbounds nuw i8, ptr %.val827, i64 %i.ia
  %.0.copyload.i938 = load i32, ptr %i.ib, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i938) #8, !srcloc !14
  %.val826 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ic = getelementptr inbounds nuw i8, ptr %.val826, i64 %i.hz
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 168
  %.0.copyload.i939 = load i32, ptr %i.id, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i939) #8, !srcloc !14
  %i.ie = icmp ult i32 %.0.copyload.i938, %.0.copyload.i939
  br i1 %i.ie, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.if = add i32 %.0.copyload.i938, 8
  %.val859 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ig = getelementptr inbounds nuw i8, ptr %.val859, i64 %i.ia
  store i32 %i.if, ptr %i.ig, align 1
  %i.ih = zext i32 %.0.copyload.i938 to i64
  %.val890 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ii = getelementptr inbounds nuw i8, ptr %.val890, i64 %i.ih
  store i64 -844424930131968, ptr %i.ii, align 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ij = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i937, i64 noundef -844424930131968) #8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.1777 = phi i32 [ %.0.copyload.i938, %bb.ao ], [ %i.ij, %bb.ap ] ; 3 uses
  %i.ik = zext i32 %i.ck to i64                   ; 2 uses
  %.val825 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %.val825, i64 %i.ik
  %.0.copyload.i940 = load i32, ptr %i.il, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i940) #8, !srcloc !14
  %i.im = zext i32 %.0.copyload.i940 to i64       ; 3 uses
  %.val824 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %.val824, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 20
  %.0.copyload.i941 = load i32, ptr %i.io, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i941) #8, !srcloc !14
  %.not806 = icmp eq i32 %.0.copyload.i941, 0
  br i1 %.not806, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %.val823 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ip = getelementptr inbounds nuw i8, ptr %.val823, i64 %i.im
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %.0.copyload.i942 = load i32, ptr %i.iq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i942) #8, !srcloc !14
  %.not807 = icmp eq i32 %.0.copyload.i942, 0
  br i1 %.not807, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val822 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ir = getelementptr inbounds nuw i8, ptr %.val822, i64 %i.im
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 28
  %.0.copyload.i943 = load i32, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i943) #8, !srcloc !14
  %i.it = zext i32 %.0.copyload.i943 to i64
  %.val904 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iu = getelementptr inbounds nuw i8, ptr %.val904, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %.0.copyload.i944 = load i32, ptr %i.iv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i944) #8, !srcloc !36
  %i.iw = and i32 %.0.copyload.i944, -8
  %i.ix = zext i32 %i.iw to i64
  %i.iy = or disjoint i64 %i.ix, -844424930131968
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.as
  %.1 = phi i64 [ -844424930131968, %bb.aq ], [ -844424930131968, %bb.ar ], [ %i.iy, %bb.as ] ; 2 uses
  %i.iz = zext i32 %.1777 to i64                  ; 2 uses
  %.val889 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %.val889, i64 %i.iz
  store i64 %.1, ptr %i.ja, align 1
  %i.jb = and i64 %.1, 4294967295
  %.val821 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jc = getelementptr inbounds nuw i8, ptr %.val821, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %.0.copyload.i945 = load i32, ptr %i.jd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i945) #8, !srcloc !14
  %i.je = and i32 %.0.copyload.i945, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.c, i32 noundef %.1777, i32 noundef %i.je) #8
  %.not808 = icmp eq i32 %.0.copyload.i908, 1
  br i1 %.not808, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.at, %bb.az
  %.0780 = phi i32 [ %i.kq, %bb.az ], [ 1, %bb.at ] ; 4 uses
  %.val820 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jf = getelementptr inbounds nuw i8, ptr %.val820, i64 %i.bn
  %.0.copyload.i946 = load i32, ptr %i.jf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i946) #8, !srcloc !14
  %i.jg = zext i32 %.0.copyload.i946 to i64
  %.val819 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jh = getelementptr inbounds nuw i8, ptr %.val819, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %.0.copyload.i947 = load i32, ptr %i.ji, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i947) #8, !srcloc !14
  %i.jj = and i32 %.0.copyload.i947, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.c, i32 noundef %.0774, i32 noundef %i.jj) #8
  %.val818 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jk = getelementptr inbounds nuw i8, ptr %.val818, i64 %i.ik
  %.0.copyload.i948 = load i32, ptr %i.jk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i948) #8, !srcloc !14
  %i.jl = zext i32 %.0.copyload.i948 to i64       ; 3 uses
  %.val817 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jm = getelementptr inbounds nuw i8, ptr %.val817, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 20
  %.0.copyload.i949 = load i32, ptr %i.jn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i949) #8, !srcloc !14
  %i.jo = icmp ult i32 %.0780, %.0.copyload.i949
  br i1 %i.jo, label %bb.az, label %bb.au

bb.au:                                            ; preds = %.preheader
  %.val816 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jp = getelementptr inbounds nuw i8, ptr %.val816, i64 %i.jl
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %.0.copyload.i950 = load i32, ptr %i.jq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i950) #8, !srcloc !14
  %.not809 = icmp ugt i32 %.0.copyload.i950, %.0780
  br i1 %.not809, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %.val815 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jr = getelementptr inbounds nuw i8, ptr %.val815, i64 %i.jl
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 28
  %.0.copyload.i951 = load i32, ptr %i.js, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i951) #8, !srcloc !14
  %i.jt = sub nuw i32 %.0780, %.0.copyload.i949   ; 4 uses
  %i.ju = icmp ult i32 %i.jt, 4096
  br i1 %i.ju, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jv = shl nuw nsw i32 %i.jt, 2
  %i.jw = add i32 %.0.copyload.i951, %i.jv
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.jx = add i32 %i.jt, -4096
  %i.jy = lshr i32 %i.jx, 8
  %i.jz = and i32 %i.jy, 16777212
  %i.ka = add nuw nsw i32 %i.jz, 16392
  %i.kb = add i32 %i.ka, %.0.copyload.i951
  %i.kc = zext i32 %i.kb to i64
  %.val814 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kd = getelementptr inbounds nuw i8, ptr %.val814, i64 %i.kc
  %.0.copyload.i952 = load i32, ptr %i.kd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i952) #8, !srcloc !14
  %i.ke = shl i32 %i.jt, 2
  %i.kf = and i32 %i.ke, 4092
  %i.kg = add i32 %.0.copyload.i952, %i.kf
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0.in = phi i32 [ %i.jw, %bb.aw ], [ %i.kg, %bb.ax ]
  %.0 = add i32 %.0.in, 8
  %i.kh = zext i32 %.0 to i64
  %.val813 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ki = getelementptr inbounds nuw i8, ptr %.val813, i64 %i.kh
  %.0.copyload.i953 = load i32, ptr %i.ki, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i953) #8, !srcloc !14
  %i.kj = and i32 %.0.copyload.i953, -8
  %i.kk = zext i32 %i.kj to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.au, %.preheader, %bb.ay
  %.3 = phi i64 [ 0, %.preheader ], [ 0, %bb.au ], [ %i.kk, %bb.ay ] ; 2 uses
  %i.kl = or disjoint i64 %.3, -844424930131968
  %.val888 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.km = getelementptr inbounds nuw i8, ptr %.val888, i64 %i.iz
  store i64 %i.kl, ptr %i.km, align 1
  %.val812 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kn = getelementptr inbounds nuw i8, ptr %.val812, i64 %.3
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %.0.copyload.i954 = load i32, ptr %i.ko, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i954) #8, !srcloc !14
  %i.kp = and i32 %.0.copyload.i954, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.c, i32 noundef %.1777, i32 noundef %i.kp) #8
  %i.kq = add i32 %.0780, 1                       ; 2 uses
  %.not810 = icmp eq i32 %i.kq, %.0.copyload.i908
  br i1 %.not810, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.az, %bb.at
  %.val811 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kr = getelementptr inbounds nuw i8, ptr %.val811, i64 %i.dg
  %.0.copyload.i955 = load i32, ptr %i.kr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i955) #8, !srcloc !14
  %i.ks = zext i32 %.0.copyload.i955 to i64
  %.val903 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kt = getelementptr inbounds nuw i8, ptr %.val903, i64 %i.ks
  %.0.copyload.i956 = load i32, ptr %i.kt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i956) #8, !srcloc !36
  %i.ku = zext i32 %.0.copyload.i956 to i64
  %i.kv = zext i32 %1 to i64                      ; 2 uses
  %.val858 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kw = getelementptr inbounds nuw i8, ptr %.val858, i64 %i.kv
  store i32 1, ptr %i.kw, align 1
  %i.kx = or disjoint i64 %i.ku, -844424930131968
  %.val887 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ky = getelementptr inbounds nuw i8, ptr %.val887, i64 %i.kv
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i64 %i.kx, ptr %i.kz, align 1
  br label %bb.bc

bb.ba:                                            ; preds = %func_types_eq.exit.thread
  %i.la = zext i32 %1 to i64
  %.val857 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lb = getelementptr inbounds nuw i8, ptr %.val857, i64 %i.la
  store i32 0, ptr %i.lb, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.di) #8
  br label %bb.bc

bb.bb:                                            ; preds = %bb.aj, %bb.af
  %i.lc = zext i32 %1 to i64
  %.val856 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ld = getelementptr inbounds nuw i8, ptr %.val856, i64 %i.lc
  store i32 0, ptr %i.ld, align 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %.loopexit, %bb.r, %bb.p, %bb.n, %bb.i, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtypedArrayPrototypeIterator0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = zext i32 %4 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.d = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSTypedArrayBase0x3A0x3AvalidateTypedArray0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20bool0x29(ptr noundef %0, i32 noundef %3, i32 noundef %.0.copyload.i, i32 noundef 1) #8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %1 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArrayIterator0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AIterationKind0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0.copyload.i, i32 noundef %2) #8
  %i.g = zext i32 %i.f to i64
  %i.h = or disjoint i64 %i.g, -281474976710656
  %i.i = zext i32 %1 to i64                       ; 2 uses
  %.val34 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val34, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.h, ptr %i.k, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink36 = phi i64 [ %i.i, %bb.c ], [ %i.e, %bb.b ]
  %.sink = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.val32 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %.val32, i64 %.sink36
  store i32 %.sink, ptr %i.l, align 1
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArrayIterator0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AIterationKind0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtypedArrayPrototypeIndexOf0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 4 uses
  %i.c = add i32 %i.b, -64                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 42 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val521 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val521, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.g = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSTypedArrayBase0x3A0x3AvalidateTypedArray0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20bool0x29(ptr noundef %0, i32 noundef %3, i32 noundef %.0.copyload.i, i32 noundef 1) #8
  %.not = icmp eq i32 %i.g, 0
  %.val531 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.val531, i64 %i.h
  store i32 0, ptr %i.i, align 1
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.j = zext i32 %.0.copyload.i to i64           ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val531, i64 %i.j
  %.0.copyload.i542 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i542) #8, !srcloc !14
  %i.l = zext i32 %.0.copyload.i542 to i64
  %.val519 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %.val519, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.0.copyload.i543 = load i32, ptr %i.n, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i543) #8, !srcloc !14
  %.not483 = icmp eq i32 %.0.copyload.i543, 0
  %.val530 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  br i1 %.not483, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = zext i32 %1 to i64                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val530, i64 %i.o
  store i32 1, ptr %i.p, align 1
  %.not498 = icmp eq i32 %2, 0
  %i.q = select i1 %.not498, i64 -1407374883553280, i64 -4616189618054758400
  %.val536 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val536, i64 %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.q, ptr %i.s, align 1
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %i.t = add i32 %.0.copyload.i, -8
  %i.u = getelementptr inbounds nuw i8, ptr %.val530, i64 %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.0.copyload.i544 = load i32, ptr %i.v, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i544) #8, !srcloc !14
  %.not484 = icmp eq i32 %.0.copyload.i544, 0
  %i.w = select i1 %.not484, i32 70392, i32 %i.t
  %i.x = zext i32 %i.w to i64                     ; 4 uses
  %.val540 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.val540, i64 %i.x
  %.0.copyload.i545 = load i64, ptr %i.y, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i545) #8, !srcloc !33
  %i.z = icmp ult i64 %.0.copyload.i545, -1970324836974592
  %.mask = and i64 %.0.copyload.i545, -281474976710656
  %i.aa = icmp eq i64 %.mask, -562949953421312
  %or.cond = or i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = zext i32 %1 to i64                      ; 2 uses
  %.val529 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.val529, i64 %i.ab
  store i32 1, ptr %i.ac, align 1
  %.not485 = icmp eq i32 %2, 0
  %i.ad = select i1 %.not485, i64 -1407374883553280, i64 -4616189618054758400
  %.val535 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val535, i64 %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ad, ptr %i.af, align 1
  br label %bb.al

bb.g:                                             ; preds = %bb.e
  %i.ag = uitofp i32 %.0.copyload.i543 to double  ; 7 uses
  %i.ah = icmp ult i32 %.0.copyload.i544, 2
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp eq i32 %2, 2
  br i1 %i.ai, label %bb.r, label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.aj = add i32 %i.b, -16                       ; 2 uses
  %i.ak = add i32 %.0.copyload.i, -16
  %i.al = load i32, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.am = add i32 %i.al, -16                      ; 3 uses
  store i32 %i.am, ptr %i.a, align 8, !tbaa !20
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumber_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.am, i32 noundef %3, i32 noundef %i.ak)
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.an
  %.0.copyload.i.i = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #8, !srcloc !14
  %.not.i = icmp eq i32 %.0.copyload.i.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %wasm_trunc.exit.i

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = zext i32 %i.aj to i64
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29.exit

wasm_trunc.exit.i:                                ; preds = %bb.i
  %.val42.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.val42.i, i64 %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.0.copyload.i44.i = load double, ptr %i.aq, align 1 ; 3 uses
end_hunk_7
