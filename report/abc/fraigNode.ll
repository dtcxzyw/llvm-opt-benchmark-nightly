Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fraigNode?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Fraig_NodeCreatePi:bb.a
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !45
  %i.cf = call ptr @Fraig_HashTableLookupF(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #7 ; 0 uses
  ret ptr %i.c
}

declare i32 @Aig_ManRandom(i32 noundef) local_unnamed_addr #2

declare i32 @Fraig_BitStringCountOnes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Fraig_HashTableLookupF(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef ptr @Fraig_NodeCreate(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = tail call ptr @Fraig_MemFixedEntryFetch(ptr noundef %i.b) #7 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.c, i8 0, i64 160, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %1, ptr %i.d, align 8, !tbaa !46
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = and i64 %i.e, -2
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !31
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %2, ptr %i.k, align 8, !tbaa !47
  %i.l = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.m = and i64 %i.l, -2
  %i.n = inttoptr i64 %i.m to ptr                 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !31
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26
  store i32 %i.u, ptr %i.c, align 8, !tbaa !28
  tail call void @Fraig_NodeVecPush(ptr noundef %i.s, ptr noundef nonnull %i.c) #7
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 -1, ptr %i.v, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !30
  %i.aa = tail call noundef i32 @llvm.smax.i32(i32 %i.x, i32 %i.z)
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !30
  %i.ad = and i64 %i.e, 1
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = and i32 %i.af, 1
  %i.ah = xor i32 %i.ag, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = and i32 %i.aj, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.al = phi i32 [ %i.ah, %bb.b ], [ %i.ak, %bb.c ]
  %i.am = and i64 %i.l, 1
  %.not51 = icmp eq i64 %i.am, 0
  br i1 %.not51, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, 1
  %i.aq = xor i32 %i.ap, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = and i32 %i.as, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = phi i32 [ %i.aq, %bb.e ], [ %i.at, %bb.f ]
  %i.av = and i32 %i.au, %i.al
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = and i32 %i.ax, -2
  %i.az = or i32 %i.ay, %i.av                     ; 2 uses
  store i32 %i.az, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = or i32 %i.bd, %i.bb
  %i.bf = and i32 %i.be, 512
  %i.bg = and i32 %i.az, -513
  %i.bh = or disjoint i32 %i.bf, %i.bg
  store i32 %i.bh, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.bi = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #7
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %Abc_Clock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load i64, ptr %4, align 8, !tbaa !38
  %.neg56 = mul i64 %i.bk, -1000000
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !39
  %.neg = sdiv i64 %i.bm, -1000
  %.neg57 = add i64 %.neg, %.neg56
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.g, %bb.h
  %.0.i.neg = phi i64 [ %.neg57, %bb.h ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32
  %i.bp = call ptr @Fraig_MemFixedEntryFetch(ptr noundef %i.bo) #7 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !34 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 0, ptr %i.bw, align 8, !tbaa !40
  call void @Fraig_NodeSimulate(ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef %i.bs, i32 noundef 1)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  store i32 0, ptr %i.bx, align 4, !tbaa !43
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !44
  call void @Fraig_NodeSimulate(ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef %i.bz, i32 noundef 0)
  %i.ca = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.cb = load i32, ptr %i.br, align 8, !tbaa !34
  %i.cc = call i32 @Fraig_BitStringCountOnes(ptr noundef %i.ca, i32 noundef %i.cb) #7
  %i.cd = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.ce = shl i32 %i.cc, 12                       ; 2 uses
  %i.cf = and i32 %i.cd, 4095                     ; 2 uses
  %i.cg = or disjoint i32 %i.cf, %i.ce
  store i32 %i.cg, ptr %i.aw, align 8
  %i.ch = and i32 %i.cd, 1
  %.not53 = icmp eq i32 %i.ch, 0
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %Abc_Clock.exit
  %i.ci = load i32, ptr %i.br, align 8, !tbaa !34
  %i.cj = shl i32 %i.ci, 17
  %i.ck = sub i32 %i.cj, %i.ce
  %i.cl = or disjoint i32 %i.ck, %i.cf
  store i32 %i.cl, ptr %i.aw, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %Abc_Clock.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.cm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #7
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %Abc_Clock.exit55, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.co = load i64, ptr %3, align 8, !tbaa !38
  %i.cp = mul nsw i64 %i.co, 1000000
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !39
  %i.cs = sdiv i64 %i.cr, 1000
  %i.ct = add nsw i64 %i.cs, %i.cp
  br label %Abc_Clock.exit55

Abc_Clock.exit55:                                 ; preds = %bb.j, %bb.k
  %.0.i54 = phi i64 [ %i.ct, %bb.k ], [ -1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %i.cu = add i64 %.0.i54, %.0.i.neg
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !45
  %i.cx = add nsw i64 %i.cu, %i.cw
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !45
  call void @Fraig_NodeAddFaninFanout(ptr noundef nonnull %i.g, ptr noundef nonnull %i.c) #7
  call void @Fraig_NodeAddFaninFanout(ptr noundef nonnull %i.n, ptr noundef nonnull %i.c) #7
  ret ptr %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Fraig_NodeSimulate(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %3, 0                       ; 3 uses
  %.in.v = select i1 %.not, i64 112, i64 104
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.a = load ptr, ptr %.in, align 8, !tbaa !67   ; 33 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = and i64 %i.e, -2
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, -2
  %i.l = inttoptr i64 %i.k to ptr
  %. = select i1 %.not, i64 112, i64 104          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %.
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !67   ; 33 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 8 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !67   ; 33 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 1                          ; 3 uses
  %i.v = and i64 %i.e, 1
  %.not157 = icmp eq i64 %i.v, 0
  br i1 %.not157, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = and i64 %i.e, -2
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, 1
  %i.ab = xor i32 %i.aa, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.af = phi i32 [ %i.ab, %bb.b ], [ %i.ae, %bb.c ]
  %i.ag = ptrtoint ptr %i.i to i64                ; 2 uses
  %i.ah = and i64 %i.ag, 1
  %.not159 = icmp eq i64 %i.ah, 0
  br i1 %.not159, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = and i64 %i.ag, -2
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = and i32 %i.al, 1
  %i.an = xor i32 %i.am, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = and i32 %i.ap, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = phi i32 [ %i.an, %bb.e ], [ %i.aq, %bb.f ]
  %i.as = icmp ne i32 %i.af, 0                    ; 2 uses
  %i.at = icmp ne i32 %i.ar, 0                    ; 3 uses
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not164 = icmp eq i32 %i.u, 0
  %i.au = icmp slt i32 %1, %2                     ; 2 uses
  br i1 %.not164, label %.preheader, label %.preheader167

.preheader167:                                    ; preds = %bb.h
  br i1 %i.au, label %.lr.ph205.preheader, label %.loopexit

.lr.ph205.preheader:                              ; preds = %.preheader167
  %i.av = sext i32 %1 to i64                      ; 5 uses
  %wide.trip.count254 = sext i32 %2 to i64        ; 4 uses
  %i.aw = sub nsw i64 %wide.trip.count254, %i.av  ; 3 uses
  %min.iters.check478 = icmp ult i64 %i.aw, 16
  br i1 %min.iters.check478, label %.lr.ph205.preheader538, label %vector.memcheck479

vector.memcheck479:                               ; preds = %.lr.ph205.preheader
  %i.ax = sub i64 %i.p, %i.b
  %diff.check480 = icmp ugt i64 %i.ax, -32
  %i.ay = sub i64 %i.r, %i.b
  %diff.check481 = icmp ugt i64 %i.ay, -32
  %conflict.rdx482 = or i1 %diff.check480, %diff.check481
  %i.az = sub i64 add (i64 ptrtoaddr (ptr @s_FraigPrimes to i64), i64 -1), %i.b
  %diff.check483 = icmp ult i64 %i.az, 31
  %conflict.rdx484 = or i1 %conflict.rdx482, %diff.check483
  br i1 %conflict.rdx484, label %.lr.ph205.preheader538, label %vector.ph485

vector.ph485:                                     ; preds = %vector.memcheck479
  %n.vec486 = and i64 %i.aw, -8                   ; 3 uses
  %i.ba = add nsw i64 %n.vec486, %i.av
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph485
  %index488 = phi i64 [ 0, %vector.ph485 ], [ %index.next497, %vector.body487 ] ; 2 uses
  %vec.phi489 = phi <4 x i32> [ zeroinitializer, %vector.ph485 ], [ %i.bo, %vector.body487 ]
  %vec.phi490 = phi <4 x i32> [ zeroinitializer, %vector.ph485 ], [ %i.bp, %vector.body487 ]
  %i.bb = add i64 %index488, %i.av                ; 4 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load491 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !41
  %wide.load492 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !41
  %i.be = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bb ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load493 = load <4 x i32>, ptr %i.be, align 4, !tbaa !41
  %wide.load494 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !41
  %i.bg = or <4 x i32> %wide.load493, %wide.load491 ; 2 uses
  %i.bh = or <4 x i32> %wide.load494, %wide.load492 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <4 x i32> %i.bg, ptr %i.bi, align 4, !tbaa !41
  store <4 x i32> %i.bh, ptr %i.bj, align 4, !tbaa !41
  %i.bk = getelementptr inbounds [4 x i8], ptr @s_FraigPrimes, i64 %i.bb ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load495 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !41
  %wide.load496 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !41
  %i.bm = mul <4 x i32> %wide.load495, %i.bg
  %i.bn = mul <4 x i32> %wide.load496, %i.bh
  %i.bo = xor <4 x i32> %i.bm, %vec.phi489        ; 2 uses
  %i.bp = xor <4 x i32> %i.bn, %vec.phi490        ; 2 uses
  %index.next497 = add nuw i64 %index488, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next497, %n.vec486
  br i1 %i.bq, label %middle.block498, label %vector.body487, !llvm.loop !51

middle.block498:                                  ; preds = %vector.body487
  %bin.rdx499 = xor <4 x i32> %i.bp, %i.bo
  %i.br = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx499) ; 2 uses
  %cmp.n500 = icmp eq i64 %i.aw, %n.vec486
  br i1 %cmp.n500, label %.loopexit, label %.lr.ph205.preheader538

.lr.ph205.preheader538:                           ; preds = %vector.memcheck479, %.lr.ph205.preheader, %middle.block498
  %indvars.iv251.ph = phi i64 [ %i.av, %vector.memcheck479 ], [ %i.av, %.lr.ph205.preheader ], [ %i.ba, %middle.block498 ] ; 8 uses
  %.0147203.ph = phi i32 [ 0, %vector.memcheck479 ], [ 0, %.lr.ph205.preheader ], [ %i.br, %middle.block498 ] ; 2 uses
  %i.bs = sub nsw i64 %wide.trip.count254, %indvars.iv251.ph
  %xtraiter583 = and i64 %i.bs, 1
  %lcmp.mod584.not = icmp eq i64 %xtraiter583, 0
  br i1 %lcmp.mod584.not, label %.lr.ph205.prol.loopexit, label %.lr.ph205.prol

.lr.ph205.prol:                                   ; preds = %.lr.ph205.preheader538
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv251.ph
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !41
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv251.ph
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !41
  %i.bx = or i32 %i.bw, %i.bu                     ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv251.ph
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !41
  %i.bz = getelementptr inbounds [4 x i8], ptr @s_FraigPrimes, i64 %indvars.iv251.ph
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !41
  %i.cb = mul i32 %i.ca, %i.bx
  %i.cc = xor i32 %i.cb, %.0147203.ph             ; 2 uses
  %indvars.iv.next252.prol = add nsw i64 %indvars.iv251.ph, 1
  br label %.lr.ph205.prol.loopexit

.lr.ph205.prol.loopexit:                          ; preds = %.lr.ph205.prol, %.lr.ph205.preheader538
  %.lcssa540.unr = phi i32 [ poison, %.lr.ph205.preheader538 ], [ %i.cc, %.lr.ph205.prol ]
  %indvars.iv251.unr = phi i64 [ %indvars.iv251.ph, %.lr.ph205.preheader538 ], [ %indvars.iv.next252.prol, %.lr.ph205.prol ]
  %.0147203.unr = phi i32 [ %.0147203.ph, %.lr.ph205.preheader538 ], [ %i.cc, %.lr.ph205.prol ]
  %i.cd = add nsw i64 %wide.trip.count254, -1
  %i.ce = icmp eq i64 %indvars.iv251.ph, %i.cd
  br i1 %i.ce, label %.loopexit, label %.lr.ph205

.preheader:                                       ; preds = %bb.h
  br i1 %i.au, label %.lr.ph209.preheader, label %.loopexit

.lr.ph209.preheader:                              ; preds = %.preheader
  %i.cf = sext i32 %1 to i64                      ; 5 uses
  %wide.trip.count259 = sext i32 %2 to i64        ; 4 uses
  %i.cg = sub nsw i64 %wide.trip.count259, %i.cf  ; 3 uses
  %min.iters.check510 = icmp ult i64 %i.cg, 12
  br i1 %min.iters.check510, label %.lr.ph209.preheader535, label %vector.memcheck511

vector.memcheck511:                               ; preds = %.lr.ph209.preheader
  %i.ch = sub i64 %i.p, %i.b
  %diff.check512 = icmp ugt i64 %i.ch, -32
  %i.ci = sub i64 %i.r, %i.b
  %diff.check513 = icmp ugt i64 %i.ci, -32
  %conflict.rdx514 = or i1 %diff.check512, %diff.check513
  %i.cj = sub i64 add (i64 ptrtoaddr (ptr @s_FraigPrimes to i64), i64 -1), %i.b
  %diff.check515 = icmp ult i64 %i.cj, 31
  %conflict.rdx516 = or i1 %conflict.rdx514, %diff.check515
  br i1 %conflict.rdx516, label %.lr.ph209.preheader535, label %vector.ph517

vector.ph517:                                     ; preds = %vector.memcheck511
  %n.vec518 = and i64 %i.cg, -8                   ; 3 uses
  %i.ck = add nsw i64 %n.vec518, %i.cf
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph517
  %index520 = phi i64 [ 0, %vector.ph517 ], [ %index.next529, %vector.body519 ] ; 2 uses
  %vec.phi521 = phi <4 x i32> [ zeroinitializer, %vector.ph517 ], [ %i.da, %vector.body519 ]
  %vec.phi522 = phi <4 x i32> [ zeroinitializer, %vector.ph517 ], [ %i.db, %vector.body519 ]
  %i.cl = add i64 %index520, %i.cf                ; 4 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load523 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !41
  %wide.load524 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !41
  %i.co = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.cl ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load525 = load <4 x i32>, ptr %i.co, align 4, !tbaa !41
  %wide.load526 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !41
  %i.cq = or <4 x i32> %wide.load525, %wide.load523
  %i.cr = or <4 x i32> %wide.load526, %wide.load524
  %i.cs = xor <4 x i32> %i.cq, splat (i32 -1)     ; 2 uses
  %i.ct = xor <4 x i32> %i.cr, splat (i32 -1)     ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cl ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <4 x i32> %i.cs, ptr %i.cu, align 4, !tbaa !41
  store <4 x i32> %i.ct, ptr %i.cv, align 4, !tbaa !41
  %i.cw = getelementptr inbounds [4 x i8], ptr @s_FraigPrimes, i64 %i.cl ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load527 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !41
  %wide.load528 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !41
  %i.cy = mul <4 x i32> %wide.load527, %i.cs
  %i.cz = mul <4 x i32> %wide.load528, %i.ct
  %i.da = xor <4 x i32> %i.cy, %vec.phi521        ; 2 uses
  %i.db = xor <4 x i32> %i.cz, %vec.phi522        ; 2 uses
  %index.next529 = add nuw i64 %index520, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next529, %n.vec518
  br i1 %i.dc, label %middle.block530, label %vector.body519, !llvm.loop !52

end_hunk_0
