Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeSymbolReplace0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %.12918 = phi i32 [ %.0.copyload.i3490, %bb.bm ], [ %i.of, %bb.bn ] ; 2 uses
  %.val3249 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.og = getelementptr inbounds nuw i8, ptr %.val3249, i64 %i.i
  %.0.copyload.i3492 = load i32, ptr %i.og, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3492) #8, !srcloc !19
  %i.oh = zext i32 %.0.copyload.i3492 to i64      ; 2 uses
  %i.oi = add nuw nsw i64 %i.oh, 164              ; 2 uses
  %.val3248 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oj = getelementptr inbounds nuw i8, ptr %.val3248, i64 %i.oi
  %.0.copyload.i3493 = load i32, ptr %i.oj, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3493) #8, !srcloc !19
  %.val3247 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ok = getelementptr inbounds nuw i8, ptr %.val3247, i64 %i.oh
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 168
  %.0.copyload.i3494 = load i32, ptr %i.ol, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3494) #8, !srcloc !19
  %i.om = icmp ult i32 %.0.copyload.i3493, %.0.copyload.i3494
  br i1 %i.om, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.on = add i32 %.0.copyload.i3493, 8
  %.val3107 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oo = getelementptr inbounds nuw i8, ptr %.val3107, i64 %i.oi
  store i32 %i.on, ptr %i.oo, align 1
  %i.op = zext i32 %.0.copyload.i3493 to i64
  %.val3348 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oq = getelementptr inbounds nuw i8, ptr %.val3348, i64 %i.op
  store i64 -1688849860263936, ptr %i.oq, align 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.or = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3492, i64 noundef -1688849860263936) #8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.12922 = phi i32 [ %.0.copyload.i3493, %bb.bp ], [ %i.or, %bb.bq ] ; 2 uses
  %i.os = and i32 %.0.copyload.i3428, 2147483647  ; 3 uses
  %.val3246 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ot = getelementptr inbounds nuw i8, ptr %.val3246, i64 %i.fo
  %.0.copyload.i3495 = load i32, ptr %i.ot, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3495) #8, !srcloc !19
  %i.ou = zext i32 %.0.copyload.i3495 to i64
  %.val3245 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ov = getelementptr inbounds nuw i8, ptr %.val3245, i64 %i.ou
  %.0.copyload.i3496 = load i32, ptr %i.ov, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3496) #8, !srcloc !19
  %i.ow = zext i32 %.0.copyload.i3496 to i64
  %.val3244 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ox = getelementptr inbounds nuw i8, ptr %.val3244, i64 %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  %.0.copyload.i3497 = load i32, ptr %i.oy, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3497) #8, !srcloc !19
  %.not3034 = icmp eq i32 %.0.copyload.i3497, 0
  br i1 %.not3034, label %.loopexit3613, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oz = uitofp nneg i32 %i.os to double         ; 5 uses
  %i.pa = zext i32 %.02935 to i64
  %i.pb = add nuw nsw i64 %i.e, 136               ; 2 uses
  %i.pc = add i32 %i.b, -420
  %i.pd = add nuw nsw i64 %i.e, 88                ; 6 uses
  %i.pe = zext i32 %.12918 to i64
  %i.pf = add i32 %i.b, -312
  %i.pg = add nuw nsw i64 %i.e, 120               ; 2 uses
  %i.ph = add i32 %i.b, -424
  %i.pi = add i32 %i.b, -328
  %i.pj = icmp eq i32 %i.os, 0
  %i.pk = bitcast double %i.oz to i64
  %i.pl = icmp samesign ugt i64 %i.pk, 9218868437227405312
  %i.pm = add nuw nsw i64 %i.h, 1372              ; 2 uses
  %i.pn = add nuw nsw i64 %i.e, 76                ; 5 uses
  %i.po = zext i32 %.12922 to i64
  %i.pp = add i32 %i.b, -372
  %i.pq = add nuw nsw i64 %i.e, 56                ; 6 uses
  %i.pr = add i32 %i.b, -428
  %i.ps = add nuw nsw i64 %i.h, 5596              ; 5 uses
  %i.pt = add nuw nsw i64 %i.h, 5616              ; 2 uses
  %i.pu = add nuw nsw i64 %i.h, 5612              ; 2 uses
  %i.pv = add i32 %i.b, -392                      ; 5 uses
  %i.pw = zext i32 %.02920 to i64
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.pz = load ptr, ptr @w2c_hermes_t2, align 8   ; 4 uses
  %i.qa = icmp ne ptr %i.pz, null
  %i.qb = zext i32 %1 to i64                      ; 4 uses
  %i.qc = add i32 %i.b, -384
  %i.qd = zext i32 %i.qc to i64
  %i.qe = add nuw nsw i64 %i.e, 60                ; 2 uses
  %i.qf = add i32 %i.b, -8
  %i.qg = add i32 %i.b, -296                      ; 2 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.fl, %bb.bs
  %.12945 = phi i32 [ 0, %bb.bs ], [ %.22946, %bb.fl ] ; 8 uses
  %.02914 = phi i32 [ 0, %bb.bs ], [ %i.ake, %bb.fl ] ; 2 uses
  %.02913 = phi i1 [ false, %bb.bs ], [ %i.akf, %bb.fl ]
  %.val3243 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qh = getelementptr inbounds nuw i8, ptr %.val3243, i64 %i.i
  %.0.copyload.i3498 = load i32, ptr %i.qh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3498) #8, !srcloc !19
  %i.qi = zext i32 %.0.copyload.i3498 to i64      ; 4 uses
  %i.qj = add nuw nsw i64 %i.qi, 172              ; 2 uses
  %.val3242 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qk = getelementptr inbounds nuw i8, ptr %.val3242, i64 %i.qj
  %.0.copyload.i3499 = load i32, ptr %i.qk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3499) #8, !srcloc !19
  %i.ql = add nuw nsw i64 %i.qi, 164              ; 2 uses
  %.val3241 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qm = getelementptr inbounds nuw i8, ptr %.val3241, i64 %i.ql
  %.0.copyload.i3500 = load i32, ptr %i.qm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3500) #8, !srcloc !19
  %.val3240 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qn = getelementptr inbounds nuw i8, ptr %.val3240, i64 %i.fo
  %.0.copyload.i3501 = load i32, ptr %i.qn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3501) #8, !srcloc !19
  %i.qo = zext i32 %.0.copyload.i3501 to i64
  %.val3239 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qp = getelementptr inbounds nuw i8, ptr %.val3239, i64 %i.qo
  %.0.copyload.i3502 = load i32, ptr %i.qp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3502) #8, !srcloc !19
  %i.qq = shl i32 %.02914, 2
  %i.qr = add i32 %.0.copyload.i3502, %i.qq
  %i.qs = zext i32 %i.qr to i64
  %.val3411 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qt = getelementptr inbounds nuw i8, ptr %.val3411, i64 %i.qs
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %.0.copyload.i3503 = load i32, ptr %i.qu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3503) #8, !srcloc !23
  %i.qv = zext i32 %.0.copyload.i3503 to i64
  %i.qw = or disjoint i64 %i.qv, -281474976710656
  %.val3347 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qx = getelementptr inbounds nuw i8, ptr %.val3347, i64 %i.pa
  store i64 %i.qw, ptr %i.qx, align 1
  %.val3106 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qy = getelementptr inbounds nuw i8, ptr %.val3106, i64 %i.e
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 28
  store i32 0, ptr %i.qz, align 1
  %.val3105 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ra = getelementptr inbounds nuw i8, ptr %.val3105, i64 %i.pb
  store i32 0, ptr %i.ra, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyCacheEntry0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.hh, i32 noundef %.02935, i32 noundef %3, i32 noundef 85, i32 noundef %.02935, i32 noundef %i.pc, i32 noundef 0) #8
  %.val3393 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rb = getelementptr inbounds nuw i8, ptr %.val3393, i64 %i.pd
  %.0.copyload.i3504 = load i64, ptr %i.rb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3504) #8, !srcloc !20
  %.val3346 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rc = getelementptr inbounds nuw i8, ptr %.val3346, i64 %i.dw
  store i64 %.0.copyload.i3504, ptr %i.rc, align 1
  %.val3392 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rd = getelementptr inbounds nuw i8, ptr %.val3392, i64 %i.hl
  %.0.copyload.i3505 = load i64, ptr %i.rd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3505) #8, !srcloc !20
  %.val3345 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.re = getelementptr inbounds nuw i8, ptr %.val3345, i64 %i.ds
  store i64 %.0.copyload.i3505, ptr %i.re, align 1
  %i.rf = and i64 %.0.copyload.i3505, 4294967295
  %.not3035 = icmp eq i64 %i.rf, 0
  br i1 %.not3035, label %bb.fj, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.val3391 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rg = getelementptr inbounds nuw i8, ptr %.val3391, i64 %i.dw
  %.0.copyload.i3506 = load i64, ptr %i.rg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3506) #8, !srcloc !20
  %.val3344 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rh = getelementptr inbounds nuw i8, ptr %.val3344, i64 %i.pe
  store i64 %.0.copyload.i3506, ptr %i.rh, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoLength0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.pf, i32 noundef %3, i32 noundef %.12918) #8
  %.val3238 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ri = getelementptr inbounds nuw i8, ptr %.val3238, i64 %i.pb
  %.0.copyload.i3507 = load i32, ptr %i.ri, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3507) #8, !srcloc !19
  %.not3036 = icmp eq i32 %.0.copyload.i3507, 0
  br i1 %.not3036, label %bb.fj, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.val3417 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rj = getelementptr inbounds nuw i8, ptr %.val3417, i64 %i.e
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 144
  %.0.copyload.i3508 = load double, ptr %i.rk, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i3508) #8, !srcloc !37
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.hh, i32 noundef %.02935, i32 noundef %3, i32 noundef 70432, i32 noundef %.02935) #8
  %.val3390 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rl = getelementptr inbounds nuw i8, ptr %.val3390, i64 %i.pd
  %.0.copyload.i3509 = load i64, ptr %i.rl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3509) #8, !srcloc !20
  %.val3343 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rm = getelementptr inbounds nuw i8, ptr %.val3343, i64 %i.dw
  store i64 %.0.copyload.i3509, ptr %i.rm, align 1
  %.val3389 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rn = getelementptr inbounds nuw i8, ptr %.val3389, i64 %i.hl
  %.0.copyload.i3510 = load i64, ptr %i.rn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3510) #8, !srcloc !20
  %.val3342 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ro = getelementptr inbounds nuw i8, ptr %.val3342, i64 %i.ds
  store i64 %.0.copyload.i3510, ptr %i.ro, align 1
  %i.rp = fcmp olt double %.0.copyload.i3508, f0x43F0000000000000
  %i.rq = fcmp oge double %.0.copyload.i3508, 0.000000e+00
  %i.rr = and i1 %i.rp, %i.rq
  %i.rs = fptoui double %.0.copyload.i3508 to i64
  %spec.select3610 = select i1 %i.rr, i64 %i.rs, i64 0 ; 3 uses
  %i.rt = and i64 %.0.copyload.i3510, 4294967295
  %.not3037 = icmp eq i64 %i.rt, 0
  br i1 %.not3037, label %bb.fj, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.val3388 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ru = getelementptr inbounds nuw i8, ptr %.val3388, i64 %i.dw
  %.0.copyload.i3511 = load i64, ptr %i.ru, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3511) #8, !srcloc !20
  %.val3237 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rv = getelementptr inbounds nuw i8, ptr %.val3237, i64 %i.i
  %.0.copyload.i3512 = load i32, ptr %i.rv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3512) #8, !srcloc !19
  %i.rw = zext i32 %.0.copyload.i3512 to i64      ; 2 uses
  %i.rx = add nuw nsw i64 %i.rw, 164              ; 2 uses
  %.val3236 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ry = getelementptr inbounds nuw i8, ptr %.val3236, i64 %i.rx
  %.0.copyload.i3513 = load i32, ptr %i.ry, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3513) #8, !srcloc !19
  %.val3235 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rz = getelementptr inbounds nuw i8, ptr %.val3235, i64 %i.rw
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 168
  %.0.copyload.i3514 = load i32, ptr %i.sa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3514) #8, !srcloc !19
  %i.sb = icmp ult i32 %.0.copyload.i3513, %.0.copyload.i3514
  br i1 %i.sb, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.sc = add i32 %.0.copyload.i3513, 8
  %.val3104 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sd = getelementptr inbounds nuw i8, ptr %.val3104, i64 %i.rx
  store i32 %i.sc, ptr %i.sd, align 1
  %i.se = zext i32 %.0.copyload.i3513 to i64
  %.val3341 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sf = getelementptr inbounds nuw i8, ptr %.val3341, i64 %i.se
  store i64 %.0.copyload.i3511, ptr %i.sf, align 1
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.sg = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3512, i64 noundef %.0.copyload.i3511) #8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.8 = phi i32 [ %.0.copyload.i3513, %bb.bx ], [ %i.sg, %bb.by ]
  %i.sh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.8) #8 ; 2 uses
  %i.si = icmp eq i32 %i.sh, -1
  br i1 %i.si, label %bb.fj, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sj = zext i32 %i.sh to i64
  %i.sk = or disjoint i64 %i.sj, -844424930131968 ; 3 uses
  %.val3234 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sl = getelementptr inbounds nuw i8, ptr %.val3234, i64 %i.i
  %.0.copyload.i3515 = load i32, ptr %i.sl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3515) #8, !srcloc !19
  %i.sm = zext i32 %.0.copyload.i3515 to i64      ; 2 uses
  %i.sn = add nuw nsw i64 %i.sm, 164              ; 2 uses
  %.val3233 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.so = getelementptr inbounds nuw i8, ptr %.val3233, i64 %i.sn
  %.0.copyload.i3516 = load i32, ptr %i.so, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3516) #8, !srcloc !19
  %.val3232 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.val3232, i64 %i.sm
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 168
  %.0.copyload.i3517 = load i32, ptr %i.sq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3517) #8, !srcloc !19
  %i.sr = icmp ult i32 %.0.copyload.i3516, %.0.copyload.i3517
  br i1 %i.sr, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ss = add i32 %.0.copyload.i3516, 8
  %.val3103 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.st = getelementptr inbounds nuw i8, ptr %.val3103, i64 %i.sn
  store i32 %i.ss, ptr %i.st, align 1
  %i.su = zext i32 %.0.copyload.i3516 to i64
  %.val3340 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sv = getelementptr inbounds nuw i8, ptr %.val3340, i64 %i.su
  store i64 %i.sk, ptr %i.sv, align 1
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.sw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3515, i64 noundef %i.sk) #8 ; 2 uses
  %i.sx = zext i32 %i.sw to i64
  %.val3387 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sy = getelementptr inbounds nuw i8, ptr %.val3387, i64 %i.sx
  %.0.copyload.i3518 = load i64, ptr %i.sy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3518) #8, !srcloc !20
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.02919 = phi i32 [ %.0.copyload.i3516, %bb.cb ], [ %i.sw, %bb.cc ] ; 2 uses
  %.2 = phi i64 [ %i.sk, %bb.cb ], [ %.0.copyload.i3518, %bb.cc ]
  %i.sz = and i64 %.2, 4294967295
  %.val3231 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %.val3231, i64 %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %.0.copyload.i3519 = load i32, ptr %i.tb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3519) #8, !srcloc !19
  %.val3102 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tc = getelementptr inbounds nuw i8, ptr %.val3102, i64 %i.e
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 24
  store i32 0, ptr %i.td, align 1
  %.val3101 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.te = getelementptr inbounds nuw i8, ptr %.val3101, i64 %i.pg
  store i32 0, ptr %i.te, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyCacheEntry0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.hh, i32 noundef %.02935, i32 noundef %3, i32 noundef 329, i32 noundef %.02935, i32 noundef %i.ph, i32 noundef 0) #8
  %.val3386 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tf = getelementptr inbounds nuw i8, ptr %.val3386, i64 %i.pd
  %.0.copyload.i3520 = load i64, ptr %i.tf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3520) #8, !srcloc !20
  %.val3339 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tg = getelementptr inbounds nuw i8, ptr %.val3339, i64 %i.dw
  store i64 %.0.copyload.i3520, ptr %i.tg, align 1
  %.val3385 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.th = getelementptr inbounds nuw i8, ptr %.val3385, i64 %i.hl
  %.0.copyload.i3521 = load i64, ptr %i.th, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3521) #8, !srcloc !20
  %.val3338 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ti = getelementptr inbounds nuw i8, ptr %.val3338, i64 %i.ds
  store i64 %.0.copyload.i3521, ptr %i.ti, align 1
  %i.tj = and i64 %.0.copyload.i3521, 4294967295
  %.not3038 = icmp eq i64 %i.tj, 0
  br i1 %.not3038, label %bb.fj, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.val3384 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tk = getelementptr inbounds nuw i8, ptr %.val3384, i64 %i.dw
  %.0.copyload.i3522 = load i64, ptr %i.tk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3522) #8, !srcloc !20
  %.val3230 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tl = getelementptr inbounds nuw i8, ptr %.val3230, i64 %i.i
  %.0.copyload.i3523 = load i32, ptr %i.tl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3523) #8, !srcloc !19
  %i.tm = zext i32 %.0.copyload.i3523 to i64      ; 2 uses
  %i.tn = add nuw nsw i64 %i.tm, 164              ; 2 uses
  %.val3229 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.to = getelementptr inbounds nuw i8, ptr %.val3229, i64 %i.tn
  %.0.copyload.i3524 = load i32, ptr %i.to, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3524) #8, !srcloc !19
  %.val3228 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tp = getelementptr inbounds nuw i8, ptr %.val3228, i64 %i.tm
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 168
  %.0.copyload.i3525 = load i32, ptr %i.tq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3525) #8, !srcloc !19
  %i.tr = icmp ult i32 %.0.copyload.i3524, %.0.copyload.i3525
  br i1 %i.tr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ts = add i32 %.0.copyload.i3524, 8
  %.val3100 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tt = getelementptr inbounds nuw i8, ptr %.val3100, i64 %i.tn
  store i32 %i.ts, ptr %i.tt, align 1
  %i.tu = zext i32 %.0.copyload.i3524 to i64
  %.val3337 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tv = getelementptr inbounds nuw i8, ptr %.val3337, i64 %i.tu
  store i64 %.0.copyload.i3522, ptr %i.tv, align 1
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.tw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3523, i64 noundef %.0.copyload.i3522) #8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.9 = phi i32 [ %.0.copyload.i3524, %bb.cf ], [ %i.tw, %bb.cg ]
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.pi, i32 noundef %3, i32 noundef %.9) #8
  %.val3227 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tx = getelementptr inbounds nuw i8, ptr %.val3227, i64 %i.pg
  %.0.copyload.i3526 = load i32, ptr %i.tx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3526) #8, !srcloc !19
  %.not3039 = icmp eq i32 %.0.copyload.i3526, 0
  br i1 %.not3039, label %bb.fj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ty = tail call i64 @llvm.usub.sat.i64(i64 %spec.select3610, i64 1) ; 3 uses
  %i.tz = icmp ugt i64 %spec.select3610, 1027071
  %.val3416 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ua = getelementptr inbounds nuw i8, ptr %.val3416, i64 %i.e
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 128
  %.0.copyload.i3527 = load double, ptr %i.ub, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i3527) #8, !srcloc !37
  %i.uc = fcmp uno double %.0.copyload.i3527, 0.000000e+00
  br i1 %i.uc, label %bb.cm, label %bb.cj, !prof !31

