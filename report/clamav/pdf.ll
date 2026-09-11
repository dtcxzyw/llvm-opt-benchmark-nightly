Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pdf?download=true
inline.NumInlined: 40
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@dbg_printhex:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @cli_str2hex(ptr noundef %1, i32 noundef %2) #19 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.304, ptr noundef %0, ptr noundef %i.b) #19
  tail call void @free(ptr noundef %i.b) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_owner_password(ptr nofree noundef captures(none) %0, i32 noundef range(i32 2, 7) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, i64 noundef range(i64 0, 4294967296) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 7 uses
  store i64 %5, ptr %i.a, align 8, !tbaa !9
  %i.d = load i8, ptr @cli_debug_flag, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %dbg_printhex.exit32, label %dbg_printhex.exit

dbg_printhex.exit:                                ; preds = %bb.a
  %i.e = tail call ptr @cli_str2hex(ptr noundef nonnull %3, i32 noundef 32) #19 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.305, ptr noundef %i.e) #19
  tail call void @free(ptr noundef %i.e) #19
  %.pr = load i8, ptr @cli_debug_flag, align 1, !tbaa !33
  %.not.i31 = icmp eq i8 %.pr, 0
  br i1 %.not.i31, label %dbg_printhex.exit32, label %bb.b

bb.b:                                             ; preds = %dbg_printhex.exit
  %i.f = tail call ptr @cli_str2hex(ptr noundef nonnull %2, i32 noundef 32) #19 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.306, ptr noundef %i.f) #19
  tail call void @free(ptr noundef %i.f) #19
  br label %dbg_printhex.exit32

dbg_printhex.exit32:                              ; preds = %bb.a, %dbg_printhex.exit, %bb.b
  %cond = icmp eq i32 %1, 6
  br i1 %cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %dbg_printhex.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.307) #19
  br label %dbg_printhex.exit36

bb.e:                                             ; preds = %bb.c
  %i.h = load i8, ptr @cli_debug_flag, align 1, !tbaa !33
  %.not.i33 = icmp eq i8 %i.h, 0
  br i1 %.not.i33, label %dbg_printhex.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = trunc nuw i64 %5 to i32
  %i.j = tail call ptr @cli_str2hex(ptr noundef nonnull %4, i32 noundef %i.i) #19 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.308, ptr noundef %i.j) #19
  tail call void @free(ptr noundef %i.j) #19
  br label %dbg_printhex.exit34

dbg_printhex.exit34:                              ; preds = %bb.e, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val30 = load i64, ptr %i.k, align 1
  call fastcc void @compute_hash_r6(i64 %.val30, ptr noundef %i.c, ptr noundef nonnull %3)
  %i.l = load i128, ptr %2, align 1
  %i.m = load i128, ptr %i.c, align 16
  %i.n = xor i128 %i.l, %i.m
  %i.o = getelementptr i8, ptr %2, i64 16
  %i.p = getelementptr i8, ptr %i.c, i64 16
  %i.q = load i128, ptr %i.o, align 1
  %i.r = load i128, ptr %i.p, align 16
  %i.s = xor i128 %i.q, %i.r
  %i.t = or i128 %i.n, %i.s
  %i.u = icmp ne i128 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %dbg_printhex.exit34
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.309) #19
  br label %bb.n

bb.h:                                             ; preds = %dbg_printhex.exit34
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val = load i64, ptr %i.w, align 1
  call fastcc void @compute_hash_r6(i64 %.val, ptr noundef %i.b, ptr noundef nonnull %3)
  %.not28 = icmp eq i64 %5, 32
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.310, i64 noundef %5) #19
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i32 32, ptr %i.x, align 8, !tbaa !49
  %i.y = tail call ptr @cli_max_malloc(i64 noundef 32) #19 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !48
  %.not29 = icmp eq ptr %i.y, null
  br i1 %.not29, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.311) #19
  br label %dbg_printhex.exit36

