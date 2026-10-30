Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3AUTF16Stream0x3A0x3Arefill0x280x29:bb.a
  %i.ap = tail call i32 @llvm.umax.i32(i32 %i.ao, i32 %i.am)
  %i.aq = icmp ugt i32 %i.ao, 2147483645
  %i.ar = select i1 %i.aq, i32 2147483647, i32 %i.ap ; 3 uses
  %.not470 = icmp eq i32 %i.ar, 0
  br i1 %.not470, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = shl nuw i32 %i.ar, 1                    ; 2 uses
  %i.au = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.at) #7
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.j
  %.pre-phi = phi i32 [ %i.at, %bb.j ], [ 0, %bb.h ]
  %.0447 = phi i32 [ %i.au, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.av = and i32 %i.ak, -2
  %i.aw = add i32 %.0447, %i.av
  %i.ax = shl i32 %i.z, 1                         ; 2 uses
  %i.ay = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.aw, i32 noundef 0, i32 noundef %i.ax) #7
  %i.az = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0447, i32 noundef %.0.copyload.i518, i32 noundef %i.ak) #7 ; 2 uses
  %i.ba = add i32 %i.az, %.pre-phi
  %.val507 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val507, i64 %i.aa
  store i32 %i.ba, ptr %i.bb, align 1
  %i.bc = add i32 %i.ay, %i.ax
  %.val506 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val506, i64 %i.q
  store i32 %i.bc, ptr %i.bd, align 1
  %.val505 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val505, i64 %i.m
  store i32 %i.az, ptr %i.be, align 1
  %.not471 = icmp eq i32 %.0.copyload.i518, 0
  br i1 %.not471, label %bb.n, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i518) #7
  br label %bb.n

bb.l:                                             ; preds = %bb.g
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

bb.m:                                             ; preds = %bb.i
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef nonnull %0) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

bb.n:                                             ; preds = %._crit_edge, %bb.k, %bb.f
  %.val485 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val485, i64 %i.m
  %.0.copyload.i519 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i519) #7, !srcloc !19
  %.val484 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val484, i64 %i.q
  %.0.copyload.i520 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i520) #7, !srcloc !19
  br label %bb.q

bb.o:                                             ; preds = %bb.d
  %.not468 = icmp ugt i32 %i.t, %i.s
  br i1 %.not468, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bh = shl i32 %i.s, 1
  %i.bi = add i32 %i.bh, %.0.copyload.i513        ; 2 uses
  %.val504 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val504, i64 %i.q
  store i32 %i.bi, ptr %i.bj, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.0449 = phi i32 [ %.0.copyload.i519, %bb.n ], [ %.0.copyload.i513, %bb.o ], [ %.0.copyload.i513, %bb.p ] ; 2 uses
  %.1 = phi i32 [ %.0.copyload.i520, %bb.n ], [ %.0.copyload.i514, %bb.o ], [ %i.bi, %bb.p ]
  %i.bk = and i32 %i.o, -2
  %i.bl = add i32 %.0449, %i.bk
  %.val503 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val503, i64 %i.k
  store i32 %i.bl, ptr %i.bm, align 1
  %i.bn = and i32 %i.x, -2
  %i.bo = add i32 %.0449, %i.bn
  br label %bb.w

bb.r:                                             ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.0.copyload.i521 = load i32, ptr %i.bp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i521) #7, !srcloc !19
  %i.bq = sub i32 %.0.copyload.i521, %.0.copyload.i512 ; 2 uses
  %.not467 = icmp eq i32 %.0.copyload.i521, %.0.copyload.i512
  br i1 %.not467, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0.copyload.i513, i32 noundef %.0.copyload.i512, i32 noundef %i.bq) #7 ; 0 uses
  %.val482 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val482, i64 %i.q
  %.0.copyload.i522 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i522) #7, !srcloc !19
  %.val481 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val481, i64 %i.m
  %.0.copyload.i523 = load i32, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i523) #7, !srcloc !19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1450 = phi i32 [ %.0.copyload.i523, %bb.s ], [ %.0.copyload.i513, %bb.r ] ; 2 uses
  %.2 = phi i32 [ %.0.copyload.i522, %bb.s ], [ %.0.copyload.i514, %bb.r ]
  %.val502 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val502, i64 %i.k
  store i32 %.1450, ptr %i.bu, align 1
  %i.bv = and i32 %i.bq, -2
  %i.bw = add i32 %.1450, %i.bv
  br label %bb.w

bb.u:                                             ; preds = %bb.b
  %i.bx = add nuw nsw i64 %i.e, 24                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val480, i64 %i.bx
  %.0.copyload.i524 = load i32, ptr %i.by, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i524) #7, !srcloc !19
  %.val479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %.0.copyload.i525 = load i32, ptr %i.ca, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i525) #7, !srcloc !19
  %i.cb = sub i32 %.0.copyload.i524, %.0.copyload.i525
  %i.cc = icmp ult i32 %i.cb, 4097
  br i1 %i.cc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = add i32 %.0.copyload.i525, 2048         ; 2 uses
  %.val501 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val501, i64 %i.bx
  store i32 %i.cd, ptr %i.ce, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t, %bb.q
  %.0448 = phi i32 [ %i.bo, %bb.q ], [ %i.bw, %bb.t ], [ %.0.copyload.i525, %bb.u ], [ %.0.copyload.i525, %bb.v ] ; 4 uses
  %.3 = phi i32 [ %.1, %bb.q ], [ %.2, %bb.t ], [ %.0.copyload.i524, %bb.u ], [ %i.cd, %bb.v ]
  %i.cf = add i32 %1, 8                           ; 2 uses
  %.val500 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val500, i64 %i.e
  store i32 %.0448, ptr %i.cg, align 1
  %i.ch = add i32 %.3, -2                         ; 3 uses
  %i.ci = add nuw nsw i64 %i.e, 4                 ; 2 uses
  %.val499 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val499, i64 %i.ci
  store i32 %i.ch, ptr %i.cj, align 1
  %.val478 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val478, i64 %i.h
  %.0.copyload.i526 = load i32, ptr %i.ck, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i526) #7, !srcloc !19
  %.val477 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val477, i64 %i.f
  %.0.copyload.i527 = load i32, ptr %i.cl, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i527) #7, !srcloc !19
  %i.cm = sub i32 %.0.copyload.i526, %.0.copyload.i527
  %i.cn = sub i32 %i.ch, %.0448
  %i.co = ashr i32 %i.cn, 1
  %i.cp = tail call i32 @llvm.smin.i32(i32 %i.co, i32 %i.cm) ; 3 uses
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.w
  %i.cr = zext nneg i32 %i.cp to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.x
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ct = add i32 %.0.copyload.i527, %i.cs
  %i.cu = zext i32 %i.ct to i64
  %.val509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val509, i64 %i.cu
  %.0.copyload.i528 = load i8, ptr %i.cv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i528) #7, !srcloc !22
  %i.cw = icmp slt i8 %.0.copyload.i528, 0
  br i1 %i.cw, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %.preheader
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.cx = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.cy = add i32 %i.cx, %.0448
  %i.cz = zext i32 %i.cy to i64
  %.val510 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.da = zext nneg i8 %.0.copyload.i528 to i16
  %i.db = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.cz
  store i16 %i.da, ptr %i.db, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not473 = icmp eq i64 %indvars.iv.next, %i.cr
  br i1 %.not473, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.x, %.preheader, %bb.w
  %.3452 = phi i32 [ 0, %bb.w ], [ %i.cp, %bb.x ], [ %i.cs, %.preheader ] ; 2 uses
  %i.dc = add i32 %.3452, %.0.copyload.i527
  %i.dd = zext i32 %i.cf to i64
  %.val498 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val498, i64 %i.dd
  store i32 %i.dc, ptr %i.de, align 1
  %i.df = shl i32 %.3452, 1
  %i.dg = add i32 %i.df, %.0448
  %i.dh = zext i32 %i.c to i64
  %i.di = add nuw nsw i64 %i.dh, 12               ; 2 uses
  %.val497 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.val497, i64 %i.di
  store i32 %i.dg, ptr %i.dj, align 1
  %i.dk = add i32 %i.b, -4
  %i.dl = tail call i32 @w2c_hermes_llvh0x3A0x3AConvertUTF8toUTF160x28unsigned0x20char0x20const0x2A0x2A0x2C0x20unsigned0x20char0x20const0x2A0x2C0x20unsigned0x20short0x2A0x2A0x2C0x20unsigned0x20short0x2A0x2C0x20llvh0x3A0x3AConversionFlags0x29(ptr noundef nonnull %0, i32 noundef %i.cf, i32 noundef %.0.copyload.i526, i32 noundef %i.dk, i32 noundef %i.ch, i32 noundef 1) #7
  %.not474 = icmp eq i32 %i.dl, 2
  br i1 %.not474, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %.val476 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val476, i64 %i.h
  %.0.copyload.i529 = load i32, ptr %i.dm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i529) #7, !srcloc !19
  %.val496 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val496, i64 %i.f
  store i32 %.0.copyload.i529, ptr %i.dn, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit
  %.val475 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val475, i64 %i.di
  %.0.copyload.i530 = load i32, ptr %i.do, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i530) #7, !srcloc !19
  %.val495 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val495, i64 %i.ci
  store i32 %.0.copyload.i530, ptr %i.dp, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %.0.copyload.i531 = load i32, ptr %i.dq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i531) #7, !srcloc !19
  %i.dr = icmp ne i32 %.0.copyload.i530, %.0.copyload.i531
  %i.ds = zext i1 %i.dr to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z
  %.0446 = phi i32 [ %i.ds, %bb.z ], [ 0, %bb.a ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.0446
}