bb.cj:                                            ; preds = %bb.ci
  %i.ud = fcmp oeq double %.0.copyload.i3527, 0.000000e+00
  %i.ue = select i1 %i.ud, i1 %i.pj, i1 false
  br i1 %i.ue, label %bb.ck, label %bb.cl, !prof !31

bb.ck:                                            ; preds = %bb.cj
  %i.uf = bitcast double %.0.copyload.i3527 to i64
  %i.ug = icmp slt i64 %i.uf, 0
  %i.uh = select i1 %i.ug, double %.0.copyload.i3527, double %i.oz
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.ui = fcmp olt double %.0.copyload.i3527, %i.oz
  %i.uj = select i1 %i.ui, double %.0.copyload.i3527, double %i.oz
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.ci
  %i.uk = phi double [ +qnan, %bb.ci ], [ %i.uj, %bb.cl ], [ %i.uh, %bb.ck ]
  %i.ul = select i1 %i.pl, double %.0.copyload.i3527, double %i.uk
  %i.um = tail call double @llvm.fabs.f64(double %.0.copyload.i3527)
  %i.un = bitcast double %i.um to i64
  %i.uo = icmp samesign ult i64 %i.un, 9218868437227405313
  %i.up = select i1 %i.uo, double %i.ul, double %i.oz ; 7 uses
  %i.uq = fcmp uno double %i.up, 0.000000e+00
  br i1 %i.uq, label %bb.cq, label %bb.cn, !prof !31

