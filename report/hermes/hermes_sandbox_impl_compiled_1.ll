Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3AUTF16Stream0x3A0x3Arefill0x280x29:bb.a
  %i.ah = add i32 %i.ag, %i.af
  %.val508 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val508, i64 %i.q
  store i32 %i.ah, ptr %i.ai, align 1
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %.val486 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val486, i64 %i.m
  %.0.copyload.i518 = load i32, ptr %i.aj, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i518) #7, !srcloc !19
  %i.ak = sub i32 %.0.copyload.i517, %.0.copyload.i518 ; 3 uses
  %i.al = ashr i32 %i.ak, 1
  %i.am = add i32 %i.al, %i.z                     ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ao = sub i32 %.0.copyload.i516, %.0.copyload.i518 ; 2 uses
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
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.cx = shl i32 %indvars.iv.tr, 1
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
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
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
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52464) #7, !srcloc !19
  %i.iny = add i32 %.0.copyload.i52459, 32
  %i.inz = lshr i32 %i.iny, 5
  %i.ioa = shl i32 %.0.copyload.i52463, 1
  %i.iob = tail call i32 @llvm.umax.i32(i32 %i.ioa, i32 %i.inz) ; 6 uses
  %i.ioc = shl i32 %i.iob, 2
  %i.iod = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52464, i32 noundef %i.ioc) #7 ; 5 uses
  %.not46356 = icmp eq i32 %i.iod, 0
  br i1 %.not46356, label %bb.aig, label %bb.aih

bb.aig:                                           ; preds = %bb.aif
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.aih

bb.aih:                                           ; preds = %bb.aig, %bb.aif
  %.val49911 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ioe = getelementptr inbounds nuw i8, ptr %.val49911, i64 %i.hfa
  store i32 %i.iob, ptr %i.ioe, align 1
  %.val49910 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iof = getelementptr inbounds nuw i8, ptr %.val49910, i64 %i.hfb
  store i32 %i.iod, ptr %i.iof, align 1
  %.val48333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iog = getelementptr inbounds nuw i8, ptr %.val48333, i64 %i.hez
  %.0.copyload.i52465 = load i32, ptr %i.iog, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52465) #7, !srcloc !19
  %i.ioh = add i32 %.0.copyload.i52465, 31
  %i.ioi = lshr i32 %i.ioh, 5                     ; 4 uses
  %i.ioj = icmp ult i32 %i.ioi, %i.iob
  br i1 %i.ioj, label %bb.aii, label %bb.aij

bb.aii:                                           ; preds = %bb.aih
  %i.iok = shl nuw nsw i32 %i.ioi, 2
  %i.iol = add i32 %i.iok, %i.iod
  %i.iom = sub nuw i32 %i.iob, %i.ioi
  %i.ion = shl i32 %i.iom, 2
  %i.ioo = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.iol, i32 noundef 0, i32 noundef %i.ion) #7 ; 0 uses
  br label %bb.aij

bb.aij:                                           ; preds = %bb.aii, %bb.aih
  %i.iop = and i32 %.0.copyload.i52465, 31        ; 2 uses
  %.not46357 = icmp eq i32 %i.iop, 0
  br i1 %.not46357, label %bb.ail, label %bb.aik

bb.aik:                                           ; preds = %bb.aij
  %i.ioq = shl nuw nsw i32 %i.ioi, 2
  %i.ior = add i32 %i.iod, -4
  %i.ios = add i32 %i.ior, %i.ioq
  %i.iot = zext i32 %i.ios to i64                 ; 2 uses
  %.val48332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iou = getelementptr inbounds nuw i8, ptr %.val48332, i64 %i.iot
  %.0.copyload.i52466 = load i32, ptr %i.iou, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52466) #7, !srcloc !19
  %i.iov = shl nsw i32 -1, %i.iop
  %i.iow = xor i32 %i.iov, -1
  %i.iox = and i32 %.0.copyload.i52466, %i.iow
  %.val49909 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ioy = getelementptr inbounds nuw i8, ptr %.val49909, i64 %i.iot
  store i32 %i.iox, ptr %i.ioy, align 1
  br label %bb.ail

bb.ail:                                           ; preds = %bb.aik, %bb.aij
  %i.ioz = icmp eq i32 %.0.copyload.i52463, %i.iob
  br i1 %i.ioz, label %bb.ain, label %bb.aim

bb.aim:                                           ; preds = %bb.ail
  %i.ipa = shl i32 %.0.copyload.i52463, 2
  %i.ipb = add i32 %i.iod, %i.ipa
  %i.ipc = sub i32 %i.iob, %.0.copyload.i52463
  %i.ipd = shl i32 %i.ipc, 2
  %i.ipe = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ipb, i32 noundef 0, i32 noundef %i.ipd) #7 ; 0 uses
  br label %bb.ain

bb.ain:                                           ; preds = %bb.ail, %.loopexit54409, %bb.aim
  %.6144312 = phi i32 [ %.0.copyload.i52459, %.loopexit54409 ], [ %.0.copyload.i52465, %bb.ail ], [ %.0.copyload.i52465, %bb.aim ] ; 4 uses
  %.not46358 = icmp ult i32 %.6144312, %i.inu
  br i1 %.not46358, label %bb.aio, label %bb.ais

bb.aio:                                           ; preds = %bb.ain
  %.val48331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipf = getelementptr inbounds nuw i8, ptr %.val48331, i64 %i.hfa
  %.0.copyload.i52467 = load i32, ptr %i.ipf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52467) #7, !srcloc !19
  %i.ipg = add i32 %.6144312, 31
  %i.iph = lshr i32 %i.ipg, 5                     ; 4 uses
  %i.ipi = icmp ugt i32 %.0.copyload.i52467, %i.iph
  br i1 %i.ipi, label %bb.aip, label %bb.aiq

bb.aip:                                           ; preds = %bb.aio
  %.val48330 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipj = getelementptr inbounds nuw i8, ptr %.val48330, i64 %i.heh
  %i.ipk = getelementptr inbounds nuw i8, ptr %i.ipj, i64 1100
  %.0.copyload.i52468 = load i32, ptr %i.ipk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52468) #7, !srcloc !19
  %i.ipl = shl nuw nsw i32 %i.iph, 2
  %i.ipm = add i32 %.0.copyload.i52468, %i.ipl
  %i.ipn = sub nuw i32 %.0.copyload.i52467, %i.iph
  %i.ipo = shl i32 %i.ipn, 2
  %i.ipp = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ipm, i32 noundef 0, i32 noundef %i.ipo) #7 ; 0 uses
  %.val48329 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipq = getelementptr inbounds nuw i8, ptr %.val48329, i64 %i.hez
  %.0.copyload.i52469 = load i32, ptr %i.ipq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52469) #7, !srcloc !19
  br label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip, %bb.aio
  %.6244313 = phi i32 [ %.0.copyload.i52469, %bb.aip ], [ %.6144312, %bb.aio ] ; 3 uses
  %i.ipr = and i32 %.6244313, 31                  ; 2 uses
  %.not46359 = icmp eq i32 %i.ipr, 0
  br i1 %.not46359, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %.val48328 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ips = getelementptr inbounds nuw i8, ptr %.val48328, i64 %i.heh
  %i.ipt = getelementptr inbounds nuw i8, ptr %i.ips, i64 1100
  %.0.copyload.i52470 = load i32, ptr %i.ipt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52470) #7, !srcloc !19
  %i.ipu = shl nuw nsw i32 %i.iph, 2
  %i.ipv = add nsw i32 %i.ipu, -4
  %i.ipw = add i32 %i.ipv, %.0.copyload.i52470
  %i.ipx = zext i32 %i.ipw to i64                 ; 2 uses
  %.val48327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ipy = getelementptr inbounds nuw i8, ptr %.val48327, i64 %i.ipx
  %.0.copyload.i52471 = load i32, ptr %i.ipy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52471) #7, !srcloc !19
  %i.ipz = shl nsw i32 -1, %i.ipr
  %i.iqa = xor i32 %i.ipz, -1
  %i.iqb = and i32 %.0.copyload.i52471, %i.iqa
  %.val49908 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqc = getelementptr inbounds nuw i8, ptr %.val49908, i64 %i.ipx
  store i32 %i.iqb, ptr %i.iqc, align 1
  br label %bb.ais

bb.ais:                                           ; preds = %bb.aiq, %bb.ain, %bb.air
  %.6344314 = phi i32 [ %.6144312, %bb.ain ], [ %.6244313, %bb.aiq ], [ %.6244313, %bb.air ]
  %.val49907 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqd = getelementptr inbounds nuw i8, ptr %.val49907, i64 %i.hez
  store i32 %i.inu, ptr %i.iqd, align 1
  %.not46360 = icmp ugt i32 %.6344314, %i.inu
  br i1 %.not46360, label %bb.ait, label %bb.ajd

bb.ait:                                           ; preds = %bb.ais
  %.val48326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqe = getelementptr inbounds nuw i8, ptr %.val48326, i64 %i.hfa
  %.0.copyload.i52472 = load i32, ptr %i.iqe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52472) #7, !srcloc !19
  %i.iqf = add i32 %.0.copyload.i52459, 32
  %i.iqg = lshr i32 %i.iqf, 5                     ; 4 uses
  %i.iqh = icmp ugt i32 %.0.copyload.i52472, %i.iqg
  br i1 %i.iqh, label %bb.aiu, label %bb.aiv

bb.aiu:                                           ; preds = %bb.ait
  %.val48325 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqi = getelementptr inbounds nuw i8, ptr %.val48325, i64 %i.heh
  %i.iqj = getelementptr inbounds nuw i8, ptr %i.iqi, i64 1100
  %.0.copyload.i52473 = load i32, ptr %i.iqj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52473) #7, !srcloc !19
  %i.iqk = shl nuw nsw i32 %i.iqg, 2
  %i.iql = add i32 %.0.copyload.i52473, %i.iqk
  %i.iqm = sub nuw i32 %.0.copyload.i52472, %i.iqg
  %i.iqn = shl i32 %i.iqm, 2
  %i.iqo = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.iql, i32 noundef 0, i32 noundef %i.iqn) #7 ; 0 uses
  %.val48324 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqp = getelementptr inbounds nuw i8, ptr %.val48324, i64 %i.hez
  %.0.copyload.i52474 = load i32, ptr %i.iqp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52474) #7, !srcloc !19
  br label %bb.aiv

bb.aiv:                                           ; preds = %bb.ait, %bb.aiu
  %.34 = phi i32 [ %.0.copyload.i52474, %bb.aiu ], [ %i.inu, %bb.ait ]
  %i.iqq = and i32 %.34, 31                       ; 2 uses
  %.not46361 = icmp eq i32 %i.iqq, 0
  br i1 %.not46361, label %bb.ajd, label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv
  %i.iqr = shl nsw i32 -1, %i.iqq
  %.val48323 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iqs = getelementptr inbounds nuw i8, ptr %.val48323, i64 %i.heh
  %i.iqt = getelementptr inbounds nuw i8, ptr %i.iqs, i64 1100
  %.0.copyload.i52475 = load i32, ptr %i.iqt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52475) #7, !srcloc !19
  %i.iqu = shl nuw nsw i32 %i.iqg, 2
  %i.iqv = add nsw i32 %i.iqu, -4
  %i.iqw = add i32 %i.iqv, %.0.copyload.i52475
  br label %bb.ajc

bb.aix:                                           ; preds = %bb.aie
  %.not46352 = icmp eq i32 %.0.copyload.i52459, 0
  br i1 %.not46352, label %.loopexit54408, label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.aib
  %i.iqx = sub i32 0, %.0.copyload.i52459
  %i.iqy = and i32 %i.iqx, 31
  %i.iqz = lshr i32 -1, %i.iqy
  %i.ira = add i32 %.0.copyload.i52459, -1
  %i.irb = lshr i32 %i.ira, 5
  %i.irc = zext nneg i32 %i.irb to i64
  br label %bb.aiz

bb.aiz:                                           ; preds = %bb.ajb, %bb.aiy
  %indvars.iv55718 = phi i64 [ %indvars.iv.next55719, %bb.ajb ], [ 0, %bb.aiy ] ; 4 uses
  %indvars.iv55718.tr = trunc i64 %indvars.iv55718 to i32
  %i.ird = shl i32 %indvars.iv55718.tr, 2
  %i.ire = add i32 %i.ird, %.0.copyload.i52460
  %i.irf = zext i32 %i.ire to i64
  %.val48322 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.irg = getelementptr inbounds nuw i8, ptr %.val48322, i64 %i.irf
  %.0.copyload.i52476 = load i32, ptr %i.irg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52476) #7, !srcloc !19
  %.not46353 = icmp eq i64 %indvars.iv55718, %i.irc ; 2 uses
  %i.irh = select i1 %.not46353, i32 %i.iqz, i32 -1
  %i.iri = and i32 %.0.copyload.i52476, %i.irh    ; 2 uses
  %.not46354 = icmp eq i32 %i.iri, 0
  br i1 %.not46354, label %bb.ajb, label %bb.aja

bb.aja:                                           ; preds = %bb.aiz
  %i.irj = trunc nuw nsw i64 %indvars.iv55718 to i32
  %i.irk = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.iri, i1 true)
  %i.irl = shl i32 %i.irj, 5
  %i.irm = or disjoint i32 %i.irk, %i.irl
  br label %.loopexit54408

bb.ajb:                                           ; preds = %bb.aiz
  %indvars.iv.next55719 = add nuw nsw i64 %indvars.iv55718, 1
  br i1 %.not46353, label %.loopexit54408, label %bb.aiz

.loopexit54408:                                   ; preds = %bb.ajb, %bb.aix, %bb.aja
  %.35 = phi i32 [ %i.irm, %bb.aja ], [ -1, %bb.aix ], [ -1, %bb.ajb ] ; 3 uses
  %i.irn = and i32 %.35, 31
  %i.iro = shl nuw i32 1, %i.irn
  %i.irp = lshr i32 %.35, 3
  %i.irq = and i32 %i.irp, 536870908
  %i.irr = add i32 %i.irq, %.0.copyload.i52460
  br label %bb.ajc

bb.ajc:                                           ; preds = %.loopexit54408, %bb.aiw
  %.3543660 = phi i32 [ %.0.copyload.i52459, %bb.aiw ], [ %.35, %.loopexit54408 ]
  %.1043350 = phi i32 [ %i.iqr, %bb.aiw ], [ %i.iro, %.loopexit54408 ]
  %.643135 = phi i32 [ %i.iqw, %bb.aiw ], [ %i.irr, %.loopexit54408 ]
  %i.irs = zext i32 %.643135 to i64               ; 2 uses
  %.val48321 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.irt = getelementptr inbounds nuw i8, ptr %.val48321, i64 %i.irs
  %.0.copyload.i52477 = load i32, ptr %i.irt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52477) #7, !srcloc !19
  %i.iru = xor i32 %.1043350, -1
  %i.irv = and i32 %.0.copyload.i52477, %i.iru
  %.val49906 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.irw = getelementptr inbounds nuw i8, ptr %.val49906, i64 %i.irs
  store i32 %i.irv, ptr %i.irw, align 1
  br label %bb.ajd

bb.ajd:                                           ; preds = %bb.aiv, %bb.ais, %bb.ajc
  %.3643661 = phi i32 [ %.0.copyload.i52459, %bb.ais ], [ %.0.copyload.i52459, %bb.aiv ], [ %.3543660, %bb.ajc ] ; 2 uses
  %i.irx = add i32 %.102, 8                       ; 11 uses
  %.val48320 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iry = getelementptr inbounds nuw i8, ptr %.val48320, i64 %i.hex
  %.0.copyload.i52478 = load i32, ptr %i.iry, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52478) #7, !srcloc !19
  %.not46362 = icmp eq i32 %.0.copyload.i52478, 0
  br i1 %.not46362, label %bb.ajh, label %bb.aje

bb.aje:                                           ; preds = %bb.ajd
  %.val48319 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.irz = getelementptr inbounds nuw i8, ptr %.val48319, i64 %i.heh
  %i.isa = getelementptr inbounds nuw i8, ptr %i.irz, i64 1084
  %.0.copyload.i52479 = load i32, ptr %i.isa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52479) #7, !srcloc !19
  %i.isb = add i32 %.0.copyload.i52478, -1        ; 2 uses
  %i.isc = lshr i32 %i.irx, 4
  %i.isd = lshr i32 %i.irx, 9
  %i.ise = xor i32 %i.isc, %i.isd
  %i.isf = and i32 %i.isb, %i.ise                 ; 2 uses
  %i.isg = shl nuw nsw i32 %i.isf, 3
  %i.ish = add i32 %.0.copyload.i52479, %i.isg    ; 2 uses
  %i.isi = zext i32 %i.ish to i64                 ; 2 uses
  %.val48318 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.isj = getelementptr inbounds nuw i8, ptr %.val48318, i64 %i.isi
  %.0.copyload.i52480 = load i32, ptr %i.isj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52480) #7, !srcloc !19
  %i.isk = icmp eq i32 %.0.copyload.i52480, %i.irx
  br i1 %i.isk, label %.loopexit54407, label %.preheader54406

.preheader54406:                                  ; preds = %bb.aje, %bb.ajg
  %.1144008 = phi i32 [ %.0.copyload.i52481, %bb.ajg ], [ %.0.copyload.i52480, %bb.aje ] ; 2 uses
  %.243575 = phi i32 [ %i.isr, %bb.ajg ], [ 1, %bb.aje ] ; 2 uses
  %.043413 = phi i32 [ %i.iss, %bb.ajg ], [ %i.isf, %bb.aje ]
  %.1143351 = phi i32 [ %i.isu, %bb.ajg ], [ %i.ish, %bb.aje ] ; 2 uses
  %.843323 = phi i32 [ %i.isp, %bb.ajg ], [ 0, %bb.aje ] ; 3 uses
  %i.isl = icmp eq i32 %.1144008, -4
  %.not46365 = icmp eq i32 %.843323, 0            ; 2 uses
  br i1 %i.isl, label %bb.ajf, label %bb.ajg

bb.ajf:                                           ; preds = %.preheader54406
  %i.ism = select i1 %.not46365, i32 %.1143351, i32 %.843323
  br label %bb.ajh

bb.ajg:                                           ; preds = %.preheader54406
  %i.isn = icmp eq i32 %.1144008, -8
  %i.iso = select i1 %i.isn, i1 %.not46365, i1 false
  %i.isp = select i1 %i.iso, i32 %.1143351, i32 %.843323
  %i.isq = add i32 %.043413, %.243575
  %i.isr = add i32 %.243575, 1
  %i.iss = and i32 %i.isq, %i.isb                 ; 2 uses
  %i.ist = shl i32 %i.iss, 3
  %i.isu = add i32 %i.ist, %.0.copyload.i52479    ; 2 uses
  %i.isv = zext i32 %i.isu to i64                 ; 2 uses
  %.val48317 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.isw = getelementptr inbounds nuw i8, ptr %.val48317, i64 %i.isv
  %.0.copyload.i52481 = load i32, ptr %i.isw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52481) #7, !srcloc !19
  %.not46364 = icmp eq i32 %.0.copyload.i52481, %i.irx
  br i1 %.not46364, label %.loopexit54407, label %.preheader54406

bb.ajh:                                           ; preds = %bb.ajd, %bb.ajf
  %.1243352 = phi i32 [ %i.ism, %bb.ajf ], [ 0, %bb.ajd ]
  %.val48316 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.isx = getelementptr inbounds nuw i8, ptr %.val48316, i64 %i.hfc
  %.0.copyload.i52482 = load i32, ptr %i.isx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52482) #7, !srcloc !19
  %i.isy = shl i32 %.0.copyload.i52482, 2
  %i.isz = add i32 %i.isy, 4
  %i.ita = mul i32 %.0.copyload.i52478, 3
  %.not46366 = icmp ult i32 %i.isz, %i.ita
  br i1 %.not46366, label %bb.ajj, label %bb.aji

bb.aji:                                           ; preds = %bb.ajh
  %i.itb = shl i32 %.0.copyload.i52478, 1
  br label %bb.ajk

bb.ajj:                                           ; preds = %bb.ajh
  %i.itc = xor i32 %.0.copyload.i52482, -1
  %i.itd = add i32 %.0.copyload.i52478, %i.itc
  %.val48315 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ite = getelementptr inbounds nuw i8, ptr %.val48315, i64 %i.heh
  %i.itf = getelementptr inbounds nuw i8, ptr %i.ite, i64 1092
  %.0.copyload.i52483 = load i32, ptr %i.itf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52483) #7, !srcloc !19
  %i.itg = sub i32 %i.itd, %.0.copyload.i52483
  %i.ith = lshr i32 %.0.copyload.i52478, 3
  %i.iti = icmp ugt i32 %i.itg, %i.ith
  br i1 %i.iti, label %bb.ajn, label %bb.ajk

bb.ajk:                                           ; preds = %bb.ajj, %bb.aji
  %.043300 = phi i32 [ %i.itb, %bb.aji ], [ %.0.copyload.i52478, %bb.ajj ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.hdj, i32 noundef %.043300) #7
  %.val48314 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.itj = getelementptr inbounds nuw i8, ptr %.val48314, i64 %i.heh
  %i.itk = getelementptr inbounds nuw i8, ptr %i.itj, i64 1084
  %.0.copyload.i52484 = load i32, ptr %i.itk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52484) #7, !srcloc !19
  %.val48313 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.itl = getelementptr inbounds nuw i8, ptr %.val48313, i64 %i.hex
  %.0.copyload.i52485 = load i32, ptr %i.itl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52485) #7, !srcloc !19
  %i.itm = add i32 %.0.copyload.i52485, -1        ; 2 uses
  %i.itn = lshr i32 %i.irx, 4
  %i.ito = lshr i32 %i.irx, 9
  %i.itp = xor i32 %i.itn, %i.ito
  %i.itq = and i32 %i.itm, %i.itp                 ; 2 uses
  %i.itr = shl nuw nsw i32 %i.itq, 3
  %i.its = add i32 %i.itr, %.0.copyload.i52484    ; 3 uses
  %i.itt = zext i32 %i.its to i64
  %.val48312 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.itu = getelementptr inbounds nuw i8, ptr %.val48312, i64 %i.itt
  %.0.copyload.i52486 = load i32, ptr %i.itu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52486) #7, !srcloc !19
  %.not46367 = icmp eq i32 %.0.copyload.i52486, %i.irx
  br i1 %.not46367, label %.loopexit54405, label %.preheader54404

.preheader54404:                                  ; preds = %bb.ajk, %bb.ajm
  %.1244009 = phi i32 [ %i.iuc, %bb.ajm ], [ %i.itq, %bb.ajk ]
  %.343576 = phi i32 [ %i.itz, %bb.ajm ], [ 0, %bb.ajk ] ; 3 uses
  %.1343353 = phi i32 [ %i.iue, %bb.ajm ], [ %i.its, %bb.ajk ] ; 2 uses
  %.943324 = phi i32 [ %i.iub, %bb.ajm ], [ 1, %bb.ajk ] ; 2 uses
  %.143301 = phi i32 [ %.0.copyload.i52487, %bb.ajm ], [ %.0.copyload.i52486, %bb.ajk ] ; 2 uses
  %i.itv = icmp eq i32 %.143301, -4
  %.not46370 = icmp eq i32 %.343576, 0            ; 2 uses
  br i1 %i.itv, label %bb.ajl, label %bb.ajm

bb.ajl:                                           ; preds = %.preheader54404
  %i.itw = select i1 %.not46370, i32 %.1343353, i32 %.343576
  br label %bb.ajn

bb.ajm:                                           ; preds = %.preheader54404
  %i.itx = icmp eq i32 %.143301, -8
  %i.ity = select i1 %i.itx, i1 %.not46370, i1 false
  %i.itz = select i1 %i.ity, i32 %.1343353, i32 %.343576
  %i.iua = add i32 %.943324, %.1244009
  %i.iub = add i32 %.943324, 1
  %i.iuc = and i32 %i.iua, %i.itm                 ; 2 uses
  %i.iud = shl i32 %i.iuc, 3
  %i.iue = add i32 %i.iud, %.0.copyload.i52484    ; 3 uses
  %i.iuf = zext i32 %i.iue to i64
  %.val48311 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iug = getelementptr inbounds nuw i8, ptr %.val48311, i64 %i.iuf
  %.0.copyload.i52487 = load i32, ptr %i.iug, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52487) #7, !srcloc !19
  %.not46369 = icmp eq i32 %i.irx, %.0.copyload.i52487
  br i1 %.not46369, label %.loopexit54405, label %.preheader54404

bb.ajn:                                           ; preds = %bb.ajj, %bb.ajl
  %.1543355 = phi i32 [ %i.itw, %bb.ajl ], [ %.1243352, %bb.ajj ] ; 2 uses
  %i.iuh = zext i32 %.1543355 to i64
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52509) #7, !srcloc !19
  %i.ixd = add i32 %.0.copyload.i52509, -1        ; 2 uses
  %i.ixe = lshr i32 %.0.copyload.i52501, 4
  %i.ixf = lshr i32 %.0.copyload.i52501, 9
  %i.ixg = xor i32 %i.ixe, %i.ixf
  %i.ixh = and i32 %i.ixd, %i.ixg                 ; 2 uses
  %i.ixi = shl nuw nsw i32 %i.ixh, 3
  %i.ixj = add i32 %i.ixi, %.0.copyload.i52508    ; 3 uses
  %i.ixk = zext i32 %i.ixj to i64
  %.val48297 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixl = getelementptr inbounds nuw i8, ptr %.val48297, i64 %i.ixk
  %.0.copyload.i52510 = load i32, ptr %i.ixl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52510) #7, !srcloc !19
  %.not46378 = icmp eq i32 %.0.copyload.i52510, %.0.copyload.i52501
  br i1 %.not46378, label %.loopexit54310, label %.preheader54309

