Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_3?download=true
inline.NumInlined: 12272
inline.NumDeleted: 21
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AisExtensible0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29:bb.a
bb.p:                                             ; preds = %bb.o
  %i.ed = zext i32 %.1 to i64
  %.val457 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %.val457, i64 %i.ed
  %.0.copyload.i529 = load i32, ptr %i.ee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i529) #8, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AisExtensible0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i529, i32 noundef %3)
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.ef = add i32 %i.ae, -192
  %i.eg = zext i32 %.1 to i64                     ; 2 uses
  %.val495 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eh = getelementptr inbounds nuw i8, ptr %.val495, i64 %i.eg
  %.0.copyload.i530 = load i64, ptr %i.eh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i530) #8, !srcloc !22
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallable0x3A0x3AexecuteCall10x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.ef, i32 noundef %i.dq, i32 noundef %3, i32 noundef %.1443, i64 noundef %.0.copyload.i530, i32 noundef 0)
  %.val456 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %.val456, i64 %i.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %.0.copyload.i531 = load i32, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i531) #8, !srcloc !13
  %.not452 = icmp eq i32 %.0.copyload.i531, 0
  br i1 %.not452, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ek = zext i32 %1 to i64                      ; 2 uses
  %.val498 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.el = getelementptr inbounds nuw i8, ptr %.val498, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %.0.copyload.i532 = load i8, ptr %i.em, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i532) #8, !srcloc !21
  %i.en = zext i8 %.0.copyload.i532 to i16
  %i.eo = shl nuw i16 %i.en, 8
  %.val506 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %.val506, i64 %i.ek
  store i16 %i.eo, ptr %i.ep, align 1
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %.val494 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eq = getelementptr inbounds nuw i8, ptr %.val494, i64 %i.ag
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %.0.copyload.i533 = load i64, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i533) #8, !srcloc !22
  %i.es = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoBoolean0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i64 noundef %.0.copyload.i533) #8 ; 2 uses
  %i.et = add i32 %i.ae, -196
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.eg
  %.0.copyload.i534 = load i32, ptr %i.eu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i534) #8, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AisExtensible0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr noundef nonnull %0, i32 noundef %i.et, i32 noundef %.0.copyload.i534, i32 noundef %3)
  %.val510 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.ag
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 44
  %.0.copyload.i535 = load i16, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i535) #8, !srcloc !36
  %i.ex = zext i16 %.0.copyload.i535 to i32       ; 2 uses
  %i.ey = and i32 %i.ex, 255
  %.not453 = icmp eq i32 %i.ey, 0
  br i1 %.not453, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ez = zext i32 %1 to i64                      ; 2 uses
  %.val497 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %.val497, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %.0.copyload.i536 = load i8, ptr %i.fb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i536) #8, !srcloc !21
  %i.fc = zext i8 %.0.copyload.i536 to i16
  %i.fd = shl nuw i16 %i.fc, 8
  %.val505 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fe = getelementptr inbounds nuw i8, ptr %.val505, i64 %i.ez
  store i16 %i.fd, ptr %i.fe, align 1
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.ff = lshr i32 %i.ex, 8
  %i.fg = and i32 %i.ff, 1
  %.not454 = icmp eq i32 %i.fg, %i.es
  br i1 %.not454, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val474 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fh = getelementptr inbounds nuw i8, ptr %.val474, i64 %i.ag
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store i32 0, ptr %i.fi, align 1
  %.val488 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fj = getelementptr inbounds nuw i8, ptr %.val488, i64 %i.ag
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store i64 231928233985, ptr %i.fk, align 1
  %.val473 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %.val473, i64 %i.ag
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i32 3, ptr %i.fm, align 1
  %.val472 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fn = getelementptr inbounds nuw i8, ptr %.val472, i64 %i.ag
  store i32 29087, ptr %i.fn, align 1
  %i.fo = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.af) #8
  %i.fp = zext i32 %1 to i64
  %.val493 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fq = trunc i32 %i.fo to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %.val493, i64 %i.fp
  store i8 %i.fq, ptr %i.fr, align 1
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.fs = zext i32 %1 to i64                      ; 2 uses
  %.val509 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %.val509, i64 %i.fs
  %.0.copyload.i537 = load i16, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i537) #8, !srcloc !36
  %i.fu = and i16 %.0.copyload.i537, -512
  %.not455 = icmp eq i32 %i.es, 0
  %i.fv = select i1 %.not455, i16 1, i16 257
  %i.fw = or disjoint i16 %i.fu, %i.fv
  %.val504 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fx = getelementptr inbounds nuw i8, ptr %.val504, i64 %i.fs
  store i16 %i.fw, ptr %i.fx, align 1
  br label %bb.y