bb.cn:                                            ; preds = %bb.cm
  %i.ur = fcmp oeq double %i.up, 0.000000e+00
  br i1 %i.ur, label %bb.co, label %bb.cp, !prof !31

bb.co:                                            ; preds = %bb.cn
  %i.us = bitcast double %i.up to i64
  %i.ut = icmp slt i64 %i.us, 0
  %i.uu = select i1 %i.ut, double 0.000000e+00, double %i.up
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.uv = fcmp ogt double %i.up, 0.000000e+00
  %i.uw = select i1 %i.uv, double %i.up, double 0.000000e+00
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cm
  %i.ux = phi double [ +qnan, %bb.cm ], [ %i.uw, %bb.cp ], [ %i.uu, %bb.co ]
  %i.uy = tail call double @llvm.fabs.f64(double %i.up)
  %i.uz = bitcast double %i.uy to i64
  %i.va = icmp samesign ult i64 %i.uz, 9218868437227405313
  %i.vb = select i1 %i.va, double %i.ux, double 0.000000e+00 ; 4 uses
  %i.vc = tail call noundef double @llvm.fabs.f64(double %i.vb)
  %i.vd = fcmp olt double %i.vc, f0x43E0000000000000
  br i1 %i.vd, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.ve = fcmp ult double %i.vb, f0xC3E0000000000000
  %i.vf = fcmp uge double %i.vb, f0x43E0000000000000
  %.not3043 = or i1 %i.ve, %i.vf
  br i1 %.not3043, label %bb.cs, label %bb.ct, !prof !31

bb.cs:                                            ; preds = %bb.cr
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.vg = fptosi double %i.vb to i64
  %i.vh = trunc i64 %i.vg to i32
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cq, %bb.ct
  %.1 = phi i32 [ %i.vh, %bb.ct ], [ 0, %bb.cq ]  ; 5 uses
  br i1 %i.tz, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %.val3099 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vi = getelementptr inbounds nuw i8, ptr %.val3099, i64 %i.e
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 112
  store i32 0, ptr %i.vj, align 1
  %.val3336 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vk = getelementptr inbounds nuw i8, ptr %.val3336, i64 %i.e
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 104
  store i64 141733920769, ptr %i.vl, align 1
  %.val3098 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vm = getelementptr inbounds nuw i8, ptr %.val3098, i64 %i.pd
  store i32 3, ptr %i.vm, align 1
  %.val3097 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vn = getelementptr inbounds nuw i8, ptr %.val3097, i64 %i.hl
  store i32 60634, ptr %i.vn, align 1
  %i.vo = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.hh) #8
  %.val3096 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vp = getelementptr inbounds nuw i8, ptr %.val3096, i64 %i.qb
  store i32 %i.vo, ptr %i.vp, align 1
  br label %bb.fk

bb.cw:                                            ; preds = %bb.cu
  %i.vq = trunc nuw i64 %i.ty to i32
  %i.vr = shl nuw nsw i32 %i.vq, 2
  %i.vs = add nuw nsw i32 %i.vr, 12
  %i.vt = and i32 %i.vs, 8388600                  ; 4 uses
  %.val3226 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vu = getelementptr inbounds nuw i8, ptr %.val3226, i64 %i.h
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 1376
  %.0.copyload.i3528 = load i32, ptr %i.vv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3528) #8, !srcloc !19
  %.val3225 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vw = getelementptr inbounds nuw i8, ptr %.val3225, i64 %i.pm
  %.0.copyload.i3529 = load i32, ptr %i.vw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3529) #8, !srcloc !19
  %i.vx = sub i32 %.0.copyload.i3528, %.0.copyload.i3529
  %i.vy = icmp ugt i32 %i.vt, %i.vx
  br i1 %i.vy, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.vz = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.hi, i32 noundef %i.vt) #8
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.wa = add i32 %.0.copyload.i3529, %i.vt
  %.val3095 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wb = getelementptr inbounds nuw i8, ptr %.val3095, i64 %i.pm
  store i32 %i.wa, ptr %i.wb, align 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.10 = phi i32 [ %i.vz, %bb.cx ], [ %.0.copyload.i3529, %bb.cy ]
  %i.wc = zext i32 %.10 to i64                    ; 3 uses
  %.val3335 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wd = getelementptr inbounds nuw i8, ptr %.val3335, i64 %i.wc
  store i64 0, ptr %i.wd, align 1
  %i.we = or disjoint i32 %i.vt, 251658240
  %.val3094 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wf = getelementptr inbounds nuw i8, ptr %.val3094, i64 %i.wc
  store i32 %i.we, ptr %i.wf, align 1
  %i.wg = or disjoint i64 %i.wc, -281474976710656 ; 2 uses
  %.val3224 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wh = getelementptr inbounds nuw i8, ptr %.val3224, i64 %i.i
  %.0.copyload.i3530 = load i32, ptr %i.wh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3530) #8, !srcloc !19
  %i.wi = zext i32 %.0.copyload.i3530 to i64      ; 2 uses
  %i.wj = add nuw nsw i64 %i.wi, 164              ; 2 uses
  %.val3223 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wk = getelementptr inbounds nuw i8, ptr %.val3223, i64 %i.wj
  %.0.copyload.i3531 = load i32, ptr %i.wk, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3531) #8, !srcloc !19
  %.val3222 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wl = getelementptr inbounds nuw i8, ptr %.val3222, i64 %i.wi
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 168
  %.0.copyload.i3532 = load i32, ptr %i.wm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3532) #8, !srcloc !19
  %i.wn = icmp ult i32 %.0.copyload.i3531, %.0.copyload.i3532
  br i1 %i.wn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.wo = add i32 %.0.copyload.i3531, 8
  %.val3093 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wp = getelementptr inbounds nuw i8, ptr %.val3093, i64 %i.wj
  store i32 %i.wo, ptr %i.wp, align 1
  %i.wq = zext i32 %.0.copyload.i3531 to i64
  %.val3334 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wr = getelementptr inbounds nuw i8, ptr %.val3334, i64 %i.wq
  store i64 %i.wg, ptr %i.wr, align 1
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.ws = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3530, i64 noundef %i.wg) #8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.11 = phi i32 [ %.0.copyload.i3531, %bb.da ], [ %i.ws, %bb.db ]
  %.val3092 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wt = getelementptr inbounds nuw i8, ptr %.val3092, i64 %i.pn
  store i32 %.11, ptr %i.wt, align 1
  %.val3221 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wu = getelementptr inbounds nuw i8, ptr %.val3221, i64 %i.i
  %.0.copyload.i3533 = load i32, ptr %i.wu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3533) #8, !srcloc !19
  %i.wv = zext i32 %.0.copyload.i3533 to i64      ; 2 uses
  %i.ww = add nuw nsw i64 %i.wv, 164              ; 2 uses
  %.val3220 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wx = getelementptr inbounds nuw i8, ptr %.val3220, i64 %i.ww
  %.0.copyload.i3534 = load i32, ptr %i.wx, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3534) #8, !srcloc !19
  %.val3219 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wy = getelementptr inbounds nuw i8, ptr %.val3219, i64 %i.wv
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 168
  %.0.copyload.i3535 = load i32, ptr %i.wz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3535) #8, !srcloc !19
  %i.xa = icmp ult i32 %.0.copyload.i3534, %.0.copyload.i3535
  br i1 %i.xa, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.xb = add i32 %.0.copyload.i3534, 8
  %.val3091 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xc = getelementptr inbounds nuw i8, ptr %.val3091, i64 %i.ww
  store i32 %i.xb, ptr %i.xc, align 1
  %i.xd = zext i32 %.0.copyload.i3534 to i64
  %.val3333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xe = getelementptr inbounds nuw i8, ptr %.val3333, i64 %i.xd
  store i64 -1688849860263936, ptr %i.xe, align 1
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.xf = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3533, i64 noundef -1688849860263936) #8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.62934 = phi i32 [ %.0.copyload.i3534, %bb.dd ], [ %i.xf, %bb.de ] ; 3 uses
  %.val3218 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xg = getelementptr inbounds nuw i8, ptr %.val3218, i64 %i.i
  %.0.copyload.i3536 = load i32, ptr %i.xg, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3536) #8, !srcloc !19
  %i.xh = add i32 %.0.copyload.i3536, 164         ; 2 uses
  %i.xi = zext i32 %.0.copyload.i3536 to i64      ; 2 uses
  %.val3217 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xj = getelementptr inbounds nuw i8, ptr %.val3217, i64 %i.xi
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 164
  %.0.copyload.i3537 = load i32, ptr %i.xk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3537) #8, !srcloc !19
  %i.xl = icmp samesign ugt i64 %spec.select3610, 1
  br i1 %i.xl, label %.preheader3611, label %.loopexit3612