.preheader54309:                                  ; preds = %bb.ajw, %bb.ajy
  %.6744318 = phi i32 [ %i.ixv, %bb.ajy ], [ %i.ixj, %bb.ajw ] ; 2 uses
  %.1444011 = phi i32 [ %.0.copyload.i52511, %bb.ajy ], [ %.0.copyload.i52510, %bb.ajw ] ; 2 uses
  %.943800 = phi i32 [ %i.ixs, %bb.ajy ], [ 1, %bb.ajw ] ; 2 uses
  %.543578 = phi i32 [ %i.ixq, %bb.ajy ], [ 0, %bb.ajw ] ; 3 uses
  %.1143326 = phi i32 [ %i.ixt, %bb.ajy ], [ %i.ixh, %bb.ajw ]
  %i.ixm = icmp eq i32 %.1444011, -4
  %.not46381 = icmp eq i32 %.543578, 0            ; 2 uses
  br i1 %i.ixm, label %bb.ajx, label %bb.ajy

bb.ajx:                                           ; preds = %.preheader54309
  %i.ixn = select i1 %.not46381, i32 %.6744318, i32 %.543578
  br label %bb.ajz

bb.ajy:                                           ; preds = %.preheader54309
  %i.ixo = icmp eq i32 %.1444011, -8
  %i.ixp = select i1 %i.ixo, i1 %.not46381, i1 false
  %i.ixq = select i1 %i.ixp, i32 %.6744318, i32 %.543578
  %i.ixr = add i32 %.1143326, %.943800
  %i.ixs = add i32 %.943800, 1
  %i.ixt = and i32 %i.ixr, %i.ixd                 ; 2 uses
  %i.ixu = shl i32 %i.ixt, 3
  %i.ixv = add i32 %i.ixu, %.0.copyload.i52508    ; 3 uses
  %i.ixw = zext i32 %i.ixv to i64
  %.val48296 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixx = getelementptr inbounds nuw i8, ptr %.val48296, i64 %i.ixw
  %.0.copyload.i52511 = load i32, ptr %i.ixx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52511) #7, !srcloc !19
  %.not46380 = icmp eq i32 %.0.copyload.i52501, %.0.copyload.i52511
  br i1 %.not46380, label %.loopexit54310, label %.preheader54309

bb.ajz:                                           ; preds = %bb.ajv, %bb.ajx
  %.6944320 = phi i32 [ %i.ixn, %bb.ajx ], [ %.6644317, %bb.ajv ] ; 2 uses
  %i.ixy = zext i32 %.6944320 to i64
  %.val48295 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ixz = getelementptr inbounds nuw i8, ptr %.val48295, i64 %i.ixy
  %.0.copyload.i52512 = load i32, ptr %i.ixz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52512) #7, !srcloc !19
  br label %.loopexit54310

.loopexit54310:                                   ; preds = %bb.ajy, %bb.ajw, %bb.ajz
  %.7044321 = phi i32 [ %.6944320, %bb.ajz ], [ %i.ixj, %bb.ajw ], [ %i.ixv, %bb.ajy ]
  %.843137 = phi i32 [ %.0.copyload.i52512, %bb.ajz ], [ %.0.copyload.i52501, %bb.ajw ], [ %.0.copyload.i52501, %bb.ajy ]
  %.val48294 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iya = getelementptr inbounds nuw i8, ptr %.val48294, i64 %i.hfc
  %.0.copyload.i52513 = load i32, ptr %i.iya, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52513) #7, !srcloc !19
  %i.iyb = add i32 %.0.copyload.i52513, 1
  %.val49900 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyc = getelementptr inbounds nuw i8, ptr %.val49900, i64 %i.hfc
  store i32 %i.iyb, ptr %i.iyc, align 1
  %.not46382 = icmp eq i32 %.843137, -4
  br i1 %.not46382, label %bb.akb, label %bb.aka

bb.aka:                                           ; preds = %.loopexit54310
  %.val48293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyd = getelementptr inbounds nuw i8, ptr %.val48293, i64 %i.hfd
  %.0.copyload.i52514 = load i32, ptr %i.iyd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52514) #7, !srcloc !19
  %i.iye = add i32 %.0.copyload.i52514, -1
  %.val49899 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyf = getelementptr inbounds nuw i8, ptr %.val49899, i64 %i.hfd
  store i32 %i.iye, ptr %i.iyf, align 1
  br label %bb.akb

bb.akb:                                           ; preds = %bb.aka, %.loopexit54310
  %i.iyg = zext i32 %.7044321 to i64              ; 3 uses
  %.val49898 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyh = getelementptr inbounds nuw i8, ptr %.val49898, i64 %i.iyg
  %i.iyi = getelementptr inbounds nuw i8, ptr %i.iyh, i64 4
  store i32 -1, ptr %i.iyi, align 1
  %.val49897 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyj = getelementptr inbounds nuw i8, ptr %.val49897, i64 %i.iyg
  store i32 %.0.copyload.i52501, ptr %i.iyj, align 1
  br label %.loopexit54312

.loopexit54312:                                   ; preds = %bb.ajs, %bb.ajq, %bb.akb
  %.pre-phi55783 = phi i64 [ %i.iyg, %bb.akb ], [ %i.ivz, %bb.ajq ], [ %i.iwm, %bb.ajs ]
  %.val49896 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyk = getelementptr inbounds nuw i8, ptr %.val49896, i64 %.pre-phi55783
  %i.iyl = getelementptr inbounds nuw i8, ptr %i.iyk, i64 4
  store i32 %.3643661, ptr %i.iyl, align 1
  %i.iym = add nuw nsw i32 %.243302, 1            ; 2 uses
  %.not46383 = icmp eq i32 %i.iym, %i.iux
  br i1 %.not46383, label %.loopexit54403, label %.preheader54402

.loopexit54403:                                   ; preds = %.loopexit54312, %func_types_eq.exit52457.thread, %.loopexit54407, %bb.ahz
  %.pre-phi55899 = phi i64 [ %i.inb, %bb.ahz ], [ 0, %func_types_eq.exit52457.thread ], [ %i.inb, %.loopexit54407 ], [ %i.inb, %.loopexit54312 ]
  %.val48292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyn = getelementptr inbounds nuw i8, ptr %.val48292, i64 %.pre-phi55899
  %i.iyo = getelementptr inbounds nuw i8, ptr %i.iyn, i64 4
  %.0.copyload.i52515 = load i32, ptr %i.iyo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52515) #7, !srcloc !19
  %.not46384 = icmp eq i32 %.0.copyload.i52515, %i.ilz
  br i1 %.not46384, label %.loopexit54553, label %.preheader54552

.loopexit54553:                                   ; preds = %.loopexit54403, %bb.ahv
  %i.iyp = add i32 %.4743778, 4                   ; 2 uses
  %.not46385 = icmp eq i32 %i.iyp, %i.ilq
  br i1 %.not46385, label %.loopexit54619, label %bb.ahv

.loopexit54619:                                   ; preds = %.loopexit54553, %..loopexit54619_crit_edge
  %.pre-phi55897 = phi i64 [ %.pre55896, %..loopexit54619_crit_edge ], [ %i.ilt, %.loopexit54553 ] ; 3 uses
  %i.iyq = add nuw nsw i64 %.pre-phi55897, 8      ; 7 uses
  %.val50883 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyr = getelementptr inbounds nuw i8, ptr %.val50883, i64 %i.iyq
  store i64 34359738368, ptr %i.iyr, align 1
  %i.iys = add i32 %i.ilk, -32                    ; 3 uses
  %i.iyt = add nuw nsw i64 %.pre-phi55897, 4      ; 4 uses
  %.val49895 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyu = getelementptr inbounds nuw i8, ptr %.val49895, i64 %i.iyt
  store i32 %i.iys, ptr %i.iyu, align 1
  %.val48291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyv = getelementptr inbounds nuw i8, ptr %.val48291, i64 %i.hff
  %.0.copyload.i52516 = load i32, ptr %i.iyv, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52516) #7, !srcloc !19
  %i.iyw = add i32 %.0.copyload.i52516, 31        ; 3 uses
  %i.iyx = icmp ult i32 %i.iyw, 32
  br i1 %i.iyx, label %.loopexit54618, label %bb.akc

bb.akc:                                           ; preds = %.loopexit54619
  %.val48290 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iyy = getelementptr inbounds nuw i8, ptr %.val48290, i64 %i.hey
  %.0.copyload.i52517 = load i32, ptr %i.iyy, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52517) #7, !srcloc !19
  %i.iyz = zext i32 %.0.copyload.i52517 to i64
  %.val48289 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iza = getelementptr inbounds nuw i8, ptr %.val48289, i64 %i.iyz
  %.0.copyload.i52518 = load i32, ptr %i.iza, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52518) #7, !srcloc !19
  %.not46386 = icmp eq i32 %.0.copyload.i52518, 0
  br i1 %.not46386, label %bb.akd, label %bb.akh

bb.akd:                                           ; preds = %bb.akc
  %i.izb = lshr i32 %i.iyw, 5                     ; 2 uses
  %i.izc = icmp ult i32 %i.iyw, 64
  %i.izd = add nsw i32 %i.izb, -1
  %i.ize = select i1 %i.izc, i32 0, i32 %i.izd    ; 2 uses
  %wide.trip.count55726 = zext nneg i32 %i.ize to i64
  %exitcond5572757425 = icmp eq i32 %i.ize, 0
  br i1 %exitcond5572757425, label %.loopexit54618, label %.lr.ph57428

bb.ake:                                           ; preds = %.lr.ph57428
  %exitcond55727 = icmp eq i64 %indvars.iv.next55723, %wide.trip.count55726
  br i1 %exitcond55727, label %.loopexit54618, label %.lr.ph57428

.lr.ph57428:                                      ; preds = %bb.akd, %bb.ake
  %indvars.iv5572257426 = phi i64 [ %indvars.iv.next55723, %bb.ake ], [ 0, %bb.akd ]
  %indvars.iv.next55723 = add nuw nsw i64 %indvars.iv5572257426, 1 ; 3 uses
  %indvars55724 = trunc i64 %indvars.iv.next55723 to i32 ; 2 uses
  %i.izf = shl i32 %indvars55724, 2
  %i.izg = add i32 %i.izf, %.0.copyload.i52517
  %i.izh = zext i32 %i.izg to i64
  %.val48288 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.izi = getelementptr inbounds nuw i8, ptr %.val48288, i64 %i.izh
  %.0.copyload.i52519 = load i32, ptr %i.izi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52519) #7, !srcloc !19
  %.not46387 = icmp eq i32 %.0.copyload.i52519, 0
  br i1 %.not46387, label %bb.ake, label %bb.akf

bb.akf:                                           ; preds = %.lr.ph57428
  %i.izj = icmp ugt i32 %i.izb, %indvars55724
  br i1 %i.izj, label %bb.akg, label %.loopexit54618

.loopexit54618:                                   ; preds = %bb.ake, %bb.akd, %bb.akf, %.loopexit54619
  %i.izk = add i32 %.0.copyload.i52516, 1
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.hes, i32 noundef %i.izk, i32 noundef 0) #7
  br label %bb.akl

bb.akg:                                           ; preds = %bb.akf
  %.not46388 = icmp eq i32 %.0.copyload.i52516, 0
  br i1 %.not46388, label %.loopexit54617, label %bb.akh

bb.akh:                                           ; preds = %bb.akg, %bb.akc
  %i.izl = sub i32 0, %.0.copyload.i52516
  %i.izm = and i32 %i.izl, 31
  %i.izn = lshr i32 -1, %i.izm
  %i.izo = add i32 %.0.copyload.i52516, -1
  %i.izp = lshr i32 %i.izo, 5
  %i.izq = zext nneg i32 %i.izp to i64
  br label %bb.aki

bb.aki:                                           ; preds = %bb.akk, %bb.akh
  %indvars.iv55728 = phi i64 [ %indvars.iv.next55729, %bb.akk ], [ 0, %bb.akh ] ; 4 uses
  %indvars.iv55728.tr = trunc i64 %indvars.iv55728 to i32
  %i.izr = shl i32 %indvars.iv55728.tr, 2
  %i.izs = add i32 %i.izr, %.0.copyload.i52517
  %i.izt = zext i32 %i.izs to i64
  %.val48287 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.izu = getelementptr inbounds nuw i8, ptr %.val48287, i64 %i.izt
  %.0.copyload.i52520 = load i32, ptr %i.izu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52520) #7, !srcloc !19
  %.not46389 = icmp eq i64 %indvars.iv55728, %i.izq ; 2 uses
  %i.izv = select i1 %.not46389, i32 %i.izn, i32 -1
  %i.izw = and i32 %.0.copyload.i52520, %i.izv    ; 2 uses
  %.not46390 = icmp eq i32 %i.izw, 0
  br i1 %.not46390, label %bb.akk, label %bb.akj

bb.akj:                                           ; preds = %bb.aki
  %i.izx = trunc nuw nsw i64 %indvars.iv55728 to i32
  %i.izy = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.izw, i1 true)
  %i.izz = shl i32 %i.izx, 5
  %i.jaa = or disjoint i32 %i.izy, %i.izz
  br label %.loopexit54617

bb.akk:                                           ; preds = %bb.aki
  %indvars.iv.next55729 = add nuw nsw i64 %indvars.iv55728, 1
  br i1 %.not46389, label %.loopexit54617, label %bb.aki

.loopexit54617:                                   ; preds = %bb.akk, %bb.akg, %bb.akj
  %.943138 = phi i32 [ %i.jaa, %bb.akj ], [ -1, %bb.akg ], [ -1, %bb.akk ] ; 3 uses
  %i.jab = lshr i32 %.943138, 3
  %i.jac = and i32 %i.jab, 536870908
  %i.jad = add i32 %i.jac, %.0.copyload.i52517
  %i.jae = zext i32 %i.jad to i64                 ; 2 uses
  %.val48286 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jaf = getelementptr inbounds nuw i8, ptr %.val48286, i64 %i.jae
  %.0.copyload.i52521 = load i32, ptr %i.jaf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52521) #7, !srcloc !19
  %i.jag = tail call i32 @llvm.fshl.i32(i32 -2, i32 -2, i32 %.943138)
  %i.jah = and i32 %.0.copyload.i52521, %i.jag
  %.val49894 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jai = getelementptr inbounds nuw i8, ptr %.val49894, i64 %i.jae
  store i32 %i.jah, ptr %i.jai, align 1
  br label %bb.akl

bb.akl:                                           ; preds = %.loopexit54617, %.loopexit54618
  %.043447 = phi i32 [ %.0.copyload.i52516, %.loopexit54618 ], [ %.943138, %.loopexit54617 ]
  %.val48285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jaj = getelementptr inbounds nuw i8, ptr %.val48285, i64 %i.ilm
  %.0.copyload.i52522 = load i32, ptr %i.jaj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52522) #7, !srcloc !19
  %.not46391 = icmp eq i32 %.0.copyload.i52522, 0
  br i1 %.not46391, label %.loopexit54616, label %bb.akm

bb.akm:                                           ; preds = %bb.akl
  %.val48284 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jak = getelementptr inbounds nuw i8, ptr %.val48284, i64 %i.ilg
  %.0.copyload.i52523 = load i32, ptr %i.jak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52523) #7, !srcloc !19
  %i.jal = shl i32 %.0.copyload.i52522, 2
  %i.jam = add i32 %.0.copyload.i52523, %i.jal
  %i.jan = add i32 %i.ilk, -44
  br label %bb.akn

bb.akn:                                           ; preds = %.loopexit54551, %bb.akm
  %.1344109 = phi i32 [ 0, %bb.akm ], [ %.2244118, %.loopexit54551 ] ; 2 uses
  %.4843779 = phi i32 [ 0, %bb.akm ], [ %.5743788, %.loopexit54551 ] ; 2 uses
  %.1243385 = phi i32 [ %i.jam, %bb.akm ], [ %i.jao, %.loopexit54551 ]
  %.043278 = phi i32 [ 0, %bb.akm ], [ %.1043288, %.loopexit54551 ] ; 2 uses
  %i.jao = add i32 %.1243385, -4                  ; 3 uses
  %i.jap = zext i32 %i.jao to i64
  %.val48283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jaq = getelementptr inbounds nuw i8, ptr %.val48283, i64 %i.jap
  %.0.copyload.i52524 = load i32, ptr %i.jaq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52524) #7, !srcloc !19
  %i.jar = zext i32 %.0.copyload.i52524 to i64
  %.val48282 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jas = getelementptr inbounds nuw i8, ptr %.val48282, i64 %i.jar
  %i.jat = getelementptr inbounds nuw i8, ptr %i.jas, i64 36
  %.0.copyload.i52525 = load i32, ptr %i.jat, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52525) #7, !srcloc !19
  %i.jau = add i32 %.0.copyload.i52524, 36        ; 2 uses
  %.not46392 = icmp eq i32 %.0.copyload.i52525, %i.jau
  br i1 %.not46392, label %.loopexit54551, label %.preheader54550

.preheader54550:                                  ; preds = %bb.akn, %.loopexit54392
  %.1444110 = phi i32 [ %.2144117, %.loopexit54392 ], [ %.1344109, %bb.akn ] ; 2 uses
  %.4943780 = phi i32 [ %.5643787, %.loopexit54392 ], [ %.4843779, %bb.akn ] ; 3 uses
  %.3743662 = phi i32 [ %.0.copyload.i52647, %.loopexit54392 ], [ %.0.copyload.i52525, %bb.akn ] ; 2 uses
  %.143279 = phi i32 [ %.943287, %.loopexit54392 ], [ %.043278, %bb.akn ] ; 3 uses
  %i.jav = add i32 %.3743662, 8                   ; 18 uses
  %.val48281 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jaw = getelementptr inbounds nuw i8, ptr %.val48281, i64 %i.hex
  %.0.copyload.i52526 = load i32, ptr %i.jaw, align 1 ; 13 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52526) #7, !srcloc !19
  %.not46393 = icmp eq i32 %.0.copyload.i52526, 0
  br i1 %.not46393, label %bb.akx, label %bb.ako

bb.ako:                                           ; preds = %.preheader54550
  %.val48280 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jax = getelementptr inbounds nuw i8, ptr %.val48280, i64 %i.hew
  %.0.copyload.i52527 = load i32, ptr %i.jax, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52527) #7, !srcloc !19
  %i.jay = add i32 %.0.copyload.i52526, -1        ; 4 uses
  %i.jaz = lshr i32 %i.jav, 4
  %i.jba = lshr i32 %i.jav, 9
  %i.jbb = xor i32 %i.jaz, %i.jba                 ; 2 uses
  %i.jbc = and i32 %i.jay, %i.jbb                 ; 4 uses
  %i.jbd = shl nuw nsw i32 %i.jbc, 3
  %i.jbe = add i32 %.0.copyload.i52527, %i.jbd    ; 3 uses
  %i.jbf = zext i32 %i.jbe to i64                 ; 2 uses
  %.val48279 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jbg = getelementptr inbounds nuw i8, ptr %.val48279, i64 %i.jbf
  %.0.copyload.i52528 = load i32, ptr %i.jbg, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52528) #7, !srcloc !19
  %i.jbh = icmp eq i32 %.0.copyload.i52528, %i.jav
  br i1 %i.jbh, label %.loopexit54400, label %.preheader54401

.preheader54401:                                  ; preds = %bb.ako, %bb.akp
  %.1043801 = phi i32 [ %i.jbl, %bb.akp ], [ %i.jbc, %bb.ako ]
  %.643579 = phi i32 [ %i.jbk, %bb.akp ], [ 1, %bb.ako ] ; 2 uses
  %.143414 = phi i32 [ %.0.copyload.i52529, %bb.akp ], [ %.0.copyload.i52528, %bb.ako ]
  %i.jbi = icmp eq i32 %.143414, -4
  br i1 %i.jbi, label %.preheader54395, label %bb.akp

bb.akp:                                           ; preds = %.preheader54401
  %i.jbj = add i32 %.643579, %.1043801
  %i.jbk = add i32 %.643579, 1
  %i.jbl = and i32 %i.jbj, %i.jay                 ; 2 uses
  %i.jbm = shl i32 %i.jbl, 3
  %i.jbn = add i32 %i.jbm, %.0.copyload.i52527
  %i.jbo = zext i32 %i.jbn to i64
  %.val48278 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jbp = getelementptr inbounds nuw i8, ptr %.val48278, i64 %i.jbo
  %.0.copyload.i52529 = load i32, ptr %i.jbp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52529) #7, !srcloc !19
  %.not46394 = icmp eq i32 %.0.copyload.i52529, %i.jav
  br i1 %.not46394, label %.preheader54399, label %.preheader54401

.preheader54399:                                  ; preds = %bb.akp, %bb.akq
  %.1544012 = phi i32 [ %.0.copyload.i52530, %bb.akq ], [ %.0.copyload.i52528, %bb.akp ] ; 2 uses
  %.103 = phi i32 [ %i.jbv, %bb.akq ], [ %i.jbc, %bb.akp ]
  %.243415 = phi i32 [ %i.jbs, %bb.akq ], [ 0, %bb.akp ] ; 4 uses
  %.1943359 = phi i32 [ %i.jbx, %bb.akq ], [ %i.jbe, %bb.akp ] ; 2 uses
  %.1243327 = phi i32 [ %i.jbu, %bb.akq ], [ 1, %bb.akp ] ; 2 uses
  %.not46395 = icmp eq i32 %.1544012, -4
  br i1 %.not46395, label %bb.akr, label %bb.akq

bb.akq:                                           ; preds = %.preheader54399
  %.not46404 = icmp eq i32 %.243415, 0
  %i.jbq = icmp eq i32 %.1544012, -8
  %i.jbr = select i1 %i.jbq, i1 %.not46404, i1 false
  %i.jbs = select i1 %i.jbr, i32 %.1943359, i32 %.243415
  %i.jbt = add i32 %.1243327, %.103
  %i.jbu = add i32 %.1243327, 1
  %i.jbv = and i32 %i.jbt, %i.jay                 ; 2 uses
  %i.jbw = shl i32 %i.jbv, 3
  %i.jbx = add i32 %i.jbw, %.0.copyload.i52527    ; 2 uses
  %i.jby = zext i32 %i.jbx to i64                 ; 2 uses
  %.val48277 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jbz = getelementptr inbounds nuw i8, ptr %.val48277, i64 %i.jby
  %.0.copyload.i52530 = load i32, ptr %i.jbz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52530) #7, !srcloc !19
  %.not46405 = icmp eq i32 %.0.copyload.i52530, %i.jav
  br i1 %.not46405, label %.loopexit54400, label %.preheader54399

bb.akr:                                           ; preds = %.preheader54399
  %.val48276 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jca = getelementptr inbounds nuw i8, ptr %.val48276, i64 %i.hfc
  %.0.copyload.i52531 = load i32, ptr %i.jca, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52531) #7, !srcloc !19
  %i.jcb = shl i32 %.0.copyload.i52531, 2
  %i.jcc = add i32 %i.jcb, 4
  %i.jcd = mul i32 %.0.copyload.i52526, 3
  %.not46396 = icmp ult i32 %i.jcc, %i.jcd
  br i1 %.not46396, label %bb.akt, label %bb.aks

bb.aks:                                           ; preds = %bb.akr
  %i.jce = shl i32 %.0.copyload.i52526, 1
  br label %bb.alg

bb.akt:                                           ; preds = %bb.akr
  %i.jcf = xor i32 %.0.copyload.i52531, -1
  %i.jcg = add i32 %.0.copyload.i52526, %i.jcf
  %.val48275 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jch = getelementptr inbounds nuw i8, ptr %.val48275, i64 %i.heh
  %i.jci = getelementptr inbounds nuw i8, ptr %i.jch, i64 1092
  %.0.copyload.i52532 = load i32, ptr %i.jci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52532) #7, !srcloc !19
  %i.jcj = sub i32 %i.jcg, %.0.copyload.i52532
  %i.jck = lshr i32 %.0.copyload.i52526, 3
  %.not46397 = icmp ugt i32 %i.jcj, %i.jck
  br i1 %.not46397, label %bb.aku, label %bb.alg

bb.aku:                                           ; preds = %bb.akt
  %.not46398 = icmp eq i32 %.243415, 0
  %i.jcl = select i1 %.not46398, i32 %.1943359, i32 %.243415 ; 2 uses
  %i.jcm = zext i32 %i.jcl to i64
  %.val48274 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jcn = getelementptr inbounds nuw i8, ptr %.val48274, i64 %i.jcm
  %.0.copyload.i52533 = load i32, ptr %i.jcn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52533) #7, !srcloc !19
  br label %.loopexit54398

.preheader54395:                                  ; preds = %.preheader54401, %bb.akv
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %.0.copyload.i52572 = load i32, ptr %i.jjc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52572) #7, !srcloc !19
  %i.jjd = add i32 %.0.copyload.i52567, 32
  %i.jje = lshr i32 %i.jjd, 5
  %i.jjf = shl i32 %.0.copyload.i52571, 1
  %i.jjg = tail call i32 @llvm.umax.i32(i32 %i.jjf, i32 %i.jje) ; 6 uses
  %i.jjh = shl i32 %i.jjg, 2
  %i.jji = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52572, i32 noundef %i.jjh) #7 ; 5 uses
  %.not46468 = icmp eq i32 %i.jji, 0
  br i1 %.not46468, label %bb.alz, label %bb.ama

bb.alz:                                           ; preds = %bb.aly
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.ama

bb.ama:                                           ; preds = %bb.alz, %bb.aly
  %.val49882 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjj = getelementptr inbounds nuw i8, ptr %.val49882, i64 %i.hfa
  store i32 %i.jjg, ptr %i.jjj, align 1
  %.val49881 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjk = getelementptr inbounds nuw i8, ptr %.val49881, i64 %i.heh
  %i.jjl = getelementptr inbounds nuw i8, ptr %i.jjk, i64 1100
  store i32 %i.jji, ptr %i.jjl, align 1
  %.val48235 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jjm = getelementptr inbounds nuw i8, ptr %.val48235, i64 %i.hez
  %.0.copyload.i52573 = load i32, ptr %i.jjm, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52573) #7, !srcloc !19
  %i.jjn = add i32 %.0.copyload.i52573, 31
  %i.jjo = lshr i32 %i.jjn, 5                     ; 4 uses
  %i.jjp = icmp ult i32 %i.jjo, %i.jjg
  br i1 %i.jjp, label %bb.amb, label %bb.amc

