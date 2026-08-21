inline.NumInlined: 10002
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  store i32 %.0.copyload.i2304, ptr %i.ar, align 1
  %.val2263 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %.val2263, i64 %i.e
  %.0.copyload.i2305 = load i64, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2305) #13, !srcloc !33
  %.val2292 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %.val2292, i64 %i.k
  store i64 %.0.copyload.i2305, ptr %i.at, align 1
  br label %.loopexit2445

bb.h:                                             ; preds = %.loopexit2456
  %i.au = add i32 %.01926, 12
  %i.av = add i32 %.01926, 24
  %i.aw = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01926, i32 noundef %i.au, i32 noundef %i.av, i32 noundef %i.j) ; 0 uses
  br label %.loopexit2445

bb.i:                                             ; preds = %.loopexit2456
  %i.ax = add i32 %.01926, 12
  %i.ay = add i32 %.01926, 24
  %i.az = add i32 %.01926, 36
  %i.ba = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01926, i32 noundef %i.ax, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.j) ; 0 uses
  br label %.loopexit2445

bb.j:                                             ; preds = %.loopexit2456
  %i.bb = icmp slt i32 %i.o, 372
  br i1 %i.bb, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.bc = add i32 %.01926, 12
  %i.bd = add i32 %.01926, 24                     ; 2 uses
  %i.be = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.01926, i32 noundef %i.bc, i32 noundef %i.bd) ; 0 uses
  %i.bf = add i32 %.01926, 36                     ; 2 uses
  %i.bg = icmp eq i32 %i.bf, %.01942
  br i1 %i.bg, label %.loopexit2445, label %.preheader2444

.preheader2444:                                   ; preds = %bb.k, %bb.v
  %.21946 = phi i32 [ %i.dg, %bb.v ], [ %i.bf, %bb.k ] ; 4 uses
  %.01931 = phi i32 [ %.21946, %bb.v ], [ %i.bd, %bb.k ] ; 3 uses
  %i.bh = add i32 %.21946, 8
  %i.bi = zext i32 %i.bh to i64
  %.val2189 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2189, i64 %i.bi
  %.0.copyload.i2306 = load i32, ptr %i.bj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2306) #13, !srcloc !14
  %i.bk = and i32 %.0.copyload.i2306, 2147483647  ; 2 uses
  %i.bl = zext i32 %.21946 to i64                 ; 4 uses
  %.val2188 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2188, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.0.copyload.i2307 = load i32, ptr %i.bn, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2307) #13, !srcloc !14
  %.val2187 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2187, i64 %i.bl
  %.0.copyload.i2308 = load i32, ptr %i.bo, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2308) #13, !srcloc !14
  %i.bp = zext i32 %.01931 to i64                 ; 5 uses
  %.val2186 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %.val2186, i64 %i.bp
  %.0.copyload.i2309 = load i32, ptr %i.bq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2309) #13, !srcloc !14
  %i.br = icmp ult i32 %.0.copyload.i2308, %.0.copyload.i2309
  br i1 %i.br, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.preheader2444
  %i.bs = icmp ugt i32 %.0.copyload.i2308, %.0.copyload.i2309
  br i1 %i.bs, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val2185 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2185, i64 %i.bp
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.0.copyload.i2310 = load i32, ptr %i.bu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2310) #13, !srcloc !14
  %i.bv = icmp ult i32 %.0.copyload.i2307, %.0.copyload.i2310
  br i1 %i.bv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = icmp ugt i32 %.0.copyload.i2307, %.0.copyload.i2310
  br i1 %i.bw, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val2184 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2184, i64 %i.bp
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.0.copyload.i2311 = load i32, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2311) #13, !srcloc !14
  %i.bz = and i32 %.0.copyload.i2311, 2147483647
  %.not2075 = icmp samesign ult i32 %i.bk, %i.bz
  br i1 %.not2075, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o, %bb.m, %.preheader2444
  %.val2262 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %.val2262, i64 %i.bp
  %.0.copyload.i2312 = load i64, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2312) #13, !srcloc !33
  %.val2291 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2291, i64 %i.bl
  store i64 %.0.copyload.i2312, ptr %i.cb, align 1
  %.val2183 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %.val2183, i64 %i.bp
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.0.copyload.i2313 = load i32, ptr %i.cd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2313) #13, !srcloc !14
  %.val2233 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2233, i64 %i.bl
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 %.0.copyload.i2313, ptr %i.cf, align 1
  %i.cg = icmp eq i32 %.01931, %.01926
  br i1 %i.cg, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.p, %bb.u
  %.11932 = phi i32 [ %i.ch, %bb.u ], [ %.01931, %bb.p ] ; 5 uses
  %i.ch = add i32 %.11932, -12                    ; 3 uses
  %i.ci = zext i32 %i.ch to i64                   ; 5 uses
  %.val2182 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %.val2182, i64 %i.ci
  %.0.copyload.i2314 = load i32, ptr %i.cj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2314) #13, !srcloc !14
  %i.ck = icmp ult i32 %.0.copyload.i2308, %.0.copyload.i2314
  br i1 %i.ck, label %bb.u, label %bb.q

bb.q:                                             ; preds = %.preheader
  %i.cl = icmp ugt i32 %.0.copyload.i2308, %.0.copyload.i2314
  br i1 %i.cl, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val2181 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.val2181, i64 %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %.0.copyload.i2315 = load i32, ptr %i.cn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2315) #13, !srcloc !14
  %i.co = icmp ult i32 %.0.copyload.i2307, %.0.copyload.i2315
  br i1 %i.co, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = icmp ugt i32 %.0.copyload.i2307, %.0.copyload.i2315
  br i1 %i.cp, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val2180 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %.val2180, i64 %i.ci
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.0.copyload.i2316 = load i32, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2316) #13, !srcloc !14
  %i.cs = and i32 %.0.copyload.i2316, 2147483647
  %.not2076 = icmp samesign ult i32 %i.bk, %i.cs
  br i1 %.not2076, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.r, %.preheader
  %.val2261 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %.val2261, i64 %i.ci
  %.0.copyload.i2317 = load i64, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2317) #13, !srcloc !33
  %i.cu = zext i32 %.11932 to i64                 ; 2 uses
  %.val2290 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %.val2290, i64 %i.cu
  store i64 %.0.copyload.i2317, ptr %i.cv, align 1
  %.val2179 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %.val2179, i64 %i.ci
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.0.copyload.i2318 = load i32, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2318) #13, !srcloc !14
  %.val2232 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %.val2232, i64 %i.cu
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %.0.copyload.i2318, ptr %i.cz, align 1
  %.not2077 = icmp eq i32 %i.ch, %.01926
  br i1 %.not2077, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  %.31947 = phi i32 [ %.01926, %bb.p ], [ %.01926, %bb.u ], [ %.11932, %bb.s ], [ %.11932, %bb.q ], [ %.11932, %bb.t ]
  %i.da = zext i32 %.31947 to i64                 ; 3 uses
  %.val2231 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %.val2231, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %.0.copyload.i2306, ptr %i.dc, align 1
  %.val2230 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %.val2230, i64 %i.da
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store i32 %.0.copyload.i2307, ptr %i.de, align 1
  %.val2229 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %.val2229, i64 %i.da
  store i32 %.0.copyload.i2308, ptr %i.df, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.n, %bb.l, %.loopexit
  %i.dg = add i32 %.21946, 12                     ; 2 uses
  %.not2078 = icmp eq i32 %i.dg, %.01942
  br i1 %.not2078, label %.loopexit2445, label %.preheader2444

bb.w:                                             ; preds = %bb.j
  %.not2049 = icmp eq i32 %.21937, 0
  br i1 %.not2049, label %bb.x, label %bb.by

bb.x:                                             ; preds = %bb.w
  %i.dh = icmp eq i32 %.01942, %.01926
  br i1 %i.dh, label %.loopexit2445, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = add nsw i32 %i.p, -2                    ; 2 uses
  %i.dj = lshr i32 %i.di, 1                       ; 3 uses
  %i.dk = lshr i32 %i.di, 1
  %4 = zext nneg i32 %i.dk to i64
  %sext = zext nneg i32 %i.dj to i64
  br label %5

5:                                                ; preds = %bb.ay, %bb.y
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ %4, %bb.y ] ; 4 uses
  %6 = icmp sgt i64 %indvars.iv, %sext
  br i1 %6, label %bb.ay, label %bb.z

bb.z:                                             ; preds = %5
  %i.dl = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.dm = mul i32 %i.dl, 12
  %i.dn = add i32 %i.dm, %.01926
  %i.do = shl nuw i32 %i.dl, 1                    ; 2 uses
  %i.dp = or disjoint i32 %i.do, 1                ; 5 uses
  %i.dq = mul i32 %i.dp, 12
  %i.dr = add i32 %i.dq, %.01926                  ; 6 uses
  %i.ds = add i32 %i.do, 2                        ; 2 uses
  %.not2067 = icmp sgt i32 %i.p, %i.ds
  br i1 %.not2067, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.dt = zext i32 %i.dr to i64                   ; 6 uses
  %.val2178 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %.val2178, i64 %i.dt
  %.0.copyload.i2319 = load i32, ptr %i.du, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2319) #13, !srcloc !14
  %.val2177 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %.val2177, i64 %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %.0.copyload.i2320 = load i32, ptr %i.dw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2320) #13, !srcloc !14
  %i.dx = icmp ult i32 %.0.copyload.i2319, %.0.copyload.i2320
  br i1 %i.dx, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = icmp ugt i32 %.0.copyload.i2319, %.0.copyload.i2320
  br i1 %i.dy, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val2176 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %.val2176, i64 %i.dt
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %.0.copyload.i2321 = load i32, ptr %i.ea, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2321) #13, !srcloc !14
  %.val2175 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.eb = getelementptr inbounds nuw i8, ptr %.val2175, i64 %i.dt
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %.0.copyload.i2322 = load i32, ptr %i.ec, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2322) #13, !srcloc !14
  %i.ed = icmp ult i32 %.0.copyload.i2321, %.0.copyload.i2322
  br i1 %i.ed, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = icmp ugt i32 %.0.copyload.i2321, %.0.copyload.i2322
  br i1 %i.ee, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val2174 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %.val2174, i64 %i.dt
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.0.copyload.i2323 = load i32, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2323) #13, !srcloc !14
  %i.eh = and i32 %.0.copyload.i2323, 2147483647
  %.val2173 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %.val2173, i64 %i.dt
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
  %.0.copyload.i2324 = load i32, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2324) #13, !srcloc !14
  %i.ek = and i32 %.0.copyload.i2324, 2147483647
  %i.el = icmp samesign ult i32 %i.eh, %i.ek
  br i1 %i.el, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.aa
  %i.em = add i32 %i.dr, 12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.af
  %.31938 = phi i32 [ %i.dp, %bb.ad ], [ %i.ds, %bb.af ], [ %i.dp, %bb.z ], [ %i.dp, %bb.ab ], [ %i.dp, %bb.ae ] ; 2 uses
  %.31934 = phi i32 [ %i.dr, %bb.ad ], [ %i.em, %bb.af ], [ %i.dr, %bb.z ], [ %i.dr, %bb.ab ], [ %i.dr, %bb.ae ] ; 2 uses
  %i.en = zext i32 %.31934 to i64                 ; 6 uses
  %.val2172 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.eo = getelementptr inbounds nuw i8, ptr %.val2172, i64 %i.en
  %.0.copyload.i2325 = load i32, ptr %i.eo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2325) #13, !srcloc !14
  %i.ep = zext i32 %i.dn to i64                   ; 4 uses
  %.val2171 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %.val2171, i64 %i.ep
  %.0.copyload.i2326 = load i32, ptr %i.eq, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2326) #13, !srcloc !14
  %i.er = icmp ult i32 %.0.copyload.i2325, %.0.copyload.i2326
  br i1 %i.er, label %bb.ay, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.es = add nuw nsw i64 %i.ep, 8                ; 2 uses
  %.val2170 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %.val2170, i64 %i.es
  %.0.copyload.i2327 = load i32, ptr %i.et, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2327) #13, !srcloc !14
  %i.eu = and i32 %.0.copyload.i2327, 2147483647  ; 2 uses
  %.val2169 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %.val2169, i64 %i.ep
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %.0.copyload.i2328 = load i32, ptr %i.ew, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2328) #13, !srcloc !14
  %i.ex = icmp ugt i32 %.0.copyload.i2325, %.0.copyload.i2326
  br i1 %i.ex, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val2168 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %.val2168, i64 %i.en
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %.0.copyload.i2329 = load i32, ptr %i.ez, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2329) #13, !srcloc !14
  %i.fa = icmp ult i32 %.0.copyload.i2329, %.0.copyload.i2328
  br i1 %i.fa, label %bb.ay, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fb = icmp ugt i32 %.0.copyload.i2329, %.0.copyload.i2328
  br i1 %i.fb, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val2167 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %.val2167, i64 %i.en
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.0.copyload.i2330 = load i32, ptr %i.fd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2330) #13, !srcloc !14
  %i.fe = and i32 %.0.copyload.i2330, 2147483647
  %i.ff = icmp samesign ult i32 %i.fe, %i.eu
  br i1 %i.ff, label %bb.ay, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %.val2260 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %.val2260, i64 %i.en
  %.0.copyload.i2331 = load i64, ptr %i.fg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2331) #13, !srcloc !33
  %.val2289 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fh = getelementptr inbounds nuw i8, ptr %.val2289, i64 %i.ep
  store i64 %.0.copyload.i2331, ptr %i.fh, align 1
  %.val2166 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fi = getelementptr inbounds nuw i8, ptr %.val2166, i64 %i.en
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.0.copyload.i2332 = load i32, ptr %i.fj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2332) #13, !srcloc !14
  %.val2228 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %.val2228, i64 %i.es
  store i32 %.0.copyload.i2332, ptr %i.fk, align 1
  %i.fl = icmp sgt i32 %.31938, %i.dj
  br i1 %i.fl, label %.loopexit2450, label %.preheader2449

.preheader2449:                                   ; preds = %bb.al, %bb.ax
  %.41939 = phi i32 [ %.51940, %bb.ax ], [ %.31938, %bb.al ]
  %.4 = phi i32 [ %.5, %bb.ax ], [ %.31934, %bb.al ] ; 4 uses
  %i.fm = shl i32 %.41939, 1                      ; 2 uses
  %i.fn = or disjoint i32 %i.fm, 1                ; 5 uses
  %i.fo = mul i32 %i.fn, 12
  %i.fp = add i32 %i.fo, %.01926                  ; 6 uses
  %i.fq = add i32 %i.fm, 2                        ; 2 uses
  %.not2068 = icmp sgt i32 %i.p, %i.fq
  br i1 %.not2068, label %bb.am, label %bb.as