bb.x:                                             ; preds = %bb.e
  %i.fy = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseStackOverflow0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AStackOverflowKind0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1) #8
  %i.fz = zext i32 %1 to i64
  %.val492 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ga = trunc i32 %i.fy to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %.val492, i64 %i.fz
  store i8 %i.ga, ptr %i.gb, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n
  %i.gc = zext i32 %i.bc to i64                   ; 4 uses
  %.val64.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %.val64.i, i64 %i.gc
  %.0.copyload.i.i538 = load i32, ptr %i.gd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i538) #8, !srcloc !13
  %.val63.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %.val63.i, i64 %i.gc
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %.0.copyload.i66.i = load i32, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i66.i) #8, !srcloc !13
  %i.gg = zext i32 %.0.copyload.i.i538 to i64
  %.val65.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gh = getelementptr inbounds nuw i8, ptr %.val65.i, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %.0.copyload.i66.i, ptr %i.gi, align 1
  %i.gj = add nuw nsw i64 %i.gc, 136              ; 2 uses
  %.val62.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gk = getelementptr inbounds nuw i8, ptr %.val62.i, i64 %i.gj
  %.0.copyload.i67.i = load i32, ptr %i.gk, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i67.i) #8, !srcloc !13
  %.val61.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gl = getelementptr inbounds nuw i8, ptr %.val61.i, i64 %i.gc
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 140
  %.0.copyload.i68.i = load i32, ptr %i.gm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i68.i) #8, !srcloc !13
  %.not.i = icmp eq i32 %.0.copyload.i68.i, 1
  br i1 %.not.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gn = shl i32 %.0.copyload.i68.i, 2
  %i.go = add i32 %i.gn, %.0.copyload.i67.i
  %i.gp = add i32 %.0.copyload.i67.i, 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.0.i539 = phi i32 [ %i.gp, %bb.z ], [ %i.gs, %bb.aa ] ; 2 uses
  %i.gq = zext i32 %.0.i539 to i64
  %.val60.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gr = getelementptr inbounds nuw i8, ptr %.val60.i, i64 %i.gq
  %.0.copyload.i69.i = load i32, ptr %i.gr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i69.i) #8, !srcloc !13
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i69.i) #8
  %i.gs = add i32 %.0.i539, 4                     ; 2 uses
  %.not58.i = icmp eq i32 %i.gs, %i.go
  br i1 %.not58.i, label %bb.ab, label %bb.aa

bb.ab:                                            ; preds = %bb.aa
  %.val.i540 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gt = getelementptr inbounds nuw i8, ptr %.val.i540, i64 %i.gj
  %.0.copyload.i70.i = load i32, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i70.i) #8, !srcloc !13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.1.i = phi i32 [ %.0.copyload.i70.i, %bb.ab ], [ %.0.copyload.i67.i, %bb.y ] ; 2 uses
  %.not59.i = icmp eq i32 %i.al, %.1.i
  br i1 %.not59.i, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.1.i) #8
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29.exit