.preheader3611:                                   ; preds = %bb.df
  %i.xm = zext i32 %.62934 to i64                 ; 2 uses
  br label %bb.dg

bb.dg:                                            ; preds = %.preheader3611, %bb.dq
  %.12 = phi i32 [ %.0.copyload.i3552, %bb.dq ], [ %.0.copyload.i3536, %.preheader3611 ]
  %.12951 = phi i32 [ %.0.copyload.i3553, %bb.dq ], [ %.0.copyload.i3537, %.preheader3611 ] ; 2 uses
  %.6 = phi i32 [ %i.zv, %bb.dq ], [ %i.xh, %.preheader3611 ] ; 2 uses
  %.3 = phi i64 [ %i.aaa, %bb.dq ], [ 1, %.preheader3611 ] ; 3 uses
  %i.xn = zext i32 %.12 to i64                    ; 5 uses
  %i.xo = add nuw nsw i64 %i.xn, 172              ; 3 uses
  %.val3216 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xp = getelementptr inbounds nuw i8, ptr %.val3216, i64 %i.xo
  %.0.copyload.i3538 = load i32, ptr %i.xp, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3538) #8, !srcloc !19
  %i.xq = uitofp i64 %.3 to double
  %.val3413 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xr = getelementptr inbounds nuw i8, ptr %.val3413, i64 %i.po
  store double %i.xq, ptr %i.xr, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.hh, i32 noundef %.02935, i32 noundef %3, i32 noundef %.12922, i32 noundef %.02935) #8
  %.val3383 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xs = getelementptr inbounds nuw i8, ptr %.val3383, i64 %i.pd
  %.0.copyload.i3539 = load i64, ptr %i.xs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3539) #8, !srcloc !20
  %.val3332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xt = getelementptr inbounds nuw i8, ptr %.val3332, i64 %i.dw
  store i64 %.0.copyload.i3539, ptr %i.xt, align 1
  %.val3382 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xu = getelementptr inbounds nuw i8, ptr %.val3382, i64 %i.hl
  %.0.copyload.i3540 = load i64, ptr %i.xu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3540) #8, !srcloc !20
  %.val3331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xv = getelementptr inbounds nuw i8, ptr %.val3331, i64 %i.ds
  store i64 %.0.copyload.i3540, ptr %i.xv, align 1
  %i.xw = and i64 %.0.copyload.i3540, 4294967295
  %.not3044 = icmp eq i64 %i.xw, 0
  br i1 %.not3044, label %bb.fg, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.val3381 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xx = getelementptr inbounds nuw i8, ptr %.val3381, i64 %i.dw
  %.0.copyload.i3541 = load i64, ptr %i.xx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3541) #8, !srcloc !20
  %.val3330 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xy = getelementptr inbounds nuw i8, ptr %.val3330, i64 %i.xm
  store i64 %.0.copyload.i3541, ptr %i.xy, align 1
  %.mask3046 = and i64 %.0.copyload.i3541, -140737488355328
  %.not3045 = icmp eq i64 %.mask3046, -1688849860263936
  br i1 %.not3045, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.xz = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.62934) #8 ; 3 uses
  %i.ya = icmp eq i32 %i.xz, -1
  br i1 %i.ya, label %bb.fg, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.yb = zext i32 %i.xz to i64
  %i.yc = or disjoint i64 %i.yb, -844424930131968
  %.val3329 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yd = getelementptr inbounds nuw i8, ptr %.val3329, i64 %i.xm
  store i64 %i.yc, ptr %i.yd, align 1
  %i.ye = or i32 %i.xz, 2
  %.val3215 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yf = getelementptr inbounds nuw i8, ptr %.val3215, i64 %i.pn
  %.0.copyload.i3542 = load i32, ptr %i.yf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3542) #8, !srcloc !19
  %i.yg = zext i32 %.0.copyload.i3542 to i64
  %.val3214 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yh = getelementptr inbounds nuw i8, ptr %.val3214, i64 %i.yg
  %.0.copyload.i3543 = load i32, ptr %i.yh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3543) #8, !srcloc !19
  %i.yi = zext i32 %.0.copyload.i3543 to i64      ; 2 uses
  %.val3213 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yj = getelementptr inbounds nuw i8, ptr %.val3213, i64 %i.yi
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 4
  %.0.copyload.i3544 = load i32, ptr %i.yk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3544) #8, !srcloc !19
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dh
  %.val3212 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yl = getelementptr inbounds nuw i8, ptr %.val3212, i64 %i.pn
  %.0.copyload.i3545 = load i32, ptr %i.yl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3545) #8, !srcloc !19
  %i.ym = zext i32 %.0.copyload.i3545 to i64
  %.val3211 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yn = getelementptr inbounds nuw i8, ptr %.val3211, i64 %i.ym
  %.0.copyload.i3546 = load i32, ptr %i.yn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3546) #8, !srcloc !19
  %i.yo = zext i32 %.0.copyload.i3546 to i64      ; 2 uses
  %.val3210 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yp = getelementptr inbounds nuw i8, ptr %.val3210, i64 %i.yo
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  %.0.copyload.i3547 = load i32, ptr %i.yq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3547) #8, !srcloc !19
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pre-phi = phi i64 [ %i.yo, %bb.dk ], [ %i.yi, %bb.dj ] ; 2 uses
  %.72970 = phi i32 [ %.0.copyload.i3546, %bb.dk ], [ %.0.copyload.i3543, %bb.dj ]
  %.12949 = phi i32 [ %.0.copyload.i3547, %bb.dk ], [ %.0.copyload.i3544, %bb.dj ] ; 3 uses
  %.62942 = phi i32 [ 14, %bb.dk ], [ %i.ye, %bb.dj ] ; 2 uses
  %.val3209 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yr = getelementptr inbounds nuw i8, ptr %.val3209, i64 %.pre-phi
  %.0.copyload.i3548 = load i32, ptr %i.yr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3548) #8, !srcloc !19
  %i.ys = and i32 %.0.copyload.i3548, 16777212
  %i.yt = add nsw i32 %i.ys, -8
  %i.yu = lshr exact i32 %i.yt, 2
  %i.yv = icmp ugt i32 %i.yu, %.12949
  br i1 %i.yv, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  %i.yw = shl nuw i32 %.12949, 2
  %i.yx = add i32 %.72970, 8
  %i.yy = add i32 %i.yx, %i.yw                    ; 3 uses
  %i.yz = zext i32 %i.yy to i64
  %.val3090 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.za = getelementptr inbounds nuw i8, ptr %.val3090, i64 %i.yz
  store i32 %.62942, ptr %i.za, align 1
  %.val3208 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zb = getelementptr inbounds nuw i8, ptr %.val3208, i64 %i.h
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 1364
  %.0.copyload.i3549 = load i32, ptr %i.zc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3549) #8, !srcloc !19
  %i.zd = and i32 %i.yy, -4194304
  %.not3048 = icmp eq i32 %.0.copyload.i3549, %i.zd
  br i1 %.not3048, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AconstructorWriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue320x29(ptr noundef nonnull %0, i32 noundef %i.hi, i32 noundef %i.yy, i32 noundef %.62942) #8
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.ze = add nuw nsw i32 %.12949, 1
  %.val3089 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zf = getelementptr inbounds nuw i8, ptr %.val3089, i64 %.pre-phi
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 4
  store i32 %i.ze, ptr %i.zg, align 1
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dl
  %i.zh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayStorageBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x3A0x3ApushBackSlowPath0x28hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AArrayStorageBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.pp, i32 noundef %3, i32 noundef %.62934) #8
  %.not3047 = icmp eq i32 %i.zh, 0
  br i1 %.not3047, label %bb.fg, label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.val3207 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zi = getelementptr inbounds nuw i8, ptr %.val3207, i64 %i.xn
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 136
  %.0.copyload.i3550 = load i32, ptr %i.zj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3550) #8, !srcloc !19
  %i.zk = shl i32 %.0.copyload.i3538, 2
  %i.zl = add i32 %.0.copyload.i3550, %i.zk
  %i.zm = zext i32 %i.zl to i64
  %.val3206 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zn = getelementptr inbounds nuw i8, ptr %.val3206, i64 %i.zm
  %.0.copyload.i3551 = load i32, ptr %i.zn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3551) #8, !srcloc !19
  %.val3088 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zo = getelementptr inbounds nuw i8, ptr %.val3088, i64 %i.xo
  store i32 %.0.copyload.i3538, ptr %i.zo, align 1
  %i.zp = add i32 %.0.copyload.i3551, 128
  %.val3087 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zq = getelementptr inbounds nuw i8, ptr %.val3087, i64 %i.xn
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 168
  store i32 %i.zp, ptr %i.zr, align 1
  %i.zs = zext i32 %.6 to i64
  %.val3086 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zt = getelementptr inbounds nuw i8, ptr %.val3086, i64 %i.zs
  store i32 %.12951, ptr %i.zt, align 1
  %.val3205 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zu = getelementptr inbounds nuw i8, ptr %.val3205, i64 %i.i
  %.0.copyload.i3552 = load i32, ptr %i.zu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3552) #8, !srcloc !19
  %i.zv = add i32 %.0.copyload.i3552, 164         ; 2 uses
  %i.zw = icmp ult i64 %.3, %i.ty
  %i.zx = zext i32 %.0.copyload.i3552 to i64      ; 2 uses
  %.val3204 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zy = getelementptr inbounds nuw i8, ptr %.val3204, i64 %i.zx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 164
  %.0.copyload.i3553 = load i32, ptr %i.zz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3553) #8, !srcloc !19
  %i.aaa = add nuw i64 %.3, 1
  br i1 %i.zw, label %bb.dg, label %.loopexit3612