bb.am:                                            ; preds = %.preheader2449
  %i.fr = zext i32 %i.fp to i64                   ; 6 uses
  %.val2165 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fs = getelementptr inbounds nuw i8, ptr %.val2165, i64 %i.fr
  %.0.copyload.i2333 = load i32, ptr %i.fs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2333) #13, !srcloc !14
  %.val2164 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %.val2164, i64 %i.fr
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %.0.copyload.i2334 = load i32, ptr %i.fu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2334) #13, !srcloc !14
  %i.fv = icmp ult i32 %.0.copyload.i2333, %.0.copyload.i2334
  br i1 %i.fv, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fw = icmp ugt i32 %.0.copyload.i2333, %.0.copyload.i2334
  br i1 %i.fw, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val2163 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %.val2163, i64 %i.fr
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %.0.copyload.i2335 = load i32, ptr %i.fy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2335) #13, !srcloc !14
  %.val2162 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %.val2162, i64 %i.fr
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %.0.copyload.i2336 = load i32, ptr %i.ga, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2336) #13, !srcloc !14
  %i.gb = icmp ult i32 %.0.copyload.i2335, %.0.copyload.i2336
  br i1 %i.gb, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gc = icmp ugt i32 %.0.copyload.i2335, %.0.copyload.i2336
  br i1 %i.gc, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val2161 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gd = getelementptr inbounds nuw i8, ptr %.val2161, i64 %i.fr
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.0.copyload.i2337 = load i32, ptr %i.ge, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2337) #13, !srcloc !14
  %i.gf = and i32 %.0.copyload.i2337, 2147483647
  %.val2160 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gg = getelementptr inbounds nuw i8, ptr %.val2160, i64 %i.fr
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 20
  %.0.copyload.i2338 = load i32, ptr %i.gh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2338) #13, !srcloc !14
  %i.gi = and i32 %.0.copyload.i2338, 2147483647
  %i.gj = icmp samesign ult i32 %i.gf, %i.gi
  br i1 %i.gj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ao, %bb.am
  %i.gk = add i32 %i.fp, 12
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.an, %.preheader2449, %bb.ar
  %.51940 = phi i32 [ %i.fn, %bb.ap ], [ %i.fq, %bb.ar ], [ %i.fn, %.preheader2449 ], [ %i.fn, %bb.an ], [ %i.fn, %bb.aq ] ; 2 uses
  %.5 = phi i32 [ %i.fp, %bb.ap ], [ %i.gk, %bb.ar ], [ %i.fp, %.preheader2449 ], [ %i.fp, %bb.an ], [ %i.fp, %bb.aq ] ; 3 uses
  %i.gl = zext i32 %.5 to i64                     ; 5 uses
  %.val2159 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gm = getelementptr inbounds nuw i8, ptr %.val2159, i64 %i.gl
  %.0.copyload.i2339 = load i32, ptr %i.gm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2339) #13, !srcloc !14
  %i.gn = icmp ugt i32 %.0.copyload.i2326, %.0.copyload.i2339
  br i1 %i.gn, label %.loopexit2450.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.go = icmp ugt i32 %.0.copyload.i2339, %.0.copyload.i2326
  br i1 %i.go, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val2158 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gp = getelementptr inbounds nuw i8, ptr %.val2158, i64 %i.gl
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %.0.copyload.i2340 = load i32, ptr %i.gq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2340) #13, !srcloc !14
  %i.gr = icmp ugt i32 %.0.copyload.i2328, %.0.copyload.i2340
  br i1 %i.gr, label %.loopexit2450.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gs = icmp ugt i32 %.0.copyload.i2340, %.0.copyload.i2328
  br i1 %i.gs, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val2157 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %.val2157, i64 %i.gl
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.0.copyload.i2341 = load i32, ptr %i.gu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2341) #13, !srcloc !14
  %i.gv = and i32 %.0.copyload.i2341, 2147483647
  %.not2069 = icmp samesign ult i32 %i.gv, %i.eu
  br i1 %.not2069, label %.loopexit2450.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.at
  %.val2259 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gw = getelementptr inbounds nuw i8, ptr %.val2259, i64 %i.gl
  %.0.copyload.i2342 = load i64, ptr %i.gw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2342) #13, !srcloc !33
  %i.gx = zext i32 %.4 to i64                     ; 2 uses
  %.val2288 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gy = getelementptr inbounds nuw i8, ptr %.val2288, i64 %i.gx
  store i64 %.0.copyload.i2342, ptr %i.gy, align 1
  %.val2156 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %.val2156, i64 %i.gl
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %.0.copyload.i2343 = load i32, ptr %i.ha, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2343) #13, !srcloc !14
  %.val2227 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hb = getelementptr inbounds nuw i8, ptr %.val2227, i64 %i.gx
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i32 %.0.copyload.i2343, ptr %i.hc, align 1
  %.not2070 = icmp sgt i32 %.51940, %i.dj
  br i1 %.not2070, label %.loopexit2450.loopexit, label %.preheader2449

.loopexit2450.loopexit:                           ; preds = %bb.ax, %bb.as, %bb.au, %bb.aw
  %.6.ph = phi i32 [ %.4, %bb.au ], [ %.5, %bb.ax ], [ %.4, %bb.as ], [ %.4, %bb.aw ]
  %.pre2623 = zext i32 %.6.ph to i64
  br label %.loopexit2450

.loopexit2450:                                    ; preds = %.loopexit2450.loopexit, %bb.al
  %.pre-phi2624 = phi i64 [ %.pre2623, %.loopexit2450.loopexit ], [ %i.en, %bb.al ] ; 3 uses
  %.val2226 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hd = getelementptr inbounds nuw i8, ptr %.val2226, i64 %.pre-phi2624
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i32 %.0.copyload.i2327, ptr %i.he, align 1
  %.val2225 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hf = getelementptr inbounds nuw i8, ptr %.val2225, i64 %.pre-phi2624
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store i32 %.0.copyload.i2328, ptr %i.hg, align 1
  %.val2224 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hh = getelementptr inbounds nuw i8, ptr %.val2224, i64 %.pre-phi2624
  store i32 %.0.copyload.i2326, ptr %i.hh, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ak, %bb.ai, %bb.ag, %5, %.loopexit2450
  %.not2071 = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not2071, label %bb.az, label %5

bb.az:                                            ; preds = %bb.ay
  %i.hi = udiv i32 %i.o, 12
  %i.hj = zext i32 %.01926 to i64                 ; 2 uses
  %invariant.op = sub i32 12, %.01926
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bx, %bb.az
  %.11943 = phi i32 [ %.01942, %bb.az ], [ %i.ja, %bb.bx ] ; 2 uses
  %.7 = phi i32 [ %i.hi, %bb.az ], [ %i.lz, %bb.bx ] ; 4 uses
  %.val2155 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hk = getelementptr inbounds nuw i8, ptr %.val2155, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.0.copyload.i2344 = load i32, ptr %i.hl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2344) #13, !srcloc !14
  %.val2223 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hm = getelementptr inbounds nuw i8, ptr %.val2223, i64 %i.f
  store i32 %.0.copyload.i2344, ptr %i.hm, align 1
  %.val2258 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hn = getelementptr inbounds nuw i8, ptr %.val2258, i64 %i.hj
  %.0.copyload.i2345 = load i64, ptr %i.hn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2345) #13, !srcloc !33
  %.val2287 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ho = getelementptr inbounds nuw i8, ptr %.val2287, i64 %i.e
  store i64 %.0.copyload.i2345, ptr %i.ho, align 1
  %i.hp = add nsw i32 %.7, -2
  %i.hq = lshr i32 %i.hp, 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bi, %bb.ba
  %.41948 = phi i32 [ 0, %bb.ba ], [ %.51949, %bb.bi ] ; 2 uses
  %.8 = phi i32 [ %.01926, %bb.ba ], [ %.9, %bb.bi ] ; 2 uses
  %i.hr = shl i32 %.41948, 1                      ; 2 uses
  %i.hs = or disjoint i32 %i.hr, 1                ; 4 uses
  %i.ht = mul i32 %.41948, 12
  %i.hu = add i32 %i.ht, 12
  %i.hv = add i32 %i.hu, %.8                      ; 6 uses
  %i.hw = add i32 %i.hr, 2                        ; 2 uses
  %.not2072 = icmp sgt i32 %.7, %i.hw
  br i1 %.not2072, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.hx = zext i32 %i.hv to i64                   ; 6 uses
  %.val2154 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %.val2154, i64 %i.hx
  %.0.copyload.i2346 = load i32, ptr %i.hy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2346) #13, !srcloc !14
  %.val2153 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hz = getelementptr inbounds nuw i8, ptr %.val2153, i64 %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %.0.copyload.i2347 = load i32, ptr %i.ia, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2347) #13, !srcloc !14
  %i.ib = icmp ult i32 %.0.copyload.i2346, %.0.copyload.i2347
  br i1 %i.ib, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ic = icmp ugt i32 %.0.copyload.i2346, %.0.copyload.i2347
  br i1 %i.ic, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val2152 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.id = getelementptr inbounds nuw i8, ptr %.val2152, i64 %i.hx
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %.0.copyload.i2348 = load i32, ptr %i.ie, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2348) #13, !srcloc !14
  %.val2151 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.if = getelementptr inbounds nuw i8, ptr %.val2151, i64 %i.hx
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %.0.copyload.i2349 = load i32, ptr %i.ig, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2349) #13, !srcloc !14
  %i.ih = icmp ult i32 %.0.copyload.i2348, %.0.copyload.i2349
  br i1 %i.ih, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ii = icmp ugt i32 %.0.copyload.i2348, %.0.copyload.i2349
  br i1 %i.ii, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.val2150 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ij = getelementptr inbounds nuw i8, ptr %.val2150, i64 %i.hx
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.0.copyload.i2350 = load i32, ptr %i.ik, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2350) #13, !srcloc !14
  %i.il = and i32 %.0.copyload.i2350, 2147483647
  %.val2149 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.im = getelementptr inbounds nuw i8, ptr %.val2149, i64 %i.hx
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 20
  %.0.copyload.i2351 = load i32, ptr %i.in, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2351) #13, !srcloc !14
  %i.io = and i32 %.0.copyload.i2351, 2147483647
  %i.ip = icmp samesign ult i32 %i.il, %i.io
  br i1 %i.ip, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bc
  %i.iq = add i32 %i.hv, 12
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bf, %bb.bd, %bb.bb, %bb.bh
  %.51949 = phi i32 [ %i.hs, %bb.bf ], [ %i.hw, %bb.bh ], [ %i.hs, %bb.bb ], [ %i.hs, %bb.bd ], [ %i.hs, %bb.bg ] ; 2 uses
  %.9 = phi i32 [ %i.hv, %bb.bf ], [ %i.iq, %bb.bh ], [ %i.hv, %bb.bb ], [ %i.hv, %bb.bd ], [ %i.hv, %bb.bg ] ; 5 uses
  %i.ir = zext i32 %.9 to i64                     ; 8 uses
  %.val2257 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.is = getelementptr inbounds nuw i8, ptr %.val2257, i64 %i.ir
  %.0.copyload.i2352 = load i64, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2352) #13, !srcloc !33
  %i.it = zext i32 %.8 to i64                     ; 2 uses
  %.val2286 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.iu = getelementptr inbounds nuw i8, ptr %.val2286, i64 %i.it
  store i64 %.0.copyload.i2352, ptr %i.iu, align 1
  %i.iv = add i32 %.9, 8
  %i.iw = zext i32 %i.iv to i64
  %.val2148 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ix = getelementptr inbounds nuw i8, ptr %.val2148, i64 %i.iw
  %.0.copyload.i2353 = load i32, ptr %i.ix, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2353) #13, !srcloc !14
  %.val2222 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.iy = getelementptr inbounds nuw i8, ptr %.val2222, i64 %i.it
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i32 %.0.copyload.i2353, ptr %i.iz, align 1
  %.not2073 = icmp sgt i32 %.51949, %i.hq
  br i1 %.not2073, label %bb.bj, label %bb.bb

bb.bj:                                            ; preds = %bb.bi
  %i.ja = add i32 %.11943, -12                    ; 3 uses
  %i.jb = icmp eq i32 %i.ja, %.9
  br i1 %i.jb, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %.val2256 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jc = getelementptr inbounds nuw i8, ptr %.val2256, i64 %i.e
  %.0.copyload.i2354 = load i64, ptr %i.jc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2354) #13, !srcloc !33
  %.val2285 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jd = getelementptr inbounds nuw i8, ptr %.val2285, i64 %i.ir
  store i64 %.0.copyload.i2354, ptr %i.jd, align 1
  %.val2147 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.je = getelementptr inbounds nuw i8, ptr %.val2147, i64 %i.f
  %.0.copyload.i2355 = load i32, ptr %i.je, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2355) #13, !srcloc !14
  %.val2221 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jf = getelementptr inbounds nuw i8, ptr %.val2221, i64 %i.ir
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store i32 %.0.copyload.i2355, ptr %i.jg, align 1
  br label %bb.bx

bb.bl:                                            ; preds = %bb.bj
  %i.jh = zext i32 %i.ja to i64                   ; 3 uses
  %.val2255 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ji = getelementptr inbounds nuw i8, ptr %.val2255, i64 %i.jh
  %.0.copyload.i2356 = load i64, ptr %i.ji, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2356) #13, !srcloc !33
  %.val2284 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jj = getelementptr inbounds nuw i8, ptr %.val2284, i64 %i.ir
  store i64 %.0.copyload.i2356, ptr %i.jj, align 1
  %i.jk = add i32 %.11943, -4
  %i.jl = zext i32 %i.jk to i64
  %.val2146 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jm = getelementptr inbounds nuw i8, ptr %.val2146, i64 %i.jl
  %.0.copyload.i2357 = load i32, ptr %i.jm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2357) #13, !srcloc !14
  %i.jn = add nuw nsw i64 %i.ir, 8                ; 3 uses
  %.val2220 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jo = getelementptr inbounds nuw i8, ptr %.val2220, i64 %i.jn
  store i32 %.0.copyload.i2357, ptr %i.jo, align 1
  %.val2254 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jp = getelementptr inbounds nuw i8, ptr %.val2254, i64 %i.e
  %.0.copyload.i2358 = load i64, ptr %i.jp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2358) #13, !srcloc !33
  %.val2283 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jq = getelementptr inbounds nuw i8, ptr %.val2283, i64 %i.jh
  store i64 %.0.copyload.i2358, ptr %i.jq, align 1
  %.val2145 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jr = getelementptr inbounds nuw i8, ptr %.val2145, i64 %i.f
  %.0.copyload.i2359 = load i32, ptr %i.jr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2359) #13, !srcloc !14
  %.val2219 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.js = getelementptr inbounds nuw i8, ptr %.val2219, i64 %i.jh
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store i32 %.0.copyload.i2359, ptr %i.jt, align 1
  %.reass.reass.reass = add i32 %.9, %invariant.op ; 2 uses
  %i.ju = icmp slt i32 %.reass.reass.reass, 13
  br i1 %i.ju, label %bb.bx, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val2144 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jv = getelementptr inbounds nuw i8, ptr %.val2144, i64 %i.jn
  %.0.copyload.i2360 = load i32, ptr %i.jv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2360) #13, !srcloc !14
  %i.jw = and i32 %.0.copyload.i2360, 2147483647  ; 2 uses
  %.val2143 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jx = getelementptr inbounds nuw i8, ptr %.val2143, i64 %i.ir
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %.0.copyload.i2361 = load i32, ptr %i.jy, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2361) #13, !srcloc !14
  %i.jz = udiv i32 %.reass.reass.reass, 12
  %i.ka = add nsw i32 %i.jz, -2                   ; 2 uses
  %i.kb = lshr i32 %i.ka, 1                       ; 2 uses
  %i.kc = mul i32 %i.kb, 12
  %i.kd = add i32 %i.kc, %.01926                  ; 2 uses
  %i.ke = zext i32 %i.kd to i64                   ; 6 uses
end_hunk_0
begin_hunk_1_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  %i.ba = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.02294, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.j) ; 0 uses
  br label %.loopexit2772

bb.j:                                             ; preds = %.loopexit2781
  %i.bb = add i32 %.02294, 16
  %i.bc = add i32 %.02294, 32
  %i.bd = add i32 %.02294, 48
  %i.be = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.02294, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.j) ; 0 uses
  br label %.loopexit2772

bb.k:                                             ; preds = %.loopexit2781
  %i.bf = icmp slt i32 %i.o, 496
  br i1 %i.bf, label %bb.l, label %bb.ab

bb.l:                                             ; preds = %bb.k
  %i.bg = add i32 %.02294, 16
  %i.bh = add i32 %.02294, 32                     ; 2 uses
  %i.bi = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x29(ptr noundef nonnull %0, i32 noundef %.02294, i32 noundef %i.bg, i32 noundef %i.bh) ; 0 uses
  %i.bj = add i32 %.02294, 48                     ; 2 uses
  %i.bk = icmp eq i32 %i.bj, %.02309
  br i1 %i.bk, label %.loopexit2772, label %.preheader