declare i32 @w2c_hermes_llvh0x3A0x3AConvertUTF8toUTF160x28unsigned0x20char0x20const0x2A0x2A0x2C0x20unsigned0x20char0x20const0x2A0x2C0x20unsigned0x20short0x2A0x2A0x2C0x20unsigned0x20short0x2A0x2C0x20llvh0x3A0x3AConversionFlags0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AisIdenticalTo0x28hermes0x3A0x3AInstruction0x20const0x2A0x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %.val116 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val116, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i = load i8, ptr %i.d, align 1     ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #7, !srcloc !21
  switch i8 %.0.copyload.i, label %bb.c [
    i8 26, label %bb.b
    i8 86, label %bb.b
    i8 34, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.val114 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val114, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.0.copyload.i117 = load i32, ptr %i.f, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i117) #7, !srcloc !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.096 = phi i32 [ 0, %bb.a ], [ %.0.copyload.i117, %bb.b ]
  %i.g = zext i32 %2 to i64                       ; 4 uses
  %.val115 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val115, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i118 = load i8, ptr %i.i, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i118) #7, !srcloc !21
  switch i8 %.0.copyload.i118, label %bb.e [
    i8 26, label %bb.d
    i8 86, label %bb.d
    i8 34, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %.val113 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val113, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %.0.copyload.i119 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i119) #7, !srcloc !19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.095 = phi i32 [ 0, %bb.c ], [ %.0.copyload.i119, %bb.d ]
  %.not100 = icmp eq i8 %.0.copyload.i, %.0.copyload.i118
  %.not101 = icmp eq i32 %.096, %.095
  %or.cond = select i1 %.not100, i1 %.not101, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw nsw i64 %i.b, 44                 ; 2 uses
  %.val112 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val112, i64 %i.l
  %.0.copyload.i120 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i120) #7, !srcloc !19
  %.val111 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val111, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %.0.copyload.i121 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i121) #7, !srcloc !19
  %.not102 = icmp eq i32 %.0.copyload.i120, %.0.copyload.i121
  br i1 %.not102, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val110 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val110, i64 %i.l
  %.0.copyload.i122 = load i32, ptr %i.p, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i122) #7, !srcloc !19
  %.not103 = icmp eq i32 %.0.copyload.i122, 0
  br i1 %.not103, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g, %.preheader
  %.1 = phi i32 [ %i.ab, %.preheader ], [ 0, %bb.g ] ; 2 uses
  %i.q = shl i32 %.1, 3                           ; 2 uses
  %.val109 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val109, i64 %i.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.0.copyload.i123 = load i32, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i123) #7, !srcloc !19
  %i.t = add i32 %.0.copyload.i123, %i.q
  %i.u = zext i32 %i.t to i64
  %.val108 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val108, i64 %i.u
  %.0.copyload.i124 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i124) #7, !srcloc !19
  %.val107 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val107, i64 %i.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.0.copyload.i125 = load i32, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i125) #7, !srcloc !19
  %i.y = add i32 %.0.copyload.i125, %i.q
  %i.z = zext i32 %i.y to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 %i.z
  %.0.copyload.i126 = load i32, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i126) #7, !srcloc !19
  %.not104 = icmp ne i32 %.0.copyload.i126, %.0.copyload.i124 ; 2 uses
  %i.ab = add nuw i32 %.1, 1                      ; 2 uses
  %.not105 = icmp eq i32 %i.ab, %.0.copyload.i122
  %or.cond106 = select i1 %.not104, i1 true, i1 %.not105
  br i1 %or.cond106, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader
  %.not104.not = xor i1 %.not104, true
  %i.ac = zext i1 %.not104.not to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %.loopexit, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ], [ %i.ac, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3A0x3AgetStringID0x28hermes0x3A0x3ALiteralString0x2A0x290x20const(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = zext i32 %1 to i64
  %.val39 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val39, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = zext i32 %2 to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.0.copyload.i43 = load i32, ptr %i.j, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i43) #7, !srcloc !19
  %i.k = zext i32 %.0.copyload.i43 to i64
  %.val40 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val40, i64 %i.k
  %.0.copyload.i44 = load i64, ptr %i.l, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i44) #7, !srcloc !20
  %i.m = zext i32 %i.c to i64                     ; 2 uses
  %.val42 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val42, i64 %i.m
  store i64 %.0.copyload.i44, ptr %i.n, align 1
  %.val41 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val41, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.0.copyload.i44, ptr %i.p, align 1
  %i.q = add i32 %.0.copyload.i, 180
  %i.r = tail call i32 @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AStringLiteralTable0x3A0x3AgetStringID0x28llvh0x3A0x3AStringRef0x290x20const(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.c)
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %i.r
}

end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %i.cqs = getelementptr inbounds nuw i8, ptr %.val51178, i64 %i.cqr
  %.0.copyload.i51666 = load i8, ptr %i.cqs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i51666) #7, !srcloc !21
  %i.cqt = zext i8 %.0.copyload.i51666 to i32
  %i.cqu = load i32, ptr %i.a, align 8, !tbaa !17 ; 6 uses
  %i.cqv = add i32 %i.cqu, -80                    ; 2 uses
  store i32 %i.cqv, ptr %i.a, align 8, !tbaa !17
  %i.cqw = add i32 %i.b, -1004                    ; 2 uses
  %i.cqx = zext i32 %i.cqw to i64                 ; 35 uses
  %.val48988 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cqy = getelementptr inbounds nuw i8, ptr %.val48988, i64 %i.cqx
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cqy, i64 48
  %.0.copyload.i51667 = load i32, ptr %i.cqz, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51667) #7, !srcloc !19
  %i.cra = add nuw nsw i64 %i.cqx, 4              ; 9 uses
  %.val48987 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.crb = getelementptr inbounds nuw i8, ptr %.val48987, i64 %i.cra
  %.0.copyload.i51668 = load i32, ptr %i.crb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51668) #7, !srcloc !19
  %.val48986 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.crc = getelementptr inbounds nuw i8, ptr %.val48986, i64 %i.cqx
  %.0.copyload.i51669 = load i32, ptr %i.crc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51669) #7, !srcloc !19
  %i.crd = sub i32 %.0.copyload.i51668, %.0.copyload.i51669
  %i.cre = ashr i32 %i.crd, 3                     ; 12 uses
  %i.crf = sub i32 %.0.copyload.i51667, %i.cre    ; 9 uses
  %.not45579 = icmp eq i32 %i.cre, %.0.copyload.i51667 ; 4 uses
  br i1 %.not45579, label %bb.ly, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.crg = icmp ugt i32 %i.crf, 268435455
  br i1 %i.crg, label %.loopexit54649, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.crh = shl nuw i32 %i.crf, 4                  ; 2 uses
  %i.cri = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.crh) #7 ; 2 uses
  %i.crj = add i32 %i.cri, %i.crh
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lv
  %.2343857 = phi i32 [ %i.crj, %bb.lx ], [ 0, %bb.lv ]
  %.1043741 = phi i32 [ %i.cri, %bb.lx ], [ 0, %bb.lv ] ; 4 uses
  %.not45580 = icmp ult i32 %i.cre, %.0.copyload.i51667
  br i1 %.not45580, label %.preheader54735, label %.loopexit54737

