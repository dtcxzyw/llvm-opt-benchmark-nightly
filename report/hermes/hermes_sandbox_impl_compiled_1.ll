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
  %i.df = shl nuw i32 %.3452, 1
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
  %.0.copyload.i124 = load i32, ptr %i.v, align 1 ; 3 uses
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
  %.0.copyload.i126 = load i32, ptr %i.aa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i126) #7, !srcloc !19
  %.not104 = icmp ne i32 %.0.copyload.i126, %.0.copyload.i124
  %i.ab = add nuw i32 %.1, 1                      ; 2 uses
  %.not105 = icmp eq i32 %i.ab, %.0.copyload.i122
  %or.cond106 = select i1 %.not104, i1 true, i1 %.not105
  br i1 %or.cond106, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader
  %i.ac = icmp eq i32 %.0.copyload.i124, %.0.copyload.i126
  %i.ad = zext i1 %i.ac to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %.loopexit, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ], [ %i.ad, %.loopexit ]
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
  %i.cqs = getelementptr inbounds nuw i8, ptr %.val51182, i64 %i.cqr
  %.0.copyload.i51670 = load i8, ptr %i.cqs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i51670) #7, !srcloc !21
  %i.cqt = zext i8 %.0.copyload.i51670 to i32
  %i.cqu = load i32, ptr %i.a, align 8, !tbaa !17 ; 6 uses
  %i.cqv = add i32 %i.cqu, -80                    ; 2 uses
  store i32 %i.cqv, ptr %i.a, align 8, !tbaa !17
  %i.cqw = add i32 %i.b, -1004                    ; 2 uses
  %i.cqx = zext i32 %i.cqw to i64                 ; 35 uses
  %.val48992 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cqy = getelementptr inbounds nuw i8, ptr %.val48992, i64 %i.cqx
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cqy, i64 48
  %.0.copyload.i51671 = load i32, ptr %i.cqz, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51671) #7, !srcloc !19
  %i.cra = add nuw nsw i64 %i.cqx, 4              ; 9 uses
  %.val48991 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.crb = getelementptr inbounds nuw i8, ptr %.val48991, i64 %i.cra
  %.0.copyload.i51672 = load i32, ptr %i.crb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51672) #7, !srcloc !19
  %.val48990 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.crc = getelementptr inbounds nuw i8, ptr %.val48990, i64 %i.cqx
  %.0.copyload.i51673 = load i32, ptr %i.crc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51673) #7, !srcloc !19
  %i.crd = sub i32 %.0.copyload.i51672, %.0.copyload.i51673
  %i.cre = ashr i32 %i.crd, 3                     ; 12 uses
  %i.crf = sub i32 %.0.copyload.i51671, %i.cre    ; 9 uses
  %.not45579 = icmp eq i32 %i.cre, %.0.copyload.i51671 ; 4 uses
  br i1 %.not45579, label %bb.ly, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.crg = icmp ugt i32 %i.crf, 268435455
  br i1 %i.crg, label %.loopexit54653, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.crh = shl nuw i32 %i.crf, 4                  ; 2 uses
  %i.cri = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.crh) #7 ; 2 uses
  %i.crj = add i32 %i.cri, %i.crh
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lv
  %.2343857 = phi i32 [ %i.crj, %bb.lx ], [ 0, %bb.lv ]
  %.1043741 = phi i32 [ %i.cri, %bb.lx ], [ 0, %bb.lv ] ; 4 uses
  %.not45580 = icmp ult i32 %i.cre, %.0.copyload.i51671
  br i1 %.not45580, label %.preheader54739, label %.loopexit54741

.preheader54739:                                  ; preds = %bb.ly, %bb.me
  %.344254 = phi i32 [ %i.cuh, %bb.me ], [ %i.cre, %bb.ly ] ; 6 uses
  %.2043956 = phi i32 [ %.2143957, %bb.me ], [ %.1043741, %bb.ly ] ; 4 uses
  %.2443858 = phi i32 [ %.2543859, %bb.me ], [ %.2343857, %bb.ly ] ; 3 uses
  %.1143742 = phi i32 [ %.1243743, %bb.me ], [ %.1043741, %bb.ly ] ; 6 uses
  %.val48989 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.crk = getelementptr inbounds nuw i8, ptr %.val48989, i64 %i.cqx
  %i.crl = getelementptr inbounds nuw i8, ptr %i.crk, i64 32
  %.0.copyload.i51674 = load i32, ptr %i.crl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51674) #7, !srcloc !19
  %.val48988 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.crm = getelementptr inbounds nuw i8, ptr %.val48988, i64 %i.cqx
  %i.crn = getelementptr inbounds nuw i8, ptr %i.crm, i64 44
  %.0.copyload.i51675 = load i32, ptr %i.crn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51675) #7, !srcloc !19
  %i.cro = add i32 %.0.copyload.i51675, %.344254  ; 2 uses
  %i.crp = udiv i32 %i.cro, 341                   ; 2 uses
  %i.crq = shl nuw nsw i32 %i.crp, 2
  %i.crr = add i32 %i.crq, %.0.copyload.i51674
  %i.crs = zext i32 %i.crr to i64
  %.val48987 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.crt = getelementptr inbounds nuw i8, ptr %.val48987, i64 %i.crs
  %.0.copyload.i51676 = load i32, ptr %i.crt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51676) #7, !srcloc !19
  %.neg = mul i32 %i.crp, -341
  %i.cru = add i32 %.neg, %i.cro
  %i.crv = mul i32 %i.cru, 12
  %i.crw = add i32 %i.crv, %.0.copyload.i51676    ; 4 uses
  %.val48986 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.crx = getelementptr inbounds nuw i8, ptr %.val48986, i64 %i.cqx
  %i.cry = getelementptr inbounds nuw i8, ptr %i.crx, i64 68
  %.0.copyload.i51677 = load i32, ptr %i.cry, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51677) #7, !srcloc !19
  %i.crz = lshr i32 %.344254, 3
  %i.csa = and i32 %i.crz, 536870908
  %i.csb = add i32 %.0.copyload.i51677, %i.csa
  %i.csc = zext i32 %i.csb to i64
  %.val48985 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csd = getelementptr inbounds nuw i8, ptr %.val48985, i64 %i.csc
  %.0.copyload.i51678 = load i32, ptr %i.csd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51678) #7, !srcloc !19
  %i.cse = and i32 %.344254, 31
  %i.csf = lshr i32 %.0.copyload.i51678, %i.cse
  %i.csg = shl i32 %i.csf, 31                     ; 2 uses
  %i.csh = icmp ult i32 %.2043956, %.2443858
  br i1 %i.csh, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %.preheader54739
  %i.csi = zext i32 %i.crw to i64                 ; 3 uses
  %.val48984 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csj = getelementptr inbounds nuw i8, ptr %.val48984, i64 %i.csi
  %.0.copyload.i51679 = load i32, ptr %i.csj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51679) #7, !srcloc !19
  %.val48983 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csk = getelementptr inbounds nuw i8, ptr %.val48983, i64 %i.csi
  %i.csl = getelementptr inbounds nuw i8, ptr %i.csk, i64 4
  %.0.copyload.i51680 = load i32, ptr %i.csl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51680) #7, !srcloc !19
  %.val51215 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csm = getelementptr inbounds nuw i8, ptr %.val51215, i64 %i.csi
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csm, i64 11
  %.0.copyload.i51681 = load i8, ptr %i.csn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i51681) #7, !srcloc !22
  %i.cso = zext i8 %.0.copyload.i51681 to i32
  %i.csp = zext i32 %.2043956 to i64              ; 4 uses
  %.val50300 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csq = getelementptr inbounds nuw i8, ptr %.val50300, i64 %i.csp
  %i.csr = getelementptr inbounds nuw i8, ptr %i.csq, i64 12
  store i32 %i.csg, ptr %i.csr, align 1
  %.val50299 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.css = getelementptr inbounds nuw i8, ptr %.val50299, i64 %i.csp
  store i32 %.344254, ptr %i.css, align 1
  %i.cst = icmp slt i8 %.0.copyload.i51681, 0     ; 2 uses
  %i.csu = select i1 %i.cst, i32 %.0.copyload.i51680, i32 %i.cso
  %.val50298 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csv = getelementptr inbounds nuw i8, ptr %.val50298, i64 %i.csp
  %i.csw = getelementptr inbounds nuw i8, ptr %i.csv, i64 8
  store i32 %i.csu, ptr %i.csw, align 1
  %i.csx = select i1 %i.cst, i32 %.0.copyload.i51679, i32 %i.crw
  %.val50297 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.csy = getelementptr inbounds nuw i8, ptr %.val50297, i64 %i.csp
  %i.csz = getelementptr inbounds nuw i8, ptr %i.csy, i64 4
  store i32 %i.csx, ptr %i.csz, align 1
  br label %bb.me