bb.ae:                                            ; preds = %bb.a
  %i.gu = zext i32 %1 to i64                      ; 2 uses
  %.val508 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gv = getelementptr inbounds nuw i8, ptr %.val508, i64 %i.gu
  %.0.copyload.i541 = load i16, ptr %i.gv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i541) #8, !srcloc !36
  %i.gw = and i16 %.0.copyload.i541, -512
  %4 = and i32 %.0.copyload.i, 1
  %.not447 = icmp eq i32 %4, 0
  %5 = select i1 %.not447, i16 257, i16 1
  %i.gx = or disjoint i16 %i.gw, %5
  %.val503 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gy = getelementptr inbounds nuw i8, ptr %.val503, i64 %i.gu
  store i16 %i.gx, ptr %i.gy, align 1
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29.exit: ; preds = %bb.ad, %bb.ac, %bb.ae
  store i32 %i.b, ptr %i.a, align 8, !tbaa !19
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoBoolean0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetOwnPropertyKeys0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AOwnKeysFlags0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 26 uses
  %i.c = add i32 %i.b, -224                       ; 4 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 494 uses
  %i.e = zext i32 %1 to i64                       ; 8 uses
  %.val4699 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val4699, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.g = zext i32 %.0.copyload.i to i64           ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 4                  ; 2 uses
  %.val4698 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %.val4698, i64 %i.h
  %.0.copyload.i4921 = load i32, ptr %i.i, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4921) #8, !srcloc !13
  %i.j = and i32 %.0.copyload.i4921, 192
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.gf, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %.0.copyload.i4921, 128
  %.not4298 = icmp eq i32 %i.k, 0
  %.val4742 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  br i1 %.not4298, label %bb.ge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext i32 %3 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.val4742, i64 %i.l
  %.0.copyload.i4922 = load i32, ptr %i.m, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4922) #8, !srcloc !13
  %i.n = zext i32 %i.c to i64                     ; 3 uses
  %i.o = add nuw nsw i64 %i.n, 36                 ; 5 uses
  %.val4836 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val4836, i64 %i.o
  store i32 %.0.copyload.i4922, ptr %i.p, align 1
  %.val4835 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.val4835, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 196
  store i32 %.0.copyload.i4922, ptr %i.r, align 1
  %i.s = load i32, ptr %i.a, align 8, !tbaa !19   ; 38 uses
  %i.t = add i32 %i.s, -480                       ; 5 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !19
  %i.u = zext i32 %i.t to i64                     ; 59 uses
  %.val4834 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val4834, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store i32 %2, ptr %i.w, align 1
  %i.x = zext i32 %2 to i64                       ; 4 uses
  %i.y = add nuw nsw i64 %i.x, 4                  ; 13 uses
  %.val4696 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %.val4696, i64 %i.y
  %.0.copyload.i4923 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4923) #8, !srcloc !13
  %i.aa = add i32 %i.s, -244                      ; 3 uses
  %i.ab = add i32 %i.s, -384                      ; 3 uses
  %i.ac = zext i32 %i.aa to i64
  %.val4833 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4833, i64 %i.ac
  store i32 %i.ab, ptr %i.ad, align 1
  %.val4874 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4874, i64 %i.u
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 228
  store i64 17179869185, ptr %i.af, align 1
  %.val4832 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4832, i64 %i.u
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 224
  store i32 %i.aa, ptr %i.ah, align 1
  %.val4831 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %.val4831, i64 %i.u
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 92
  store i32 %.0.copyload.i4923, ptr %i.aj, align 1
  %.val4830 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4830, i64 %i.u
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 260
  store i32 0, ptr %i.al, align 1
  %i.am = add i32 %i.s, -256                      ; 2 uses
  %.val4829 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %.val4829, i64 %i.u
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 256
  store i32 %i.am, ptr %i.ao, align 1
  %.val4828 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.val4828, i64 %i.u
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 252
  store i32 %i.ab, ptr %i.aq, align 1
  %i.ar = add i32 %i.s, -392                      ; 3 uses
  %.val4827 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %.val4827, i64 %i.y
  store i32 %i.ar, ptr %i.as, align 1
  %i.at = add i32 %2, 5616
  %i.au = zext i32 %i.at to i64
  %.val4695 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %.val4695, i64 %i.au
  %.0.copyload.i4924 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4924) #8, !srcloc !13
  %i.aw = add nuw nsw i64 %i.x, 5612              ; 2 uses
  %.val4694 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %.val4694, i64 %i.aw
  %.0.copyload.i4925 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4925) #8, !srcloc !13
  %i.ay = sub i32 %.0.copyload.i4925, %i.t
  %i.az = icmp ult i32 %.0.copyload.i4924, %i.ay
  br i1 %i.az, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ba = add i32 %i.s, -176
  %i.bb = add i32 %2, 5620
  %i.bc = zext i32 %i.bb to i64
  %.val4693 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.val4693, i64 %i.bc
  %.0.copyload.i4926 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4926) #8, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Aoscompat0x3A0x3Athread_stack_bounds0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.ba, i32 noundef %.0.copyload.i4926) #8
  %.val4692 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %.val4692, i64 %i.u
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 304
  %.0.copyload.i4927 = load i32, ptr %i.bf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4927) #8, !srcloc !13
  %.val4826 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.val4826, i64 %i.aw
  store i32 %.0.copyload.i4927, ptr %i.bg, align 1
  %.val4691 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.val4691, i64 %i.u
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 308
  %.0.copyload.i4928 = load i32, ptr %i.bi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4928) #8, !srcloc !13
  %.val4825 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %.val4825, i64 %i.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 5616
  store i32 %.0.copyload.i4928, ptr %i.bk, align 1
  %i.bl = sub i32 %.0.copyload.i4927, %i.t
  %i.bm = icmp ugt i32 %i.bl, %.0.copyload.i4928
  br i1 %i.bm, label %bb.bm, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val4690 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.val4690, i64 %i.y
  %.0.copyload.i4929 = load i32, ptr %i.bn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4929) #8, !srcloc !13
  %i.bo = zext i32 %.0.copyload.i4929 to i64      ; 2 uses
  %.val4689 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %.val4689, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 168
  %.0.copyload.i4930 = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4930) #8, !srcloc !13
  %.val4688 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %.val4688, i64 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 164
  %.0.copyload.i4931 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4931) #8, !srcloc !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.04200 = phi i32 [ %.0.copyload.i4930, %bb.e ], [ %i.am, %bb.c ]
  %.04178 = phi i32 [ %.0.copyload.i4929, %bb.e ], [ %i.ar, %bb.c ] ; 2 uses
  %.04164 = phi i32 [ %.0.copyload.i4931, %bb.e ], [ %i.ab, %bb.c ] ; 4 uses
  %.val4687 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %.val4687, i64 %i.e
  %.0.copyload.i4932 = load i32, ptr %i.bt, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4932) #8, !srcloc !13
  %i.bu = zext i32 %.0.copyload.i4932 to i64
  %.val4901 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %.val4901, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %.0.copyload.i4933 = load i8, ptr %i.bw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4933) #8, !srcloc !21
  %i.bx = icmp eq i8 %.0.copyload.i4933, 66
  %i.by = select i1 %i.bx, i32 %.0.copyload.i4932, i32 0 ; 2 uses
  %i.bz = add i32 %i.by, 20
  %i.ca = icmp eq i8 %.0.copyload.i4933, 71
  %i.cb = add i32 %.0.copyload.i4932, 32
  %i.cc = select i1 %i.ca, i32 %i.cb, i32 32
  %.not4349 = icmp eq i32 %i.by, 0
  %i.cd = select i1 %.not4349, i32 %i.cc, i32 %i.bz
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %.val4905 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %.val4905, i64 %i.ce
  %.0.copyload.i4934 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4934) #8, !srcloc !23
  %i.cg = zext i32 %.0.copyload.i4934 to i64
  %i.ch = or disjoint i64 %i.cg, -281474976710656 ; 2 uses
  %i.ci = icmp ugt i32 %.04200, %.04164
  br i1 %i.ci, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cj = add i32 %.04164, 8
  %i.ck = zext i32 %.04178 to i64
  %.val4824 = load ptr, ptr %i.d, align 8, !tbaa !12
end_hunk_0