.preheader:                                       ; preds = %bb.l, %bb.aa
  %.22313 = phi i32 [ %i.dr, %bb.aa ], [ %i.bj, %bb.l ] ; 3 uses
  %.02300 = phi i32 [ %.22313, %bb.aa ], [ %i.bh, %bb.l ] ; 3 uses
  %i.bl = zext i32 %.22313 to i64                 ; 5 uses
  %.val2580 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2580, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.0.copyload.i2659 = load i64, ptr %i.bn, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2659) #13, !srcloc !33
  %.val2492 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2492, i64 %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %.0.copyload.i2660 = load i32, ptr %i.bp, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2660) #13, !srcloc !14
  %i.bq = zext i32 %.02300 to i64                 ; 4 uses
  %.val2491 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %.val2491, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %.0.copyload.i2661 = load i32, ptr %i.bs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2661) #13, !srcloc !14
  %i.bt = icmp ult i32 %.0.copyload.i2660, %.0.copyload.i2661
  br i1 %i.bt, label %bb.r, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bu = icmp ult i32 %.0.copyload.i2661, %.0.copyload.i2660
  br i1 %i.bu, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val2579 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %.val2579, i64 %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.0.copyload.i2662 = load i64, ptr %i.bw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2662) #13, !srcloc !33
  %i.bx = lshr i64 %.0.copyload.i2662, 32         ; 2 uses
  %i.by = lshr i64 %.0.copyload.i2659, 32         ; 2 uses
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 %i.by) ; 2 uses
  %.not2454 = icmp eq i64 %i.bz, 0
  br i1 %.not2454, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = trunc i64 %.0.copyload.i2659 to i32
  %i.cc = trunc i64 %.0.copyload.i2662 to i32
  %i.cd = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.ca) #13 ; 2 uses
  %.not2455 = icmp eq i32 %i.cd, 0
  br i1 %.not2455, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.r, label %bb.aa

bb.q:                                             ; preds = %bb.o, %bb.n
  %.not2456 = icmp samesign ugt i64 %i.bx, %i.by
  br i1 %.not2456, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q, %bb.p, %.preheader
  %.val2490 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %.val2490, i64 %i.bl
  %.0.copyload.i2663 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2663) #13, !srcloc !14
  %.val2578 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %.val2578, i64 %i.bq
  %.0.copyload.i2664 = load i64, ptr %i.cg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2664) #13, !srcloc !33
  %.val2643 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %.val2643, i64 %i.bl
  store i64 %.0.copyload.i2664, ptr %i.ch, align 1
  %.val2577 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %.val2577, i64 %i.bq
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.0.copyload.i2665 = load i64, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2665) #13, !srcloc !33
  %.val2642 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %.val2642, i64 %i.bl
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %.0.copyload.i2665, ptr %i.cl, align 1
  %i.cm = icmp eq i32 %.02300, %.02294
  br i1 %i.cm, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = lshr i64 %.0.copyload.i2659, 32         ; 2 uses
  %i.co = trunc i64 %.0.copyload.i2659 to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.s
  %.12301 = phi i32 [ %.02300, %bb.s ], [ %i.cp, %bb.z ] ; 5 uses
  %i.cp = add i32 %.12301, -16                    ; 3 uses
  %i.cq = zext i32 %i.cp to i64                   ; 4 uses
  %.val2489 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %.val2489, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %.0.copyload.i2666 = load i32, ptr %i.cs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2666) #13, !srcloc !14
  %i.ct = icmp ult i32 %.0.copyload.i2660, %.0.copyload.i2666
  br i1 %i.ct, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = icmp ugt i32 %.0.copyload.i2660, %.0.copyload.i2666
  br i1 %i.cu, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val2576 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %.val2576, i64 %i.cq
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %.0.copyload.i2667 = load i64, ptr %i.cw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2667) #13, !srcloc !33
  %i.cx = lshr i64 %.0.copyload.i2667, 32         ; 2 uses
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cx) ; 2 uses
  %.not2457 = icmp eq i64 %i.cy, 0
  br i1 %.not2457, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = trunc nuw i64 %i.cy to i32
  %i.da = trunc i64 %.0.copyload.i2667 to i32
  %i.db = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.co, i32 noundef %i.da, i32 noundef %i.cz) #13 ; 2 uses
  %.not2458 = icmp eq i32 %i.db, 0
  br i1 %.not2458, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dc = icmp samesign ult i64 %i.cn, %i.cx
  br i1 %i.dc, label %bb.z, label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.dd = icmp sgt i32 %i.db, -1
  br i1 %i.dd, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.t
  %.val2575 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %.val2575, i64 %i.cq
  %.0.copyload.i2668 = load i64, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2668) #13, !srcloc !33
  %i.df = zext i32 %.12301 to i64                 ; 2 uses
  %.val2641 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %.val2641, i64 %i.df
  store i64 %.0.copyload.i2668, ptr %i.dg, align 1
  %.val2574 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %.val2574, i64 %i.cq
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.0.copyload.i2669 = load i64, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2669) #13, !srcloc !33
  %.val2640 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %.val2640, i64 %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %.0.copyload.i2669, ptr %i.dk, align 1
  %.not2459 = icmp eq i32 %i.cp, %.02294
  br i1 %.not2459, label %.loopexit, label %bb.t

.loopexit:                                        ; preds = %bb.z, %bb.y, %bb.x, %bb.u, %bb.r
  %.32314 = phi i32 [ %.02294, %bb.r ], [ %.02294, %bb.z ], [ %.12301, %bb.y ], [ %.12301, %bb.u ], [ %.12301, %bb.x ]
  %i.dl = zext i32 %.32314 to i64                 ; 3 uses
  %.val2500 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %.val2500, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 %.0.copyload.i2660, ptr %i.dn, align 1
  %.val2639 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %.val2639, i64 %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i64 %.0.copyload.i2659, ptr %i.dp, align 1
  %.val2499 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dq = getelementptr inbounds nuw i8, ptr %.val2499, i64 %i.dl
  store i32 %.0.copyload.i2663, ptr %i.dq, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.q, %bb.p, %bb.m, %.loopexit
  %i.dr = add i32 %.22313, 16                     ; 2 uses
  %.not2460 = icmp eq i32 %i.dr, %.02309
  br i1 %.not2460, label %.loopexit2772, label %.preheader

bb.ab:                                            ; preds = %bb.k
  %.not2395 = icmp eq i32 %.22308, 0
  br i1 %.not2395, label %bb.ac, label %bb.co

bb.ac:                                            ; preds = %bb.ab
  %i.ds = icmp eq i32 %.02309, %.02294
  br i1 %i.ds, label %.loopexit2772, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = add nsw i32 %i.p, -2                    ; 2 uses
  %i.du = lshr i32 %i.dt, 1                       ; 3 uses
  %i.dv = lshr i32 %i.dt, 1
  %4 = zext nneg i32 %i.dv to i64
  %sext = zext nneg i32 %i.du to i64
  br label %5

5:                                                ; preds = %bb.bj, %bb.ad
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bj ], [ %4, %bb.ad ] ; 4 uses
  %6 = icmp sgt i64 %indvars.iv, %sext
  br i1 %6, label %bb.bj, label %bb.ae

bb.ae:                                            ; preds = %5
  %i.dw = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.dx = shl i32 %i.dw, 4
  %i.dy = add i32 %i.dx, %.02294
  %i.dz = shl nuw i32 %i.dw, 1                    ; 2 uses
  %i.ea = or disjoint i32 %i.dz, 1                ; 5 uses
  %i.eb = shl i32 %i.ea, 4
  %i.ec = add i32 %i.eb, %.02294                  ; 6 uses
  %i.ed = add i32 %i.dz, 2                        ; 2 uses
  %.not2432 = icmp sgt i32 %i.p, %i.ed
  br i1 %.not2432, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.ee = zext i32 %i.ec to i64                   ; 4 uses
  %.val2488 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %.val2488, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %.0.copyload.i2670 = load i32, ptr %i.eg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2670) #13, !srcloc !14
  %.val2487 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.eh = getelementptr inbounds nuw i8, ptr %.val2487, i64 %i.ee
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 28
  %.0.copyload.i2671 = load i32, ptr %i.ei, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2671) #13, !srcloc !14
  %i.ej = icmp ult i32 %.0.copyload.i2670, %.0.copyload.i2671
  br i1 %i.ej, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ek = icmp ult i32 %.0.copyload.i2671, %.0.copyload.i2670
  br i1 %i.ek, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val2573 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.el = getelementptr inbounds nuw i8, ptr %.val2573, i64 %i.ee
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 20
  %.0.copyload.i2672 = load i64, ptr %i.em, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2672) #13, !srcloc !33
  %i.en = lshr i64 %.0.copyload.i2672, 32         ; 2 uses
  %.val2572 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.eo = getelementptr inbounds nuw i8, ptr %.val2572, i64 %i.ee
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %.0.copyload.i2673 = load i64, ptr %i.ep, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2673) #13, !srcloc !33
  %i.eq = lshr i64 %.0.copyload.i2673, 32         ; 2 uses
  %i.er = tail call i64 @llvm.umin.i64(i64 %i.eq, i64 %i.en) ; 2 uses
  %.not2433 = icmp eq i64 %i.er, 0
  br i1 %.not2433, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = trunc nuw i64 %i.er to i32
  %i.et = trunc i64 %.0.copyload.i2673 to i32
  %i.eu = trunc i64 %.0.copyload.i2672 to i32
  %i.ev = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.et, i32 noundef %i.eu, i32 noundef %i.es) #13 ; 2 uses
  %.not2434 = icmp eq i32 %i.ev, 0
  br i1 %.not2434, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.ex = icmp samesign ult i64 %i.eq, %i.en
  br i1 %i.ex, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.af
  %i.ey = add i32 %i.ec, 16
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.aj, %bb.ag, %bb.ae, %bb.al
  %.32303 = phi i32 [ %i.ec, %bb.ag ], [ %i.ey, %bb.al ], [ %i.ec, %bb.ae ], [ %i.ec, %bb.aj ], [ %i.ec, %bb.ak ] ; 2 uses
  %.02286 = phi i32 [ %i.ea, %bb.ag ], [ %i.ed, %bb.al ], [ %i.ea, %bb.ae ], [ %i.ea, %bb.aj ], [ %i.ea, %bb.ak ] ; 2 uses
  %i.ez = zext i32 %.32303 to i64                 ; 5 uses
  %.val2486 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fa = getelementptr inbounds nuw i8, ptr %.val2486, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %.0.copyload.i2674 = load i32, ptr %i.fb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2674) #13, !srcloc !14
  %i.fc = zext i32 %i.dy to i64                   ; 5 uses
  %.val2485 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %.val2485, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %.0.copyload.i2675 = load i32, ptr %i.fe, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2675) #13, !srcloc !14
  %i.ff = icmp ult i32 %.0.copyload.i2674, %.0.copyload.i2675
  br i1 %i.ff, label %bb.bj, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val2571 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %.val2571, i64 %i.fc
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %.0.copyload.i2676 = load i64, ptr %i.fh, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2676) #13, !srcloc !33
  %i.fi = icmp ugt i32 %.0.copyload.i2674, %.0.copyload.i2675
  br i1 %i.fi, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fj = lshr i64 %.0.copyload.i2676, 32         ; 2 uses
  %.val2570 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %.val2570, i64 %i.ez
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %.0.copyload.i2677 = load i64, ptr %i.fl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2677) #13, !srcloc !33
  %i.fm = lshr i64 %.0.copyload.i2677, 32         ; 2 uses
  %i.fn = tail call i64 @llvm.umin.i64(i64 %i.fj, i64 %i.fm) ; 2 uses
  %.not2435 = icmp eq i64 %i.fn, 0
  br i1 %.not2435, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = trunc nuw i64 %i.fn to i32
  %i.fp = trunc i64 %.0.copyload.i2677 to i32
  %i.fq = trunc i64 %.0.copyload.i2676 to i32
  %i.fr = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.fp, i32 noundef %i.fq, i32 noundef %i.fo) #13 ; 2 uses
  %.not2436 = icmp eq i32 %i.fr, 0
  br i1 %.not2436, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = icmp sgt i32 %i.fr, -1
  br i1 %i.fs, label %bb.as, label %bb.bj

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.ft = icmp samesign ugt i64 %i.fj, %i.fm
  br i1 %i.ft, label %bb.bj, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.an
  %.val2484 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %.val2484, i64 %i.fc
  %.0.copyload.i2678 = load i32, ptr %i.fu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2678) #13, !srcloc !14
  %.val2569 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %.val2569, i64 %i.ez
  %.0.copyload.i2679 = load i64, ptr %i.fv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2679) #13, !srcloc !33
  %.val2638 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fw = getelementptr inbounds nuw i8, ptr %.val2638, i64 %i.fc
  store i64 %.0.copyload.i2679, ptr %i.fw, align 1
  %.val2568 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %.val2568, i64 %i.ez
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.0.copyload.i2680 = load i64, ptr %i.fy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2680) #13, !srcloc !33
  %.val2637 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %.val2637, i64 %i.fc
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 %.0.copyload.i2680, ptr %i.ga, align 1
  %i.gb = icmp sgt i32 %.02286, %i.du
  br i1 %i.gb, label %.loopexit2775, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gc = lshr i64 %.0.copyload.i2676, 32         ; 2 uses
  %i.gd = trunc i64 %.0.copyload.i2676 to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.bi, %bb.at
  %.42304 = phi i32 [ %.32303, %bb.at ], [ %.52305, %bb.bi ] ; 4 uses
  %.12287 = phi i32 [ %.02286, %bb.at ], [ %.22288, %bb.bi ]
  %i.ge = shl i32 %.12287, 1                      ; 2 uses
  %i.gf = or disjoint i32 %i.ge, 1                ; 5 uses
  %i.gg = shl i32 %i.gf, 4
  %i.gh = add i32 %i.gg, %.02294                  ; 6 uses
  %i.gi = add i32 %i.ge, 2                        ; 2 uses
  %.not2437 = icmp sgt i32 %i.p, %i.gi
  br i1 %.not2437, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.gj = zext i32 %i.gh to i64                   ; 4 uses
  %.val2483 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gk = getelementptr inbounds nuw i8, ptr %.val2483, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %.0.copyload.i2681 = load i32, ptr %i.gl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2681) #13, !srcloc !14
  %.val2482 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gm = getelementptr inbounds nuw i8, ptr %.val2482, i64 %i.gj
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %.0.copyload.i2682 = load i32, ptr %i.gn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2682) #13, !srcloc !14
  %i.go = icmp ult i32 %.0.copyload.i2681, %.0.copyload.i2682
  br i1 %i.go, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gp = icmp ugt i32 %.0.copyload.i2681, %.0.copyload.i2682
  br i1 %i.gp, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val2567 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gq = getelementptr inbounds nuw i8, ptr %.val2567, i64 %i.gj
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 20
  %.0.copyload.i2683 = load i64, ptr %i.gr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2683) #13, !srcloc !33
  %i.gs = lshr i64 %.0.copyload.i2683, 32         ; 2 uses
  %.val2566 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %.val2566, i64 %i.gj
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %.0.copyload.i2684 = load i64, ptr %i.gu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2684) #13, !srcloc !33
  %i.gv = lshr i64 %.0.copyload.i2684, 32         ; 2 uses
  %i.gw = tail call i64 @llvm.umin.i64(i64 %i.gs, i64 %i.gv) ; 2 uses
  %.not2438 = icmp eq i64 %i.gw, 0
  br i1 %.not2438, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gx = trunc nuw i64 %i.gw to i32
  %i.gy = trunc i64 %.0.copyload.i2684 to i32
  %i.gz = trunc i64 %.0.copyload.i2683 to i32
  %i.ha = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %i.gx) #13 ; 2 uses
  %.not2439 = icmp eq i32 %i.ha, 0
  br i1 %.not2439, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %bb.bb, label %bb.bc

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %i.hc = icmp samesign ugt i64 %i.gs, %i.gv
  br i1 %i.hc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.av
  %i.hd = add i32 %i.gh, 16
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.az, %bb.aw, %bb.au, %bb.bb
  %.52305 = phi i32 [ %i.gh, %bb.aw ], [ %i.hd, %bb.bb ], [ %i.gh, %bb.au ], [ %i.gh, %bb.az ], [ %i.gh, %bb.ba ] ; 3 uses
  %.22288 = phi i32 [ %i.gf, %bb.aw ], [ %i.gi, %bb.bb ], [ %i.gf, %bb.au ], [ %i.gf, %bb.az ], [ %i.gf, %bb.ba ] ; 2 uses
  %i.he = zext i32 %.52305 to i64                 ; 4 uses
  %.val2481 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hf = getelementptr inbounds nuw i8, ptr %.val2481, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  %.0.copyload.i2685 = load i32, ptr %i.hg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2685) #13, !srcloc !14
  %i.hh = icmp ugt i32 %.0.copyload.i2675, %.0.copyload.i2685
  br i1 %i.hh, label %.loopexit2775.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hi = icmp ugt i32 %.0.copyload.i2685, %.0.copyload.i2675
  br i1 %i.hi, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val2565 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hj = getelementptr inbounds nuw i8, ptr %.val2565, i64 %i.he
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %.0.copyload.i2686 = load i64, ptr %i.hk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2686) #13, !srcloc !33
  %i.hl = lshr i64 %.0.copyload.i2686, 32         ; 2 uses
  %i.hm = tail call i64 @llvm.umin.i64(i64 %i.hl, i64 %i.gc) ; 2 uses
  %.not2440 = icmp eq i64 %i.hm, 0
  br i1 %.not2440, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hn = trunc nuw i64 %i.hm to i32
  %i.ho = trunc i64 %.0.copyload.i2686 to i32
  %i.hp = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.ho, i32 noundef %i.gd, i32 noundef %i.hn) #13 ; 2 uses
  %.not2441 = icmp eq i32 %i.hp, 0
  br i1 %.not2441, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.not2442 = icmp samesign ult i64 %i.hl, %i.gc
  br i1 %.not2442, label %.loopexit2775.loopexit, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.hq = icmp sgt i32 %i.hp, -1
  br i1 %i.hq, label %bb.bi, label %.loopexit2775.loopexit

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bd
  %.val2564 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hr = getelementptr inbounds nuw i8, ptr %.val2564, i64 %i.he
  %.0.copyload.i2687 = load i64, ptr %i.hr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2687) #13, !srcloc !33
  %i.hs = zext i32 %.42304 to i64                 ; 2 uses
  %.val2636 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ht = getelementptr inbounds nuw i8, ptr %.val2636, i64 %i.hs
  store i64 %.0.copyload.i2687, ptr %i.ht, align 1
  %.val2563 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hu = getelementptr inbounds nuw i8, ptr %.val2563, i64 %i.he
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %.0.copyload.i2688 = load i64, ptr %i.hv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2688) #13, !srcloc !33
  %.val2635 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %.val2635, i64 %i.hs
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i64 %.0.copyload.i2688, ptr %i.hx, align 1
  %.not2443 = icmp sgt i32 %.22288, %i.du
  br i1 %.not2443, label %.loopexit2775.loopexit, label %bb.au

