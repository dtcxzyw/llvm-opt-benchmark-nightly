Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_2?download=true
inline.NumInlined: 21302
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x3A0x3Amatch0x28hermes0x3A0x3Aregex0x3A0x3AState0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x2A0x2C0x20bool0x29:bb.a
  %.not4693 = icmp eq i8 %.0.copyload.i5356, 0
  %.val5080 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not4693, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lj = getelementptr inbounds nuw i8, ptr %.val5080, i64 %i.bi
  store i8 %.0.copyload.i5356, ptr %i.lj, align 1
  br label %.thread5658

bb.bx:                                            ; preds = %bb.bv
  %i.lk = getelementptr inbounds nuw i8, ptr %.val5080, i64 %i.e
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 17
  %.0.copyload.i5357 = load i8, ptr %i.ll, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5357) #7, !srcloc !20
  %.not4694 = icmp eq i8 %.0.copyload.i5357, 0
  br i1 %.not4694, label %select.unfold, label %.backedge

bb.by:                                            ; preds = %bb.bu, %bb.bt
  %i.lm = add i32 %.0.copyload.i5284, 3
  %.val5215 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ln = getelementptr inbounds nuw i8, ptr %.val5215, i64 %i.r
  store i32 %i.lm, ptr %i.ln, align 1
  br label %.backedge

bb.bz:                                            ; preds = %bb.g
  %.val4968 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw i8, ptr %.val4968, i64 %i.l
  %.0.copyload.i5358 = load i32, ptr %i.lo, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5358) #7, !srcloc !19
  %.val4967 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lp = getelementptr inbounds nuw i8, ptr %.val4967, i64 %i.k
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 12
  %.0.copyload.i5359 = load i32, ptr %i.lq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5359) #7, !srcloc !19
  %.not4687 = icmp eq i32 %.0.copyload.i5358, %.0.copyload.i5359
  br i1 %.not4687, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.val5079 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lr = getelementptr inbounds nuw i8, ptr %.val5079, i64 %i.k
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %.0.copyload.i5360 = load i8, ptr %i.ls, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5360) #7, !srcloc !20
  %i.lt = zext i8 %.0.copyload.i5360 to i32
  %i.lu = add i32 %.0.copyload.i5358, -1
  %i.lv = add i32 %i.lu, %i.lt
  %i.lw = zext i32 %i.lv to i64
  %.val5078 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %.val5078, i64 %i.lw
  %.0.copyload.i5361 = load i8, ptr %i.lx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5361) #7, !srcloc !20
  %i.ly = zext i8 %.0.copyload.i5361 to i32       ; 4 uses
  %.not4688 = icmp eq i8 %.0.copyload.i5360, 0
  %i.lz = select i1 %.not4688, i32 -1, i32 1
  %i.ma = add i32 %i.lz, %.0.copyload.i5358
  %.val5214 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mb = getelementptr inbounds nuw i8, ptr %.val5214, i64 %i.l
  store i32 %i.ma, ptr %i.mb, align 1
  %.val4966 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mc = getelementptr inbounds nuw i8, ptr %.val4966, i64 %i.bq
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 1
  %.0.copyload.i5362 = load i32, ptr %i.md, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5362) #7, !srcloc !19
  %i.me = and i32 %.0.copyload.i5362, 255         ; 2 uses
  %i.mf = icmp eq i32 %i.me, %i.ly
  br i1 %i.mf, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mg = or i32 %i.ly, 32
  %i.mh = and i32 %i.ly, 223
  %i.mi = add nuw nsw i32 %i.mh, 191
  %i.mj = and i32 %i.mi, 254
  %i.mk = icmp samesign ult i32 %i.mj, 26
  %i.ml = select i1 %i.mk, i32 %i.mg, i32 %i.ly
  %i.mm = icmp eq i32 %i.ml, %i.me
  br i1 %i.mm, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  tail call void @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x3A0x3Abacktrack0x28llvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x3A0x3ABacktrackInsn0x2C0x2064u0x3E0x260x2C0x20hermes0x3A0x3Aregex0x3A0x3AState0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.at, i32 noundef %2, i32 noundef %i.an, i32 noundef %3)
  %.val5077 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mn = getelementptr inbounds nuw i8, ptr %.val5077, i64 %i.e
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %.0.copyload.i5363 = load i8, ptr %i.mo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5363) #7, !srcloc !20
  %.not4689 = icmp eq i8 %.0.copyload.i5363, 0
  %.val5076 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not4689, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mp = getelementptr inbounds nuw i8, ptr %.val5076, i64 %i.bi
  store i8 %.0.copyload.i5363, ptr %i.mp, align 1
  br label %.thread5658

bb.ce:                                            ; preds = %bb.cc
  %i.mq = getelementptr inbounds nuw i8, ptr %.val5076, i64 %i.e
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 17
  %.0.copyload.i5364 = load i8, ptr %i.mr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5364) #7, !srcloc !20
  %.not4690 = icmp eq i8 %.0.copyload.i5364, 0
  br i1 %.not4690, label %select.unfold, label %.backedge

