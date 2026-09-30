Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AgetOwnPropertyDescriptor0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
  %.val283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val283, i64 %i.f
  store i16 %i.bi, ptr %i.bj, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.2.in = phi i16 [ %.0.copyload.i290, %bb.j ], [ %i.bi, %bb.m ]
  %.2 = zext i16 %.2.in to i32                    ; 2 uses
  %i.bk = and i32 %.2, 272
  %.not252 = icmp eq i32 %i.bk, 256
  br i1 %.not252, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val264 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val264, i64 %i.v
  %.0.copyload.i294 = load i32, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i294) #8, !srcloc !19
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.al, i32 noundef %3, i32 noundef %2, i32 noundef %4, i32 noundef %3) #8
  %.val263 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val263, i64 %i.ap
  %.0.copyload.i295 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i295) #8, !srcloc !19
  %.not253 = icmp eq i32 %.0.copyload.i295, 0
  br i1 %.not253, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = zext i32 %1 to i64
  %.val255 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val255, i64 %i.bn
  store i32 0, ptr %i.bo, align 1
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %.val262 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val262, i64 %i.v
  %.0.copyload.i296 = load i32, ptr %i.bp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i296) #8, !srcloc !19
  %.val277 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val277, i64 %i.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.0.copyload.i297 = load i64, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i297) #8, !srcloc !20
  %i.bs = zext i32 %.0.copyload.i296 to i64
  %.val272 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val272, i64 %i.bs
  store i64 %.0.copyload.i297, ptr %i.bt, align 1
  %.val279 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.f
  %.0.copyload.i298 = load i16, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i298) #8, !srcloc !24
  %i.bv = zext i16 %.0.copyload.i298 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.0247 = phi i32 [ %.0.copyload.i294, %bb.o ], [ %.0.copyload.i296, %bb.r ]
  %.3 = phi i32 [ %.2, %bb.o ], [ %i.bv, %bb.r ]  ; 4 uses
  %i.bw = shl nuw nsw i32 %.3, 4
  %i.bx = and i32 %i.bw, 256
  %i.by = shl nuw nsw i32 %.3, 3
  %i.bz = and i32 %i.by, 128
  %i.ca = shl nuw nsw i32 %.3, 2
  %i.cb = and i32 %i.ca, 64
  %i.cc = lshr i32 %.3, 1
  %i.cd = and i32 %i.cc, 7
  %i.ce = or disjoint i32 %i.cb, %i.cd
  %i.cf = or disjoint i32 %i.ce, %i.bz
  %i.cg = or disjoint i32 %i.cf, %i.bx
  %i.ch = xor i32 %i.cg, 312                      ; 2 uses
  %.val254 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val254, i64 %i.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 %i.ch, ptr %i.cj, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 %i.ch, ptr %i.cl, align 1
  %i.cm = add i32 %i.b, -40
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AobjectFromPropertyDescriptor0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.cm, i32 noundef %.0247)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.l, %bb.h
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetOwnComputedDescriptor0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AobjectFromPropertyDescriptor0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 19 uses
  %i.c = add i32 %i.b, -64                        ; 6 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr noundef %0, i32 noundef %2) #8
  %i.e = zext i32 %i.d to i64
  %i.f = or disjoint i64 %i.e, -281474976710656   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 51 uses
  %i.h = zext i32 %2 to i64
  %i.i = add nuw nsw i64 %i.h, 4                  ; 3 uses
  %.val501 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val501, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.k = zext i32 %.0.copyload.i to i64           ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 164                ; 2 uses
  %.val500 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val500, i64 %i.l
  %.0.copyload.i516 = load i32, ptr %i.m, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i516) #8, !srcloc !19
  %.val499 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val499, i64 %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %.0.copyload.i517 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i517) #8, !srcloc !19
  %i.p = icmp ult i32 %.0.copyload.i516, %.0.copyload.i517
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = add i32 %.0.copyload.i516, 8
  %.val491 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val491, i64 %i.l
  store i32 %i.q, ptr %i.r, align 1
  %i.s = zext i32 %.0.copyload.i516 to i64
  %.val505 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val505, i64 %i.s
  store i64 %i.f, ptr %i.t, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i, i64 noundef %i.f) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %.0.copyload.i516, %bb.b ], [ %i.u, %bb.c ] ; 7 uses
  %i.v = zext i32 %3 to i64
  %.val515 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val515, i64 %i.v
  %.0.copyload.i518 = load i16, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i518) #8, !srcloc !24
  %i.x = zext i16 %.0.copyload.i518 to i32        ; 7 uses
  %i.y = and i32 %i.x, 192
  %.not = icmp eq i32 %i.y, 0
  %.val490 = load ptr, ptr %i.g, align 8, !tbaa !18 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %i.c to i64                     ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store i32 319, ptr %i.ab, align 1
  %.val489 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val489, i64 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 1, ptr %i.ad, align 1
  %i.ae = add nuw nsw i64 %i.z, 60                ; 2 uses
  %.val488 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val488, i64 %i.ae
  store i32 319, ptr %i.af, align 1
  %i.ag = add nuw nsw i64 %i.z, 56                ; 2 uses
  %.val487 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val487, i64 %i.ag
  store i32 1, ptr %i.ah, align 1
  %i.ai = add i32 %i.b, -12
  %i.aj = add i32 %i.b, -36
  %i.ak = add i32 %i.b, -40
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef %.0, i32 noundef %2, i32 noundef 61, i32 noundef %i.aj, i32 noundef %4, i32 noundef %i.ak) #8
  %.val512 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val512, i64 %i.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %.0.copyload.i519 = load i8, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i519) #8, !srcloc !21
  %.not451 = icmp eq i8 %.0.copyload.i519, 0
  br i1 %.not451, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = and i32 %i.x, 16
  %.not452 = icmp eq i32 %i.an, 0
  br i1 %.not452, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val486 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val486, i64 %i.z
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store i32 319, ptr %i.ap, align 1
  %.val485 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val485, i64 %i.z
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 1, ptr %i.ar, align 1
  %.val484 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val484, i64 %i.ae
  store i32 319, ptr %i.as, align 1
  %.val483 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val483, i64 %i.ag
  store i32 1, ptr %i.at, align 1
  %i.au = add i32 %i.b, -16
  %i.av = add i32 %i.b, -44
  %5 = and i32 %i.x, 2
  %.not453 = icmp eq i32 %5, 0
  %6 = select i1 %.not453, i32 70424, i32 70416
  %i.aw = add i32 %i.b, -48
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.au, i32 noundef %.0, i32 noundef %2, i32 noundef 62, i32 noundef %i.av, i32 noundef %6, i32 noundef %i.aw) #8
  %.val511 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val511, i64 %i.z
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %.0.copyload.i520 = load i8, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i520) #8, !srcloc !21
  %.not454 = icmp eq i8 %.0.copyload.i520, 0
  br i1 %.not454, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.az = zext i32 %1 to i64
  br label %bb.y