bb.amb:                                           ; preds = %bb.ama
  %i.jjq = shl nuw nsw i32 %i.jjo, 2
  %i.jjr = add i32 %i.jjq, %i.jji
  %i.jjs = sub nuw i32 %i.jjg, %i.jjo
  %i.jjt = shl i32 %i.jjs, 2
  %i.jju = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jjr, i32 noundef 0, i32 noundef %i.jjt) #7 ; 0 uses
  br label %bb.amc

bb.amc:                                           ; preds = %bb.amb, %bb.ama
  %i.jjv = and i32 %.0.copyload.i52573, 31        ; 2 uses
  %.not46469 = icmp eq i32 %i.jjv, 0
  br i1 %.not46469, label %bb.ame, label %bb.amd

bb.amd:                                           ; preds = %bb.amc
  %i.jjw = shl nuw nsw i32 %i.jjo, 2
  %i.jjx = add i32 %i.jji, -4
  %i.jjy = add i32 %i.jjx, %i.jjw
  %i.jjz = zext i32 %i.jjy to i64                 ; 2 uses
  %.val48234 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jka = getelementptr inbounds nuw i8, ptr %.val48234, i64 %i.jjz
  %.0.copyload.i52574 = load i32, ptr %i.jka, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52574) #7, !srcloc !19
  %i.jkb = shl nsw i32 -1, %i.jjv
  %i.jkc = xor i32 %i.jkb, -1
  %i.jkd = and i32 %.0.copyload.i52574, %i.jkc
  %.val49880 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jke = getelementptr inbounds nuw i8, ptr %.val49880, i64 %i.jjz
  store i32 %i.jkd, ptr %i.jke, align 1
  br label %bb.ame

bb.ame:                                           ; preds = %bb.amd, %bb.amc
  %i.jkf = icmp eq i32 %.0.copyload.i52571, %i.jjg
  br i1 %i.jkf, label %bb.amg, label %bb.amf

bb.amf:                                           ; preds = %bb.ame
  %i.jkg = shl i32 %.0.copyload.i52571, 2
  %i.jkh = add i32 %i.jji, %i.jkg
  %i.jki = sub i32 %i.jjg, %.0.copyload.i52571
  %i.jkj = shl i32 %i.jki, 2
  %i.jkk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jkh, i32 noundef 0, i32 noundef %i.jkj) #7 ; 0 uses
  br label %bb.amg

bb.amg:                                           ; preds = %bb.ame, %.loopexit54305, %bb.amf
  %.7544326 = phi i32 [ %.0.copyload.i52567, %.loopexit54305 ], [ %.0.copyload.i52573, %bb.ame ], [ %.0.copyload.i52573, %bb.amf ] ; 4 uses
  %.not46470 = icmp ult i32 %.7544326, %i.jiz
  br i1 %.not46470, label %bb.amh, label %bb.aml

bb.amh:                                           ; preds = %bb.amg
  %.val48233 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkl = getelementptr inbounds nuw i8, ptr %.val48233, i64 %i.hfa
  %.0.copyload.i52575 = load i32, ptr %i.jkl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52575) #7, !srcloc !19
  %i.jkm = add i32 %.7544326, 31
  %i.jkn = lshr i32 %i.jkm, 5                     ; 4 uses
  %i.jko = icmp ugt i32 %.0.copyload.i52575, %i.jkn
  br i1 %i.jko, label %bb.ami, label %bb.amj

bb.ami:                                           ; preds = %bb.amh
  %.val48232 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkp = getelementptr inbounds nuw i8, ptr %.val48232, i64 %i.heh
  %i.jkq = getelementptr inbounds nuw i8, ptr %i.jkp, i64 1100
  %.0.copyload.i52576 = load i32, ptr %i.jkq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52576) #7, !srcloc !19
  %i.jkr = shl nuw nsw i32 %i.jkn, 2
  %i.jks = add i32 %.0.copyload.i52576, %i.jkr
  %i.jkt = sub nuw i32 %.0.copyload.i52575, %i.jkn
  %i.jku = shl i32 %i.jkt, 2
  %i.jkv = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jks, i32 noundef 0, i32 noundef %i.jku) #7 ; 0 uses
  %.val48231 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jkw = getelementptr inbounds nuw i8, ptr %.val48231, i64 %i.hez
  %.0.copyload.i52577 = load i32, ptr %i.jkw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52577) #7, !srcloc !19
  br label %bb.amj

bb.amj:                                           ; preds = %bb.ami, %bb.amh
  %.7644327 = phi i32 [ %.0.copyload.i52577, %bb.ami ], [ %.7544326, %bb.amh ] ; 3 uses
  %i.jkx = and i32 %.7644327, 31                  ; 2 uses
  %.not46471 = icmp eq i32 %i.jkx, 0
  br i1 %.not46471, label %bb.aml, label %bb.amk

bb.amk:                                           ; preds = %bb.amj
  %.val48230 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jky = getelementptr inbounds nuw i8, ptr %.val48230, i64 %i.hey
  %.0.copyload.i52578 = load i32, ptr %i.jky, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52578) #7, !srcloc !19
  %i.jkz = shl nuw nsw i32 %i.jkn, 2
  %i.jla = add nsw i32 %i.jkz, -4
  %i.jlb = add i32 %i.jla, %.0.copyload.i52578
  %i.jlc = zext i32 %i.jlb to i64                 ; 2 uses
  %.val48229 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jld = getelementptr inbounds nuw i8, ptr %.val48229, i64 %i.jlc
  %.0.copyload.i52579 = load i32, ptr %i.jld, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52579) #7, !srcloc !19
  %i.jle = shl nsw i32 -1, %i.jkx
  %i.jlf = xor i32 %i.jle, -1
  %i.jlg = and i32 %.0.copyload.i52579, %i.jlf
  %.val49879 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlh = getelementptr inbounds nuw i8, ptr %.val49879, i64 %i.jlc
  store i32 %i.jlg, ptr %i.jlh, align 1
  br label %bb.aml

bb.aml:                                           ; preds = %bb.amj, %bb.amg, %bb.amk
  %.7744328 = phi i32 [ %.7544326, %bb.amg ], [ %.7644327, %bb.amj ], [ %.7644327, %bb.amk ]
  %.val49878 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jli = getelementptr inbounds nuw i8, ptr %.val49878, i64 %i.hez
  store i32 %i.jiz, ptr %i.jli, align 1
  %.not46472 = icmp ugt i32 %.7744328, %i.jiz
  br i1 %.not46472, label %bb.amm, label %bb.amw

bb.amm:                                           ; preds = %bb.aml
  %.val48228 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlj = getelementptr inbounds nuw i8, ptr %.val48228, i64 %i.hfa
  %.0.copyload.i52580 = load i32, ptr %i.jlj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52580) #7, !srcloc !19
  %i.jlk = add i32 %.0.copyload.i52567, 32
  %i.jll = lshr i32 %i.jlk, 5                     ; 4 uses
  %i.jlm = icmp ugt i32 %.0.copyload.i52580, %i.jll
  br i1 %i.jlm, label %bb.amn, label %bb.amo

bb.amn:                                           ; preds = %bb.amm
  %.val48227 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jln = getelementptr inbounds nuw i8, ptr %.val48227, i64 %i.heh
  %i.jlo = getelementptr inbounds nuw i8, ptr %i.jln, i64 1100
  %.0.copyload.i52581 = load i32, ptr %i.jlo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52581) #7, !srcloc !19
  %i.jlp = shl nuw nsw i32 %i.jll, 2
  %i.jlq = add i32 %.0.copyload.i52581, %i.jlp
  %i.jlr = sub nuw i32 %.0.copyload.i52580, %i.jll
  %i.jls = shl i32 %i.jlr, 2
  %i.jlt = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jlq, i32 noundef 0, i32 noundef %i.jls) #7 ; 0 uses
  %.val48226 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlu = getelementptr inbounds nuw i8, ptr %.val48226, i64 %i.hez
  %.0.copyload.i52582 = load i32, ptr %i.jlu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52582) #7, !srcloc !19
  br label %bb.amo

bb.amo:                                           ; preds = %bb.amm, %bb.amn
  %.36 = phi i32 [ %.0.copyload.i52582, %bb.amn ], [ %i.jiz, %bb.amm ]
  %i.jlv = and i32 %.36, 31                       ; 2 uses
  %.not46473 = icmp eq i32 %i.jlv, 0
  br i1 %.not46473, label %bb.amw, label %bb.amp

bb.amp:                                           ; preds = %bb.amo
  %i.jlw = shl nsw i32 -1, %i.jlv
  %.val48225 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jlx = getelementptr inbounds nuw i8, ptr %.val48225, i64 %i.hey
  %.0.copyload.i52583 = load i32, ptr %i.jlx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52583) #7, !srcloc !19
  %i.jly = shl nuw nsw i32 %i.jll, 2
  %i.jlz = add nsw i32 %i.jly, -4
  %i.jma = add i32 %i.jlz, %.0.copyload.i52583
  br label %bb.amv

bb.amq:                                           ; preds = %bb.alx
  %.not46464 = icmp eq i32 %.0.copyload.i52567, 0
  br i1 %.not46464, label %.loopexit54304, label %bb.amr

bb.amr:                                           ; preds = %bb.amq, %bb.alu
  %i.jmb = sub i32 0, %.0.copyload.i52567
  %i.jmc = and i32 %i.jmb, 31
  %i.jmd = lshr i32 -1, %i.jmc
  %i.jme = add i32 %.0.copyload.i52567, -1
  %i.jmf = lshr i32 %i.jme, 5
  %i.jmg = zext nneg i32 %i.jmf to i64
  br label %bb.ams

bb.ams:                                           ; preds = %bb.amu, %bb.amr
  %indvars.iv55738 = phi i64 [ %indvars.iv.next55739, %bb.amu ], [ 0, %bb.amr ] ; 4 uses
  %indvars.iv55738.tr = trunc i64 %indvars.iv55738 to i32
  %i.jmh = shl i32 %indvars.iv55738.tr, 2
  %i.jmi = add i32 %i.jmh, %.0.copyload.i52568
  %i.jmj = zext i32 %i.jmi to i64
  %.val48224 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jmk = getelementptr inbounds nuw i8, ptr %.val48224, i64 %i.jmj
  %.0.copyload.i52584 = load i32, ptr %i.jmk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52584) #7, !srcloc !19
  %.not46465 = icmp eq i64 %indvars.iv55738, %i.jmg ; 2 uses
  %i.jml = select i1 %.not46465, i32 %i.jmd, i32 -1
  %i.jmm = and i32 %.0.copyload.i52584, %i.jml    ; 2 uses
  %.not46466 = icmp eq i32 %i.jmm, 0
  br i1 %.not46466, label %bb.amu, label %bb.amt

bb.amt:                                           ; preds = %bb.ams
  %i.jmn = trunc nuw nsw i64 %indvars.iv55738 to i32
  %i.jmo = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.jmm, i1 true)
  %i.jmp = shl i32 %i.jmn, 5
  %i.jmq = or disjoint i32 %i.jmo, %i.jmp
  br label %.loopexit54304

bb.amu:                                           ; preds = %bb.ams
  %indvars.iv.next55739 = add nuw nsw i64 %indvars.iv55738, 1
  br i1 %.not46465, label %.loopexit54304, label %bb.ams

.loopexit54304:                                   ; preds = %bb.amu, %bb.amq, %bb.amt
  %.37 = phi i32 [ %i.jmq, %bb.amt ], [ -1, %bb.amq ], [ -1, %bb.amu ] ; 3 uses
  %i.jmr = and i32 %.37, 31
  %i.jms = shl nuw i32 1, %i.jmr
  %i.jmt = lshr i32 %.37, 3
  %i.jmu = and i32 %i.jmt, 536870908
  %i.jmv = add i32 %i.jmu, %.0.copyload.i52568
  br label %bb.amv

bb.amv:                                           ; preds = %.loopexit54304, %bb.amp
  %.1944016 = phi i32 [ %.0.copyload.i52567, %bb.amp ], [ %.37, %.loopexit54304 ]
  %.105 = phi i32 [ %i.jlw, %bb.amp ], [ %i.jms, %.loopexit54304 ]
  %.1343142 = phi i32 [ %i.jma, %bb.amp ], [ %i.jmv, %.loopexit54304 ]
  %i.jmw = zext i32 %.1343142 to i64              ; 2 uses
  %.val48223 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jmx = getelementptr inbounds nuw i8, ptr %.val48223, i64 %i.jmw
  %.0.copyload.i52585 = load i32, ptr %i.jmx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52585) #7, !srcloc !19
  %i.jmy = xor i32 %.105, -1
  %i.jmz = and i32 %.0.copyload.i52585, %i.jmy
  %.val49877 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jna = getelementptr inbounds nuw i8, ptr %.val49877, i64 %i.jmw
  store i32 %i.jmz, ptr %i.jna, align 1
  br label %bb.amw

bb.amw:                                           ; preds = %bb.amo, %bb.aml, %bb.amv
  %.2044017 = phi i32 [ %.0.copyload.i52567, %bb.aml ], [ %.0.copyload.i52567, %bb.amo ], [ %.1944016, %bb.amv ] ; 4 uses
  %.val48222 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jnb = getelementptr inbounds nuw i8, ptr %.val48222, i64 %i.hex
  %.0.copyload.i52586 = load i32, ptr %i.jnb, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52586) #7, !srcloc !19
  %.not46474 = icmp eq i32 %.0.copyload.i52586, 0
  br i1 %.not46474, label %bb.apu, label %bb.amx

bb.amx:                                           ; preds = %bb.amw
  %.val48221 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jnc = getelementptr inbounds nuw i8, ptr %.val48221, i64 %i.hew
  %.0.copyload.i52587 = load i32, ptr %i.jnc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52587) #7, !srcloc !19
  %i.jnd = add i32 %.0.copyload.i52586, -1        ; 2 uses
  %i.jne = lshr i32 %.0.copyload.i52560, 4
  %i.jnf = lshr i32 %.0.copyload.i52560, 9
  %i.jng = xor i32 %i.jne, %i.jnf
  %i.jnh = and i32 %i.jnd, %i.jng                 ; 2 uses
  %i.jni = shl nuw nsw i32 %i.jnh, 3
  %i.jnj = add i32 %.0.copyload.i52587, %i.jni    ; 2 uses
  %i.jnk = zext i32 %i.jnj to i64                 ; 2 uses
  %.val48220 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jnl = getelementptr inbounds nuw i8, ptr %.val48220, i64 %i.jnk
  %.0.copyload.i52588 = load i32, ptr %i.jnl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52588) #7, !srcloc !19
  %i.jnm = icmp eq i32 %.0.copyload.i52588, %.0.copyload.i52560
  br i1 %i.jnm, label %.loopexit54293, label %.preheader54302

.preheader54302:                                  ; preds = %bb.amx, %bb.amz
  %.106 = phi i32 [ %.0.copyload.i52589, %bb.amz ], [ %.0.copyload.i52588, %bb.amx ] ; 2 uses
  %.1143802 = phi i32 [ %i.jnr, %bb.amz ], [ 0, %bb.amx ] ; 3 uses
  %.1043583 = phi i32 [ %i.jnu, %bb.amz ], [ %i.jnh, %bb.amx ]
  %.443417 = phi i32 [ %i.jnw, %bb.amz ], [ %i.jnj, %bb.amx ] ; 2 uses
  %.443397 = phi i32 [ %i.jnt, %bb.amz ], [ 1, %bb.amx ] ; 2 uses
  %i.jnn = icmp eq i32 %.106, -4
  %.not46477 = icmp eq i32 %.1143802, 0           ; 2 uses
  br i1 %i.jnn, label %bb.amy, label %bb.amz

bb.amy:                                           ; preds = %.preheader54302
  %i.jno = select i1 %.not46477, i32 %.443417, i32 %.1143802
  br label %bb.apu

bb.amz:                                           ; preds = %.preheader54302
  %i.jnp = icmp eq i32 %.106, -8
  %i.jnq = select i1 %i.jnp, i1 %.not46477, i1 false
  %i.jnr = select i1 %i.jnq, i32 %.443417, i32 %.1143802
  %i.jns = add i32 %.443397, %.1043583
  %i.jnt = add i32 %.443397, 1
  %i.jnu = and i32 %i.jns, %i.jnd                 ; 2 uses
  %i.jnv = shl i32 %i.jnu, 3
  %i.jnw = add i32 %i.jnv, %.0.copyload.i52587    ; 2 uses
  %i.jnx = zext i32 %i.jnw to i64                 ; 2 uses
  %.val48219 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jny = getelementptr inbounds nuw i8, ptr %.val48219, i64 %i.jnx
  %.0.copyload.i52589 = load i32, ptr %i.jny, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52589) #7, !srcloc !19
  %.not46476 = icmp eq i32 %.0.copyload.i52589, %.0.copyload.i52560
  br i1 %.not46476, label %.loopexit54293, label %.preheader54302

bb.ana:                                           ; preds = %.loopexit54307
  %i.jnz = getelementptr inbounds nuw i8, ptr %.val48218, i64 %i.iyq
  %.0.copyload.i52590 = load i32, ptr %i.jnz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52590) #7, !srcloc !19
  %.not46423 = icmp eq i32 %.0.copyload.i52590, 0
  %.val48213 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not46423, label %bb.anf, label %bb.anb

bb.anb:                                           ; preds = %bb.ana
  %i.joa = getelementptr inbounds nuw i8, ptr %.val48213, i64 %i.iyt
  %.0.copyload.i52591 = load i32, ptr %i.joa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52591) #7, !srcloc !19
  %i.job = shl i32 %.0.copyload.i52590, 2
  %i.joc = add i32 %i.job, -4
  %i.jod = add i32 %i.joc, %.0.copyload.i52591
  %i.joe = zext i32 %i.jod to i64
  %.val48216 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jof = getelementptr inbounds nuw i8, ptr %.val48216, i64 %i.joe
  %.0.copyload.i52592 = load i32, ptr %i.jof, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52592) #7, !srcloc !19
  %i.jog = add i32 %.0.copyload.i52590, -1
  %.val49876 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.joh = getelementptr inbounds nuw i8, ptr %.val49876, i64 %i.iyq
  store i32 %i.jog, ptr %i.joh, align 1
  br i1 %.not46420, label %bb.apn, label %bb.anc

bb.anc:                                           ; preds = %bb.anb
  %i.joi = add i32 %.0.copyload.i52563, -1        ; 2 uses
  %i.joj = lshr i32 %.0.copyload.i52560, 4
  %i.jok = lshr i32 %.0.copyload.i52560, 9
  %i.jol = xor i32 %i.joj, %i.jok
  %i.jom = and i32 %i.joi, %i.jol                 ; 2 uses
  %i.jon = shl nuw nsw i32 %i.jom, 3
  %i.joo = add i32 %i.jon, %.0.copyload.i52562    ; 2 uses
  %i.jop = zext i32 %i.joo to i64                 ; 2 uses
  %.val48215 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.joq = getelementptr inbounds nuw i8, ptr %.val48215, i64 %i.jop
  %.0.copyload.i52593 = load i32, ptr %i.joq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52593) #7, !srcloc !19
  %i.jor = icmp eq i32 %.0.copyload.i52593, %.0.copyload.i52560
  br i1 %i.jor, label %.loopexit54293, label %.preheader54298

.preheader54298:                                  ; preds = %bb.anc, %bb.ane
  %.1243803 = phi i32 [ %i.jow, %bb.ane ], [ 0, %bb.anc ] ; 3 uses
  %.1143584 = phi i32 [ %.0.copyload.i52594, %bb.ane ], [ %.0.copyload.i52593, %bb.anc ] ; 2 uses
  %.543418 = phi i32 [ %i.jpb, %bb.ane ], [ %i.joo, %bb.anc ] ; 2 uses
  %.543398 = phi i32 [ %i.joy, %bb.ane ], [ 1, %bb.anc ] ; 2 uses
  %.1743332 = phi i32 [ %i.joz, %bb.ane ], [ %i.jom, %bb.anc ]
  %i.jos = icmp eq i32 %.1143584, -4
  %.not46455 = icmp eq i32 %.1243803, 0           ; 2 uses
  br i1 %i.jos, label %bb.and, label %bb.ane

bb.and:                                           ; preds = %.preheader54298
  %i.jot = select i1 %.not46455, i32 %.543418, i32 %.1243803
  br label %bb.apn

bb.ane:                                           ; preds = %.preheader54298
  %i.jou = icmp eq i32 %.1143584, -8
  %i.jov = select i1 %i.jou, i1 %.not46455, i1 false
  %i.jow = select i1 %i.jov, i32 %.543418, i32 %.1243803
  %i.jox = add i32 %.1743332, %.543398
  %i.joy = add i32 %.543398, 1
  %i.joz = and i32 %i.jox, %i.joi                 ; 2 uses
  %i.jpa = shl i32 %i.joz, 3
  %i.jpb = add i32 %i.jpa, %.0.copyload.i52562    ; 2 uses
  %i.jpc = zext i32 %i.jpb to i64                 ; 2 uses
  %.val48214 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpd = getelementptr inbounds nuw i8, ptr %.val48214, i64 %i.jpc
  %.0.copyload.i52594 = load i32, ptr %i.jpd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52594) #7, !srcloc !19
  %.not46454 = icmp eq i32 %.0.copyload.i52594, %.0.copyload.i52560
  br i1 %.not46454, label %.loopexit54293, label %.preheader54298

bb.anf:                                           ; preds = %bb.ana
  %i.jpe = getelementptr inbounds nuw i8, ptr %.val48213, i64 %i.hez
  %.0.copyload.i52595 = load i32, ptr %i.jpe, align 1 ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52595) #7, !srcloc !19
  %i.jpf = add i32 %.0.copyload.i52595, 31        ; 3 uses
  %i.jpg = icmp ult i32 %i.jpf, 32
  br i1 %i.jpg, label %.loopexit54295, label %bb.ang

bb.ang:                                           ; preds = %bb.anf
  %.val48212 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jph = getelementptr inbounds nuw i8, ptr %.val48212, i64 %i.hey
  %.0.copyload.i52596 = load i32, ptr %i.jph, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52596) #7, !srcloc !19
  %i.jpi = zext i32 %.0.copyload.i52596 to i64
  %.val48211 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jpj = getelementptr inbounds nuw i8, ptr %.val48211, i64 %i.jpi
  %.0.copyload.i52597 = load i32, ptr %i.jpj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52597) #7, !srcloc !19
  %.not46424 = icmp eq i32 %.0.copyload.i52597, 0
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %.0.copyload.i52600 = load i32, ptr %i.jpw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52600) #7, !srcloc !19
  %i.jpx = add i32 %.0.copyload.i52595, 32
  %i.jpy = lshr i32 %i.jpx, 5
  %i.jpz = shl i32 %.0.copyload.i52599, 1
  %i.jqa = tail call i32 @llvm.umax.i32(i32 %i.jpz, i32 %i.jpy) ; 6 uses
  %i.jqb = shl i32 %i.jqa, 2
  %i.jqc = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52600, i32 noundef %i.jqb) #7 ; 5 uses
  %.not46430 = icmp eq i32 %i.jqc, 0
  br i1 %.not46430, label %bb.anl, label %bb.anm

bb.anl:                                           ; preds = %bb.ank
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.anm

bb.anm:                                           ; preds = %bb.anl, %bb.ank
  %.val49875 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqd = getelementptr inbounds nuw i8, ptr %.val49875, i64 %i.hfa
  store i32 %i.jqa, ptr %i.jqd, align 1
  %.val49874 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqe = getelementptr inbounds nuw i8, ptr %.val49874, i64 %i.heh
  %i.jqf = getelementptr inbounds nuw i8, ptr %i.jqe, i64 1100
  store i32 %i.jqc, ptr %i.jqf, align 1
  %.val48207 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqg = getelementptr inbounds nuw i8, ptr %.val48207, i64 %i.hez
  %.0.copyload.i52601 = load i32, ptr %i.jqg, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52601) #7, !srcloc !19
  %i.jqh = add i32 %.0.copyload.i52601, 31
  %i.jqi = lshr i32 %i.jqh, 5                     ; 4 uses
  %i.jqj = icmp ult i32 %i.jqi, %i.jqa
  br i1 %i.jqj, label %bb.ann, label %bb.ano

bb.ann:                                           ; preds = %bb.anm
  %i.jqk = shl nuw nsw i32 %i.jqi, 2
  %i.jql = add i32 %i.jqk, %i.jqc
  %i.jqm = sub nuw i32 %i.jqa, %i.jqi
  %i.jqn = shl i32 %i.jqm, 2
  %i.jqo = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jql, i32 noundef 0, i32 noundef %i.jqn) #7 ; 0 uses
  br label %bb.ano

bb.ano:                                           ; preds = %bb.ann, %bb.anm
  %i.jqp = and i32 %.0.copyload.i52601, 31        ; 2 uses
  %.not46431 = icmp eq i32 %i.jqp, 0
  br i1 %.not46431, label %bb.anq, label %bb.anp

bb.anp:                                           ; preds = %bb.ano
  %i.jqq = shl nuw nsw i32 %i.jqi, 2
  %i.jqr = add i32 %i.jqc, -4
  %i.jqs = add i32 %i.jqr, %i.jqq
  %i.jqt = zext i32 %i.jqs to i64                 ; 2 uses
  %.val48206 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqu = getelementptr inbounds nuw i8, ptr %.val48206, i64 %i.jqt
  %.0.copyload.i52602 = load i32, ptr %i.jqu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52602) #7, !srcloc !19
  %i.jqv = shl nsw i32 -1, %i.jqp
  %i.jqw = xor i32 %i.jqv, -1
  %i.jqx = and i32 %.0.copyload.i52602, %i.jqw
  %.val49873 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jqy = getelementptr inbounds nuw i8, ptr %.val49873, i64 %i.jqt
  store i32 %i.jqx, ptr %i.jqy, align 1
  br label %bb.anq

bb.anq:                                           ; preds = %bb.anp, %bb.ano
  %i.jqz = icmp eq i32 %.0.copyload.i52599, %i.jqa
  br i1 %i.jqz, label %bb.ans, label %bb.anr