bb.cf:                                            ; preds = %bb.cb, %bb.ca
  %i.ms = add i32 %.0.copyload.i5284, 5
  %.val5213 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mt = getelementptr inbounds nuw i8, ptr %.val5213, i64 %i.r
  store i32 %i.ms, ptr %i.mt, align 1
  br label %.backedge

bb.cg:                                            ; preds = %bb.g
  %.val5075 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mu = getelementptr inbounds nuw i8, ptr %.val5075, i64 %i.bq
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 1
  %.0.copyload.i5365 = load i8, ptr %i.mv, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5365) #7, !srcloc !20
  %i.mw = zext i8 %.0.copyload.i5365 to i32       ; 3 uses
  %.val4965 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mx = getelementptr inbounds nuw i8, ptr %.val4965, i64 %i.n
  %.0.copyload.i5366 = load i32, ptr %i.mx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5366) #7, !srcloc !19
  %.val4964 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.my = getelementptr inbounds nuw i8, ptr %.val4964, i64 %i.l
  %.0.copyload.i5367 = load i32, ptr %i.my, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5367) #7, !srcloc !19
  %.val5074 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mz = getelementptr inbounds nuw i8, ptr %.val5074, i64 %i.k
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %.0.copyload.i5368 = load i8, ptr %i.na, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5368) #7, !srcloc !20
  %i.nb = zext i8 %.0.copyload.i5368 to i32
  %.not4708 = icmp eq i8 %.0.copyload.i5368, 0    ; 3 uses
  %i.nc = select i1 %.not4708, i32 %.0.copyload.i5367, i32 %.0.copyload.i5366
  %.val4963 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nd = getelementptr inbounds nuw i8, ptr %.val4963, i64 %i.k
  %.0.copyload.i5369 = load i32, ptr %i.nd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5369) #7, !srcloc !19
  %i.ne = select i1 %.not4708, i32 %.0.copyload.i5369, i32 %.0.copyload.i5367
  %i.nf = sub i32 %i.nc, %i.ne
  %i.ng = icmp ult i32 %i.nf, %i.mw
  br i1 %i.ng, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not4709 = icmp eq i8 %.0.copyload.i5365, 0
  br i1 %.not4709, label %.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nh = add nsw i32 %i.nb, -1                   ; 2 uses
  %i.ni = add i32 %i.nh, %.0.copyload.i5367
  %i.nj = zext i32 %i.ni to i64
  %.val5073 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nk = getelementptr inbounds nuw i8, ptr %.val5073, i64 %i.nj
  %.0.copyload.i5370 = load i8, ptr %i.nk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5370) #7, !srcloc !20
  %i.nl = select i1 %.not4708, i32 -1, i32 1      ; 2 uses
  %i.nm = add i32 %i.nl, %.0.copyload.i5367       ; 2 uses
  %.val5212 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nn = getelementptr inbounds nuw i8, ptr %.val5212, i64 %i.l
  store i32 %i.nm, ptr %i.nn, align 1
  %i.no = add i32 %i.bp, 2                        ; 2 uses
  %i.np = zext i32 %i.no to i64
  %.val5072 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nq = getelementptr inbounds nuw i8, ptr %.val5072, i64 %i.np
  %.0.copyload.i5371 = load i8, ptr %i.nq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5371) #7, !srcloc !20
  %.not4710 = icmp eq i8 %.0.copyload.i5370, %.0.copyload.i5371
  br i1 %.not4710, label %.preheader.preheader, label %bb.ck

.preheader.preheader:                             ; preds = %bb.ci
  %i.nr = zext i8 %.0.copyload.i5365 to i64
  %.not47115952 = icmp eq i8 %.0.copyload.i5365, 1
  br i1 %.not47115952, label %.thread, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %indvars.iv.next5790 = add nuw nsw i64 %indvars.iv.next57905954, 1 ; 2 uses
  %.not4711 = icmp eq i64 %indvars.iv.next5790, %i.nr
  br i1 %.not4711, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.next57905954 = phi i64 [ %indvars.iv.next5790, %.preheader ], [ 1, %.preheader.preheader ] ; 2 uses
  %.044045953 = phi i32 [ %i.nw, %.preheader ], [ %i.nm, %.preheader.preheader ] ; 2 uses
  %i.ns = trunc nuw nsw i64 %indvars.iv.next57905954 to i32 ; 2 uses
  %i.nt = add i32 %.044045953, %i.nh
  %i.nu = zext i32 %i.nt to i64
  %.val5071 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nv = getelementptr inbounds nuw i8, ptr %.val5071, i64 %i.nu
  %.0.copyload.i5372 = load i8, ptr %i.nv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5372) #7, !srcloc !20
  %i.nw = add i32 %.044045953, %i.nl              ; 2 uses
  %.val5211 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nx = getelementptr inbounds nuw i8, ptr %.val5211, i64 %i.l
  store i32 %i.nw, ptr %i.nx, align 1
  %i.ny = add i32 %i.no, %i.ns
  %i.nz = zext i32 %i.ny to i64
  %.val5070 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oa = getelementptr inbounds nuw i8, ptr %.val5070, i64 %i.nz
  %.0.copyload.i5373 = load i8, ptr %i.oa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5373) #7, !srcloc !20
  %i.ob = icmp eq i8 %.0.copyload.i5372, %.0.copyload.i5373
  br i1 %i.ob, label %.preheader, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph
  %.not4712 = icmp samesign ult i32 %i.ns, %i.mw
  br i1 %.not4712, label %bb.ck, label %.thread

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.cg
  tail call void @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x3A0x3Abacktrack0x28llvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x3A0x3ABacktrackInsn0x2C0x2064u0x3E0x260x2C0x20hermes0x3A0x3Aregex0x3A0x3AState0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.at, i32 noundef %2, i32 noundef %i.an, i32 noundef %3)
  %.val5069 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oc = getelementptr inbounds nuw i8, ptr %.val5069, i64 %i.e
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %.0.copyload.i5374 = load i8, ptr %i.od, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5374) #7, !srcloc !20
  %.not4713 = icmp eq i8 %.0.copyload.i5374, 0
  %.val5068 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not4713, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.oe = getelementptr inbounds nuw i8, ptr %.val5068, i64 %i.bi
  store i8 %.0.copyload.i5374, ptr %i.oe, align 1
  br label %.thread5658