bb.ma:                                            ; preds = %.preheader54739
  %i.cta = sub i32 %.2043956, %.1143742           ; 3 uses
  %i.ctb = ashr i32 %i.cta, 4
  %i.ctc = add nsw i32 %i.ctb, 1                  ; 2 uses
  %i.ctd = icmp ugt i32 %i.ctc, 268435455
  br i1 %i.ctd, label %.loopexit54653, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.cte = sub i32 %.2443858, %.1143742           ; 2 uses
  %i.ctf = ashr i32 %i.cte, 3
  %i.ctg = tail call i32 @llvm.umax.i32(i32 %i.ctf, i32 %i.ctc)
  %i.cth = icmp ugt i32 %i.cte, 2147483631
  %i.cti = select i1 %i.cth, i32 268435455, i32 %i.ctg ; 2 uses
  %i.ctj = icmp ugt i32 %i.cti, 268435455
  br i1 %i.ctj, label %.loopexit54653, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.ctk = shl nuw i32 %i.cti, 4                  ; 2 uses
  %i.ctl = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ctk) #7 ; 2 uses
  %i.ctm = zext i32 %i.crw to i64                 ; 3 uses
  %.val48982 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ctn = getelementptr inbounds nuw i8, ptr %.val48982, i64 %i.ctm
  %.0.copyload.i51682 = load i32, ptr %i.ctn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51682) #7, !srcloc !19
  %.val48981 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cto = getelementptr inbounds nuw i8, ptr %.val48981, i64 %i.ctm
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.cto, i64 4
  %.0.copyload.i51683 = load i32, ptr %i.ctp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51683) #7, !srcloc !19
  %.val51181 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ctq = getelementptr inbounds nuw i8, ptr %.val51181, i64 %i.ctm
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.ctq, i64 11
  %.0.copyload.i51684 = load i8, ptr %i.ctr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i51684) #7, !srcloc !21
  %i.cts = zext i8 %.0.copyload.i51684 to i32
  %i.ctt = and i32 %i.cta, -16
  %i.ctu = add i32 %i.ctl, %i.ctt                 ; 3 uses
  %i.ctv = zext i32 %i.ctu to i64                 ; 4 uses
  %.val50296 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ctw = getelementptr inbounds nuw i8, ptr %.val50296, i64 %i.ctv
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.ctw, i64 12
  store i32 %i.csg, ptr %i.ctx, align 1
  %.val50295 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cty = getelementptr inbounds nuw i8, ptr %.val50295, i64 %i.ctv
  store i32 %.344254, ptr %i.cty, align 1
  %.not45581 = icmp sgt i8 %.0.copyload.i51684, -1 ; 2 uses
  %i.ctz = select i1 %.not45581, i32 %i.cts, i32 %.0.copyload.i51683
  %.val50294 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cua = getelementptr inbounds nuw i8, ptr %.val50294, i64 %i.ctv
  %i.cub = getelementptr inbounds nuw i8, ptr %i.cua, i64 8
  store i32 %i.ctz, ptr %i.cub, align 1
  %i.cuc = select i1 %.not45581, i32 %i.crw, i32 %.0.copyload.i51682
  %.val50293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cud = getelementptr inbounds nuw i8, ptr %.val50293, i64 %i.ctv
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
  %i.cuh = add nuw i32 %.344254, 1                ; 2 uses
  %.not45583 = icmp eq i32 %.0.copyload.i51671, %i.cuh
  br i1 %.not45583, label %.loopexit54741, label %.preheader54739

.loopexit54741:                                   ; preds = %bb.me, %bb.ly
  %.2243958 = phi i32 [ %.1043741, %bb.ly ], [ %.2143957, %bb.me ] ; 5 uses
  %.1343744 = phi i32 [ %.1043741, %bb.ly ], [ %.1243743, %bb.me ] ; 12 uses
  %i.cui = zext i32 %i.cqv to i64                 ; 12 uses
  %.val50292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cuj = getelementptr inbounds nuw i8, ptr %.val50292, i64 %i.cui
  %i.cuk = getelementptr inbounds nuw i8, ptr %i.cuj, i64 52
  store i32 %i.cre, ptr %i.cuk, align 1
  %i.cul = add i32 %i.b, -924
  %.val50291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cum = getelementptr inbounds nuw i8, ptr %.val50291, i64 %i.cui
  %i.cun = getelementptr inbounds nuw i8, ptr %i.cum, i64 48
  store i32 %i.cul, ptr %i.cun, align 1
  %i.cuo = sub i32 %.2243958, %.1343744           ; 2 uses
  %i.cup = ashr i32 %i.cuo, 4                     ; 3 uses
  %i.cuq = icmp sgt i32 %i.cuo, 2048
  br i1 %i.cuq, label %.preheader54737, label %.loopexit54738

.preheader54737:                                  ; preds = %.loopexit54741, %bb.mf
  %.444255 = phi i32 [ %i.cuu, %bb.mf ], [ %i.cup, %.loopexit54741 ] ; 4 uses
  %i.cur = shl nuw nsw i32 %.444255, 4
  %i.cus = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.cur) #7 ; 3 uses
  %.not45584 = icmp eq i32 %i.cus, 0
  br i1 %.not45584, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %.preheader54737
  %i.cut = icmp ugt i32 %.444255, 1
  %i.cuu = lshr i32 %.444255, 1
  br i1 %i.cut, label %.preheader54737, label %.loopexit54738

.loopexit54738:                                   ; preds = %bb.mf, %.loopexit54741
  %i.cuv = add i32 %i.cqu, -32
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fstable_sort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x3A0x3Adifference_type0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x3A0x3Avalue_type0x2A0x2C0x20long0x29(ptr noundef %0, i32 noundef %.1343744, i32 noundef %.2243958, i32 noundef %i.cuv, i32 noundef %i.cup, i32 noundef 0, i32 noundef 0) #7
  br label %bb.mh

bb.mg:                                            ; preds = %.preheader54737
  %i.cuw = add i32 %i.cqu, -32
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fstable_sort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x3A0x3Adifference_type0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x3A0x3Avalue_type0x2A0x2C0x20long0x29(ptr noundef %0, i32 noundef %.1343744, i32 noundef %.2243958, i32 noundef %i.cuw, i32 noundef %i.cup, i32 noundef %i.cus, i32 noundef %.444255) #7
  tail call void @w2c_hermes_dlfree(ptr noundef %0, i32 noundef %i.cus) #7
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %.loopexit54738
  %i.cux = tail call i32 @llvm.usub.sat.i32(i32 %i.cre, i32 %.0.copyload.i51671) ; 3 uses
  %i.cuy = shl i32 %i.cux, 4
  %i.cuz = sub i32 %.1343744, %i.cuy              ; 2 uses
  %i.cva = tail call i32 @llvm.umax.i32(i32 %i.cre, i32 255)
  %i.cvb = tail call i32 @llvm.umin.i32(i32 %i.cva, i32 %.0.copyload.i51671) ; 2 uses
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
  %i.cvo = tail call i32 @llvm.umin.i32(i32 %i.cvn, i32 %.0.copyload.i51671) ; 2 uses
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
  %i.cwg = icmp ult i32 %i.cvn, %.0.copyload.i51671 ; 2 uses
  %i.cwh = select i1 %i.cwg, i32 %i.cwf, i32 0
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef %0, i32 noundef %i.cvr, i32 noundef %i.cwa, i32 noundef %i.cwh) #7
  br i1 %.not45579, label %bb.mk, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.cwi = icmp ugt i32 %i.crf, 536870911
  br i1 %i.cwi, label %.loopexit54664, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.cwj = shl nuw i32 %i.crf, 3                  ; 2 uses
  %i.cwk = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.cwj) #7 ; 2 uses
  %i.cwl = add i32 %i.cwk, %i.cwj
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mh
  %.544256 = phi i32 [ %i.cwk, %bb.mj ], [ 0, %bb.mh ] ; 4 uses
  %.143590 = phi i32 [ %i.cwl, %bb.mj ], [ 0, %bb.mh ]
  %i.cwm = icmp eq i32 %.2243958, %.1343744
  br i1 %i.cwm, label %.loopexit54736, label %.preheader54733

.preheader54733:                                  ; preds = %bb.mk, %bb.mr
  %.644257 = phi i32 [ %.744258, %bb.mr ], [ %.544256, %bb.mk ] ; 4 uses
  %.2643860 = phi i32 [ %.2743861, %bb.mr ], [ %.544256, %bb.mk ] ; 6 uses
  %.1143636 = phi i32 [ %i.cxo, %bb.mr ], [ %.1343744, %bb.mk ] ; 3 uses
  %.243591 = phi i32 [ %.343592, %bb.mr ], [ %.143590, %bb.mk ] ; 3 uses
  %i.cwn = icmp ult i32 %.644257, %.243591
  br i1 %i.cwn, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %.preheader54733
  %i.cwo = zext i32 %.1143636 to i64
  %.val50594 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cwp = getelementptr inbounds nuw i8, ptr %.val50594, i64 %i.cwo
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cwp, i64 4
  %.0.copyload.i51685 = load i64, ptr %i.cwq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i51685) #7, !srcloc !20
  %i.cwr = zext i32 %.644257 to i64
  %.val51032 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cws = getelementptr inbounds nuw i8, ptr %.val51032, i64 %i.cwr
  store i64 %.0.copyload.i51685, ptr %i.cws, align 1
  br label %bb.mr