.loopexit3612:                                    ; preds = %bb.dq, %bb.df
  %.pre-phi3720 = phi i64 [ %i.xi, %bb.df ], [ %i.zx, %bb.dq ]
  %.13 = phi i32 [ %.0.copyload.i3536, %bb.df ], [ %.0.copyload.i3552, %bb.dq ]
  %.22952 = phi i32 [ %.0.copyload.i3537, %bb.df ], [ %.0.copyload.i3553, %bb.dq ] ; 4 uses
  %.7 = phi i32 [ %i.xh, %bb.df ], [ %i.zv, %bb.dq ]
  %.val3203 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aab = getelementptr inbounds nuw i8, ptr %.val3203, i64 %.pre-phi3720
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 168
  %.0.copyload.i3554 = load i32, ptr %i.aac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3554) #8, !srcloc !19
  %i.aad = icmp ugt i32 %.0.copyload.i3554, %.22952
  br i1 %i.aad, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %.loopexit3612
  %i.aae = add i32 %.22952, 8
  %i.aaf = zext i32 %.7 to i64
  %.val3085 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aag = getelementptr inbounds nuw i8, ptr %.val3085, i64 %i.aaf
  store i32 %i.aae, ptr %i.aag, align 1
  %i.aah = zext i32 %.22952 to i64
  %.val3328 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aai = getelementptr inbounds nuw i8, ptr %.val3328, i64 %i.aah
  store i64 -1688849860263936, ptr %i.aai, align 1
  br label %bb.dt

bb.ds:                                            ; preds = %.loopexit3612
  %i.aaj = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.13, i64 noundef -1688849860263936) #8
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.32953 = phi i32 [ %.22952, %bb.dr ], [ %i.aaj, %bb.ds ] ; 5 uses
  %.val3084 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aak = getelementptr inbounds nuw i8, ptr %.val3084, i64 %i.e
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 20
  store i32 0, ptr %i.aal, align 1
  %.val3083 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aam = getelementptr inbounds nuw i8, ptr %.val3083, i64 %i.pq
  store i32 0, ptr %i.aam, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyCacheEntry0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.hh, i32 noundef %.02935, i32 noundef %3, i32 noundef 334, i32 noundef %.02935, i32 noundef %i.pr, i32 noundef 0) #8
  %.val3202 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aan = getelementptr inbounds nuw i8, ptr %.val3202, i64 %i.hl
  %.0.copyload.i3555 = load i32, ptr %i.aan, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3555) #8, !srcloc !19
  %.not3049 = icmp eq i32 %.0.copyload.i3555, 0
  br i1 %.not3049, label %bb.fj, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.val3380 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aao = getelementptr inbounds nuw i8, ptr %.val3380, i64 %i.pd
  %.0.copyload.i3556 = load i64, ptr %i.aao, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3556) #8, !srcloc !20
  %i.aap = ashr i64 %.0.copyload.i3556, 47
  %i.aaq = and i64 %i.aap, 4294967295
  %.not3050 = icmp ne i64 %i.aaq, 4294967284      ; 4 uses
  br i1 %.not3050, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aar = zext i32 %.32953 to i64
  %.val3327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aas = getelementptr inbounds nuw i8, ptr %.val3327, i64 %i.aar
  store i64 %.0.copyload.i3556, ptr %i.aas, align 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.val3201 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aat = getelementptr inbounds nuw i8, ptr %.val3201, i64 %i.i
  %.0.copyload.i3557 = load i32, ptr %i.aat, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3557) #8, !srcloc !19
  %i.aau = zext i32 %.0.copyload.i3557 to i64     ; 2 uses
  %i.aav = add nuw nsw i64 %i.aau, 164            ; 2 uses
  %.val3200 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val3200, i64 %i.aav
  %.0.copyload.i3558 = load i32, ptr %i.aaw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3558) #8, !srcloc !19
  %.val3199 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aax = getelementptr inbounds nuw i8, ptr %.val3199, i64 %i.aau
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 168
  %.0.copyload.i3559 = load i32, ptr %i.aay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3559) #8, !srcloc !19
  %i.aaz = icmp ult i32 %.0.copyload.i3558, %.0.copyload.i3559
  br i1 %i.aaz, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aba = add i32 %.0.copyload.i3558, 8
  %.val3082 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abb = getelementptr inbounds nuw i8, ptr %.val3082, i64 %i.aav
  store i32 %i.aba, ptr %i.abb, align 1
  %i.abc = zext i32 %.0.copyload.i3558 to i64
  %.val3326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abd = getelementptr inbounds nuw i8, ptr %.val3326, i64 %i.abc
  store i64 -844424930131968, ptr %i.abd, align 1
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.abe = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3557, i64 noundef -844424930131968) #8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.72943 = phi i32 [ %.0.copyload.i3558, %bb.dx ], [ %i.abe, %bb.dy ] ; 2 uses
  %.val3379 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abf = getelementptr inbounds nuw i8, ptr %.val3379, i64 %i.cz
  %.0.copyload.i3560 = load i64, ptr %i.abf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3560) #8, !srcloc !20
  %i.abg = icmp ult i64 %.0.copyload.i3560, -844424930131968
  br i1 %i.abg, label %bb.ez, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.abh = and i64 %.0.copyload.i3560, 4294967295 ; 2 uses
  %.not3051 = icmp eq i64 %i.abh, 0
  br i1 %.not3051, label %bb.ez, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.abi = zext i1 %.not3050 to i64
  %i.abj = add nuw nsw i64 %i.ty, %i.abi          ; 2 uses
  %i.abk = add nuw nsw i64 %i.abj, 3              ; 2 uses
  %i.abl = trunc nuw i64 %i.abk to i32
  %.val3198 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abm = getelementptr inbounds nuw i8, ptr %.val3198, i64 %i.h
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 5592
  %.0.copyload.i3561 = load i32, ptr %i.abn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3561) #8, !srcloc !19
  %.val3197 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abo = getelementptr inbounds nuw i8, ptr %.val3197, i64 %i.ps
  %.0.copyload.i3562 = load i32, ptr %i.abo, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3562) #8, !srcloc !19
  %i.abp = sub i32 %.0.copyload.i3561, %.0.copyload.i3562
  %i.abq = ashr i32 %i.abp, 3
  %5 = zext i32 %i.abq to i64
  %6 = add nuw nsw i32 %i.abl, 7
  %7 = icmp ugt i64 %i.abj, 4294967285
  %8 = select i1 %7, i32 -1, i32 %6               ; 2 uses
  %i.abr = zext i32 %8 to i64
  %i.abs = add nuw nsw i64 %i.abr, 32
  %i.abt = icmp samesign ugt i64 %i.abs, %5
  br i1 %i.abt, label %bb.fh, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.val3196 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abu = getelementptr inbounds nuw i8, ptr %.val3196, i64 %i.pt
  %.0.copyload.i3563 = load i32, ptr %i.abu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3563) #8, !srcloc !19
  %.val3195 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abv = getelementptr inbounds nuw i8, ptr %.val3195, i64 %i.pu
  %.0.copyload.i3564 = load i32, ptr %i.abv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3564) #8, !srcloc !19
  %i.abw = sub i32 %.0.copyload.i3564, %i.c
  %i.abx = icmp ult i32 %.0.copyload.i3563, %i.abw
  br i1 %i.abx, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %.val3194 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aby = getelementptr inbounds nuw i8, ptr %.val3194, i64 %i.h
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 5620
  %.0.copyload.i3565 = load i32, ptr %i.abz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3565) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Aoscompat0x3A0x3Athread_stack_bounds0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.pv, i32 noundef %.0.copyload.i3565) #8
  %.val3193 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aca = getelementptr inbounds nuw i8, ptr %.val3193, i64 %i.pq
  %.0.copyload.i3566 = load i32, ptr %i.aca, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3566) #8, !srcloc !19
  %.val3081 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acb = getelementptr inbounds nuw i8, ptr %.val3081, i64 %i.pu
  store i32 %.0.copyload.i3566, ptr %i.acb, align 1
  %.val3192 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acc = getelementptr inbounds nuw i8, ptr %.val3192, i64 %i.e
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 60
  %.0.copyload.i3567 = load i32, ptr %i.acd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3567) #8, !srcloc !19
  %.val3080 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ace = getelementptr inbounds nuw i8, ptr %.val3080, i64 %i.pt
  store i32 %.0.copyload.i3567, ptr %i.ace, align 1
  %i.acf = sub i32 %.0.copyload.i3566, %i.c
  %i.acg = icmp ugt i32 %i.acf, %.0.copyload.i3567
  br i1 %i.acg, label %bb.fh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.val3191 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ach = getelementptr inbounds nuw i8, ptr %.val3191, i64 %i.ps
  %.0.copyload.i3568 = load i32, ptr %i.ach, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3568) #8, !srcloc !19
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ec, %bb.ee
  %.12907 = phi i32 [ %.0.copyload.i3568, %bb.ee ], [ %.0.copyload.i3562, %bb.ec ]
  %i.aci = shl i32 %8, 3
  %i.acj = add i32 %.12907, %i.aci                ; 8 uses
  %.val3079 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ack = getelementptr inbounds nuw i8, ptr %.val3079, i64 %i.ps
  store i32 %i.acj, ptr %i.ack, align 1
  %.val3410 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acl = getelementptr inbounds nuw i8, ptr %.val3410, i64 %i.h
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 5608
  %.0.copyload.i3569 = load i32, ptr %i.acm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3569) #8, !srcloc !23
  %i.acn = zext i32 %.0.copyload.i3569 to i64
  %i.aco = add i32 %i.acj, -24
  %i.acp = zext i32 %i.aco to i64                 ; 2 uses
  %.val3325 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acq = getelementptr inbounds nuw i8, ptr %.val3325, i64 %i.acp
  store i64 0, ptr %i.acq, align 1
  %i.acr = add i32 %i.acj, -8
  %i.acs = zext i32 %i.acr to i64
  %.val3324 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.act = getelementptr inbounds nuw i8, ptr %.val3324, i64 %i.acs
  store i64 %i.acn, ptr %i.act, align 1
  %i.acu = add i32 %i.acj, -32
  %i.acv = or disjoint i64 %i.abk, -1125899906842624
  %i.acw = zext i32 %i.acu to i64
  %.val3323 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acx = getelementptr inbounds nuw i8, ptr %.val3323, i64 %i.acw
  store i64 %i.acv, ptr %i.acx, align 1
  %i.acy = add i32 %i.acj, -40
  %i.acz = zext i32 %i.acy to i64
  %.val3322 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ada = getelementptr inbounds nuw i8, ptr %.val3322, i64 %i.acz
  store i64 -1688849860263936, ptr %i.ada, align 1
  %i.adb = add i32 %i.acj, -48
  %i.adc = or disjoint i64 %i.abh, -281474976710656
  %i.add = zext i32 %i.adb to i64
  %.val3321 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ade = getelementptr inbounds nuw i8, ptr %.val3321, i64 %i.add
  store i64 %i.adc, ptr %i.ade, align 1
  %i.adf = add i32 %i.acj, -56                    ; 2 uses
  %i.adg = zext i32 %i.adf to i64
  %.val3320 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.adh = getelementptr inbounds nuw i8, ptr %.val3320, i64 %i.adg
  store i64 -1688849860263936, ptr %i.adh, align 1
  %.val3319 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.adi = getelementptr inbounds nuw i8, ptr %.val3319, i64 %i.acp
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  store i64 0, ptr %i.adj, align 1
  %i.adk = add i32 %i.acj, -64                    ; 3 uses
  %i.adl = zext i32 %.02919 to i64
  %.val3378 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.adm = getelementptr inbounds nuw i8, ptr %.val3378, i64 %i.adl
  %.0.copyload.i3570 = load i64, ptr %i.adm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3570) #8, !srcloc !20
  %i.adn = zext i32 %i.adk to i64
  %.val3318 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ado = getelementptr inbounds nuw i8, ptr %.val3318, i64 %i.adn
  store i64 %.0.copyload.i3570, ptr %i.ado, align 1
  %.val3190 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.adp = getelementptr inbounds nuw i8, ptr %.val3190, i64 %i.pn
  %.0.copyload.i3571 = load i32, ptr %i.adp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3571) #8, !srcloc !19
  %i.adq = zext i32 %.0.copyload.i3571 to i64     ; 2 uses
  %.val3189 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.adr = getelementptr inbounds nuw i8, ptr %.val3189, i64 %i.adq
  %.0.copyload.i3572 = load i32, ptr %i.adr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3572) #8, !srcloc !19
  %i.ads = zext i32 %.0.copyload.i3572 to i64
  %.val3188 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.adt = getelementptr inbounds nuw i8, ptr %.val3188, i64 %i.ads
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 4
  %.0.copyload.i3573 = load i32, ptr %i.adu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3573) #8, !srcloc !19
  %.not3052 = icmp eq i32 %.0.copyload.i3573, 0
  br i1 %.not3052, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ef, %bb.ep
  %.82971 = phi i32 [ %.0.copyload.i3576, %bb.ep ], [ %.0.copyload.i3572, %bb.ef ]
  %.14 = phi i32 [ %i.afd, %bb.ep ], [ 1, %bb.ef ] ; 3 uses
  %i.adv = shl i32 %.14, 2
  %i.adw = add i32 %i.adv, %.82971
  %i.adx = zext i32 %i.adw to i64
  %.val3187 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ady = getelementptr inbounds nuw i8, ptr %.val3187, i64 %i.adx
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  %.0.copyload.i3574 = load i32, ptr %i.adz, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3574) #8, !srcloc !19
  %i.aea = and i32 %.0.copyload.i3574, 15
  switch i32 %i.aea, label %bb.eg [
    i32 1, label %bb.eh
    i32 2, label %bb.ei
    i32 3, label %bb.ej
    i32 4, label %bb.ek
    i32 5, label %bb.el
    i32 6, label %bb.em
    i32 7, label %bb.en
    i32 15, label %bb.eo
    i32 9, label %bb.eh
    i32 10, label %bb.ei
    i32 11, label %bb.ej
    i32 12, label %bb.ek
    i32 13, label %bb.el
    i32 14, label %bb.ep
  ]