bb.l:                                             ; preds = %bb.j
  call fastcc void @aes_256cbc_decrypt(ptr noundef nonnull %4, ptr noundef %i.a, ptr noundef %i.y, ptr noundef nonnull %i.b, i32 noundef 32, i32 noundef 0)
  %i.aa = load i8, ptr @cli_debug_flag, align 1, !tbaa !33
  %.not.i35 = icmp eq i8 %i.aa, 0
  br i1 %.not.i35, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load i32, ptr %i.x, align 8, !tbaa !49
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.ad = call ptr @cli_str2hex(ptr noundef %i.ac, i32 noundef %i.ab) #19 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.312, ptr noundef %i.ad) #19
  call void @free(ptr noundef %i.ad) #19
  br label %bb.o

dbg_printhex.exit36:                              ; preds = %bb.k, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.q

.critedge:                                        ; preds = %dbg_printhex.exit32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.313, i32 noundef %1) #19
  br label %bb.p

bb.n:                                             ; preds = %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !20
  %i.ag = or i32 %i.af, 524288
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !20
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.314) #19
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %.critedge
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.315) #19
  br label %bb.q

bb.q:                                             ; preds = %dbg_printhex.exit36, %bb.p, %bb.o
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_user_password(ptr nofree noundef captures(none) %0, i32 noundef range(i32 2, 7) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5, ptr noundef %6, i64 noundef range(i64 0, 4294967296) %7, i32 noundef range(i32 40, 0) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [16 x i8], align 16               ; 31 uses
  %i.c = alloca [32 x i8], align 16               ; 37 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %9 = alloca %struct.arc4_state, align 4         ; 46 uses
  %i.e = alloca [32 x i8], align 16               ; 10 uses
  %i.f = alloca [32 x i8], align 16               ; 6 uses
  %i.g = alloca [32 x i8], align 16               ; 7 uses
  store i64 %7, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.h = load i8, ptr @cli_debug_flag, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %dbg_printhex.exit139, label %dbg_printhex.exit

dbg_printhex.exit:                                ; preds = %bb.a
  %i.i = tail call ptr @cli_str2hex(ptr noundef nonnull %3, i32 noundef 32) #19 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.305, ptr noundef %i.i) #19
  tail call void @free(ptr noundef %i.i) #19
  %.pr = load i8, ptr @cli_debug_flag, align 1, !tbaa !33
  %.not.i138 = icmp eq i8 %.pr, 0
  br i1 %.not.i138, label %dbg_printhex.exit139, label %bb.b

bb.b:                                             ; preds = %dbg_printhex.exit
  %i.j = tail call ptr @cli_str2hex(ptr noundef nonnull %2, i32 noundef 32) #19 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.306, ptr noundef %i.j) #19
  tail call void @free(ptr noundef %i.j) #19
  br label %dbg_printhex.exit139

dbg_printhex.exit139:                             ; preds = %bb.a, %dbg_printhex.exit, %bb.b
  switch i32 %1, label %default.unreachable197 [
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.q
    i32 6, label %bb.x
  ]

bb.c:                                             ; preds = %dbg_printhex.exit139, %dbg_printhex.exit139, %dbg_printhex.exit139
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.m = icmp samesign ugt i32 %1, 3
  %10 = shl nuw nsw i32 %5, 2
  %11 = sub nuw nsw i32 72, %10
  %i.n = select i1 %i.m, i32 %11, i32 68
  %i.o = add i32 %i.n, %i.l
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.p) #20 ; 7 uses
  %.not127 = icmp eq ptr %i.q, null
  br i1 %.not127, label %.thread162, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.q, ptr noundef nonnull align 1 dereferenceable(32) @.str.337, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.r, ptr noundef nonnull align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i32 %4, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 68 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !103
  %i.w = zext i32 %i.l to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.v, i64 %i.w, i1 false)
  %i.x = icmp samesign ult i32 %1, 4
  %i.y = icmp ne i32 %5, 0
  %or.cond = or i1 %i.x, %i.y
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  store i32 -1, ptr %i.z, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = call ptr @cl_hash_data(ptr noundef nonnull @.str.50, ptr noundef nonnull %i.q, i64 noundef %i.p, ptr noundef nonnull %i.b, ptr noundef null) #19 ; 0 uses
  call void @free(ptr noundef nonnull %i.q) #19
  %spec.store.select = call i32 @llvm.umin.i32(i32 %8, i32 128)
  %i.ab = icmp samesign ugt i32 %1, 2
  %i.ac = lshr i32 %spec.store.select, 3          ; 2 uses
  br i1 %i.ab, label %.preheader177, label %.loopexit