bb.mm:                                            ; preds = %.preheader54733
  %i.cwt = sub i32 %.644257, %.2643860            ; 3 uses
  %i.cwu = ashr i32 %i.cwt, 3
  %i.cwv = add nsw i32 %i.cwu, 1                  ; 2 uses
  %i.cww = icmp ugt i32 %i.cwv, 536870911
  br i1 %i.cww, label %.loopexit54664, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.cwx = sub i32 %.243591, %.2643860            ; 2 uses
  %i.cwy = ashr i32 %i.cwx, 2
  %i.cwz = tail call i32 @llvm.umax.i32(i32 %i.cwy, i32 %i.cwv)
  %i.cxa = icmp ugt i32 %i.cwx, 2147483639
  %i.cxb = select i1 %i.cxa, i32 536870911, i32 %i.cwz ; 3 uses
  %.not45589 = icmp eq i32 %i.cxb, 0
  br i1 %.not45589, label %._crit_edge55821, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.cxc = icmp ugt i32 %i.cxb, 536870911
  br i1 %i.cxc, label %.loopexit54653, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.cxd = shl nuw i32 %i.cxb, 3                  ; 2 uses
  %i.cxe = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.cxd) #7
  br label %._crit_edge55821

._crit_edge55821:                                 ; preds = %bb.mn, %bb.mp
  %.pre-phi55937.a = phi i32 [ %i.cxd, %bb.mp ], [ 0, %bb.mn ]
  %.13 = phi i32 [ %i.cxe, %bb.mp ], [ 0, %bb.mn ] ; 2 uses
  %i.cxf = and i32 %i.cwt, -8
  %i.cxg = add i32 %.13, %i.cxf                   ; 3 uses
  %i.cxh = zext i32 %.1143636 to i64
  %.val50593 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cxi = getelementptr inbounds nuw i8, ptr %.val50593, i64 %i.cxh
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cxi, i64 4
  %.0.copyload.i51686 = load i64, ptr %i.cxj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i51686) #7, !srcloc !20
  %i.cxk = zext i32 %i.cxg to i64
  %.val51031 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cxl = getelementptr inbounds nuw i8, ptr %.val51031, i64 %i.cxk
  store i64 %.0.copyload.i51686, ptr %i.cxl, align 1
  %i.cxm = tail call i32 @w2c_hermes_memmove(ptr noundef %0, i32 noundef %.13, i32 noundef %.2643860, i32 noundef %i.cwt) #7 ; 3 uses
  %i.cxn = add i32 %i.cxm, %.pre-phi55937.a       ; 2 uses
  %.not45590 = icmp eq i32 %.2643860, 0
  br i1 %.not45590, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %._crit_edge55821
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.2643860) #7
  br label %bb.mr

bb.mr:                                            ; preds = %._crit_edge55821, %bb.mq, %bb.ml
  %.744258.in = phi i32 [ %.644257, %bb.ml ], [ %i.cxg, %bb.mq ], [ %i.cxg, %._crit_edge55821 ]
  %.2743861 = phi i32 [ %.2643860, %bb.ml ], [ %i.cxm, %bb.mq ], [ %i.cxm, %._crit_edge55821 ] ; 2 uses
  %.343592 = phi i32 [ %.243591, %bb.ml ], [ %i.cxn, %bb.mq ], [ %i.cxn, %._crit_edge55821 ]
  %.744258 = add i32 %.744258.in, 8               ; 2 uses
  %i.cxo = add i32 %.1143636, 16                  ; 2 uses
  %.not45591 = icmp eq i32 %.2243958, %i.cxo
  br i1 %.not45591, label %.loopexit54736, label %.preheader54733

.loopexit54736:                                   ; preds = %bb.mr, %bb.mk
  %.844259 = phi i32 [ %.544256, %bb.mk ], [ %.744258, %bb.mr ] ; 2 uses
  %.2843862 = phi i32 [ %.544256, %bb.mk ], [ %.2743861, %bb.mr ] ; 4 uses
  %i.cxp = load i32, ptr %i.a, align 8, !tbaa !17 ; 11 uses
  %i.cxq = add i32 %i.cxp, -96                    ; 2 uses
  store i32 %i.cxq, ptr %i.a, align 8, !tbaa !17
  %i.cxr = add i32 %i.cqu, -32
  %i.cxs = zext i32 %i.cxr to i64                 ; 17 uses
  %.val51030 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cxt = getelementptr inbounds nuw i8, ptr %.val51030, i64 %i.cxs
  store i64 0, ptr %i.cxt, align 1
  %i.cxu = add nuw nsw i64 %i.cxs, 24             ; 2 uses
  %.val51234 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cxv = getelementptr inbounds nuw i8, ptr %.val51234, i64 %i.cxu
  store i16 257, ptr %i.cxv, align 1
  %i.cxw = add nuw nsw i64 %i.cxs, 16             ; 5 uses
  %.val51029 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cxx = getelementptr inbounds nuw i8, ptr %.val51029, i64 %i.cxw
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a

.preheader54367.6:                                ; preds = %.preheader54367.5
  %i.lqv = zext i32 %i.lqu to i64
  %.val49792.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lqw = getelementptr inbounds nuw i8, ptr %.val49792.6, i64 %i.lqv
  store i32 -4, ptr %i.lqw, align 1
  %i.lqx = add i32 %i.lpw, 448
  br label %.loopexit54368

.loopexit54368:                                   ; preds = %.preheader54367, %.preheader54367.1, %.preheader54367.2, %.preheader54367.3, %.preheader54367.4, %.preheader54367.5, %.preheader54367.6, %bb.aud
  %.3844134 = phi i32 [ %i.lpw, %bb.aud ], [ %i.lqf, %.preheader54367 ], [ %i.lqi, %.preheader54367.1 ], [ %i.lql, %.preheader54367.2 ], [ %i.lqo, %.preheader54367.3 ], [ %i.lqr, %.preheader54367.4 ], [ %i.lqu, %.preheader54367.5 ], [ %i.lqx, %.preheader54367.6 ]
  %i.lqy = icmp samesign ult i32 %i.lqb, 7
  br i1 %i.lqy, label %.loopexit54366, label %bb.aue

bb.aue:                                           ; preds = %.loopexit54368
  %i.lqz = shl i32 %.0.copyload.i52832, 6
  %i.lra = add i32 %i.lqz, %i.lpw
  br label %bb.auf

bb.auf:                                           ; preds = %bb.auf, %bb.aue
  %.3944135 = phi i32 [ %.3844134, %bb.aue ], [ %i.lrr, %bb.auf ] ; 2 uses
  %i.lrb = zext i32 %.3944135 to i64              ; 8 uses
  %.val49791 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrc = getelementptr inbounds nuw i8, ptr %.val49791, i64 %i.lrb
  %i.lrd = getelementptr inbounds nuw i8, ptr %i.lrc, i64 448
  store i32 -4, ptr %i.lrd, align 1
  %.val49790 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lre = getelementptr inbounds nuw i8, ptr %.val49790, i64 %i.lrb
  %i.lrf = getelementptr inbounds nuw i8, ptr %i.lre, i64 384
  store i32 -4, ptr %i.lrf, align 1
  %.val49789 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrg = getelementptr inbounds nuw i8, ptr %.val49789, i64 %i.lrb
  %i.lrh = getelementptr inbounds nuw i8, ptr %i.lrg, i64 320
  store i32 -4, ptr %i.lrh, align 1
  %.val49788 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lri = getelementptr inbounds nuw i8, ptr %.val49788, i64 %i.lrb
  %i.lrj = getelementptr inbounds nuw i8, ptr %i.lri, i64 256
  store i32 -4, ptr %i.lrj, align 1
  %.val49787 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrk = getelementptr inbounds nuw i8, ptr %.val49787, i64 %i.lrb
  %i.lrl = getelementptr inbounds nuw i8, ptr %i.lrk, i64 192
  store i32 -4, ptr %i.lrl, align 1
  %.val49786 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrm = getelementptr inbounds nuw i8, ptr %.val49786, i64 %i.lrb
  %i.lrn = getelementptr inbounds nuw i8, ptr %i.lrm, i64 128
  store i32 -4, ptr %i.lrn, align 1
  %.val49785 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lro = getelementptr inbounds nuw i8, ptr %.val49785, i64 %i.lrb
  %i.lrp = getelementptr inbounds nuw i8, ptr %i.lro, i64 64
  store i32 -4, ptr %i.lrp, align 1
  %.val49784 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrq = getelementptr inbounds nuw i8, ptr %.val49784, i64 %i.lrb
  store i32 -4, ptr %i.lrq, align 1
  %i.lrr = add i32 %.3944135, 512                 ; 2 uses
  %.not46004 = icmp eq i32 %i.lrr, %i.lra
  br i1 %.not46004, label %.loopexit54366, label %bb.auf