.loopexit2775.loopexit:                           ; preds = %bb.bi, %bb.bc, %bb.bg, %bb.bh
  %.6.ph = phi i32 [ %.42304, %bb.bc ], [ %.52305, %bb.bi ], [ %.42304, %bb.bg ], [ %.42304, %bb.bh ]
  %.pre2936 = zext i32 %.6.ph to i64
  br label %.loopexit2775

.loopexit2775:                                    ; preds = %.loopexit2775.loopexit, %bb.as
  %.pre-phi2937 = phi i64 [ %.pre2936, %.loopexit2775.loopexit ], [ %i.ez, %bb.as ] ; 3 uses
  %.val2498 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %.val2498, i64 %.pre-phi2937
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  store i32 %.0.copyload.i2675, ptr %i.hz, align 1
  %.val2634 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ia = getelementptr inbounds nuw i8, ptr %.val2634, i64 %.pre-phi2937
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  store i64 %.0.copyload.i2676, ptr %i.ib, align 1
  %.val2497 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ic = getelementptr inbounds nuw i8, ptr %.val2497, i64 %.pre-phi2937
  store i32 %.0.copyload.i2678, ptr %i.ic, align 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.ar, %bb.aq, %bb.am, %5, %.loopexit2775
  %.not2444 = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not2444, label %bb.bk, label %5

bb.bk:                                            ; preds = %bb.bj
  %i.id = lshr i32 %i.o, 4
  %i.ie = zext i32 %.02294 to i64                 ; 2 uses
  %invariant.op = sub i32 16, %.02294
  br label %bb.bl

bb.bl:                                            ; preds = %bb.cn, %bb.bk
  %.12310 = phi i32 [ %.02309, %bb.bk ], [ %i.jw, %bb.cn ] ; 2 uses
  %.7 = phi i32 [ %i.id, %bb.bk ], [ %i.nd, %bb.cn ] ; 4 uses
  %.val2562 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.if = getelementptr inbounds nuw i8, ptr %.val2562, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %.0.copyload.i2689 = load i64, ptr %i.ig, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2689) #13, !srcloc !33
  %.val2633 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ih = getelementptr inbounds nuw i8, ptr %.val2633, i64 %i.f
  store i64 %.0.copyload.i2689, ptr %i.ih, align 1
  %.val2561 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ii = getelementptr inbounds nuw i8, ptr %.val2561, i64 %i.ie
  %.0.copyload.i2690 = load i64, ptr %i.ii, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2690) #13, !srcloc !33
  %.val2632 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ij = getelementptr inbounds nuw i8, ptr %.val2632, i64 %i.e
  store i64 %.0.copyload.i2690, ptr %i.ij, align 1
  %i.ik = add nsw i32 %.7, -2
  %i.il = lshr i32 %i.ik, 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bu, %bb.bl
  %.42315 = phi i32 [ 0, %bb.bl ], [ %.52316, %bb.bu ] ; 2 uses
  %.8 = phi i32 [ %.02294, %bb.bl ], [ %.9, %bb.bu ] ; 2 uses
  %i.im = shl i32 %.42315, 1                      ; 2 uses
  %i.in = or disjoint i32 %i.im, 1                ; 4 uses
  %i.io = shl i32 %.42315, 4
  %i.ip = add i32 %.8, %i.io                      ; 2 uses
  %i.iq = add i32 %i.ip, 16                       ; 5 uses
  %i.ir = add i32 %i.im, 2                        ; 2 uses
  %.not2445 = icmp sgt i32 %.7, %i.ir
  br i1 %.not2445, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  %i.is = zext i32 %i.iq to i64                   ; 4 uses
  %.val2480 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.it = getelementptr inbounds nuw i8, ptr %.val2480, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %.0.copyload.i2691 = load i32, ptr %i.iu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2691) #13, !srcloc !14
  %.val2479 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.iv = getelementptr inbounds nuw i8, ptr %.val2479, i64 %i.is
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 28
  %.0.copyload.i2692 = load i32, ptr %i.iw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2692) #13, !srcloc !14
  %i.ix = icmp ult i32 %.0.copyload.i2691, %.0.copyload.i2692
  br i1 %i.ix, label %bb.bt, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iy = icmp ugt i32 %.0.copyload.i2691, %.0.copyload.i2692
  br i1 %i.iy, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val2560 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.iz = getelementptr inbounds nuw i8, ptr %.val2560, i64 %i.is
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 20
  %.0.copyload.i2693 = load i64, ptr %i.ja, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2693) #13, !srcloc !33
  %i.jb = lshr i64 %.0.copyload.i2693, 32         ; 2 uses
  %.val2559 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jc = getelementptr inbounds nuw i8, ptr %.val2559, i64 %i.is
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %.0.copyload.i2694 = load i64, ptr %i.jd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2694) #13, !srcloc !33
  %i.je = lshr i64 %.0.copyload.i2694, 32         ; 2 uses
  %i.jf = tail call i64 @llvm.umin.i64(i64 %i.jb, i64 %i.je) ; 2 uses
  %.not2446 = icmp eq i64 %i.jf, 0
  br i1 %.not2446, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jg = trunc nuw i64 %i.jf to i32
  %i.jh = trunc i64 %.0.copyload.i2694 to i32
  %i.ji = trunc i64 %.0.copyload.i2693 to i32
  %i.jj = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.jh, i32 noundef %i.ji, i32 noundef %i.jg) #13 ; 2 uses
  %.not2447 = icmp eq i32 %i.jj, 0
  br i1 %.not2447, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jk = icmp slt i32 %i.jj, 0
  br i1 %i.jk, label %bb.bt, label %bb.bu

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  %i.jl = icmp samesign ugt i64 %i.jb, %i.je
  br i1 %i.jl, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bn
  %i.jm = add i32 %i.ip, 32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.br, %bb.bo, %bb.bm, %bb.bt
  %.52316 = phi i32 [ %i.in, %bb.bo ], [ %i.ir, %bb.bt ], [ %i.in, %bb.bm ], [ %i.in, %bb.br ], [ %i.in, %bb.bs ] ; 2 uses
  %.9 = phi i32 [ %i.iq, %bb.bo ], [ %i.jm, %bb.bt ], [ %i.iq, %bb.bm ], [ %i.iq, %bb.br ], [ %i.iq, %bb.bs ] ; 5 uses
  %i.jn = zext i32 %.9 to i64                     ; 9 uses
  %.val2558 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jo = getelementptr inbounds nuw i8, ptr %.val2558, i64 %i.jn
  %.0.copyload.i2695 = load i64, ptr %i.jo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2695) #13, !srcloc !33
  %i.jp = zext i32 %.8 to i64                     ; 2 uses
  %.val2631 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jq = getelementptr inbounds nuw i8, ptr %.val2631, i64 %i.jp
  store i64 %.0.copyload.i2695, ptr %i.jq, align 1
  %i.jr = add i32 %.9, 8
  %i.js = zext i32 %i.jr to i64
  %.val2557 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jt = getelementptr inbounds nuw i8, ptr %.val2557, i64 %i.js
  %.0.copyload.i2696 = load i64, ptr %i.jt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2696) #13, !srcloc !33
  %.val2630 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ju = getelementptr inbounds nuw i8, ptr %.val2630, i64 %i.jp
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i64 %.0.copyload.i2696, ptr %i.jv, align 1
  %.not2448 = icmp sgt i32 %.52316, %i.il
  br i1 %.not2448, label %bb.bv, label %bb.bm

bb.bv:                                            ; preds = %bb.bu
  %i.jw = add i32 %.12310, -16                    ; 3 uses
  %i.jx = icmp eq i32 %i.jw, %.9
  br i1 %i.jx, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %.val2556 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jy = getelementptr inbounds nuw i8, ptr %.val2556, i64 %i.e
  %.0.copyload.i2697 = load i64, ptr %i.jy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2697) #13, !srcloc !33
  %.val2629 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jz = getelementptr inbounds nuw i8, ptr %.val2629, i64 %i.jn
  store i64 %.0.copyload.i2697, ptr %i.jz, align 1
  %.val2555 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ka = getelementptr inbounds nuw i8, ptr %.val2555, i64 %i.f
  %.0.copyload.i2698 = load i64, ptr %i.ka, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2698) #13, !srcloc !33
  %.val2628 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kb = getelementptr inbounds nuw i8, ptr %.val2628, i64 %i.jn
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store i64 %.0.copyload.i2698, ptr %i.kc, align 1
  br label %bb.cn

bb.bx:                                            ; preds = %bb.bv
  %i.kd = zext i32 %i.jw to i64                   ; 3 uses
  %.val2554 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ke = getelementptr inbounds nuw i8, ptr %.val2554, i64 %i.kd
  %.0.copyload.i2699 = load i64, ptr %i.ke, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2699) #13, !srcloc !33
  %.val2627 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kf = getelementptr inbounds nuw i8, ptr %.val2627, i64 %i.jn
  store i64 %.0.copyload.i2699, ptr %i.kf, align 1
  %i.kg = add i32 %.12310, -8
  %i.kh = zext i32 %i.kg to i64
  %.val2553 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ki = getelementptr inbounds nuw i8, ptr %.val2553, i64 %i.kh
  %.0.copyload.i2700 = load i64, ptr %i.ki, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2700) #13, !srcloc !33
  %i.kj = add nuw nsw i64 %i.jn, 8                ; 2 uses
  %.val2626 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kk = getelementptr inbounds nuw i8, ptr %.val2626, i64 %i.kj
  store i64 %.0.copyload.i2700, ptr %i.kk, align 1
  %.val2552 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kl = getelementptr inbounds nuw i8, ptr %.val2552, i64 %i.e
  %.0.copyload.i2701 = load i64, ptr %i.kl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2701) #13, !srcloc !33
  %.val2625 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.km = getelementptr inbounds nuw i8, ptr %.val2625, i64 %i.kd
  store i64 %.0.copyload.i2701, ptr %i.km, align 1
  %.val2551 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kn = getelementptr inbounds nuw i8, ptr %.val2551, i64 %i.f
  %.0.copyload.i2702 = load i64, ptr %i.kn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2702) #13, !srcloc !33
  %.val2624 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %.val2624, i64 %i.kd
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i64 %.0.copyload.i2702, ptr %i.kp, align 1
  %.reass.reass.reass = add i32 %.9, %invariant.op ; 2 uses
  %i.kq = icmp slt i32 %.reass.reass.reass, 17
  br i1 %i.kq, label %bb.cn, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.val2550 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kr = getelementptr inbounds nuw i8, ptr %.val2550, i64 %i.jn
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %.0.copyload.i2703 = load i64, ptr %i.ks, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2703) #13, !srcloc !33
  %i.kt = lshr i32 %.reass.reass.reass, 4
  %i.ku = add nsw i32 %i.kt, -2                   ; 2 uses
  %i.kv = lshr i32 %i.ku, 1                       ; 2 uses
  %i.kw = shl i32 %i.kv, 4
  %i.kx = add i32 %i.kw, %.02294                  ; 2 uses
  %i.ky = zext i32 %i.kx to i64                   ; 5 uses
  %.val2478 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kz = getelementptr inbounds nuw i8, ptr %.val2478, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  %.0.copyload.i2704 = load i32, ptr %i.la, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2704) #13, !srcloc !14
end_hunk_1
begin_hunk_2_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cllvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %.val1986, i64 %i.h
  store i32 %.0.copyload.i2070, ptr %i.at, align 1
  %.val2064 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %.val2064, i64 %i.g
  store i64 %.0.copyload.i2072, ptr %i.au, align 1
  %.val1985 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %.val1985, i64 %i.aq
  store i32 %.0.copyload.i2068, ptr %i.av, align 1
  %.val2063 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val2063, i64 %i.aj
  store i64 %.0.copyload.i2069, ptr %i.aw, align 1
  br label %.loopexit