bb.cm:                                            ; preds = %bb.ck
  %i.of = getelementptr inbounds nuw i8, ptr %.val5068, i64 %i.e
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  %.0.copyload.i5375 = load i8, ptr %i.og, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5375) #7, !srcloc !20
  %.not4714 = icmp eq i8 %.0.copyload.i5375, 0
  br i1 %.not4714, label %select.unfold, label %.backedge

.thread:                                          ; preds = %.preheader, %.preheader.preheader, %bb.cj, %bb.ch
  %i.oh = add i32 %.0.copyload.i5284, 2
  %i.oi = add i32 %i.oh, %i.mw
  %.val5210 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oj = getelementptr inbounds nuw i8, ptr %.val5210, i64 %i.r
  store i32 %i.oi, ptr %i.oj, align 1
  br label %.backedge

bb.cn:                                            ; preds = %bb.g
  %.val5067 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ok = getelementptr inbounds nuw i8, ptr %.val5067, i64 %i.bq
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 1
  %.0.copyload.i5376 = load i8, ptr %i.ol, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5376) #7, !srcloc !20
  %i.om = zext i8 %.0.copyload.i5376 to i32       ; 2 uses
  %.val4962 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.on = getelementptr inbounds nuw i8, ptr %.val4962, i64 %i.n
  %.0.copyload.i5377 = load i32, ptr %i.on, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5377) #7, !srcloc !19
  %.val4961 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oo = getelementptr inbounds nuw i8, ptr %.val4961, i64 %i.l
  %.0.copyload.i5378 = load i32, ptr %i.oo, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5378) #7, !srcloc !19
  %.val5066 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.op = getelementptr inbounds nuw i8, ptr %.val5066, i64 %i.k
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %.0.copyload.i5379 = load i8, ptr %i.oq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5379) #7, !srcloc !20
  %i.or = zext i8 %.0.copyload.i5379 to i32
  %.not4699 = icmp eq i8 %.0.copyload.i5379, 0    ; 3 uses
  %i.os = select i1 %.not4699, i32 %.0.copyload.i5378, i32 %.0.copyload.i5377
  %.val4960 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ot = getelementptr inbounds nuw i8, ptr %.val4960, i64 %i.k
  %.0.copyload.i5380 = load i32, ptr %i.ot, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5380) #7, !srcloc !19
  %i.ou = select i1 %.not4699, i32 %.0.copyload.i5380, i32 %.0.copyload.i5378
  %i.ov = sub i32 %i.os, %i.ou
  %.not4700 = icmp ult i32 %i.ov, %i.om
  br i1 %.not4700, label %bb.cu, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.not4701 = icmp eq i8 %.0.copyload.i5376, 0
  br i1 %.not4701, label %bb.cx, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ow = add i32 %i.bp, 2
  %i.ox = select i1 %.not4699, i32 -1, i32 1
  %i.oy = add nsw i32 %i.or, -1
  %.val5065 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oz = getelementptr inbounds nuw i8, ptr %.val5065, i64 %i.p
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 12
  %.0.copyload.i5381 = load i8, ptr %i.pa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5381) #7, !srcloc !20
  %i.pb = zext i8 %.0.copyload.i5381 to i32
  %i.pc = shl nuw nsw i32 %i.pb, 2
  %i.pd = and i32 %i.pc, 32
  %i.pe = zext i8 %.0.copyload.i5376 to i64       ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cs, %bb.cp
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cs ], [ 0, %bb.cp ] ; 2 uses
  %.14418 = phi i32 [ %i.pi, %bb.cs ], [ %.0.copyload.i5378, %bb.cp ] ; 2 uses
  %.04397 = phi i32 [ %i.px, %bb.cs ], [ 0, %bb.cp ]
  %i.pf = add i32 %i.oy, %.14418
  %i.pg = zext i32 %i.pf to i64
  %.val5064 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ph = getelementptr inbounds nuw i8, ptr %.val5064, i64 %i.pg
  %.0.copyload.i5382 = load i8, ptr %i.ph, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5382) #7, !srcloc !20
  %i.pi = add i32 %.14418, %i.ox                  ; 2 uses
  %.val5209 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pj = getelementptr inbounds nuw i8, ptr %.val5209, i64 %i.l
  store i32 %i.pi, ptr %i.pj, align 1
  %i.pk = trunc nuw nsw i64 %indvars.iv to i32
  %i.pl = add i32 %i.ow, %i.pk
  %i.pm = zext i32 %i.pl to i64
  %.val5063 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pn = getelementptr inbounds nuw i8, ptr %.val5063, i64 %i.pm
  %.0.copyload.i5383 = load i8, ptr %i.pn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5383) #7, !srcloc !20
  %.not4702 = icmp eq i8 %.0.copyload.i5383, %.0.copyload.i5382
  br i1 %.not4702, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.po = zext i8 %.0.copyload.i5382 to i32       ; 2 uses
  %i.pp = sext i8 %.0.copyload.i5383 to i32
  %i.pq = and i32 %i.po, 223                      ; 2 uses
  %i.pr = or disjoint i32 %i.pq, %i.pd
  %i.ps = add nuw nsw i32 %i.pq, 191
  %i.pt = and i32 %i.ps, 254
  %i.pu = icmp samesign ult i32 %i.pt, 26
  %i.pv = select i1 %i.pu, i32 %i.pr, i32 %i.po
  %.not4703 = icmp eq i32 %i.pv, %i.pp
  br i1 %.not4703, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.pw = icmp samesign uge i64 %indvars.iv.next, %i.pe
  %i.px = zext i1 %i.pw to i32                    ; 2 uses
  %.not4704 = icmp eq i64 %indvars.iv.next, %i.pe
  br i1 %.not4704, label %bb.ct, label %bb.cq

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.14398 = phi i32 [ %.04397, %bb.cr ], [ %i.px, %bb.cs ]
  %.not4705 = icmp eq i32 %.14398, 0
  br i1 %.not4705, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct, %bb.cn
  tail call void @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x3A0x3Abacktrack0x28llvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x3A0x3ABacktrackInsn0x2C0x2064u0x3E0x260x2C0x20hermes0x3A0x3Aregex0x3A0x3AState0x3Chermes0x3A0x3Aregex0x3A0x3AASCIIRegexTraits0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.at, i32 noundef %2, i32 noundef %i.an, i32 noundef %3)
  %.val5062 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.py = getelementptr inbounds nuw i8, ptr %.val5062, i64 %i.e
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %.0.copyload.i5384 = load i8, ptr %i.pz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5384) #7, !srcloc !20
  %.not4706 = icmp eq i8 %.0.copyload.i5384, 0
  %.val5061 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not4706, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qa = getelementptr inbounds nuw i8, ptr %.val5061, i64 %i.bi
  store i8 %.0.copyload.i5384, ptr %i.qa, align 1
  br label %.thread5658