bb.anr:                                           ; preds = %bb.anq
  %i.jra = shl i32 %.0.copyload.i52599, 2
  %i.jrb = add i32 %i.jqc, %i.jra
  %i.jrc = sub i32 %i.jqa, %.0.copyload.i52599
  %i.jrd = shl i32 %i.jrc, 2
  %i.jre = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jrb, i32 noundef 0, i32 noundef %i.jrd) #7 ; 0 uses
  br label %bb.ans

bb.ans:                                           ; preds = %bb.anq, %.loopexit54295, %bb.anr
  %.8044331 = phi i32 [ %.0.copyload.i52595, %.loopexit54295 ], [ %.0.copyload.i52601, %bb.anq ], [ %.0.copyload.i52601, %bb.anr ] ; 4 uses
  %.not46432 = icmp ult i32 %.8044331, %i.jpt
  br i1 %.not46432, label %bb.ant, label %bb.anx

bb.ant:                                           ; preds = %bb.ans
  %.val48205 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrf = getelementptr inbounds nuw i8, ptr %.val48205, i64 %i.hfa
  %.0.copyload.i52603 = load i32, ptr %i.jrf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52603) #7, !srcloc !19
  %i.jrg = add i32 %.8044331, 31
  %i.jrh = lshr i32 %i.jrg, 5                     ; 4 uses
  %i.jri = icmp ugt i32 %.0.copyload.i52603, %i.jrh
  br i1 %i.jri, label %bb.anu, label %bb.anv

bb.anu:                                           ; preds = %bb.ant
  %.val48204 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrj = getelementptr inbounds nuw i8, ptr %.val48204, i64 %i.heh
  %i.jrk = getelementptr inbounds nuw i8, ptr %i.jrj, i64 1100
  %.0.copyload.i52604 = load i32, ptr %i.jrk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52604) #7, !srcloc !19
  %i.jrl = shl nuw nsw i32 %i.jrh, 2
  %i.jrm = add i32 %.0.copyload.i52604, %i.jrl
  %i.jrn = sub nuw i32 %.0.copyload.i52603, %i.jrh
  %i.jro = shl i32 %i.jrn, 2
  %i.jrp = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jrm, i32 noundef 0, i32 noundef %i.jro) #7 ; 0 uses
  %.val48203 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrq = getelementptr inbounds nuw i8, ptr %.val48203, i64 %i.hez
  %.0.copyload.i52605 = load i32, ptr %i.jrq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52605) #7, !srcloc !19
  br label %bb.anv

bb.anv:                                           ; preds = %bb.anu, %bb.ant
  %.8144332 = phi i32 [ %.0.copyload.i52605, %bb.anu ], [ %.8044331, %bb.ant ] ; 3 uses
  %i.jrr = and i32 %.8144332, 31                  ; 2 uses
  %.not46433 = icmp eq i32 %i.jrr, 0
  br i1 %.not46433, label %bb.anx, label %bb.anw

bb.anw:                                           ; preds = %bb.anv
  %.val48202 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrs = getelementptr inbounds nuw i8, ptr %.val48202, i64 %i.hey
  %.0.copyload.i52606 = load i32, ptr %i.jrs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52606) #7, !srcloc !19
  %i.jrt = shl nuw nsw i32 %i.jrh, 2
  %i.jru = add nsw i32 %i.jrt, -4
  %i.jrv = add i32 %i.jru, %.0.copyload.i52606
  %i.jrw = zext i32 %i.jrv to i64                 ; 2 uses
  %.val48201 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jrx = getelementptr inbounds nuw i8, ptr %.val48201, i64 %i.jrw
  %.0.copyload.i52607 = load i32, ptr %i.jrx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52607) #7, !srcloc !19
  %i.jry = shl nsw i32 -1, %i.jrr
  %i.jrz = xor i32 %i.jry, -1
  %i.jsa = and i32 %.0.copyload.i52607, %i.jrz
  %.val49872 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsb = getelementptr inbounds nuw i8, ptr %.val49872, i64 %i.jrw
  store i32 %i.jsa, ptr %i.jsb, align 1
  br label %bb.anx

bb.anx:                                           ; preds = %bb.anv, %bb.ans, %bb.anw
  %.8244333 = phi i32 [ %.8044331, %bb.ans ], [ %.8144332, %bb.anv ], [ %.8144332, %bb.anw ]
  %.val49871 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsc = getelementptr inbounds nuw i8, ptr %.val49871, i64 %i.hez
  store i32 %i.jpt, ptr %i.jsc, align 1
  %.not46434 = icmp ugt i32 %.8244333, %i.jpt
  br i1 %.not46434, label %bb.any, label %bb.aoi

bb.any:                                           ; preds = %bb.anx
  %.val48200 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsd = getelementptr inbounds nuw i8, ptr %.val48200, i64 %i.hfa
  %.0.copyload.i52608 = load i32, ptr %i.jsd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52608) #7, !srcloc !19
  %i.jse = add i32 %.0.copyload.i52595, 32
  %i.jsf = lshr i32 %i.jse, 5                     ; 4 uses
  %i.jsg = icmp ugt i32 %.0.copyload.i52608, %i.jsf
  br i1 %i.jsg, label %bb.anz, label %bb.aoa

bb.anz:                                           ; preds = %bb.any
  %.val48199 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsh = getelementptr inbounds nuw i8, ptr %.val48199, i64 %i.heh
  %i.jsi = getelementptr inbounds nuw i8, ptr %i.jsh, i64 1100
  %.0.copyload.i52609 = load i32, ptr %i.jsi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52609) #7, !srcloc !19
  %i.jsj = shl nuw nsw i32 %i.jsf, 2
  %i.jsk = add i32 %.0.copyload.i52609, %i.jsj
  %i.jsl = sub nuw i32 %.0.copyload.i52608, %i.jsf
  %i.jsm = shl i32 %i.jsl, 2
  %i.jsn = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jsk, i32 noundef 0, i32 noundef %i.jsm) #7 ; 0 uses
  %.val48198 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jso = getelementptr inbounds nuw i8, ptr %.val48198, i64 %i.hez
  %.0.copyload.i52610 = load i32, ptr %i.jso, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52610) #7, !srcloc !19
  br label %bb.aoa

bb.aoa:                                           ; preds = %bb.any, %bb.anz
  %.38 = phi i32 [ %.0.copyload.i52610, %bb.anz ], [ %i.jpt, %bb.any ]
  %i.jsp = and i32 %.38, 31                       ; 2 uses
  %.not46435 = icmp eq i32 %i.jsp, 0
  br i1 %.not46435, label %bb.aoi, label %bb.aob

bb.aob:                                           ; preds = %bb.aoa
  %i.jsq = shl nsw i32 -1, %i.jsp
  %.val48197 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jsr = getelementptr inbounds nuw i8, ptr %.val48197, i64 %i.hey
  %.0.copyload.i52611 = load i32, ptr %i.jsr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52611) #7, !srcloc !19
  %i.jss = shl nuw nsw i32 %i.jsf, 2
  %i.jst = add nsw i32 %i.jss, -4
  %i.jsu = add i32 %i.jst, %.0.copyload.i52611
  br label %bb.aoh

bb.aoc:                                           ; preds = %bb.anj
  %.not46426 = icmp eq i32 %.0.copyload.i52595, 0
  br i1 %.not46426, label %.loopexit54294, label %bb.aod

bb.aod:                                           ; preds = %bb.aoc, %bb.ang
  %i.jsv = sub i32 0, %.0.copyload.i52595
  %i.jsw = and i32 %i.jsv, 31
  %i.jsx = lshr i32 -1, %i.jsw
  %i.jsy = add i32 %.0.copyload.i52595, -1
  %i.jsz = lshr i32 %i.jsy, 5
  %i.jta = zext nneg i32 %i.jsz to i64
  br label %bb.aoe

bb.aoe:                                           ; preds = %bb.aog, %bb.aod
  %indvars.iv55748 = phi i64 [ %indvars.iv.next55749, %bb.aog ], [ 0, %bb.aod ] ; 4 uses
  %indvars.iv55748.tr = trunc i64 %indvars.iv55748 to i32
  %i.jtb = shl i32 %indvars.iv55748.tr, 2
  %i.jtc = add i32 %i.jtb, %.0.copyload.i52596
  %i.jtd = zext i32 %i.jtc to i64
  %.val48196 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jte = getelementptr inbounds nuw i8, ptr %.val48196, i64 %i.jtd
  %.0.copyload.i52612 = load i32, ptr %i.jte, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52612) #7, !srcloc !19
  %.not46427 = icmp eq i64 %indvars.iv55748, %i.jta ; 2 uses
  %i.jtf = select i1 %.not46427, i32 %i.jsx, i32 -1
  %i.jtg = and i32 %.0.copyload.i52612, %i.jtf    ; 2 uses
  %.not46428 = icmp eq i32 %i.jtg, 0
  br i1 %.not46428, label %bb.aog, label %bb.aof

bb.aof:                                           ; preds = %bb.aoe
  %i.jth = trunc nuw nsw i64 %indvars.iv55748 to i32
  %i.jti = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.jtg, i1 true)
  %i.jtj = shl i32 %i.jth, 5
  %i.jtk = or disjoint i32 %i.jti, %i.jtj
  br label %.loopexit54294

bb.aog:                                           ; preds = %bb.aoe
  %indvars.iv.next55749 = add nuw nsw i64 %indvars.iv55748, 1
  br i1 %.not46427, label %.loopexit54294, label %bb.aoe

.loopexit54294:                                   ; preds = %bb.aog, %bb.aoc, %bb.aof
  %.39 = phi i32 [ %i.jtk, %bb.aof ], [ -1, %bb.aoc ], [ -1, %bb.aog ] ; 3 uses
  %i.jtl = and i32 %.39, 31
  %i.jtm = shl nuw i32 1, %i.jtl
  %i.jtn = lshr i32 %.39, 3
  %i.jto = and i32 %i.jtn, 536870908
  %i.jtp = add i32 %i.jto, %.0.copyload.i52596
  br label %bb.aoh

bb.aoh:                                           ; preds = %.loopexit54294, %bb.aob
  %.2144018 = phi i32 [ %.0.copyload.i52595, %bb.aob ], [ %.39, %.loopexit54294 ]
  %.107 = phi i32 [ %i.jsq, %bb.aob ], [ %i.jtm, %.loopexit54294 ]
  %.1443143 = phi i32 [ %i.jsu, %bb.aob ], [ %i.jtp, %.loopexit54294 ]
  %i.jtq = zext i32 %.1443143 to i64              ; 2 uses
  %.val48195 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jtr = getelementptr inbounds nuw i8, ptr %.val48195, i64 %i.jtq
  %.0.copyload.i52613 = load i32, ptr %i.jtr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52613) #7, !srcloc !19
  %i.jts = xor i32 %.107, -1
  %i.jtt = and i32 %.0.copyload.i52613, %i.jts
  %.val49870 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jtu = getelementptr inbounds nuw i8, ptr %.val49870, i64 %i.jtq
  store i32 %i.jtt, ptr %i.jtu, align 1
  br label %bb.aoi

bb.aoi:                                           ; preds = %bb.aoa, %bb.anx, %bb.aoh
  %.2244019 = phi i32 [ %.0.copyload.i52595, %bb.anx ], [ %.0.copyload.i52595, %bb.aoa ], [ %.2144018, %bb.aoh ] ; 10 uses
  %.not46436 = icmp ult i32 %.2244019, %.5043781
  br i1 %.not46436, label %bb.apc, label %bb.aoj

bb.aoj:                                           ; preds = %bb.aoi
  %i.jtv = add i32 %.2244019, 1                   ; 7 uses
  %i.jtw = shl i32 %.1544111, 5
  %.not46437 = icmp ugt i32 %i.jtv, %i.jtw
  br i1 %.not46437, label %bb.aok, label %bb.aos

bb.aok:                                           ; preds = %bb.aoj
  %i.jtx = add i32 %.2244019, 32
  %i.jty = lshr i32 %i.jtx, 5
  %i.jtz = shl i32 %.1544111, 1
  %i.jua = tail call i32 @llvm.umax.i32(i32 %i.jtz, i32 %i.jty) ; 6 uses
  %i.jub = shl i32 %i.jua, 2
  %i.juc = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.243280, i32 noundef %i.jub) #7 ; 6 uses
  %.not46438 = icmp eq i32 %i.juc, 0
  br i1 %.not46438, label %bb.aol, label %bb.aom

bb.aol:                                           ; preds = %bb.aok
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.aom

bb.aom:                                           ; preds = %bb.aol, %bb.aok
  %i.jud = add i32 %.5043781, 31
  %i.jue = lshr i32 %i.jud, 5                     ; 4 uses
  %i.juf = icmp ult i32 %i.jue, %i.jua
  br i1 %i.juf, label %bb.aon, label %bb.aoo

bb.aon:                                           ; preds = %bb.aom
  %i.jug = shl nuw nsw i32 %i.jue, 2
  %i.juh = add i32 %i.juc, %i.jug
  %i.jui = sub nuw i32 %i.jua, %i.jue
  %i.juj = shl i32 %i.jui, 2
  %i.juk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.juh, i32 noundef 0, i32 noundef %i.juj) #7 ; 0 uses
  br label %bb.aoo

bb.aoo:                                           ; preds = %bb.aon, %bb.aom
  %i.jul = and i32 %.5043781, 31                  ; 2 uses
  %.not46439 = icmp eq i32 %i.jul, 0
  br i1 %.not46439, label %bb.aoq, label %bb.aop

bb.aop:                                           ; preds = %bb.aoo
  %i.jum = shl nuw nsw i32 %i.jue, 2
  %i.jun = add nsw i32 %i.jum, -4
  %i.juo = add i32 %i.jun, %i.juc
  %i.jup = zext i32 %i.juo to i64                 ; 2 uses
  %.val48194 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.juq = getelementptr inbounds nuw i8, ptr %.val48194, i64 %i.jup
  %.0.copyload.i52614 = load i32, ptr %i.juq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52614) #7, !srcloc !19
  %i.jur = shl nsw i32 -1, %i.jul
  %i.jus = xor i32 %i.jur, -1
  %i.jut = and i32 %.0.copyload.i52614, %i.jus
  %.val49869 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.juu = getelementptr inbounds nuw i8, ptr %.val49869, i64 %i.jup
  store i32 %i.jut, ptr %i.juu, align 1
  br label %bb.aoq

bb.aoq:                                           ; preds = %bb.aop, %bb.aoo
  %i.juv = icmp eq i32 %i.jua, %.1544111
  br i1 %i.juv, label %bb.aos, label %bb.aor

bb.aor:                                           ; preds = %bb.aoq
  %i.juw = shl i32 %.1544111, 2
  %i.jux = add i32 %i.juc, %i.juw
  %i.juy = sub i32 %i.jua, %.1544111
  %i.juz = shl i32 %i.juy, 2
  %i.jva = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jux, i32 noundef 0, i32 noundef %i.juz) #7 ; 0 uses
  br label %bb.aos

bb.aos:                                           ; preds = %bb.aoq, %bb.aoj, %bb.aor
  %.8444335 = phi i32 [ %i.jua, %bb.aor ], [ %.1544111, %bb.aoj ], [ %.1544111, %bb.aoq ] ; 7 uses
  %.343281 = phi i32 [ %i.juc, %bb.aor ], [ %.243280, %bb.aoj ], [ %i.juc, %bb.aoq ] ; 7 uses
  %.not46440 = icmp ugt i32 %i.jtv, %.5043781
  br i1 %.not46440, label %bb.aot, label %bb.aox

bb.aot:                                           ; preds = %bb.aos
  %i.jvb = add i32 %.5043781, 31
  %i.jvc = lshr i32 %i.jvb, 5                     ; 4 uses
  %i.jvd = icmp ult i32 %i.jvc, %.8444335
  br i1 %i.jvd, label %bb.aou, label %bb.aov

bb.aou:                                           ; preds = %bb.aot
  %i.jve = shl nuw nsw i32 %i.jvc, 2
  %i.jvf = add i32 %.343281, %i.jve
  %i.jvg = sub nuw i32 %.8444335, %i.jvc
  %i.jvh = shl i32 %i.jvg, 2
  %i.jvi = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jvf, i32 noundef 0, i32 noundef %i.jvh) #7 ; 0 uses
  br label %bb.aov

bb.aov:                                           ; preds = %bb.aou, %bb.aot
  %i.jvj = and i32 %.5043781, 31                  ; 2 uses
  %.not46441 = icmp eq i32 %i.jvj, 0
  br i1 %.not46441, label %bb.aox, label %bb.aow

bb.aow:                                           ; preds = %bb.aov
  %i.jvk = shl nuw nsw i32 %i.jvc, 2
  %i.jvl = add nsw i32 %i.jvk, -4
  %i.jvm = add i32 %i.jvl, %.343281
  %i.jvn = zext i32 %i.jvm to i64                 ; 2 uses
  %.val48193 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jvo = getelementptr inbounds nuw i8, ptr %.val48193, i64 %i.jvn
  %.0.copyload.i52615 = load i32, ptr %i.jvo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52615) #7, !srcloc !19
  %i.jvp = shl nsw i32 -1, %i.jvj
  %i.jvq = xor i32 %i.jvp, -1
  %i.jvr = and i32 %.0.copyload.i52615, %i.jvq
  %.val49868 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jvs = getelementptr inbounds nuw i8, ptr %.val49868, i64 %i.jvn
  store i32 %i.jvr, ptr %i.jvs, align 1
  br label %bb.aox

bb.aox:                                           ; preds = %bb.aov, %bb.aos, %bb.aow
  %.not46442 = icmp ult i32 %i.jtv, %.5043781
  br i1 %.not46442, label %bb.aoy, label %bb.apc

bb.aoy:                                           ; preds = %bb.aox
  %i.jvt = add i32 %.2244019, 32
  %i.jvu = lshr i32 %i.jvt, 5                     ; 4 uses
  %i.jvv = icmp ult i32 %i.jvu, %.8444335
  br i1 %i.jvv, label %bb.aoz, label %bb.apa

bb.aoz:                                           ; preds = %bb.aoy
  %i.jvw = shl nuw nsw i32 %i.jvu, 2
  %i.jvx = add i32 %.343281, %i.jvw
  %i.jvy = sub nuw i32 %.8444335, %i.jvu
  %i.jvz = shl i32 %i.jvy, 2
  %i.jwa = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jvx, i32 noundef 0, i32 noundef %i.jvz) #7 ; 0 uses
  br label %bb.apa

bb.apa:                                           ; preds = %bb.aoz, %bb.aoy
  %i.jwb = and i32 %i.jtv, 31                     ; 2 uses
  %.not46443 = icmp eq i32 %i.jwb, 0
  br i1 %.not46443, label %bb.apc, label %bb.apb

bb.apb:                                           ; preds = %bb.apa
  %i.jwc = shl nuw nsw i32 %i.jvu, 2
  %i.jwd = add nsw i32 %i.jwc, -4
  %i.jwe = add i32 %i.jwd, %.343281
  %i.jwf = zext i32 %i.jwe to i64                 ; 2 uses
  %.val48192 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jwg = getelementptr inbounds nuw i8, ptr %.val48192, i64 %i.jwf
  %.0.copyload.i52616 = load i32, ptr %i.jwg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52616) #7, !srcloc !19
  %i.jwh = shl nsw i32 -1, %i.jwb
  %i.jwi = xor i32 %i.jwh, -1
  %i.jwj = and i32 %.0.copyload.i52616, %i.jwi
  %.val49867 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jwk = getelementptr inbounds nuw i8, ptr %.val49867, i64 %i.jwf
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  store i32 %i.kea, ptr %i.a, align 8, !tbaa !7
  %i.laa = add i32 %.1743808, 4                   ; 2 uses
  %.not45961 = icmp eq i32 %i.laa, %i.iji
  br i1 %.not45961, label %.loopexit54643, label %.preheader54642

.loopexit54643:                                   ; preds = %.loopexit54589, %bb.ahk
  %i.lab = add nuw nsw i64 %i.htf, 32             ; 2 uses
  %.val50865 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lac = getelementptr inbounds nuw i8, ptr %.val50865, i64 %i.lab
  store i64 %.0.copyload.i52345, ptr %i.lac, align 1
  %.val50864 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lad = getelementptr inbounds nuw i8, ptr %.val50864, i64 %i.htf
  %i.lae = getelementptr inbounds nuw i8, ptr %i.lad, i64 368
  store i64 %.0.copyload.i52345, ptr %i.lae, align 1
  %.val48072 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.laf = getelementptr inbounds nuw i8, ptr %.val48072, i64 %i.hek
  %.0.copyload.i52767 = load i32, ptr %i.laf, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52767) #7, !srcloc !19
  %.val48071 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lag = getelementptr inbounds nuw i8, ptr %.val48071, i64 %i.hej
  %.0.copyload.i52768 = load i32, ptr %i.lag, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52768) #7, !srcloc !19
  %i.lah = shl i32 %.0.copyload.i52768, 6
  %i.lai = add i32 %i.lah, %.0.copyload.i52767    ; 7 uses
  %.val48070 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.laj = getelementptr inbounds nuw i8, ptr %.val48070, i64 %i.hel
  %.0.copyload.i52769 = load i32, ptr %i.laj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52769) #7, !srcloc !19
  %.not45962 = icmp eq i32 %.0.copyload.i52769, 0
  br i1 %.not45962, label %.loopexit54641, label %bb.asi

bb.asi:                                           ; preds = %.loopexit54643
  %.not45963 = icmp eq i32 %.0.copyload.i52768, 0
  br i1 %.not45963, label %.loopexit54641, label %.preheader54640

.preheader54640:                                  ; preds = %bb.asi, %bb.asj
  %.9144342 = phi i32 [ %i.lam, %bb.asj ], [ %.0.copyload.i52767, %bb.asi ] ; 3 uses
  %i.lak = zext i32 %.9144342 to i64
  %.val48069 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lal = getelementptr inbounds nuw i8, ptr %.val48069, i64 %i.lak
  %.0.copyload.i52770 = load i32, ptr %i.lal, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52770) #7, !srcloc !19
  switch i32 %.0.copyload.i52770, label %.loopexit54641 [
    i32 -8, label %bb.asj
    i32 -4, label %bb.asj
  ]

bb.asj:                                           ; preds = %.preheader54640, %.preheader54640
  %i.lam = add i32 %.9144342, 64                  ; 2 uses
  %.not45964 = icmp eq i32 %i.lam, %i.lai
  br i1 %.not45964, label %.loopexit54641, label %.preheader54640

.loopexit54641:                                   ; preds = %bb.asj, %.preheader54640, %bb.asi, %.loopexit54643
  %.9244343 = phi i32 [ %.0.copyload.i52767, %bb.asi ], [ %i.lai, %.loopexit54643 ], [ %i.lai, %bb.asj ], [ %.9144342, %.preheader54640 ] ; 2 uses
  %.2844025 = phi i32 [ 0, %bb.asi ], [ %.0.copyload.i52768, %.loopexit54643 ], [ %.0.copyload.i52768, %.preheader54640 ], [ %.0.copyload.i52768, %bb.asj ]
  %i.lan = shl i32 %.2844025, 6
  %i.lao = add i32 %i.lan, %.0.copyload.i52767    ; 2 uses
  %.not45965 = icmp eq i32 %i.lao, %.9244343
  br i1 %.not45965, label %.loopexit54639, label %.preheader54638

.preheader54638:                                  ; preds = %.loopexit54641, %.loopexit54585
  %.9344344 = phi i32 [ %.9444345, %.loopexit54585 ], [ %.9244343, %.loopexit54641 ] ; 3 uses
  %i.lap = zext i32 %.9344344 to i64              ; 10 uses
  %i.laq = add nuw nsw i64 %i.lap, 12             ; 2 uses
  %.val48068 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lar = getelementptr inbounds nuw i8, ptr %.val48068, i64 %i.laq
  %.0.copyload.i52771 = load i32, ptr %i.lar, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52771) #7, !srcloc !19
  %i.las = add nuw nsw i64 %i.lap, 36             ; 2 uses
  %.val48067 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lat = getelementptr inbounds nuw i8, ptr %.val48067, i64 %i.las
  %.0.copyload.i52772 = load i32, ptr %i.lat, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52772) #7, !srcloc !19
  %i.lau = icmp ugt i32 %.0.copyload.i52771, %.0.copyload.i52772
  br i1 %i.lau, label %bb.ask, label %bb.asl

bb.ask:                                           ; preds = %.preheader54638
  %i.lav = add i32 %.9344344, 28
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.lav, i32 noundef %.0.copyload.i52771, i32 noundef 0) #7
  %.val48066 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.law = getelementptr inbounds nuw i8, ptr %.val48066, i64 %i.laq
  %.0.copyload.i52773 = load i32, ptr %i.law, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52773) #7, !srcloc !19
  br label %bb.asl

bb.asl:                                           ; preds = %.preheader54638, %bb.ask
  %.1843147 = phi i32 [ %.0.copyload.i52773, %bb.ask ], [ %.0.copyload.i52771, %.preheader54638 ]
  %i.lax = add i32 %.1843147, 31                  ; 2 uses
  %i.lay = icmp ult i32 %i.lax, 32
  br i1 %i.lay, label %.loopexit54587, label %bb.asm

bb.asm:                                           ; preds = %bb.asl
  %i.laz = lshr i32 %i.lax, 5                     ; 3 uses
  %i.lba = and i32 %i.laz, 3                      ; 2 uses
  %.val48065 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lbb = getelementptr inbounds nuw i8, ptr %.val48065, i64 %i.lap
  %i.lbc = getelementptr inbounds nuw i8, ptr %i.lbb, i64 28
  %.0.copyload.i52774 = load i32, ptr %i.lbc, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52774) #7, !srcloc !19
  %.val48064 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lbd = getelementptr inbounds nuw i8, ptr %.val48064, i64 %i.lap
  %i.lbe = getelementptr inbounds nuw i8, ptr %i.lbd, i64 4
  %.0.copyload.i52775 = load i32, ptr %i.lbe, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52775) #7, !srcloc !19
  %i.lbf = add nsw i32 %i.laz, -4
  %i.lbg = icmp ult i32 %i.lbf, -3
  br i1 %i.lbg, label %bb.asn, label %.loopexit54588