.preheader54735:                                  ; preds = %bb.ly, %bb.me
  %.344254 = phi i32 [ %i.cuh, %bb.me ], [ %i.cre, %bb.ly ] ; 6 uses
  %.2043956 = phi i32 [ %.2143957, %bb.me ], [ %.1043741, %bb.ly ] ; 4 uses
  %.2443858 = phi i32 [ %.2543859, %bb.me ], [ %.2343857, %bb.ly ] ; 3 uses
  %.1143742 = phi i32 [ %.1243743, %bb.me ], [ %.1043741, %bb.ly ] ; 6 uses
  %.val48985 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.crk = getelementptr inbounds nuw i8, ptr %.val48985, i64 %i.cqx
  %i.crl = getelementptr inbounds nuw i8, ptr %i.crk, i64 32
  %.0.copyload.i51670 = load i32, ptr %i.crl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51670) #7, !srcloc !19
  %.val48984 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.crm = getelementptr inbounds nuw i8, ptr %.val48984, i64 %i.cqx
  %i.crn = getelementptr inbounds nuw i8, ptr %i.crm, i64 44
  %.0.copyload.i51671 = load i32, ptr %i.crn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51671) #7, !srcloc !19
  %i.cro = add i32 %.0.copyload.i51671, %.344254  ; 2 uses
  %i.crp = udiv i32 %i.cro, 341                   ; 2 uses
  %i.crq = shl nuw nsw i32 %i.crp, 2
  %i.crr = add i32 %i.crq, %.0.copyload.i51670
  %i.crs = zext i32 %i.crr to i64
  %.val48983 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.crt = getelementptr inbounds nuw i8, ptr %.val48983, i64 %i.crs
  %.0.copyload.i51672 = load i32, ptr %i.crt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51672) #7, !srcloc !19
  %.neg = mul i32 %i.crp, -341
  %i.cru = add i32 %.neg, %i.cro
  %i.crv = mul i32 %i.cru, 12
  %i.crw = add i32 %i.crv, %.0.copyload.i51672    ; 4 uses
  %.val48982 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.crx = getelementptr inbounds nuw i8, ptr %.val48982, i64 %i.cqx
  %i.cry = getelementptr inbounds nuw i8, ptr %i.crx, i64 68
  %.0.copyload.i51673 = load i32, ptr %i.cry, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51673) #7, !srcloc !19
  %i.crz = lshr i32 %.344254, 3
  %i.csa = and i32 %i.crz, 536870908
  %i.csb = add i32 %.0.copyload.i51673, %i.csa
  %i.csc = zext i32 %i.csb to i64
  %.val48981 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csd = getelementptr inbounds nuw i8, ptr %.val48981, i64 %i.csc
  %.0.copyload.i51674 = load i32, ptr %i.csd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51674) #7, !srcloc !19
  %i.cse = and i32 %.344254, 31
  %i.csf = lshr i32 %.0.copyload.i51674, %i.cse
  %i.csg = shl i32 %i.csf, 31                     ; 2 uses
  %i.csh = icmp ult i32 %.2043956, %.2443858
  br i1 %i.csh, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %.preheader54735
  %i.csi = zext i32 %i.crw to i64                 ; 3 uses
  %.val48980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csj = getelementptr inbounds nuw i8, ptr %.val48980, i64 %i.csi
  %.0.copyload.i51675 = load i32, ptr %i.csj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51675) #7, !srcloc !19
  %.val48979 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csk = getelementptr inbounds nuw i8, ptr %.val48979, i64 %i.csi
  %i.csl = getelementptr inbounds nuw i8, ptr %i.csk, i64 4
  %.0.copyload.i51676 = load i32, ptr %i.csl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51676) #7, !srcloc !19
  %.val51211 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csm = getelementptr inbounds nuw i8, ptr %.val51211, i64 %i.csi
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csm, i64 11
  %.0.copyload.i51677 = load i8, ptr %i.csn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i51677) #7, !srcloc !22
  %i.cso = zext i8 %.0.copyload.i51677 to i32
  %i.csp = zext i32 %.2043956 to i64              ; 4 uses
  %.val50296 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csq = getelementptr inbounds nuw i8, ptr %.val50296, i64 %i.csp
  %i.csr = getelementptr inbounds nuw i8, ptr %i.csq, i64 12
  store i32 %i.csg, ptr %i.csr, align 1
  %.val50295 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.css = getelementptr inbounds nuw i8, ptr %.val50295, i64 %i.csp
  store i32 %.344254, ptr %i.css, align 1
  %i.cst = icmp slt i8 %.0.copyload.i51677, 0     ; 2 uses
  %i.csu = select i1 %i.cst, i32 %.0.copyload.i51676, i32 %i.cso
  %.val50294 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csv = getelementptr inbounds nuw i8, ptr %.val50294, i64 %i.csp
  %i.csw = getelementptr inbounds nuw i8, ptr %i.csv, i64 8
  store i32 %i.csu, ptr %i.csw, align 1
  %i.csx = select i1 %i.cst, i32 %.0.copyload.i51675, i32 %i.crw
  %.val50293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csy = getelementptr inbounds nuw i8, ptr %.val50293, i64 %i.csp
  %i.csz = getelementptr inbounds nuw i8, ptr %i.csy, i64 4
  store i32 %i.csx, ptr %i.csz, align 1
  br label %bb.me

bb.ma:                                            ; preds = %.preheader54735
  %i.cta = sub i32 %.2043956, %.1143742           ; 3 uses
  %i.ctb = ashr i32 %i.cta, 4
  %i.ctc = add nsw i32 %i.ctb, 1                  ; 2 uses
  %i.ctd = icmp ugt i32 %i.ctc, 268435455
  br i1 %i.ctd, label %.loopexit54649, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.cte = sub i32 %.2443858, %.1143742           ; 2 uses
  %i.ctf = ashr i32 %i.cte, 3
  %i.ctg = tail call i32 @llvm.umax.i32(i32 %i.ctf, i32 %i.ctc)
  %i.cth = icmp ugt i32 %i.cte, 2147483631
  %i.cti = select i1 %i.cth, i32 268435455, i32 %i.ctg ; 2 uses
  %i.ctj = icmp ugt i32 %i.cti, 268435455
  br i1 %i.ctj, label %.loopexit54649, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.ctk = shl nuw i32 %i.cti, 4                  ; 2 uses
  %i.ctl = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ctk) #7 ; 2 uses
  %i.ctm = zext i32 %i.crw to i64                 ; 3 uses
  %.val48978 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ctn = getelementptr inbounds nuw i8, ptr %.val48978, i64 %i.ctm
  %.0.copyload.i51678 = load i32, ptr %i.ctn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51678) #7, !srcloc !19
  %.val48977 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cto = getelementptr inbounds nuw i8, ptr %.val48977, i64 %i.ctm
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.cto, i64 4
  %.0.copyload.i51679 = load i32, ptr %i.ctp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51679) #7, !srcloc !19
  %.val51177 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ctq = getelementptr inbounds nuw i8, ptr %.val51177, i64 %i.ctm
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.ctq, i64 11
  %.0.copyload.i51680 = load i8, ptr %i.ctr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i51680) #7, !srcloc !21
  %i.cts = zext i8 %.0.copyload.i51680 to i32
  %i.ctt = and i32 %i.cta, -16
  %i.ctu = add i32 %i.ctl, %i.ctt                 ; 3 uses
  %i.ctv = zext i32 %i.ctu to i64                 ; 4 uses
  %.val50292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ctw = getelementptr inbounds nuw i8, ptr %.val50292, i64 %i.ctv
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.ctw, i64 12
  store i32 %i.csg, ptr %i.ctx, align 1
  %.val50291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cty = getelementptr inbounds nuw i8, ptr %.val50291, i64 %i.ctv
  store i32 %.344254, ptr %i.cty, align 1
  %.not45581 = icmp sgt i8 %.0.copyload.i51680, -1 ; 2 uses
  %i.ctz = select i1 %.not45581, i32 %i.cts, i32 %.0.copyload.i51679
  %.val50290 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cua = getelementptr inbounds nuw i8, ptr %.val50290, i64 %i.ctv
  %i.cub = getelementptr inbounds nuw i8, ptr %i.cua, i64 8
  store i32 %i.ctz, ptr %i.cub, align 1
  %i.cuc = select i1 %.not45581, i32 %i.crw, i32 %.0.copyload.i51678
  %.val50289 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cud = getelementptr inbounds nuw i8, ptr %.val50289, i64 %i.ctv
  %i.cue = getelementptr inbounds nuw i8, ptr %i.cud, i64 4
  store i32 %i.cuc, ptr %i.cue, align 1
  %i.cuf = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.ctl, i32 noundef %.1143742, i32 noundef %i.cta) #7 ; 3 uses
  %i.cug = add i32 %i.cuf, %i.ctk                 ; 2 uses
  %.not45582 = icmp eq i32 %.1143742, 0
  br i1 %.not45582, label %bb.me, label %bb.md

bb.md:                                            ; preds = %bb.mc
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.1143742) #7
  br label %bb.me