bb.i:                                             ; preds = %bb.d
  %i.ba = zext i32 %4 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.ba
  %.0.copyload.i521 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i521) #8, !srcloc !19
  %i.bc = zext i32 %.0.copyload.i521 to i64       ; 2 uses
  %.val514 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val514, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %.0.copyload.i522 = load i32, ptr %i.be, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i522) #8, !srcloc !23
  %i.bf = zext i32 %.0.copyload.i522 to i64
  %i.bg = or disjoint i64 %i.bf, -281474976710656
  %.not447 = icmp eq i32 %.0.copyload.i522, 0
  %i.bh = select i1 %.not447, i64 -1688849860263936, i64 %i.bg ; 2 uses
  %.val497 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val497, i64 %i.i
  %.0.copyload.i523 = load i32, ptr %i.bi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i523) #8, !srcloc !19
  %i.bj = zext i32 %.0.copyload.i523 to i64       ; 2 uses
  %i.bk = add nuw nsw i64 %i.bj, 164              ; 2 uses
  %.val496 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val496, i64 %i.bk
  %.0.copyload.i524 = load i32, ptr %i.bl, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i524) #8, !srcloc !19
  %.val495 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val495, i64 %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 168
  %.0.copyload.i525 = load i32, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i525) #8, !srcloc !19
  %i.bo = icmp ult i32 %.0.copyload.i524, %.0.copyload.i525
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %.0.copyload.i524, 8
  %.val481 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val481, i64 %i.bk
  store i32 %i.bp, ptr %i.bq, align 1
  %i.br = zext i32 %.0.copyload.i524 to i64
  %.val504 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val504, i64 %i.br
  store i64 %i.bh, ptr %i.bs, align 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bt = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i523, i64 noundef %i.bh) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0442 = phi i32 [ %.0.copyload.i524, %bb.j ], [ %i.bt, %bb.k ]
  %.val513 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val513, i64 %i.bc
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.0.copyload.i526 = load i32, ptr %i.bv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i526) #8, !srcloc !23
  %i.bw = zext i32 %.0.copyload.i526 to i64
  %i.bx = or disjoint i64 %i.bw, -281474976710656
  %.not448 = icmp eq i32 %.0.copyload.i526, 0
  %i.by = select i1 %.not448, i64 -1688849860263936, i64 %i.bx ; 2 uses
  %.val494 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val494, i64 %i.i
  %.0.copyload.i527 = load i32, ptr %i.bz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i527) #8, !srcloc !19
  %i.ca = zext i32 %.0.copyload.i527 to i64       ; 2 uses
  %i.cb = add nuw nsw i64 %i.ca, 164              ; 2 uses
  %.val493 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val493, i64 %i.cb
  %.0.copyload.i528 = load i32, ptr %i.cc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i528) #8, !srcloc !19
  %.val492 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.val492, i64 %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 168
  %.0.copyload.i529 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i529) #8, !srcloc !19
  %i.cf = icmp ult i32 %.0.copyload.i528, %.0.copyload.i529
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = add i32 %.0.copyload.i528, 8
  %.val480 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val480, i64 %i.cb
  store i32 %i.cg, ptr %i.ch, align 1
  %i.ci = zext i32 %.0.copyload.i528 to i64
  %.val503 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val503, i64 %i.ci
  store i64 %i.by, ptr %i.cj, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ck = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i527, i64 noundef %i.by) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0443 = phi i32 [ %.0.copyload.i528, %bb.m ], [ %i.ck, %bb.n ]
  %i.cl = zext i32 %i.c to i64                    ; 8 uses
  %.val479 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 44
  store i32 319, ptr %i.cn, align 1
  %.val478 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val478, i64 %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  store i32 1, ptr %i.cp, align 1
  %i.cq = add nuw nsw i64 %i.cl, 60               ; 2 uses
  %.val477 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val477, i64 %i.cq
  store i32 319, ptr %i.cr, align 1
  %i.cs = add nuw nsw i64 %i.cl, 56               ; 2 uses
  %.val476 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val476, i64 %i.cs
  store i32 1, ptr %i.ct, align 1
  %i.cu = add i32 %i.b, -12
  %i.cv = add i32 %i.b, -20
  %i.cw = add i32 %i.b, -24
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.cu, i32 noundef %.0, i32 noundef %2, i32 noundef 65, i32 noundef %i.cv, i32 noundef %.0442, i32 noundef %i.cw) #8
  %.val510 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.cl
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 52
  %.0.copyload.i530 = load i8, ptr %i.cy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i530) #8, !srcloc !21
  %.not449 = icmp eq i8 %.0.copyload.i530, 0
  br i1 %.not449, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val475 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val475, i64 %i.cl
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 36
  store i32 319, ptr %i.da, align 1
  %.val474 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val474, i64 %i.cl
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  store i32 1, ptr %i.dc, align 1
  %.val473 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.val473, i64 %i.cq
  store i32 319, ptr %i.dd, align 1
  %.val472 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val472, i64 %i.cs
  store i32 1, ptr %i.de, align 1
  %i.df = add i32 %i.b, -16
  %i.dg = add i32 %i.b, -28
  %i.dh = add i32 %i.b, -32
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.df, i32 noundef %.0, i32 noundef %2, i32 noundef 66, i32 noundef %i.dg, i32 noundef %.0443, i32 noundef %i.dh) #8
  %.val509 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val509, i64 %i.cl
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %.0.copyload.i531 = load i8, ptr %i.dj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i531) #8, !srcloc !21
  %.not450 = icmp eq i8 %.0.copyload.i531, 0
  br i1 %.not450, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g, %bb.f
  %i.dk = and i32 %i.x, 8
  %.not455 = icmp eq i32 %i.dk, 0
  br i1 %.not455, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = zext i32 %i.c to i64                    ; 5 uses
  %.val471 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val471, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 319, ptr %i.dn, align 1
  %.val470 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val470, i64 %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 1, ptr %i.dp, align 1
  %.val469 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val469, i64 %i.dl
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 60
  store i32 319, ptr %i.dr, align 1
  %.val468 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val468, i64 %i.dl
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  store i32 1, ptr %i.dt, align 1
  %i.du = add i32 %i.b, -12
  %i.dv = add i32 %i.b, -52
  %7 = and i32 %i.x, 1
  %.not456 = icmp eq i32 %7, 0
  %8 = select i1 %.not456, i32 70424, i32 70416
  %i.dw = add i32 %i.b, -56
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.du, i32 noundef %.0, i32 noundef %2, i32 noundef 63, i32 noundef %i.dv, i32 noundef %8, i32 noundef %i.dw) #8
  %.val508 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val508, i64 %i.dl
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 52
  %.0.copyload.i532 = load i8, ptr %i.dy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i532) #8, !srcloc !21
  %.not457 = icmp eq i8 %.0.copyload.i532, 0
  br i1 %.not457, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dz = zext i32 %1 to i64
  br label %bb.y

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.ea = and i32 %i.x, 32
  %.not458 = icmp eq i32 %i.ea, 0
  br i1 %.not458, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = zext i32 %i.c to i64                    ; 5 uses
  %.val466 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.val466, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 319, ptr %i.ed, align 1
  %.val465 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val465, i64 %i.eb
  store i32 1, ptr %i.ee, align 1
  %.val464 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val464, i64 %i.eb
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 60
  store i32 319, ptr %i.eg, align 1
  %.val463 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.val463, i64 %i.eb
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  store i32 1, ptr %i.ei, align 1
  %i.ej = add i32 %i.b, -12
  %i.ek = add i32 %i.b, -60
  %9 = and i32 %i.x, 4
  %.not459 = icmp eq i32 %9, 0
  %10 = select i1 %.not459, i32 70424, i32 70416
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.ej, i32 noundef %.0, i32 noundef %2, i32 noundef 64, i32 noundef %i.ek, i32 noundef %10, i32 noundef %i.c) #8
  %.val507 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val507, i64 %i.eb
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 52
  %.0.copyload.i533 = load i8, ptr %i.em, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i533) #8, !srcloc !21
  %.not460 = icmp eq i8 %.0.copyload.i533, 0
  br i1 %.not460, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.en = zext i32 %1 to i64
  br label %bb.y

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.eo = zext i32 %.0 to i64
  %.val506 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val506, i64 %i.eo
  %.0.copyload.i534 = load i64, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i534) #8, !srcloc !20
  %i.eq = zext i32 %1 to i64                      ; 2 uses
  %.val502 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val502, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i64 %.0.copyload.i534, ptr %i.es, align 1
  br label %bb.y

