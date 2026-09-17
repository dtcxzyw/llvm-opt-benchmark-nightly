Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_6?download=true
inline.NumInlined: 8639
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@w2c_hermes_memmove:bb.a
.preheader248:                                    ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader248, %bb.h
  %.0209 = phi i32 [ %i.n, %bb.h ], [ %2, %.preheader248 ] ; 2 uses
  %.0204 = phi i32 [ %i.o, %bb.h ], [ %3, %.preheader248 ] ; 2 uses
  %.0203 = phi i32 [ %i.p, %bb.h ], [ %1, %.preheader248 ] ; 2 uses
  %.not226 = icmp eq i32 %.0204, 0
  br i1 %.not226, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = zext i32 %.0209 to i64
  %.val232 = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %.val232, i64 %i.j
  %.0.copyload.i = load i8, ptr %i.k, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #8, !srcloc !13
  %i.l = zext i32 %.0203 to i64
  %.val236 = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %.val236, i64 %i.l
  store i8 %.0.copyload.i, ptr %i.m, align 1
  %i.n = add i32 %.0209, 1                        ; 2 uses
  %i.o = add i32 %.0204, -1                       ; 2 uses
  %i.p = add i32 %.0203, 1                        ; 3 uses
  %i.q = and i32 %i.p, 3
  %.not227 = icmp eq i32 %i.q, 0
  br i1 %.not227, label %.loopexit250, label %bb.g

bb.i:                                             ; preds = %bb.d
  br i1 %.not224, label %bb.j, label %.loopexit254

bb.j:                                             ; preds = %bb.i
  %i.r = and i32 %i.b, 3
  %.not219 = icmp eq i32 %i.r, 0
  br i1 %.not219, label %.loopexit257, label %.preheader255

.preheader255:                                    ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = zext i32 %3 to i64
  br label %bb.k

bb.k:                                             ; preds = %.preheader255, %bb.l
  %indvars.iv = phi i64 [ %i.t, %.preheader255 ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.not220 = icmp eq i64 %indvars.iv, 0
  br i1 %.not220, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %indvars = trunc nuw i64 %indvars.iv.next to i32 ; 3 uses
  %i.u = add i32 %1, %indvars                     ; 2 uses
  %i.v = add i32 %2, %indvars
  %i.w = zext i32 %i.v to i64
  %.val231 = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.val231, i64 %i.w
  %.0.copyload.i241 = load i8, ptr %i.x, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i241) #8, !srcloc !13
  %i.y = zext i32 %i.u to i64
  %.val235 = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %.val235, i64 %i.y
  store i8 %.0.copyload.i241, ptr %i.z, align 1
  %i.aa = and i32 %i.u, 3
  %.not221 = icmp eq i32 %i.aa, 0
  br i1 %.not221, label %.loopexit257, label %bb.k

.loopexit257:                                     ; preds = %bb.l, %bb.j
  %.2206 = phi i32 [ %3, %bb.j ], [ %indvars, %bb.l ] ; 3 uses
  %i.ab = icmp ult i32 %.2206, 4
  br i1 %i.ab, label %.loopexit254, label %.preheader253

.preheader253:                                    ; preds = %.loopexit257
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = zext i32 %.2206 to i64
  br label %bb.m

bb.m:                                             ; preds = %.preheader253, %bb.m
  %indvars.iv276 = phi i64 [ %i.ad, %.preheader253 ], [ %indvars.iv.next277, %bb.m ]
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, -4 ; 2 uses
  %indvars278 = trunc i64 %indvars.iv.next277 to i32 ; 4 uses
  %i.ae = add i32 %1, %indvars278
  %i.af = add i32 %2, %indvars278
  %i.ag = zext i32 %i.af to i64
  %.val238 = load ptr, ptr %i.ac, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.val238, i64 %i.ag
  %.0.copyload.i242 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i242) #8, !srcloc !14
  %i.ai = zext i32 %i.ae to i64
  %.val240 = load ptr, ptr %i.ac, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %.val240, i64 %i.ai
  store i32 %.0.copyload.i242, ptr %i.aj, align 1
  %i.ak = icmp ugt i32 %indvars278, 3
  br i1 %i.ak, label %bb.m, label %.loopexit254