bb.me:                                            ; preds = %bb.mc, %bb.md, %bb.lz
  %.2143957.in = phi i32 [ %.2043956, %bb.lz ], [ %i.ctu, %bb.md ], [ %i.ctu, %bb.mc ]
  %.2543859 = phi i32 [ %.2443858, %bb.lz ], [ %i.cug, %bb.md ], [ %i.cug, %bb.mc ]
  %.1243743 = phi i32 [ %.1143742, %bb.lz ], [ %i.cuf, %bb.md ], [ %i.cuf, %bb.mc ] ; 2 uses
  %.2143957 = add i32 %.2143957.in, 16            ; 2 uses
  %i.cuh = add i32 %.344254, 1                    ; 2 uses
  %.not45583 = icmp eq i32 %.0.copyload.i51667, %i.cuh
  br i1 %.not45583, label %.loopexit54737, label %.preheader54735

.loopexit54737:                                   ; preds = %bb.me, %bb.ly
  %.2243958 = phi i32 [ %.1043741, %bb.ly ], [ %.2143957, %bb.me ] ; 5 uses
  %.1343744 = phi i32 [ %.1043741, %bb.ly ], [ %.1243743, %bb.me ] ; 12 uses
  %i.cui = zext i32 %i.cqv to i64                 ; 12 uses
  %.val50288 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cuj = getelementptr inbounds nuw i8, ptr %.val50288, i64 %i.cui
  %i.cuk = getelementptr inbounds nuw i8, ptr %i.cuj, i64 52
  store i32 %i.cre, ptr %i.cuk, align 1
  %i.cul = add i32 %i.b, -924
  %.val50287 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cum = getelementptr inbounds nuw i8, ptr %.val50287, i64 %i.cui
  %i.cun = getelementptr inbounds nuw i8, ptr %i.cum, i64 48
  store i32 %i.cul, ptr %i.cun, align 1
  %i.cuo = sub i32 %.2243958, %.1343744           ; 2 uses
  %i.cup = ashr i32 %i.cuo, 4                     ; 3 uses
  %i.cuq = icmp sgt i32 %i.cuo, 2048
  br i1 %i.cuq, label %.preheader54733, label %.loopexit54734

.preheader54733:                                  ; preds = %.loopexit54737, %bb.mf
  %.444255 = phi i32 [ %i.cuu, %bb.mf ], [ %i.cup, %.loopexit54737 ] ; 4 uses
  %i.cur = shl nuw nsw i32 %.444255, 4
  %i.cus = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.cur) #7 ; 3 uses
  %.not45584 = icmp eq i32 %i.cus, 0
  br i1 %.not45584, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %.preheader54733
  %i.cut = icmp ugt i32 %.444255, 1
  %i.cuu = lshr i32 %.444255, 1
  br i1 %i.cut, label %.preheader54733, label %.loopexit54734

.loopexit54734:                                   ; preds = %bb.mf, %.loopexit54737
  %i.cuv = add i32 %i.cqu, -32
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fstable_sort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x3A0x3Adifference_type0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x3A0x3Avalue_type0x2A0x2C0x20long0x29(ptr noundef %0, i32 noundef %.1343744, i32 noundef %.2243958, i32 noundef %i.cuv, i32 noundef %i.cup, i32 noundef 0, i32 noundef 0) #7
  br label %bb.mh

bb.mg:                                            ; preds = %.preheader54733
  %i.cuw = add i32 %i.cqu, -32
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fstable_sort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x3A0x3Adifference_type0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x3A0x3Avalue_type0x2A0x2C0x20long0x29(ptr noundef %0, i32 noundef %.1343744, i32 noundef %.2243958, i32 noundef %i.cuw, i32 noundef %i.cup, i32 noundef %i.cus, i32 noundef %.444255) #7
  tail call void @w2c_hermes_dlfree(ptr noundef %0, i32 noundef %i.cus) #7
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %.loopexit54734
  %i.cux = tail call i32 @llvm.usub.sat.i32(i32 %i.cre, i32 %.0.copyload.i51667) ; 3 uses
  %i.cuy = shl i32 %i.cux, 4
  %i.cuz = sub i32 %.1343744, %i.cuy              ; 2 uses
  %i.cva = tail call i32 @llvm.umax.i32(i32 %i.cre, i32 255)
  %i.cvb = tail call i32 @llvm.umin.i32(i32 %i.cva, i32 %.0.copyload.i51667) ; 2 uses
  %i.cvc = sub i32 %i.cvb, %i.cre                 ; 3 uses
  %i.cvd = shl i32 %i.cvc, 4                      ; 2 uses
  %i.cve = add i32 %.1343744, %i.cvd              ; 3 uses
  %i.cvf = sub i32 %i.cve, %i.cuz
  %i.cvg = ashr i32 %i.cvf, 4
  %i.cvh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cvg, i1 false)
  %i.cvi = shl nuw nsw i32 %i.cvh, 1
  %i.cvj = sub nsw i32 62, %i.cvi
  %i.cvk = sub i32 0, %i.cux
  %i.cvl = icmp eq i32 %i.cvc, %i.cvk             ; 2 uses
  %i.cvm = select i1 %i.cvl, i32 0, i32 %i.cvj
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef %0, i32 noundef %i.cuz, i32 noundef %i.cve, i32 noundef %i.cvm) #7
  %i.cvn = tail call i32 @llvm.umax.i32(i32 %i.cre, i32 65535) ; 2 uses
  %i.cvo = tail call i32 @llvm.umin.i32(i32 %i.cvn, i32 %.0.copyload.i51667) ; 2 uses
  %i.cvp = sub i32 %i.cvo, %i.cre                 ; 2 uses
  %i.cvq = shl i32 %i.cvp, 4                      ; 3 uses
  %i.cvr = add i32 %.1343744, %i.cvq              ; 2 uses
  %i.cvs = sub i32 %i.cvq, %i.cvd
  %i.cvt = ashr exact i32 %i.cvs, 4
  %i.cvu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cvt, i1 false)
  %i.cvv = shl nuw nsw i32 %i.cvu, 1
  %i.cvw = sub nsw i32 62, %i.cvv
  %i.cvx = icmp eq i32 %i.cvo, %i.cvb             ; 2 uses
  %i.cvy = select i1 %i.cvx, i32 0, i32 %i.cvw
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef %0, i32 noundef %i.cve, i32 noundef %i.cvr, i32 noundef %i.cvy) #7
  %i.cvz = shl i32 %i.crf, 4                      ; 2 uses
  %i.cwa = add i32 %.1343744, %i.cvz
  %i.cwb = sub i32 %i.cvz, %i.cvq
  %i.cwc = ashr exact i32 %i.cwb, 4
  %i.cwd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cwc, i1 false)
  %i.cwe = shl nuw nsw i32 %i.cwd, 1
  %i.cwf = sub nsw i32 62, %i.cwe
  %i.cwg = icmp ult i32 %i.cvn, %.0.copyload.i51667 ; 2 uses
  %i.cwh = select i1 %i.cwg, i32 %i.cwf, i32 0
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef %0, i32 noundef %i.cvr, i32 noundef %i.cwa, i32 noundef %i.cwh) #7
  br i1 %.not45579, label %bb.mk, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.cwi = icmp ugt i32 %i.crf, 536870911
  br i1 %i.cwi, label %.loopexit54660, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.cwj = shl nuw i32 %i.crf, 3                  ; 2 uses
  %i.cwk = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.cwj) #7 ; 2 uses
  %i.cwl = add i32 %i.cwk, %i.cwj
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mh
  %.544256 = phi i32 [ %i.cwk, %bb.mj ], [ 0, %bb.mh ] ; 4 uses
  %.143590 = phi i32 [ %i.cwl, %bb.mj ], [ 0, %bb.mh ]
  %i.cwm = icmp eq i32 %.2243958, %.1343744
  br i1 %i.cwm, label %.loopexit54732, label %.preheader54729

.preheader54729:                                  ; preds = %bb.mk, %bb.mr
  %.644257 = phi i32 [ %.744258, %bb.mr ], [ %.544256, %bb.mk ] ; 4 uses
  %.2643860 = phi i32 [ %.2743861, %bb.mr ], [ %.544256, %bb.mk ] ; 6 uses
  %.1143636 = phi i32 [ %i.cxo, %bb.mr ], [ %.1343744, %bb.mk ] ; 3 uses
  %.243591 = phi i32 [ %.343592, %bb.mr ], [ %.143590, %bb.mk ] ; 3 uses
  %i.cwn = icmp ult i32 %.644257, %.243591
  br i1 %i.cwn, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %.preheader54729
  %i.cwo = zext i32 %.1143636 to i64
  %.val50590 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cwp = getelementptr inbounds nuw i8, ptr %.val50590, i64 %i.cwo
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cwp, i64 4
  %.0.copyload.i51681 = load i64, ptr %i.cwq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i51681) #7, !srcloc !20
  %i.cwr = zext i32 %.644257 to i64
  %.val51028 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cws = getelementptr inbounds nuw i8, ptr %.val51028, i64 %i.cwr
  store i64 %.0.copyload.i51681, ptr %i.cws, align 1
  br label %bb.mr