bb.aug:                                           ; preds = %bb.auc
  %i.lrs = shl i32 %.0.copyload.i52827, 6
  %i.lrt = add i32 %i.lrs, %.0.copyload.i52826
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.hei, i32 noundef %.0.copyload.i52826, i32 noundef %i.lrt) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52826) #7
  %.val48008 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lru = getelementptr inbounds nuw i8, ptr %.val48008, i64 %i.hek
  %.0.copyload.i52833 = load i32, ptr %i.lru, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52833) #7, !srcloc !19
  %.val48007 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lrv = getelementptr inbounds nuw i8, ptr %.val48007, i64 %i.hej
  %.0.copyload.i52834 = load i32, ptr %i.lrv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52834) #7, !srcloc !19
  br label %.loopexit54366

.loopexit54366:                                   ; preds = %bb.auf, %.loopexit54368, %bb.aug
  %.10044351 = phi i32 [ %i.lpw, %.loopexit54368 ], [ %.0.copyload.i52833, %bb.aug ], [ %i.lpw, %bb.auf ] ; 2 uses
  %.843682 = phi i32 [ %.0.copyload.i52832, %.loopexit54368 ], [ %.0.copyload.i52834, %bb.aug ], [ %.0.copyload.i52832, %bb.auf ]
  %i.lrw = add i32 %.843682, -1                   ; 2 uses
  %i.lrx = lshr i32 %i.lnt, 4
  %i.lry = lshr i32 %i.lnt, 9
  %i.lrz = xor i32 %i.lrx, %i.lry
  %i.lsa = and i32 %i.lrw, %i.lrz                 ; 2 uses
  %i.lsb = shl i32 %i.lsa, 6
  %i.lsc = add i32 %i.lsb, %.10044351             ; 3 uses
  %i.lsd = zext i32 %i.lsc to i64
  %.val48006 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lse = getelementptr inbounds nuw i8, ptr %.val48006, i64 %i.lsd
  %.0.copyload.i52835 = load i32, ptr %i.lse, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52835) #7, !srcloc !19
  %.not46005 = icmp eq i32 %.0.copyload.i52835, %i.lnt
  br i1 %.not46005, label %.loopexit54365, label %.preheader54364

.preheader54364:                                  ; preds = %.loopexit54366, %bb.aui
  %.4044136 = phi i32 [ %.0.copyload.i52836, %bb.aui ], [ %.0.copyload.i52835, %.loopexit54366 ] ; 2 uses
  %.115 = phi i32 [ %i.lsl, %bb.aui ], [ 1, %.loopexit54366 ] ; 2 uses
  %.943683 = phi i32 [ %i.lsj, %bb.aui ], [ 0, %.loopexit54366 ] ; 3 uses
  %.2343508 = phi i32 [ %i.lso, %bb.aui ], [ %i.lsc, %.loopexit54366 ] ; 2 uses
  %.1843391 = phi i32 [ %i.lsm, %bb.aui ], [ %i.lsa, %.loopexit54366 ]
  %i.lsf = icmp eq i32 %.4044136, -4
  %.not46008 = icmp eq i32 %.943683, 0            ; 2 uses
  br i1 %i.lsf, label %bb.auh, label %bb.aui

bb.auh:                                           ; preds = %.preheader54364
  %i.lsg = select i1 %.not46008, i32 %.2343508, i32 %.943683
  br label %bb.auj

bb.aui:                                           ; preds = %.preheader54364
  %i.lsh = icmp eq i32 %.4044136, -8
  %i.lsi = select i1 %i.lsh, i1 %.not46008, i1 false
  %i.lsj = select i1 %i.lsi, i32 %.2343508, i32 %.943683
  %i.lsk = add i32 %.1843391, %.115
  %i.lsl = add i32 %.115, 1
  %i.lsm = and i32 %i.lsk, %i.lrw                 ; 2 uses
  %i.lsn = shl i32 %i.lsm, 6
  %i.lso = add i32 %i.lsn, %.10044351             ; 3 uses
  %i.lsp = zext i32 %i.lso to i64
  %.val48005 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsq = getelementptr inbounds nuw i8, ptr %.val48005, i64 %i.lsp
  %.0.copyload.i52836 = load i32, ptr %i.lsq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52836) #7, !srcloc !19
  %.not46007 = icmp eq i32 %i.lnt, %.0.copyload.i52836
  br i1 %.not46007, label %.loopexit54365, label %.preheader54364

bb.auj:                                           ; preds = %bb.aub, %bb.auh
  %.2543510 = phi i32 [ %i.lsg, %bb.auh ], [ %.2243507, %bb.aub ] ; 2 uses
  %i.lsr = zext i32 %.2543510 to i64
  %.val48004 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lss = getelementptr inbounds nuw i8, ptr %.val48004, i64 %i.lsr
  %.0.copyload.i52837 = load i32, ptr %i.lss, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52837) #7, !srcloc !19
  br label %.loopexit54365

.loopexit54365:                                   ; preds = %bb.aui, %.loopexit54366, %bb.auj
  %.2643511 = phi i32 [ %.2543510, %bb.auj ], [ %i.lsc, %.loopexit54366 ], [ %i.lso, %bb.aui ]
  %.2043149 = phi i32 [ %.0.copyload.i52837, %bb.auj ], [ %i.lnt, %.loopexit54366 ], [ %i.lnt, %bb.aui ]
  %.val48003 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lst = getelementptr inbounds nuw i8, ptr %.val48003, i64 %i.hel
  %.0.copyload.i52838 = load i32, ptr %i.lst, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52838) #7, !srcloc !19
  %i.lsu = add i32 %.0.copyload.i52838, 1
  %.val49783 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsv = getelementptr inbounds nuw i8, ptr %.val49783, i64 %i.hel
  store i32 %i.lsu, ptr %i.lsv, align 1
  %.not46009 = icmp eq i32 %.2043149, -4
  br i1 %.not46009, label %bb.aul, label %bb.auk

bb.auk:                                           ; preds = %.loopexit54365
  %.val48002 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsw = getelementptr inbounds nuw i8, ptr %.val48002, i64 %i.hem
  %.0.copyload.i52839 = load i32, ptr %i.lsw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52839) #7, !srcloc !19
  %i.lsx = add i32 %.0.copyload.i52839, -1
  %.val49782 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lsy = getelementptr inbounds nuw i8, ptr %.val49782, i64 %i.hem
  store i32 %i.lsx, ptr %i.lsy, align 1
  br label %bb.aul

bb.aul:                                           ; preds = %bb.auk, %.loopexit54365
  %i.lsz = zext i32 %.2643511 to i64              ; 10 uses
  %.val50854 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lta = getelementptr inbounds nuw i8, ptr %.val50854, i64 %i.lsz
  %i.ltb = getelementptr inbounds nuw i8, ptr %i.lta, i64 4
  store i64 0, ptr %i.ltb, align 1
  %.val49781 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltc = getelementptr inbounds nuw i8, ptr %.val49781, i64 %i.lsz
  store i32 %i.lnt, ptr %i.ltc, align 1
  %.val50853 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltd = getelementptr inbounds nuw i8, ptr %.val50853, i64 %i.lsz
  %i.lte = getelementptr inbounds nuw i8, ptr %i.ltd, i64 12
  store i64 0, ptr %i.lte, align 1
  %.val50852 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltf = getelementptr inbounds nuw i8, ptr %.val50852, i64 %i.lsz
  %i.ltg = getelementptr inbounds nuw i8, ptr %i.ltf, i64 20
  store i64 0, ptr %i.ltg, align 1
  %.val50851 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lth = getelementptr inbounds nuw i8, ptr %.val50851, i64 %i.lsz
  %i.lti = getelementptr inbounds nuw i8, ptr %i.lth, i64 28
  store i64 0, ptr %i.lti, align 1
  %.val50850 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltj = getelementptr inbounds nuw i8, ptr %.val50850, i64 %i.lsz
  %i.ltk = getelementptr inbounds nuw i8, ptr %i.ltj, i64 36
  store i64 0, ptr %i.ltk, align 1
  %.val50849 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltl = getelementptr inbounds nuw i8, ptr %.val50849, i64 %i.lsz
  %i.ltm = getelementptr inbounds nuw i8, ptr %i.ltl, i64 44
  store i64 0, ptr %i.ltm, align 1
  %.val50848 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltn = getelementptr inbounds nuw i8, ptr %.val50848, i64 %i.lsz
  %i.lto = getelementptr inbounds nuw i8, ptr %i.ltn, i64 52
  store i64 0, ptr %i.lto, align 1
  %.val49780 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltp = getelementptr inbounds nuw i8, ptr %.val49780, i64 %i.lsz
  %i.ltq = getelementptr inbounds nuw i8, ptr %i.ltp, i64 60
  store i32 0, ptr %i.ltq, align 1
  br label %.loopexit54370