.loopexit254:                                     ; preds = %bb.m, %.loopexit257, %bb.i
  %.4208 = phi i32 [ %3, %bb.i ], [ %.2206, %.loopexit257 ], [ %indvars278, %bb.m ] ; 2 uses
  %.not222 = icmp eq i32 %.4208, 0
  br i1 %.not222, label %.loopexit, label %.preheader251

.preheader251:                                    ; preds = %.loopexit254
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = zext i32 %.4208 to i64
  br label %bb.n

bb.n:                                             ; preds = %.preheader251, %bb.n
  %indvars.iv280 = phi i64 [ %i.am, %.preheader251 ], [ %indvars.iv.next281, %bb.n ]
  %indvars.iv.next281 = add nsw i64 %indvars.iv280, -1 ; 2 uses
  %indvars282 = trunc i64 %indvars.iv.next281 to i32 ; 3 uses
  %i.an = add i32 %1, %indvars282
  %i.ao = add i32 %2, %indvars282
  %i.ap = zext i32 %i.ao to i64
  %.val230 = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %.val230, i64 %i.ap
  %.0.copyload.i243 = load i8, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i243) #8, !srcloc !13
  %i.ar = zext i32 %i.an to i64
  %.val234 = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %.val234, i64 %i.ar
  store i8 %.0.copyload.i243, ptr %i.as, align 1
  %.not223 = icmp eq i32 %indvars282, 0
  br i1 %.not223, label %.loopexit, label %bb.n

.loopexit250:                                     ; preds = %bb.h, %bb.f
  %.1210 = phi i32 [ %2, %bb.f ], [ %i.n, %bb.h ] ; 2 uses
  %.6 = phi i32 [ %3, %bb.f ], [ %i.o, %bb.h ]    ; 3 uses
  %.1 = phi i32 [ %1, %bb.f ], [ %i.p, %bb.h ]    ; 2 uses
  %i.at = icmp ult i32 %.6, 4
  br i1 %i.at, label %.loopexit247, label %.preheader246

.preheader246:                                    ; preds = %.loopexit250
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.preheader246, %bb.o
  %.2211 = phi i32 [ %i.az, %bb.o ], [ %.1210, %.preheader246 ] ; 2 uses
  %.7 = phi i32 [ %i.bb, %bb.o ], [ %.6, %.preheader246 ]
  %.2 = phi i32 [ %i.ba, %bb.o ], [ %.1, %.preheader246 ] ; 2 uses
  %i.av = zext i32 %.2211 to i64
  %.val237 = load ptr, ptr %i.au, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %.val237, i64 %i.av
  %.0.copyload.i244 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i244) #8, !srcloc !14
  %i.ax = zext i32 %.2 to i64
  %.val239 = load ptr, ptr %i.au, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.val239, i64 %i.ax
  store i32 %.0.copyload.i244, ptr %i.ay, align 1
  %i.az = add i32 %.2211, 4                       ; 2 uses
  %i.ba = add i32 %.2, 4                          ; 2 uses
  %i.bb = add i32 %.7, -4                         ; 3 uses
  %i.bc = icmp ugt i32 %i.bb, 3
  br i1 %i.bc, label %bb.o, label %.loopexit247

.loopexit247:                                     ; preds = %bb.o, %bb.e, %.loopexit250
  %.3212 = phi i32 [ %2, %bb.e ], [ %.1210, %.loopexit250 ], [ %i.az, %bb.o ]
  %.8 = phi i32 [ %3, %bb.e ], [ %.6, %.loopexit250 ], [ %i.bb, %bb.o ] ; 2 uses
  %.3 = phi i32 [ %1, %bb.e ], [ %.1, %.loopexit250 ], [ %i.ba, %bb.o ]
  %.not228 = icmp eq i32 %.8, 0
  br i1 %.not228, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit247
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.p
  %.4213 = phi i32 [ %i.bj, %bb.p ], [ %.3212, %.preheader ] ; 2 uses
  %.9 = phi i32 [ %i.bk, %bb.p ], [ %.8, %.preheader ]
  %.4 = phi i32 [ %i.bi, %bb.p ], [ %.3, %.preheader ] ; 2 uses
  %i.be = zext i32 %.4213 to i64
  %.val = load ptr, ptr %i.bd, align 8, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 %i.be
  %.0.copyload.i245 = load i8, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i245) #8, !srcloc !13
  %i.bg = zext i32 %.4 to i64
  %.val233 = load ptr, ptr %i.bd, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.val233, i64 %i.bg
  store i8 %.0.copyload.i245, ptr %i.bh, align 1
  %i.bi = add i32 %.4, 1
  %i.bj = add i32 %.4213, 1
  %i.bk = add i32 %.9, -1                         ; 2 uses
  %.not229 = icmp eq i32 %i.bk, 0
  br i1 %.not229, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %bb.k, %bb.n, %bb.g, %bb.p, %bb.a, %.loopexit254, %.loopexit247, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ %1, %bb.a ], [ %1, %.loopexit247 ], [ %1, %bb.g ], [ %1, %.loopexit254 ], [ %1, %bb.n ], [ %1, %bb.p ], [ %1, %bb.k ]
  ret i32 %.0
}

