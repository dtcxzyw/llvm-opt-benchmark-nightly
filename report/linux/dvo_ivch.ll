Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dvo_ivch?download=true
inline.NumInlined: 34
inline.NumDeleted: 4
begin_hunk_0_@ivch_dpms:bb.a

bb.e:                                             ; preds = %.split12
  %i.ar = load i8, ptr %i.ag, align 2, !range !11, !noundef !12
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %ivch_write.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr i8, ptr %i.ah, i64 884
  %i.au = load i32, ptr %i.l, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 128, ptr noundef %i.at, i32 noundef %i.au) #9
  br label %ivch_write.exit

ivch_write.exit:                                  ; preds = %.split12, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %bb.i

.split:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.av = load i32, ptr %i.l, align 4
  %i.aw = trunc i32 %i.av to i16
  store i16 %i.aw, ptr %4, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 3, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 0, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.d, ptr %i.ba, align 8
  store i8 -128, ptr %i.d, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i16 0, ptr %i.bb, align 1
  %i.bc = call i32 @i2c_transfer(ptr noundef %i.ah, ptr noundef nonnull %4, i32 noundef 1) #9
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %ivch_write.exit13, label %bb.g

bb.g:                                             ; preds = %.split
  %i.be = load i8, ptr %i.ag, align 2, !range !11, !noundef !12
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %ivch_write.exit13, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr i8, ptr %i.ah, i64 884
  %i.bh = load i32, ptr %i.l, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 128, ptr noundef %i.bg, i32 noundef %i.bh) #9
  br label %ivch_write.exit13

ivch_write.exit13:                                ; preds = %.split, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.i

bb.i:                                             ; preds = %ivch_write.exit13, %ivch_write.exit
  %masksel = phi i16 [ 0, %ivch_write.exit13 ], [ 5, %ivch_write.exit ]
  %i.bi = and i16 %i.af, -6
  %storemerge = or disjoint i16 %masksel, %i.bi
  %i.bj = load ptr, ptr %i.h, align 8
  %i.bk = load ptr, ptr %i.j, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.bl = load i32, ptr %i.l, align 4
  %i.bm = trunc i32 %i.bl to i16
  store i16 %i.bm, ptr %3, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 0, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 3, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 0, ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.bq, align 8
  store i8 1, ptr %i.c, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i16 %storemerge, ptr %i.br, align 1
  %i.bs = call i32 @i2c_transfer(ptr noundef %i.bk, ptr noundef nonnull %3, i32 noundef 1) #9
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %ivch_write.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = load i8, ptr %i.bj, align 2, !range !11, !noundef !12
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %ivch_write.exit14, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr i8, ptr %i.bk, i64 884
  %i.bx = load i32, ptr %i.l, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef %i.bw, i32 noundef %i.bx) #9
  br label %ivch_write.exit14

ivch_write.exit14:                                ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.l

bb.l:                                             ; preds = %ivch_write.exit14, %bb.p
  %.01022 = phi i32 [ 0, %ivch_write.exit14 ], [ %i.cw, %bb.p ]
  %i.cj = load ptr, ptr %i.h, align 8
  %i.ck = load ptr, ptr %i.j, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i16 0, ptr %i.b, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.cl = load i32, ptr %i.l, align 4
  %i.cm = trunc i32 %i.cl to i16                  ; 2 uses
  store i16 %i.cm, ptr %2, align 16
  store i16 1, ptr %i.by, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.bz, i8 0, i64 14, i1 false)
  store i16 16384, ptr %i.ca, align 2
  store i16 1, ptr %i.cb, align 4
  store i16 0, ptr %i.cc, align 2
  store ptr %i.a, ptr %i.cd, align 8
  store i16 %i.cm, ptr %i.ce, align 16
  store i16 16385, ptr %i.cf, align 2
  store i16 2, ptr %i.cg, align 4
  store i16 0, ptr %i.ch, align 2
  store ptr %i.b, ptr %i.ci, align 8
  store i8 48, ptr %i.a, align 1
  %i.cn = call i32 @i2c_transfer(ptr noundef %i.ck, ptr noundef nonnull %2, i32 noundef 3) #9
  %i.co = icmp eq i32 %i.cn, 3
  br i1 %i.co, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = load i8, ptr %i.cj, align 2, !range !11, !noundef !12
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %ivch_read.exit15.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr i8, ptr %i.ck, i64 884
  %i.cs = load i32, ptr %i.l, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 48, ptr noundef %i.cr, i32 noundef %i.cs) #9
  br label %ivch_read.exit15.thread

ivch_read.exit15.thread:                          ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit

bb.o:                                             ; preds = %bb.l
  %i.ct = load i16, ptr %i.b, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.cu = icmp sgt i16 %i.ct, -1
  %i.cv = xor i1 %1, %i.cu
  br i1 %i.cv, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @__const_udelay(i64 noundef 4295000) #9
  %i.cw = add nuw nsw i32 %.01022, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cw, 100
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !16