bb.mm:                                            ; preds = %.preheader54729
  %i.cwt = sub i32 %.644257, %.2643860            ; 3 uses
  %i.cwu = ashr i32 %i.cwt, 3
  %i.cwv = add nsw i32 %i.cwu, 1                  ; 2 uses
  %i.cww = icmp ugt i32 %i.cwv, 536870911
  br i1 %i.cww, label %.loopexit54660, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.cwx = sub i32 %.243591, %.2643860            ; 2 uses
  %i.cwy = ashr i32 %i.cwx, 2
  %i.cwz = tail call i32 @llvm.umax.i32(i32 %i.cwy, i32 %i.cwv)
  %i.cxa = icmp ugt i32 %i.cwx, 2147483639
  %i.cxb = select i1 %i.cxa, i32 536870911, i32 %i.cwz ; 3 uses
  %.not45589 = icmp eq i32 %i.cxb, 0
  br i1 %.not45589, label %._crit_edge55819, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.cxc = icmp ugt i32 %i.cxb, 536870911
  br i1 %i.cxc, label %.loopexit54649, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.cxd = shl nuw i32 %i.cxb, 3                  ; 2 uses
  %i.cxe = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.cxd) #7
  br label %._crit_edge55819

._crit_edge55819:                                 ; preds = %bb.mn, %bb.mp
  %.pre-phi55935.a = phi i32 [ %i.cxd, %bb.mp ], [ 0, %bb.mn ]
  %.13 = phi i32 [ %i.cxe, %bb.mp ], [ 0, %bb.mn ] ; 2 uses
  %i.cxf = and i32 %i.cwt, -8
  %i.cxg = add i32 %.13, %i.cxf                   ; 3 uses
  %i.cxh = zext i32 %.1143636 to i64
  %.val50589 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cxi = getelementptr inbounds nuw i8, ptr %.val50589, i64 %i.cxh
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cxi, i64 4
  %.0.copyload.i51682 = load i64, ptr %i.cxj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i51682) #7, !srcloc !20
  %i.cxk = zext i32 %i.cxg to i64
  %.val51027 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cxl = getelementptr inbounds nuw i8, ptr %.val51027, i64 %i.cxk
  store i64 %.0.copyload.i51682, ptr %i.cxl, align 1
  %i.cxm = tail call i32 @w2c_hermes_memmove(ptr noundef %0, i32 noundef %.13, i32 noundef %.2643860, i32 noundef %i.cwt) #7 ; 3 uses
  %i.cxn = add i32 %i.cxm, %.pre-phi55935.a       ; 2 uses
  %.not45590 = icmp eq i32 %.2643860, 0
  br i1 %.not45590, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %._crit_edge55819
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.2643860) #7
  br label %bb.mr

bb.mr:                                            ; preds = %._crit_edge55819, %bb.mq, %bb.ml
  %.744258.in = phi i32 [ %.644257, %bb.ml ], [ %i.cxg, %bb.mq ], [ %i.cxg, %._crit_edge55819 ]
  %.2743861 = phi i32 [ %.2643860, %bb.ml ], [ %i.cxm, %bb.mq ], [ %i.cxm, %._crit_edge55819 ] ; 2 uses
  %.343592 = phi i32 [ %.243591, %bb.ml ], [ %i.cxn, %bb.mq ], [ %i.cxn, %._crit_edge55819 ]
  %.744258 = add i32 %.744258.in, 8               ; 2 uses
  %i.cxo = add i32 %.1143636, 16                  ; 2 uses
  %.not45591 = icmp eq i32 %.2243958, %i.cxo
  br i1 %.not45591, label %.loopexit54732, label %.preheader54729

.loopexit54732:                                   ; preds = %bb.mr, %bb.mk
  %.844259 = phi i32 [ %.544256, %bb.mk ], [ %.744258, %bb.mr ] ; 2 uses
  %.2843862 = phi i32 [ %.544256, %bb.mk ], [ %.2743861, %bb.mr ] ; 4 uses
  %i.cxp = load i32, ptr %i.a, align 8, !tbaa !17 ; 11 uses
  %i.cxq = add i32 %i.cxp, -96                    ; 2 uses
  store i32 %i.cxq, ptr %i.a, align 8, !tbaa !17
  %i.cxr = add i32 %i.cqu, -32
  %i.cxs = zext i32 %i.cxr to i64                 ; 17 uses
  %.val51026 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cxt = getelementptr inbounds nuw i8, ptr %.val51026, i64 %i.cxs
  store i64 0, ptr %i.cxt, align 1
  %i.cxu = add nuw nsw i64 %i.cxs, 24             ; 2 uses
  %.val51230 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cxv = getelementptr inbounds nuw i8, ptr %.val51230, i64 %i.cxu
  store i16 257, ptr %i.cxv, align 1
  %i.cxw = add nuw nsw i64 %i.cxs, 16             ; 5 uses
  %.val51025 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cxx = getelementptr inbounds nuw i8, ptr %.val51025, i64 %i.cxw
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a

.preheader54363.6:                                ; preds = %.preheader54363.5
  %i.lqu = zext i32 %i.lqt to i64
  %.val49788.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqv = getelementptr inbounds nuw i8, ptr %.val49788.6, i64 %i.lqu
  store i32 -4, ptr %i.lqv, align 1
  %i.lqw = add i32 %i.lpv, 448
  br label %.loopexit54364

.loopexit54364:                                   ; preds = %.preheader54363, %.preheader54363.1, %.preheader54363.2, %.preheader54363.3, %.preheader54363.4, %.preheader54363.5, %.preheader54363.6, %bb.aud
  %.3844134 = phi i32 [ %i.lpv, %bb.aud ], [ %i.lqe, %.preheader54363 ], [ %i.lqh, %.preheader54363.1 ], [ %i.lqk, %.preheader54363.2 ], [ %i.lqn, %.preheader54363.3 ], [ %i.lqq, %.preheader54363.4 ], [ %i.lqt, %.preheader54363.5 ], [ %i.lqw, %.preheader54363.6 ]
  %i.lqx = icmp samesign ult i32 %i.lqa, 7
  br i1 %i.lqx, label %.loopexit54362, label %bb.aue

bb.aue:                                           ; preds = %.loopexit54364
  %i.lqy = shl i32 %.0.copyload.i52828, 6
  %i.lqz = add i32 %i.lqy, %i.lpv
  br label %bb.auf

bb.auf:                                           ; preds = %bb.auf, %bb.aue
  %.3944135 = phi i32 [ %.3844134, %bb.aue ], [ %i.lrq, %bb.auf ] ; 2 uses
  %i.lra = zext i32 %.3944135 to i64              ; 8 uses
  %.val49787 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrb = getelementptr inbounds nuw i8, ptr %.val49787, i64 %i.lra
  %i.lrc = getelementptr inbounds nuw i8, ptr %i.lrb, i64 448
  store i32 -4, ptr %i.lrc, align 1
  %.val49786 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrd = getelementptr inbounds nuw i8, ptr %.val49786, i64 %i.lra
  %i.lre = getelementptr inbounds nuw i8, ptr %i.lrd, i64 384
  store i32 -4, ptr %i.lre, align 1
  %.val49785 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrf = getelementptr inbounds nuw i8, ptr %.val49785, i64 %i.lra
  %i.lrg = getelementptr inbounds nuw i8, ptr %i.lrf, i64 320
  store i32 -4, ptr %i.lrg, align 1
  %.val49784 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrh = getelementptr inbounds nuw i8, ptr %.val49784, i64 %i.lra
  %i.lri = getelementptr inbounds nuw i8, ptr %i.lrh, i64 256
  store i32 -4, ptr %i.lri, align 1
  %.val49783 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrj = getelementptr inbounds nuw i8, ptr %.val49783, i64 %i.lra
  %i.lrk = getelementptr inbounds nuw i8, ptr %i.lrj, i64 192
  store i32 -4, ptr %i.lrk, align 1
  %.val49782 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrl = getelementptr inbounds nuw i8, ptr %.val49782, i64 %i.lra
  %i.lrm = getelementptr inbounds nuw i8, ptr %i.lrl, i64 128
  store i32 -4, ptr %i.lrm, align 1
  %.val49781 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrn = getelementptr inbounds nuw i8, ptr %.val49781, i64 %i.lra
  %i.lro = getelementptr inbounds nuw i8, ptr %i.lrn, i64 64
  store i32 -4, ptr %i.lro, align 1
  %.val49780 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrp = getelementptr inbounds nuw i8, ptr %.val49780, i64 %i.lra
  store i32 -4, ptr %i.lrp, align 1
  %i.lrq = add i32 %.3944135, 512                 ; 2 uses
  %.not46004 = icmp eq i32 %i.lrq, %i.lqz
  br i1 %.not46004, label %.loopexit54362, label %bb.auf