bb.x:                                             ; preds = %bb.p, %bb.o
  %i.et = zext i32 %1 to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.s, %bb.h
  %.sink536 = phi i64 [ %i.et, %bb.x ], [ %i.eq, %bb.w ], [ %i.en, %bb.v ], [ %i.dz, %bb.s ], [ %i.az, %bb.h ]
  %.sink = phi i32 [ 0, %bb.x ], [ 1, %bb.w ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %bb.h ]
  %.val = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val, i64 %.sink536
  store i32 %.sink, ptr %i.eu, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AflattenIntoArray0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSArray0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20long0x20long0x2C0x20double0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, double noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 22 uses
  %i.c = add i32 %i.b, -320                       ; 5 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = add i32 %2, 5616
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 76 uses
  %i.f = zext i32 %i.d to i64
  %.val713 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val713, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.h = zext i32 %2 to i64                       ; 3 uses
  %i.i = add nuw nsw i64 %i.h, 5612               ; 2 uses
  %.val712 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val712, i64 %i.i
  %.0.copyload.i744 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i744) #8, !srcloc !19
  %i.k = sub i32 %.0.copyload.i744, %i.c
  %.not = icmp ult i32 %.0.copyload.i, %i.k
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = zext i32 %i.c to i64
  %.pre774 = add i32 %i.b, -176
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %i.b, -176                       ; 2 uses
  %i.m = add i32 %2, 5620
  %i.n = zext i32 %i.m to i64
  %.val711 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val711, i64 %i.n
  %.0.copyload.i745 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i745) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Aoscompat0x3A0x3Athread_stack_bounds0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %.0.copyload.i745) #8
  %i.p = zext i32 %i.c to i64                     ; 3 uses
  %.val710 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val710, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %.0.copyload.i746 = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i746) #8, !srcloc !19
  %.val694 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val694, i64 %i.i
  store i32 %.0.copyload.i746, ptr %i.s, align 1
  %.val709 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val709, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 148
  %.0.copyload.i747 = load i32, ptr %i.u, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i747) #8, !srcloc !19
  %.val693 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 5616
  store i32 %.0.copyload.i747, ptr %i.w, align 1
  %i.x = sub i32 %.0.copyload.i746, %i.c
  %.not647 = icmp ugt i32 %i.x, %.0.copyload.i747
  br i1 %.not647, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseStackOverflow0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AStackOverflowKind0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 1) #8
  %i.z = zext i32 %1 to i64
  %.val692 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.z
  store i32 %i.y, ptr %i.aa, align 1
  br label %bb.al

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi775 = phi i32 [ %.pre774, %._crit_edge ], [ %i.l, %bb.b ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.p, %bb.b ] ; 34 uses
  %.val691 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val691, i64 %.pre-phi
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  store i32 %2, ptr %i.ac, align 1
  %i.ad = add nuw nsw i64 %i.h, 4                 ; 3 uses
  %.val708 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val708, i64 %i.ad
  %.0.copyload.i748 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i748) #8, !srcloc !19
  %i.af = add i32 %i.b, -28                       ; 2 uses
  %i.ag = add i32 %i.b, -168                      ; 4 uses
  %i.ah = zext i32 %i.af to i64
  %.val690 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val690, i64 %i.ah
  store i32 %i.ag, ptr %i.ai, align 1
  %.val729 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val729, i64 %.pre-phi
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 284
  store i64 17179869185, ptr %i.ak, align 1
  %i.al = add nuw nsw i64 %.pre-phi, 280          ; 2 uses
  %.val689 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.al
  store i32 %i.af, ptr %i.am, align 1
  %.val688 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val688, i64 %.pre-phi
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 148
  store i32 %.0.copyload.i748, ptr %i.ao, align 1
  %i.ap = add nuw nsw i64 %.pre-phi, 316          ; 3 uses
  %.val687 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val687, i64 %i.ap
  store i32 0, ptr %i.aq, align 1
  %i.ar = add i32 %i.b, -40
  %i.as = add nuw nsw i64 %.pre-phi, 312          ; 2 uses
  %.val686 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.as
  store i32 %i.ar, ptr %i.at, align 1
  %.val685 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val685, i64 %i.ad
  store i32 %.pre-phi775, ptr %i.au, align 1
  %i.av = add i32 %i.b, -160                      ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.val728 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val728, i64 %i.aw
  store i64 -1266636858327041, ptr %i.ax, align 1
  %i.ay = add i32 %i.b, -152                      ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %.val727 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val727, i64 %i.az
  store i64 -281474976710656, ptr %i.ba, align 1
  %i.bb = add i32 %i.b, -144                      ; 5 uses
  %i.bc = zext i32 %i.bb to i64
  %.val726 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val726, i64 %i.bc
  store i64 -1688849860263936, ptr %i.bd, align 1
  %i.be = add nuw nsw i64 %.pre-phi, 152          ; 3 uses
  %.val725 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val725, i64 %i.be
  store i64 -1688849860263936, ptr %i.bf, align 1
  %.val684 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val684, i64 %.pre-phi
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 140
  store i32 %i.av, ptr %i.bh, align 1
  %i.bi = add i32 %i.b, -136
  %i.bj = add nuw nsw i64 %.pre-phi, 308          ; 3 uses
  %.val683 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val683, i64 %i.bj
  store i32 %i.bi, ptr %i.bk, align 1
  %i.bl = add nuw nsw i64 %.pre-phi, 136          ; 2 uses
  %.val682 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val682, i64 %i.bl
  store i32 %i.ay, ptr %i.bm, align 1
  %.val707 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val707, i64 %i.ad
  %.0.copyload.i749 = load i32, ptr %i.bn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i749) #8, !srcloc !19
  %i.bo = zext i32 %.0.copyload.i749 to i64       ; 2 uses
  %i.bp = add nuw nsw i64 %i.bo, 164              ; 2 uses
  %.val706 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val706, i64 %i.bp
  %.0.copyload.i750 = load i32, ptr %i.bq, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i750) #8, !srcloc !19
  %.val705 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val705, i64 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 168
  %.0.copyload.i751 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i751) #8, !srcloc !19
  %i.bt = icmp ult i32 %.0.copyload.i750, %.0.copyload.i751
  br i1 %i.bt, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AobjectFreeze0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 168
  %.0.copyload.i652 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i652) #8, !srcloc !19
  %i.bk = icmp ult i32 %.0.copyload.i651, %.0.copyload.i652
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bl = add i32 %.0.copyload.i651, 8
  %.val573 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val573, i64 %i.bg
  store i32 %i.bl, ptr %i.bm, align 1
  %i.bn = zext i32 %.0.copyload.i651 to i64       ; 2 uses
  %.val623 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val623, i64 %i.bn
  store i64 %i.bb, ptr %i.bo, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bp = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i650, i64 noundef %i.bb) #8 ; 2 uses
  %.pre = zext i32 %i.bp to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi = phi i64 [ %.pre, %bb.n ], [ %i.bn, %bb.m ] ; 3 uses
  %.0534 = phi i32 [ %i.bp, %bb.n ], [ %.0.copyload.i651, %bb.m ]
  %i.bq = load i32, ptr %i.w, align 8, !tbaa !17  ; 4 uses
  %i.br = add i32 %i.bq, -16                      ; 2 uses
  store i32 %i.br, ptr %i.w, align 8, !tbaa !17
  %.val609 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val609, i64 %.pre-phi
  %.0.copyload.i653 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i653) #8, !srcloc !19
  %i.bt = zext i32 %.0.copyload.i653 to i64
  %.val608 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val608, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.0.copyload.i654 = load i32, ptr %i.bv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i654) #8, !srcloc !19
  %.not552 = icmp eq i32 %.0.copyload.i654, 0
  br i1 %.not552, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHiddenClass0x3A0x3AinitializeMissingPropertyMap0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr noundef nonnull %0, i32 noundef %.0534, i32 noundef %3) #8
  %.val607 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val607, i64 %.pre-phi
  %.0.copyload.i655 = load i32, ptr %i.bw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i655) #8, !srcloc !19
  %i.bx = zext i32 %.0.copyload.i655 to i64
  %.val606 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val606, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.0.copyload.i656 = load i32, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i656) #8, !srcloc !19
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0 = phi i32 [ %.0.copyload.i656, %bb.p ], [ %.0.copyload.i654, %bb.o ]
  %i.ca = zext i32 %.0 to i64
  %i.cb = or disjoint i64 %i.ca, -281474976710656 ; 2 uses
  %.val605 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val605, i64 %i.bd
  %.0.copyload.i657 = load i32, ptr %i.cc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i657) #8, !srcloc !19
  %i.cd = zext i32 %.0.copyload.i657 to i64       ; 2 uses
  %i.ce = add nuw nsw i64 %i.cd, 164              ; 2 uses
  %.val604 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val604, i64 %i.ce
  %.0.copyload.i658 = load i32, ptr %i.cf, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i658) #8, !srcloc !19
  %.val603 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val603, i64 %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 168
  %.0.copyload.i659 = load i32, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i659) #8, !srcloc !19
  %i.ci = icmp ult i32 %.0.copyload.i658, %.0.copyload.i659
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cj = add i32 %.0.copyload.i658, 8
  %.val572 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val572, i64 %i.ce
  store i32 %i.cj, ptr %i.ck, align 1
  %i.cl = zext i32 %.0.copyload.i658 to i64
  %.val622 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val622, i64 %i.cl
  store i64 %i.cb, ptr %i.cm, align 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cn = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i657, i64 noundef %i.cb) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0531 = phi i32 [ %.0.copyload.i658, %bb.r ], [ %i.cn, %bb.s ]
  %.val633 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val633, i64 %.pre-phi
  %.0.copyload.i660 = load i32, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i660) #8, !srcloc !23
  %i.cp = zext i32 %.0.copyload.i660 to i64
  %i.cq = or disjoint i64 %i.cp, -281474976710656 ; 2 uses
  %.val602 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val602, i64 %i.bd
  %.0.copyload.i661 = load i32, ptr %i.cr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i661) #8, !srcloc !19
  %i.cs = zext i32 %.0.copyload.i661 to i64       ; 2 uses
  %i.ct = add nuw nsw i64 %i.cs, 164              ; 2 uses
  %.val601 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val601, i64 %i.ct
  %.0.copyload.i662 = load i32, ptr %i.cu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i662) #8, !srcloc !19
  %.val600 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val600, i64 %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 168
  %.0.copyload.i663 = load i32, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i663) #8, !srcloc !19
  %i.cx = icmp ult i32 %.0.copyload.i662, %.0.copyload.i663
  br i1 %i.cx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cy = add i32 %.0.copyload.i662, 8
  %.val571 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val571, i64 %i.ct
  store i32 %i.cy, ptr %i.cz, align 1
  %i.da = zext i32 %.0.copyload.i662 to i64
  %.val621 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val621, i64 %i.da
  store i64 %i.cq, ptr %i.db, align 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dc = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i661, i64 noundef %i.cq) #8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0532 = phi i32 [ %.0.copyload.i662, %bb.u ], [ %i.dc, %bb.v ] ; 3 uses
  %.val599 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.val599, i64 %i.bd
  %.0.copyload.i664 = load i32, ptr %i.dd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i664) #8, !srcloc !19
  %i.de = zext i32 %.0.copyload.i664 to i64       ; 6 uses
  %i.df = add nuw nsw i64 %i.de, 172              ; 3 uses
  %.val598 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.val598, i64 %i.df
  %.0.copyload.i665 = load i32, ptr %i.dg, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i665) #8, !srcloc !19
  %i.dh = add nuw nsw i64 %i.de, 164              ; 3 uses
  %.val597 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val597, i64 %i.dh
  %.0.copyload.i666 = load i32, ptr %i.di, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i666) #8, !srcloc !19
  %i.dj = zext i32 %.0531 to i64                  ; 2 uses
  %.val596 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val596, i64 %i.dj
  %.0.copyload.i667 = load i32, ptr %i.dk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i667) #8, !srcloc !19
  %i.dl = zext i32 %.0.copyload.i667 to i64
  %.val595 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val595, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %.0.copyload.i668 = load i32, ptr %i.dn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i668) #8, !srcloc !19
  %.not553 = icmp eq i32 %.0.copyload.i668, 0
  %.pre691 = shl i32 %.0.copyload.i665, 2         ; 2 uses
  br i1 %.not553, label %..loopexit_crit_edge, label %bb.x