.preheader177:                                    ; preds = %bb.f
  %i.ad = zext nneg i32 %i.ac to i64
  br label %bb.g

bb.g:                                             ; preds = %.preheader177, %bb.g
  %.0109178 = phi i32 [ 0, %.preheader177 ], [ %i.af, %bb.g ]
  %i.ae = call ptr @cl_hash_data(ptr noundef nonnull @.str.50, ptr noundef nonnull %i.b, i64 noundef %i.ad, ptr noundef nonnull %i.b, ptr noundef null) #19 ; 0 uses
  %i.af = add nuw nsw i32 %.0109178, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, 50
  br i1 %exitcond.not, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.g, %bb.f
  %i.ag = icmp eq i32 %1, 2                       ; 2 uses
  %i.ah = select i1 %i.ag, i32 5, i32 %i.ac       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !49
  %i.aj = zext nneg i32 %i.ah to i64
  %i.ak = call ptr @cli_max_malloc(i64 noundef %i.aj) #19 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !48
  %.not128 = icmp eq ptr %i.ak, null
  br i1 %.not128, label %.thread162, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !49
  %i.an = zext i32 %i.am to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 16 %i.b, i64 %i.an, i1 false)
  %i.ao = load i8, ptr @cli_debug_flag, align 1, !tbaa !33
  %.not.i140 = icmp eq i8 %i.ao, 0
  br i1 %.not.i140, label %dbg_printhex.exit143, label %dbg_printhex.exit141

dbg_printhex.exit141:                             ; preds = %bb.h
  %i.ap = call ptr @cli_str2hex(ptr noundef nonnull %i.b, i32 noundef 16) #19 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.50, ptr noundef %i.ap) #19
  call void @free(ptr noundef %i.ap) #19
  %.pr153 = load i8, ptr @cli_debug_flag, align 1, !tbaa !33
  %.not.i142 = icmp eq i8 %.pr153, 0
  br i1 %.not.i142, label %dbg_printhex.exit143, label %bb.i

bb.i:                                             ; preds = %dbg_printhex.exit141
  %i.aq = load i32, ptr %i.ai, align 8, !tbaa !49
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !48
  %i.as = call ptr @cli_str2hex(ptr noundef %i.ar, i32 noundef %i.aq) #19 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.323, ptr noundef %i.as) #19
  call void @free(ptr noundef %i.as) #19
  br label %dbg_printhex.exit143

dbg_printhex.exit143:                             ; preds = %bb.h, %dbg_printhex.exit141, %bb.i
  br i1 %i.ag, label %bb.j, label %bb.m

bb.j:                                             ; preds = %dbg_printhex.exit143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) @.str.337, i64 32, i1 false)
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !48
  %i.au = load i32, ptr %i.ai, align 8, !tbaa !49
  %i.av = call zeroext i1 @arc4_init(ptr noundef nonnull %9, ptr noundef %i.at, i32 noundef %i.au) #19
  br i1 %i.av, label %bb.k, label %.thread162

bb.k:                                             ; preds = %bb.j
  call void @arc4_apply(ptr noundef nonnull %9, ptr noundef nonnull %i.c, i32 noundef 32) #19
  %i.aw = load i8, ptr @cli_debug_flag, align 1, !tbaa !33
  %.not.i144 = icmp eq i8 %i.aw, 0
  br i1 %.not.i144, label %dbg_printhex.exit145, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = call ptr @cli_str2hex(ptr noundef nonnull %i.c, i32 noundef 32) #19 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.324, ptr noundef %i.ax) #19
  call void @free(ptr noundef %i.ax) #19
  br label %dbg_printhex.exit145