bb.cw:                                            ; preds = %bb.cu
  %i.qb = getelementptr inbounds nuw i8, ptr %.val5061, i64 %i.e
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 17
  %.0.copyload.i5385 = load i8, ptr %i.qc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5385) #7, !srcloc !20
  %.not4707 = icmp eq i8 %.0.copyload.i5385, 0
  br i1 %.not4707, label %select.unfold, label %.backedge

bb.cx:                                            ; preds = %bb.ct, %bb.co
  %i.qd = add i32 %.0.copyload.i5284, 2
  %i.qe = add i32 %i.qd, %i.om
  %.val5208 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qf = getelementptr inbounds nuw i8, ptr %.val5208, i64 %i.r
  store i32 %i.qe, ptr %i.qf, align 1
  br label %.backedge

bb.cy:                                            ; preds = %bb.g
  %.val4959 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qg = getelementptr inbounds nuw i8, ptr %.val4959, i64 %i.p
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %.0.copyload.i5386 = load i32, ptr %i.qh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5386) #7, !srcloc !19
  %i.qi = and i32 %.0.copyload.i5386, 4
  %.val5060 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qj = getelementptr inbounds nuw i8, ptr %.val5060, i64 %i.bq
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 5
  %.0.copyload.i5387 = load i8, ptr %i.qk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5387) #7, !srcloc !20
  %i.ql = zext i8 %.0.copyload.i5387 to i32       ; 2 uses
  %i.qm = and i32 %i.ql, 1
  %.not4671 = icmp eq i32 %i.qm, 0
  %.not46724673 = icmp eq i32 %i.qi, 0            ; 2 uses
  %.not4672 = select i1 %.not4671, i1 true, i1 %.not46724673
  br i1 %.not4672, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  %i.qn = and i32 %i.ql, 2
  %.not4674 = icmp eq i32 %i.qn, 0
  br i1 %.not4674, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.val4958 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qo = getelementptr inbounds nuw i8, ptr %.val4958, i64 %i.l
  %.0.copyload.i5388 = load i32, ptr %i.qo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5388) #7, !srcloc !19
  %.val4957 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qp = getelementptr inbounds nuw i8, ptr %.val4957, i64 %i.k
  %.0.copyload.i5389 = load i32, ptr %i.qp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5389) #7, !srcloc !19
  %.not4675 = icmp eq i32 %.0.copyload.i5388, %.0.copyload.i5389
  br i1 %.not4675, label %bb.db, label %bb.dc
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3Amatch0x28hermes0x3A0x3Aregex0x3A0x3AState0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x2A0x2C0x20bool0x29:bb.a
  %i.pp = select i1 %.not5518, i32 -4, i32 4
  %i.pq = add i32 %i.pp, %.0.copyload.i6267
  %.val6058 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pr = getelementptr inbounds nuw i8, ptr %.val6058, i64 %i.l
  store i32 %i.pq, ptr %i.pr, align 1
  %i.ps = shl nuw nsw i32 %i.ph, 10
  %i.pt = add nsw i32 %i.ps, -56613888
  %i.pu = add nuw nsw i32 %i.pt, %i.pn
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz, %bb.cy, %bb.cx
  %i.pv = shl nuw nsw i32 %i.ox, 1
  %i.pw = add i32 %.0.copyload.i6267, -2
  %i.px = add i32 %i.pw, %i.pv
  %i.py = zext i32 %i.px to i64
  %.val6153 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pz = getelementptr inbounds nuw i8, ptr %.val6153, i64 %i.py
  %.0.copyload.i6274 = load i16, ptr %i.pz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6274) #7, !srcloc !23
  %i.qa = zext i16 %.0.copyload.i6274 to i32
  %i.qb = select i1 %.not5518, i32 -2, i32 2
  %i.qc = add i32 %i.qb, %.0.copyload.i6267
  %.val6057 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qd = getelementptr inbounds nuw i8, ptr %.val6057, i64 %i.l
  store i32 %i.qc, ptr %i.qd, align 1
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.15206 = phi i32 [ %i.qa, %bb.db ], [ %i.pu, %bb.da ] ; 6 uses
  %i.qe = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %.val5824 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qf = getelementptr inbounds nuw i8, ptr %.val5824, i64 %i.qe
  %.0.copyload.i6275 = load i32, ptr %i.qf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6275) #7, !srcloc !19
  %.not5521 = icmp eq i32 %.0.copyload.i6275, %.15206
  br i1 %.not5521, label %bb.di, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.qg = icmp samesign ult i32 %.15206, 128
  br i1 %i.qg, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.qh = or i32 %.15206, 32
  %i.qi = and i32 %.15206, 95
  %i.qj = add nsw i32 %i.qi, -65
  %i.qk = icmp ult i32 %i.qj, 26
  %i.ql = select i1 %i.qk, i32 %i.qh, i32 %.15206
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.qm = tail call i32 @w2c_hermes_hermes0x3A0x3Acanonicalize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %.15206, i32 noundef 1) #7
  %.val5823 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qn = getelementptr inbounds nuw i8, ptr %.val5823, i64 %i.qe
  %.0.copyload.i6276 = load i32, ptr %i.qn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6276) #7, !srcloc !19
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.25237 = phi i32 [ %.0.copyload.i6275, %bb.de ], [ %.0.copyload.i6276, %bb.df ]
  %.25221 = phi i32 [ %i.ql, %bb.de ], [ %i.qm, %bb.df ]
  %.not5522 = icmp eq i32 %.25237, %.25221
  br i1 %.not5522, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %.val5822 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qo = getelementptr inbounds nuw i8, ptr %.val5822, i64 %i.r
  %.0.copyload.i6277 = load i32, ptr %i.qo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6277) #7, !srcloc !19
  br label %bb.di