..loopexit_crit_edge:                             ; preds = %bb.w
  %.pre693 = zext i32 %.0532 to i64
  br label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.do = add i32 %i.bq, -8
  %i.dp = zext i32 %.0532 to i64                  ; 3 uses
  %i.dq = zext i32 %i.br to i64                   ; 4 uses
  %i.dr = add i32 %i.bq, -12
  br label %bb.y

bb.y:                                             ; preds = %bb.ae, %bb.x
  %.0530 = phi i32 [ 0, %bb.x ], [ %i.fm, %bb.ae ] ; 2 uses
  %.val594 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val594, i64 %i.dj
  %.0.copyload.i669 = load i32, ptr %i.ds, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i669) #8, !srcloc !19
  %i.dt = mul i32 %.0530, 12
  %i.du = add i32 %i.dt, 28
  %i.dv = add i32 %i.du, %.0.copyload.i669
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %.val593 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val593, i64 %i.dw
  %.0.copyload.i670 = load i32, ptr %i.dx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i670) #8, !srcloc !19
  %i.dy = icmp ult i32 %.0.copyload.i670, 536870910
  br i1 %i.dy, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %.val635 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val635, i64 %i.dw
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %.0.copyload.i671 = load i16, ptr %i.ea, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i671) #8, !srcloc !24
  %i.eb = zext i16 %.0.copyload.i671 to i32       ; 3 uses
  %5 = and i32 %i.eb, 16
  %.not554 = icmp eq i32 %5, 0
  %6 = select i1 %.not554, i32 65523, i32 65527
  %i.ec = and i32 %6, %i.eb                       ; 2 uses
  %.not555 = icmp eq i32 %i.ec, %i.eb
  br i1 %.not555, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val592 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val592, i64 %i.dp
  %.0.copyload.i672 = load i32, ptr %i.ed, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i672) #8, !srcloc !19
  %i.ee = zext i32 %.0.copyload.i672 to i64
  %.val591 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val591, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %.0.copyload.i673 = load i32, ptr %i.eg, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i673) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADictPropertyMap0x3A0x3AlookupEntryFor0x28hermes0x3A0x3Avm0x3A0x3ADictPropertyMap0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.do, i32 noundef %.0.copyload.i673, i32 noundef %.0.copyload.i670) #8
  %.val629 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.val629, i64 %i.dq
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.0.copyload.i674 = load i8, ptr %i.ei, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i674) #8, !srcloc !21
  %.not556 = icmp eq i8 %.0.copyload.i674, 0
  br i1 %.not556, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val590 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val590, i64 %i.dq
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %.0.copyload.i675 = load i32, ptr %i.ek, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i675) #8, !srcloc !19
  %i.el = zext i32 %.0.copyload.i673 to i64
  %.val589 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %.val589, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %.0.copyload.i676 = load i32, ptr %i.en, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i676) #8, !srcloc !19
  %.neg = mul i32 %.0.copyload.i676, -12
  %reass.sub = sub i32 %.0.copyload.i675, %.0.copyload.i673
  %i.eo = add i32 %reass.sub, -28
  %i.ep = add i32 %i.eo, %.neg
  %i.eq = ashr i32 %i.ep, 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.1 = phi i32 [ %i.eq, %bb.ab ], [ 0, %bb.aa ]
  %.val637 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.er = trunc nuw i32 %i.ec to i16              ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val637, i64 %i.dq
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 6
  store i16 %i.er, ptr %i.et, align 1
  %.val636 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val636, i64 %i.dq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i16 %i.er, ptr %i.ev, align 1
  %i.ew = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHiddenClass0x3A0x3AupdateProperty0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ADictPropertyMap0x3A0x3APropertyPos0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyFlags0x29(ptr noundef nonnull %0, i32 noundef %.0532, i32 noundef %3, i32 noundef %.1, i32 noundef %i.dr) #8
  %i.ex = zext i32 %i.ew to i64
  %.val632 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val632, i64 %i.ex
  %.0.copyload.i677 = load i32, ptr %i.ey, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i677) #8, !srcloc !23
  %i.ez = zext i32 %.0.copyload.i677 to i64
  %i.fa = or disjoint i64 %i.ez, -281474976710656
  %.val620 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %.val620, i64 %i.dp
  store i64 %i.fa, ptr %i.fb, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.val588 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %.val588, i64 %i.de
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 136
  %.0.copyload.i678 = load i32, ptr %i.fd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i678) #8, !srcloc !19
  %i.fe = add i32 %.0.copyload.i678, %.pre691
  %i.ff = zext i32 %i.fe to i64
  %.val587 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val587, i64 %i.ff
  %.0.copyload.i679 = load i32, ptr %i.fg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i679) #8, !srcloc !19
  %.val570 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val570, i64 %i.df
  store i32 %.0.copyload.i665, ptr %i.fh, align 1
  %.val569 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %.val569, i64 %i.dh
  store i32 %.0.copyload.i666, ptr %i.fi, align 1
  %i.fj = add i32 %.0.copyload.i679, 128
  %.val568 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val568, i64 %i.de
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 168
  store i32 %i.fj, ptr %i.fl, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %i.fm = add nuw i32 %.0530, 1                   ; 2 uses
  %.not557 = icmp eq i32 %i.fm, %.0.copyload.i668
  br i1 %.not557, label %.loopexit, label %bb.y