bb.aug:                                           ; preds = %bb.auc
  %i.lrr = shl i32 %.0.copyload.i52823, 6
  %i.lrs = add i32 %i.lrr, %.0.copyload.i52822
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.hei, i32 noundef %.0.copyload.i52822, i32 noundef %i.lrs) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52822) #7
  %.val48004 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrt = getelementptr inbounds nuw i8, ptr %.val48004, i64 %i.hek
  %.0.copyload.i52829 = load i32, ptr %i.lrt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52829) #7, !srcloc !19
  %.val48003 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lru = getelementptr inbounds nuw i8, ptr %.val48003, i64 %i.hej
  %.0.copyload.i52830 = load i32, ptr %i.lru, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52830) #7, !srcloc !19
  br label %.loopexit54362

.loopexit54362:                                   ; preds = %bb.auf, %.loopexit54364, %bb.aug
  %.10044351 = phi i32 [ %i.lpv, %.loopexit54364 ], [ %.0.copyload.i52829, %bb.aug ], [ %i.lpv, %bb.auf ] ; 2 uses
  %.843682 = phi i32 [ %.0.copyload.i52828, %.loopexit54364 ], [ %.0.copyload.i52830, %bb.aug ], [ %.0.copyload.i52828, %bb.auf ]
  %i.lrv = add i32 %.843682, -1                   ; 2 uses
  %i.lrw = lshr i32 %i.lns, 4
  %i.lrx = lshr i32 %i.lns, 9
  %i.lry = xor i32 %i.lrw, %i.lrx
  %i.lrz = and i32 %i.lrv, %i.lry                 ; 2 uses
  %i.lsa = shl i32 %i.lrz, 6
  %i.lsb = add i32 %i.lsa, %.10044351             ; 3 uses
  %i.lsc = zext i32 %i.lsb to i64
  %.val48002 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsd = getelementptr inbounds nuw i8, ptr %.val48002, i64 %i.lsc
  %.0.copyload.i52831 = load i32, ptr %i.lsd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52831) #7, !srcloc !19
  %.not46005 = icmp eq i32 %.0.copyload.i52831, %i.lns
  br i1 %.not46005, label %.loopexit54361, label %.preheader54360

.preheader54360:                                  ; preds = %.loopexit54362, %bb.aui
  %.4044136 = phi i32 [ %.0.copyload.i52832, %bb.aui ], [ %.0.copyload.i52831, %.loopexit54362 ] ; 2 uses
  %.115 = phi i32 [ %i.lsk, %bb.aui ], [ 1, %.loopexit54362 ] ; 2 uses
  %.943683 = phi i32 [ %i.lsi, %bb.aui ], [ 0, %.loopexit54362 ] ; 3 uses
  %.2343508 = phi i32 [ %i.lsn, %bb.aui ], [ %i.lsb, %.loopexit54362 ] ; 2 uses
  %.1843391 = phi i32 [ %i.lsl, %bb.aui ], [ %i.lrz, %.loopexit54362 ]
  %i.lse = icmp eq i32 %.4044136, -4
  %.not46008 = icmp eq i32 %.943683, 0            ; 2 uses
  br i1 %i.lse, label %bb.auh, label %bb.aui

bb.auh:                                           ; preds = %.preheader54360
  %i.lsf = select i1 %.not46008, i32 %.2343508, i32 %.943683
  br label %bb.auj

bb.aui:                                           ; preds = %.preheader54360
  %i.lsg = icmp eq i32 %.4044136, -8
  %i.lsh = select i1 %i.lsg, i1 %.not46008, i1 false
  %i.lsi = select i1 %i.lsh, i32 %.2343508, i32 %.943683
  %i.lsj = add i32 %.1843391, %.115
  %i.lsk = add i32 %.115, 1
  %i.lsl = and i32 %i.lsj, %i.lrv                 ; 2 uses
  %i.lsm = shl i32 %i.lsl, 6
  %i.lsn = add i32 %i.lsm, %.10044351             ; 3 uses
  %i.lso = zext i32 %i.lsn to i64
  %.val48001 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsp = getelementptr inbounds nuw i8, ptr %.val48001, i64 %i.lso
  %.0.copyload.i52832 = load i32, ptr %i.lsp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52832) #7, !srcloc !19
  %.not46007 = icmp eq i32 %i.lns, %.0.copyload.i52832
  br i1 %.not46007, label %.loopexit54361, label %.preheader54360

bb.auj:                                           ; preds = %bb.aub, %bb.auh
  %.2543510 = phi i32 [ %i.lsf, %bb.auh ], [ %.2243507, %bb.aub ] ; 2 uses
  %i.lsq = zext i32 %.2543510 to i64
  %.val48000 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsr = getelementptr inbounds nuw i8, ptr %.val48000, i64 %i.lsq
  %.0.copyload.i52833 = load i32, ptr %i.lsr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52833) #7, !srcloc !19
  br label %.loopexit54361

.loopexit54361:                                   ; preds = %bb.aui, %.loopexit54362, %bb.auj
  %.2643511 = phi i32 [ %.2543510, %bb.auj ], [ %i.lsb, %.loopexit54362 ], [ %i.lsn, %bb.aui ]
  %.2043149 = phi i32 [ %.0.copyload.i52833, %bb.auj ], [ %i.lns, %.loopexit54362 ], [ %i.lns, %bb.aui ]
  %.val47999 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lss = getelementptr inbounds nuw i8, ptr %.val47999, i64 %i.hel
  %.0.copyload.i52834 = load i32, ptr %i.lss, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52834) #7, !srcloc !19
  %i.lst = add i32 %.0.copyload.i52834, 1
  %.val49779 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsu = getelementptr inbounds nuw i8, ptr %.val49779, i64 %i.hel
  store i32 %i.lst, ptr %i.lsu, align 1
  %.not46009 = icmp eq i32 %.2043149, -4
  br i1 %.not46009, label %bb.aul, label %bb.auk

bb.auk:                                           ; preds = %.loopexit54361
  %.val47998 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsv = getelementptr inbounds nuw i8, ptr %.val47998, i64 %i.hem
  %.0.copyload.i52835 = load i32, ptr %i.lsv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52835) #7, !srcloc !19
  %i.lsw = add i32 %.0.copyload.i52835, -1
  %.val49778 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsx = getelementptr inbounds nuw i8, ptr %.val49778, i64 %i.hem
  store i32 %i.lsw, ptr %i.lsx, align 1
  br label %bb.aul

bb.aul:                                           ; preds = %bb.auk, %.loopexit54361
  %i.lsy = zext i32 %.2643511 to i64              ; 10 uses
  %.val50850 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsz = getelementptr inbounds nuw i8, ptr %.val50850, i64 %i.lsy
  %i.lta = getelementptr inbounds nuw i8, ptr %i.lsz, i64 4
  store i64 0, ptr %i.lta, align 1
  %.val49777 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltb = getelementptr inbounds nuw i8, ptr %.val49777, i64 %i.lsy
  store i32 %i.lns, ptr %i.ltb, align 1
  %.val50849 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltc = getelementptr inbounds nuw i8, ptr %.val50849, i64 %i.lsy
  %i.ltd = getelementptr inbounds nuw i8, ptr %i.ltc, i64 12
  store i64 0, ptr %i.ltd, align 1
  %.val50848 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lte = getelementptr inbounds nuw i8, ptr %.val50848, i64 %i.lsy
  %i.ltf = getelementptr inbounds nuw i8, ptr %i.lte, i64 20
  store i64 0, ptr %i.ltf, align 1
  %.val50847 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltg = getelementptr inbounds nuw i8, ptr %.val50847, i64 %i.lsy
  %i.lth = getelementptr inbounds nuw i8, ptr %i.ltg, i64 28
  store i64 0, ptr %i.lth, align 1
  %.val50846 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lti = getelementptr inbounds nuw i8, ptr %.val50846, i64 %i.lsy
  %i.ltj = getelementptr inbounds nuw i8, ptr %i.lti, i64 36
  store i64 0, ptr %i.ltj, align 1
  %.val50845 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltk = getelementptr inbounds nuw i8, ptr %.val50845, i64 %i.lsy
  %i.ltl = getelementptr inbounds nuw i8, ptr %i.ltk, i64 44
  store i64 0, ptr %i.ltl, align 1
  %.val50844 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltm = getelementptr inbounds nuw i8, ptr %.val50844, i64 %i.lsy
  %i.ltn = getelementptr inbounds nuw i8, ptr %i.ltm, i64 52
  store i64 0, ptr %i.ltn, align 1
  %.val49776 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lto = getelementptr inbounds nuw i8, ptr %.val49776, i64 %i.lsy
  %i.ltp = getelementptr inbounds nuw i8, ptr %i.lto, i64 60
  store i32 0, ptr %i.ltp, align 1
  br label %.loopexit54366