bb.di:                                            ; preds = %bb.dc, %bb.dh
  %.2 = phi i32 [ %.0.copyload.i6277, %bb.dh ], [ %.0.copyload.i6179, %bb.dc ]
  %i.qp = add i32 %.2, 5
  %.val6056 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qq = getelementptr inbounds nuw i8, ptr %.val6056, i64 %i.r
  store i32 %i.qp, ptr %i.qq, align 1
  br label %.backedge

bb.dj:                                            ; preds = %bb.dg, %bb.cw
  tail call void @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3Abacktrack0x28llvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3ABacktrackInsn0x2C0x2064u0x3E0x260x2C0x20hermes0x3A0x3Aregex0x3A0x3AState0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef %2, i32 noundef %i.ap, i32 noundef %3)
  %.val5931 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qr = getelementptr inbounds nuw i8, ptr %.val5931, i64 %i.e
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %.0.copyload.i6278 = load i8, ptr %i.qs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6278) #7, !srcloc !20
  %.not5523 = icmp eq i8 %.0.copyload.i6278, 0
  %.val5930 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not5523, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.qt = getelementptr inbounds nuw i8, ptr %.val5930, i64 %i.bk
  store i8 %.0.copyload.i6278, ptr %i.qt, align 1
  br label %.thread6595

bb.dl:                                            ; preds = %bb.dj
  %i.qu = getelementptr inbounds nuw i8, ptr %.val5930, i64 %i.e
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 17
  %.0.copyload.i6279 = load i8, ptr %i.qv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6279) #7, !srcloc !20
  %.not5524 = icmp eq i8 %.0.copyload.i6279, 0
  br i1 %.not5524, label %select.unfold, label %.backedge