declare i32 @w2c_hermes_0x5F_memcpy(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %i.c = add nuw nsw i64 %i.b, 8                  ; 2 uses
  %.val100 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val100, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 1
  %i.f = or disjoint i32 %i.e, 1
  %i.g = tail call i32 @llvm.umax.i32(i32 %3, i32 %i.f) ; 4 uses
  %5 = icmp ugt i32 %i.g, %.0.copyload.i
  %6 = tail call i32 @llvm.umulh.i32(i32 %4, i32 %i.g)
  %7 = icmp eq i32 %6, 0
  %.0 = and i1 %5, %7
  br i1 %.0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 41866)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = mul i32 %i.g, %4                         ; 2 uses
  %.val99 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %.val99, i64 %i.b
  %.0.copyload.i103 = load i32, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i103) #8, !srcloc !14
  %i.j = icmp eq i32 %2, %.0.copyload.i103
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef %i.h) #8 ; 3 uses
  %.not97 = icmp eq i32 %i.k, 0
  br i1 %.not97, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812)
  unreachable

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.0.copyload.i105 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i105) #8, !srcloc !14
  %i.n = mul i32 %.0.copyload.i105, %4
  %i.o = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %2, i32 noundef %i.n) #8 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.p = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i103, i32 noundef %i.h) #8 ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812)
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.092 = phi i32 [ %i.k, %bb.f ], [ %i.p, %bb.g ]
  %.val102 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.val102, i64 %i.c
  store i32 %i.g, ptr %i.q, align 1
  %.val101 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val101, i64 %i.b
  store i32 %.092, ptr %i.r, align 1
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = add i32 %i.b, -16
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.val57 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %.val57, i64 282872
  %.0.copyload.i = load i32, ptr %i.e, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val56 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val56, i64 282876
  %.0.copyload.i58 = load i32, ptr %i.f, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i58) #8, !srcloc !14
  %i.g = add i32 %i.b, -12
  %i.h = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Abasic_string0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3Anullptr_t0x3E0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.g, i32 noundef %1) #8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21
  %i.k = icmp ult i32 %.0.copyload.i, %i.j
  br i1 %i.k, label %bb.c, label %.critedge, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = zext i32 %.0.copyload.i to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %.not52 = icmp eq ptr %i.q, null
  br i1 %.not52, label %.critedge, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @w2c_hermes_t2, align 8, !tbaa !27 ; 4 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !28   ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %func_types_eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ne ptr %i.r, null
  %i.v = icmp ne ptr %i.s, null
  %or.cond.i = and i1 %i.u, %i.v
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !29

func_types_eq.exit:                               ; preds = %bb.e
  %i.w = load i128, ptr %i.r, align 1
  %i.x = load i128, ptr %i.s, align 1
  %i.y = xor i128 %i.w, %i.x
  %i.z = getelementptr i8, ptr %i.r, i64 16
  %i.aa = getelementptr i8, ptr %i.s, i64 16
  %i.ab = load i128, ptr %i.z, align 1
  %i.ac = load i128, ptr %i.aa, align 1
  %i.ad = xor i128 %i.ab, %i.ac
  %i.ae = or i128 %i.y, %i.ad
  %i.af = icmp ne i128 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !30

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.b, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.d, %func_types_eq.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  tail call void %i.q(ptr noundef %i.ai, i32 noundef %.0.copyload.i58, i32 noundef %i.h, i32 noundef 1) #8
  %i.aj = zext i32 %i.h to i64                    ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 11
  %.0.copyload.i59 = load i8, ptr %i.al, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i59) #8, !srcloc !13
  %.not53 = icmp sgt i8 %.0.copyload.i59, -1
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %func_types_eq.exit.thread
  %.val55 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %.val55, i64 %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.0.copyload.i60 = load i32, ptr %i.an, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60) #8, !srcloc !14
  %.val54 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.val54, i64 %i.aj
  %.0.copyload.i61 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i61) #8, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i61) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %func_types_eq.exit.thread
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.ap = tail call i32 @w2c_hermes_write(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 69920, i32 noundef 26) #8 ; 0 uses
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #8
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable
}