.loopexit54366:                                   ; preds = %bb.aty, %bb.atw, %bb.aul
  %.pre-phi55800.a = phi i64 [ %i.lsy, %bb.aul ], [ %i.loc, %bb.atw ], [ %i.lop, %bb.aty ] ; 4 uses
  %.val47997 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltq = getelementptr inbounds nuw i8, ptr %.val47997, i64 %i.lnm
  %.0.copyload.i52836 = load i32, ptr %i.ltq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52836) #7, !srcloc !19
  %i.ltr = add i32 %.0.copyload.i52836, 31
  %i.lts = lshr i32 %i.ltr, 5                     ; 2 uses
  %i.ltt = add nuw nsw i64 %.pre-phi55800.a, 36   ; 2 uses
  %.val47996 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltu = getelementptr inbounds nuw i8, ptr %.val47996, i64 %i.ltt
  %.0.copyload.i52837 = load i32, ptr %i.ltu, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52837) #7, !srcloc !19
  %i.ltv = add i32 %.0.copyload.i52837, 31        ; 2 uses
  %i.ltw = lshr i32 %i.ltv, 5                     ; 9 uses
  %i.ltx = tail call i32 @llvm.umin.i32(i32 %i.lts, i32 %i.ltw) ; 3 uses
  %.not46010 = icmp eq i32 %i.ltx, 0
  br i1 %.not46010, label %.loopexit54359, label %bb.aum

bb.aum:                                           ; preds = %.loopexit54366
  %.val47995 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lty = getelementptr inbounds nuw i8, ptr %.val47995, i64 %i.lnl
  %i.ltz = getelementptr inbounds nuw i8, ptr %i.lty, i64 40
  %.0.copyload.i52838 = load i32, ptr %i.ltz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52838) #7, !srcloc !19
  %.val47994 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lua = getelementptr inbounds nuw i8, ptr %.val47994, i64 %.pre-phi55800.a
  %i.lub = getelementptr inbounds nuw i8, ptr %i.lua, i64 28
  %.0.copyload.i52839 = load i32, ptr %i.lub, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52839) #7, !srcloc !19
  %i.luc = zext nneg i32 %i.ltx to i64
  br label %bb.aun

bb.aun:                                           ; preds = %bb.auo, %bb.aum
  %indvars.iv55670 = phi i64 [ %indvars.iv.next55671, %bb.auo ], [ 0, %bb.aum ] ; 2 uses
  %indvars.iv55670.tr = trunc nuw nsw i64 %indvars.iv55670 to i32
  %i.lud = shl nuw nsw i32 %indvars.iv55670.tr, 2 ; 2 uses
  %i.lue = add i32 %i.lud, %.0.copyload.i52839
  %i.luf = zext i32 %i.lue to i64
  %.val47993 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lug = getelementptr inbounds nuw i8, ptr %.val47993, i64 %i.luf
  %.0.copyload.i52840 = load i32, ptr %i.lug, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52840) #7, !srcloc !19
  %i.luh = add i32 %i.lud, %.0.copyload.i52838
  %i.lui = zext i32 %i.luh to i64
  %.val47992 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.luj = getelementptr inbounds nuw i8, ptr %.val47992, i64 %i.lui
  %.0.copyload.i52841 = load i32, ptr %i.luj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52841) #7, !srcloc !19
  %i.luk = xor i32 %.0.copyload.i52841, -1
  %i.lul = and i32 %.0.copyload.i52840, %i.luk
  %.not46011 = icmp eq i32 %i.lul, 0
  br i1 %.not46011, label %bb.auo, label %.loopexit54357

bb.auo:                                           ; preds = %bb.aun
  %indvars.iv.next55671 = add nuw nsw i64 %indvars.iv55670, 1 ; 2 uses
  %.not46012 = icmp eq i64 %indvars.iv.next55671, %i.luc
  br i1 %.not46012, label %.loopexit54359, label %bb.aun

.loopexit54359:                                   ; preds = %bb.auo, %.loopexit54366
  %.not46013 = icmp samesign ult i32 %i.lts, %i.ltw
  br i1 %.not46013, label %bb.aup, label %.loopexit54357

bb.aup:                                           ; preds = %.loopexit54359
  %.val47991 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lum = getelementptr inbounds nuw i8, ptr %.val47991, i64 %.pre-phi55800.a
  %i.lun = getelementptr inbounds nuw i8, ptr %i.lum, i64 28
  %.0.copyload.i52842 = load i32, ptr %i.lun, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52842) #7, !srcloc !19
  br label %bb.auq

bb.auq:                                           ; preds = %bb.aur, %bb.aup
  %.4144137 = phi i32 [ %i.ltx, %bb.aup ], [ %6, %bb.aur ] ; 2 uses
  %i.luo = shl i32 %.4144137, 2
  %i.lup = add i32 %i.luo, %.0.copyload.i52842
  %i.luq = zext i32 %i.lup to i64
  %.val47990 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lur = getelementptr inbounds nuw i8, ptr %.val47990, i64 %i.luq
  %.0.copyload.i52843 = load i32, ptr %i.lur, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52843) #7, !srcloc !19
  %.not46014 = icmp eq i32 %.0.copyload.i52843, 0
  br i1 %.not46014, label %bb.aur, label %.loopexit54357

bb.aur:                                           ; preds = %bb.auq
  %6 = add i32 %.4144137, 1                       ; 2 uses
  %.not46015 = icmp eq i32 %i.ltw, %6
  br i1 %.not46015, label %.loopexit54357, label %bb.auq

.loopexit54357:                                   ; preds = %bb.aun, %bb.auq, %bb.aur, %.loopexit54359
  %.343196 = phi i32 [ %.243195, %bb.aur ], [ %.243195, %.loopexit54359 ], [ 1, %bb.auq ], [ 1, %bb.aun ] ; 2 uses
  %.not46016 = icmp ult i32 %.0.copyload.i52836, %.0.copyload.i52837
  br i1 %.not46016, label %bb.aus, label %bb.avm

bb.aus:                                           ; preds = %.loopexit54357
  %.val47989 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lus = getelementptr inbounds nuw i8, ptr %.val47989, i64 %i.lnn
  %.0.copyload.i52844 = load i32, ptr %i.lus, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52844) #7, !srcloc !19
  %i.lut = shl i32 %.0.copyload.i52844, 5
  %.not46017 = icmp ult i32 %i.lut, %.0.copyload.i52837
  br i1 %.not46017, label %bb.aut, label %bb.avb

bb.aut:                                           ; preds = %bb.aus
  %.val47988 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.luu = getelementptr inbounds nuw i8, ptr %.val47988, i64 %i.lno
  %.0.copyload.i52845 = load i32, ptr %i.luu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52845) #7, !srcloc !19
  %i.luv = shl i32 %.0.copyload.i52844, 1
  %i.luw = tail call i32 @llvm.umax.i32(i32 %i.luv, i32 %i.ltw) ; 6 uses
  %i.lux = shl i32 %i.luw, 2
  %i.luy = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52845, i32 noundef %i.lux) #7 ; 4 uses
  %.not46018 = icmp eq i32 %i.luy, 0
  br i1 %.not46018, label %bb.auu, label %bb.auv

bb.auu:                                           ; preds = %bb.aut
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.auv

bb.auv:                                           ; preds = %bb.auu, %bb.aut
  %.val49775 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.luz = getelementptr inbounds nuw i8, ptr %.val49775, i64 %i.lnn
  store i32 %i.luw, ptr %i.luz, align 1
  %.val49774 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lva = getelementptr inbounds nuw i8, ptr %.val49774, i64 %i.lno
  store i32 %i.luy, ptr %i.lva, align 1
  %.val47987 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvb = getelementptr inbounds nuw i8, ptr %.val47987, i64 %i.lnm
  %.0.copyload.i52846 = load i32, ptr %i.lvb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52846) #7, !srcloc !19
  %i.lvc = add i32 %.0.copyload.i52846, 31
  %i.lvd = lshr i32 %i.lvc, 5                     ; 4 uses
  %i.lve = icmp ult i32 %i.lvd, %i.luw
  br i1 %i.lve, label %bb.auw, label %bb.aux

bb.auw:                                           ; preds = %bb.auv
  %i.lvf = shl nuw nsw i32 %i.lvd, 2
  %i.lvg = add i32 %i.lvf, %i.luy
  %i.lvh = sub nuw i32 %i.luw, %i.lvd
  %i.lvi = shl i32 %i.lvh, 2
  %i.lvj = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lvg, i32 noundef 0, i32 noundef %i.lvi) #7 ; 0 uses
  br label %bb.aux

