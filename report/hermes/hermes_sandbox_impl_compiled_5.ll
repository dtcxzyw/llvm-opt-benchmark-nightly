Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpConstructorInternal0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20bool0x29:bb.a
  %i.in = zext i32 %.0.copyload.i1045 to i64      ; 2 uses
  %i.io = add nuw nsw i64 %i.in, 164              ; 2 uses
  %.val896 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val896, i64 %i.io
  %.0.copyload.i1046 = load i32, ptr %i.ip, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1046) #8, !srcloc !19
  %.val895 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %.val895, i64 %i.in
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 168
  %.0.copyload.i1047 = load i32, ptr %i.ir, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1047) #8, !srcloc !19
  %i.is = icmp ult i32 %.0.copyload.i1046, %.0.copyload.i1047
  br i1 %i.is, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.it = add i32 %.0.copyload.i1046, 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.io
  store i32 %i.it, ptr %i.iu, align 1
  %i.iv = zext i32 %.0.copyload.i1046 to i64
  %.val932 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val932, i64 %i.iv
  store i64 %i.il, ptr %i.iw, align 1
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.ix = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1045, i64 noundef %i.il) #8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0834 = phi i32 [ %.0.copyload.i1046, %bb.bg ], [ %i.ix, %bb.bh ]
  %i.iy = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpInitialize0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0834, i32 noundef %.1824, i32 noundef %.0822)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.i, %bb.a, %bb.bb, %bb.az, %bb.ax, %bb.h, %bb.b, %bb.bi
  %.0821 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.az ], [ %i.iy, %bb.bi ], [ -1, %bb.bb ], [ -1, %bb.ax ], [ -1, %bb.h ], [ %2, %bb.i ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.0821
}

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AarrayToString0x3Cchar0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar0x3E0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpConstructorFastCopy0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 43 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %.val467 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val467, i64 %i.b
  %.0.copyload.i = load i64, ptr %i.c, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !20
  %i.d = icmp ugt i64 %.0.copyload.i, -844424930131969
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %.0.copyload.i, 4294967295
  %.val470 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val470, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %.0.copyload.i474 = load i8, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i474) #8, !srcloc !21
  %.not = icmp eq i8 %.0.copyload.i474, 62
  %i.h = select i1 %.not, i64 %i.b, i64 70384
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0405 = phi i64 [ %i.h, %bb.b ], [ 70384, %bb.a ] ; 3 uses
  %.val466 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val466, i64 %.0405
  %.0.copyload.i475 = load i64, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i475) #8, !srcloc !20
  %i.j = icmp ult i64 %.0.copyload.i475, -844424930131968
  %i.k = and i64 %.0.copyload.i475, 4294967295
  %.not418 = icmp eq i64 %i.k, 0
  %or.cond = or i1 %i.j, %.not418
  br i1 %or.cond, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %1, 528
  %i.m = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSRegExp0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.l) #8
  %i.n = zext i32 %i.m to i64
  %i.o = or disjoint i64 %i.n, -281474976710656   ; 2 uses
  %i.p = zext i32 %1 to i64
  %i.q = add nuw nsw i64 %i.p, 4                  ; 2 uses
  %.val461 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val461, i64 %i.q
  %.0.copyload.i476 = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i476) #8, !srcloc !19
  %i.s = zext i32 %.0.copyload.i476 to i64        ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 164                ; 2 uses
  %.val460 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val460, i64 %i.t
  %.0.copyload.i477 = load i32, ptr %i.u, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i477) #8, !srcloc !19
  %.val459 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val459, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %.0.copyload.i478 = load i32, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i478) #8, !srcloc !19
  %i.x = icmp ult i32 %.0.copyload.i477, %.0.copyload.i478
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = add i32 %.0.copyload.i477, 8
  %.val443 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val443, i64 %i.t
  store i32 %i.y, ptr %i.z, align 1
  %i.aa = zext i32 %.0.copyload.i477 to i64
  %.val465 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val465, i64 %i.aa
  store i64 %i.o, ptr %i.ab, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ac = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i476, i64 noundef %i.o) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0410 = phi i32 [ %.0.copyload.i477, %bb.e ], [ %i.ac, %bb.f ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !17 ; 8 uses
  %i.af = add i32 %i.ae, -112                     ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !17
  %i.ag = zext i32 %i.af to i64                   ; 10 uses
  %i.ah = add nuw nsw i64 %i.ag, 64               ; 2 uses
  %.val464 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val464, i64 %i.ah
  store i64 68719476736, ptr %i.ai, align 1
  %i.aj = add i32 %i.ae, -40                      ; 2 uses
  %i.ak = add nuw nsw i64 %i.ag, 60               ; 3 uses
  %.val442 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val442, i64 %i.ak
  store i32 %i.aj, ptr %i.al, align 1
  %i.am = zext i32 %3 to i64
  %.val458 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val458, i64 %i.am
  %.0.copyload.i479 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i479) #8, !srcloc !19
  %i.ao = add i32 %i.ae, -52
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AappendUTF16String0x28llvh0x3A0x3ASmallVectorImpl0x3Cchar16_t0x3E0x260x290x20const(ptr noundef nonnull %0, i32 noundef %.0.copyload.i479, i32 noundef %i.ao) #8
  %.val457 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val457, i64 %i.ah
  %.0.copyload.i480 = load i32, ptr %i.ap, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i480) #8, !srcloc !19
  %.not419 = icmp eq i32 %.0.copyload.i480, 0
  br i1 %.not419, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val456 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val456, i64 %i.ak
  %.0.copyload.i481 = load i32, ptr %i.aq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i481) #8, !srcloc !19
  %i.ar = shl i32 %.0.copyload.i480, 1
  %i.as = add i32 %.0.copyload.i481, %i.ar
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %bb.h
  %.0408 = phi i32 [ 0, %bb.h ], [ %i.bl, %bb.r ] ; 8 uses
  %.0406 = phi i32 [ %.0.copyload.i481, %bb.h ], [ %i.bm, %bb.r ] ; 2 uses
  %i.at = zext i32 %.0406 to i64
  %.val473 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val473, i64 %i.at
  %.0.copyload.i482 = load i16, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i482) #8, !srcloc !24
  switch i16 %.0.copyload.i482, label %bb.q [
    i16 100, label %bb.o
    i16 121, label %bb.m
    i16 117, label %bb.l
    i16 103, label %bb.k
    i16 115, label %bb.n
    i16 105, label %bb.p
    i16 109, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = and i32 %.0408, 4
  %.not420 = icmp eq i32 %i.av, 0
  br i1 %.not420, label %bb.r, label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.aw = and i32 %.0408, 2
  %.not423 = icmp eq i32 %i.aw, 0
  br i1 %.not423, label %bb.r, label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.ax = and i32 %.0408, 8
  %.not424 = icmp eq i32 %i.ax, 0
  br i1 %.not424, label %bb.r, label %bb.q

bb.m:                                             ; preds = %bb.i
  %i.ay = and i32 %.0408, 32
  %.not425 = icmp eq i32 %i.ay, 0
  br i1 %.not425, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.az = and i32 %.0408, 16
  %.not422 = icmp eq i32 %i.az, 0
  br i1 %.not422, label %bb.r, label %bb.q

bb.o:                                             ; preds = %bb.i
  %.not426 = icmp samesign ult i32 %.0408, 64
  br i1 %.not426, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.i
  %i.ba = and i32 %.0408, 1
  %.not421 = icmp eq i32 %i.ba, 0
  br i1 %.not421, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.val441 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val441, i64 %i.ag
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  store i32 0, ptr %i.bc, align 1
  %.val463 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val463, i64 %i.ag
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i64 124554051585, ptr %i.be, align 1
  %.val440 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val440, i64 %i.ag
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i32 3, ptr %i.bg, align 1
  %.val439 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val439, i64 %i.ag
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 34600, ptr %i.bi, align 1
  %i.bj = add i32 %i.ae, -96
  %i.bk = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseSyntaxError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.bj) #8
  br label %bb.z

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.0407 = phi i32 [ 64, %bb.o ], [ 32, %bb.m ], [ 8, %bb.l ], [ 2, %bb.k ], [ 16, %bb.n ], [ 1, %bb.p ], [ 4, %bb.j ]
  %i.bl = or i32 %.0407, %.0408                   ; 2 uses
  %i.bm = add i32 %.0406, 2                       ; 2 uses
  %.not427 = icmp eq i32 %i.bm, %i.as
  br i1 %.not427, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.r, %bb.g
  %.1409 = phi i32 [ 0, %bb.g ], [ %i.bl, %bb.r ]
  %.val455 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val455, i64 %.0405
  %.0.copyload.i483 = load i32, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i483) #8, !srcloc !19
  %i.bo = zext i32 %.0.copyload.i483 to i64
  %.val472 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val472, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %.0.copyload.i484 = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i484) #8, !srcloc !23
  %i.br = zext i32 %.0.copyload.i484 to i64
  %i.bs = or disjoint i64 %i.br, -844424930131968 ; 2 uses
  %.val454 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val454, i64 %i.q
  %.0.copyload.i485 = load i32, ptr %i.bt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i485) #8, !srcloc !19
  %i.bu = zext i32 %.0.copyload.i485 to i64       ; 2 uses
  %i.bv = add nuw nsw i64 %i.bu, 164              ; 2 uses
  %.val453 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val453, i64 %i.bv
  %.0.copyload.i486 = load i32, ptr %i.bw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i486) #8, !srcloc !19
  %.val452 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val452, i64 %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 168
  %.0.copyload.i487 = load i32, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i487) #8, !srcloc !19
  %i.bz = icmp ult i32 %.0.copyload.i486, %.0.copyload.i487
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.loopexit
  %i.ca = add i32 %.0.copyload.i486, 8
  %.val438 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.bv
  store i32 %i.ca, ptr %i.cb, align 1
  %i.cc = zext i32 %.0.copyload.i486 to i64
  %.val462 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.val462, i64 %i.cc
  store i64 %i.bs, ptr %i.cd, align 1
  br label %bb.u