.loopexit54370:                                   ; preds = %bb.aty, %bb.atw, %bb.aul
  %.pre-phi55802.a = phi i64 [ %i.lsz, %bb.aul ], [ %i.lod, %bb.atw ], [ %i.loq, %bb.aty ] ; 4 uses
  %.val48001 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltr = getelementptr inbounds nuw i8, ptr %.val48001, i64 %i.lnn
  %.0.copyload.i52840 = load i32, ptr %i.ltr, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52840) #7, !srcloc !19
  %i.lts = add i32 %.0.copyload.i52840, 31        ; 2 uses
  %i.ltt = lshr i32 %i.lts, 5                     ; 2 uses
  %i.ltu = add nuw nsw i64 %.pre-phi55802.a, 36   ; 2 uses
  %.val48000 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltv = getelementptr inbounds nuw i8, ptr %.val48000, i64 %i.ltu
  %.0.copyload.i52841 = load i32, ptr %i.ltv, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52841) #7, !srcloc !19
  %i.ltw = add i32 %.0.copyload.i52841, 31        ; 3 uses
  %i.ltx = lshr i32 %i.ltw, 5                     ; 9 uses
  %i.lty = tail call i32 @llvm.umin.i32(i32 %i.ltt, i32 %i.ltx) ; 2 uses
  %.not46010 = icmp eq i32 %i.lty, 0
  br i1 %.not46010, label %.loopexit54363, label %bb.aum

bb.aum:                                           ; preds = %.loopexit54370
  %.val47999 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltz = getelementptr inbounds nuw i8, ptr %.val47999, i64 %i.lnm
  %i.lua = getelementptr inbounds nuw i8, ptr %i.ltz, i64 40
  %.0.copyload.i52842 = load i32, ptr %i.lua, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52842) #7, !srcloc !19
  %.val47998 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lub = getelementptr inbounds nuw i8, ptr %.val47998, i64 %.pre-phi55802.a
  %i.luc = getelementptr inbounds nuw i8, ptr %i.lub, i64 28
  %.0.copyload.i52843 = load i32, ptr %i.luc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52843) #7, !srcloc !19
  %i.lud = zext nneg i32 %i.lty to i64
  br label %bb.aun

bb.aun:                                           ; preds = %bb.auo, %bb.aum
  %indvars.iv55674 = phi i64 [ %indvars.iv.next55675, %bb.auo ], [ 0, %bb.aum ] ; 2 uses
  %indvars.iv55674.tr = trunc nuw nsw i64 %indvars.iv55674 to i32
  %i.lue = shl nuw nsw i32 %indvars.iv55674.tr, 2 ; 2 uses
  %i.luf = add i32 %i.lue, %.0.copyload.i52843
  %i.lug = zext i32 %i.luf to i64
  %.val47997 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.luh = getelementptr inbounds nuw i8, ptr %.val47997, i64 %i.lug
  %.0.copyload.i52844 = load i32, ptr %i.luh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52844) #7, !srcloc !19
  %i.lui = add i32 %i.lue, %.0.copyload.i52842
  %i.luj = zext i32 %i.lui to i64
  %.val47996 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.luk = getelementptr inbounds nuw i8, ptr %.val47996, i64 %i.luj
  %.0.copyload.i52845 = load i32, ptr %i.luk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52845) #7, !srcloc !19
  %i.lul = xor i32 %.0.copyload.i52845, -1
  %i.lum = and i32 %.0.copyload.i52844, %i.lul
  %.not46011 = icmp eq i32 %i.lum, 0
  br i1 %.not46011, label %bb.auo, label %.loopexit54361

bb.auo:                                           ; preds = %bb.aun
  %indvars.iv.next55675 = add nuw nsw i64 %indvars.iv55674, 1 ; 2 uses
  %.not46012 = icmp eq i64 %indvars.iv.next55675, %i.lud
  br i1 %.not46012, label %.loopexit54363, label %bb.aun

.loopexit54363:                                   ; preds = %bb.auo, %.loopexit54370
  %.not46013 = icmp samesign ult i32 %i.ltt, %i.ltx
  br i1 %.not46013, label %bb.aup, label %.loopexit54361

bb.aup:                                           ; preds = %.loopexit54363
  %.val47995 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lun = getelementptr inbounds nuw i8, ptr %.val47995, i64 %.pre-phi55802.a
  %i.luo = getelementptr inbounds nuw i8, ptr %i.lun, i64 28
  %.0.copyload.i52846 = load i32, ptr %i.luo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52846) #7, !srcloc !19
  %6 = lshr i32 %i.ltw, 5
  %7 = lshr i32 %i.lts, 5
  %8 = tail call i32 @llvm.umin.i32(i32 %6, i32 %7)
  %umin = zext nneg i32 %8 to i64
  %9 = zext nneg i32 %i.ltx to i64
  br label %bb.auq

bb.auq:                                           ; preds = %bb.aur, %bb.aup
  %indvars.iv55677 = phi i64 [ %indvars.iv.next55678, %bb.aur ], [ %umin, %bb.aup ] ; 2 uses
  %10 = trunc nuw nsw i64 %indvars.iv55677 to i32
  %i.lup = shl i32 %10, 2
  %i.luq = add i32 %i.lup, %.0.copyload.i52846
  %i.lur = zext i32 %i.luq to i64
  %.val47994 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lus = getelementptr inbounds nuw i8, ptr %.val47994, i64 %i.lur
  %.0.copyload.i52847 = load i32, ptr %i.lus, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52847) #7, !srcloc !19
  %.not46014 = icmp eq i32 %.0.copyload.i52847, 0
  br i1 %.not46014, label %bb.aur, label %.loopexit54361

bb.aur:                                           ; preds = %bb.auq
  %indvars.iv.next55678 = add nuw nsw i64 %indvars.iv55677, 1 ; 2 uses
  %.not46015 = icmp eq i64 %indvars.iv.next55678, %9
  br i1 %.not46015, label %.loopexit54361, label %bb.auq

.loopexit54361:                                   ; preds = %bb.aun, %bb.auq, %bb.aur, %.loopexit54363
  %.343196 = phi i32 [ %.243195, %bb.aur ], [ %.243195, %.loopexit54363 ], [ 1, %bb.auq ], [ 1, %bb.aun ] ; 2 uses
  %.not46016 = icmp ult i32 %.0.copyload.i52840, %.0.copyload.i52841
  br i1 %.not46016, label %bb.aus, label %bb.avm

bb.aus:                                           ; preds = %.loopexit54361
  %.val47993 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lut = getelementptr inbounds nuw i8, ptr %.val47993, i64 %i.lno
  %.0.copyload.i52848 = load i32, ptr %i.lut, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52848) #7, !srcloc !19
  %i.luu = shl i32 %.0.copyload.i52848, 5
  %.not46017 = icmp ult i32 %i.luu, %.0.copyload.i52841
  br i1 %.not46017, label %bb.aut, label %bb.avb

bb.aut:                                           ; preds = %bb.aus
  %.val47992 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.luv = getelementptr inbounds nuw i8, ptr %.val47992, i64 %i.lnp
  %.0.copyload.i52849 = load i32, ptr %i.luv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52849) #7, !srcloc !19
  %i.luw = shl i32 %.0.copyload.i52848, 1
  %i.lux = tail call i32 @llvm.umax.i32(i32 %i.luw, i32 %i.ltx) ; 6 uses
  %i.luy = shl i32 %i.lux, 2
  %i.luz = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52849, i32 noundef %i.luy) #7 ; 4 uses
  %.not46018 = icmp eq i32 %i.luz, 0
  br i1 %.not46018, label %bb.auu, label %bb.auv

bb.auu:                                           ; preds = %bb.aut
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.auv

bb.auv:                                           ; preds = %bb.auu, %bb.aut
  %.val49779 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lva = getelementptr inbounds nuw i8, ptr %.val49779, i64 %i.lno
  store i32 %i.lux, ptr %i.lva, align 1
  %.val49778 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvb = getelementptr inbounds nuw i8, ptr %.val49778, i64 %i.lnp
  store i32 %i.luz, ptr %i.lvb, align 1
  %.val47991 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvc = getelementptr inbounds nuw i8, ptr %.val47991, i64 %i.lnn
  %.0.copyload.i52850 = load i32, ptr %i.lvc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52850) #7, !srcloc !19
  %i.lvd = add i32 %.0.copyload.i52850, 31
  %i.lve = lshr i32 %i.lvd, 5                     ; 4 uses
  %i.lvf = icmp ult i32 %i.lve, %i.lux
  br i1 %i.lvf, label %bb.auw, label %bb.aux

bb.auw:                                           ; preds = %bb.auv
  %i.lvg = shl nuw nsw i32 %i.lve, 2
  %i.lvh = add i32 %i.lvg, %i.luz
  %i.lvi = sub nuw i32 %i.lux, %i.lve
  %i.lvj = shl i32 %i.lvi, 2
  %i.lvk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lvh, i32 noundef 0, i32 noundef %i.lvj) #7 ; 0 uses
  br label %bb.aux

bb.aux:                                           ; preds = %bb.auw, %bb.auv
  %i.lvl = and i32 %.0.copyload.i52850, 31        ; 2 uses
  %.not46019 = icmp eq i32 %i.lvl, 0
  br i1 %.not46019, label %bb.auz, label %bb.auy