bb.aux:                                           ; preds = %bb.auw, %bb.auv
  %i.lvk = and i32 %.0.copyload.i52846, 31        ; 2 uses
  %.not46019 = icmp eq i32 %i.lvk, 0
  br i1 %.not46019, label %bb.auz, label %bb.auy

bb.auy:                                           ; preds = %bb.aux
  %i.lvl = shl nuw nsw i32 %i.lvd, 2
  %i.lvm = add i32 %i.luy, -4
  %i.lvn = add i32 %i.lvm, %i.lvl
  %i.lvo = zext i32 %i.lvn to i64                 ; 2 uses
  %.val47986 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvp = getelementptr inbounds nuw i8, ptr %.val47986, i64 %i.lvo
  %.0.copyload.i52847 = load i32, ptr %i.lvp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52847) #7, !srcloc !19
  %i.lvq = shl nsw i32 -1, %i.lvk
  %i.lvr = xor i32 %i.lvq, -1
  %i.lvs = and i32 %.0.copyload.i52847, %i.lvr
  %.val49773 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvt = getelementptr inbounds nuw i8, ptr %.val49773, i64 %i.lvo
  store i32 %i.lvs, ptr %i.lvt, align 1
  br label %bb.auz

bb.auz:                                           ; preds = %bb.auy, %bb.aux
  %i.lvu = icmp eq i32 %.0.copyload.i52844, %i.luw
  br i1 %i.lvu, label %bb.avb, label %bb.ava

bb.ava:                                           ; preds = %bb.auz
  %.val47985 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvv = getelementptr inbounds nuw i8, ptr %.val47985, i64 %i.lno
  %.0.copyload.i52848 = load i32, ptr %i.lvv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52848) #7, !srcloc !19
  %i.lvw = shl i32 %.0.copyload.i52844, 2
  %i.lvx = add i32 %.0.copyload.i52848, %i.lvw
  %i.lvy = sub i32 %i.luw, %.0.copyload.i52844
  %i.lvz = shl i32 %i.lvy, 2
  %i.lwa = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lvx, i32 noundef 0, i32 noundef %i.lvz) #7 ; 0 uses
  br label %bb.avb

bb.avb:                                           ; preds = %bb.auz, %bb.aus, %bb.ava
  %.val47984 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwb = getelementptr inbounds nuw i8, ptr %.val47984, i64 %i.lnm
  %.0.copyload.i52849 = load i32, ptr %i.lwb, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52849) #7, !srcloc !19
  %.not46020 = icmp ult i32 %.0.copyload.i52849, %.0.copyload.i52837
  br i1 %.not46020, label %bb.avc, label %bb.avg

bb.avc:                                           ; preds = %bb.avb
  %.val47983 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwc = getelementptr inbounds nuw i8, ptr %.val47983, i64 %i.lnn
  %.0.copyload.i52850 = load i32, ptr %i.lwc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52850) #7, !srcloc !19
  %i.lwd = add i32 %.0.copyload.i52849, 31
  %i.lwe = lshr i32 %i.lwd, 5                     ; 4 uses
  %i.lwf = icmp ugt i32 %.0.copyload.i52850, %i.lwe
  br i1 %i.lwf, label %bb.avd, label %bb.ave

bb.avd:                                           ; preds = %bb.avc
  %.val47982 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwg = getelementptr inbounds nuw i8, ptr %.val47982, i64 %i.lnl
  %i.lwh = getelementptr inbounds nuw i8, ptr %i.lwg, i64 40
  %.0.copyload.i52851 = load i32, ptr %i.lwh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52851) #7, !srcloc !19
  %i.lwi = shl nuw nsw i32 %i.lwe, 2
  %i.lwj = add i32 %.0.copyload.i52851, %i.lwi
  %i.lwk = sub nuw i32 %.0.copyload.i52850, %i.lwe
  %i.lwl = shl i32 %i.lwk, 2
  %i.lwm = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lwj, i32 noundef 0, i32 noundef %i.lwl) #7 ; 0 uses
  %.val47981 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwn = getelementptr inbounds nuw i8, ptr %.val47981, i64 %i.lnm
  %.0.copyload.i52852 = load i32, ptr %i.lwn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52852) #7, !srcloc !19
  br label %bb.ave

bb.ave:                                           ; preds = %bb.avd, %bb.avc
  %.4044037 = phi i32 [ %.0.copyload.i52852, %bb.avd ], [ %.0.copyload.i52849, %bb.avc ] ; 3 uses
  %i.lwo = and i32 %.4044037, 31                  ; 2 uses
  %.not46021 = icmp eq i32 %i.lwo, 0
  br i1 %.not46021, label %bb.avg, label %bb.avf

bb.avf:                                           ; preds = %bb.ave
  %.val47980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwp = getelementptr inbounds nuw i8, ptr %.val47980, i64 %i.lnl
  %i.lwq = getelementptr inbounds nuw i8, ptr %i.lwp, i64 40
  %.0.copyload.i52853 = load i32, ptr %i.lwq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52853) #7, !srcloc !19
  %i.lwr = shl nuw nsw i32 %i.lwe, 2
  %i.lws = add nsw i32 %i.lwr, -4
  %i.lwt = add i32 %i.lws, %.0.copyload.i52853
  %i.lwu = zext i32 %i.lwt to i64                 ; 2 uses
  %.val47979 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwv = getelementptr inbounds nuw i8, ptr %.val47979, i64 %i.lwu
  %.0.copyload.i52854 = load i32, ptr %i.lwv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52854) #7, !srcloc !19
  %i.lww = shl nsw i32 -1, %i.lwo
  %i.lwx = xor i32 %i.lww, -1
  %i.lwy = and i32 %.0.copyload.i52854, %i.lwx
  %.val49772 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwz = getelementptr inbounds nuw i8, ptr %.val49772, i64 %i.lwu
  store i32 %i.lwy, ptr %i.lwz, align 1
  br label %bb.avg

bb.avg:                                           ; preds = %bb.ave, %bb.avb, %bb.avf
  %.4144038 = phi i32 [ %.0.copyload.i52849, %bb.avb ], [ %.4044037, %bb.ave ], [ %.4044037, %bb.avf ]
  %.val49771 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxa = getelementptr inbounds nuw i8, ptr %.val49771, i64 %i.lnm
  store i32 %.0.copyload.i52837, ptr %i.lxa, align 1
  %.not46022 = icmp ugt i32 %.4144038, %.0.copyload.i52837
  br i1 %.not46022, label %bb.avh, label %bb.avl

bb.avh:                                           ; preds = %bb.avg
  %.val47978 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxb = getelementptr inbounds nuw i8, ptr %.val47978, i64 %i.lnn
  %.0.copyload.i52855 = load i32, ptr %i.lxb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52855) #7, !srcloc !19
  %i.lxc = icmp ult i32 %i.ltw, %.0.copyload.i52855
  br i1 %i.lxc, label %bb.avi, label %bb.avj

bb.avi:                                           ; preds = %bb.avh
  %.val47977 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxd = getelementptr inbounds nuw i8, ptr %.val47977, i64 %i.lnl
  %i.lxe = getelementptr inbounds nuw i8, ptr %i.lxd, i64 40
  %.0.copyload.i52856 = load i32, ptr %i.lxe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52856) #7, !srcloc !19
  %i.lxf = shl nuw nsw i32 %i.ltw, 2
  %i.lxg = add i32 %.0.copyload.i52856, %i.lxf
  %i.lxh = sub nuw i32 %.0.copyload.i52855, %i.ltw
  %i.lxi = shl i32 %i.lxh, 2
  %i.lxj = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lxg, i32 noundef 0, i32 noundef %i.lxi) #7 ; 0 uses
  %.val47976 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxk = getelementptr inbounds nuw i8, ptr %.val47976, i64 %i.lnm
  %.0.copyload.i52857 = load i32, ptr %i.lxk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52857) #7, !srcloc !19
  br label %bb.avj

bb.avj:                                           ; preds = %bb.avi, %bb.avh
  %.116 = phi i32 [ %.0.copyload.i52857, %bb.avi ], [ %.0.copyload.i52837, %bb.avh ] ; 3 uses
  %i.lxl = and i32 %.116, 31                      ; 2 uses
  %.not46023 = icmp eq i32 %i.lxl, 0
  br i1 %.not46023, label %bb.avl, label %bb.avk

bb.avk:                                           ; preds = %bb.avj
  %.val47975 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxm = getelementptr inbounds nuw i8, ptr %.val47975, i64 %i.lnl
  %i.lxn = getelementptr inbounds nuw i8, ptr %i.lxm, i64 40
end_hunk_2