bb.dm:                                            ; preds = %bb.g
  %.val5929 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qw = getelementptr inbounds nuw i8, ptr %.val5929, i64 %i.bt
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 1
  %.0.copyload.i6280 = load i8, ptr %i.qx, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6280) #7, !srcloc !20
  %i.qy = zext i8 %.0.copyload.i6280 to i32       ; 3 uses
  %.val5821 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qz = getelementptr inbounds nuw i8, ptr %.val5821, i64 %i.n
  %.0.copyload.i6281 = load i32, ptr %i.qz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6281) #7, !srcloc !19
  %.val5820 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ra = getelementptr inbounds nuw i8, ptr %.val5820, i64 %i.l
  %.0.copyload.i6282 = load i32, ptr %i.ra, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6282) #7, !srcloc !19
  %.val5928 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rb = getelementptr inbounds nuw i8, ptr %.val5928, i64 %i.k
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %.0.copyload.i6283 = load i8, ptr %i.rc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6283) #7, !srcloc !20
  %i.rd = zext i8 %.0.copyload.i6283 to i32
  %.not5547 = icmp eq i8 %.0.copyload.i6283, 0    ; 3 uses
  %i.re = select i1 %.not5547, i32 %.0.copyload.i6282, i32 %.0.copyload.i6281
  %.val5819 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rf = getelementptr inbounds nuw i8, ptr %.val5819, i64 %i.k
  %.0.copyload.i6284 = load i32, ptr %i.rf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6284) #7, !srcloc !19
  %i.rg = select i1 %.not5547, i32 %.0.copyload.i6284, i32 %.0.copyload.i6282
  %i.rh = sub i32 %i.re, %i.rg
  %i.ri = ashr i32 %i.rh, 1
  %i.rj = icmp ult i32 %i.ri, %i.qy
  br i1 %i.rj, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.not5548 = icmp eq i8 %.0.copyload.i6280, 0
  br i1 %.not5548, label %.thread, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.rk = shl nuw nsw i32 %i.rd, 1
  %i.rl = add nsw i32 %i.rk, -2                   ; 2 uses
  %i.rm = add i32 %i.rl, %.0.copyload.i6282
  %i.rn = zext i32 %i.rm to i64
  %.val6152 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ro = getelementptr inbounds nuw i8, ptr %.val6152, i64 %i.rn
  %.0.copyload.i6285 = load i16, ptr %i.ro, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6285) #7, !srcloc !23
  %i.rp = zext i16 %.0.copyload.i6285 to i32
  %i.rq = select i1 %.not5547, i32 -2, i32 2      ; 2 uses
  %i.rr = add i32 %i.rq, %.0.copyload.i6282       ; 2 uses
  %.val6055 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rs = getelementptr inbounds nuw i8, ptr %.val6055, i64 %i.l
  store i32 %i.rr, ptr %i.rs, align 1
  %i.rt = add i32 %i.bs, 2                        ; 2 uses
  %i.ru = zext i32 %i.rt to i64
  %.val6093 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rv = getelementptr inbounds nuw i8, ptr %.val6093, i64 %i.ru
  %.0.copyload.i6286 = load i8, ptr %i.rv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6286) #7, !srcloc !21
  %i.rw = sext i8 %.0.copyload.i6286 to i32
  %.not5549 = icmp eq i32 %i.rp, %i.rw
  br i1 %.not5549, label %.preheader.preheader, label %bb.dq

.preheader.preheader:                             ; preds = %bb.do
  %i.rx = zext i8 %.0.copyload.i6280 to i64
  %.not55506887 = icmp eq i8 %.0.copyload.i6280, 1
  br i1 %.not55506887, label %.thread, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %indvars.iv.next6726 = add nuw nsw i64 %indvars.iv.next67266889, 1 ; 2 uses
  %.not5550 = icmp eq i64 %indvars.iv.next6726, %i.rx
  br i1 %.not5550, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.next67266889 = phi i64 [ %indvars.iv.next6726, %.preheader ], [ 1, %.preheader.preheader ] ; 2 uses
  %.252136888 = phi i32 [ %i.sd, %.preheader ], [ %i.rr, %.preheader.preheader ] ; 2 uses
  %i.ry = trunc nuw nsw i64 %indvars.iv.next67266889 to i32 ; 2 uses
  %i.rz = add i32 %.252136888, %i.rl
  %i.sa = zext i32 %i.rz to i64
  %.val6151 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sb = getelementptr inbounds nuw i8, ptr %.val6151, i64 %i.sa
  %.0.copyload.i6287 = load i16, ptr %i.sb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6287) #7, !srcloc !23
  %i.sc = zext i16 %.0.copyload.i6287 to i32
  %i.sd = add i32 %.252136888, %i.rq              ; 2 uses
  %.val6054 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.se = getelementptr inbounds nuw i8, ptr %.val6054, i64 %i.l
  store i32 %i.sd, ptr %i.se, align 1
  %i.sf = add i32 %i.rt, %i.ry
  %i.sg = zext i32 %i.sf to i64
  %.val6092 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sh = getelementptr inbounds nuw i8, ptr %.val6092, i64 %i.sg
  %.0.copyload.i6288 = load i8, ptr %i.sh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6288) #7, !srcloc !21
  %i.si = sext i8 %.0.copyload.i6288 to i32
  %i.sj = icmp eq i32 %i.sc, %i.si
  br i1 %i.sj, label %.preheader, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph
  %.not5551 = icmp samesign ult i32 %i.ry, %i.qy
  br i1 %.not5551, label %bb.dq, label %.thread

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dm
  tail call void @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3Abacktrack0x28llvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3ABacktrackInsn0x2C0x2064u0x3E0x260x2C0x20hermes0x3A0x3Aregex0x3A0x3AState0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef %2, i32 noundef %i.ap, i32 noundef %3)
  %.val5927 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sk = getelementptr inbounds nuw i8, ptr %.val5927, i64 %i.e
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %.0.copyload.i6289 = load i8, ptr %i.sl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6289) #7, !srcloc !20
  %.not5552 = icmp eq i8 %.0.copyload.i6289, 0
  %.val5926 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not5552, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.sm = getelementptr inbounds nuw i8, ptr %.val5926, i64 %i.bk
  store i8 %.0.copyload.i6289, ptr %i.sm, align 1
  br label %.thread6595