bb.auy:                                           ; preds = %bb.aux
  %i.lvm = shl nuw nsw i32 %i.lve, 2
  %i.lvn = add i32 %i.luz, -4
  %i.lvo = add i32 %i.lvn, %i.lvm
  %i.lvp = zext i32 %i.lvo to i64                 ; 2 uses
  %.val47990 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvq = getelementptr inbounds nuw i8, ptr %.val47990, i64 %i.lvp
  %.0.copyload.i52851 = load i32, ptr %i.lvq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52851) #7, !srcloc !19
  %i.lvr = shl nsw i32 -1, %i.lvl
  %i.lvs = xor i32 %i.lvr, -1
  %i.lvt = and i32 %.0.copyload.i52851, %i.lvs
  %.val49777 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvu = getelementptr inbounds nuw i8, ptr %.val49777, i64 %i.lvp
  store i32 %i.lvt, ptr %i.lvu, align 1
  br label %bb.auz

bb.auz:                                           ; preds = %bb.auy, %bb.aux
  %i.lvv = icmp eq i32 %.0.copyload.i52848, %i.lux
  br i1 %i.lvv, label %bb.avb, label %bb.ava

bb.ava:                                           ; preds = %bb.auz
  %.val47989 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvw = getelementptr inbounds nuw i8, ptr %.val47989, i64 %i.lnp
  %.0.copyload.i52852 = load i32, ptr %i.lvw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52852) #7, !srcloc !19
  %i.lvx = shl i32 %.0.copyload.i52848, 2
  %i.lvy = add i32 %.0.copyload.i52852, %i.lvx
  %i.lvz = sub i32 %i.lux, %.0.copyload.i52848
  %i.lwa = shl i32 %i.lvz, 2
  %i.lwb = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lvy, i32 noundef 0, i32 noundef %i.lwa) #7 ; 0 uses
  br label %bb.avb

bb.avb:                                           ; preds = %bb.auz, %bb.aus, %bb.ava
  %.val47988 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwc = getelementptr inbounds nuw i8, ptr %.val47988, i64 %i.lnn
  %.0.copyload.i52853 = load i32, ptr %i.lwc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52853) #7, !srcloc !19
  %.not46020 = icmp ult i32 %.0.copyload.i52853, %.0.copyload.i52841
  br i1 %.not46020, label %bb.avc, label %bb.avg

bb.avc:                                           ; preds = %bb.avb
  %.val47987 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwd = getelementptr inbounds nuw i8, ptr %.val47987, i64 %i.lno
  %.0.copyload.i52854 = load i32, ptr %i.lwd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52854) #7, !srcloc !19
  %i.lwe = add i32 %.0.copyload.i52853, 31
  %i.lwf = lshr i32 %i.lwe, 5                     ; 4 uses
  %i.lwg = icmp ugt i32 %.0.copyload.i52854, %i.lwf
  br i1 %i.lwg, label %bb.avd, label %bb.ave

bb.avd:                                           ; preds = %bb.avc
  %.val47986 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwh = getelementptr inbounds nuw i8, ptr %.val47986, i64 %i.lnm
  %i.lwi = getelementptr inbounds nuw i8, ptr %i.lwh, i64 40
  %.0.copyload.i52855 = load i32, ptr %i.lwi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52855) #7, !srcloc !19
  %i.lwj = shl nuw nsw i32 %i.lwf, 2
  %i.lwk = add i32 %.0.copyload.i52855, %i.lwj
  %i.lwl = sub nuw i32 %.0.copyload.i52854, %i.lwf
  %i.lwm = shl i32 %i.lwl, 2
  %i.lwn = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lwk, i32 noundef 0, i32 noundef %i.lwm) #7 ; 0 uses
  %.val47985 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwo = getelementptr inbounds nuw i8, ptr %.val47985, i64 %i.lnn
  %.0.copyload.i52856 = load i32, ptr %i.lwo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52856) #7, !srcloc !19
  br label %bb.ave

bb.ave:                                           ; preds = %bb.avd, %bb.avc
  %.4044037 = phi i32 [ %.0.copyload.i52856, %bb.avd ], [ %.0.copyload.i52853, %bb.avc ] ; 3 uses
  %i.lwp = and i32 %.4044037, 31                  ; 2 uses
  %.not46021 = icmp eq i32 %i.lwp, 0
  br i1 %.not46021, label %bb.avg, label %bb.avf

bb.avf:                                           ; preds = %bb.ave
  %.val47984 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwq = getelementptr inbounds nuw i8, ptr %.val47984, i64 %i.lnm
  %i.lwr = getelementptr inbounds nuw i8, ptr %i.lwq, i64 40
  %.0.copyload.i52857 = load i32, ptr %i.lwr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52857) #7, !srcloc !19
  %i.lws = shl nuw nsw i32 %i.lwf, 2
  %i.lwt = add nsw i32 %i.lws, -4
  %i.lwu = add i32 %i.lwt, %.0.copyload.i52857
  %i.lwv = zext i32 %i.lwu to i64                 ; 2 uses
  %.val47983 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lww = getelementptr inbounds nuw i8, ptr %.val47983, i64 %i.lwv
  %.0.copyload.i52858 = load i32, ptr %i.lww, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52858) #7, !srcloc !19
  %i.lwx = shl nsw i32 -1, %i.lwp
  %i.lwy = xor i32 %i.lwx, -1
  %i.lwz = and i32 %.0.copyload.i52858, %i.lwy
  %.val49776 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxa = getelementptr inbounds nuw i8, ptr %.val49776, i64 %i.lwv
  store i32 %i.lwz, ptr %i.lxa, align 1
  br label %bb.avg

bb.avg:                                           ; preds = %bb.ave, %bb.avb, %bb.avf
  %.4144038 = phi i32 [ %.0.copyload.i52853, %bb.avb ], [ %.4044037, %bb.ave ], [ %.4044037, %bb.avf ]
  %.val49775 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxb = getelementptr inbounds nuw i8, ptr %.val49775, i64 %i.lnn
  store i32 %.0.copyload.i52841, ptr %i.lxb, align 1
  %.not46022 = icmp ugt i32 %.4144038, %.0.copyload.i52841
  br i1 %.not46022, label %bb.avh, label %bb.avl

bb.avh:                                           ; preds = %bb.avg
  %.val47982 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxc = getelementptr inbounds nuw i8, ptr %.val47982, i64 %i.lno
  %.0.copyload.i52859 = load i32, ptr %i.lxc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52859) #7, !srcloc !19
  %i.lxd = icmp ult i32 %i.ltx, %.0.copyload.i52859
  br i1 %i.lxd, label %bb.avi, label %bb.avj

bb.avi:                                           ; preds = %bb.avh
  %.val47981 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxe = getelementptr inbounds nuw i8, ptr %.val47981, i64 %i.lnm
  %i.lxf = getelementptr inbounds nuw i8, ptr %i.lxe, i64 40
  %.0.copyload.i52860 = load i32, ptr %i.lxf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52860) #7, !srcloc !19
  %i.lxg = shl nuw nsw i32 %i.ltx, 2
  %i.lxh = add i32 %.0.copyload.i52860, %i.lxg
  %i.lxi = sub nuw i32 %.0.copyload.i52859, %i.ltx
  %i.lxj = shl i32 %i.lxi, 2
  %i.lxk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lxh, i32 noundef 0, i32 noundef %i.lxj) #7 ; 0 uses
  %.val47980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxl = getelementptr inbounds nuw i8, ptr %.val47980, i64 %i.lnn
  %.0.copyload.i52861 = load i32, ptr %i.lxl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52861) #7, !srcloc !19
  br label %bb.avj

bb.avj:                                           ; preds = %bb.avi, %bb.avh
  %.116 = phi i32 [ %.0.copyload.i52861, %bb.avi ], [ %.0.copyload.i52841, %bb.avh ] ; 3 uses
  %i.lxm = and i32 %.116, 31                      ; 2 uses
  %.not46023 = icmp eq i32 %i.lxm, 0
  br i1 %.not46023, label %bb.avl, label %bb.avk

bb.avk:                                           ; preds = %bb.avj
  %.val47979 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxn = getelementptr inbounds nuw i8, ptr %.val47979, i64 %i.lnm
  %i.lxo = getelementptr inbounds nuw i8, ptr %i.lxn, i64 40
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AprintInstruction0x28hermes0x3A0x3AInstruction0x2A0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2215) #7, !srcloc !19
  %i.ht = add nuw nsw i64 %i.hq, 12               ; 3 uses
  %.val2004 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.val2004, i64 %i.ht
  %.0.copyload.i2216 = load i32, ptr %i.hu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2216) #7, !srcloc !19
  %i.hv = sub i32 %.0.copyload.i2215, %.0.copyload.i2216
  %.not1891 = icmp ugt i32 %i.ho, %i.hv
  br i1 %.not1891, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.hw = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2216, i32 noundef %i.hj, i32 noundef %i.ho) #7 ; 0 uses
  %.val2003 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %.val2003, i64 %i.ht
  %.0.copyload.i2217 = load i32, ptr %i.hx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2217) #7, !srcloc !19
  %i.hy = add i32 %.0.copyload.i2217, %i.ho
  %.val2073 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val2073, i64 %i.ht
  store i32 %i.hy, ptr %i.hz, align 1
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.ia = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2214, i32 noundef %i.hj, i32 noundef %i.ho) #7 ; 0 uses
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.val2002 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ib = getelementptr inbounds nuw i8, ptr %.val2002, i64 %i.e
  %.0.copyload.i2218 = load i32, ptr %i.ib, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2218) #7, !srcloc !19
  %i.ic = zext i32 %.0.copyload.i2218 to i64
  %.val2001 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val2001, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %.0.copyload.i2219 = load i32, ptr %i.ie, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2219) #7, !srcloc !19
  %i.if = load i32, ptr %i.k, align 4, !tbaa !25
  %i.ig = icmp ult i32 %.0.copyload.i2219, %i.if
  br i1 %i.ig, label %bb.eg, label %.critedge1921, !prof !26