.loopexit:                                        ; preds = %bb.o, %bb.p, %ivch_read.exit15.thread
  call void @__const_udelay(i64 noundef 68720000) #9
  br label %bb.q

bb.q:                                             ; preds = %ivch_read.exit.thread, %.loopexit
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 0, 16) i32 @ivch_mode_valid(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = icmp sgt i32 %i.a, 112000
  %. = select i1 %i.b, i32 15, i32 0
  ret i32 %.
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ivch_mode_set(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 5 uses
  %3 = alloca %struct.i2c_msg, align 8            ; 8 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %4 = alloca %struct.i2c_msg, align 8            ; 8 uses
  %i.c = alloca [3 x i8], align 1                 ; 5 uses
  %5 = alloca %struct.i2c_msg, align 8            ; 8 uses
  %i.d = alloca [3 x i8], align 1                 ; 5 uses
  %6 = alloca %struct.i2c_msg, align 8            ; 8 uses
  %i.e = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call fastcc void @ivch_reset(ptr noundef %0) #10, !srcloc !18
  %i.g = getelementptr i8, ptr %i.f, i64 52
  %i.h = load i16, ptr %i.g, align 2
  %i.i = shl i16 %i.h, 2
  %i.j = and i16 %i.i, 16
  %spec.select = xor i16 %i.j, 16                 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 4
  %i.l = load i16, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 32
  %7 = load i16, ptr %i.m, align 8                ; 2 uses
  %.not = icmp eq i16 %i.l, %7
  %8 = getelementptr i8, ptr %1, i64 14
  %9 = load i16, ptr %8, align 2                  ; 2 uses
  %10 = getelementptr i8, ptr %2, i64 46
  %i.n = load i16, ptr %10, align 2               ; 2 uses
  %.not29.a = icmp eq i16 %9, %i.n
  %or.cond = select i1 %.not, i1 %.not29.a, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge.a

._crit_edge.a:                                    ; preds = %bb.a
  %11 = or disjoint i16 %spec.select, 8
  %i.o = zext i16 %i.l to i32
  %i.p = shl nuw i32 %i.o, 16
  %i.q = add i32 %i.p, -65536
  %i.r = zext i16 %7 to i32
  %i.s = add nsw i32 %i.r, -1
  %i.t = sdiv i32 %i.q, %i.s
  %i.u = lshr i32 %i.t, 2
  %i.v = trunc i32 %i.u to i16
  %i.w = zext i16 %9 to i32
  %i.x = shl nuw i32 %i.w, 16
  %i.y = add i32 %i.x, -65536
  %i.z = zext i16 %i.n to i32
  %i.aa = add nsw i32 %i.z, -1
  %i.ab = sdiv i32 %i.y, %i.aa
  %i.ac = lshr i32 %i.ab, 2
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = load ptr, ptr %i.e, align 8
  %i.af = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.ah = getelementptr i8, ptr %0, i64 20        ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = trunc i32 %i.ai to i16
  store i16 %i.aj, ptr %6, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 3, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 0, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.d, ptr %i.an, align 8
  store i8 66, ptr %i.d, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i16 %i.v, ptr %i.ao, align 1
  %i.ap = call i32 @i2c_transfer(ptr noundef %i.ag, ptr noundef nonnull %6, i32 noundef 1) #9
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %ivch_write.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.a
  %i.ar = load i8, ptr %i.ae, align 2, !range !11, !noundef !12
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %ivch_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr i8, ptr %i.ag, i64 884
  %i.au = load i32, ptr %i.ah, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 66, ptr noundef %i.at, i32 noundef %i.au) #9
  br label %ivch_write.exit

ivch_write.exit:                                  ; preds = %._crit_edge.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = load ptr, ptr %i.af, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ax = load i32, ptr %i.ah, align 4
  %i.ay = trunc i32 %i.ax to i16
  store i16 %i.ay, ptr %5, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 0, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 3, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 0, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.bc, align 8
  store i8 65, ptr %i.c, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i16 %i.ad, ptr %i.bd, align 1
  %i.be = call i32 @i2c_transfer(ptr noundef %i.aw, ptr noundef nonnull %5, i32 noundef 1) #9
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %ivch_write.exit30, label %bb.d

bb.d:                                             ; preds = %ivch_write.exit
  %i.bg = load i8, ptr %i.av, align 2, !range !11, !noundef !12
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %ivch_write.exit30, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = getelementptr i8, ptr %i.aw, i64 884
  %i.bj = load i32, ptr %i.ah, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 65, ptr noundef %i.bi, i32 noundef %i.bj) #9
  br label %ivch_write.exit30