bb.asn:                                           ; preds = %bb.asm
  %i.lbh = and i32 %i.laz, 134217724              ; 2 uses
  br label %bb.aso

bb.aso:                                           ; preds = %bb.aso, %bb.asn
  %indvars.iv55656 = phi i64 [ %indvars.iv.next55657, %bb.aso ], [ 0, %bb.asn ] ; 2 uses
  %i.lbi = trunc nuw i64 %indvars.iv55656 to i32
  %i.lbj = shl i32 %i.lbi, 2                      ; 5 uses
  %i.lbk = add i32 %i.lbj, %.0.copyload.i52774
  %i.lbl = zext i32 %i.lbk to i64                 ; 2 uses
  %.val48063 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lbm = getelementptr inbounds nuw i8, ptr %.val48063, i64 %i.lbl
  %.0.copyload.i52776 = load i32, ptr %i.lbm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52776) #7, !srcloc !19
  %i.lbn = add i32 %i.lbj, %.0.copyload.i52775
  %i.lbo = zext i32 %i.lbn to i64
  %.val48062 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lbp = getelementptr inbounds nuw i8, ptr %.val48062, i64 %i.lbo
  %.0.copyload.i52777 = load i32, ptr %i.lbp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52777) #7, !srcloc !19
  %i.lbq = or i32 %.0.copyload.i52777, %.0.copyload.i52776
  %.val49820 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lbr = getelementptr inbounds nuw i8, ptr %.val49820, i64 %i.lbl
  store i32 %i.lbq, ptr %i.lbr, align 1
  %i.lbs = or disjoint i32 %i.lbj, 4              ; 2 uses
  %i.lbt = add i32 %i.lbs, %.0.copyload.i52774
  %i.lbu = zext i32 %i.lbt to i64                 ; 2 uses
  %.val48061 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lbv = getelementptr inbounds nuw i8, ptr %.val48061, i64 %i.lbu
  %.0.copyload.i52778 = load i32, ptr %i.lbv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52778) #7, !srcloc !19
  %i.lbw = add i32 %i.lbs, %.0.copyload.i52775
  %i.lbx = zext i32 %i.lbw to i64
  %.val48060 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lby = getelementptr inbounds nuw i8, ptr %.val48060, i64 %i.lbx
  %.0.copyload.i52779 = load i32, ptr %i.lby, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52779) #7, !srcloc !19
  %i.lbz = or i32 %.0.copyload.i52779, %.0.copyload.i52778
  %.val49819 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lca = getelementptr inbounds nuw i8, ptr %.val49819, i64 %i.lbu
  store i32 %i.lbz, ptr %i.lca, align 1
  %i.lcb = or disjoint i32 %i.lbj, 8              ; 2 uses
  %i.lcc = add i32 %i.lcb, %.0.copyload.i52774
  %i.lcd = zext i32 %i.lcc to i64                 ; 2 uses
  %.val48059 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lce = getelementptr inbounds nuw i8, ptr %.val48059, i64 %i.lcd
  %.0.copyload.i52780 = load i32, ptr %i.lce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52780) #7, !srcloc !19
  %i.lcf = add i32 %i.lcb, %.0.copyload.i52775
  %i.lcg = zext i32 %i.lcf to i64
  %.val48058 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lch = getelementptr inbounds nuw i8, ptr %.val48058, i64 %i.lcg
  %.0.copyload.i52781 = load i32, ptr %i.lch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52781) #7, !srcloc !19
  %i.lci = or i32 %.0.copyload.i52781, %.0.copyload.i52780
  %.val49818 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lcj = getelementptr inbounds nuw i8, ptr %.val49818, i64 %i.lcd
  store i32 %i.lci, ptr %i.lcj, align 1
  %i.lck = or disjoint i32 %i.lbj, 12             ; 2 uses
  %i.lcl = add i32 %i.lck, %.0.copyload.i52774
  %i.lcm = zext i32 %i.lcl to i64                 ; 2 uses
  %.val48057 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lcn = getelementptr inbounds nuw i8, ptr %.val48057, i64 %i.lcm
  %.0.copyload.i52782 = load i32, ptr %i.lcn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52782) #7, !srcloc !19
  %i.lco = add i32 %i.lck, %.0.copyload.i52775
  %i.lcp = zext i32 %i.lco to i64
  %.val48056 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lcq = getelementptr inbounds nuw i8, ptr %.val48056, i64 %i.lcp
  %.0.copyload.i52783 = load i32, ptr %i.lcq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52783) #7, !srcloc !19
  %i.lcr = or i32 %.0.copyload.i52783, %.0.copyload.i52782
  %.val49817 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lcs = getelementptr inbounds nuw i8, ptr %.val49817, i64 %i.lcm
  store i32 %i.lcr, ptr %i.lcs, align 1
  %indvars.iv.next55657 = add nuw nsw i64 %indvars.iv55656, 4 ; 2 uses
  %indvars55659 = trunc i64 %indvars.iv.next55657 to i32
  %.not45966 = icmp eq i32 %i.lbh, %indvars55659
  br i1 %.not45966, label %.loopexit54588.loopexit, label %bb.aso

.loopexit54588.loopexit:                          ; preds = %bb.aso
  %i.lct = zext nneg i32 %i.lbh to i64
  br label %.loopexit54588

.loopexit54588:                                   ; preds = %.loopexit54588.loopexit, %bb.asm
  %.3044027 = phi i64 [ 0, %bb.asm ], [ %i.lct, %.loopexit54588.loopexit ]
  %.not45967 = icmp eq i32 %i.lba, 0
  br i1 %.not45967, label %.loopexit54587, label %.preheader54586

.preheader54586:                                  ; preds = %.loopexit54588, %.preheader54586
  %indvars.iv55661 = phi i64 [ %indvars.iv.next55662, %.preheader54586 ], [ %.3044027, %.loopexit54588 ] ; 2 uses
  %.343677 = phi i32 [ %i.ldd, %.preheader54586 ], [ 0, %.loopexit54588 ]
  %indvars.iv55661.tr = trunc i64 %indvars.iv55661 to i32
  %i.lcu = shl i32 %indvars.iv55661.tr, 2         ; 2 uses
  %i.lcv = add i32 %i.lcu, %.0.copyload.i52774
  %i.lcw = zext i32 %i.lcv to i64                 ; 2 uses
  %.val48055 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lcx = getelementptr inbounds nuw i8, ptr %.val48055, i64 %i.lcw
  %.0.copyload.i52784 = load i32, ptr %i.lcx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52784) #7, !srcloc !19
  %i.lcy = add i32 %i.lcu, %.0.copyload.i52775
  %i.lcz = zext i32 %i.lcy to i64
  %.val48054 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lda = getelementptr inbounds nuw i8, ptr %.val48054, i64 %i.lcz
  %.0.copyload.i52785 = load i32, ptr %i.lda, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52785) #7, !srcloc !19
  %i.ldb = or i32 %.0.copyload.i52785, %.0.copyload.i52784
  %.val49816 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ldc = getelementptr inbounds nuw i8, ptr %.val49816, i64 %i.lcw
  store i32 %i.ldb, ptr %i.ldc, align 1
  %indvars.iv.next55662 = add nuw nsw i64 %indvars.iv55661, 1
  %i.ldd = add nuw nsw i32 %.343677, 1            ; 2 uses
  %.not45968 = icmp eq i32 %i.ldd, %i.lba
  br i1 %.not45968, label %.loopexit54587, label %.preheader54586

.loopexit54587:                                   ; preds = %.preheader54586, %.loopexit54588, %bb.asl
  %.val48053 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lde = getelementptr inbounds nuw i8, ptr %.val48053, i64 %i.lap
  %i.ldf = getelementptr inbounds nuw i8, ptr %i.lde, i64 24
  %.0.copyload.i52786 = load i32, ptr %i.ldf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52786) #7, !srcloc !19
  %i.ldg = add i32 %.0.copyload.i52786, 31
  %i.ldh = lshr i32 %i.ldg, 5
  %.val48052 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ldi = getelementptr inbounds nuw i8, ptr %.val48052, i64 %i.las
  %.0.copyload.i52787 = load i32, ptr %i.ldi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52787) #7, !srcloc !19
  %i.ldj = add i32 %.0.copyload.i52787, 31
  %i.ldk = lshr i32 %i.ldj, 5                     ; 2 uses
  %i.ldl = tail call i32 @llvm.umin.i32(i32 %i.ldh, i32 %i.ldk) ; 4 uses
  %.not45969 = icmp eq i32 %i.ldl, 0
  br i1 %.not45969, label %bb.ast, label %bb.asp

bb.asp:                                           ; preds = %.loopexit54587
  %.val48051 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ldm = getelementptr inbounds nuw i8, ptr %.val48051, i64 %i.lap
  %i.ldn = getelementptr inbounds nuw i8, ptr %i.ldm, i64 16
  %.0.copyload.i52788 = load i32, ptr %i.ldn, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52788) #7, !srcloc !19
  %.val48050 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ldo = getelementptr inbounds nuw i8, ptr %.val48050, i64 %i.lap
  %i.ldp = getelementptr inbounds nuw i8, ptr %i.ldo, i64 28
  %.0.copyload.i52789 = load i32, ptr %i.ldp, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52789) #7, !srcloc !19
  %.not45970 = icmp eq i32 %i.ldl, 1
  br i1 %.not45970, label %.thread, label %bb.asq

bb.asq:                                           ; preds = %bb.asp
  %i.ldq = and i32 %i.ldl, 134217726              ; 2 uses
  br label %bb.asr

bb.asr:                                           ; preds = %bb.asr, %bb.asq
  %indvars.iv55664 = phi i64 [ %indvars.iv.next55665, %bb.asr ], [ 0, %bb.asq ] ; 2 uses
  %i.ldr = trunc nuw i64 %indvars.iv55664 to i32
  %i.lds = shl i32 %i.ldr, 2                      ; 3 uses
  %i.ldt = add i32 %i.lds, %.0.copyload.i52789
  %i.ldu = zext i32 %i.ldt to i64                 ; 2 uses
  %.val48049 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ldv = getelementptr inbounds nuw i8, ptr %.val48049, i64 %i.ldu
  %.0.copyload.i52790 = load i32, ptr %i.ldv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52790) #7, !srcloc !19
  %i.ldw = add i32 %i.lds, %.0.copyload.i52788
  %i.ldx = zext i32 %i.ldw to i64
  %.val48048 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ldy = getelementptr inbounds nuw i8, ptr %.val48048, i64 %i.ldx
  %.0.copyload.i52791 = load i32, ptr %i.ldy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52791) #7, !srcloc !19
  %i.ldz = xor i32 %.0.copyload.i52791, -1
  %i.lea = and i32 %.0.copyload.i52790, %i.ldz
  %.val49815 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.leb = getelementptr inbounds nuw i8, ptr %.val49815, i64 %i.ldu
  store i32 %i.lea, ptr %i.leb, align 1
  %i.lec = or disjoint i32 %i.lds, 4              ; 2 uses
  %i.led = add i32 %i.lec, %.0.copyload.i52789
  %i.lee = zext i32 %i.led to i64                 ; 2 uses
  %.val48047 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lef = getelementptr inbounds nuw i8, ptr %.val48047, i64 %i.lee
  %.0.copyload.i52792 = load i32, ptr %i.lef, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52792) #7, !srcloc !19
  %i.leg = add i32 %i.lec, %.0.copyload.i52788
  %i.leh = zext i32 %i.leg to i64
  %.val48046 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lei = getelementptr inbounds nuw i8, ptr %.val48046, i64 %i.leh
  %.0.copyload.i52793 = load i32, ptr %i.lei, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52793) #7, !srcloc !19
  %i.lej = xor i32 %.0.copyload.i52793, -1
  %i.lek = and i32 %.0.copyload.i52792, %i.lej
  %.val49814 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lel = getelementptr inbounds nuw i8, ptr %.val49814, i64 %i.lee
  store i32 %i.lek, ptr %i.lel, align 1
  %indvars.iv.next55665 = add nuw nsw i64 %indvars.iv55664, 2 ; 2 uses
  %indvars55667 = trunc i64 %indvars.iv.next55665 to i32
  %.not45971 = icmp eq i32 %i.ldq, %indvars55667
  br i1 %.not45971, label %bb.ass, label %bb.asr

bb.ass:                                           ; preds = %bb.asr
  %i.lem = and i32 %i.ldl, 1
  %.not45972 = icmp eq i32 %i.lem, 0
  br i1 %.not45972, label %bb.ast, label %.thread

.thread:                                          ; preds = %bb.asp, %bb.ass
  %.334403054185 = phi i32 [ %i.ldq, %bb.ass ], [ 0, %bb.asp ]
  %i.len = shl nuw nsw i32 %.334403054185, 2      ; 2 uses
  %i.leo = add i32 %i.len, %.0.copyload.i52789
  %i.lep = zext i32 %i.leo to i64                 ; 2 uses
  %.val48045 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.leq = getelementptr inbounds nuw i8, ptr %.val48045, i64 %i.lep
  %.0.copyload.i52794 = load i32, ptr %i.leq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52794) #7, !srcloc !19
  %i.ler = add i32 %i.len, %.0.copyload.i52788
  %i.les = zext i32 %i.ler to i64
  %.val48044 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.let = getelementptr inbounds nuw i8, ptr %.val48044, i64 %i.les
  %.0.copyload.i52795 = load i32, ptr %i.let, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52795) #7, !srcloc !19
  %i.leu = xor i32 %.0.copyload.i52795, -1
  %i.lev = and i32 %.0.copyload.i52794, %i.leu
  %.val49813 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lew = getelementptr inbounds nuw i8, ptr %.val49813, i64 %i.lep
  store i32 %i.lev, ptr %i.lew, align 1
  br label %bb.ast

bb.ast:                                           ; preds = %bb.ass, %.loopexit54587, %.thread
  %.val48043 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lex = getelementptr inbounds nuw i8, ptr %.val48043, i64 %i.lap
  %i.ley = getelementptr inbounds nuw i8, ptr %i.lex, i64 60
  %.0.copyload.i52796 = load i32, ptr %i.ley, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52796) #7, !srcloc !19
  %i.lez = add i32 %.0.copyload.i52796, 31
  %i.lfa = lshr i32 %i.lez, 5
  %i.lfb = tail call i32 @llvm.umin.i32(i32 %i.lfa, i32 %i.ldk) ; 4 uses
  %.not45973 = icmp eq i32 %i.lfb, 0
  br i1 %.not45973, label %bb.asy, label %bb.asu

bb.asu:                                           ; preds = %bb.ast
  %.val48042 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfc = getelementptr inbounds nuw i8, ptr %.val48042, i64 %i.lap
  %i.lfd = getelementptr inbounds nuw i8, ptr %i.lfc, i64 52
  %.0.copyload.i52797 = load i32, ptr %i.lfd, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52797) #7, !srcloc !19
  %.val48041 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfe = getelementptr inbounds nuw i8, ptr %.val48041, i64 %i.lap
  %i.lff = getelementptr inbounds nuw i8, ptr %i.lfe, i64 28
  %.0.copyload.i52798 = load i32, ptr %i.lff, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52798) #7, !srcloc !19
  %.not45974 = icmp eq i32 %i.lfb, 1
  br i1 %.not45974, label %.thread54186, label %bb.asv

bb.asv:                                           ; preds = %bb.asu
  %i.lfg = and i32 %i.lfb, 134217726              ; 2 uses
  br label %bb.asw

bb.asw:                                           ; preds = %bb.asw, %bb.asv
  %indvars.iv55669 = phi i64 [ %indvars.iv.next55670, %bb.asw ], [ 0, %bb.asv ] ; 2 uses
  %i.lfh = trunc nuw i64 %indvars.iv55669 to i32
  %i.lfi = shl i32 %i.lfh, 2                      ; 3 uses
  %i.lfj = add i32 %i.lfi, %.0.copyload.i52798
  %i.lfk = zext i32 %i.lfj to i64                 ; 2 uses
  %.val48040 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfl = getelementptr inbounds nuw i8, ptr %.val48040, i64 %i.lfk
  %.0.copyload.i52799 = load i32, ptr %i.lfl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52799) #7, !srcloc !19
  %i.lfm = add i32 %i.lfi, %.0.copyload.i52797
  %i.lfn = zext i32 %i.lfm to i64
  %.val48039 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfo = getelementptr inbounds nuw i8, ptr %.val48039, i64 %i.lfn
  %.0.copyload.i52800 = load i32, ptr %i.lfo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52800) #7, !srcloc !19
  %i.lfp = xor i32 %.0.copyload.i52800, -1
  %i.lfq = and i32 %.0.copyload.i52799, %i.lfp
  %.val49812 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfr = getelementptr inbounds nuw i8, ptr %.val49812, i64 %i.lfk
  store i32 %i.lfq, ptr %i.lfr, align 1
  %i.lfs = or disjoint i32 %i.lfi, 4              ; 2 uses
  %i.lft = add i32 %i.lfs, %.0.copyload.i52798
  %i.lfu = zext i32 %i.lft to i64                 ; 2 uses
  %.val48038 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfv = getelementptr inbounds nuw i8, ptr %.val48038, i64 %i.lfu
  %.0.copyload.i52801 = load i32, ptr %i.lfv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52801) #7, !srcloc !19
  %i.lfw = add i32 %i.lfs, %.0.copyload.i52797
  %i.lfx = zext i32 %i.lfw to i64
  %.val48037 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lfy = getelementptr inbounds nuw i8, ptr %.val48037, i64 %i.lfx
  %.0.copyload.i52802 = load i32, ptr %i.lfy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52802) #7, !srcloc !19
  %i.lfz = xor i32 %.0.copyload.i52802, -1
  %i.lga = and i32 %.0.copyload.i52801, %i.lfz
  %.val49811 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lgb = getelementptr inbounds nuw i8, ptr %.val49811, i64 %i.lfu
  store i32 %i.lga, ptr %i.lgb, align 1
  %indvars.iv.next55670 = add nuw nsw i64 %indvars.iv55669, 2 ; 2 uses
  %indvars55672 = trunc i64 %indvars.iv.next55670 to i32
  %.not45975 = icmp eq i32 %i.lfg, %indvars55672
end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
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
  %.pre-phi55802 = phi i64 [ %i.lsz, %bb.aul ], [ %i.lod, %bb.atw ], [ %i.loq, %bb.aty ] ; 4 uses
  %.val48001 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltr = getelementptr inbounds nuw i8, ptr %.val48001, i64 %i.lnn
  %.0.copyload.i52840 = load i32, ptr %i.ltr, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52840) #7, !srcloc !19
  %i.lts = add i32 %.0.copyload.i52840, 31
  %i.ltt = lshr i32 %i.lts, 5                     ; 2 uses
  %i.ltu = add nuw nsw i64 %.pre-phi55802, 36     ; 2 uses
  %.val48000 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltv = getelementptr inbounds nuw i8, ptr %.val48000, i64 %i.ltu
  %.0.copyload.i52841 = load i32, ptr %i.ltv, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52841) #7, !srcloc !19
  %i.ltw = add i32 %.0.copyload.i52841, 31        ; 2 uses
  %i.ltx = lshr i32 %i.ltw, 5                     ; 9 uses
  %i.lty = tail call i32 @llvm.umin.i32(i32 %i.ltt, i32 %i.ltx) ; 3 uses
  %.not46010 = icmp eq i32 %i.lty, 0
  br i1 %.not46010, label %.loopexit54363, label %bb.aum

bb.aum:                                           ; preds = %.loopexit54370
  %.val47999 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ltz = getelementptr inbounds nuw i8, ptr %.val47999, i64 %i.lnm
  %i.lua = getelementptr inbounds nuw i8, ptr %i.ltz, i64 40
  %.0.copyload.i52842 = load i32, ptr %i.lua, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52842) #7, !srcloc !19
  %.val47998 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lub = getelementptr inbounds nuw i8, ptr %.val47998, i64 %.pre-phi55802
  %i.luc = getelementptr inbounds nuw i8, ptr %i.lub, i64 28
  %.0.copyload.i52843 = load i32, ptr %i.luc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52843) #7, !srcloc !19
  %i.lud = zext nneg i32 %i.lty to i64
  br label %bb.aun

bb.aun:                                           ; preds = %bb.auo, %bb.aum
  %indvars.iv55674 = phi i64 [ %indvars.iv.next55675, %bb.auo ], [ 0, %bb.aum ] ; 2 uses
  %indvars.iv55674.tr = trunc i64 %indvars.iv55674 to i32
  %i.lue = shl i32 %indvars.iv55674.tr, 2         ; 2 uses
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
  %i.lun = getelementptr inbounds nuw i8, ptr %.val47995, i64 %.pre-phi55802
  %i.luo = getelementptr inbounds nuw i8, ptr %i.lun, i64 28
  %.0.copyload.i52846 = load i32, ptr %i.luo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52846) #7, !srcloc !19
  br label %bb.auq

bb.auq:                                           ; preds = %bb.aur, %bb.aup
  %.4144137 = phi i32 [ %i.lty, %bb.aup ], [ %i.lut, %bb.aur ] ; 2 uses
  %i.lup = shl i32 %.4144137, 2
  %i.luq = add i32 %i.lup, %.0.copyload.i52846
  %i.lur = zext i32 %i.luq to i64
  %.val47994 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lus = getelementptr inbounds nuw i8, ptr %.val47994, i64 %i.lur
  %.0.copyload.i52847 = load i32, ptr %i.lus, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52847) #7, !srcloc !19
  %.not46014 = icmp eq i32 %.0.copyload.i52847, 0
  br i1 %.not46014, label %bb.aur, label %.loopexit54361

bb.aur:                                           ; preds = %bb.auq
  %i.lut = add i32 %.4144137, 1                   ; 2 uses
  %.not46015 = icmp eq i32 %i.ltx, %i.lut
  br i1 %.not46015, label %.loopexit54361, label %bb.auq

.loopexit54361:                                   ; preds = %bb.aun, %bb.auq, %bb.aur, %.loopexit54363
  %.343196 = phi i32 [ %.243195, %bb.aur ], [ %.243195, %.loopexit54363 ], [ 1, %bb.auq ], [ 1, %bb.aun ] ; 2 uses
  %.not46016 = icmp ult i32 %.0.copyload.i52840, %.0.copyload.i52841
  br i1 %.not46016, label %bb.aus, label %bb.avm

bb.aus:                                           ; preds = %.loopexit54361
  %.val47993 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.luu = getelementptr inbounds nuw i8, ptr %.val47993, i64 %i.lno
  %.0.copyload.i52848 = load i32, ptr %i.luu, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52848) #7, !srcloc !19
  %i.luv = shl i32 %.0.copyload.i52848, 5
  %.not46017 = icmp ult i32 %i.luv, %.0.copyload.i52841
  br i1 %.not46017, label %bb.aut, label %bb.avb

bb.aut:                                           ; preds = %bb.aus
  %.val47992 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.luw = getelementptr inbounds nuw i8, ptr %.val47992, i64 %i.lnp
  %.0.copyload.i52849 = load i32, ptr %i.luw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52849) #7, !srcloc !19
  %i.lux = shl i32 %.0.copyload.i52848, 1
  %i.luy = tail call i32 @llvm.umax.i32(i32 %i.lux, i32 %i.ltx) ; 6 uses
  %i.luz = shl i32 %i.luy, 2
  %i.lva = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52849, i32 noundef %i.luz) #7 ; 4 uses
  %.not46018 = icmp eq i32 %i.lva, 0
  br i1 %.not46018, label %bb.auu, label %bb.auv

bb.auu:                                           ; preds = %bb.aut
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.auv

bb.auv:                                           ; preds = %bb.auu, %bb.aut
  %.val49779 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvb = getelementptr inbounds nuw i8, ptr %.val49779, i64 %i.lno
  store i32 %i.luy, ptr %i.lvb, align 1
  %.val49778 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvc = getelementptr inbounds nuw i8, ptr %.val49778, i64 %i.lnp
  store i32 %i.lva, ptr %i.lvc, align 1
  %.val47991 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvd = getelementptr inbounds nuw i8, ptr %.val47991, i64 %i.lnn
  %.0.copyload.i52850 = load i32, ptr %i.lvd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52850) #7, !srcloc !19
  %i.lve = add i32 %.0.copyload.i52850, 31
  %i.lvf = lshr i32 %i.lve, 5                     ; 4 uses
  %i.lvg = icmp ult i32 %i.lvf, %i.luy
  br i1 %i.lvg, label %bb.auw, label %bb.aux

bb.auw:                                           ; preds = %bb.auv
  %i.lvh = shl nuw nsw i32 %i.lvf, 2
  %i.lvi = add i32 %i.lvh, %i.lva
  %i.lvj = sub nuw i32 %i.luy, %i.lvf
  %i.lvk = shl i32 %i.lvj, 2
  %i.lvl = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lvi, i32 noundef 0, i32 noundef %i.lvk) #7 ; 0 uses
  br label %bb.aux

bb.aux:                                           ; preds = %bb.auw, %bb.auv
  %i.lvm = and i32 %.0.copyload.i52850, 31        ; 2 uses
  %.not46019 = icmp eq i32 %i.lvm, 0
  br i1 %.not46019, label %bb.auz, label %bb.auy

bb.auy:                                           ; preds = %bb.aux
  %i.lvn = shl nuw nsw i32 %i.lvf, 2
  %i.lvo = add i32 %i.lva, -4
  %i.lvp = add i32 %i.lvo, %i.lvn
  %i.lvq = zext i32 %i.lvp to i64                 ; 2 uses
  %.val47990 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvr = getelementptr inbounds nuw i8, ptr %.val47990, i64 %i.lvq
  %.0.copyload.i52851 = load i32, ptr %i.lvr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52851) #7, !srcloc !19
  %i.lvs = shl nsw i32 -1, %i.lvm
  %i.lvt = xor i32 %i.lvs, -1
  %i.lvu = and i32 %.0.copyload.i52851, %i.lvt
  %.val49777 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvv = getelementptr inbounds nuw i8, ptr %.val49777, i64 %i.lvq
  store i32 %i.lvu, ptr %i.lvv, align 1
  br label %bb.auz

bb.auz:                                           ; preds = %bb.auy, %bb.aux
  %i.lvw = icmp eq i32 %.0.copyload.i52848, %i.luy
  br i1 %i.lvw, label %bb.avb, label %bb.ava