bb.eg:                                            ; preds = %bb.ef
  %i.ih = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.ii = zext i32 %.0.copyload.i2219 to i64
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.ih, i64 %i.ii ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !29 ; 2 uses
  %.not1892 = icmp eq ptr %i.il, null
  br i1 %.not1892, label %.critedge1921, label %bb.eh, !prof !30

bb.eh:                                            ; preds = %bb.eg
  %i.im = load ptr, ptr @w2c_hermes_t1, align 8, !tbaa !31 ; 8 uses
  %i.in = load ptr, ptr %i.ij, align 8, !tbaa !32 ; 4 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %func_types_eq.exit2223.thread, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ip = icmp ne ptr %i.im, null
  %i.iq = icmp ne ptr %i.in, null
  %or.cond.i2220 = and i1 %i.ip, %i.iq
  br i1 %or.cond.i2220, label %func_types_eq.exit2223, label %.critedge1921, !prof !33

func_types_eq.exit2223:                           ; preds = %bb.ei
  %i.ir = load i128, ptr %i.im, align 1
  %i.is = load i128, ptr %i.in, align 1
  %i.it = xor i128 %i.ir, %i.is
  %i.iu = getelementptr i8, ptr %i.im, i64 16
  %i.iv = getelementptr i8, ptr %i.in, i64 16
  %i.iw = load i128, ptr %i.iu, align 1
  %i.ix = load i128, ptr %i.iv, align 1
  %i.iy = xor i128 %i.iw, %i.ix
  %i.iz = or i128 %i.it, %i.iy
  %i.ja = icmp ne i128 %i.iz, 0
  %i.jb = zext i1 %i.ja to i32
  %.not.i2222 = icmp eq i32 %i.jb, 0
  br i1 %.not.i2222, label %func_types_eq.exit2223.thread, label %.critedge1921, !prof !34

.critedge1921:                                    ; preds = %bb.ei, %bb.eg, %bb.ef, %func_types_eq.exit2223
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit2223.thread:                    ; preds = %bb.eh, %func_types_eq.exit2223
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !35
  tail call void %i.il(ptr noundef %i.jd, i32 noundef %1, i32 noundef %2, i32 noundef %.0.copyload.i2213, i32 noundef 0) #7
  %i.je = icmp eq i32 %.0.copyload.i2211, 1
  br i1 %i.je, label %.loopexit2334, label %.preheader2333

.preheader2333:                                   ; preds = %func_types_eq.exit2223.thread
  %i.jf = icmp ne ptr %i.im, null
  br label %bb.ej

bb.ej:                                            ; preds = %.preheader2333, %func_types_eq.exit2235.thread
  %.8 = phi i32 [ %i.la, %func_types_eq.exit2235.thread ], [ 1, %.preheader2333 ] ; 3 uses
  %.val2000 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %.val2000, i64 %i.hk
  %.0.copyload.i2224 = load i32, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2224) #7, !srcloc !19
  %i.jh = shl i32 %.8, 3
  %i.ji = add i32 %.0.copyload.i2224, %i.jh
  %i.jj = zext i32 %i.ji to i64
  %.val1999 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.val1999, i64 %i.jj
  %.0.copyload.i2225 = load i32, ptr %i.jk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2225) #7, !srcloc !19
  %.val1998 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1998, i64 %i.ak
  %.0.copyload.i2226 = load i32, ptr %i.jl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2226) #7, !srcloc !19
  %i.jm = zext i32 %.0.copyload.i2226 to i64      ; 2 uses
  %.val1997 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1997, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %.0.copyload.i2227 = load i32, ptr %i.jo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2227) #7, !srcloc !19
  %i.jp = add nuw nsw i64 %i.jm, 12               ; 3 uses
  %.val1996 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %.val1996, i64 %i.jp
  %.0.copyload.i2228 = load i32, ptr %i.jq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2228) #7, !srcloc !19
  %i.jr = sub i32 %.0.copyload.i2227, %.0.copyload.i2228
  %i.js = icmp ult i32 %i.jr, 2
  br i1 %i.js, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.jt = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2226, i32 noundef 66349, i32 noundef 2) #7 ; 0 uses
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.ju = zext i32 %.0.copyload.i2228 to i64
  %.val2151 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %.val2151, i64 %i.ju
  store i16 8236, ptr %i.jv, align 1
  %.val1995 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1995, i64 %i.jp
  %.0.copyload.i2229 = load i32, ptr %i.jw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2229) #7, !srcloc !19
  %i.jx = add i32 %.0.copyload.i2229, 2
  %.val2072 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw i8, ptr %.val2072, i64 %i.jp
  store i32 %i.jx, ptr %i.jy, align 1
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.val1994 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %.val1994, i64 %i.e
  %.0.copyload.i2230 = load i32, ptr %i.jz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2230) #7, !srcloc !19
  %i.ka = zext i32 %.0.copyload.i2230 to i64
  %.val1993 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %.val1993, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %.0.copyload.i2231 = load i32, ptr %i.kc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2231) #7, !srcloc !19
  %i.kd = load i32, ptr %i.k, align 4, !tbaa !25
  %i.ke = icmp ult i32 %.0.copyload.i2231, %i.kd
  br i1 %i.ke, label %bb.en, label %.critedge1923, !prof !26

bb.en:                                            ; preds = %bb.em
  %i.kf = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.kg = zext i32 %.0.copyload.i2231 to i64
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kf, i64 %i.kg ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !29 ; 2 uses
  %.not1893 = icmp eq ptr %i.kj, null
  br i1 %.not1893, label %.critedge1923, label %bb.eo, !prof !30

bb.eo:                                            ; preds = %bb.en
  %i.kk = load ptr, ptr %i.kh, align 8, !tbaa !32 ; 4 uses
  %i.kl = icmp eq ptr %i.im, %i.kk
  br i1 %i.kl, label %func_types_eq.exit2235.thread, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.km = icmp ne ptr %i.kk, null
  %or.cond.i2232 = and i1 %i.jf, %i.km
  br i1 %or.cond.i2232, label %func_types_eq.exit2235, label %.critedge1923, !prof !33

func_types_eq.exit2235:                           ; preds = %bb.ep
  %i.kn = load i128, ptr %i.im, align 1
  %i.ko = load i128, ptr %i.kk, align 1
  %i.kp = xor i128 %i.kn, %i.ko
  %i.kq = getelementptr i8, ptr %i.im, i64 16
  %i.kr = getelementptr i8, ptr %i.kk, i64 16
  %i.ks = load i128, ptr %i.kq, align 1
  %i.kt = load i128, ptr %i.kr, align 1
  %i.ku = xor i128 %i.ks, %i.kt
  %i.kv = or i128 %i.kp, %i.ku
  %i.kw = icmp ne i128 %i.kv, 0
  %i.kx = zext i1 %i.kw to i32
  %.not.i2234 = icmp eq i32 %i.kx, 0
  br i1 %.not.i2234, label %func_types_eq.exit2235.thread, label %.critedge1923, !prof !34

.critedge1923:                                    ; preds = %bb.ep, %bb.en, %bb.em, %func_types_eq.exit2235
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit2235.thread:                    ; preds = %bb.eo, %func_types_eq.exit2235
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !35
  tail call void %i.kj(ptr noundef %i.kz, i32 noundef %1, i32 noundef %2, i32 noundef %.0.copyload.i2225, i32 noundef %.8) #7
  %i.la = add nuw nsw i32 %.8, 1                  ; 2 uses
  %.not1894 = icmp eq i32 %i.la, %.0.copyload.i2211
  br i1 %.not1894, label %.loopexit2334, label %bb.ej