bb.eg:                                            ; preds = %.preheader
  %i.aeb = zext i32 %.0.copyload.i3574 to i64
  %i.aec = or disjoint i64 %i.aeb, -281474976710656
  br label %bb.ep

bb.eh:                                            ; preds = %.preheader, %.preheader
  %i.aed = and i32 %.0.copyload.i3574, -8
  %i.aee = zext i32 %i.aed to i64
  %i.aef = or disjoint i64 %i.aee, -562949953421312
  br label %bb.ep

bb.ei:                                            ; preds = %.preheader, %.preheader
  %i.aeg = and i32 %.0.copyload.i3574, -8
  %i.aeh = zext i32 %i.aeg to i64
  %i.aei = or disjoint i64 %i.aeh, -844424930131968
  br label %bb.ep

bb.ej:                                            ; preds = %.preheader, %.preheader
  %i.aej = and i32 %.0.copyload.i3574, -8
  %i.aek = zext i32 %i.aej to i64
  %.val3415 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ael = getelementptr inbounds nuw i8, ptr %.val3415, i64 %i.aek
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  %.0.copyload.i3575 = load double, ptr %i.aem, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i3575) #8, !srcloc !37
  %i.aen = bitcast double %.0.copyload.i3575 to i64
  %i.aeo = fcmp uno double %.0.copyload.i3575, 0.000000e+00
  %i.aep = select i1 %i.aeo, i64 9221120237041090560, i64 %i.aen
  br label %bb.ep

bb.ek:                                            ; preds = %.preheader, %.preheader
  %i.aeq = ashr i32 %.0.copyload.i3574, 3
  %i.aer = sitofp i32 %i.aeq to double
  %i.aes = bitcast double %i.aer to i64
  br label %bb.ep

bb.el:                                            ; preds = %.preheader, %.preheader
  %i.aet = lshr i32 %.0.copyload.i3574, 3
  %i.aeu = zext nneg i32 %i.aet to i64
  %i.aev = or disjoint i64 %i.aeu, -1266637395197952
  br label %bb.ep

bb.em:                                            ; preds = %.preheader
  %i.aew = icmp ugt i32 %.0.copyload.i3574, 15
  %i.aex = zext i1 %i.aew to i64
  %i.aey = or disjoint i64 %i.aex, -1407374883553280
  br label %bb.ep

bb.en:                                            ; preds = %.preheader
  br label %bb.ep

bb.eo:                                            ; preds = %.preheader
  br label %bb.ep