declare i32 @w2c_hermes_dlmalloc(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_dlrealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -255, 256) i32 @w2c_hermes_memcmp(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %3, 3
  br i1 %i.a, label %bb.b, label %.loopexit92

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %2, %1
  %i.c = and i32 %i.b, 3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %.loopexit91

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %.071 = phi i32 [ %i.j, %bb.d ], [ %1, %.preheader ] ; 3 uses
  %.067 = phi i32 [ %i.i, %bb.d ], [ %2, %.preheader ] ; 3 uses
  %.066 = phi i32 [ %i.k, %bb.d ], [ %3, %.preheader ] ; 2 uses
  %i.e = zext i32 %.071 to i64
  %.val87 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val87, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.g = zext i32 %.067 to i64
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val86, i64 %i.g
  %.0.copyload.i88 = load i32, ptr %i.h, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88) #8, !srcloc !14
  %.not82 = icmp eq i32 %.0.copyload.i, %.0.copyload.i88
  br i1 %.not82, label %bb.d, label %.loopexit91

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %.067, 4                         ; 2 uses
  %i.j = add i32 %.071, 4                         ; 2 uses
  %i.k = add i32 %.066, -4                        ; 3 uses
  %i.l = icmp ugt i32 %i.k, 3
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AsymbolPrototypeToString0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %.val153, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i32 0, ptr %i.ax, align 1
  %.val157 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.val157, i64 %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i64 231928233985, ptr %i.az, align 1
  %.val152 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %.val152, i64 %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 3, ptr %i.bb, align 1
  %.val151 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.val151, i64 %i.av
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 43281, ptr %i.bd, align 1
  %i.be = add i32 %i.b, -40
  %i.bf = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.be) #8
  %i.bg = zext i32 %1 to i64
  %.val150 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.val150, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AsymbolDescriptiveString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AsymbolPrototypeDescriptionGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = add i32 %i.b, -48                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.e = zext i32 %3 to i64
  %.val147 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val147, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = zext i32 %.0.copyload.i to i64           ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 164                ; 2 uses
  %.val146 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val146, i64 %i.i
  %.0.copyload.i160 = load i32, ptr %i.j, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i160) #8, !srcloc !14
  %.val145 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %.val145, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %.0.copyload.i161 = load i32, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i161) #8, !srcloc !14
  %i.m = icmp ult i32 %.0.copyload.i160, %.0.copyload.i161
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = add i32 %.0.copyload.i160, 8
  %.val153 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %.val153, i64 %i.i
  store i32 %i.n, ptr %i.o, align 1
  %i.p = zext i32 %.0.copyload.i160 to i64
  %.val157 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.val157, i64 %i.p
  store i64 -1266636858327041, ptr %i.q, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i, i64 noundef -1266636858327041) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0140 = phi i32 [ %.0.copyload.i160, %bb.b ], [ %i.r, %bb.c ]
  %i.s = zext i32 %4 to i64
  %.val144 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %.val144, i64 %i.s
  %.0.copyload.i162 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i162) #8, !srcloc !14
  %i.u = zext i32 %.0.copyload.i162 to i64
  %.val159 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val159, i64 %i.u
  %.0.copyload.i163 = load i64, ptr %i.v, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i163) #8, !srcloc !33
  %.mask = and i64 %.0.copyload.i163, -140737488355328
  %i.w = icmp eq i64 %.mask, -1266637395197952
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = trunc i64 %.0.copyload.i163 to i32
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.y = icmp ugt i64 %.0.copyload.i163, -844424930131969
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = and i64 %.0.copyload.i163, 4294967295    ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %.0.copyload.i164 = load i8, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i164) #8, !srcloc !13
  %i.ac = icmp eq i8 %.0.copyload.i164, 57
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val158 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.val158, i64 70384
  %.0.copyload.i165 = load i64, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i165) #8, !srcloc !33
  %.pre = and i64 %.0.copyload.i165, 4294967295
  %i.ae = icmp ult i64 %.0.copyload.i165, -844424930131968
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %i.z, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %.0139 = phi i1 [ false, %bb.g ], [ %i.ae, %bb.h ]
  %.not = icmp eq i64 %.pre-phi, 0
  %or.cond = or i1 %.0139, %.not
  br i1 %or.cond, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val143 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %.val143, i64 %.pre-phi
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %.0.copyload.i166 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i166) #8, !srcloc !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.0 = phi i32 [ %i.x, %bb.e ], [ %.0.copyload.i166, %bb.j ] ; 2 uses
  %i.ah = zext i32 %.0 to i64
  %i.ai = or disjoint i64 %i.ah, -1266637395197952
  %i.aj = zext i32 %.0140 to i64
  %.val156 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %.val156, i64 %i.aj
  store i64 %i.ai, ptr %i.ak, align 1
  %i.al = add i32 %3, 5476
  %i.am = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringPrim0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.al, i32 noundef %3, i32 noundef %.0) #8
  %i.an = zext i32 %1 to i64                      ; 2 uses
  %.val152 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.val152, i64 %i.an
  store i32 1, ptr %i.ao, align 1
  %i.ap = zext i32 %i.am to i64
  %i.aq = or disjoint i64 %i.ap, -844424930131968
  %.val155 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %.val155, i64 %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.aq, ptr %i.as, align 1
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.at = zext i32 %i.c to i64                    ; 4 uses
  %.val151 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %.val151, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i32 0, ptr %i.av, align 1
  %.val154 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %.val154, i64 %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 244813135873, ptr %i.ax, align 1
  %.val150 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.val150, i64 %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 3, ptr %i.az, align 1
  %.val149 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %.val149, i64 %i.at
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 43223, ptr %i.bb, align 1
  %i.bc = add i32 %i.b, -40
  %i.bd = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.bc) #8
  %i.be = zext i32 %1 to i64
  %.val148 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.val148, i64 %i.be
  store i32 %i.bd, ptr %i.bf, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"p1 omnipotent char", !7, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"_Bool", !4, i64 0}