.loopexit:                                        ; preds = %bb.ae, %..loopexit_crit_edge
  %.pre-phi694 = phi i64 [ %.pre693, %..loopexit_crit_edge ], [ %i.dp, %bb.ae ]
  %.val586 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %.val586, i64 %i.de
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 136
  %.0.copyload.i680 = load i32, ptr %i.fo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i680) #8, !srcloc !19
  %i.fp = add i32 %.0.copyload.i680, %.pre691
  %i.fq = zext i32 %i.fp to i64
  %.val585 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %.val585, i64 %i.fq
  %.0.copyload.i681 = load i32, ptr %i.fr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i681) #8, !srcloc !19
  %.val567 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %.val567, i64 %i.df
  store i32 %.0.copyload.i665, ptr %i.fs, align 1
  %.val566 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %.val566, i64 %i.dh
  store i32 %.0.copyload.i666, ptr %i.ft, align 1
  %i.fu = add i32 %.0.copyload.i681, 128
  %.val565 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %.val565, i64 %i.de
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 168
  store i32 %i.fu, ptr %i.fw, align 1
  store i32 %i.bq, ptr %i.w, align 8, !tbaa !17
  %.val584 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %.val584, i64 %.pre-phi694
  %.0.copyload.i682 = load i32, ptr %i.fx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i682) #8, !srcloc !19
  %i.fy = add i32 %3, 1364
  %i.fz = zext i32 %i.fy to i64
  %.val583 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %.val583, i64 %i.fz
  %.0.copyload.i683 = load i32, ptr %i.ga, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i683) #8, !srcloc !19
  %.val582 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val582, i64 %i.z
  %.0.copyload.i684 = load i32, ptr %i.gb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i684) #8, !srcloc !19
  %i.gc = add i32 %.0.copyload.i684, 12           ; 3 uses
  %i.gd = and i32 %i.gc, -4194304
  %.not558 = icmp eq i32 %.0.copyload.i683, %i.gd
  br i1 %.not558, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %i.ge = add i32 %3, 816
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AwriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCPointerBase0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCCell0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.ge, i32 noundef %i.gc, i32 noundef %.0.copyload.i682) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit
  %i.gf = zext i32 %i.gc to i64
  %.val564 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val564, i64 %i.gf
  store i32 %.0.copyload.i682, ptr %i.gg, align 1
  %.val581 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.val581, i64 %i.z
  %.0.copyload.i685 = load i32, ptr %i.gh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i685) #8, !srcloc !19
  %i.gi = zext i32 %.0.copyload.i685 to i64
  %i.gj = add nuw nsw i64 %i.gi, 4                ; 2 uses
  %.val580 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.gk = getelementptr inbounds nuw i8, ptr %.val580, i64 %i.gj
  %.0.copyload.i686 = load i32, ptr %i.gk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i686) #8, !srcloc !19
  %i.gl = or i32 %.0.copyload.i686, 4
  %.val563 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %.val563, i64 %i.gj
  store i32 %i.gl, ptr %i.gm, align 1
  %.val579 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val579, i64 %i.z
  %.0.copyload.i687 = load i32, ptr %i.gn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i687) #8, !srcloc !19
  %i.go = zext i32 %.0.copyload.i687 to i64
  %i.gp = add nuw nsw i64 %i.go, 4                ; 2 uses
  %.val578 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val578, i64 %i.gp
  %.0.copyload.i688 = load i32, ptr %i.gq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i688) #8, !srcloc !19
  %i.gr = or i32 %.0.copyload.i688, 2
  %.val562 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %.val562, i64 %i.gp
  store i32 %i.gr, ptr %i.gs, align 1
  br label %.critedge

bb.ah:                                            ; preds = %bb.j
  store i32 %i.x, ptr %i.w, align 8, !tbaa !17
  %i.gt = zext i32 %1 to i64
  br label %bb.ai

.critedge:                                        ; preds = %bb.ag, %bb.k
  store i32 %i.x, ptr %i.w, align 8, !tbaa !17
  %.val625 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val625, i64 %i.z
  %.0.copyload.i689 = load i64, ptr %i.gu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i689) #8, !srcloc !20
  %i.gv = zext i32 %1 to i64                      ; 2 uses
  %.val619 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.val619, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 %.0.copyload.i689, ptr %i.gx, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge, %bb.ah, %bb.g
  %.sink698 = phi i64 [ %i.gv, %.critedge ], [ %i.gt, %bb.ah ], [ %i.t, %bb.g ]
end_hunk_1