dbg_printhex.exit145:                             ; preds = %bb.k, %bb.l
  %i.ay = load i128, ptr %i.c, align 16
  %i.az = load i128, ptr %3, align 1
  %i.ba = xor i128 %i.ay, %i.az
  %i.bb = getelementptr i8, ptr %i.c, i64 16
  %i.bc = getelementptr i8, ptr %3, i64 16
  %i.bd = load i128, ptr %i.bb, align 16
  %i.be = load i128, ptr %i.bc, align 1
  %i.bf = xor i128 %i.bd, %i.be
  %i.bg = or i128 %i.ba, %i.bf
  %i.bh = icmp ne i128 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %.not133 = icmp eq i32 %i.bi, 0
  br i1 %.not133, label %bb.ai, label %bb.aj

bb.m:                                             ; preds = %dbg_printhex.exit143
  %i.bj = load i32, ptr %i.ai, align 8, !tbaa !49 ; 6 uses
  %i.bk = load i32, ptr %i.k, align 8, !tbaa !105 ; 2 uses
  %i.bl = add i32 %i.bk, 32
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.bm) #20 ; 5 uses
  %.not129 = icmp eq ptr %i.bn, null
  br i1 %.not129, label %.thread162, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bn, ptr noundef nonnull align 1 dereferenceable(32) @.str.337, i64 32, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.u, align 8, !tbaa !103
  %i.bq = zext i32 %i.bk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr align 1 %i.bp, i64 %i.bq, i1 false)
  %i.br = call ptr @cl_hash_data(ptr noundef nonnull @.str.50, ptr noundef nonnull %i.bn, i64 noundef %i.bm, ptr noundef nonnull %i.b, ptr noundef null) #19 ; 0 uses
  %i.bs = load ptr, ptr %i.al, align 8, !tbaa !48
  %i.bt = zext i32 %i.bj to i64                   ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %i.bs, i64 %i.bt, i1 false)
  %i.bu = call zeroext i1 @arc4_init(ptr noundef nonnull %9, ptr noundef nonnull %i.c, i32 noundef %i.bj) #19
  br i1 %i.bu, label %bb.o, label %.thread162

bb.o:                                             ; preds = %bb.n
  call void @arc4_apply(ptr noundef nonnull %9, ptr noundef nonnull %i.b, i32 noundef 16) #19
  %.not182 = icmp eq i32 %i.bj, 0
  br i1 %.not182, label %.preheader.preheader, label %iter.check.preheader

iter.check.preheader:                             ; preds = %bb.o
  %min.iters.check = icmp ult i32 %i.bj, 4
  %min.iters.check200 = icmp ult i32 %i.bj, 32
  %i.bv = and i64 %i.bt, 28
  %n.vec = and i64 %i.bt, 4294967264              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bt
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  %n.vec202 = and i64 %i.bt, 4294967292           ; 3 uses
  %cmp.n208 = icmp eq i64 %n.vec202, %i.bt
  %xtraiter = and i64 %i.bt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

.preheader.preheader:                             ; preds = %bb.o
  %i.bw = call zeroext i1 @arc4_init(ptr noundef nonnull %9, ptr noundef nonnull %i.c, i32 noundef 0) #19
  br i1 %i.bw, label %.preheader.1, label %.thread162

iter.check:                                       ; preds = %iter.check.preheader, %bb.p
  %.1110180.us = phi i32 [ %i.di, %bb.p ], [ 1, %iter.check.preheader ] ; 2 uses
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !48 ; 8 uses
  %i.by = trunc nuw nsw i32 %.1110180.us to i8    ; 7 uses
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bz, %i.d
  %diff.check = icmp ugt i64 %i.ca, -32
  %or.cond210 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond210, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check200, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.by, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load = load <16 x i8>, ptr %i.cb, align 1, !tbaa !33
  %wide.load201 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !33
  %i.cd = xor <16 x i8> %wide.load, %broadcast.splat
  %i.ce = xor <16 x i8> %wide.load201, %broadcast.splat
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <16 x i8> %i.cd, ptr %i.cf, align 16, !tbaa !33
  store <16 x i8> %i.ce, ptr %i.cg, align 16, !tbaa !33
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

end_hunk_0