bb.ep:                                            ; preds = %.preheader, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg
  %.4 = phi i64 [ %i.aec, %bb.eg ], [ %i.aey, %bb.em ], [ -1970324836974592, %bb.en ], [ -1548112371908608, %bb.eo ], [ %i.aef, %bb.eh ], [ %i.aei, %bb.ei ], [ %i.aep, %bb.ej ], [ %i.aes, %bb.ek ], [ %i.aev, %bb.el ], [ -1688849860263936, %.preheader ]
  %i.aez = shl i32 %.14, 3
  %i.afa = sub i32 %i.adk, %i.aez
  %i.afb = zext i32 %i.afa to i64
  %.val3317 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afc = getelementptr inbounds nuw i8, ptr %.val3317, i64 %i.afb
  store i64 %.4, ptr %i.afc, align 1
  %i.afd = add i32 %.14, 1                        ; 3 uses
  %.val3186 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afe = getelementptr inbounds nuw i8, ptr %.val3186, i64 %i.adq
  %.0.copyload.i3576 = load i32, ptr %i.afe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3576) #8, !srcloc !19
  %i.aff = zext i32 %.0.copyload.i3576 to i64
  %.val3185 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afg = getelementptr inbounds nuw i8, ptr %.val3185, i64 %i.aff
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 4
  %.0.copyload.i3577 = load i32, ptr %i.afh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3577) #8, !srcloc !19
  %.not3053 = icmp ugt i32 %i.afd, %.0.copyload.i3577
  br i1 %.not3053, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.ep, %bb.ef
  %.15 = phi i32 [ 1, %bb.ef ], [ %i.afd, %bb.ep ] ; 2 uses
  %i.afi = shl i32 %.15, 3
  %i.afj = sub i32 %i.adf, %i.afi                 ; 2 uses
  %i.afk = add i32 %i.afj, -8
  %i.afl = uitofp i32 %.1 to double
  %i.afm = zext i32 %i.afk to i64
  %.val3412 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afn = getelementptr inbounds nuw i8, ptr %.val3412, i64 %i.afm
  store double %i.afl, ptr %i.afn, align 1
  %i.afo = xor i32 %.15, -1
  %i.afp = shl i32 %i.afo, 3
  %i.afq = add i32 %i.adk, %i.afp
  %.val3377 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afr = getelementptr inbounds nuw i8, ptr %.val3377, i64 %i.pw
  %.0.copyload.i3578 = load i64, ptr %i.afr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3578) #8, !srcloc !20
  %i.afs = zext i32 %i.afq to i64
  %.val3316 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aft = getelementptr inbounds nuw i8, ptr %.val3316, i64 %i.afs
  store i64 %.0.copyload.i3578, ptr %i.aft, align 1
  br i1 %.not3050, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %.loopexit
  %i.afu = add i32 %i.afj, -24
  %i.afv = zext i32 %.32953 to i64
  %.val3376 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afw = getelementptr inbounds nuw i8, ptr %.val3376, i64 %i.afv
  %.0.copyload.i3579 = load i64, ptr %i.afw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3579) #8, !srcloc !20
  %i.afx = zext i32 %i.afu to i64
  %.val3315 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afy = getelementptr inbounds nuw i8, ptr %.val3315, i64 %i.afx
  store i64 %.0.copyload.i3579, ptr %i.afy, align 1
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.loopexit
  %.val3184 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afz = getelementptr inbounds nuw i8, ptr %.val3184, i64 %i.cz
  %.0.copyload.i3580 = load i32, ptr %i.afz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3580) #8, !srcloc !19
  %i.aga = zext i32 %.0.copyload.i3580 to i64
  %.val3183 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.agb = getelementptr inbounds nuw i8, ptr %.val3183, i64 %i.aga
  %.0.copyload.i3581 = load i32, ptr %i.agb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3581) #8, !srcloc !19
  %i.agc = lshr i32 %.0.copyload.i3581, 22
  %i.agd = and i32 %i.agc, 1020
  %.val3182 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.age = zext nneg i32 %i.agd to i64
  %i.agf = getelementptr inbounds nuw i8, ptr %.val3182, i64 %i.age
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 289808
  %.0.copyload.i3582 = load i32, ptr %i.agg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3582) #8, !srcloc !19
  %i.agh = zext i32 %.0.copyload.i3582 to i64
  %.val3181 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.agi = getelementptr inbounds nuw i8, ptr %.val3181, i64 %i.agh
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 60
  %.0.copyload.i3583 = load i32, ptr %i.agj, align 1 ; 3 uses
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AfunctionPrototypeToString0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ot, i64 52
  store i32 %.2, ptr %i.pa, align 1
  %.val1341 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pb = getelementptr inbounds nuw i8, ptr %.val1341, i64 %i.hp
  store i32 %.11286, ptr %i.pb, align 1
  %.val1481 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pc = getelementptr inbounds nuw i8, ptr %.val1481, i64 %i.hp
  %.0.copyload.i1593 = load i64, ptr %i.pc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1593) #8, !srcloc !20
  %.val1445 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pd = getelementptr inbounds nuw i8, ptr %.val1445, i64 %i.e
  store i64 %.0.copyload.i1593, ptr %i.pd, align 1
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AarrayToString0x3Cchar16_t0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.hr, i32 noundef %i.c) #8
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3Acreate0x3Cstd0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %i.hr) #8
  %.val1479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pe = getelementptr inbounds nuw i8, ptr %.val1479, i64 %i.e
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 411
  %.0.copyload.i1594 = load i8, ptr %i.pf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1594) #8, !srcloc !22
  %i.pg = icmp sgt i8 %.0.copyload.i1594, -1
  br i1 %i.pg, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val1385 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ph = getelementptr inbounds nuw i8, ptr %.val1385, i64 %i.ht
  %.0.copyload.i1595 = load i32, ptr %i.ph, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1595) #8, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1595) #8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.bk, %bb.bg, %bb.au
  %.val1384 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pi = getelementptr inbounds nuw i8, ptr %.val1384, i64 %i.gt
  %.0.copyload.i1596 = load i32, ptr %i.pi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1596) #8, !srcloc !19
  %i.pj = icmp eq i32 %.0.copyload.i1596, %i.gs
  br i1 %i.pj, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1596) #8
  br label %bb.br

bb.bp:                                            ; preds = %bb.z, %bb.bf, %bb.aa, %bb.y
  %.val1383 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pk = getelementptr inbounds nuw i8, ptr %.val1383, i64 %i.dv
  %.0.copyload.i1597 = load i32, ptr %i.pk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1597) #8, !srcloc !19
  %i.pl = icmp eq i32 %.0.copyload.i1597, %i.du
  br i1 %i.pl, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1597) #8
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bn, %bb.bq, %bb.bo, %bb.ab, %bb.e
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ab) #8
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntimeModule0x3A0x3AgetStringPrimFromStringIDMayAllocate0x28unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallable0x3A0x3AextractOwnLengthProperty_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AfunctionPrototypeSymbolHasInstance0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !338 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = add i32 %i.b, -4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = zext i32 %4 to i64                       ; 2 uses
  %.val57 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val57, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.h = add i32 %.0.copyload.i, -8
  %.val56 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val56, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.0.copyload.i60 = load i32, ptr %i.j, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i60, 0
  %i.k = select i1 %.not, i32 70392, i32 %i.h
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AordinaryHasInstance0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.d, i32 noundef %3, i32 noundef %.0.copyload.i, i32 noundef %i.k)
  %i.l = zext i32 %i.c to i64
  %.val59 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val59, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.0.copyload.i61 = load i16, ptr %i.n, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i61) #8, !srcloc !24
  %i.o = zext i16 %.0.copyload.i61 to i32         ; 2 uses
  %i.p = and i32 %i.o, 255
  %.not55 = icmp eq i32 %i.p, 0
  br i1 %.not55, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = zext i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = lshr i32 %i.o, 8
  %i.r = and i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = or disjoint i64 %i.s, -1407374883553280
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %.val58 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val58, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.t, ptr %i.w, align 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.u, %bb.b ]
  %.0 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.b ]
  %.val = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 %.pre-phi
  store i32 %.0, ptr %i.x, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AfunctionPrototypeCall0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !339 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 5 uses
  %i.c = add i32 %i.b, -48                        ; 6 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 49 uses
  %i.e = zext i32 %4 to i64                       ; 3 uses
  %.val502 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val502, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val525 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val525, i64 %i.g
  %.0.copyload.i527 = load i64, ptr %i.h, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i527) #8, !srcloc !20
  %i.i = icmp ugt i64 %.0.copyload.i527, -844424930131969
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %.0.copyload.i527, 4294967295    ; 2 uses
  %.val501 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val501, i64 %i.j
  %.0.copyload.i528 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i528) #8, !srcloc !19
  %i.l = add i32 %.0.copyload.i528, -1140850688
  %i.m = icmp ult i32 %i.l, 150994944
  br i1 %i.m, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.val524 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val524, i64 70384
  %.0.copyload.i529 = load i64, ptr %i.n, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i529) #8, !srcloc !20
  %i.o = icmp ugt i64 %.0.copyload.i529, -844424930131969
  br i1 %i.o, label %..thread_crit_edge, label %bb.d

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = and i64 %.0.copyload.i529, 4294967295
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %.0465555 = phi i32 [ 70384, %..thread_crit_edge ], [ %.0.copyload.i, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.pre-phi, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  %i.p = zext i32 %i.c to i64                     ; 4 uses
  %.val485 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val485, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 0, ptr %i.r, align 1
  %.val516 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val516, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 107374182401, ptr %i.t, align 1
  %.val484 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val484, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 3, ptr %i.v, align 1
  %.val483 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val483, i64 %i.p
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 50779, ptr %i.x, align 1
  %i.y = add i32 %i.b, -40
  %i.z = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.y) #8
  %i.aa = zext i32 %1 to i64
  br label %bb.u