bb.d:                                             ; preds = %.loopexit2196
  %i.ax = add i32 %.01747, 24
  %i.ay = add i32 %.01747, 48
  %i.az = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort40x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr noundef %0, i32 noundef %.01747, i32 noundef %i.ax, i32 noundef %i.ay, i32 noundef %i.f) ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %.loopexit2196
  %i.ba = add i32 %.01747, 24
  %i.bb = add i32 %.01747, 48
  %i.bc = add i32 %.01747, 72
  %i.bd = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort5_wrap_policy0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr noundef %0, i32 noundef %.01747, i32 noundef %i.ba, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.f) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %.loopexit2196
  %i.be = icmp slt i32 %i.l, 168
  br i1 %i.be, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.bf = add i32 %.01747, 24
  %i.bg = add i32 %.01747, 48                     ; 2 uses
  %i.bh = tail call i32 @w2c_hermes_unsigned0x20int0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsort30x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ASwitchImmInst0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3ASwitchImmInfo0x3E0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3AgenerateJumpTable0x280x290x3A0x3A0x24_00x260x29(ptr noundef %0, i32 noundef %.01747, i32 noundef %i.bf, i32 noundef %i.bg) ; 0 uses
  %i.bi = add i32 %.01747, 72                     ; 2 uses
  %i.bj = icmp eq i32 %i.bi, %.01763
  br i1 %i.bj, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %.pre = zext i32 %.01747 to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.l
  %.31761 = phi i32 [ %i.dt, %bb.l ], [ %i.bi, %.preheader ] ; 7 uses
  %.01743 = phi i32 [ %.31761, %bb.l ], [ %i.bg, %.preheader ] ; 2 uses
  %i.bk = add i32 %.31761, 4
  %i.bl = zext i32 %i.bk to i64
  %.val1899 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1899, i64 %i.bl
  %.0.copyload.i2077 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2077) #13, !srcloc !14
  %i.bn = zext i32 %.01743 to i64
  %.val1898 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1898, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.0.copyload.i2078 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2078) #13, !srcloc !14
  %i.bq = icmp ult i32 %.0.copyload.i2077, %.0.copyload.i2078
  br i1 %i.bq, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.br = add i32 %.31761, 20
  %i.bs = zext i32 %i.br to i64
  %.val1897 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1897, i64 %i.bs
  %.0.copyload.i2079 = load i32, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2079) #13, !srcloc !14
  %i.bu = zext i32 %.31761 to i64                 ; 5 uses
  %.val1984 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1984, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  store i32 0, ptr %i.bw, align 1
  %.val1896 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1896, i64 %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.0.copyload.i2080 = load i32, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2080) #13, !srcloc !14
  %i.bz = add i32 %.31761, 12
  %i.ca = zext i32 %i.bz to i64
  %.val1895 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1895, i64 %i.ca
  %.0.copyload.i2081 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2081) #13, !srcloc !14
  %.val2062 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %.val2062, i64 %i.bu
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i64 0, ptr %i.cd, align 1
  %.val2018 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2018, i64 %i.bu
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %.0.copyload.i2082 = load i64, ptr %i.cf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2082) #13, !srcloc !33
  %i.cg = trunc i64 %.0.copyload.i2082 to i32
  %.val1894 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1894, i64 %i.bu
  %.0.copyload.i2083 = load i32, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2083) #13, !srcloc !14
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.01748 = phi i32 [ %.31761, %bb.i ], [ %.11744, %bb.k ]
  %.11744 = phi i32 [ %.01743, %bb.i ], [ %i.df, %bb.k ] ; 6 uses
  %i.ci = zext i32 %.11744 to i64                 ; 5 uses
  %.val1893 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1893, i64 %i.ci
  %.0.copyload.i2084 = load i32, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2084) #13, !srcloc !14
  %i.ck = zext i32 %.01748 to i64                 ; 4 uses
  %.val1983 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1983, i64 %i.ck
  store i32 %.0.copyload.i2084, ptr %i.cl, align 1
  %.val2017 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.val2017, i64 %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %.0.copyload.i2085 = load i64, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2085) #13, !srcloc !33
  %.val2061 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %.val2061, i64 %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i64 %.0.copyload.i2085, ptr %i.cp, align 1
  %i.cq = add i32 %.11744, 12
  %i.cr = zext i32 %i.cq to i64
  %.val2016 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %.val2016, i64 %i.cr
  %.0.copyload.i2086 = load i64, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2086) #13, !srcloc !33
  %.val2060 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %.val2060, i64 %i.ck
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i64 %.0.copyload.i2086, ptr %i.cu, align 1
  %i.cv = add i32 %.11744, 20
  %i.cw = zext i32 %i.cv to i64
  %.val1892 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1892, i64 %i.cw
  %.0.copyload.i2087 = load i32, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2087) #13, !srcloc !14
  %.val1982 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1982, i64 %i.ck
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  store i32 %.0.copyload.i2087, ptr %i.cz, align 1
  %.val1981 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %.val1981, i64 %i.ci
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  store i32 0, ptr %i.db, align 1
  %.val2059 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %.val2059, i64 %i.ci
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i64 0, ptr %i.dd, align 1
  %i.de = icmp eq i32 %.11744, %.01747
  br i1 %i.de, label %split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = add i32 %.11744, -24                    ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %.val1891 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1891, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %.0.copyload.i2088 = load i32, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2088) #13, !srcloc !14
  %i.dj = icmp ugt i32 %.0.copyload.i2088, %i.cg
  br i1 %i.dj, label %bb.j, label %split

split:                                            ; preds = %bb.k, %bb.j
  %.pre-phi = phi i64 [ %.pre, %bb.j ], [ %i.ci, %bb.k ] ; 5 uses
  %.val2058 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %.val2058, i64 %.pre-phi
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store i64 %.0.copyload.i2082, ptr %i.dl, align 1
  %.val1980 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1980, i64 %.pre-phi
  store i32 %.0.copyload.i2083, ptr %i.dm, align 1
  %.val1979 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %.val1979, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  store i32 %.0.copyload.i2079, ptr %i.do, align 1
  %.val1978 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %.val1978, i64 %.pre-phi
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i32 %.0.copyload.i2080, ptr %i.dq, align 1
  %.val1977 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.dr = getelementptr inbounds nuw i8, ptr %.val1977, i64 %.pre-phi
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 %.0.copyload.i2081, ptr %i.ds, align 1
  br label %bb.l

bb.l:                                             ; preds = %split, %bb.h
  %i.dt = add i32 %.31761, 24                     ; 2 uses
  %.not1812 = icmp eq i32 %i.dt, %.01763
  br i1 %.not1812, label %.loopexit, label %bb.h

bb.m:                                             ; preds = %bb.f
  %.not1794 = icmp eq i32 %.21760, 0
  br i1 %.not1794, label %bb.n, label %bb.an

bb.n:                                             ; preds = %bb.m
  %i.du = icmp eq i32 %.01763, %.01747
  br i1 %i.du, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dv = add nsw i32 %i.m, -2                    ; 2 uses
  %i.dw = lshr i32 %i.dv, 1                       ; 2 uses
  %i.dx = lshr i32 %i.dv, 1
  %4 = zext nneg i32 %i.dx to i64
  %sext = zext nneg i32 %i.dw to i64
  br label %5

5:                                                ; preds = %bb.y, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ %4, %bb.o ] ; 4 uses
  %6 = icmp sgt i64 %indvars.iv, %sext
  br i1 %6, label %bb.y, label %bb.p

bb.p:                                             ; preds = %5
  %i.dy = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.dz = mul i32 %i.dy, 24
  %i.ea = add i32 %i.dz, %.01747                  ; 5 uses
  %i.eb = shl nuw i32 %i.dy, 1                    ; 2 uses
  %i.ec = or disjoint i32 %i.eb, 1                ; 3 uses
  %i.ed = mul i32 %i.ec, 24
  %i.ee = add i32 %i.ed, %.01747                  ; 3 uses
  %i.ef = add i32 %i.eb, 2                        ; 2 uses
  %i.eg = icmp sgt i32 %i.m, %i.ef
  br i1 %i.eg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eh = zext i32 %i.ee to i64                   ; 2 uses
  %.val1890 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1890, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %.0.copyload.i2089 = load i32, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2089) #13, !srcloc !14
  %.val1889 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ek = getelementptr inbounds nuw i8, ptr %.val1889, i64 %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  %.0.copyload.i2090 = load i32, ptr %i.el, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2090) #13, !srcloc !14
  %i.em = icmp ult i32 %.0.copyload.i2089, %.0.copyload.i2090 ; 2 uses
  %i.en = select i1 %i.em, i32 %i.ef, i32 %i.ec
  %i.eo = select i1 %i.em, i32 24, i32 0
  %i.ep = add i32 %i.eo, %i.ee
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.11749 = phi i32 [ %i.ep, %bb.q ], [ %i.ee, %bb.p ] ; 2 uses
  %.21745 = phi i32 [ %i.en, %bb.q ], [ %i.ec, %bb.p ]
  %i.eq = zext i32 %.11749 to i64
  %.val1888 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.er = getelementptr inbounds nuw i8, ptr %.val1888, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %.0.copyload.i2091 = load i32, ptr %i.es, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2091) #13, !srcloc !14
  %i.et = add i32 %i.ea, 4
  %i.eu = zext i32 %i.et to i64
  %.val1887 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %.val1887, i64 %i.eu
  %.0.copyload.i2092 = load i32, ptr %i.ev, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2092) #13, !srcloc !14
  %i.ew = icmp ult i32 %.0.copyload.i2091, %.0.copyload.i2092
  br i1 %i.ew, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = add i32 %i.ea, 20
  %i.ey = zext i32 %i.ex to i64
  %.val1886 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ez = getelementptr inbounds nuw i8, ptr %.val1886, i64 %i.ey
  %.0.copyload.i2093 = load i32, ptr %i.ez, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2093) #13, !srcloc !14
  %i.fa = zext i32 %i.ea to i64                   ; 5 uses
  %.val1976 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fb = getelementptr inbounds nuw i8, ptr %.val1976, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 20
  store i32 0, ptr %i.fc, align 1
  %.val1885 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %.val1885, i64 %i.fa
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %.0.copyload.i2094 = load i32, ptr %i.fe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2094) #13, !srcloc !14
  %i.ff = add i32 %i.ea, 12
  %i.fg = zext i32 %i.ff to i64
  %.val1884 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fh = getelementptr inbounds nuw i8, ptr %.val1884, i64 %i.fg
  %.0.copyload.i2095 = load i32, ptr %i.fh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2095) #13, !srcloc !14
  %.val2057 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fi = getelementptr inbounds nuw i8, ptr %.val2057, i64 %i.fa
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i64 0, ptr %i.fj, align 1
  %.val2015 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %.val2015, i64 %i.fa
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %.0.copyload.i2096 = load i64, ptr %i.fl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2096) #13, !srcloc !33
  %i.fm = trunc i64 %.0.copyload.i2096 to i32
  %.val1883 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1883, i64 %i.fa
  %.0.copyload.i2097 = load i32, ptr %i.fn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2097) #13, !srcloc !14
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.s
  %.41769 = phi i32 [ %i.ea, %bb.s ], [ %.21750, %bb.w ]
  %.21750 = phi i32 [ %.11749, %bb.s ], [ %.31751, %bb.w ] ; 2 uses
  %.31746 = phi i32 [ %.21745, %bb.s ], [ %.4, %bb.w ] ; 2 uses
  %i.fo = zext i32 %.21750 to i64                 ; 6 uses
  %.val1882 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fp = getelementptr inbounds nuw i8, ptr %.val1882, i64 %i.fo
  %.0.copyload.i2098 = load i32, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2098) #13, !srcloc !14
  %i.fq = zext i32 %.41769 to i64                 ; 4 uses
  %.val1975 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fr = getelementptr inbounds nuw i8, ptr %.val1975, i64 %i.fq
  store i32 %.0.copyload.i2098, ptr %i.fr, align 1
  %i.fs = add nuw nsw i64 %i.fo, 4                ; 2 uses
  %.val2014 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %.val2014, i64 %i.fs
  %.0.copyload.i2099 = load i64, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2099) #13, !srcloc !33
  %.val2056 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %.val2056, i64 %i.fq
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i64 %.0.copyload.i2099, ptr %i.fv, align 1
  %i.fw = add nuw nsw i64 %i.fo, 12               ; 3 uses
  %.val2013 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %.val2013, i64 %i.fw
  %.0.copyload.i2100 = load i64, ptr %i.fx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2100) #13, !srcloc !33
  %.val2055 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.fy = getelementptr inbounds nuw i8, ptr %.val2055, i64 %i.fq
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i64 %.0.copyload.i2100, ptr %i.fz, align 1
  %i.ga = add nuw nsw i64 %i.fo, 20               ; 3 uses
  %.val1881 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1881, i64 %i.ga
  %.0.copyload.i2101 = load i32, ptr %i.gb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2101) #13, !srcloc !14
  %.val1974 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %.val1974, i64 %i.fq
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  store i32 %.0.copyload.i2101, ptr %i.gd, align 1
  %.val1973 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ge = getelementptr inbounds nuw i8, ptr %.val1973, i64 %i.ga
  store i32 0, ptr %i.ge, align 1
  %.val2054 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %.val2054, i64 %i.fw
  store i64 0, ptr %i.gf, align 1
  %i.gg = icmp sgt i32 %.31746, %i.dw
  br i1 %i.gg, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gh = shl i32 %.31746, 1                      ; 2 uses
  %i.gi = or disjoint i32 %i.gh, 1                ; 3 uses
  %i.gj = mul i32 %i.gi, 24
  %i.gk = add i32 %i.gj, %.01747                  ; 3 uses
  %i.gl = add i32 %i.gh, 2                        ; 2 uses
  %i.gm = icmp sgt i32 %i.m, %i.gl
  br i1 %i.gm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gn = zext i32 %i.gk to i64                   ; 2 uses
  %.val1880 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.go = getelementptr inbounds nuw i8, ptr %.val1880, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %.0.copyload.i2102 = load i32, ptr %i.gp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2102) #13, !srcloc !14
  %.val1879 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1879, i64 %i.gn
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 28
  %.0.copyload.i2103 = load i32, ptr %i.gr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2103) #13, !srcloc !14
  %i.gs = icmp ult i32 %.0.copyload.i2102, %.0.copyload.i2103 ; 2 uses
  %i.gt = select i1 %i.gs, i32 %i.gl, i32 %i.gi
  %i.gu = select i1 %i.gs, i32 24, i32 0
  %i.gv = add i32 %i.gu, %i.gk
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.31751 = phi i32 [ %i.gv, %bb.v ], [ %i.gk, %bb.u ] ; 2 uses
  %.4 = phi i32 [ %i.gt, %bb.v ], [ %i.gi, %bb.u ]
  %i.gw = zext i32 %.31751 to i64
  %.val1878 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1878, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %.0.copyload.i2104 = load i32, ptr %i.gy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2104) #13, !srcloc !14
  %.not1806 = icmp ult i32 %.0.copyload.i2104, %i.fm
  br i1 %.not1806, label %bb.x, label %bb.t

bb.x:                                             ; preds = %bb.w, %bb.t
  %.val2053 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %.val2053, i64 %i.fs
  store i64 %.0.copyload.i2096, ptr %i.gz, align 1
  %.val1972 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ha = getelementptr inbounds nuw i8, ptr %.val1972, i64 %i.fo
  store i32 %.0.copyload.i2097, ptr %i.ha, align 1
  %.val1971 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.hb = getelementptr inbounds nuw i8, ptr %.val1971, i64 %i.ga
  store i32 %.0.copyload.i2093, ptr %i.hb, align 1
  %.val1970 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1970, i64 %i.fo
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store i32 %.0.copyload.i2094, ptr %i.hd, align 1
  %.val1969 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %.val1969, i64 %i.fw
  store i32 %.0.copyload.i2095, ptr %i.he, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %5, %bb.x
  %.not1807 = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not1807, label %bb.z, label %5

bb.z:                                             ; preds = %bb.y
  %i.hf = udiv i32 %i.l, 24
  %i.hg = zext i32 %.01747 to i64                 ; 5 uses
  %i.hh = add nuw nsw i64 %i.hg, 20               ; 2 uses
  %i.hi = add nuw nsw i64 %i.hg, 12               ; 2 uses
  %invariant.op = sub i32 24, %.01747
  br label %bb.aa