bb.ds:                                            ; preds = %bb.dq
  %i.sn = getelementptr inbounds nuw i8, ptr %.val5926, i64 %i.e
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 17
  %.0.copyload.i6290 = load i8, ptr %i.so, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6290) #7, !srcloc !20
  %.not5553 = icmp eq i8 %.0.copyload.i6290, 0
  br i1 %.not5553, label %select.unfold, label %.backedge

.thread:                                          ; preds = %.preheader, %.preheader.preheader, %bb.dp, %bb.dn
  %i.sp = add i32 %.0.copyload.i6179, 2
  %i.sq = add i32 %i.sp, %i.qy
  %.val6053 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sr = getelementptr inbounds nuw i8, ptr %.val6053, i64 %i.r
  store i32 %i.sq, ptr %i.sr, align 1
  br label %.backedge

bb.dt:                                            ; preds = %bb.g
  %i.ss = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %.val5925 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.st = getelementptr inbounds nuw i8, ptr %.val5925, i64 %i.ss
  %.0.copyload.i6291 = load i8, ptr %i.st, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6291) #7, !srcloc !20
  %i.su = zext i8 %.0.copyload.i6291 to i32
  %.val5818 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sv = getelementptr inbounds nuw i8, ptr %.val5818, i64 %i.n
  %.0.copyload.i6292 = load i32, ptr %i.sv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6292) #7, !srcloc !19
  %.val5817 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sw = getelementptr inbounds nuw i8, ptr %.val5817, i64 %i.l
  %.0.copyload.i6293 = load i32, ptr %i.sw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6293) #7, !srcloc !19
  %.val5924 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sx = getelementptr inbounds nuw i8, ptr %.val5924, i64 %i.aq
  %.0.copyload.i6294 = load i8, ptr %i.sx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6294) #7, !srcloc !20
  %.not5537 = icmp eq i8 %.0.copyload.i6294, 0    ; 2 uses
  %i.sy = select i1 %.not5537, i32 %.0.copyload.i6293, i32 %.0.copyload.i6292
  %.val5816 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sz = getelementptr inbounds nuw i8, ptr %.val5816, i64 %i.k
  %.0.copyload.i6295 = load i32, ptr %i.sz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6295) #7, !srcloc !19
  %i.ta = select i1 %.not5537, i32 %.0.copyload.i6295, i32 %.0.copyload.i6293
  %i.tb = sub i32 %i.sy, %i.ta
  %i.tc = ashr i32 %i.tb, 1
  %i.td = icmp ult i32 %i.tc, %i.su
  br i1 %i.td, label %bb.ef, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.not5538 = icmp eq i8 %.0.copyload.i6291, 0
  br i1 %.not5538, label %bb.ee, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.te = add i32 %i.bs, 2
  %.val5923 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tf = getelementptr inbounds nuw i8, ptr %.val5923, i64 %i.p
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 12
  %.0.copyload.i6296 = load i8, ptr %i.tg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6296) #7, !srcloc !20
  %i.th = and i8 %.0.copyload.i6296, 8
  %i.ti = zext nneg i8 %i.th to i32               ; 2 uses
  %i.tj = shl nuw nsw i32 %i.ti, 2
  %.lobit5541 = lshr exact i32 %i.ti, 3
  %i.tk = zext i8 %.0.copyload.i6291 to i64       ; 2 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.eb, %bb.dv
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.eb ], [ 0, %bb.dv ] ; 2 uses
  %.05201 = phi i32 [ %i.uk, %bb.eb ], [ 0, %bb.dv ]
  %.val5815 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tl = getelementptr inbounds nuw i8, ptr %.val5815, i64 %i.l
  %.0.copyload.i6297 = load i32, ptr %i.tl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6297) #7, !srcloc !19
  %.val5922 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tm = getelementptr inbounds nuw i8, ptr %.val5922, i64 %i.aq
  %.0.copyload.i6298 = load i8, ptr %i.tm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6298) #7, !srcloc !20
  %i.tn = zext i8 %.0.copyload.i6298 to i32
  %i.to = shl nuw nsw i32 %i.tn, 1
  %i.tp = add i32 %.0.copyload.i6297, -2
  %i.tq = add i32 %i.tp, %i.to
  %i.tr = zext i32 %i.tq to i64
  %.val6150 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ts = getelementptr inbounds nuw i8, ptr %.val6150, i64 %i.tr
  %.0.copyload.i6299 = load i16, ptr %i.ts, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i6299) #7, !srcloc !23
  %i.tt = zext i16 %.0.copyload.i6299 to i32      ; 4 uses
  %.not5539 = icmp eq i8 %.0.copyload.i6298, 0
  %i.tu = select i1 %.not5539, i32 -2, i32 2
  %i.tv = add i32 %i.tu, %.0.copyload.i6297
  %.val6052 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tw = getelementptr inbounds nuw i8, ptr %.val6052, i64 %i.l
  store i32 %i.tv, ptr %i.tw, align 1
  %i.tx = trunc nuw nsw i64 %indvars.iv to i32
  %i.ty = add i32 %i.te, %i.tx
  %i.tz = zext i32 %i.ty to i64
  %.val6091 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ua = getelementptr inbounds nuw i8, ptr %.val6091, i64 %i.tz
  %.0.copyload.i6300 = load i8, ptr %i.ua, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6300) #7, !srcloc !21
  %i.ub = sext i8 %.0.copyload.i6300 to i32       ; 2 uses
  %.not5540 = icmp eq i32 %i.ub, %i.tt
  br i1 %.not5540, label %bb.eb, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.uc = icmp ult i16 %.0.copyload.i6299, 128
  br i1 %i.uc, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.ud = and i32 %i.tt, 95                       ; 2 uses
  %i.ue = or disjoint i32 %i.ud, %i.tj
  %i.uf = add nsw i32 %i.ud, -65
  %i.ug = icmp ult i32 %i.uf, 26
  %i.uh = select i1 %i.ug, i32 %i.ue, i32 %i.tt
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.ui = tail call i32 @w2c_hermes_hermes0x3A0x3Acanonicalize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.tt, i32 noundef %.lobit5541) #7
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.05185 = phi i32 [ %i.uh, %bb.dy ], [ %i.ui, %bb.dz ]
  %.not5542 = icmp eq i32 %.05185, %i.ub
  br i1 %.not5542, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea, %bb.dw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.uj = icmp samesign uge i64 %indvars.iv.next, %i.tk
  %i.uk = zext i1 %i.uj to i32                    ; 2 uses
  %.not5543 = icmp eq i64 %indvars.iv.next, %i.tk
  br i1 %.not5543, label %bb.ec, label %bb.dw

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.15202 = phi i32 [ %.05201, %bb.ea ], [ %i.uk, %bb.eb ]
  %.not5544 = icmp eq i32 %.15202, 0
  br i1 %.not5544, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.val5814 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ul = getelementptr inbounds nuw i8, ptr %.val5814, i64 %i.r
  %.0.copyload.i6301 = load i32, ptr %i.ul, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i6301) #7, !srcloc !19
  %.val5921 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.um = getelementptr inbounds nuw i8, ptr %.val5921, i64 %i.ss
  %.0.copyload.i6302 = load i8, ptr %i.um, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6302) #7, !srcloc !20
  %i.un = zext i8 %.0.copyload.i6302 to i32
  %i.uo = add nuw nsw i32 %i.un, 2
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.du
  %.45239 = phi i32 [ %i.uo, %bb.ed ], [ 2, %bb.du ]
  %.45223 = phi i32 [ %.0.copyload.i6301, %bb.ed ], [ %.0.copyload.i6179, %bb.du ]
  %i.up = add i32 %.45239, %.45223
  %.val6051 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uq = getelementptr inbounds nuw i8, ptr %.val6051, i64 %i.r
  store i32 %i.up, ptr %i.uq, align 1
  br label %.backedge