bb.e:                                             ; preds = %.thread
  %.val500 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val500, i64 %i.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.0.copyload.i530 = load i32, ptr %i.ac, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i530) #8, !srcloc !19
  %i.ad = add i32 %.0.copyload.i530, -1           ; 2 uses
  %i.ae = tail call i32 @llvm.usub.sat.i32(i32 %.0.copyload.i530, i32 1) ; 2 uses
  %.not471 = icmp eq i32 %.0.copyload.i530, 0
  br i1 %.not471, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = add i32 %.0.copyload.i, -8
  %i.ag = zext i32 %i.af to i64
  %.val523 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val523, i64 %i.ag
  %.0.copyload.i531 = load i64, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i531) #8, !srcloc !20
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i64 [ %.0.copyload.i531, %bb.f ], [ -1688849860263936, %bb.e ]
  %i.ai = zext i32 %3 to i64                      ; 5 uses
  %.val499 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val499, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 5592
  %.0.copyload.i532 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i532) #8, !srcloc !19
  %i.al = add nuw nsw i64 %i.ai, 5596             ; 4 uses
  %.val498 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val498, i64 %i.al
  %.0.copyload.i533 = load i32, ptr %i.am, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i533) #8, !srcloc !19
  %i.an = sub i32 %.0.copyload.i532, %.0.copyload.i533
  %i.ao = ashr i32 %i.an, 3
  %i.ap = zext i32 %i.ao to i64
  %5 = add i32 %i.ae, 7
  %6 = icmp ugt i32 %.0.copyload.i530, -7
  %7 = select i1 %6, i32 -1, i32 %5               ; 2 uses
  %i.aq = zext i32 %7 to i64
  %i.ar = add nuw nsw i64 %i.aq, 32
  %i.as = icmp samesign ugt i64 %i.ar, %i.ap
  br i1 %i.as, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = add i32 %3, 5616
  %i.au = zext i32 %i.at to i64
  %.val497 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val497, i64 %i.au
  %.0.copyload.i534 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i534) #8, !srcloc !19
  %i.aw = add nuw nsw i64 %i.ai, 5612             ; 2 uses
  %.val496 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val496, i64 %i.aw
  %.0.copyload.i535 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i535) #8, !srcloc !19
  %i.ay = sub i32 %.0.copyload.i535, %i.c
  %i.az = icmp ult i32 %.0.copyload.i534, %i.ay
  br i1 %i.az, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ba = add i32 %i.b, -40
  %i.bb = add i32 %3, 5620
  %i.bc = zext i32 %i.bb to i64
  %.val495 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val495, i64 %i.bc
  %.0.copyload.i536 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i536) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Aoscompat0x3A0x3Athread_stack_bounds0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.ba, i32 noundef %.0.copyload.i536) #8
  %i.be = zext i32 %i.c to i64                    ; 2 uses
  %.val494 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val494, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.0.copyload.i537 = load i32, ptr %i.bg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i537) #8, !srcloc !19
  %.val481 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val481, i64 %i.aw
  store i32 %.0.copyload.i537, ptr %i.bh, align 1
  %.val493 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val493, i64 %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %.0.copyload.i538 = load i32, ptr %i.bj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i538) #8, !srcloc !19
  %.val480 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val480, i64 %i.ai
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 5616
  store i32 %.0.copyload.i538, ptr %i.bl, align 1
  %i.bm = sub i32 %.0.copyload.i537, %i.c
  %i.bn = icmp ugt i32 %i.bm, %.0.copyload.i538
  br i1 %i.bn, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val492 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val492, i64 %i.al
  %.0.copyload.i539 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i539) #8, !srcloc !19
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %.0459 = phi i32 [ %.0.copyload.i539, %bb.j ], [ %.0.copyload.i533, %bb.h ]
  %i.bp = shl i32 %7, 3
  %i.bq = add i32 %.0459, %i.bp                   ; 8 uses
  %.val479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.al
  store i32 %i.bq, ptr %i.br, align 1
  %.val526 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val526, i64 %i.ai
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 5608
  %.0.copyload.i540 = load i32, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i540) #8, !srcloc !23
  %i.bu = zext i32 %.0.copyload.i540 to i64
  %i.bv = add i32 %i.bq, -24
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %.val515 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val515, i64 %i.bw
  store i64 0, ptr %i.bx, align 1
  %i.by = add i32 %i.bq, -8
  %i.bz = zext i32 %i.by to i64
  %.val514 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val514, i64 %i.bz
  store i64 %i.bu, ptr %i.ca, align 1
  %i.cb = add i32 %i.bq, -32
  %i.cc = zext i32 %i.ae to i64
  %i.cd = or disjoint i64 %i.cc, -1125899906842624
  %i.ce = zext i32 %i.cb to i64
  %.val513 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val513, i64 %i.ce
  store i64 %i.cd, ptr %i.cf, align 1
  %i.cg = add i32 %i.bq, -40
  %i.ch = zext i32 %i.cg to i64
  %.val512 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val512, i64 %i.ch
  store i64 -1688849860263936, ptr %i.ci, align 1
  %i.cj = add i32 %i.bq, -48
  %i.ck = or disjoint i64 %.pre-phi, -281474976710656
  %i.cl = zext i32 %i.cj to i64
  %.val511 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val511, i64 %i.cl
  store i64 %i.ck, ptr %i.cm, align 1
  %i.cn = add i32 %i.bq, -56                      ; 3 uses
  %i.co = zext i32 %i.cn to i64
  %.val510 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.co
  store i64 %.0, ptr %i.cp, align 1
  %.val509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val509, i64 %i.bw
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 0, ptr %i.cr, align 1
  %i.cs = icmp ult i32 %.0.copyload.i530, 2
  br i1 %i.cs, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = add i32 %i.bq, -64                      ; 3 uses
  %i.cu = and i32 %i.ad, 3                        ; 2 uses
  %.val491 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val491, i64 %i.e
  %.0.copyload.i541 = load i32, ptr %i.cv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i541) #8, !srcloc !19
  %i.cw = add i32 %.0.copyload.i541, -8           ; 4 uses
  %i.cx = icmp ugt i32 %.0.copyload.i530, 4
  br i1 %i.cx, label %bb.m, label %.loopexit559

bb.m:                                             ; preds = %bb.l
  %i.cy = and i32 %i.ad, -4
  %i.cz = add i32 %.0.copyload.i541, -32
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %.0461 = phi i32 [ %i.ed, %bb.n ], [ 0, %bb.m ]
  %i.da = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.db = shl i32 %i.da, 3                        ; 5 uses
  %i.dc = sub i32 %i.cn, %i.db
  %i.dd = sub i32 %i.cw, %i.db
  %i.de = zext i32 %i.dd to i64
  %.val522 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val522, i64 %i.de
  %.0.copyload.i542 = load i64, ptr %i.df, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i542) #8, !srcloc !20
  %i.dg = zext i32 %i.dc to i64
  %.val508 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %.val508, i64 %i.dg
  store i64 %.0.copyload.i542, ptr %i.dh, align 1
  %i.di = sub i32 %i.ct, %i.db
  %i.dj = xor i32 %i.da, -1
  %i.dk = shl i32 %i.dj, 3                        ; 2 uses
  %i.dl = add i32 %i.dk, %i.cw
  %i.dm = zext i32 %i.dl to i64
  %.val521 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val521, i64 %i.dm
  %.0.copyload.i543 = load i64, ptr %i.dn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i543) #8, !srcloc !20
  %i.do = zext i32 %i.di to i64
  %.val507 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val507, i64 %i.do
  store i64 %.0.copyload.i543, ptr %i.dp, align 1
  %i.dq = add i32 %i.dk, %i.ct
  %i.dr = sub i32 -16, %i.db                      ; 2 uses
  %i.ds = add i32 %i.dr, %i.cw
  %i.dt = zext i32 %i.ds to i64
  %.val520 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %.val520, i64 %i.dt
  %.0.copyload.i544 = load i64, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i544) #8, !srcloc !20
  %i.dv = zext i32 %i.dq to i64
  %.val506 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.val506, i64 %i.dv
  store i64 %.0.copyload.i544, ptr %i.dw, align 1
  %i.dx = add i32 %i.dr, %i.ct
  %i.dy = sub i32 %i.cz, %i.db
  %i.dz = zext i32 %i.dy to i64
  %.val519 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %.val519, i64 %i.dz
  %.0.copyload.i545 = load i64, ptr %i.ea, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i545) #8, !srcloc !20
  %i.eb = zext i32 %i.dx to i64
  %.val505 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.val505, i64 %i.eb
  store i64 %.0.copyload.i545, ptr %i.ec, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ed = add nuw i32 %.0461, 4                   ; 2 uses
  %.not472 = icmp eq i32 %i.ed, %i.cy
  br i1 %.not472, label %.loopexit559, label %bb.n

.loopexit559:                                     ; preds = %bb.n, %bb.l
  %.1464 = phi i64 [ 1, %bb.l ], [ %indvars.iv.next, %bb.n ]
  %.not473 = icmp eq i32 %i.cu, 0
  br i1 %.not473, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit559, %.preheader
  %indvars.iv561 = phi i64 [ %indvars.iv.next562, %.preheader ], [ %.1464, %.loopexit559 ] ; 2 uses
  %.1462 = phi i32 [ %i.em, %.preheader ], [ 0, %.loopexit559 ]
  %i.ee = trunc nuw i64 %indvars.iv561 to i32
  %i.ef = shl i32 %i.ee, 3                        ; 2 uses
  %i.eg = sub i32 %i.cn, %i.ef
  %i.eh = sub i32 %i.cw, %i.ef
  %i.ei = zext i32 %i.eh to i64
  %.val518 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val518, i64 %i.ei
  %.0.copyload.i546 = load i64, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i546) #8, !srcloc !20
  %i.ek = zext i32 %i.eg to i64
  %.val504 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val504, i64 %i.ek
  store i64 %.0.copyload.i546, ptr %i.el, align 1
  %indvars.iv.next562 = add nuw nsw i64 %indvars.iv561, 1
  %i.em = add nuw nsw i32 %.1462, 1               ; 2 uses
  %.not474 = icmp eq i32 %i.em, %i.cu
  br i1 %.not474, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.loopexit559, %bb.k
  %i.en = add i32 %i.b, -40
  %i.eo = zext i32 %.0465555 to i64
  %.val490 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.eo
  %.0.copyload.i547 = load i32, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i547) #8, !srcloc !19
  %i.eq = zext i32 %.0.copyload.i547 to i64
  %.val489 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val489, i64 %i.eq
  %.0.copyload.i548 = load i32, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i548) #8, !srcloc !19
  %i.es = lshr i32 %.0.copyload.i548, 22
  %i.et = and i32 %i.es, 1020
  %.val488 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.val488, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 289808
  %.0.copyload.i549 = load i32, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i549) #8, !srcloc !19
  %i.ex = zext i32 %.0.copyload.i549 to i64
  %.val487 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val487, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 60
  %.0.copyload.i550 = load i32, ptr %i.ez, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i550) #8, !srcloc !19
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !26
  %i.fc = icmp ult i32 %.0.copyload.i550, %i.fb
  br i1 %i.fc, label %bb.o, label %.critedge, !prof !27

bb.o:                                             ; preds = %.loopexit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !28
  %i.ff = zext i32 %.0.copyload.i550 to i64
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.ff ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !30 ; 2 uses
  %.not475 = icmp eq ptr %i.fi, null
  br i1 %.not475, label %.critedge, label %bb.p, !prof !31

bb.p:                                             ; preds = %bb.o
  %i.fj = load ptr, ptr @w2c_hermes_t2, align 8, !tbaa !32 ; 4 uses
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !33 ; 4 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %func_types_eq.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = icmp ne ptr %i.fj, null
  %i.fn = icmp ne ptr %i.fk, null
  %or.cond.i = and i1 %i.fm, %i.fn
end_hunk_1