bb.aa:                                            ; preds = %bb.am, %bb.z
  %.51770 = phi i32 [ %i.hf, %bb.z ], [ %i.mr, %bb.am ] ; 4 uses
  %.11764 = phi i32 [ %.01763, %bb.z ], [ %i.jg, %bb.am ] ; 5 uses
  %.val1877 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1877, i64 %i.hh
  %.0.copyload.i2105 = load i32, ptr %i.hj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2105) #13, !srcloc !14
  %.val1968 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.hk = getelementptr inbounds nuw i8, ptr %.val1968, i64 %i.hh
  store i32 0, ptr %i.hk, align 1
  %.val1876 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.hl = getelementptr inbounds nuw i8, ptr %.val1876, i64 %i.hg
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %.0.copyload.i2106 = load i32, ptr %i.hm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2106) #13, !srcloc !14
  %.val1875 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.hn = getelementptr inbounds nuw i8, ptr %.val1875, i64 %i.hi
  %.0.copyload.i2107 = load i32, ptr %i.hn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2107) #13, !srcloc !14
  %.val2052 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ho = getelementptr inbounds nuw i8, ptr %.val2052, i64 %i.hi
  store i64 0, ptr %i.ho, align 1
  %i.hp = add nsw i32 %.51770, -2
  %i.hq = lshr i32 %i.hp, 1
  %.val2012 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.hr = getelementptr inbounds nuw i8, ptr %.val2012, i64 %i.hg
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %.0.copyload.i2108 = load i64, ptr %i.hs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2108) #13, !srcloc !33
  %.val1874 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1874, i64 %i.hg
  %.0.copyload.i2109 = load i32, ptr %i.ht, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2109) #13, !srcloc !14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %.41752 = phi i32 [ %.01747, %bb.aa ], [ %.61771, %bb.ad ] ; 2 uses
  %.5 = phi i32 [ 0, %bb.aa ], [ %.6, %bb.ad ]    ; 2 uses
  %i.hu = shl i32 %.5, 1                          ; 2 uses
  %i.hv = or disjoint i32 %i.hu, 1                ; 2 uses
  %i.hw = mul i32 %.5, 24
  %i.hx = add i32 %.41752, 24
  %i.hy = add i32 %i.hx, %i.hw                    ; 3 uses
  %i.hz = add i32 %i.hu, 2                        ; 2 uses
  %.not1808 = icmp sgt i32 %.51770, %i.hz
  br i1 %.not1808, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ia = zext i32 %i.hy to i64                   ; 2 uses
  %.val1873 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ib = getelementptr inbounds nuw i8, ptr %.val1873, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %.0.copyload.i2110 = load i32, ptr %i.ic, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2110) #13, !srcloc !14
  %.val1872 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.id = getelementptr inbounds nuw i8, ptr %.val1872, i64 %i.ia
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 28
  %.0.copyload.i2111 = load i32, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2111) #13, !srcloc !14
  %i.if = icmp ult i32 %.0.copyload.i2110, %.0.copyload.i2111 ; 2 uses
  %i.ig = select i1 %i.if, i32 %i.hz, i32 %i.hv
  %i.ih = select i1 %i.if, i32 24, i32 0
  %i.ii = add i32 %i.ih, %i.hy
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.61771 = phi i32 [ %i.ii, %bb.ac ], [ %i.hy, %bb.ab ] ; 8 uses
  %.6 = phi i32 [ %i.ig, %bb.ac ], [ %i.hv, %bb.ab ] ; 2 uses
  %i.ij = zext i32 %.61771 to i64                 ; 10 uses
  %.val1871 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %.val1871, i64 %i.ij
  %.0.copyload.i2112 = load i32, ptr %i.ik, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2112) #13, !srcloc !14
  %i.il = zext i32 %.41752 to i64                 ; 4 uses
  %.val1967 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.im = getelementptr inbounds nuw i8, ptr %.val1967, i64 %i.il
  store i32 %.0.copyload.i2112, ptr %i.im, align 1
  %i.in = add i32 %.61771, 4
  %i.io = zext i32 %i.in to i64
  %.val2011 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ip = getelementptr inbounds nuw i8, ptr %.val2011, i64 %i.io
  %.0.copyload.i2113 = load i64, ptr %i.ip, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2113) #13, !srcloc !33
  %.val2051 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.iq = getelementptr inbounds nuw i8, ptr %.val2051, i64 %i.il
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store i64 %.0.copyload.i2113, ptr %i.ir, align 1
  %i.is = add i32 %.61771, 12
  %i.it = zext i32 %i.is to i64
  %.val2010 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.iu = getelementptr inbounds nuw i8, ptr %.val2010, i64 %i.it
  %.0.copyload.i2114 = load i64, ptr %i.iu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2114) #13, !srcloc !33
  %.val2050 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.iv = getelementptr inbounds nuw i8, ptr %.val2050, i64 %i.il
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i64 %.0.copyload.i2114, ptr %i.iw, align 1
  %i.ix = add i32 %.61771, 20
  %i.iy = zext i32 %i.ix to i64
  %.val1870 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.iz = getelementptr inbounds nuw i8, ptr %.val1870, i64 %i.iy
  %.0.copyload.i2115 = load i32, ptr %i.iz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2115) #13, !srcloc !14
  %.val1966 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ja = getelementptr inbounds nuw i8, ptr %.val1966, i64 %i.il
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 20
  store i32 %.0.copyload.i2115, ptr %i.jb, align 1
  %i.jc = add nuw nsw i64 %i.ij, 20               ; 5 uses
  %.val1965 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.jd = getelementptr inbounds nuw i8, ptr %.val1965, i64 %i.jc
  store i32 0, ptr %i.jd, align 1
  %i.je = add nuw nsw i64 %i.ij, 12               ; 5 uses
  %.val2049 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.jf = getelementptr inbounds nuw i8, ptr %.val2049, i64 %i.je
  store i64 0, ptr %i.jf, align 1
  %.not1809 = icmp sgt i32 %.6, %i.hq
  br i1 %.not1809, label %bb.ae, label %bb.ab

bb.ae:                                            ; preds = %bb.ad
  %i.jg = add i32 %.11764, -24                    ; 3 uses
  %i.jh = icmp eq i32 %i.jg, %.61771
  br i1 %i.jh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.val1964 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ji = getelementptr inbounds nuw i8, ptr %.val1964, i64 %i.ij
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store i32 %.0.copyload.i2106, ptr %i.jj, align 1
  %.val1963 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.jk = getelementptr inbounds nuw i8, ptr %.val1963, i64 %i.je
  store i32 %.0.copyload.i2107, ptr %i.jk, align 1
  %.val1962 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1962, i64 %i.ij
  store i32 %.0.copyload.i2109, ptr %i.jl, align 1
  %.val1961 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1961, i64 %i.jc
  store i32 %.0.copyload.i2105, ptr %i.jm, align 1
  %.val2048 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.jn = getelementptr inbounds nuw i8, ptr %.val2048, i64 %i.ij
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  store i64 %.0.copyload.i2108, ptr %i.jo, align 1
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae
  %i.jp = zext i32 %i.jg to i64                   ; 6 uses
  %.val1869 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.jq = getelementptr inbounds nuw i8, ptr %.val1869, i64 %i.jp
  %.0.copyload.i2116 = load i32, ptr %i.jq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2116) #13, !srcloc !14
  %.val1960 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.jr = getelementptr inbounds nuw i8, ptr %.val1960, i64 %i.ij
  store i32 %.0.copyload.i2116, ptr %i.jr, align 1
  %i.js = add i32 %.11764, -20
  %i.jt = zext i32 %i.js to i64
  %.val2009 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ju = getelementptr inbounds nuw i8, ptr %.val2009, i64 %i.jt
  %.0.copyload.i2117 = load i64, ptr %i.ju, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2117) #13, !srcloc !33
  %i.jv = add nuw nsw i64 %i.ij, 4                ; 3 uses
  %.val2047 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.jw = getelementptr inbounds nuw i8, ptr %.val2047, i64 %i.jv
  store i64 %.0.copyload.i2117, ptr %i.jw, align 1
  %i.jx = add i32 %.11764, -12
  %i.jy = zext i32 %i.jx to i64
  %.val1868 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.jz = getelementptr inbounds nuw i8, ptr %.val1868, i64 %i.jy
  %.0.copyload.i2118 = load i32, ptr %i.jz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2118) #13, !srcloc !14
  %.val1959 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ka = getelementptr inbounds nuw i8, ptr %.val1959, i64 %i.je
  store i32 %.0.copyload.i2118, ptr %i.ka, align 1
  %i.kb = add i32 %.11764, -8
  %i.kc = zext i32 %i.kb to i64
  %.val1867 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.kd = getelementptr inbounds nuw i8, ptr %.val1867, i64 %i.kc
  %.0.copyload.i2119 = load i32, ptr %i.kd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2119) #13, !srcloc !14
  %i.ke = add nuw nsw i64 %i.ij, 16               ; 2 uses
  %.val1958 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.kf = getelementptr inbounds nuw i8, ptr %.val1958, i64 %i.ke
  store i32 %.0.copyload.i2119, ptr %i.kf, align 1
  %i.kg = add i32 %.11764, -4
  %i.kh = zext i32 %i.kg to i64
  %.val1866 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ki = getelementptr inbounds nuw i8, ptr %.val1866, i64 %i.kh
  %.0.copyload.i2120 = load i32, ptr %i.ki, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2120) #13, !srcloc !14
  %.val1957 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1957, i64 %i.jc
  store i32 %.0.copyload.i2120, ptr %i.kj, align 1
  %.val1956 = load ptr, ptr %i.a, align 8, !tbaa !8
end_hunk_2
begin_hunk_3_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x3A0x3Adifference_type0x29:bb.a

bb.aa:                                            ; preds = %bb.z, %.backedge
  %i.gb = add nuw nsw i64 %i.fo, 16               ; 4 uses
  %.val5091 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %.val5091, i64 %i.gb
  %.0.copyload.i5297 = load i64, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5297) #13, !srcloc !33
  %.val5213 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gd = getelementptr inbounds nuw i8, ptr %.val5213, i64 %i.fq
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i64 %.0.copyload.i5297, ptr %i.ge, align 1
  %i.gf = add nuw nsw i64 %i.fo, 24               ; 2 uses
  %.val4818 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gg = getelementptr inbounds nuw i8, ptr %.val4818, i64 %i.gf
  %.0.copyload.i5298 = load i32, ptr %i.gg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5298) #13, !srcloc !14
  %.val4903 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gh = getelementptr inbounds nuw i8, ptr %.val4903, i64 %i.fq
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  store i32 %.0.copyload.i5298, ptr %i.gi, align 1
  %.val4990 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gj = getelementptr inbounds nuw i8, ptr %.val4990, i64 %i.fo
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 27
  store i8 0, ptr %i.gk, align 1
  %.val4989 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gl = getelementptr inbounds nuw i8, ptr %.val4989, i64 %i.gb
  store i8 0, ptr %i.gl, align 1
  %.val5090 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gm = getelementptr inbounds nuw i8, ptr %.val5090, i64 %i.fo
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %.0.copyload.i5299 = load i64, ptr %i.gn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5299) #13, !srcloc !33
  %.val5212 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.go = getelementptr inbounds nuw i8, ptr %.val5212, i64 %i.fq
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 28
  store i64 %.0.copyload.i5299, ptr %i.gp, align 1
  %i.gq = icmp eq i32 %.24278, %.04275
  br i1 %i.gq, label %split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not4573, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.val4817 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gr = getelementptr inbounds nuw i8, ptr %.val4817, i64 %i.e
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 44
  %.0.copyload.i5300 = load i32, ptr %i.gs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5300) #13, !srcloc !14
  %.val4954 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %.val4954, i64 %i.e
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 51
  %.0.copyload.i5301 = load i8, ptr %i.gu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5301) #13, !srcloc !31
  %i.gv = zext i8 %.0.copyload.i5301 to i32
  %.not4575 = icmp sgt i8 %.0.copyload.i5301, -1  ; 2 uses
  %i.gw = select i1 %.not4575, i32 %i.gv, i32 %.0.copyload.i5300
  %.not4576 = icmp eq i32 %i.gw, 23
  br i1 %.not4576, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.val4816 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gx = getelementptr inbounds nuw i8, ptr %.val4816, i64 %i.e
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %.0.copyload.i5302 = load i32, ptr %i.gy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5302) #13, !srcloc !14
  %i.gz = select i1 %.not4575, i32 %i.dm, i32 %.0.copyload.i5302
  %i.ha = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.gz, i32 noundef 71264, i32 noundef 23) #13
  %.not4577 = icmp eq i32 %i.ha, 0
  br i1 %.not4577, label %split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.hb = add i32 %.24278, -32
  %i.hc = zext i32 %i.hb to i64
  %.val4815 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hd = getelementptr inbounds nuw i8, ptr %.val4815, i64 %i.hc
  %.0.copyload.i5303 = load i32, ptr %i.hd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5303) #13, !srcloc !14
  %i.he = add i32 %.24278, -36                    ; 2 uses
  %i.hf = zext i32 %i.he to i64
  %.val4814 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %.val4814, i64 %i.hf
  %.0.copyload.i5304 = load i32, ptr %i.hg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5304) #13, !srcloc !14
  %.not4578 = icmp eq i32 %.0.copyload.i5304, 0
  %.not4579 = icmp eq i32 %.0.copyload.i5303, 0
  %or.cond4588 = select i1 %.not4578, i1 %.not4579, i1 false
  br i1 %or.cond4588, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.hh = add i32 %.24278, -16
  %i.hi = zext i32 %i.hh to i64
  %.val4813 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hj = getelementptr inbounds nuw i8, ptr %.val4813, i64 %i.hi
  %.0.copyload.i5305 = load i32, ptr %i.hj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5305) #13, !srcloc !14
  %i.hk = add i32 %.24278, -9
  %i.hl = zext i32 %i.hk to i64
  %.val4953 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hm = getelementptr inbounds nuw i8, ptr %.val4953, i64 %i.hl
  %.0.copyload.i5306 = load i8, ptr %i.hm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5306) #13, !srcloc !31
  %i.hn = zext i8 %.0.copyload.i5306 to i32
  %.not4581 = icmp sgt i8 %.0.copyload.i5306, -1  ; 2 uses
  %i.ho = select i1 %.not4581, i32 %i.hn, i32 %.0.copyload.i5305
  %.not4582 = icmp eq i32 %i.ho, 23
  br i1 %.not4582, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hp = add i32 %.24278, -20                    ; 2 uses
  %i.hq = zext i32 %i.hp to i64
  %.val4812 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hr = getelementptr inbounds nuw i8, ptr %.val4812, i64 %i.hq
  %.0.copyload.i5307 = load i32, ptr %i.hr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5307) #13, !srcloc !14
  %i.hs = select i1 %.not4581, i32 %i.hp, i32 %.0.copyload.i5307
  %i.ht = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.hs, i32 noundef 71264, i32 noundef 23) #13
  %.not4583 = icmp eq i32 %i.ht, 0
  br i1 %.not4583, label %.backedge.backedge, label %split

.backedge.backedge:                               ; preds = %bb.ag, %bb.ah
  br label %.backedge

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.hu = icmp ult i32 %.0.copyload.i5291, %.0.copyload.i5303
  br i1 %i.hu, label %.backedge.backedge, label %split

split:                                            ; preds = %bb.ad, %bb.ag, %bb.ah, %bb.aa
  %.pre-phi5923 = phi i64 [ %.pre, %bb.aa ], [ %i.fo, %bb.ah ], [ %i.fo, %bb.ag ], [ %i.fo, %bb.ad ] ; 4 uses
  %.val5089 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hv = getelementptr inbounds nuw i8, ptr %.val5089, i64 %i.g
  %.0.copyload.i5308 = load i64, ptr %i.hv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5308) #13, !srcloc !33
  %.val5211 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %.val5211, i64 %.pre-phi5923
  store i64 %.0.copyload.i5308, ptr %i.hw, align 1
  %.val5088 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hx = getelementptr inbounds nuw i8, ptr %.val5088, i64 %i.f
  %.0.copyload.i5309 = load i64, ptr %i.hx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5309) #13, !srcloc !33
  %.val5210 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %.val5210, i64 %.pre-phi5923
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store i64 %.0.copyload.i5309, ptr %i.hz, align 1
  %.val5246 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ia = getelementptr inbounds nuw i8, ptr %.val5246, i64 %.pre-phi5923
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 27
  %.0.copyload.i5310 = load i8, ptr %i.ib, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5310) #13, !srcloc !36
  %i.ic = icmp slt i8 %.0.copyload.i5310, 0
  br i1 %i.ic, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %split
  %.val4811 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.id = getelementptr inbounds nuw i8, ptr %.val4811, i64 %i.gb
  %.0.copyload.i5311 = load i32, ptr %i.id, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5311) #13, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i5311) #13
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %split
  %.val5087 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ie = getelementptr inbounds nuw i8, ptr %.val5087, i64 %i.dn
  %.0.copyload.i5312 = load i64, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5312) #13, !srcloc !33
  %.val5209 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.if = getelementptr inbounds nuw i8, ptr %.val5209, i64 %i.gb
  store i64 %.0.copyload.i5312, ptr %i.if, align 1
  %.val4810 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ig = getelementptr inbounds nuw i8, ptr %.val4810, i64 %i.do
  %.0.copyload.i5313 = load i32, ptr %i.ig, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5313) #13, !srcloc !14
  %.val4902 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ih = getelementptr inbounds nuw i8, ptr %.val4902, i64 %i.gf
  store i32 %.0.copyload.i5313, ptr %i.ih, align 1
  %.val5086 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ii = getelementptr inbounds nuw i8, ptr %.val5086, i64 %i.dp
  %.0.copyload.i5314 = load i64, ptr %i.ii, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5314) #13, !srcloc !33
  %.val5208 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ij = getelementptr inbounds nuw i8, ptr %.val5208, i64 %.pre-phi5923
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 28
  store i64 %.0.copyload.i5314, ptr %i.ik, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.x, %bb.w, %bb.t, %bb.aj
  %i.il = add i32 %.24300, 36                     ; 2 uses
  %.not4584 = icmp eq i32 %i.il, %.04296
  br i1 %.not4584, label %.loopexit, label %bb.r