!11 = !{!"", !8, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !10, i64 32}
!12 = !{!11, !8, i64 0}
!13 = !{i64 2151087574}
!14 = !{i64 2151085018}
!15 = !{!"p1 _ZTS7w2c_env", !7, i64 0}
!16 = !{!"p1 _ZTS18w2c_hermes__import", !7, i64 0}
!17 = !{!"p1 _ZTS28w2c_wasi__snapshot__preview1", !7, i64 0}
!18 = !{!"", !7, i64 0, !5, i64 8, !5, i64 12}
!19 = !{!"w2c_hermes", !15, i64 0, !16, i64 8, !17, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !11, i64 40, !18, i64 80}
!20 = !{!19, !5, i64 24}
!21 = !{!19, !5, i64 92}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!19, !7, i64 80}
!24 = !{!"", !8, i64 0, !7, i64 8, !7, i64 16}
!25 = !{!24, !7, i64 8}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = !{!8, !8, i64 0}
!28 = !{!24, !8, i64 0}
!29 = !{!"branch_weights", i32 4000000, i32 4001}
!30 = !{!"branch_weights", !"expected", i32 2147483112, i32 536}
!31 = !{!24, !7, i64 16}
!32 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!33 = !{i64 2151085444}
!34 = !{i64 2151086722}
!35 = !{i64 2151086296}
!36 = !{i64 2151090576}
!37 = !{i64 2151089286}
!38 = !{!19, !17, i64 16}
!39 = !{i64 2151085870}
!40 = !{!"branch_weights", !"expected", i32 2147483111, i32 537}
!41 = !{i64 2151088000}
!42 = !{!"branch_weights", i32 4001, i32 4000000}
!43 = !{!"branch_weights", !"expected", i32 2398731, i32 2145084917}
!44 = !{i64 2151088426}
end_hunk_1