bb.ava:                                           ; preds = %bb.auz
  %.val47989 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lvx = getelementptr inbounds nuw i8, ptr %.val47989, i64 %i.lnp
  %.0.copyload.i52852 = load i32, ptr %i.lvx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52852) #7, !srcloc !19
  %i.lvy = shl i32 %.0.copyload.i52848, 2
  %i.lvz = add i32 %.0.copyload.i52852, %i.lvy
  %i.lwa = sub i32 %i.luy, %.0.copyload.i52848
  %i.lwb = shl i32 %i.lwa, 2
  %i.lwc = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lvz, i32 noundef 0, i32 noundef %i.lwb) #7 ; 0 uses
  br label %bb.avb

bb.avb:                                           ; preds = %bb.auz, %bb.aus, %bb.ava
  %.val47988 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwd = getelementptr inbounds nuw i8, ptr %.val47988, i64 %i.lnn
  %.0.copyload.i52853 = load i32, ptr %i.lwd, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52853) #7, !srcloc !19
  %.not46020 = icmp ult i32 %.0.copyload.i52853, %.0.copyload.i52841
  br i1 %.not46020, label %bb.avc, label %bb.avg

bb.avc:                                           ; preds = %bb.avb
  %.val47987 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwe = getelementptr inbounds nuw i8, ptr %.val47987, i64 %i.lno
  %.0.copyload.i52854 = load i32, ptr %i.lwe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52854) #7, !srcloc !19
  %i.lwf = add i32 %.0.copyload.i52853, 31
  %i.lwg = lshr i32 %i.lwf, 5                     ; 4 uses
  %i.lwh = icmp ugt i32 %.0.copyload.i52854, %i.lwg
  br i1 %i.lwh, label %bb.avd, label %bb.ave

bb.avd:                                           ; preds = %bb.avc
  %.val47986 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwi = getelementptr inbounds nuw i8, ptr %.val47986, i64 %i.lnm
  %i.lwj = getelementptr inbounds nuw i8, ptr %i.lwi, i64 40
  %.0.copyload.i52855 = load i32, ptr %i.lwj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52855) #7, !srcloc !19
  %i.lwk = shl nuw nsw i32 %i.lwg, 2
  %i.lwl = add i32 %.0.copyload.i52855, %i.lwk
  %i.lwm = sub nuw i32 %.0.copyload.i52854, %i.lwg
  %i.lwn = shl i32 %i.lwm, 2
  %i.lwo = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lwl, i32 noundef 0, i32 noundef %i.lwn) #7 ; 0 uses
  %.val47985 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwp = getelementptr inbounds nuw i8, ptr %.val47985, i64 %i.lnn
  %.0.copyload.i52856 = load i32, ptr %i.lwp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52856) #7, !srcloc !19
  br label %bb.ave

bb.ave:                                           ; preds = %bb.avd, %bb.avc
  %.4044037 = phi i32 [ %.0.copyload.i52856, %bb.avd ], [ %.0.copyload.i52853, %bb.avc ] ; 3 uses
  %i.lwq = and i32 %.4044037, 31                  ; 2 uses
  %.not46021 = icmp eq i32 %i.lwq, 0
  br i1 %.not46021, label %bb.avg, label %bb.avf

bb.avf:                                           ; preds = %bb.ave
  %.val47984 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwr = getelementptr inbounds nuw i8, ptr %.val47984, i64 %i.lnm
  %i.lws = getelementptr inbounds nuw i8, ptr %i.lwr, i64 40
  %.0.copyload.i52857 = load i32, ptr %i.lws, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52857) #7, !srcloc !19
  %i.lwt = shl nuw nsw i32 %i.lwg, 2
  %i.lwu = add nsw i32 %i.lwt, -4
  %i.lwv = add i32 %i.lwu, %.0.copyload.i52857
  %i.lww = zext i32 %i.lwv to i64                 ; 2 uses
  %.val47983 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lwx = getelementptr inbounds nuw i8, ptr %.val47983, i64 %i.lww
  %.0.copyload.i52858 = load i32, ptr %i.lwx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52858) #7, !srcloc !19
  %i.lwy = shl nsw i32 -1, %i.lwq
  %i.lwz = xor i32 %i.lwy, -1
  %i.lxa = and i32 %.0.copyload.i52858, %i.lwz
  %.val49776 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxb = getelementptr inbounds nuw i8, ptr %.val49776, i64 %i.lww
  store i32 %i.lxa, ptr %i.lxb, align 1
  br label %bb.avg

bb.avg:                                           ; preds = %bb.ave, %bb.avb, %bb.avf
  %.4144038 = phi i32 [ %.0.copyload.i52853, %bb.avb ], [ %.4044037, %bb.ave ], [ %.4044037, %bb.avf ]
  %.val49775 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxc = getelementptr inbounds nuw i8, ptr %.val49775, i64 %i.lnn
  store i32 %.0.copyload.i52841, ptr %i.lxc, align 1
  %.not46022 = icmp ugt i32 %.4144038, %.0.copyload.i52841
  br i1 %.not46022, label %bb.avh, label %bb.avl

bb.avh:                                           ; preds = %bb.avg
  %.val47982 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxd = getelementptr inbounds nuw i8, ptr %.val47982, i64 %i.lno
  %.0.copyload.i52859 = load i32, ptr %i.lxd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52859) #7, !srcloc !19
  %i.lxe = icmp ult i32 %i.ltx, %.0.copyload.i52859
  br i1 %i.lxe, label %bb.avi, label %bb.avj

bb.avi:                                           ; preds = %bb.avh
  %.val47981 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxf = getelementptr inbounds nuw i8, ptr %.val47981, i64 %i.lnm
  %i.lxg = getelementptr inbounds nuw i8, ptr %i.lxf, i64 40
  %.0.copyload.i52860 = load i32, ptr %i.lxg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52860) #7, !srcloc !19
  %i.lxh = shl nuw nsw i32 %i.ltx, 2
  %i.lxi = add i32 %.0.copyload.i52860, %i.lxh
  %i.lxj = sub nuw i32 %.0.copyload.i52859, %i.ltx
  %i.lxk = shl i32 %i.lxj, 2
  %i.lxl = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.lxi, i32 noundef 0, i32 noundef %i.lxk) #7 ; 0 uses
  %.val47980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxm = getelementptr inbounds nuw i8, ptr %.val47980, i64 %i.lnn
  %.0.copyload.i52861 = load i32, ptr %i.lxm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52861) #7, !srcloc !19
  br label %bb.avj

bb.avj:                                           ; preds = %bb.avi, %bb.avh
  %.116 = phi i32 [ %.0.copyload.i52861, %bb.avi ], [ %.0.copyload.i52841, %bb.avh ] ; 3 uses
  %i.lxn = and i32 %.116, 31                      ; 2 uses
  %.not46023 = icmp eq i32 %i.lxn, 0
  br i1 %.not46023, label %bb.avl, label %bb.avk

bb.avk:                                           ; preds = %bb.avj
  %.val47979 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxo = getelementptr inbounds nuw i8, ptr %.val47979, i64 %i.lnm
  %i.lxp = getelementptr inbounds nuw i8, ptr %i.lxo, i64 40
  %.0.copyload.i52862 = load i32, ptr %i.lxp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52862) #7, !srcloc !19
  %i.lxq = shl nuw nsw i32 %i.ltx, 2
  %i.lxr = add nsw i32 %i.lxq, -4
  %i.lxs = add i32 %i.lxr, %.0.copyload.i52862
  %i.lxt = zext i32 %i.lxs to i64                 ; 2 uses
  %.val47978 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxu = getelementptr inbounds nuw i8, ptr %.val47978, i64 %i.lxt
  %.0.copyload.i52863 = load i32, ptr %i.lxu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52863) #7, !srcloc !19
  %i.lxv = shl nsw i32 -1, %i.lxn
  %i.lxw = xor i32 %i.lxv, -1
  %i.lxx = and i32 %.0.copyload.i52863, %i.lxw
  %.val49774 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxy = getelementptr inbounds nuw i8, ptr %.val49774, i64 %i.lxt
  store i32 %i.lxx, ptr %i.lxy, align 1
  br label %bb.avl

bb.avl:                                           ; preds = %bb.avj, %bb.avg, %bb.avk
  %.117 = phi i32 [ %.0.copyload.i52841, %bb.avg ], [ %.116, %bb.avj ], [ %.116, %bb.avk ]
  %.val47977 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lxz = getelementptr inbounds nuw i8, ptr %.val47977, i64 %i.ltu
  %.0.copyload.i52864 = load i32, ptr %i.lxz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52864) #7, !srcloc !19
  %i.lya = add i32 %.0.copyload.i52864, 31        ; 2 uses
  %i.lyb = lshr i32 %i.lya, 5
  br label %bb.avm

bb.avm:                                           ; preds = %.loopexit54361, %bb.avl
  %.118 = phi i32 [ %.117, %bb.avl ], [ %.0.copyload.i52840, %.loopexit54361 ]
  %.343450 = phi i32 [ %i.lya, %bb.avl ], [ %i.ltw, %.loopexit54361 ]
  %.1943392 = phi i32 [ %i.lyb, %bb.avl ], [ %i.ltx, %.loopexit54361 ] ; 3 uses
  %i.lyc = icmp ult i32 %.343450, 32
  br i1 %i.lyc, label %.loopexit54359, label %bb.avn

bb.avn:                                           ; preds = %bb.avm
  %.val47976 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lyd = getelementptr inbounds nuw i8, ptr %.val47976, i64 %i.lnm
  %i.lye = getelementptr inbounds nuw i8, ptr %i.lyd, i64 40
  %.0.copyload.i52865 = load i32, ptr %i.lye, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52865) #7, !srcloc !19
  %.val47975 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lyf = getelementptr inbounds nuw i8, ptr %.val47975, i64 %.pre-phi55802
  %i.lyg = getelementptr inbounds nuw i8, ptr %i.lyf, i64 28
  %.0.copyload.i52866 = load i32, ptr %i.lyg, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52866) #7, !srcloc !19
  %i.lyh = add nsw i32 %.1943392, -4
  %i.lyi = icmp ult i32 %i.lyh, -3
  br i1 %i.lyi, label %bb.avo, label %.loopexit54360

bb.avo:                                           ; preds = %bb.avn
  %i.lyj = and i32 %.1943392, 134217724           ; 2 uses
  br label %bb.avp

bb.avp:                                           ; preds = %bb.avp, %bb.avo
  %indvars.iv55677 = phi i64 [ %indvars.iv.next55678, %bb.avp ], [ 0, %bb.avo ] ; 2 uses
  %i.lyk = trunc nuw i64 %indvars.iv55677 to i32
  %i.lyl = shl i32 %i.lyk, 2                      ; 5 uses
  %i.lym = add i32 %i.lyl, %.0.copyload.i52865
  %i.lyn = zext i32 %i.lym to i64                 ; 2 uses
  %.val47974 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lyo = getelementptr inbounds nuw i8, ptr %.val47974, i64 %i.lyn
  %.0.copyload.i52867 = load i32, ptr %i.lyo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52867) #7, !srcloc !19
  %i.lyp = add i32 %i.lyl, %.0.copyload.i52866
  %i.lyq = zext i32 %i.lyp to i64
  %.val47973 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lyr = getelementptr inbounds nuw i8, ptr %.val47973, i64 %i.lyq
  %.0.copyload.i52868 = load i32, ptr %i.lyr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52868) #7, !srcloc !19
  %i.lys = or i32 %.0.copyload.i52868, %.0.copyload.i52867
  %.val49773 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lyt = getelementptr inbounds nuw i8, ptr %.val49773, i64 %i.lyn
  store i32 %i.lys, ptr %i.lyt, align 1
  %i.lyu = or disjoint i32 %i.lyl, 4              ; 2 uses
  %i.lyv = add i32 %i.lyu, %.0.copyload.i52865
  %i.lyw = zext i32 %i.lyv to i64                 ; 2 uses
  %.val47972 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lyx = getelementptr inbounds nuw i8, ptr %.val47972, i64 %i.lyw
  %.0.copyload.i52869 = load i32, ptr %i.lyx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52869) #7, !srcloc !19
  %i.lyy = add i32 %i.lyu, %.0.copyload.i52866
  %i.lyz = zext i32 %i.lyy to i64
  %.val47971 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lza = getelementptr inbounds nuw i8, ptr %.val47971, i64 %i.lyz
  %.0.copyload.i52870 = load i32, ptr %i.lza, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52870) #7, !srcloc !19
  %i.lzb = or i32 %.0.copyload.i52870, %.0.copyload.i52869
  %.val49772 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lzc = getelementptr inbounds nuw i8, ptr %.val49772, i64 %i.lyw
  store i32 %i.lzb, ptr %i.lzc, align 1
  %i.lzd = or disjoint i32 %i.lyl, 8              ; 2 uses
  %i.lze = add i32 %i.lzd, %.0.copyload.i52865
  %i.lzf = zext i32 %i.lze to i64                 ; 2 uses
  %.val47970 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lzg = getelementptr inbounds nuw i8, ptr %.val47970, i64 %i.lzf
  %.0.copyload.i52871 = load i32, ptr %i.lzg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52871) #7, !srcloc !19
  %i.lzh = add i32 %i.lzd, %.0.copyload.i52866
  %i.lzi = zext i32 %i.lzh to i64
  %.val47969 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lzj = getelementptr inbounds nuw i8, ptr %.val47969, i64 %i.lzi
  %.0.copyload.i52872 = load i32, ptr %i.lzj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52872) #7, !srcloc !19
  %i.lzk = or i32 %.0.copyload.i52872, %.0.copyload.i52871
  %.val49771 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lzl = getelementptr inbounds nuw i8, ptr %.val49771, i64 %i.lzf
  store i32 %i.lzk, ptr %i.lzl, align 1
  %i.lzm = or disjoint i32 %i.lyl, 12             ; 2 uses
  %i.lzn = add i32 %i.lzm, %.0.copyload.i52865
  %i.lzo = zext i32 %i.lzn to i64                 ; 2 uses
  %.val47968 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lzp = getelementptr inbounds nuw i8, ptr %.val47968, i64 %i.lzo
  %.0.copyload.i52873 = load i32, ptr %i.lzp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52873) #7, !srcloc !19
  %i.lzq = add i32 %i.lzm, %.0.copyload.i52866
  %i.lzr = zext i32 %i.lzq to i64
  %.val47967 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lzs = getelementptr inbounds nuw i8, ptr %.val47967, i64 %i.lzr
  %.0.copyload.i52874 = load i32, ptr %i.lzs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52874) #7, !srcloc !19
  %i.lzt = or i32 %.0.copyload.i52874, %.0.copyload.i52873
  %.val49770 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lzu = getelementptr inbounds nuw i8, ptr %.val49770, i64 %i.lzo
  store i32 %i.lzt, ptr %i.lzu, align 1
  %indvars.iv.next55678 = add nuw nsw i64 %indvars.iv55677, 4 ; 2 uses
  %indvars55680 = trunc i64 %indvars.iv.next55678 to i32
  %.not46024 = icmp eq i32 %i.lyj, %indvars55680
  br i1 %.not46024, label %.loopexit54360.loopexit, label %bb.avp

.loopexit54360.loopexit:                          ; preds = %bb.avp
  %i.lzv = zext nneg i32 %i.lyj to i64
  br label %.loopexit54360

.loopexit54360:                                   ; preds = %.loopexit54360.loopexit, %bb.avn
  %.4344040 = phi i64 [ 0, %bb.avn ], [ %i.lzv, %.loopexit54360.loopexit ]
  %i.lzw = and i32 %.1943392, 3                   ; 2 uses
  %.not46025 = icmp eq i32 %i.lzw, 0
  br i1 %.not46025, label %.loopexit54359, label %.preheader54358

.preheader54358:                                  ; preds = %.loopexit54360, %.preheader54358
  %indvars.iv55682 = phi i64 [ %indvars.iv.next55683, %.preheader54358 ], [ %.4344040, %.loopexit54360 ] ; 2 uses
  %.10144352 = phi i32 [ %i.mag, %.preheader54358 ], [ 0, %.loopexit54360 ]
  %indvars.iv55682.tr = trunc i64 %indvars.iv55682 to i32
  %i.lzx = shl i32 %indvars.iv55682.tr, 2         ; 2 uses
  %i.lzy = add i32 %i.lzx, %.0.copyload.i52865
  %i.lzz = zext i32 %i.lzy to i64                 ; 2 uses
  %.val47966 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.maa = getelementptr inbounds nuw i8, ptr %.val47966, i64 %i.lzz
  %.0.copyload.i52875 = load i32, ptr %i.maa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52875) #7, !srcloc !19
  %i.mab = add i32 %i.lzx, %.0.copyload.i52866
  %i.mac = zext i32 %i.mab to i64
  %.val47965 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mad = getelementptr inbounds nuw i8, ptr %.val47965, i64 %i.mac
  %.0.copyload.i52876 = load i32, ptr %i.mad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52876) #7, !srcloc !19
  %i.mae = or i32 %.0.copyload.i52876, %.0.copyload.i52875
  %.val49769 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.maf = getelementptr inbounds nuw i8, ptr %.val49769, i64 %i.lzz
  store i32 %i.mae, ptr %i.maf, align 1
  %indvars.iv.next55683 = add nuw nsw i64 %indvars.iv55682, 1
  %i.mag = add nuw nsw i32 %.10144352, 1          ; 2 uses
  %.not46026 = icmp eq i32 %i.mag, %i.lzw
  br i1 %.not46026, label %.loopexit54359, label %.preheader54358

.loopexit54359:                                   ; preds = %.preheader54358, %.loopexit54360, %bb.avm
  %i.mah = add i32 %.543247, 1                    ; 2 uses
  %.not46027 = icmp eq i32 %i.mah, %.0.i
  br i1 %.not46027, label %.loopexit54522, label %bb.atv

.loopexit54522:                                   ; preds = %.loopexit54359, %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread
  %.pre-phi55801 = phi i64 [ %i.lnq, %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread ], [ %i.lnm, %.loopexit54359 ] ; 22 uses
  %.119 = phi i32 [ %.0.copyload.i52825, %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread ], [ %.118, %.loopexit54359 ] ; 4 uses
  %.443197 = phi i32 [ %.143194, %w2c_hermes_hermes0x3A0x3ATerminatorInst0x3A0x3AgetNumSuccessors0x280x290x20const.exit.thread ], [ %.343196, %.loopexit54359 ] ; 2 uses
  %i.mai = add nuw nsw i64 %.pre-phi55801, 36     ; 9 uses
  %.val49768 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.maj = getelementptr inbounds nuw i8, ptr %.val49768, i64 %i.mai
  store i32 %.119, ptr %i.maj, align 1
  %i.mak = add i32 %.119, 31
  %i.mal = lshr i32 %i.mak, 5                     ; 3 uses
  %i.mam = add nuw nsw i64 %.pre-phi55801, 32     ; 7 uses
  %.val47964 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.man = getelementptr inbounds nuw i8, ptr %.val47964, i64 %i.mam
  %.0.copyload.i52877 = load i32, ptr %i.man, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52877) #7, !srcloc !19
  %i.mao = shl i32 %.0.copyload.i52877, 5
  %.not46028 = icmp ult i32 %i.mao, %.119
  br i1 %.not46028, label %bb.avw, label %bb.avq

bb.avq:                                           ; preds = %.loopexit54522
  %.not46030 = icmp eq i32 %.119, 0
  br i1 %.not46030, label %bb.avs, label %bb.avr

bb.avr:                                           ; preds = %bb.avq
  %.val47963 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.map = getelementptr inbounds nuw i8, ptr %.val47963, i64 %.pre-phi55801
  %i.maq = getelementptr inbounds nuw i8, ptr %i.map, i64 28
  %.0.copyload.i52878 = load i32, ptr %i.maq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52878) #7, !srcloc !19
  %.val47962 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mar = getelementptr inbounds nuw i8, ptr %.val47962, i64 %.pre-phi55801
  %i.mas = getelementptr inbounds nuw i8, ptr %i.mar, i64 40
  %.0.copyload.i52879 = load i32, ptr %i.mas, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52879) #7, !srcloc !19
  %i.mat = shl nuw nsw i32 %i.mal, 2
  %i.mau = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52878, i32 noundef %.0.copyload.i52879, i32 noundef %i.mat) #7 ; 0 uses
  %.val47961 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mav = getelementptr inbounds nuw i8, ptr %.val47961, i64 %i.mam
  %.0.copyload.i52880 = load i32, ptr %i.mav, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52880) #7, !srcloc !19
  %.val47960 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.maw = getelementptr inbounds nuw i8, ptr %.val47960, i64 %i.mai
  %.0.copyload.i52881 = load i32, ptr %i.maw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52881) #7, !srcloc !19
  br label %bb.avs

bb.avs:                                           ; preds = %bb.avq, %bb.avr
  %.4244138 = phi i32 [ %.0.copyload.i52880, %bb.avr ], [ %.0.copyload.i52877, %bb.avq ] ; 2 uses
  %.2143150 = phi i32 [ %.0.copyload.i52881, %bb.avr ], [ 0, %bb.avq ] ; 2 uses
  %i.max = add i32 %.2143150, 31
  %i.may = lshr i32 %i.max, 5                     ; 4 uses
  %i.maz = icmp ult i32 %i.may, %.4244138
  br i1 %i.maz, label %bb.avt, label %bb.avu

bb.avt:                                           ; preds = %bb.avs
  %.val47959 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mba = getelementptr inbounds nuw i8, ptr %.val47959, i64 %.pre-phi55801
  %i.mbb = getelementptr inbounds nuw i8, ptr %i.mba, i64 28
  %.0.copyload.i52882 = load i32, ptr %i.mbb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52882) #7, !srcloc !19
  %i.mbc = shl nuw nsw i32 %i.may, 2
  %i.mbd = add i32 %.0.copyload.i52882, %i.mbc
  %i.mbe = sub nuw i32 %.4244138, %i.may
  %i.mbf = shl i32 %i.mbe, 2
  %i.mbg = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.mbd, i32 noundef 0, i32 noundef %i.mbf) #7 ; 0 uses
  %.val47958 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mbh = getelementptr inbounds nuw i8, ptr %.val47958, i64 %i.mai
  %.0.copyload.i52883 = load i32, ptr %i.mbh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52883) #7, !srcloc !19
  br label %bb.avu

bb.avu:                                           ; preds = %bb.avt, %bb.avs
  %.120 = phi i32 [ %.0.copyload.i52883, %bb.avt ], [ %.2143150, %bb.avs ] ; 3 uses
  %i.mbi = and i32 %.120, 31                      ; 2 uses
  %.not46031 = icmp eq i32 %i.mbi, 0
  br i1 %.not46031, label %bb.avz, label %bb.avv

bb.avv:                                           ; preds = %bb.avu
  %.val47957 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mbj = getelementptr inbounds nuw i8, ptr %.val47957, i64 %.pre-phi55801
  %i.mbk = getelementptr inbounds nuw i8, ptr %i.mbj, i64 28
  %.0.copyload.i52884 = load i32, ptr %i.mbk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52884) #7, !srcloc !19
  %i.mbl = shl nuw nsw i32 %i.may, 2
  %i.mbm = add nsw i32 %i.mbl, -4
  %i.mbn = add i32 %i.mbm, %.0.copyload.i52884
  %i.mbo = zext i32 %i.mbn to i64                 ; 2 uses
  %.val47956 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mbp = getelementptr inbounds nuw i8, ptr %.val47956, i64 %i.mbo
  %.0.copyload.i52885 = load i32, ptr %i.mbp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52885) #7, !srcloc !19
  %i.mbq = shl nsw i32 -1, %i.mbi
  %i.mbr = xor i32 %i.mbq, -1
  %i.mbs = and i32 %.0.copyload.i52885, %i.mbr
  %.val49767 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mbt = getelementptr inbounds nuw i8, ptr %.val49767, i64 %i.mbo
  store i32 %i.mbs, ptr %i.mbt, align 1
  br label %bb.avz

bb.avw:                                           ; preds = %.loopexit54522
  %i.mbu = shl nuw nsw i32 %i.mal, 2              ; 2 uses
  %i.mbv = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef %i.mbu) #7 ; 2 uses
  %.not46029 = icmp eq i32 %i.mbv, 0
  br i1 %.not46029, label %bb.avx, label %bb.avy

bb.avx:                                           ; preds = %bb.avw
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.avy

bb.avy:                                           ; preds = %bb.avx, %bb.avw
  %.val47955 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mbw = getelementptr inbounds nuw i8, ptr %.val47955, i64 %.pre-phi55801
  %i.mbx = getelementptr inbounds nuw i8, ptr %i.mbw, i64 40
  %.0.copyload.i52886 = load i32, ptr %i.mbx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52886) #7, !srcloc !19
  %i.mby = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.mbv, i32 noundef %.0.copyload.i52886, i32 noundef %i.mbu) #7
  %i.mbz = add nuw nsw i64 %.pre-phi55801, 28     ; 2 uses
  %.val47954 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mca = getelementptr inbounds nuw i8, ptr %.val47954, i64 %i.mbz
  %.0.copyload.i52887 = load i32, ptr %i.mca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52887) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52887) #7
  %.val49766 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mcb = getelementptr inbounds nuw i8, ptr %.val49766, i64 %i.mam
  store i32 %i.mal, ptr %i.mcb, align 1
  %.val49765 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mcc = getelementptr inbounds nuw i8, ptr %.val49765, i64 %i.mbz
  store i32 %i.mby, ptr %i.mcc, align 1
  %.val47953 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mcd = getelementptr inbounds nuw i8, ptr %.val47953, i64 %i.mai
  %.0.copyload.i52888 = load i32, ptr %i.mcd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52888) #7, !srcloc !19
  br label %bb.avz