.loopexit2334:                                    ; preds = %func_types_eq.exit2235.thread, %func_types_eq.exit2223.thread, %bb.eb
  %i.lb = add nuw nsw i64 %i.be, 36               ; 2 uses
  %.val1992 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lc = getelementptr inbounds nuw i8, ptr %.val1992, i64 %i.lb
  %.0.copyload.i2236 = load i32, ptr %i.lc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2236) #7, !srcloc !19
  %i.ld = zext i32 %.0.copyload.i2236 to i64
  %.val1991 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.le = getelementptr inbounds nuw i8, ptr %.val1991, i64 %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 44
  %.0.copyload.i2237 = load i32, ptr %i.lf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2237) #7, !srcloc !19
  %i.lg = zext i32 %.0.copyload.i2237 to i64
  %.val1990 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lh = getelementptr inbounds nuw i8, ptr %.val1990, i64 %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 36
  %.0.copyload.i2238 = load i32, ptr %i.li, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2238) #7, !srcloc !19
  %i.lj = zext i32 %.0.copyload.i2238 to i64
  %.val1989 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lk = getelementptr inbounds nuw i8, ptr %.val1989, i64 %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 28
  %.0.copyload.i2239 = load i32, ptr %i.ll, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2239) #7, !srcloc !19
  %i.lm = zext i32 %.0.copyload.i2239 to i64      ; 4 uses
  %.val2158 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ln = getelementptr inbounds nuw i8, ptr %.val2158, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 136
  %.0.copyload.i2240 = load i16, ptr %i.lo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2240) #7, !srcloc !24
  %.val2150 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lp = getelementptr inbounds nuw i8, ptr %.val2150, i64 %i.bh
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  store i16 %.0.copyload.i2240, ptr %i.lq, align 1
  %.val2090 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lr = getelementptr inbounds nuw i8, ptr %.val2090, i64 %i.lm
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 128
  %.0.copyload.i2241 = load i64, ptr %i.ls, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2241) #7, !srcloc !20
  %.val2129 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lt = getelementptr inbounds nuw i8, ptr %.val2129, i64 %i.bh
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 40
  store i64 %.0.copyload.i2241, ptr %i.lu, align 1
  %.val2141 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lv = getelementptr inbounds nuw i8, ptr %.val2141, i64 %i.lm
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 140
  %.0.copyload.i2242 = load i8, ptr %i.lw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2242) #7, !srcloc !21
  %i.lx = add i32 %i.b, -216                      ; 2 uses
  %i.ly = zext i32 %i.lx to i64
  %.val2128 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lz = getelementptr inbounds nuw i8, ptr %.val2128, i64 %i.ly
  store i64 1, ptr %i.lz, align 1
  %i.ma = add i32 %i.b, -208
  %i.mb = zext i32 %i.ma to i64
  %.val2127 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mc = getelementptr inbounds nuw i8, ptr %.val2127, i64 %i.mb
  store i64 4294967295, ptr %i.mc, align 1
  %.val2126 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.md = getelementptr inbounds nuw i8, ptr %.val2126, i64 %i.bh
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 72
  store i64 4294967295, ptr %i.me, align 1
  %.val2125 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mf = getelementptr inbounds nuw i8, ptr %.val2125, i64 %i.bh
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 80
  store i64 4294967295, ptr %i.mg, align 1
  %.val2124 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mh = getelementptr inbounds nuw i8, ptr %.val2124, i64 %i.bh
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 88
  store i64 4294967295, ptr %i.mi, align 1
  %.val2093 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mj = getelementptr inbounds nuw i8, ptr %.val2093, i64 %i.bh
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 52
  store i8 %.0.copyload.i2242, ptr %i.mk, align 1
  %i.ml = add i32 %.0.copyload.i2239, 144
  tail call void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x3A0x3AcopyFrom0x28llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.lx, i32 noundef %i.ml) #7
  %.val2123 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mm = getelementptr inbounds nuw i8, ptr %.val2123, i64 %i.bh
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 128
  store i64 4294967295, ptr %i.mn, align 1
  %.val2122 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %.val2122, i64 %i.bh
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 120
  store i64 4294967295, ptr %i.mp, align 1
  %.val2121 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mq = getelementptr inbounds nuw i8, ptr %.val2121, i64 %i.bh
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 112
  store i64 4294967295, ptr %i.mr, align 1
  %i.ms = add nuw nsw i64 %i.bh, 104              ; 2 uses
  %.val2120 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mt = getelementptr inbounds nuw i8, ptr %.val2120, i64 %i.ms
  store i64 4294967295, ptr %i.mt, align 1
  %i.mu = add i32 %i.b, -176                      ; 2 uses
  %i.mv = zext i32 %i.mu to i64
  %.val2119 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mw = getelementptr inbounds nuw i8, ptr %.val2119, i64 %i.mv
  store i64 1, ptr %i.mw, align 1
  %i.mx = add i32 %.0.copyload.i2239, 184
  tail call void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x3A0x3AcopyFrom0x28llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.mu, i32 noundef %i.mx) #7
  %.val2140 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.my = getelementptr inbounds nuw i8, ptr %.val2140, i64 %i.lm
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 224
  %.0.copyload.i2243 = load i8, ptr %i.mz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2243) #7, !srcloc !21
  %.val2118 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.na = getelementptr inbounds nuw i8, ptr %.val2118, i64 %i.bh
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 172
  store i64 4294967295, ptr %i.nb, align 1
  %.val2117 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nc = getelementptr inbounds nuw i8, ptr %.val2117, i64 %i.bh
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 164
  store i64 4294967295, ptr %i.nd, align 1
  %.val2116 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ne = getelementptr inbounds nuw i8, ptr %.val2116, i64 %i.bh
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 156
  store i64 4294967295, ptr %i.nf, align 1
  %i.ng = add nuw nsw i64 %i.bh, 148              ; 2 uses
  %.val2115 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nh = getelementptr inbounds nuw i8, ptr %.val2115, i64 %i.ng
  store i64 4294967295, ptr %i.nh, align 1
  %i.ni = add i32 %i.b, -132                      ; 2 uses
  %i.nj = zext i32 %i.ni to i64
  %.val2114 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nk = getelementptr inbounds nuw i8, ptr %.val2114, i64 %i.nj
  store i64 1, ptr %i.nk, align 1
  %.val2092 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nl = getelementptr inbounds nuw i8, ptr %.val2092, i64 %i.bh
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 136
  store i8 %.0.copyload.i2243, ptr %i.nm, align 1
  %i.nn = add i32 %.0.copyload.i2239, 228
  tail call void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x3A0x3AcopyFrom0x28llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.ni, i32 noundef %i.nn) #7
  %.val2113 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.no = getelementptr inbounds nuw i8, ptr %.val2113, i64 %i.bh
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 212
  store i64 4294967295, ptr %i.np, align 1
  %.val2112 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nq = getelementptr inbounds nuw i8, ptr %.val2112, i64 %i.bh
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 204
  store i64 4294967295, ptr %i.nr, align 1
  %.val2111 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ns = getelementptr inbounds nuw i8, ptr %.val2111, i64 %i.bh
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 196
  store i64 4294967295, ptr %i.nt, align 1
  %i.nu = add nuw nsw i64 %i.bh, 188              ; 2 uses
  %.val2110 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nv = getelementptr inbounds nuw i8, ptr %.val2110, i64 %i.nu
  store i64 4294967295, ptr %i.nv, align 1
  %i.nw = add i32 %i.b, -92                       ; 2 uses
  %i.nx = zext i32 %i.nw to i64
  %.val2109 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ny = getelementptr inbounds nuw i8, ptr %.val2109, i64 %i.nx
  store i64 1, ptr %i.ny, align 1
  %i.nz = add i32 %.0.copyload.i2239, 268
  tail call void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x3A0x3AcopyFrom0x28llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.nw, i32 noundef %i.nz) #7
  %.val2108 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oa = getelementptr inbounds nuw i8, ptr %.val2108, i64 %i.bh
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 252
  store i64 4294967295, ptr %i.ob, align 1
  %.val2107 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oc = getelementptr inbounds nuw i8, ptr %.val2107, i64 %i.bh
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 244
  store i64 4294967295, ptr %i.od, align 1
  %.val2106 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oe = getelementptr inbounds nuw i8, ptr %.val2106, i64 %i.bh
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 236
  store i64 4294967295, ptr %i.of, align 1
  %i.og = add nuw nsw i64 %i.bh, 228              ; 2 uses
  %.val2105 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oh = getelementptr inbounds nuw i8, ptr %.val2105, i64 %i.og
  store i64 4294967295, ptr %i.oh, align 1
  %i.oi = add nuw nsw i64 %i.bh, 220              ; 2 uses
  %.val2104 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oj = getelementptr inbounds nuw i8, ptr %.val2104, i64 %i.oi
  store i64 1, ptr %i.oj, align 1
  %i.ok = add i32 %i.b, -52
  %i.ol = add i32 %.0.copyload.i2239, 308
  tail call void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x3A0x3AcopyFrom0x28llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.ok, i32 noundef %i.ol) #7
  %.val2139 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.om = getelementptr inbounds nuw i8, ptr %.val2139, i64 %i.bh
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 45
  %.0.copyload.i2244 = load i8, ptr %i.on, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2244) #7, !srcloc !21
  %.not1895 = icmp eq i8 %.0.copyload.i2244, 0
  br i1 %.not1895, label %bb.fa, label %bb.eq

bb.eq:                                            ; preds = %.loopexit2334
  %.val1988 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oo = getelementptr inbounds nuw i8, ptr %.val1988, i64 %i.lb
  %.0.copyload.i2245 = load i32, ptr %i.oo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2245) #7, !srcloc !19
  %i.op = zext i32 %.0.copyload.i2245 to i64
  %.val1987 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oq = getelementptr inbounds nuw i8, ptr %.val1987, i64 %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 44
  %.0.copyload.i2246 = load i32, ptr %i.or, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2246) #7, !srcloc !19
  %i.os = zext i32 %.0.copyload.i2246 to i64
end_hunk_3