bb.al:                                            ; preds = %bb.o
  %.not4343 = icmp eq i32 %.24289, 0
  br i1 %.not4343, label %bb.am, label %bb.ed

bb.am:                                            ; preds = %bb.al
  %i.im = icmp eq i32 %.04296, %.04275
  br i1 %i.im, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.in = add i32 %i.b, -24                       ; 3 uses
  %i.io = add nsw i32 %i.y, -2                    ; 2 uses
  %i.ip = lshr i32 %i.io, 1                       ; 2 uses
  %i.iq = zext i32 %i.in to i64                   ; 5 uses
  %i.ir = add nuw nsw i64 %i.iq, 8                ; 4 uses
  %i.is = add nuw nsw i64 %i.e, 52                ; 4 uses
  %i.it = lshr i32 %i.io, 1
  %4 = zext nneg i32 %i.it to i64
  %sext = zext nneg i32 %i.ip to i64
  br label %5

5:                                                ; preds = %bb.ca, %bb.an
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ca ], [ %4, %bb.an ] ; 4 uses
  %6 = icmp sgt i64 %indvars.iv, %sext
  br i1 %6, label %bb.ca, label %bb.ao

bb.ao:                                            ; preds = %5
  %i.iu = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.iv = shl nuw i32 %i.iu, 1                    ; 2 uses
  %i.iw = or disjoint i32 %i.iv, 1                ; 5 uses
  %i.ix = mul i32 %i.iw, 36
  %i.iy = add i32 %i.ix, %.04275                  ; 8 uses
  %i.iz = add i32 %i.iv, 2                        ; 2 uses
  %.not4455 = icmp sgt i32 %i.y, %i.iz
  br i1 %.not4455, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.ja = zext i32 %i.iy to i64                   ; 9 uses
  %.val4809 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jb = getelementptr inbounds nuw i8, ptr %.val4809, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %.0.copyload.i5315 = load i32, ptr %i.jc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5315) #13, !srcloc !14
  %.val4808 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jd = getelementptr inbounds nuw i8, ptr %.val4808, i64 %i.ja
  %.0.copyload.i5316 = load i32, ptr %i.jd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5316) #13, !srcloc !14
  %.not4456 = icmp eq i32 %.0.copyload.i5316, 0
  %.not4457 = icmp eq i32 %.0.copyload.i5315, 0
  %or.cond4589 = select i1 %.not4456, i1 %.not4457, i1 false
  br i1 %or.cond4589, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %.val4807 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.je = getelementptr inbounds nuw i8, ptr %.val4807, i64 %i.ja
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 20
  %.0.copyload.i5317 = load i32, ptr %i.jf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5317) #13, !srcloc !14
  %.val4952 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jg = getelementptr inbounds nuw i8, ptr %.val4952, i64 %i.ja
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 27
  %.0.copyload.i5318 = load i8, ptr %i.jh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5318) #13, !srcloc !31
  %i.ji = zext i8 %.0.copyload.i5318 to i32
  %.not4459 = icmp sgt i8 %.0.copyload.i5318, -1  ; 2 uses
  %i.jj = select i1 %.not4459, i32 %i.ji, i32 %.0.copyload.i5317
  %.not4460 = icmp eq i32 %i.jj, 23
  br i1 %.not4460, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.val4806 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jk = getelementptr inbounds nuw i8, ptr %.val4806, i64 %i.ja
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %.0.copyload.i5319 = load i32, ptr %i.jl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5319) #13, !srcloc !14
  %i.jm = add i32 %i.iy, 16
  %i.jn = select i1 %.not4459, i32 %i.jm, i32 %.0.copyload.i5319
  %i.jo = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.jn, i32 noundef 71264, i32 noundef 23) #13
  %.not4461 = icmp eq i32 %i.jo, 0
  br i1 %.not4461, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.val4805 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jp = getelementptr inbounds nuw i8, ptr %.val4805, i64 %i.ja
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  %.0.copyload.i5320 = load i32, ptr %i.jq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5320) #13, !srcloc !14
  %.val4804 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jr = getelementptr inbounds nuw i8, ptr %.val4804, i64 %i.ja
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 36
  %.0.copyload.i5321 = load i32, ptr %i.js, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5321) #13, !srcloc !14
  %.not4462 = icmp eq i32 %.0.copyload.i5321, 0
  %.not4463 = icmp eq i32 %.0.copyload.i5320, 0
  %or.cond4590 = select i1 %.not4462, i1 %.not4463, i1 false
  br i1 %or.cond4590, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %.val4803 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jt = getelementptr inbounds nuw i8, ptr %.val4803, i64 %i.ja
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  %.0.copyload.i5322 = load i32, ptr %i.ju, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5322) #13, !srcloc !14
  %.val4951 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.jv = getelementptr inbounds nuw i8, ptr %.val4951, i64 %i.ja
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 63
  %.0.copyload.i5323 = load i8, ptr %i.jw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5323) #13, !srcloc !31
  %i.jx = zext i8 %.0.copyload.i5323 to i32
  %.not4465 = icmp sgt i8 %.0.copyload.i5323, -1  ; 2 uses
  %i.jy = select i1 %.not4465, i32 %i.jx, i32 %.0.copyload.i5322
  %.not4466 = icmp eq i32 %i.jy, 23
  br i1 %.not4466, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jz = add i32 %i.iy, 52                       ; 2 uses
  %i.ka = zext i32 %i.jz to i64
  %.val4802 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kb = getelementptr inbounds nuw i8, ptr %.val4802, i64 %i.ka
  %.0.copyload.i5324 = load i32, ptr %i.kb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5324) #13, !srcloc !14
  %i.kc = select i1 %.not4465, i32 %i.jz, i32 %.0.copyload.i5324
  %i.kd = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.kc, i32 noundef 71264, i32 noundef 23) #13
  %.not4467 = icmp eq i32 %i.kd, 0
  br i1 %.not4467, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.ke = icmp ult i32 %.0.copyload.i5315, %.0.copyload.i5320
  br i1 %i.ke, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.kf = add i32 %i.iy, 36
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.ar, %bb.ao, %bb.aw
  %.44302 = phi i32 [ %i.iy, %bb.ao ], [ %i.kf, %bb.aw ], [ %i.iy, %bb.au ], [ %i.iy, %bb.ar ], [ %i.iy, %bb.av ] ; 3 uses
  %.34290 = phi i32 [ %i.iw, %bb.ao ], [ %i.iz, %bb.aw ], [ %i.iw, %bb.au ], [ %i.iw, %bb.ar ], [ %i.iw, %bb.av ]
  %i.kg = mul i32 %i.iu, 36
  %i.kh = add i32 %i.kg, %.04275                  ; 4 uses
  %i.ki = zext i32 %.44302 to i64                 ; 5 uses
  %.val4801 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kj = getelementptr inbounds nuw i8, ptr %.val4801, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %.0.copyload.i5325 = load i32, ptr %i.kk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5325) #13, !srcloc !14
  %.val4800 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.kl = getelementptr inbounds nuw i8, ptr %.val4800, i64 %i.ki
  %.0.copyload.i5326 = load i32, ptr %i.kl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5326) #13, !srcloc !14
  %.not4468 = icmp eq i32 %.0.copyload.i5326, 0
  %.not4469 = icmp eq i32 %.0.copyload.i5325, 0
  %or.cond4591 = select i1 %.not4468, i1 %.not4469, i1 false
  br i1 %or.cond4591, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %.val4799 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.km = getelementptr inbounds nuw i8, ptr %.val4799, i64 %i.ki
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 20
  %.0.copyload.i5327 = load i32, ptr %i.kn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5327) #13, !srcloc !14
  %.val4950 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %.val4950, i64 %i.ki
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 27
  %.0.copyload.i5328 = load i8, ptr %i.kp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5328) #13, !srcloc !31
  %i.kq = zext i8 %.0.copyload.i5328 to i32
  %.not4471 = icmp sgt i8 %.0.copyload.i5328, -1  ; 2 uses
  %i.kr = select i1 %.not4471, i32 %i.kq, i32 %.0.copyload.i5327
  %.not4472 = icmp eq i32 %i.kr, 23
  br i1 %.not4472, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.val4798 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ks = getelementptr inbounds nuw i8, ptr %.val4798, i64 %i.ki
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %.0.copyload.i5329 = load i32, ptr %i.kt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5329) #13, !srcloc !14
  %i.ku = add i32 %.44302, 16
  %i.kv = select i1 %.not4471, i32 %i.ku, i32 %.0.copyload.i5329
  %i.kw = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.kv, i32 noundef 71264, i32 noundef 23) #13
  %.not4473 = icmp eq i32 %i.kw, 0
  br i1 %.not4473, label %._crit_edge, label %bb.ba

._crit_edge:                                      ; preds = %bb.az
  %.pre5926 = zext i32 %i.kh to i64
  br label %bb.be

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.kx = zext i32 %i.kh to i64                   ; 7 uses
  %.val4797 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ky = getelementptr inbounds nuw i8, ptr %.val4797, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %.0.copyload.i5330 = load i32, ptr %i.kz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5330) #13, !srcloc !14
  %.val4796 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.la = getelementptr inbounds nuw i8, ptr %.val4796, i64 %i.kx
  %.0.copyload.i5331 = load i32, ptr %i.la, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5331) #13, !srcloc !14
  %.not4474 = icmp eq i32 %.0.copyload.i5331, 0
  %.not4475 = icmp eq i32 %.0.copyload.i5330, 0
  %or.cond4592 = select i1 %.not4474, i1 %.not4475, i1 false
  br i1 %or.cond4592, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %.val4795 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.lb = getelementptr inbounds nuw i8, ptr %.val4795, i64 %i.kx
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 20
  %.0.copyload.i5332 = load i32, ptr %i.lc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5332) #13, !srcloc !14
  %.val4949 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ld = getelementptr inbounds nuw i8, ptr %.val4949, i64 %i.kx
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 27
  %.0.copyload.i5333 = load i8, ptr %i.le, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5333) #13, !srcloc !31
  %i.lf = zext i8 %.0.copyload.i5333 to i32
  %.not4477 = icmp sgt i8 %.0.copyload.i5333, -1  ; 2 uses
  %i.lg = select i1 %.not4477, i32 %i.lf, i32 %.0.copyload.i5332
  %.not4478 = icmp eq i32 %i.lg, 23
  br i1 %.not4478, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.val4794 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.lh = getelementptr inbounds nuw i8, ptr %.val4794, i64 %i.kx
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %.0.copyload.i5334 = load i32, ptr %i.li, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5334) #13, !srcloc !14
  %i.lj = add i32 %i.kh, 16
  %i.lk = select i1 %.not4477, i32 %i.lj, i32 %.0.copyload.i5334
  %i.ll = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.lk, i32 noundef 71264, i32 noundef 23) #13
end_hunk_3
begin_hunk_4_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3AdisableBuffering0x280x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3ASourceErrorManager0x3A0x3ABufferedMessage0x2A0x3E0x3A0x3Adifference_type0x29:bb.a
  %.0.copyload.i5353 = load i32, ptr %i.oa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5353) #13, !srcloc !14
  %i.ob = add i32 %i.nn, 16
  %i.oc = select i1 %.not4485, i32 %i.ob, i32 %.0.copyload.i5353
  %i.od = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.oc, i32 noundef 71264, i32 noundef 23) #13
  %.not4487 = icmp eq i32 %i.od, 0
  br i1 %.not4487, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.val4784 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.oe = getelementptr inbounds nuw i8, ptr %.val4784, i64 %i.np
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  %.0.copyload.i5354 = load i32, ptr %i.of, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5354) #13, !srcloc !14
  %.val4783 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.og = getelementptr inbounds nuw i8, ptr %.val4783, i64 %i.np
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 36
  %.0.copyload.i5355 = load i32, ptr %i.oh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5355) #13, !srcloc !14
  %.not4488 = icmp eq i32 %.0.copyload.i5355, 0
  %.not4489 = icmp eq i32 %.0.copyload.i5354, 0
  %or.cond4594 = select i1 %.not4488, i1 %.not4489, i1 false
  br i1 %or.cond4594, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %.val4782 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.oi = getelementptr inbounds nuw i8, ptr %.val4782, i64 %i.np
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 56
  %.0.copyload.i5356 = load i32, ptr %i.oj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5356) #13, !srcloc !14
  %.val4947 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ok = getelementptr inbounds nuw i8, ptr %.val4947, i64 %i.np
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 63
  %.0.copyload.i5357 = load i8, ptr %i.ol, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5357) #13, !srcloc !31
  %i.om = zext i8 %.0.copyload.i5357 to i32
  %.not4491 = icmp sgt i8 %.0.copyload.i5357, -1  ; 2 uses
  %i.on = select i1 %.not4491, i32 %i.om, i32 %.0.copyload.i5356
  %.not4492 = icmp eq i32 %i.on, 23
  br i1 %.not4492, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.oo = add i32 %i.nn, 52                       ; 2 uses
  %i.op = zext i32 %i.oo to i64
  %.val4781 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.oq = getelementptr inbounds nuw i8, ptr %.val4781, i64 %i.op
  %.0.copyload.i5358 = load i32, ptr %i.oq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5358) #13, !srcloc !14
  %i.or = select i1 %.not4491, i32 %i.oo, i32 %.0.copyload.i5358
  %i.os = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.or, i32 noundef 71264, i32 noundef 23) #13
  %.not4493 = icmp eq i32 %i.os, 0
  br i1 %.not4493, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.ot = icmp ult i32 %.0.copyload.i5349, %.0.copyload.i5354
  br i1 %i.ot, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ou = add i32 %i.nn, 36
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bn, %bb.bk, %bb.bh, %bb.bp
  %.64304 = phi i32 [ %i.nn, %bb.bh ], [ %i.ou, %bb.bp ], [ %i.nn, %bb.bn ], [ %i.nn, %bb.bk ], [ %i.nn, %bb.bo ] ; 3 uses
  %.54292 = phi i32 [ %i.nl, %bb.bh ], [ %i.no, %bb.bp ], [ %i.nl, %bb.bn ], [ %i.nl, %bb.bk ], [ %i.nl, %bb.bo ]
  %i.ov = zext i32 %.64304 to i64                 ; 5 uses
  %.val4780 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ow = getelementptr inbounds nuw i8, ptr %.val4780, i64 %i.ov
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %.0.copyload.i5359 = load i32, ptr %i.ox, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5359) #13, !srcloc !14
  %.val4779 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.oy = getelementptr inbounds nuw i8, ptr %.val4779, i64 %i.ov
  %.0.copyload.i5360 = load i32, ptr %i.oy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5360) #13, !srcloc !14
  %.not4494 = icmp eq i32 %.0.copyload.i5360, 0
  %.not4495 = icmp eq i32 %.0.copyload.i5359, 0
  %or.cond4595 = select i1 %.not4494, i1 %.not4495, i1 false
  br i1 %or.cond4595, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %.val4778 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.oz = getelementptr inbounds nuw i8, ptr %.val4778, i64 %i.ov
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 20
  %.0.copyload.i5361 = load i32, ptr %i.pa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5361) #13, !srcloc !14
  %.val4946 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.pb = getelementptr inbounds nuw i8, ptr %.val4946, i64 %i.ov
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 27
  %.0.copyload.i5362 = load i8, ptr %i.pc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5362) #13, !srcloc !31
  %i.pd = zext i8 %.0.copyload.i5362 to i32
  %.not4497 = icmp sgt i8 %.0.copyload.i5362, -1  ; 2 uses
  %i.pe = select i1 %.not4497, i32 %i.pd, i32 %.0.copyload.i5361
  %.not4498 = icmp eq i32 %i.pe, 23
  br i1 %.not4498, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %.val4777 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.pf = getelementptr inbounds nuw i8, ptr %.val4777, i64 %i.ov
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %.0.copyload.i5363 = load i32, ptr %i.pg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5363) #13, !srcloc !14
  %i.ph = add i32 %.64304, 16
  %i.pi = select i1 %.not4497, i32 %i.ph, i32 %.0.copyload.i5363
  %i.pj = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.pi, i32 noundef 71264, i32 noundef 23) #13
  %.not4499 = icmp eq i32 %i.pj, 0
  br i1 %.not4499, label %.backedge5661.backedge, label %bb.bt