bb.avz:                                           ; preds = %bb.avu, %bb.avy, %bb.avv
  %.121 = phi i32 [ %.120, %bb.avu ], [ %.120, %bb.avv ], [ %.0.copyload.i52888, %bb.avy ] ; 2 uses
  %i.mce = add nuw nsw i64 %.pre-phi55801, 12     ; 2 uses
  %.val47952 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mcf = getelementptr inbounds nuw i8, ptr %.val47952, i64 %i.mce
  %.0.copyload.i52889 = load i32, ptr %i.mcf, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52889) #7, !srcloc !19
  %i.mcg = icmp ugt i32 %.0.copyload.i52889, %.121
  br i1 %i.mcg, label %bb.awa, label %bb.awu

bb.awa:                                           ; preds = %bb.avz
  %.val47951 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mch = getelementptr inbounds nuw i8, ptr %.val47951, i64 %i.mam
  %.0.copyload.i52890 = load i32, ptr %i.mch, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52890) #7, !srcloc !19
  %i.mci = shl i32 %.0.copyload.i52890, 5
  %.not46032 = icmp ult i32 %i.mci, %.0.copyload.i52889
  br i1 %.not46032, label %bb.awb, label %bb.awj

bb.awb:                                           ; preds = %bb.awa
  %i.mcj = add nuw nsw i64 %.pre-phi55801, 28     ; 3 uses
  %.val47950 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mck = getelementptr inbounds nuw i8, ptr %.val47950, i64 %i.mcj
  %.0.copyload.i52891 = load i32, ptr %i.mck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52891) #7, !srcloc !19
  %i.mcl = add i32 %.0.copyload.i52889, 31
  %i.mcm = lshr i32 %i.mcl, 5
  %i.mcn = shl i32 %.0.copyload.i52890, 1
  %i.mco = tail call i32 @llvm.umax.i32(i32 %i.mcn, i32 %i.mcm) ; 6 uses
  %i.mcp = shl i32 %i.mco, 2
  %i.mcq = tail call i32 @w2c_hermes_dlrealloc(ptr noundef nonnull %0, i32 noundef %.0.copyload.i52891, i32 noundef %i.mcp) #7 ; 4 uses
  %.not46033 = icmp eq i32 %i.mcq, 0
  br i1 %.not46033, label %bb.awc, label %bb.awd

bb.awc:                                           ; preds = %bb.awb
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812) #7
  br label %bb.awd

bb.awd:                                           ; preds = %bb.awc, %bb.awb
  %.val49764 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %i.mem = zext i32 %i.mel to i64                 ; 2 uses
  %.val47941 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.men = getelementptr inbounds nuw i8, ptr %.val47941, i64 %i.mem
  %.0.copyload.i52900 = load i32, ptr %i.men, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52900) #7, !srcloc !19
  %i.meo = shl nsw i32 -1, %i.meg
  %i.mep = xor i32 %i.meo, -1
  %i.meq = and i32 %.0.copyload.i52900, %i.mep
  %.val49761 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mer = getelementptr inbounds nuw i8, ptr %.val49761, i64 %i.mem
  store i32 %i.meq, ptr %i.mer, align 1
  br label %bb.awo

bb.awo:                                           ; preds = %bb.awm, %bb.awj, %bb.awn
  %.4444140 = phi i32 [ %.0.copyload.i52895, %bb.awj ], [ %.4344139, %bb.awm ], [ %.4344139, %bb.awn ]
  %.val49760 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mes = getelementptr inbounds nuw i8, ptr %.val49760, i64 %i.mai
  store i32 %.0.copyload.i52889, ptr %i.mes, align 1
  %.not46037 = icmp ugt i32 %.4444140, %.0.copyload.i52889
  br i1 %.not46037, label %bb.awp, label %bb.awt

bb.awp:                                           ; preds = %bb.awo
  %.val47940 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.met = getelementptr inbounds nuw i8, ptr %.val47940, i64 %i.mam
  %.0.copyload.i52901 = load i32, ptr %i.met, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52901) #7, !srcloc !19
  %i.meu = add i32 %.0.copyload.i52889, 31
  %i.mev = lshr i32 %i.meu, 5                     ; 4 uses
  %i.mew = icmp ugt i32 %.0.copyload.i52901, %i.mev
  br i1 %i.mew, label %bb.awq, label %bb.awr

bb.awq:                                           ; preds = %bb.awp
  %.val47939 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mex = getelementptr inbounds nuw i8, ptr %.val47939, i64 %.pre-phi55801
  %i.mey = getelementptr inbounds nuw i8, ptr %i.mex, i64 28
  %.0.copyload.i52902 = load i32, ptr %i.mey, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52902) #7, !srcloc !19
  %i.mez = shl nuw nsw i32 %i.mev, 2
  %i.mfa = add i32 %.0.copyload.i52902, %i.mez
  %i.mfb = sub nuw i32 %.0.copyload.i52901, %i.mev
  %i.mfc = shl i32 %i.mfb, 2
  %i.mfd = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.mfa, i32 noundef 0, i32 noundef %i.mfc) #7 ; 0 uses
  %.val47938 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mfe = getelementptr inbounds nuw i8, ptr %.val47938, i64 %i.mai
  %.0.copyload.i52903 = load i32, ptr %i.mfe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52903) #7, !srcloc !19
  br label %bb.awr

bb.awr:                                           ; preds = %bb.awq, %bb.awp
  %.4544042 = phi i32 [ %.0.copyload.i52903, %bb.awq ], [ %.0.copyload.i52889, %bb.awp ] ; 3 uses
  %i.mff = and i32 %.4544042, 31                  ; 2 uses
  %.not46038 = icmp eq i32 %i.mff, 0
  br i1 %.not46038, label %bb.awt, label %bb.aws

bb.aws:                                           ; preds = %bb.awr
  %.val47937 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mfg = getelementptr inbounds nuw i8, ptr %.val47937, i64 %.pre-phi55801
  %i.mfh = getelementptr inbounds nuw i8, ptr %i.mfg, i64 28
  %.0.copyload.i52904 = load i32, ptr %i.mfh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52904) #7, !srcloc !19
  %i.mfi = shl nuw nsw i32 %i.mev, 2
  %i.mfj = add nsw i32 %i.mfi, -4
  %i.mfk = add i32 %i.mfj, %.0.copyload.i52904
  %i.mfl = zext i32 %i.mfk to i64                 ; 2 uses
  %.val47936 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mfm = getelementptr inbounds nuw i8, ptr %.val47936, i64 %i.mfl
  %.0.copyload.i52905 = load i32, ptr %i.mfm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52905) #7, !srcloc !19
  %i.mfn = shl nsw i32 -1, %i.mff
  %i.mfo = xor i32 %i.mfn, -1
  %i.mfp = and i32 %.0.copyload.i52905, %i.mfo
  %.val49759 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mfq = getelementptr inbounds nuw i8, ptr %.val49759, i64 %i.mfl
  store i32 %i.mfp, ptr %i.mfq, align 1
  br label %bb.awt

bb.awt:                                           ; preds = %bb.awr, %bb.awo, %bb.aws
  %.4644043 = phi i32 [ %.0.copyload.i52889, %bb.awo ], [ %.4544042, %bb.awr ], [ %.4544042, %bb.aws ]
  %.val47935 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mfr = getelementptr inbounds nuw i8, ptr %.val47935, i64 %i.mce
  %.0.copyload.i52906 = load i32, ptr %i.mfr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52906) #7, !srcloc !19
  br label %bb.awu

bb.awu:                                           ; preds = %bb.avz, %bb.awt
  %.122 = phi i32 [ %.4644043, %bb.awt ], [ %.121, %bb.avz ]
  %.2243151 = phi i32 [ %.0.copyload.i52906, %bb.awt ], [ %.0.copyload.i52889, %bb.avz ]
  %i.mfs = add i32 %.2243151, 31                  ; 2 uses
  %i.mft = icmp ult i32 %i.mfs, 32
  br i1 %i.mft, label %.loopexit54520, label %bb.awv

bb.awv:                                           ; preds = %bb.awu
  %i.mfu = lshr i32 %i.mfs, 5                     ; 3 uses
  %i.mfv = and i32 %i.mfu, 3                      ; 2 uses
  %.val47934 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mfw = getelementptr inbounds nuw i8, ptr %.val47934, i64 %.pre-phi55801
  %i.mfx = getelementptr inbounds nuw i8, ptr %i.mfw, i64 28
  %.0.copyload.i52907 = load i32, ptr %i.mfx, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52907) #7, !srcloc !19
  %.val47933 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mfy = getelementptr inbounds nuw i8, ptr %.val47933, i64 %.pre-phi55801
  %i.mfz = getelementptr inbounds nuw i8, ptr %i.mfy, i64 4
  %.0.copyload.i52908 = load i32, ptr %i.mfz, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52908) #7, !srcloc !19
  %i.mga = add nsw i32 %i.mfu, -4
  %i.mgb = icmp ult i32 %i.mga, -3
  br i1 %i.mgb, label %bb.aww, label %.loopexit54521

bb.aww:                                           ; preds = %bb.awv
  %i.mgc = and i32 %i.mfu, 134217724              ; 2 uses
  br label %bb.awx

bb.awx:                                           ; preds = %bb.awx, %bb.aww
  %indvars.iv55685 = phi i64 [ %indvars.iv.next55686, %bb.awx ], [ 0, %bb.aww ] ; 2 uses
  %i.mgd = trunc nuw i64 %indvars.iv55685 to i32
  %i.mge = shl i32 %i.mgd, 2                      ; 5 uses
  %i.mgf = add i32 %i.mge, %.0.copyload.i52907
  %i.mgg = zext i32 %i.mgf to i64                 ; 2 uses
  %.val47932 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mgh = getelementptr inbounds nuw i8, ptr %.val47932, i64 %i.mgg
  %.0.copyload.i52909 = load i32, ptr %i.mgh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52909) #7, !srcloc !19
  %i.mgi = add i32 %i.mge, %.0.copyload.i52908
  %i.mgj = zext i32 %i.mgi to i64
  %.val47931 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mgk = getelementptr inbounds nuw i8, ptr %.val47931, i64 %i.mgj
  %.0.copyload.i52910 = load i32, ptr %i.mgk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52910) #7, !srcloc !19
  %i.mgl = or i32 %.0.copyload.i52910, %.0.copyload.i52909
  %.val49758 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mgm = getelementptr inbounds nuw i8, ptr %.val49758, i64 %i.mgg
  store i32 %i.mgl, ptr %i.mgm, align 1
  %i.mgn = or disjoint i32 %i.mge, 4              ; 2 uses
  %i.mgo = add i32 %i.mgn, %.0.copyload.i52907
  %i.mgp = zext i32 %i.mgo to i64                 ; 2 uses
  %.val47930 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mgq = getelementptr inbounds nuw i8, ptr %.val47930, i64 %i.mgp
  %.0.copyload.i52911 = load i32, ptr %i.mgq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52911) #7, !srcloc !19
  %i.mgr = add i32 %i.mgn, %.0.copyload.i52908
  %i.mgs = zext i32 %i.mgr to i64
  %.val47929 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mgt = getelementptr inbounds nuw i8, ptr %.val47929, i64 %i.mgs
  %.0.copyload.i52912 = load i32, ptr %i.mgt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52912) #7, !srcloc !19
  %i.mgu = or i32 %.0.copyload.i52912, %.0.copyload.i52911
  %.val49757 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mgv = getelementptr inbounds nuw i8, ptr %.val49757, i64 %i.mgp
  store i32 %i.mgu, ptr %i.mgv, align 1
  %i.mgw = or disjoint i32 %i.mge, 8              ; 2 uses
  %i.mgx = add i32 %i.mgw, %.0.copyload.i52907
  %i.mgy = zext i32 %i.mgx to i64                 ; 2 uses
  %.val47928 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mgz = getelementptr inbounds nuw i8, ptr %.val47928, i64 %i.mgy
  %.0.copyload.i52913 = load i32, ptr %i.mgz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52913) #7, !srcloc !19
  %i.mha = add i32 %i.mgw, %.0.copyload.i52908
  %i.mhb = zext i32 %i.mha to i64
  %.val47927 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mhc = getelementptr inbounds nuw i8, ptr %.val47927, i64 %i.mhb
  %.0.copyload.i52914 = load i32, ptr %i.mhc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52914) #7, !srcloc !19
  %i.mhd = or i32 %.0.copyload.i52914, %.0.copyload.i52913
  %.val49756 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mhe = getelementptr inbounds nuw i8, ptr %.val49756, i64 %i.mgy
  store i32 %i.mhd, ptr %i.mhe, align 1
  %i.mhf = or disjoint i32 %i.mge, 12             ; 2 uses
  %i.mhg = add i32 %i.mhf, %.0.copyload.i52907
  %i.mhh = zext i32 %i.mhg to i64                 ; 2 uses
  %.val47926 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mhi = getelementptr inbounds nuw i8, ptr %.val47926, i64 %i.mhh
  %.0.copyload.i52915 = load i32, ptr %i.mhi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52915) #7, !srcloc !19
  %i.mhj = add i32 %i.mhf, %.0.copyload.i52908
  %i.mhk = zext i32 %i.mhj to i64
  %.val47925 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mhl = getelementptr inbounds nuw i8, ptr %.val47925, i64 %i.mhk
  %.0.copyload.i52916 = load i32, ptr %i.mhl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52916) #7, !srcloc !19
  %i.mhm = or i32 %.0.copyload.i52916, %.0.copyload.i52915
  %.val49755 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mhn = getelementptr inbounds nuw i8, ptr %.val49755, i64 %i.mhh
  store i32 %i.mhm, ptr %i.mhn, align 1
  %indvars.iv.next55686 = add nuw nsw i64 %indvars.iv55685, 4 ; 2 uses
  %indvars55688 = trunc i64 %indvars.iv.next55686 to i32
  %.not46039 = icmp eq i32 %i.mgc, %indvars55688
  br i1 %.not46039, label %.loopexit54521.loopexit, label %bb.awx

.loopexit54521.loopexit:                          ; preds = %bb.awx
  %i.mho = zext nneg i32 %i.mgc to i64
  br label %.loopexit54521

.loopexit54521:                                   ; preds = %.loopexit54521.loopexit, %bb.awv
  %.4844045 = phi i64 [ 0, %bb.awv ], [ %i.mho, %.loopexit54521.loopexit ]
  %.not46040 = icmp eq i32 %i.mfv, 0
  br i1 %.not46040, label %.loopexit54520, label %.preheader54519

.preheader54519:                                  ; preds = %.loopexit54521, %.preheader54519
  %indvars.iv55690 = phi i64 [ %indvars.iv.next55691, %.preheader54519 ], [ %.4844045, %.loopexit54521 ] ; 2 uses
  %.10244353 = phi i32 [ %i.mhy, %.preheader54519 ], [ 0, %.loopexit54521 ]
  %indvars.iv55690.tr = trunc i64 %indvars.iv55690 to i32
  %i.mhp = shl i32 %indvars.iv55690.tr, 2         ; 2 uses
  %i.mhq = add i32 %i.mhp, %.0.copyload.i52907
  %i.mhr = zext i32 %i.mhq to i64                 ; 2 uses
  %.val47924 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mhs = getelementptr inbounds nuw i8, ptr %.val47924, i64 %i.mhr
  %.0.copyload.i52917 = load i32, ptr %i.mhs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52917) #7, !srcloc !19
  %i.mht = add i32 %i.mhp, %.0.copyload.i52908
  %i.mhu = zext i32 %i.mht to i64
  %.val47923 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mhv = getelementptr inbounds nuw i8, ptr %.val47923, i64 %i.mhu
  %.0.copyload.i52918 = load i32, ptr %i.mhv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52918) #7, !srcloc !19
  %i.mhw = or i32 %.0.copyload.i52918, %.0.copyload.i52917
  %.val49754 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mhx = getelementptr inbounds nuw i8, ptr %.val49754, i64 %i.mhr
  store i32 %i.mhw, ptr %i.mhx, align 1
  %indvars.iv.next55691 = add nuw nsw i64 %indvars.iv55690, 1
  %i.mhy = add nuw nsw i32 %.10244353, 1          ; 2 uses
  %.not46041 = icmp eq i32 %i.mhy, %i.mfv
  br i1 %.not46041, label %.loopexit54520, label %.preheader54519

.loopexit54520:                                   ; preds = %.preheader54519, %.loopexit54521, %bb.awu
  %.val47922 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mhz = getelementptr inbounds nuw i8, ptr %.val47922, i64 %.pre-phi55801
  %i.mia = getelementptr inbounds nuw i8, ptr %i.mhz, i64 24
  %.0.copyload.i52919 = load i32, ptr %i.mia, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52919) #7, !srcloc !19
  %i.mib = add i32 %.0.copyload.i52919, 31
  %i.mic = lshr i32 %i.mib, 5
  %i.mid = add i32 %.122, 31
  %i.mie = lshr i32 %i.mid, 5                     ; 2 uses
  %i.mif = tail call i32 @llvm.umin.i32(i32 %i.mic, i32 %i.mie) ; 4 uses
  %.not46042 = icmp eq i32 %i.mif, 0
  br i1 %.not46042, label %bb.axc, label %bb.awy

bb.awy:                                           ; preds = %.loopexit54520
  %.val47921 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mig = getelementptr inbounds nuw i8, ptr %.val47921, i64 %.pre-phi55801
  %i.mih = getelementptr inbounds nuw i8, ptr %i.mig, i64 16
  %.0.copyload.i52920 = load i32, ptr %i.mih, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52920) #7, !srcloc !19
  %.val47920 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mii = getelementptr inbounds nuw i8, ptr %.val47920, i64 %.pre-phi55801
  %i.mij = getelementptr inbounds nuw i8, ptr %i.mii, i64 28
  %.0.copyload.i52921 = load i32, ptr %i.mij, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52921) #7, !srcloc !19
  %.not46043 = icmp eq i32 %i.mif, 1
  br i1 %.not46043, label %.thread54192, label %bb.awz

bb.awz:                                           ; preds = %bb.awy
  %i.mik = and i32 %i.mif, 134217726              ; 2 uses
  br label %bb.axa

bb.axa:                                           ; preds = %bb.axa, %bb.awz
  %indvars.iv55693 = phi i64 [ %indvars.iv.next55694, %bb.axa ], [ 0, %bb.awz ] ; 2 uses
  %i.mil = trunc nuw i64 %indvars.iv55693 to i32
  %i.mim = shl i32 %i.mil, 2                      ; 3 uses
  %i.min = add i32 %i.mim, %.0.copyload.i52921
  %i.mio = zext i32 %i.min to i64                 ; 2 uses
  %.val47919 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mip = getelementptr inbounds nuw i8, ptr %.val47919, i64 %i.mio
  %.0.copyload.i52922 = load i32, ptr %i.mip, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52922) #7, !srcloc !19
  %i.miq = add i32 %i.mim, %.0.copyload.i52920
  %i.mir = zext i32 %i.miq to i64
  %.val47918 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mis = getelementptr inbounds nuw i8, ptr %.val47918, i64 %i.mir
  %.0.copyload.i52923 = load i32, ptr %i.mis, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52923) #7, !srcloc !19
  %i.mit = xor i32 %.0.copyload.i52923, -1
  %i.miu = and i32 %.0.copyload.i52922, %i.mit
  %.val49753 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.miv = getelementptr inbounds nuw i8, ptr %.val49753, i64 %i.mio
  store i32 %i.miu, ptr %i.miv, align 1
  %i.miw = or disjoint i32 %i.mim, 4              ; 2 uses
  %i.mix = add i32 %i.miw, %.0.copyload.i52921
  %i.miy = zext i32 %i.mix to i64                 ; 2 uses
  %.val47917 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.miz = getelementptr inbounds nuw i8, ptr %.val47917, i64 %i.miy
  %.0.copyload.i52924 = load i32, ptr %i.miz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52924) #7, !srcloc !19
  %i.mja = add i32 %i.miw, %.0.copyload.i52920
  %i.mjb = zext i32 %i.mja to i64
  %.val47916 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mjc = getelementptr inbounds nuw i8, ptr %.val47916, i64 %i.mjb
  %.0.copyload.i52925 = load i32, ptr %i.mjc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52925) #7, !srcloc !19
  %i.mjd = xor i32 %.0.copyload.i52925, -1
  %i.mje = and i32 %.0.copyload.i52924, %i.mjd
  %.val49752 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mjf = getelementptr inbounds nuw i8, ptr %.val49752, i64 %i.miy
  store i32 %i.mje, ptr %i.mjf, align 1
  %indvars.iv.next55694 = add nuw nsw i64 %indvars.iv55693, 2 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next55694 to i32
  %.not46044 = icmp eq i32 %i.mik, %indvars
  br i1 %.not46044, label %bb.axb, label %bb.axa

bb.axb:                                           ; preds = %bb.axa
  %i.mjg = and i32 %i.mif, 1
  %.not46045 = icmp eq i32 %i.mjg, 0
  br i1 %.not46045, label %bb.axc, label %.thread54192

.thread54192:                                     ; preds = %bb.awy, %bb.axb
  %.514404854195 = phi i32 [ %i.mik, %bb.axb ], [ 0, %bb.awy ]
  %i.mjh = shl nuw nsw i32 %.514404854195, 2      ; 2 uses
  %i.mji = add i32 %i.mjh, %.0.copyload.i52921
  %i.mjj = zext i32 %i.mji to i64                 ; 2 uses
  %.val47915 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mjk = getelementptr inbounds nuw i8, ptr %.val47915, i64 %i.mjj
  %.0.copyload.i52926 = load i32, ptr %i.mjk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52926) #7, !srcloc !19
  %i.mjl = add i32 %i.mjh, %.0.copyload.i52920
  %i.mjm = zext i32 %i.mjl to i64
  %.val47914 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mjn = getelementptr inbounds nuw i8, ptr %.val47914, i64 %i.mjm
  %.0.copyload.i52927 = load i32, ptr %i.mjn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52927) #7, !srcloc !19
  %i.mjo = xor i32 %.0.copyload.i52927, -1
  %i.mjp = and i32 %.0.copyload.i52926, %i.mjo
  %.val49751 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mjq = getelementptr inbounds nuw i8, ptr %.val49751, i64 %i.mjj
  store i32 %i.mjp, ptr %i.mjq, align 1
  br label %bb.axc

bb.axc:                                           ; preds = %bb.axb, %.loopexit54520, %.thread54192
  %.val47913 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mjr = getelementptr inbounds nuw i8, ptr %.val47913, i64 %.pre-phi55801
  %i.mjs = getelementptr inbounds nuw i8, ptr %i.mjr, i64 60
  %.0.copyload.i52928 = load i32, ptr %i.mjs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52928) #7, !srcloc !19
  %i.mjt = add i32 %.0.copyload.i52928, 31
  %i.mju = lshr i32 %i.mjt, 5
  %i.mjv = tail call i32 @llvm.umin.i32(i32 %i.mju, i32 %i.mie) ; 4 uses
  %.not46046 = icmp eq i32 %i.mjv, 0
  br i1 %.not46046, label %bb.axh, label %bb.axd

bb.axd:                                           ; preds = %bb.axc
  %.val47912 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mjw = getelementptr inbounds nuw i8, ptr %.val47912, i64 %.pre-phi55801
  %i.mjx = getelementptr inbounds nuw i8, ptr %i.mjw, i64 52
  %.0.copyload.i52929 = load i32, ptr %i.mjx, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52929) #7, !srcloc !19
  %.val47911 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mjy = getelementptr inbounds nuw i8, ptr %.val47911, i64 %.pre-phi55801
  %i.mjz = getelementptr inbounds nuw i8, ptr %i.mjy, i64 28
  %.0.copyload.i52930 = load i32, ptr %i.mjz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52930) #7, !srcloc !19
  %.not46047 = icmp eq i32 %i.mjv, 1
  br i1 %.not46047, label %.thread54196, label %bb.axe

bb.axe:                                           ; preds = %bb.axd
  %i.mka = and i32 %i.mjv, 134217726              ; 2 uses
  br label %bb.axf

bb.axf:                                           ; preds = %bb.axf, %bb.axe
  %indvars.iv55698 = phi i64 [ %indvars.iv.next55699, %bb.axf ], [ 0, %bb.axe ] ; 2 uses
  %i.mkb = trunc nuw i64 %indvars.iv55698 to i32
  %i.mkc = shl i32 %i.mkb, 2                      ; 3 uses
  %i.mkd = add i32 %i.mkc, %.0.copyload.i52930
  %i.mke = zext i32 %i.mkd to i64                 ; 2 uses
  %.val47910 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mkf = getelementptr inbounds nuw i8, ptr %.val47910, i64 %i.mke
  %.0.copyload.i52931 = load i32, ptr %i.mkf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52931) #7, !srcloc !19
  %i.mkg = add i32 %i.mkc, %.0.copyload.i52929
  %i.mkh = zext i32 %i.mkg to i64
  %.val47909 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mki = getelementptr inbounds nuw i8, ptr %.val47909, i64 %i.mkh
  %.0.copyload.i52932 = load i32, ptr %i.mki, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52932) #7, !srcloc !19
  %i.mkj = xor i32 %.0.copyload.i52932, -1
  %i.mkk = and i32 %.0.copyload.i52931, %i.mkj
  %.val49750 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mkl = getelementptr inbounds nuw i8, ptr %.val49750, i64 %i.mke
  store i32 %i.mkk, ptr %i.mkl, align 1
  %i.mkm = or disjoint i32 %i.mkc, 4              ; 2 uses
  %i.mkn = add i32 %i.mkm, %.0.copyload.i52930
  %i.mko = zext i32 %i.mkn to i64                 ; 2 uses
  %.val47908 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mkp = getelementptr inbounds nuw i8, ptr %.val47908, i64 %i.mko
  %.0.copyload.i52933 = load i32, ptr %i.mkp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52933) #7, !srcloc !19
  %i.mkq = add i32 %i.mkm, %.0.copyload.i52929
  %i.mkr = zext i32 %i.mkq to i64
  %.val47907 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mks = getelementptr inbounds nuw i8, ptr %.val47907, i64 %i.mkr
  %.0.copyload.i52934 = load i32, ptr %i.mks, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i52934) #7, !srcloc !19
  %i.mkt = xor i32 %.0.copyload.i52934, -1
  %i.mku = and i32 %.0.copyload.i52933, %i.mkt
  %.val49749 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mkv = getelementptr inbounds nuw i8, ptr %.val49749, i64 %i.mko
  store i32 %i.mku, ptr %i.mkv, align 1
  %indvars.iv.next55699 = add nuw nsw i64 %indvars.iv55698, 2 ; 2 uses
  %indvars55700 = trunc i64 %indvars.iv.next55699 to i32
  %.not46048 = icmp eq i32 %i.mka, %indvars55700
  br i1 %.not46048, label %bb.axg, label %bb.axf