bb.ef:                                            ; preds = %bb.ec, %bb.dt
  tail call void @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3Abacktrack0x28llvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Aregex0x3A0x3AContext0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3ABacktrackInsn0x2C0x2064u0x3E0x260x2C0x20hermes0x3A0x3Aregex0x3A0x3AState0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef %2, i32 noundef %i.ap, i32 noundef %3)
  %.val5920 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ur = getelementptr inbounds nuw i8, ptr %.val5920, i64 %i.e
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %.0.copyload.i6303 = load i8, ptr %i.us, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6303) #7, !srcloc !20
  %.not5545 = icmp eq i8 %.0.copyload.i6303, 0
  %.val5919 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not5545, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ut = getelementptr inbounds nuw i8, ptr %.val5919, i64 %i.bk
  store i8 %.0.copyload.i6303, ptr %i.ut, align 1
  br label %.thread6595

bb.eh:                                            ; preds = %bb.ef
  %i.uu = getelementptr inbounds nuw i8, ptr %.val5919, i64 %i.e
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 17
  %.0.copyload.i6304 = load i8, ptr %i.uv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i6304) #7, !srcloc !20
  %.not5546 = icmp eq i8 %.0.copyload.i6304, 0
  br i1 %.not5546, label %select.unfold, label %.backedge

end_hunk_1