.backedge5661.backedge:                           ; preds = %bb.bs, %bb.bv, %bb.bw
  br label %.backedge5661

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  br i1 %.not4480, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %.val4776 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.pk = getelementptr inbounds nuw i8, ptr %.val4776, i64 %i.e
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 44
  %.0.copyload.i5364 = load i32, ptr %i.pl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5364) #13, !srcloc !14
  %.val4945 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.pm = getelementptr inbounds nuw i8, ptr %.val4945, i64 %i.e
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 51
  %.0.copyload.i5365 = load i8, ptr %i.pn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5365) #13, !srcloc !31
  %i.po = zext i8 %.0.copyload.i5365 to i32
  %.not4501 = icmp sgt i8 %.0.copyload.i5365, -1  ; 2 uses
  %i.pp = select i1 %.not4501, i32 %i.po, i32 %.0.copyload.i5364
  %.not4502 = icmp eq i32 %i.pp, 23
  br i1 %.not4502, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %.val4775 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.pq = getelementptr inbounds nuw i8, ptr %.val4775, i64 %i.e
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 40
  %.0.copyload.i5366 = load i32, ptr %i.pr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5366) #13, !srcloc !14
  %i.ps = select i1 %.not4501, i32 %i.in, i32 %.0.copyload.i5366
  %i.pt = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.ps, i32 noundef 71264, i32 noundef 23) #13
  %.not4503 = icmp eq i32 %i.pt, 0
  br i1 %.not4503, label %bb.bx, label %.backedge5661.backedge

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %.not4504 = icmp ugt i32 %.0.copyload.i5340, %.0.copyload.i5359
  br i1 %.not4504, label %bb.bx, label %.backedge5661.backedge

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bg
  %.val5077 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.pu = getelementptr inbounds nuw i8, ptr %.val5077, i64 %i.g
  %.0.copyload.i5367 = load i64, ptr %i.pu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5367) #13, !srcloc !33
  %.val5198 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.pv = getelementptr inbounds nuw i8, ptr %.val5198, i64 %i.mh
  store i64 %.0.copyload.i5367, ptr %i.pv, align 1
  %.val5076 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.pw = getelementptr inbounds nuw i8, ptr %.val5076, i64 %i.f
  %.0.copyload.i5368 = load i64, ptr %i.pw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5368) #13, !srcloc !33
  %.val5197 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.px = getelementptr inbounds nuw i8, ptr %.val5197, i64 %i.ml
  store i64 %.0.copyload.i5368, ptr %i.px, align 1
  %.val5244 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.py = getelementptr inbounds nuw i8, ptr %.val5244, i64 %i.nc
  %.0.copyload.i5369 = load i8, ptr %i.py, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5369) #13, !srcloc !36
  %i.pz = icmp slt i8 %.0.copyload.i5369, 0
  br i1 %i.pz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %.val4774 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qa = getelementptr inbounds nuw i8, ptr %.val4774, i64 %i.mu
  %.0.copyload.i5370 = load i32, ptr %i.qa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5370) #13, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i5370) #13
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.val5075 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qb = getelementptr inbounds nuw i8, ptr %.val5075, i64 %i.iq
  %.0.copyload.i5371 = load i64, ptr %i.qb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5371) #13, !srcloc !33
  %.val5196 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qc = getelementptr inbounds nuw i8, ptr %.val5196, i64 %i.mu
  store i64 %.0.copyload.i5371, ptr %i.qc, align 1
  %.val4773 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qd = getelementptr inbounds nuw i8, ptr %.val4773, i64 %i.ir
  %.0.copyload.i5372 = load i32, ptr %i.qd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5372) #13, !srcloc !14
  %.val4898 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qe = getelementptr inbounds nuw i8, ptr %.val4898, i64 %i.my
  store i32 %.0.copyload.i5372, ptr %i.qe, align 1
  %.val5074 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qf = getelementptr inbounds nuw i8, ptr %.val5074, i64 %i.is
  %.0.copyload.i5373 = load i64, ptr %i.qf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5373) #13, !srcloc !33
  %.val5195 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qg = getelementptr inbounds nuw i8, ptr %.val5195, i64 %i.nf
  store i64 %.0.copyload.i5373, ptr %i.qg, align 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bd, %bb.bc, %5, %bb.bz
  %.not4505 = icmp eq i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not4505, label %bb.cb, label %5

bb.cb:                                            ; preds = %bb.ca
  %i.qh = udiv i32 %i.x, 36
  %i.qi = zext i32 %.04275 to i64                 ; 8 uses
  %i.qj = add nuw nsw i64 %i.e, 16                ; 3 uses
  %i.qk = add nuw nsw i64 %i.qi, 16               ; 2 uses
  %i.ql = add nuw nsw i64 %i.e, 3                 ; 3 uses
  %invariant.op = sub i32 36, %.04275
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ec, %bb.cb
  %.74305 = phi i32 [ %i.qh, %bb.cb ], [ %i.aeo, %bb.ec ] ; 4 uses
  %.14297 = phi i32 [ %.04296, %bb.cb ], [ %i.tw, %bb.ec ] ; 2 uses
  %.val5073 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qm = getelementptr inbounds nuw i8, ptr %.val5073, i64 %i.qi
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %.0.copyload.i5374 = load i64, ptr %i.qn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5374) #13, !srcloc !33
  %.val5194 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qo = getelementptr inbounds nuw i8, ptr %.val5194, i64 %i.qj
  store i64 %.0.copyload.i5374, ptr %i.qo, align 1
  %.val5072 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qp = getelementptr inbounds nuw i8, ptr %.val5072, i64 %i.qi
  %.0.copyload.i5375 = load i64, ptr %i.qp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5375) #13, !srcloc !33
  %.val5193 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qq = getelementptr inbounds nuw i8, ptr %.val5193, i64 %i.i
  store i64 %.0.copyload.i5375, ptr %i.qq, align 1
  %.val4772 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qr = getelementptr inbounds nuw i8, ptr %.val4772, i64 %i.qk
  %.0.copyload.i5376 = load i32, ptr %i.qr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5376) #13, !srcloc !14
  %.val4771 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qs = getelementptr inbounds nuw i8, ptr %.val4771, i64 %i.qi
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 23
  %.0.copyload.i5377 = load i32, ptr %i.qt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5377) #13, !srcloc !14
  %.val4897 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qu = getelementptr inbounds nuw i8, ptr %.val4897, i64 %i.ql
  store i32 %.0.copyload.i5377, ptr %i.qu, align 1
  %.val4770 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qv = getelementptr inbounds nuw i8, ptr %.val4770, i64 %i.qi
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 20
  %.0.copyload.i5378 = load i32, ptr %i.qw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5378) #13, !srcloc !14
  %.val4896 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qx = getelementptr inbounds nuw i8, ptr %.val4896, i64 %i.e
  store i32 %.0.copyload.i5378, ptr %i.qx, align 1
  %.val4944 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.qy = getelementptr inbounds nuw i8, ptr %.val4944, i64 %i.qi
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 27
  %.0.copyload.i5379 = load i8, ptr %i.qz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5379) #13, !srcloc !31
  %.val5192 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ra = getelementptr inbounds nuw i8, ptr %.val5192, i64 %i.qk
  store i64 0, ptr %i.ra, align 1
  %.val4895 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.rb = getelementptr inbounds nuw i8, ptr %.val4895, i64 %i.qi
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 24
  store i32 0, ptr %i.rc, align 1
  %i.rd = add nsw i32 %.74305, -2
  %i.re = lshr i32 %i.rd, 1
  %.val5071 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.rf = getelementptr inbounds nuw i8, ptr %.val5071, i64 %i.qi
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 28
  %.0.copyload.i5380 = load i64, ptr %i.rg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5380) #13, !srcloc !33
  br label %bb.cd

bb.cd:                                            ; preds = %bb.co, %bb.cc
  %.14281 = phi i32 [ %.04275, %bb.cc ], [ %.84306, %bb.co ] ; 2 uses
  %.4 = phi i32 [ 0, %bb.cc ], [ %.5, %bb.co ]    ; 2 uses
  %i.rh = shl i32 %.4, 1                          ; 2 uses
  %i.ri = or disjoint i32 %i.rh, 1                ; 4 uses
  %i.rj = mul i32 %.4, 36
  %i.rk = add i32 %i.rj, %.14281                  ; 4 uses
  %i.rl = add i32 %i.rk, 36                       ; 5 uses
  %i.rm = add i32 %i.rh, 2                        ; 2 uses
  %.not4506 = icmp sgt i32 %.74305, %i.rm
  br i1 %.not4506, label %bb.ce, label %bb.cm

bb.ce:                                            ; preds = %bb.cd
  %i.rn = zext i32 %i.rl to i64                   ; 9 uses
  %.val4769 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ro = getelementptr inbounds nuw i8, ptr %.val4769, i64 %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %.0.copyload.i5381 = load i32, ptr %i.rp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5381) #13, !srcloc !14
  %.val4768 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.rq = getelementptr inbounds nuw i8, ptr %.val4768, i64 %i.rn
  %.0.copyload.i5382 = load i32, ptr %i.rq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5382) #13, !srcloc !14
  %.not4507 = icmp eq i32 %.0.copyload.i5382, 0
  %.not4508 = icmp eq i32 %.0.copyload.i5381, 0
  %or.cond4596 = select i1 %.not4507, i1 %.not4508, i1 false
  br i1 %or.cond4596, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %.val4767 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.rr = getelementptr inbounds nuw i8, ptr %.val4767, i64 %i.rn
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 20
  %.0.copyload.i5383 = load i32, ptr %i.rs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5383) #13, !srcloc !14
  %.val4943 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.rt = getelementptr inbounds nuw i8, ptr %.val4943, i64 %i.rn
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 27
  %.0.copyload.i5384 = load i8, ptr %i.ru, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5384) #13, !srcloc !31
  %i.rv = zext i8 %.0.copyload.i5384 to i32
  %.not4510 = icmp sgt i8 %.0.copyload.i5384, -1  ; 2 uses
  %i.rw = select i1 %.not4510, i32 %i.rv, i32 %.0.copyload.i5383
  %.not4511 = icmp eq i32 %i.rw, 23
  br i1 %.not4511, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %.val4766 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.rx = getelementptr inbounds nuw i8, ptr %.val4766, i64 %i.rn
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %.0.copyload.i5385 = load i32, ptr %i.ry, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5385) #13, !srcloc !14
  %i.rz = add i32 %i.rk, 52
  %i.sa = select i1 %.not4510, i32 %i.rz, i32 %.0.copyload.i5385
  %i.sb = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.sa, i32 noundef 71264, i32 noundef 23) #13
  %.not4512 = icmp eq i32 %i.sb, 0
  br i1 %.not4512, label %bb.cm, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %.val4765 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.sc = getelementptr inbounds nuw i8, ptr %.val4765, i64 %i.rn
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 40
  %.0.copyload.i5386 = load i32, ptr %i.sd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5386) #13, !srcloc !14
  %.val4764 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.se = getelementptr inbounds nuw i8, ptr %.val4764, i64 %i.rn
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 36
  %.0.copyload.i5387 = load i32, ptr %i.sf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5387) #13, !srcloc !14
  %.not4513 = icmp eq i32 %.0.copyload.i5387, 0
  %.not4514 = icmp eq i32 %.0.copyload.i5386, 0
  %or.cond4597 = select i1 %.not4513, i1 %.not4514, i1 false
  br i1 %or.cond4597, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %.val4763 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.sg = getelementptr inbounds nuw i8, ptr %.val4763, i64 %i.rn
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 56
  %.0.copyload.i5388 = load i32, ptr %i.sh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5388) #13, !srcloc !14
  %.val4942 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.si = getelementptr inbounds nuw i8, ptr %.val4942, i64 %i.rn
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 63
  %.0.copyload.i5389 = load i8, ptr %i.sj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5389) #13, !srcloc !31
  %i.sk = zext i8 %.0.copyload.i5389 to i32
  %.not4516 = icmp sgt i8 %.0.copyload.i5389, -1  ; 2 uses
  %i.sl = select i1 %.not4516, i32 %i.sk, i32 %.0.copyload.i5388
  %.not4517 = icmp eq i32 %i.sl, 23
  br i1 %.not4517, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.sm = add i32 %i.rk, 88                       ; 2 uses
  %i.sn = zext i32 %i.sm to i64
  %.val4762 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.so = getelementptr inbounds nuw i8, ptr %.val4762, i64 %i.sn
  %.0.copyload.i5390 = load i32, ptr %i.so, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5390) #13, !srcloc !14
  %i.sp = select i1 %.not4516, i32 %i.sm, i32 %.0.copyload.i5390
  %i.sq = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.sp, i32 noundef 71264, i32 noundef 23) #13
  %.not4518 = icmp eq i32 %i.sq, 0
  br i1 %.not4518, label %bb.cl, label %bb.cm

bb.ck:                                            ; preds = %bb.ci, %bb.ch
  %i.sr = icmp ugt i32 %.0.copyload.i5386, %.0.copyload.i5381
  br i1 %i.sr, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.ss = add i32 %i.rk, 72
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cj, %bb.cg, %bb.cd, %bb.cl
  %.84306 = phi i32 [ %i.rl, %bb.cd ], [ %i.ss, %bb.cl ], [ %i.rl, %bb.cj ], [ %i.rl, %bb.cg ], [ %i.rl, %bb.ck ] ; 8 uses
  %.5 = phi i32 [ %i.ri, %bb.cd ], [ %i.rm, %bb.cl ], [ %i.ri, %bb.cj ], [ %i.ri, %bb.cg ], [ %i.ri, %bb.ck ] ; 2 uses
  %i.st = zext i32 %.84306 to i64                 ; 13 uses
  %.val5070 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.su = getelementptr inbounds nuw i8, ptr %.val5070, i64 %i.st
  %.0.copyload.i5391 = load i64, ptr %i.su, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5391) #13, !srcloc !33
  %i.sv = zext i32 %.14281 to i64                 ; 7 uses
  %.val5191 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.sw = getelementptr inbounds nuw i8, ptr %.val5191, i64 %i.sv
  store i64 %.0.copyload.i5391, ptr %i.sw, align 1
  %i.sx = add nuw nsw i64 %i.st, 8                ; 4 uses
  %.val5069 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.sy = getelementptr inbounds nuw i8, ptr %.val5069, i64 %i.sx
  %.0.copyload.i5392 = load i64, ptr %i.sy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5392) #13, !srcloc !33
  %.val5190 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.sz = getelementptr inbounds nuw i8, ptr %.val5190, i64 %i.sv
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  store i64 %.0.copyload.i5392, ptr %i.ta, align 1
end_hunk_4