bb.t:                                             ; preds = %.loopexit
  %i.ce = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i485, i64 noundef %i.bs) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1 = phi i32 [ %.0.copyload.i486, %bb.s ], [ %i.ce, %bb.t ] ; 2 uses
  %.val451 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val451, i64 %.0405
  %.0.copyload.i488 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i488) #8, !srcloc !19
  %i.cg = zext i32 %.0.copyload.i488 to i64       ; 3 uses
  %.val469 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val469, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %.0.copyload.i489 = load i8, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i489) #8, !srcloc !21
  %i.cj = zext i8 %.0.copyload.i489 to i32
  %i.ck = xor i32 %.1409, %i.cj
  %i.cl = and i32 %i.ck, 127
  %.not428 = icmp eq i32 %i.cl, 0
  br i1 %.not428, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cm = zext i32 %.1 to i64
  %.val450 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.val450, i64 %i.cm
  %.0.copyload.i490 = load i32, ptr %i.cn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i490) #8, !srcloc !19
  %.val449 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val449, i64 %i.cg
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %.0.copyload.i491 = load i32, ptr %i.cp, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i491) #8, !srcloc !19
  %.val448 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val448, i64 %i.cg
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.0.copyload.i492 = load i32, ptr %i.cr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i492) #8, !srcloc !19
  %i.cs = add i32 %1, 1364
  %i.ct = zext i32 %i.cs to i64
  %.val447 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val447, i64 %i.ct
  %.0.copyload.i493 = load i32, ptr %i.cu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i493) #8, !srcloc !19
  %i.cv = zext i32 %.0410 to i64                  ; 2 uses
  %.val446 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val446, i64 %i.cv
  %.0.copyload.i494 = load i32, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i494) #8, !srcloc !19
  %i.cx = add i32 %.0.copyload.i494, 20           ; 3 uses
  %i.cy = and i32 %i.cx, -4194304
  %.not429 = icmp eq i32 %.0.copyload.i493, %i.cy
  br i1 %.not429, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = add i32 %1, 816
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AwriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCPointerBase0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCCell0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.cz, i32 noundef %i.cx, i32 noundef %.0.copyload.i490) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.da = zext i32 %i.cx to i64
  %.val437 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val437, i64 %i.da
  store i32 %.0.copyload.i490, ptr %i.db, align 1
  %.val436 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val436, i64 %i.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 314, ptr %i.dd, align 1
  %.val435 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val435, i64 %i.ag
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 0, ptr %i.df, align 1
  %.val434 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.val434, i64 %i.ag
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i32 314, ptr %i.dh, align 1
  %.val433 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val433, i64 %i.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 108
  store i32 0, ptr %i.dj, align 1
  %i.dk = add i32 %i.ae, -8
  %i.dl = add i32 %i.ae, -100
  %i.dm = add i32 %i.ae, -104
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.dk, i32 noundef %.0410, i32 noundef %1, i32 noundef 342, i32 noundef %i.dl, i32 noundef 70432, i32 noundef %i.dm) #8
  %i.dn = zext i32 %.0.copyload.i492 to i64
  %.val468 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val468, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %.0.copyload.i495 = load i8, ptr %i.dp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i495) #8, !srcloc !21
  %.val445 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val445, i64 %i.cv
  %.0.copyload.i496 = load i32, ptr %i.dq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i496) #8, !srcloc !19
  %i.dr = zext i32 %.0.copyload.i496 to i64       ; 3 uses
  %.val432 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val432, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  store i32 %.0.copyload.i491, ptr %i.dt, align 1
  %i.du = and i8 %.0.copyload.i495, 127
  %.val471 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.val471, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store i8 %i.du, ptr %i.dw, align 1
  %i.dx = tail call i32 @w2c_hermes_hermes0x3A0x3AcheckedMalloc0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i491) #8 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i32 %i.dx, ptr %i.dz, align 1
  %i.ea = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.dx, i32 noundef %.0.copyload.i492, i32 noundef %.0.copyload.i491) #8 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.eb = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSRegExp0x3A0x3Ainitialize0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSRegExp0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef nonnull %0, i32 noundef %.0410, i32 noundef %1, i32 noundef %.1, i32 noundef %3) #8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.q
  %.0 = phi i32 [ %i.bk, %bb.q ], [ 1, %bb.x ], [ %i.eb, %bb.y ]
  %.val444 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.val444, i64 %i.ak
  %.0.copyload.i497 = load i32, ptr %i.ec, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i497) #8, !srcloc !19
end_hunk_0