bb.axg:                                           ; preds = %bb.axf
  %i.mkw = and i32 %i.mjv, 1
end_hunk_7
begin_hunk_8_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %i.pqt = select i1 %i.pqs, i1 %.not46324, i1 false
  %i.pqu = select i1 %i.pqt, i32 %.143, i32 %.3943830
  %i.pqv = add i32 %.2343265, %.88
  %i.pqw = add i32 %.88, 1
  %i.pqx = and i32 %i.pqv, %i.pqg                 ; 2 uses
  %i.pqy = shl i32 %i.pqx, 3
  %i.pqz = add i32 %i.pqy, %.0.copyload.i53448    ; 2 uses
  %i.pra = zext i32 %i.pqz to i64                 ; 2 uses
  %.val47427 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prb = getelementptr inbounds nuw i8, ptr %.val47427, i64 %i.pra
  %.0.copyload.i53450 = load i32, ptr %i.prb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53450) #7, !srcloc !19
  %.not46323 = icmp eq i32 %.0.copyload.i53450, %i.ppz
  br i1 %.not46323, label %.loopexit54427, label %.preheader54426

._crit_edge:                                      ; preds = %.loopexit54429, %func_types_eq.exit53485.thread, %.loopexit54572
  %.0.copyload.i53361.lcssa = phi i32 [ 0, %.loopexit54572 ], [ 0, %func_types_eq.exit53485.thread ], [ %.0.copyload.i5336155203, %.loopexit54429 ] ; 2 uses
  %.val47426 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prc = getelementptr inbounds nuw i8, ptr %.val47426, i64 %i.htf
  %i.prd = getelementptr inbounds nuw i8, ptr %i.prc, i64 356
  %.0.copyload.i53451 = load i32, ptr %i.prd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53451) #7, !srcloc !19
  %.not46261 = icmp eq i32 %.0.copyload.i53451, 0
  br i1 %.not46261, label %.loopexit54570, label %bb.bgx

bb.bgx:                                           ; preds = %._crit_edge
  %.val47425 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pre = getelementptr inbounds nuw i8, ptr %.val47425, i64 %i.nhk
  %.0.copyload.i53452 = load i32, ptr %i.pre, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53452) #7, !srcloc !19
  %i.prf = add i32 %.0.copyload.i53451, -1        ; 2 uses
  %i.prg = lshr i32 %.0.copyload.i53347, 4
  %i.prh = lshr i32 %.0.copyload.i53347, 9
  %i.pri = xor i32 %i.prg, %i.prh
  %i.prj = and i32 %i.prf, %i.pri                 ; 2 uses
  %i.prk = shl nuw nsw i32 %i.prj, 3
  %i.prl = add i32 %.0.copyload.i53452, %i.prk
  %i.prm = zext i32 %i.prl to i64
  %.val47424 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prn = getelementptr inbounds nuw i8, ptr %.val47424, i64 %i.prm
  %.0.copyload.i53453 = load i32, ptr %i.prn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53453) #7, !srcloc !19
  %i.pro = icmp eq i32 %.0.copyload.i53453, %.0.copyload.i53347
  br i1 %i.pro, label %.loopexit54571, label %.preheader54569

.preheader54569:                                  ; preds = %bb.bgx, %bb.bgy
  %.11344209 = phi i32 [ %.0.copyload.i53454, %bb.bgy ], [ %.0.copyload.i53453, %bb.bgx ]
  %.8844085 = phi i32 [ %i.prs, %bb.bgy ], [ %i.prj, %bb.bgx ]
  %.2443266 = phi i32 [ %i.prr, %bb.bgy ], [ 1, %bb.bgx ] ; 2 uses
  %i.prp = icmp eq i32 %.11344209, -4
  br i1 %i.prp, label %.loopexit54570, label %bb.bgy

bb.bgy:                                           ; preds = %.preheader54569
  %i.prq = add i32 %.2443266, %.8844085
  %i.prr = add i32 %.2443266, 1
  %i.prs = and i32 %i.prq, %i.prf                 ; 2 uses
  %i.prt = shl i32 %i.prs, 3
  %i.pru = add i32 %i.prt, %.0.copyload.i53452
  %i.prv = zext i32 %i.pru to i64
  %.val47423 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prw = getelementptr inbounds nuw i8, ptr %.val47423, i64 %i.prv
  %.0.copyload.i53454 = load i32, ptr %i.prw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53454) #7, !srcloc !19
  %.not46262 = icmp eq i32 %.0.copyload.i53454, %.0.copyload.i53347
  br i1 %.not46262, label %.loopexit54571, label %.preheader54569

.loopexit54570:                                   ; preds = %.preheader54569, %._crit_edge
  %i.prx = add i32 %.0.copyload.i53347, 8
  %.not46263 = icmp eq i32 %.0.copyload.i53347, 0
  %i.pry = select i1 %.not46263, i32 0, i32 %i.prx ; 9 uses
  %.val47422 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.prz = getelementptr inbounds nuw i8, ptr %.val47422, i64 %i.hew
  %.0.copyload.i53455 = load i32, ptr %i.prz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53455) #7, !srcloc !19
  %.val47421 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psa = getelementptr inbounds nuw i8, ptr %.val47421, i64 %i.hex
  %.0.copyload.i53456 = load i32, ptr %i.psa, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53456) #7, !srcloc !19
  %.not46264 = icmp eq i32 %.0.copyload.i53456, 0
  br i1 %.not46264, label %.loopexit54567, label %bb.bgz

bb.bgz:                                           ; preds = %.loopexit54570
  %i.psb = add i32 %.0.copyload.i53456, -1        ; 2 uses
  %i.psc = lshr i32 %i.pry, 4
  %i.psd = lshr i32 %i.pry, 9
  %i.pse = xor i32 %i.psc, %i.psd
  %i.psf = and i32 %i.psb, %i.pse                 ; 2 uses
  %i.psg = shl nuw nsw i32 %i.psf, 3
  %i.psh = add i32 %i.psg, %.0.copyload.i53455
  %i.psi = zext i32 %i.psh to i64
  %.val47420 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psj = getelementptr inbounds nuw i8, ptr %.val47420, i64 %i.psi
  %.0.copyload.i53457 = load i32, ptr %i.psj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53457) #7, !srcloc !19
  %i.psk = icmp eq i32 %.0.copyload.i53457, %i.pry
  br i1 %i.psk, label %.loopexit54568, label %.preheader54566

.preheader54566:                                  ; preds = %bb.bgz, %bb.bha
  %.11444210 = phi i32 [ %.0.copyload.i53458, %bb.bha ], [ %.0.copyload.i53457, %bb.bgz ]
  %.8944086 = phi i32 [ %i.pso, %bb.bha ], [ %i.psf, %bb.bgz ]
  %.2543267 = phi i32 [ %i.psn, %bb.bha ], [ 1, %bb.bgz ] ; 2 uses
  %i.psl = icmp eq i32 %.11444210, -4
  br i1 %i.psl, label %.loopexit54567, label %bb.bha

bb.bha:                                           ; preds = %.preheader54566
  %i.psm = add i32 %.2543267, %.8944086
  %i.psn = add i32 %.2543267, 1
  %i.pso = and i32 %i.psm, %i.psb                 ; 2 uses
  %i.psp = shl i32 %i.pso, 3
  %i.psq = add i32 %i.psp, %.0.copyload.i53455
  %i.psr = zext i32 %i.psq to i64
  %.val47419 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pss = getelementptr inbounds nuw i8, ptr %.val47419, i64 %i.psr
  %.0.copyload.i53458 = load i32, ptr %i.pss, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53458) #7, !srcloc !19
  %.not46265 = icmp eq i32 %.0.copyload.i53458, %i.pry
  br i1 %.not46265, label %.loopexit54568, label %.preheader54566

.loopexit54567:                                   ; preds = %.preheader54566, %.loopexit54570
  %.val47418 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pst = getelementptr inbounds nuw i8, ptr %.val47418, i64 %i.heh
  %i.psu = getelementptr inbounds nuw i8, ptr %i.pst, i64 1108
  %.0.copyload.i53459 = load i32, ptr %i.psu, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53459) #7, !srcloc !19
  %i.psv = add i32 %.0.copyload.i53459, 31        ; 3 uses
  %i.psw = icmp ult i32 %i.psv, 32
  br i1 %i.psw, label %.loopexit54565, label %bb.bhb

bb.bhb:                                           ; preds = %.loopexit54567
  %.val47417 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psx = getelementptr inbounds nuw i8, ptr %.val47417, i64 %i.hey
  %.0.copyload.i53460 = load i32, ptr %i.psx, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53460) #7, !srcloc !19
  %i.psy = zext i32 %.0.copyload.i53460 to i64
  %.val47416 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.psz = getelementptr inbounds nuw i8, ptr %.val47416, i64 %i.psy
  %.0.copyload.i53461 = load i32, ptr %i.psz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53461) #7, !srcloc !19
  %.not46266 = icmp eq i32 %.0.copyload.i53461, 0
  br i1 %.not46266, label %bb.bhc, label %bb.bhg

bb.bhc:                                           ; preds = %bb.bhb
  %i.pta = lshr i32 %i.psv, 5                     ; 2 uses
  %i.ptb = icmp ult i32 %i.psv, 64
  %i.ptc = add nsw i32 %i.pta, -1
  %i.ptd = select i1 %i.ptb, i32 0, i32 %i.ptc    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ptd to i64
  %exitcond57417 = icmp eq i32 %i.ptd, 0
  br i1 %exitcond57417, label %.loopexit54565, label %.lr.ph57420

bb.bhd:                                           ; preds = %.lr.ph57420
  %exitcond = icmp eq i64 %indvars.iv.next55705, %wide.trip.count
  br i1 %exitcond, label %.loopexit54565, label %.lr.ph57420

.lr.ph57420:                                      ; preds = %bb.bhc, %bb.bhd
  %indvars.iv5570457418 = phi i64 [ %indvars.iv.next55705, %bb.bhd ], [ 0, %bb.bhc ]
  %indvars.iv.next55705 = add nuw nsw i64 %indvars.iv5570457418, 1 ; 3 uses
  %indvars55706 = trunc i64 %indvars.iv.next55705 to i32 ; 2 uses
  %i.pte = shl i32 %indvars55706, 2
  %i.ptf = add i32 %i.pte, %.0.copyload.i53460
  %i.ptg = zext i32 %i.ptf to i64
  %.val47415 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pth = getelementptr inbounds nuw i8, ptr %.val47415, i64 %i.ptg
  %.0.copyload.i53462 = load i32, ptr %i.pth, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53462) #7, !srcloc !19
  %.not46267 = icmp eq i32 %.0.copyload.i53462, 0
  br i1 %.not46267, label %bb.bhd, label %bb.bhe

bb.bhe:                                           ; preds = %.lr.ph57420
  %i.pti = icmp ugt i32 %i.pta, %indvars55706
  br i1 %i.pti, label %bb.bhf, label %.loopexit54565

.loopexit54565:                                   ; preds = %bb.bhd, %bb.bhc, %bb.bhe, %.loopexit54567
  %i.ptj = add i32 %.0.copyload.i53459, 1
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef %0, i32 noundef %i.hes, i32 noundef %i.ptj, i32 noundef 0) #7
  %.val47414 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptk = getelementptr inbounds nuw i8, ptr %.val47414, i64 %i.hex
  %.0.copyload.i53463 = load i32, ptr %i.ptk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53463) #7, !srcloc !19
  %.val47413 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptl = getelementptr inbounds nuw i8, ptr %.val47413, i64 %i.hew
  %.0.copyload.i53464 = load i32, ptr %i.ptl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53464) #7, !srcloc !19
  br label %bb.bhk

bb.bhf:                                           ; preds = %bb.bhe
  %.not46268 = icmp eq i32 %.0.copyload.i53459, 0
  br i1 %.not46268, label %.loopexit54564, label %bb.bhg

bb.bhg:                                           ; preds = %bb.bhf, %bb.bhb
  %i.ptm = sub i32 0, %.0.copyload.i53459
  %i.ptn = and i32 %i.ptm, 31
  %i.pto = lshr i32 -1, %i.ptn
  %i.ptp = add i32 %.0.copyload.i53459, -1
  %i.ptq = lshr i32 %i.ptp, 5
  %i.ptr = zext nneg i32 %i.ptq to i64
  br label %bb.bhh

bb.bhh:                                           ; preds = %bb.bhj, %bb.bhg
  %indvars.iv55708 = phi i64 [ %indvars.iv.next55709, %bb.bhj ], [ 0, %bb.bhg ] ; 4 uses
  %indvars.iv55708.tr = trunc i64 %indvars.iv55708 to i32
  %i.pts = shl i32 %indvars.iv55708.tr, 2
  %i.ptt = add i32 %i.pts, %.0.copyload.i53460
  %i.ptu = zext i32 %i.ptt to i64
  %.val47412 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ptv = getelementptr inbounds nuw i8, ptr %.val47412, i64 %i.ptu
  %.0.copyload.i53465 = load i32, ptr %i.ptv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53465) #7, !srcloc !19
  %.not46269 = icmp eq i64 %indvars.iv55708, %i.ptr ; 2 uses
  %i.ptw = select i1 %.not46269, i32 %i.pto, i32 -1
  %i.ptx = and i32 %.0.copyload.i53465, %i.ptw    ; 2 uses
  %.not46270 = icmp eq i32 %i.ptx, 0
  br i1 %.not46270, label %bb.bhj, label %bb.bhi

bb.bhi:                                           ; preds = %bb.bhh
  %i.pty = trunc nuw nsw i64 %indvars.iv55708 to i32
  %i.ptz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ptx, i1 true)
  %i.pua = shl i32 %i.pty, 5
  %i.pub = or disjoint i32 %i.ptz, %i.pua
  br label %.loopexit54564

bb.bhj:                                           ; preds = %bb.bhh
  %indvars.iv.next55709 = add nuw nsw i64 %indvars.iv55708, 1
  br i1 %.not46269, label %.loopexit54564, label %bb.bhh

.loopexit54564:                                   ; preds = %bb.bhj, %bb.bhf, %bb.bhi
  %.3043159 = phi i32 [ %i.pub, %bb.bhi ], [ -1, %bb.bhf ], [ -1, %bb.bhj ] ; 3 uses
  %i.puc = lshr i32 %.3043159, 3
  %i.pud = and i32 %i.puc, 536870908
  %i.pue = add i32 %i.pud, %.0.copyload.i53460
  %i.puf = zext i32 %i.pue to i64                 ; 2 uses
  %.val47411 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pug = getelementptr inbounds nuw i8, ptr %.val47411, i64 %i.puf
  %.0.copyload.i53466 = load i32, ptr %i.pug, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53466) #7, !srcloc !19
  %i.puh = tail call i32 @llvm.fshl.i32(i32 -2, i32 -2, i32 %.3043159)
  %i.pui = and i32 %.0.copyload.i53466, %i.puh
  %.val49666 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.puj = getelementptr inbounds nuw i8, ptr %.val49666, i64 %i.puf
  store i32 %i.pui, ptr %i.puj, align 1
  br label %bb.bhk

bb.bhk:                                           ; preds = %.loopexit54564, %.loopexit54565
  %.9044087 = phi i32 [ %.0.copyload.i53459, %.loopexit54565 ], [ %.3043159, %.loopexit54564 ]
  %.4043831 = phi i32 [ %.0.copyload.i53464, %.loopexit54565 ], [ %.0.copyload.i53455, %.loopexit54564 ] ; 2 uses
  %.1543233 = phi i32 [ %.0.copyload.i53463, %.loopexit54565 ], [ %.0.copyload.i53456, %.loopexit54564 ] ; 2 uses
  %.val49665 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.puk = getelementptr inbounds nuw i8, ptr %.val49665, i64 %i.htf
  %i.pul = getelementptr inbounds nuw i8, ptr %i.puk, i64 396
  store i32 %i.pry, ptr %i.pul, align 1
  %.not46271 = icmp eq i32 %.1543233, 0
  br i1 %.not46271, label %bb.bho, label %bb.bhl

bb.bhl:                                           ; preds = %bb.bhk
  %i.pum = add i32 %.1543233, -1                  ; 2 uses
  %i.pun = lshr i32 %i.pry, 4
  %i.puo = lshr i32 %i.pry, 9
  %i.pup = xor i32 %i.pun, %i.puo
  %i.puq = and i32 %i.pum, %i.pup                 ; 2 uses
  %i.pur = shl nuw nsw i32 %i.puq, 3
  %i.pus = add i32 %i.pur, %.4043831              ; 2 uses
  %i.put = zext i32 %i.pus to i64                 ; 2 uses
  %.val47410 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.puu = getelementptr inbounds nuw i8, ptr %.val47410, i64 %i.put
  %.0.copyload.i53467 = load i32, ptr %i.puu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53467) #7, !srcloc !19
  %i.puv = icmp eq i32 %.0.copyload.i53467, %i.pry
  br i1 %i.puv, label %.loopexit54563, label %.preheader54562

.preheader54562:                                  ; preds = %bb.bhl, %bb.bhn
  %.11744213 = phi i32 [ %i.pvf, %bb.bhn ], [ %i.pus, %bb.bhl ] ; 2 uses
  %.144 = phi i32 [ %.0.copyload.i53468, %bb.bhn ], [ %.0.copyload.i53467, %bb.bhl ] ; 2 uses
  %.90 = phi i32 [ %i.pvc, %bb.bhn ], [ 1, %bb.bhl ] ; 2 uses
  %.2643268 = phi i32 [ %i.pvd, %bb.bhn ], [ %i.puq, %bb.bhl ]
  %.1743210 = phi i32 [ %i.pva, %bb.bhn ], [ 0, %bb.bhl ] ; 3 uses
  %i.puw = icmp eq i32 %.144, -4
  %.not46274 = icmp eq i32 %.1743210, 0           ; 2 uses
  br i1 %i.puw, label %bb.bhm, label %bb.bhn

bb.bhm:                                           ; preds = %.preheader54562
  %i.pux = select i1 %.not46274, i32 %.11744213, i32 %.1743210
  br label %bb.bho

bb.bhn:                                           ; preds = %.preheader54562
  %i.puy = icmp eq i32 %.144, -8
  %i.puz = select i1 %i.puy, i1 %.not46274, i1 false
  %i.pva = select i1 %i.puz, i32 %.11744213, i32 %.1743210
  %i.pvb = add i32 %.2643268, %.90
  %i.pvc = add i32 %.90, 1
  %i.pvd = and i32 %i.pvb, %i.pum                 ; 2 uses
  %i.pve = shl i32 %i.pvd, 3
  %i.pvf = add i32 %i.pve, %.4043831              ; 2 uses
  %i.pvg = zext i32 %i.pvf to i64                 ; 2 uses
  %.val47409 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvh = getelementptr inbounds nuw i8, ptr %.val47409, i64 %i.pvg
  %.0.copyload.i53468 = load i32, ptr %i.pvh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53468) #7, !srcloc !19
  %.not46273 = icmp eq i32 %.0.copyload.i53468, %i.pry
  br i1 %.not46273, label %.loopexit54563, label %.preheader54562

bb.bho:                                           ; preds = %bb.bhk, %bb.bhm
  %.11844214 = phi i32 [ %i.pux, %bb.bhm ], [ 0, %bb.bhk ]
  %i.pvi = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AValue0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %i.hdj, i32 noundef %.11844214, i32 noundef %i.oof) #7
  %.pre55788 = zext i32 %i.pvi to i64
  br label %.loopexit54563

.loopexit54563:                                   ; preds = %bb.bhn, %bb.bhl, %bb.bho
  %.pre-phi55789 = phi i64 [ %.pre55788, %bb.bho ], [ %i.put, %bb.bhl ], [ %i.pvg, %bb.bhn ]
  %.val49664 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvj = getelementptr inbounds nuw i8, ptr %.val49664, i64 %.pre-phi55789
  %i.pvk = getelementptr inbounds nuw i8, ptr %i.pvj, i64 4
  store i32 %.9044087, ptr %i.pvk, align 1
  %.val47408 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvl = getelementptr inbounds nuw i8, ptr %.val47408, i64 %i.ooa
  %.0.copyload.i53469 = load i32, ptr %i.pvl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53469) #7, !srcloc !19
  br label %.loopexit54568

.loopexit54568:                                   ; preds = %bb.bha, %bb.bgz, %.loopexit54563
  %.91 = phi i32 [ %.0.copyload.i53469, %.loopexit54563 ], [ %.0.copyload.i53361.lcssa, %bb.bgz ], [ %.0.copyload.i53361.lcssa, %bb.bha ] ; 2 uses
  %.val47407 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvm = getelementptr inbounds nuw i8, ptr %.val47407, i64 %i.htf
  %i.pvn = getelementptr inbounds nuw i8, ptr %i.pvm, i64 56
  %.0.copyload.i53470 = load i32, ptr %i.pvn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53470) #7, !srcloc !19
  %.not46275 = icmp ugt i32 %.0.copyload.i53470, %.91
  br i1 %.not46275, label %bb.bhq, label %bb.bhp

bb.bhp:                                           ; preds = %.loopexit54568
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.oog, i32 noundef %i.ooc, i32 noundef 0, i32 noundef 4) #7
  %.val47406 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvo = getelementptr inbounds nuw i8, ptr %.val47406, i64 %i.ooa
  %.0.copyload.i53471 = load i32, ptr %i.pvo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53471) #7, !srcloc !19
  br label %bb.bhq

bb.bhq:                                           ; preds = %bb.bhp, %.loopexit54568
  %.92 = phi i32 [ %.0.copyload.i53471, %bb.bhp ], [ %.91, %.loopexit54568 ]
  %.val47405 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvp = getelementptr inbounds nuw i8, ptr %.val47405, i64 %i.ood
  %.0.copyload.i53472 = load i32, ptr %i.pvp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53472) #7, !srcloc !19
  %i.pvq = shl i32 %.92, 2
  %i.pvr = add i32 %.0.copyload.i53472, %i.pvq
  %i.pvs = zext i32 %i.pvr to i64
  %.val49663 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvt = getelementptr inbounds nuw i8, ptr %.val49663, i64 %i.pvs
  store i32 %.0.copyload.i53258, ptr %i.pvt, align 1
  %.val47404 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvu = getelementptr inbounds nuw i8, ptr %.val47404, i64 %i.ooa
  %.0.copyload.i53473 = load i32, ptr %i.pvu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53473) #7, !srcloc !19
  %i.pvv = add i32 %.0.copyload.i53473, 1         ; 3 uses
  %.val49662 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvw = getelementptr inbounds nuw i8, ptr %.val49662, i64 %i.ooa
  store i32 %i.pvv, ptr %i.pvw, align 1
  %.val47403 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pvx = getelementptr inbounds nuw i8, ptr %.val47403, i64 %i.ood
  %.0.copyload.i53474 = load i32, ptr %i.pvx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53474) #7, !srcloc !19
  %i.pvy = shl i32 %i.pvv, 2
  %i.pvz = add i32 %.0.copyload.i53474, %i.pvy
  %.val47402 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pwa = getelementptr inbounds nuw i8, ptr %.val47402, i64 %i.ony
  %.0.copyload.i53475 = load i32, ptr %i.pwa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53475) #7, !srcloc !19
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsift_up0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3Aallocate0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x290x3A0x3A0x24_00x260x2C0x20unsigned0x20int0x2A0x3E0x28unsigned0x20int0x2A0x2C0x20unsigned0x20int0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3Aallocate0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cunsigned0x20int0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i53474, i32 noundef %i.pvz, i32 noundef %.0.copyload.i53475, i32 noundef %i.pvv) #7
  br label %.loopexit54571

.loopexit54571:                                   ; preds = %bb.bgy, %bb.bgx, %bb.bhq
  %.val47401 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pwb = getelementptr inbounds nuw i8, ptr %.val47401, i64 %i.omy
  %.0.copyload.i53476 = load i32, ptr %i.pwb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53476) #7, !srcloc !19
  %.not46276 = icmp eq i32 %.0.copyload.i53476, 0
  br i1 %.not46276, label %bb.bhv, label %bb.bfg

bb.bhr:                                           ; preds = %bb.bgt, %bb.bgv
  %.4643720 = phi i32 [ 0, %bb.bgt ], [ %i.pqr, %bb.bgv ]
  %i.pwc = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AValue0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %i.hdj, i32 noundef %.4643720, i32 noundef %i.oof) #7
  %.pre55792 = zext i32 %i.pwc to i64
  br label %.loopexit54427

.loopexit54427:                                   ; preds = %bb.bgw, %bb.bgu, %bb.bhr
  %.pre-phi55793 = phi i64 [ %.pre55792, %bb.bhr ], [ %i.pqn, %bb.bgu ], [ %i.pra, %bb.bgw ]
  %.val47400 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pwd = getelementptr inbounds nuw i8, ptr %.val47400, i64 %i.heh
  %i.pwe = getelementptr inbounds nuw i8, ptr %i.pwd, i64 1100
  %.0.copyload.i53477 = load i32, ptr %i.pwe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53477) #7, !srcloc !19
  %.val47399 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pwf = getelementptr inbounds nuw i8, ptr %.val47399, i64 %.pre-phi55793
  %i.pwg = getelementptr inbounds nuw i8, ptr %i.pwf, i64 4
  %.0.copyload.i53478 = load i32, ptr %i.pwg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i53478) #7, !srcloc !19
  %i.pwh = lshr i32 %.0.copyload.i53478, 3
  %i.pwi = and i32 %i.pwh, 536870908
  %i.pwj = add i32 %i.pwi, %.0.copyload.i53477
  %i.pwk = zext i32 %i.pwj to i64                 ; 2 uses
  %.val47398 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pwl = getelementptr inbounds nuw i8, ptr %.val47398, i64 %i.pwk
  %.0.copyload.i53479 = load i32, ptr %i.pwl, align 1 ; 2 uses
end_hunk_8