ivch_write.exit30:                                ; preds = %ivch_write.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %ivch_write.exit30
  %.1 = phi i16 [ %11, %ivch_write.exit30 ], [ %spec.select, %bb.a ]
  %.0 = phi i16 [ 13568, %ivch_write.exit30 ], [ 13312, %bb.a ]
  %i.bk = load ptr, ptr %i.e, align 8
  %i.bl = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.bn = getelementptr i8, ptr %0, i64 20        ; 4 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = trunc i32 %i.bo to i16
  store i16 %i.bp, ptr %4, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.bq, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 3, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 0, ptr %i.bs, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.bt, align 8
  store i8 1, ptr %i.b, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i16 %.1, ptr %i.bu, align 1
  %i.bv = call i32 @i2c_transfer(ptr noundef %i.bm, ptr noundef nonnull %4, i32 noundef 1) #9
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %ivch_write.exit31, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = load i8, ptr %i.bk, align 2, !range !11, !noundef !12
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %ivch_write.exit31, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr i8, ptr %i.bm, i64 884
  %i.ca = load i32, ptr %i.bn, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef %i.bz, i32 noundef %i.ca) #9
  br label %ivch_write.exit31

ivch_write.exit31:                                ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.cb = load ptr, ptr %i.e, align 8
  %i.cc = load ptr, ptr %i.bl, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.cd = load i32, ptr %i.bn, align 4
  %i.ce = trunc i32 %i.cd to i16
  store i16 %i.ce, ptr %3, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 0, ptr %i.cf, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 3, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 0, ptr %i.ch, align 2
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.ci, align 8
  store i8 64, ptr %i.a, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i16 %.0, ptr %i.cj, align 1
  %i.ck = call i32 @i2c_transfer(ptr noundef %i.cc, ptr noundef nonnull %3, i32 noundef 1) #9
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %ivch_write.exit32, label %bb.i

bb.i:                                             ; preds = %ivch_write.exit31
  %i.cm = load i8, ptr %i.cb, align 2, !range !11, !noundef !12
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %ivch_write.exit32, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr i8, ptr %i.cc, i64 884
  %i.cp = load i32, ptr %i.bn, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 64, ptr noundef %i.co, i32 noundef %i.cp) #9
  br label %ivch_write.exit32

ivch_write.exit32:                                ; preds = %ivch_write.exit31, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @ivch_detect(ptr nofree readnone captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  ret i32 1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ivch_get_hw_state(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 5 uses
  %1 = alloca [3 x %struct.i2c_msg], align 16     ; 15 uses
  tail call fastcc void @ivch_reset(ptr noundef %0) #10, !srcloc !19
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i16 0, ptr %i.b, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.g = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = trunc i32 %i.h to i16                    ; 2 uses
  store i16 %i.i, ptr %1, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 1, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.k, i8 0, i64 14, i1 false)
  store i16 16384, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 1, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 0, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.a, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i16 %i.i, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i16 16385, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i16 2, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 38
  store i16 0, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.b, ptr %i.t, align 8
  store i8 1, ptr %i.a, align 1
  %i.u = call i32 @i2c_transfer(ptr noundef %i.f, ptr noundef nonnull %1, i32 noundef 3) #9
  %i.v = icmp eq i32 %i.u, 3
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = load i16, ptr %i.b, align 2
  %i.x = and i16 %i.w, 4
  %i.y = icmp ne i16 %i.x, 0
  br label %ivch_read.exit

bb.c:                                             ; preds = %bb.a
  %i.z = load i8, ptr %i.d, align 2, !range !11, !noundef !12
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %ivch_read.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr i8, ptr %i.f, i64 884
  %i.ac = load i32, ptr %i.g, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef %i.ab, i32 noundef %i.ac) #9
  br label %ivch_read.exit

ivch_read.exit:                                   ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ %i.y, %bb.b ], [ false, %bb.c ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ivch_destroy(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @kfree(ptr noundef nonnull %i.b) #9
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ivch_dump_regs(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 5 uses
  %1 = alloca [3 x %struct.i2c_msg], align 16     ; 15 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 5 uses
  %2 = alloca [3 x %struct.i2c_msg], align 16     ; 15 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [2 x i8], align 2                 ; 5 uses
  %3 = alloca [3 x %struct.i2c_msg], align 16     ; 15 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [2 x i8], align 2                 ; 5 uses
  %4 = alloca [3 x %struct.i2c_msg], align 16     ; 15 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [2 x i8], align 2                 ; 5 uses
  %5 = alloca [3 x %struct.i2c_msg], align 16     ; 15 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [2 x i8], align 2                 ; 5 uses
  %6 = alloca [3 x %struct.i2c_msg], align 16     ; 15 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [2 x i8], align 2                 ; 5 uses
  %7 = alloca [3 x %struct.i2c_msg], align 16     ; 15 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = alloca [2 x i8], align 2                 ; 5 uses
  %8 = alloca [3 x %struct.i2c_msg], align 16     ; 15 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca [2 x i8], align 2                 ; 5 uses
end_hunk_0
