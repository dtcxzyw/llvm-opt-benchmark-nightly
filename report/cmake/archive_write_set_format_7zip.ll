Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_7zip?download=true
inline.NumInlined: 102
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@compression_code_zstd:bb.a
  %or.cond = and i1 %i.ai, %i.aj
  %. = zext i1 %or.cond to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -30, %bb.b ], [ %., %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @compression_end_zstd(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) initializes((64, 68)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = tail call i64 @ZSTD_freeCStream(ptr noundef %i.b) #17 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 0, ptr %i.d, align 8, !tbaa !70
  store ptr null, ptr %i.a, align 8, !tbaa !94
  ret i32 0
}

declare i64 @ZSTD_compressStream2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @ZSTD_getErrorName(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @compression_code_copy(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %. = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 8 uses
  %.not = icmp eq i64 %., 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = load ptr, ptr %1, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %i.g, i64 %., i1 false)
  %i.h = load ptr, ptr %1, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  store ptr %i.i, ptr %1, align 8, !tbaa !80
  %i.j = load i64, ptr %i.c, align 8, !tbaa !84
  %i.k = sub i64 %i.j, %.                         ; 2 uses
  store i64 %i.k, ptr %i.c, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !86
  %i.n = add i64 %i.m, %.
  store i64 %i.n, ptr %i.l, align 8, !tbaa !86
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.
  store ptr %i.p, ptr %i.e, align 8, !tbaa !88
  %i.q = load i64, ptr %i.a, align 8, !tbaa !90
  %i.r = sub i64 %i.q, %.
  store i64 %i.r, ptr %i.a, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !92
  %i.u = add i64 %i.t, %.
  store i64 %i.u, ptr %i.s, align 8, !tbaa !92
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = phi i64 [ %i.k, %bb.b ], [ %i.d, %bb.a ]
  %i.w = icmp eq i32 %2, 0
  %i.x = icmp eq i64 %i.v, 0
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  %.022 = zext i1 %or.cond to i32
  ret i32 %.022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @compression_end_copy(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((64, 68)) %1) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 0, ptr %i.a, align 8, !tbaa !70
  ret i32 0
}

declare i32 @__archive_mktemp(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #14

declare ptr @__archive_rb_tree_iterate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @enc_uint64(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = icmp ult i64 %1, 128
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.019.lcssa.wide = phi i64 [ 1, %bb.a ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ]
  %.01217.lcssa = phi i64 [ %1, %bb.a ], [ %i.g, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ], [ %i.s, %bb.f ], [ %i.w, %bb.g ], [ %i.aa, %bb.h ], [ 0, %bb.i ]
  %.lcssa = phi i8 [ 0, %bb.a ], [ -128, %bb.c ], [ -64, %bb.d ], [ -32, %bb.e ], [ -16, %bb.f ], [ -8, %bb.g ], [ -4, %bb.h ], [ -2, %bb.i ]
  %i.c = trunc nuw nsw i64 %.01217.lcssa to i8
  %i.d = or i8 %.lcssa, %i.c
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = trunc i64 %1 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !40
  %i.g = lshr i64 %1, 8                           ; 2 uses
  %i.h = icmp ult i64 %1, 16384
  br i1 %i.h, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = trunc i64 %i.g to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.i, ptr %i.j, align 1, !tbaa !40
  %i.k = lshr i64 %1, 16                          ; 2 uses
  %i.l = icmp ult i64 %1, 2097152
  br i1 %i.l, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = trunc i64 %i.k to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.m, ptr %i.n, align 1, !tbaa !40
  %i.o = lshr i64 %1, 24                          ; 2 uses
  %i.p = icmp ult i64 %1, 268435456
  br i1 %i.p, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = trunc i64 %i.o to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.q, ptr %i.r, align 1, !tbaa !40
  %i.s = lshr i64 %1, 32                          ; 2 uses
  %i.t = icmp ult i64 %1, 34359738368
  br i1 %i.t, label %bb.b, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = trunc i64 %i.s to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.u, ptr %i.v, align 1, !tbaa !40
  %i.w = lshr i64 %1, 40                          ; 2 uses
  %i.x = icmp ult i64 %1, 4398046511104
  br i1 %i.x, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = trunc i64 %i.w to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.y, ptr %i.z, align 1, !tbaa !40
  %i.aa = lshr i64 %1, 48                         ; 2 uses
  %i.ab = icmp ult i64 %1, 562949953421312
  br i1 %i.ab, label %bb.b, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = trunc i64 %i.aa to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !40
  %i.ae = lshr i64 %1, 56                         ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.i
  %i.ag = trunc nuw i64 %i.ae to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.b
  %storemerge = phi i8 [ -1, %.loopexit ], [ %i.d, %bb.b ]
  %.014 = phi i64 [ 9, %.loopexit ], [ %.019.lcssa.wide, %bb.b ]
  store i8 %storemerge, ptr %i.a, align 1
  %i.ai = call fastcc i64 @compress_out(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %.014, i32 noundef 1)
  %i.aj = trunc i64 %i.ai to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %i.aj
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @make_streamsInfo(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 4 uses
  %i.b = alloca [9 x i8], align 1                 ; 8 uses
  %i.c = alloca [9 x i8], align 1                 ; 4 uses
  %i.d = alloca [9 x i8], align 1                 ; 4 uses
  %i.e = alloca [9 x i8], align 1                 ; 4 uses
  %i.f = alloca [9 x i8], align 1                 ; 12 uses
  %i.g = alloca [9 x i8], align 1                 ; 4 uses
  %i.h = alloca [9 x i8], align 1                 ; 4 uses
  %i.i = alloca [9 x i8], align 1                 ; 4 uses
  %i.j = alloca [9 x i8], align 1                 ; 4 uses
  %i.k = alloca [9 x i8], align 1                 ; 9 uses
  %i.l = alloca [9 x i8], align 1                 ; 4 uses
  %i.m = alloca [9 x i8], align 1                 ; 4 uses
  %i.n = alloca [9 x i8], align 1                 ; 4 uses
  %i.o = alloca [9 x i8], align 1                 ; 12 uses
  %i.p = alloca [9 x i8], align 1                 ; 12 uses
  %i.q = alloca [9 x i8], align 1                 ; 4 uses
  %i.r = alloca [9 x i8], align 1                 ; 9 uses
  %i.s = alloca [9 x i8], align 1                 ; 12 uses
  %i.t = alloca [9 x i8], align 1                 ; 4 uses
  %i.u = alloca [8 x i8], align 4                 ; 5 uses
  %i.v = alloca [4 x i8], align 4                 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #17
  %i.y = load i32, ptr %4, align 8, !tbaa !115
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67
  %i.ac = trunc i64 %i.ab to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0142 = phi i32 [ %i.ac, %bb.b ], [ 1, %bb.a ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #17
  store i8 6, ptr %i.t, align 1
  %i.ad = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i64 noundef 1, i32 noundef 1)
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #17
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.thread287, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #17
  %i.ag = icmp ult i64 %1, 128
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %.019.lcssa.wide.i = phi i64 [ 1, %bb.d ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ 7, %bb.k ], [ 8, %bb.l ]
  %.01217.lcssa.i = phi i64 [ %1, %bb.d ], [ %i.al, %bb.f ], [ %i.ap, %bb.g ], [ %i.at, %bb.h ], [ %i.ax, %bb.i ], [ %i.bb, %bb.j ], [ %i.bf, %bb.k ], [ 0, %bb.l ]
  %.lcssa.i = phi i8 [ 0, %bb.d ], [ -128, %bb.f ], [ -64, %bb.g ], [ -32, %bb.h ], [ -16, %bb.i ], [ -8, %bb.j ], [ -4, %bb.k ], [ -2, %bb.l ]
  %i.ah = trunc nuw nsw i64 %.01217.lcssa.i to i8
  %i.ai = or i8 %.lcssa.i, %i.ah
  br label %enc_uint64.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = trunc i64 %1 to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !40
  %i.al = lshr i64 %1, 8                          ; 2 uses
  %i.am = icmp ult i64 %1, 16384
  br i1 %i.am, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = trunc i64 %i.al to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !40
  %i.ap = lshr i64 %1, 16                         ; 2 uses
  %i.aq = icmp ult i64 %1, 2097152
  br i1 %i.aq, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = trunc i64 %i.ap to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !40
  %i.at = lshr i64 %1, 24                         ; 2 uses
  %i.au = icmp ult i64 %1, 268435456
  br i1 %i.au, label %bb.e, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = trunc i64 %i.at to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !40
  %i.ax = lshr i64 %1, 32                         ; 2 uses
  %i.ay = icmp ult i64 %1, 34359738368
  br i1 %i.ay, label %bb.e, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = trunc i64 %i.ax to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !40
  %i.bb = lshr i64 %1, 40                         ; 2 uses
  %i.bc = icmp ult i64 %1, 4398046511104
  br i1 %i.bc, label %bb.e, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = trunc i64 %i.bb to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !40
  %i.bf = lshr i64 %1, 48                         ; 2 uses
  %i.bg = icmp ult i64 %1, 562949953421312
  br i1 %i.bg, label %bb.e, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = trunc i64 %i.bf to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !40
  %i.bj = lshr i64 %1, 56                         ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.e, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.l
  %i.bl = trunc nuw i64 %i.bj to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !40
  br label %enc_uint64.exit

enc_uint64.exit:                                  ; preds = %bb.e, %.loopexit.i
  %storemerge.i = phi i8 [ -1, %.loopexit.i ], [ %i.ai, %bb.e ]
  %.014.i = phi i64 [ 9, %.loopexit.i ], [ %.019.lcssa.wide.i, %bb.e ]
  store i8 %storemerge.i, ptr %i.s, align 1
  %i.bn = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.s, i64 noundef %.014.i, i32 noundef 1)
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #17
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.thread287, label %bb.m

bb.m:                                             ; preds = %enc_uint64.exit
  %i.bq = sext i32 %.0142 to i64                  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #17
  %i.br = icmp ult i32 %.0142, 128                ; 2 uses
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.m
  %.019.lcssa.wide.i183 = phi i64 [ 1, %bb.m ], [ 2, %bb.o ], [ 3, %bb.p ], [ 4, %bb.q ], [ 5, %bb.r ]
  %.01217.lcssa.i184 = phi i64 [ %i.bq, %bb.m ], [ %i.bw, %bb.o ], [ %i.ca, %bb.p ], [ %i.ce, %bb.q ], [ %i.ci, %bb.r ]
  %.lcssa.i185 = phi i8 [ 0, %bb.m ], [ -128, %bb.o ], [ -64, %bb.p ], [ -32, %bb.q ], [ -16, %bb.r ]
  %i.bs = trunc nuw nsw i64 %.01217.lcssa.i184 to i8
  %i.bt = or i8 %.lcssa.i185, %i.bs
  br label %enc_uint64.exit186

bb.o:                                             ; preds = %bb.m
  %i.bu = trunc i32 %.0142 to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !40
  %i.bw = lshr i64 %i.bq, 8                       ; 2 uses
  %i.bx = icmp ult i32 %.0142, 16384
  br i1 %i.bx, label %bb.n, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = trunc i64 %i.bw to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !40
  %i.ca = lshr i64 %i.bq, 16                      ; 2 uses
  %i.cb = icmp ult i32 %.0142, 2097152
  br i1 %i.cb, label %bb.n, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = trunc i64 %i.ca to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !40
  %i.ce = lshr i64 %i.bq, 24                      ; 2 uses
  %i.cf = icmp ult i32 %.0142, 268435456
  br i1 %i.cf, label %bb.n, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = trunc i64 %i.ce to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !40
  %i.ci = lshr i64 %i.bq, 32
  %i.cj = icmp sgt i32 %.0142, -1
  br i1 %i.cj, label %bb.n, label %.loopexit.i180

.loopexit.i180:                                   ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  store i32 -1, ptr %i.ck, align 1
  br label %enc_uint64.exit186

enc_uint64.exit186:                               ; preds = %bb.n, %.loopexit.i180
  %storemerge.i181 = phi i8 [ -1, %.loopexit.i180 ], [ %i.bt, %bb.n ]
  %.014.i182 = phi i64 [ 9, %.loopexit.i180 ], [ %.019.lcssa.wide.i183, %bb.n ]
  store i8 %storemerge.i181, ptr %i.r, align 1
  %i.cl = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i64 noundef %.014.i182, i32 noundef 1)
  %i.cm = trunc i64 %i.cl to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #17
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %.thread287, label %bb.s

bb.s:                                             ; preds = %enc_uint64.exit186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #17
  store i8 9, ptr %i.q, align 1
  %i.co = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i64 noundef 1, i32 noundef 1)
  %i.cp = trunc i64 %i.co to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #17
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %.thread287, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = icmp sgt i32 %.0142, 1                  ; 2 uses
  br i1 %i.cr, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 61720
  %.0136303 = load ptr, ptr %i.cs, align 8, !tbaa !60 ; 2 uses
  %.not304 = icmp eq ptr %.0136303, null
  br i1 %.not304, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.p, i64 7
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %bb.w

end_hunk_0
begin_hunk_1_@make_streamsInfo:bb.a
  %i.ed = trunc nuw i64 %i.eb to i8
  store i8 %i.ed, ptr %i.da, align 1, !tbaa !40
  br label %enc_uint64.exit198

enc_uint64.exit198:                               ; preds = %bb.y, %.loopexit.i192
  %storemerge.i193 = phi i8 [ -1, %.loopexit.i192 ], [ %i.dh, %bb.y ]
  %.014.i194 = phi i64 [ 9, %.loopexit.i192 ], [ %.019.lcssa.wide.i195, %bb.y ]
  store i8 %storemerge.i193, ptr %i.p, align 1
  %i.ee = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i64 noundef %.014.i194, i32 noundef 1)
  %i.ef = trunc i64 %i.ee to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #17
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %.thread287, label %bb.v

bb.ag:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #17
  %i.eh = icmp ult i64 %2, 128
  br i1 %i.eh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ag
  %.019.lcssa.wide.i202 = phi i64 [ 1, %bb.ag ], [ 2, %bb.ai ], [ 3, %bb.aj ], [ 4, %bb.ak ], [ 5, %bb.al ], [ 6, %bb.am ], [ 7, %bb.an ], [ 8, %bb.ao ]
  %.01217.lcssa.i203 = phi i64 [ %2, %bb.ag ], [ %i.em, %bb.ai ], [ %i.eq, %bb.aj ], [ %i.eu, %bb.ak ], [ %i.ey, %bb.al ], [ %i.fc, %bb.am ], [ %i.fg, %bb.an ], [ 0, %bb.ao ]
  %.lcssa.i204 = phi i8 [ 0, %bb.ag ], [ -128, %bb.ai ], [ -64, %bb.aj ], [ -32, %bb.ak ], [ -16, %bb.al ], [ -8, %bb.am ], [ -4, %bb.an ], [ -2, %bb.ao ]
  %i.ei = trunc nuw nsw i64 %.01217.lcssa.i203 to i8
  %i.ej = or i8 %.lcssa.i204, %i.ei
  br label %enc_uint64.exit205

bb.ai:                                            ; preds = %bb.ag
  %i.ek = trunc i64 %2 to i8
  %i.el = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !40
  %i.em = lshr i64 %2, 8                          ; 2 uses
  %i.en = icmp ult i64 %2, 16384
  br i1 %i.en, label %bb.ah, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eo = trunc i64 %i.em to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !40
  %i.eq = lshr i64 %2, 16                         ; 2 uses
  %i.er = icmp ult i64 %2, 2097152
  br i1 %i.er, label %bb.ah, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = trunc i64 %i.eq to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 %i.es, ptr %i.et, align 1, !tbaa !40
  %i.eu = lshr i64 %2, 24                         ; 2 uses
  %i.ev = icmp ult i64 %2, 268435456
  br i1 %i.ev, label %bb.ah, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = trunc i64 %i.eu to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !40
  %i.ey = lshr i64 %2, 32                         ; 2 uses
  %i.ez = icmp ult i64 %2, 34359738368
  br i1 %i.ez, label %bb.ah, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = trunc i64 %i.ey to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !40
  %i.fc = lshr i64 %2, 40                         ; 2 uses
  %i.fd = icmp ult i64 %2, 4398046511104
  br i1 %i.fd, label %bb.ah, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fe = trunc i64 %i.fc to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !40
  %i.fg = lshr i64 %2, 48                         ; 2 uses
  %i.fh = icmp ult i64 %2, 562949953421312
  br i1 %i.fh, label %bb.ah, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fi = trunc i64 %i.fg to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.o, i64 7
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !40
  %i.fk = lshr i64 %2, 56                         ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.ah, label %.loopexit.i199

.loopexit.i199:                                   ; preds = %bb.ao
  %i.fm = trunc nuw i64 %i.fk to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !40
  br label %enc_uint64.exit205

enc_uint64.exit205:                               ; preds = %bb.ah, %.loopexit.i199
  %storemerge.i200 = phi i8 [ -1, %.loopexit.i199 ], [ %i.ej, %bb.ah ]
  %.014.i201 = phi i64 [ 9, %.loopexit.i199 ], [ %.019.lcssa.wide.i202, %bb.ah ]
  store i8 %storemerge.i200, ptr %i.o, align 1
  %i.fo = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.o, i64 noundef %.014.i201, i32 noundef 1)
  %i.fp = trunc i64 %i.fo to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #17
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %.thread287, label %.thread

.thread:                                          ; preds = %bb.w, %bb.v, %bb.u, %enc_uint64.exit205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #17
  store i8 0, ptr %i.n, align 1
  %i.fr = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i64 noundef 1, i32 noundef 1)
  %i.fs = trunc i64 %i.fr to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #17
  %i.ft = icmp slt i32 %i.fs, 0
  br i1 %i.ft, label %.thread287, label %bb.ap

bb.ap:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #17
  store i8 7, ptr %i.m, align 1
  %i.fu = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i64 noundef 1, i32 noundef 1)
  %i.fv = trunc i64 %i.fu to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  %i.fw = icmp slt i32 %i.fv, 0
  br i1 %i.fw, label %.thread287, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #17
  store i8 11, ptr %i.l, align 1
  %i.fx = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef 1, i32 noundef 1)
  %i.fy = trunc i64 %i.fx to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %.thread287, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  br i1 %i.br, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.ar
  %.019.lcssa.wide.i224 = phi i64 [ 1, %bb.ar ], [ 2, %bb.at ], [ 3, %bb.au ], [ 4, %bb.av ], [ 5, %bb.aw ]
  %.01217.lcssa.i225 = phi i64 [ %i.bq, %bb.ar ], [ %i.ge, %bb.at ], [ %i.gi, %bb.au ], [ %i.gm, %bb.av ], [ %i.gq, %bb.aw ]
  %.lcssa.i226 = phi i8 [ 0, %bb.ar ], [ -128, %bb.at ], [ -64, %bb.au ], [ -32, %bb.av ], [ -16, %bb.aw ]
  %i.ga = trunc nuw nsw i64 %.01217.lcssa.i225 to i8
  %i.gb = or i8 %.lcssa.i226, %i.ga
  br label %enc_uint64.exit227

bb.at:                                            ; preds = %bb.ar
  %i.gc = trunc i32 %.0142 to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !40
  %i.ge = lshr i64 %i.bq, 8                       ; 2 uses
  %i.gf = icmp ult i32 %.0142, 16384
  br i1 %i.gf, label %bb.as, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gg = trunc i64 %i.ge to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !40
  %i.gi = lshr i64 %i.bq, 16                      ; 2 uses
  %i.gj = icmp ult i32 %.0142, 2097152
  br i1 %i.gj, label %bb.as, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gk = trunc i64 %i.gi to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !40
  %i.gm = lshr i64 %i.bq, 24                      ; 2 uses
  %i.gn = icmp ult i32 %.0142, 268435456
  br i1 %i.gn, label %bb.as, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.go = trunc i64 %i.gm to i8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !40
  %i.gq = lshr i64 %i.bq, 32
  %i.gr = icmp sgt i32 %.0142, -1
  br i1 %i.gr, label %bb.as, label %.loopexit.i221

.loopexit.i221:                                   ; preds = %bb.aw
  %i.gs = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  store i32 -1, ptr %i.gs, align 1
  br label %enc_uint64.exit227

enc_uint64.exit227:                               ; preds = %bb.as, %.loopexit.i221
  %storemerge.i222 = phi i8 [ -1, %.loopexit.i221 ], [ %i.gb, %bb.as ]
  %.014.i223 = phi i64 [ 9, %.loopexit.i221 ], [ %.019.lcssa.wide.i224, %bb.as ]
  store i8 %storemerge.i222, ptr %i.k, align 1
  %i.gt = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i64 noundef %.014.i223, i32 noundef 1)
  %i.gu = trunc i64 %i.gt to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  %i.gv = icmp slt i32 %i.gu, 0
  br i1 %i.gv, label %.thread287, label %bb.ax

bb.ax:                                            ; preds = %enc_uint64.exit227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  store i8 0, ptr %i.j, align 1
  %i.gw = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef 1, i32 noundef 1)
  %i.gx = trunc i64 %i.gw to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  %i.gy = icmp slt i32 %i.gx, 0
  br i1 %i.gy, label %.thread287, label %.preheader

.preheader:                                       ; preds = %bb.ax
  %i.gz = icmp sgt i32 %.0142, 0
  br i1 %i.gz, label %.lr.ph309, label %._crit_edge

.lr.ph309:                                        ; preds = %.preheader
  %i.ha = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph309, %.critedge
  %.0141308 = phi i32 [ 0, %.lr.ph309 ], [ %i.jk, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  store i8 1, ptr %i.i, align 1
  %i.hl = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i64 noundef 1, i32 noundef 1)
  %i.hm = trunc i64 %i.hl to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  %i.hn = icmp slt i32 %i.hm, 0
  br i1 %i.hn, label %.thread287, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ho = load i32, ptr %4, align 8, !tbaa !115   ; 4 uses
  store i32 0, ptr %i.u, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %i.ho)
  store i32 %7, ptr %i.ha, align 4, !tbaa !40
  %.not176.4 = icmp ult i32 %i.ho, 16777216
  br i1 %.not176.4, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %.not176.5 = icmp ult i32 %i.ho, 65536
  br i1 %.not176.5, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.not176.6 = icmp ult i32 %i.ho, 256
  %spec.select = select i1 %.not176.6, i32 1, i32 2
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.0140.lcssa = phi i32 [ 4, %bb.az ], [ 3, %bb.ba ], [ %spec.select, %bb.bb ] ; 3 uses
  %i.hp = load i64, ptr %i.hb, align 8, !tbaa !184
  %.not177 = icmp eq i64 %i.hp, 0
  %i.hq = trunc nuw nsw i32 %.0140.lcssa to i8    ; 2 uses
  br i1 %.not177, label %enc_uint64.exit251, label %enc_uint64.exit244

enc_uint64.exit244:                               ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.hr = or disjoint i8 %i.hq, 32
  store i8 %i.hr, ptr %i.h, align 1
  %i.hs = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %bb.bd

enc_uint64.exit251:                               ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  store i8 %i.hq, ptr %i.g, align 1
  %i.ht = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %bb.bd

bb.bd:                                            ; preds = %enc_uint64.exit251, %enc_uint64.exit244
  %.0138.in = phi i64 [ %i.hs, %enc_uint64.exit244 ], [ %i.ht, %enc_uint64.exit251 ]
  %.0138 = trunc i64 %.0138.in to i32             ; 2 uses
  %i.hu = icmp slt i32 %.0138, 0
  br i1 %i.hu, label %.thread287, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hv = sub nuw nsw i32 8, %.0140.lcssa
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.hw
  %i.hy = zext nneg i32 %.0140.lcssa to i64
  %i.hz = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.hx, i64 noundef %i.hy, i32 noundef 1)
  %i.ia = trunc i64 %i.hz to i32                  ; 2 uses
  %i.ib = icmp slt i32 %i.ia, 0
  br i1 %i.ib, label %.thread287, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ic = load i64, ptr %i.hb, align 8, !tbaa !184 ; 17 uses
  %.not178 = icmp eq i64 %i.ic, 0
  br i1 %.not178, label %.critedge, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.id = icmp ult i64 %i.ic, 128
  br i1 %i.id, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bg
  %.019.lcssa.wide.i255 = phi i64 [ 1, %bb.bg ], [ 2, %bb.bi ], [ 3, %bb.bj ], [ 4, %bb.bk ], [ 5, %bb.bl ], [ 6, %bb.bm ], [ 7, %bb.bn ], [ 8, %bb.bo ]
  %.01217.lcssa.i256 = phi i64 [ %i.ic, %bb.bg ], [ %i.ih, %bb.bi ], [ %i.ik, %bb.bj ], [ %i.in, %bb.bk ], [ %i.iq, %bb.bl ], [ %i.it, %bb.bm ], [ %i.iw, %bb.bn ], [ 0, %bb.bo ]
  %.lcssa.i257 = phi i8 [ 0, %bb.bg ], [ -128, %bb.bi ], [ -64, %bb.bj ], [ -32, %bb.bk ], [ -16, %bb.bl ], [ -8, %bb.bm ], [ -4, %bb.bn ], [ -2, %bb.bo ]
  %i.ie = trunc nuw nsw i64 %.01217.lcssa.i256 to i8
  %i.if = or i8 %.lcssa.i257, %i.ie
  br label %enc_uint64.exit258

bb.bi:                                            ; preds = %bb.bg
  %i.ig = trunc i64 %i.ic to i8
  store i8 %i.ig, ptr %i.hc, align 1, !tbaa !40
  %i.ih = lshr i64 %i.ic, 8                       ; 2 uses
  %i.ii = icmp ult i64 %i.ic, 16384
  br i1 %i.ii, label %bb.bh, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ij = trunc i64 %i.ih to i8
  store i8 %i.ij, ptr %i.hd, align 1, !tbaa !40
  %i.ik = lshr i64 %i.ic, 16                      ; 2 uses
  %i.il = icmp ult i64 %i.ic, 2097152
  br i1 %i.il, label %bb.bh, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.im = trunc i64 %i.ik to i8
  store i8 %i.im, ptr %i.he, align 1, !tbaa !40
  %i.in = lshr i64 %i.ic, 24                      ; 2 uses
  %i.io = icmp ult i64 %i.ic, 268435456
  br i1 %i.io, label %bb.bh, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ip = trunc i64 %i.in to i8
  store i8 %i.ip, ptr %i.hf, align 1, !tbaa !40
  %i.iq = lshr i64 %i.ic, 32                      ; 2 uses
  %i.ir = icmp ult i64 %i.ic, 34359738368
  br i1 %i.ir, label %bb.bh, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.is = trunc i64 %i.iq to i8
  store i8 %i.is, ptr %i.hg, align 1, !tbaa !40
  %i.it = lshr i64 %i.ic, 40                      ; 2 uses
  %i.iu = icmp ult i64 %i.ic, 4398046511104
  br i1 %i.iu, label %bb.bh, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iv = trunc i64 %i.it to i8
  store i8 %i.iv, ptr %i.hh, align 1, !tbaa !40
  %i.iw = lshr i64 %i.ic, 48                      ; 2 uses
  %i.ix = icmp ult i64 %i.ic, 562949953421312
  br i1 %i.ix, label %bb.bh, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iy = trunc i64 %i.iw to i8
  store i8 %i.iy, ptr %i.hi, align 1, !tbaa !40
  %i.iz = lshr i64 %i.ic, 56                      ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %bb.bh, label %.loopexit.i252

.loopexit.i252:                                   ; preds = %bb.bo
  %i.jb = trunc nuw i64 %i.iz to i8
  store i8 %i.jb, ptr %i.hj, align 1, !tbaa !40
  br label %enc_uint64.exit258

enc_uint64.exit258:                               ; preds = %bb.bh, %.loopexit.i252
  %storemerge.i253 = phi i8 [ -1, %.loopexit.i252 ], [ %i.if, %bb.bh ]
  %.014.i254 = phi i64 [ 9, %.loopexit.i252 ], [ %.019.lcssa.wide.i255, %bb.bh ]
  store i8 %storemerge.i253, ptr %i.f, align 1
  %i.jc = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef %.014.i254, i32 noundef 1)
  %i.jd = trunc i64 %i.jc to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  %i.je = icmp slt i32 %i.jd, 0
  br i1 %i.je, label %.thread287, label %bb.bp

bb.bp:                                            ; preds = %enc_uint64.exit258
  %i.jf = load ptr, ptr %i.hk, align 8, !tbaa !185
  %i.jg = load i64, ptr %i.hb, align 8, !tbaa !184
  %i.jh = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef %i.jf, i64 noundef %i.jg, i32 noundef 1)
  %i.ji = trunc i64 %i.jh to i32                  ; 2 uses
  %i.jj = icmp slt i32 %i.ji, 0
  br i1 %i.jj, label %.thread287, label %.critedge

.critedge:                                        ; preds = %bb.bp, %bb.bf
  %i.jk = add nuw nsw i32 %.0141308, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.jk, %.0142
  br i1 %exitcond.not, label %._crit_edge, label %bb.ay, !llvm.loop !182

._crit_edge:                                      ; preds = %.critedge, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i8 12, ptr %i.e, align 1
  %i.jl = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 1, i32 noundef 1)
  %i.jm = trunc i64 %i.jl to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.jn = icmp slt i32 %i.jm, 0
  br i1 %i.jn, label %.thread287, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge
  br i1 %i.cr, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.jo = getelementptr inbounds nuw i8, ptr %i.x, i64 61720
  %.0310 = load ptr, ptr %i.jo, align 8, !tbaa !60 ; 2 uses
  %.not174311 = icmp eq ptr %.0310, null
  br i1 %.not174311, label %.thread291, label %.lr.ph314

bb.bs:                                            ; preds = %bb.bt
  %i.jp = getelementptr inbounds nuw i8, ptr %.0312, i64 24
  %.0 = load ptr, ptr %i.jp, align 8, !tbaa !60   ; 2 uses
  %.not174 = icmp eq ptr %.0, null
  br i1 %.not174, label %.thread291, label %.lr.ph314, !llvm.loop !183

.lr.ph314:                                        ; preds = %bb.br, %bb.bs
  %.0312 = phi ptr [ %.0, %bb.bs ], [ %.0310, %bb.br ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.0312, i64 48
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !50 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 0
  br i1 %i.js, label %.thread291, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph314
  %i.jt = call fastcc i32 @enc_uint64(ptr noundef nonnull %0, i64 noundef %i.jr) ; 2 uses
  %i.ju = icmp slt i32 %i.jt, 0
  br i1 %i.ju, label %.thread287, label %bb.bs

bb.bu:                                            ; preds = %bb.bq
  %i.jv = call fastcc i32 @enc_uint64(ptr noundef nonnull %0, i64 noundef %3) ; 2 uses
  %i.jw = icmp slt i32 %i.jv, 0
  br i1 %i.jw, label %.thread287, label %.thread291

.thread291:                                       ; preds = %.lr.ph314, %bb.bs, %bb.br, %bb.bu
  %.not175 = icmp eq i32 %5, 0
  br i1 %.not175, label %bb.bv, label %.thread298

bb.bv:                                            ; preds = %.thread291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i8 10, ptr %i.d, align 1
  %i.jx = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef 1, i32 noundef 1)
  %i.jy = trunc i64 %i.jx to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.jz = icmp slt i32 %i.jy, 0
  br i1 %i.jz, label %.thread295, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i8 1, ptr %i.c, align 1
  %i.ka = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1, i32 noundef 1)
  %i.kb = trunc i64 %i.ka to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.kc = icmp slt i32 %i.kb, 0
  br i1 %i.kc, label %.thread295, label %bb.bx

end_hunk_1
begin_hunk_2_@make_substreamsInfo:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.p

bb.p:                                             ; preds = %enc_uint64.exit70, %bb.o
  %.043.in = phi ptr [ %i.bj, %bb.o ], [ %i.bs, %enc_uint64.exit70 ]
  %.043 = load ptr, ptr %.043.in, align 8, !tbaa !60 ; 3 uses
  %.not56 = icmp eq ptr %.043, null
  br i1 %.not56, label %.loopexit92, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.043, i64 24 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !59 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.loopexit92, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !50
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.loopexit92, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %.043, i64 48
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !50 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.ca = icmp ult i64 %i.bz, 128
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.s
  %.019.lcssa.wide.i67 = phi i64 [ 1, %bb.s ], [ 2, %bb.u ], [ 3, %bb.v ], [ 4, %bb.w ], [ 5, %bb.x ], [ 6, %bb.y ], [ 7, %bb.z ], [ 8, %bb.aa ]
  %.01217.lcssa.i68 = phi i64 [ %i.bz, %bb.s ], [ %i.ce, %bb.u ], [ %i.ch, %bb.v ], [ %i.ck, %bb.w ], [ %i.cn, %bb.x ], [ %i.cq, %bb.y ], [ %i.ct, %bb.z ], [ 0, %bb.aa ]
  %.lcssa.i69 = phi i8 [ 0, %bb.s ], [ -128, %bb.u ], [ -64, %bb.v ], [ -32, %bb.w ], [ -16, %bb.x ], [ -8, %bb.y ], [ -4, %bb.z ], [ -2, %bb.aa ]
  %i.cb = trunc nuw nsw i64 %.01217.lcssa.i68 to i8
  %i.cc = or i8 %.lcssa.i69, %i.cb
  br label %enc_uint64.exit70

bb.u:                                             ; preds = %bb.s
  %i.cd = trunc i64 %i.bz to i8
  store i8 %i.cd, ptr %i.bk, align 1, !tbaa !40
  %i.ce = lshr i64 %i.bz, 8                       ; 2 uses
  %i.cf = icmp ult i64 %i.bz, 16384
  br i1 %i.cf, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = trunc i64 %i.ce to i8
  store i8 %i.cg, ptr %i.bl, align 1, !tbaa !40
  %i.ch = lshr i64 %i.bz, 16                      ; 2 uses
  %i.ci = icmp ult i64 %i.bz, 2097152
  br i1 %i.ci, label %bb.t, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = trunc i64 %i.ch to i8
  store i8 %i.cj, ptr %i.bm, align 1, !tbaa !40
  %i.ck = lshr i64 %i.bz, 24                      ; 2 uses
  %i.cl = icmp ult i64 %i.bz, 268435456
  br i1 %i.cl, label %bb.t, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = trunc i64 %i.ck to i8
  store i8 %i.cm, ptr %i.bn, align 1, !tbaa !40
  %i.cn = lshr i64 %i.bz, 32                      ; 2 uses
  %i.co = icmp ult i64 %i.bz, 34359738368
  br i1 %i.co, label %bb.t, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = trunc i64 %i.cn to i8
  store i8 %i.cp, ptr %i.bo, align 1, !tbaa !40
  %i.cq = lshr i64 %i.bz, 40                      ; 2 uses
  %i.cr = icmp ult i64 %i.bz, 4398046511104
  br i1 %i.cr, label %bb.t, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = trunc i64 %i.cq to i8
  store i8 %i.cs, ptr %i.bp, align 1, !tbaa !40
  %i.ct = lshr i64 %i.bz, 48                      ; 2 uses
  %i.cu = icmp ult i64 %i.bz, 562949953421312
  br i1 %i.cu, label %bb.t, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = trunc i64 %i.ct to i8
  store i8 %i.cv, ptr %i.bq, align 1, !tbaa !40
  %i.cw = lshr i64 %i.bz, 56                      ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.t, label %.loopexit.i64

.loopexit.i64:                                    ; preds = %bb.aa
  %i.cy = trunc nuw i64 %i.cw to i8
  store i8 %i.cy, ptr %i.br, align 1, !tbaa !40
  br label %enc_uint64.exit70

enc_uint64.exit70:                                ; preds = %bb.t, %.loopexit.i64
  %storemerge.i65 = phi i8 [ -1, %.loopexit.i64 ], [ %i.cc, %bb.t ]
  %.014.i66 = phi i64 [ 9, %.loopexit.i64 ], [ %.019.lcssa.wide.i67, %bb.t ]
  store i8 %storemerge.i65, ptr %i.d, align 1
  %i.cz = call fastcc i64 @compress_out(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i64 noundef %.014.i66, i32 noundef 1)
  %i.da = trunc i64 %i.cz to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %.loopexit93, label %bb.p, !llvm.loop !188

.loopexit92:                                      ; preds = %bb.p, %bb.r, %bb.q, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i8 10, ptr %i.c, align 1
  %i.dc = call fastcc i64 @compress_out(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 1, i32 noundef 1)
  %i.dd = trunc i64 %i.dc to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %.loopexit93, label %bb.ab

bb.ab:                                            ; preds = %.loopexit92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i8 1, ptr %i.b, align 1
  %i.df = call fastcc i64 @compress_out(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 1, i32 noundef 1)
  %i.dg = trunc i64 %i.df to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %.loopexit93, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 61720
  %.195 = load ptr, ptr %i.di, align 8, !tbaa !60 ; 2 uses
  %.not5796 = icmp eq ptr %.195, null
  br i1 %.not5796, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac, %bb.af
  %.197 = phi ptr [ %.1, %bb.af ], [ %.195, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  %i.dj = getelementptr inbounds nuw i8, ptr %.197, i64 48
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !50
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.dm = getelementptr inbounds nuw i8, ptr %.197, i64 116
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !65
  store i32 %i.dn, ptr %i.i, align 4
  %i.do = call fastcc i64 @compress_out(ptr noundef %0, ptr noundef nonnull %i.i, i64 noundef 4, i32 noundef 1)
  %i.dp = trunc i64 %i.do to i32                  ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  br i1 %i.dq, label %.loopexit93, label %bb.af

bb.ae:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %.197, i64 24
  %.1 = load ptr, ptr %i.dr, align 8, !tbaa !60   ; 2 uses
  %.not57 = icmp eq ptr %.1, null
  br i1 %.not57, label %.loopexit, label %.lr.ph, !llvm.loop !189

.loopexit:                                        ; preds = %bb.af, %bb.ac, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 0, ptr %i.a, align 1
  %i.ds = call fastcc i64 @compress_out(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef 1)
  %i.dt = trunc i64 %i.ds to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.58 = call i32 @llvm.smin.i32(i32 %i.dt, i32 0)
  br label %.loopexit93

.loopexit93:                                      ; preds = %enc_uint64.exit70, %bb.ad, %.loopexit, %bb.ab, %.loopexit92, %bb.n, %enc_uint64.exit, %bb.d, %bb.a
  %.2 = phi i32 [ %i.bh, %bb.n ], [ %i.m, %bb.a ], [ %i.t, %bb.d ], [ %i.be, %enc_uint64.exit ], [ %i.dg, %bb.ab ], [ %i.dd, %.loopexit92 ], [ %i.dp, %bb.ad ], [ %.58, %.loopexit ], [ %i.da, %enc_uint64.exit70 ]
  ret i32 %.2
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

declare i32 @__archive_write_output(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS14archive_vtable", !10, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"archive_string", !12, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!"p1 _ZTS19archive_string_conv", !10, i64 0}
!16 = !{!"archive", !7, i64 0, !7, i64 4, !11, i64 8, !7, i64 16, !12, i64 24, !7, i64 32, !7, i64 36, !12, i64 40, !14, i64 48, !12, i64 72, !7, i64 80, !7, i64 84, !15, i64 88, !12, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !6, i64 128, !13, i64 136}
!17 = !{!"p1 _ZTS20archive_write_filter", !10, i64 0}
!18 = !{!"archive_write", !16, i64 0, !7, i64 144, !13, i64 152, !13, i64 160, !12, i64 168, !13, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !7, i64 224, !7, i64 228, !17, i64 232, !17, i64 240, !10, i64 248, !12, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !12, i64 320, !10, i64 328, !10, i64 336}
!19 = !{!"p1 _ZTS4file", !10, i64 0}
!20 = !{!"la_zstream", !12, i64 0, !13, i64 8, !13, i64 16, !12, i64 24, !13, i64 32, !13, i64 40, !7, i64 48, !12, i64 56, !7, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!21 = !{!"coder", !7, i64 0, !13, i64 8, !12, i64 16}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"p2 _ZTS4file", !22, i64 0}
!24 = !{!"", !19, i64 0, !23, i64 8}
!25 = !{!"p1 _ZTS15archive_rb_node", !10, i64 0}
!26 = !{!"p1 _ZTS19archive_rb_tree_ops", !10, i64 0}
!27 = !{!"archive_rb_tree", !25, i64 0, !26, i64 8}
!28 = !{!"_7zip", !7, i64 0, !13, i64 8, !19, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !6, i64 64, !13, i64 88, !13, i64 96, !13, i64 104, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !20, i64 144, !21, i64 240, !15, i64 264, !6, i64 272, !13, i64 61712, !24, i64 61720, !24, i64 61736, !27, i64 61752}
!29 = !{!28, !7, i64 0}
!30 = !{!28, !19, i64 61720}
!31 = !{!28, !23, i64 61728}
!32 = !{!28, !19, i64 61736}
!33 = !{!28, !23, i64 61744}
!34 = !{!7, !7, i64 0}
!35 = !{!18, !10, i64 248}
!36 = !{!"archive_rb_node", !6, i64 0, !13, i64 16}
!37 = !{!"file", !36, i64 0, !19, i64 24, !7, i64 32, !12, i64 40, !13, i64 48, !7, i64 56, !6, i64 64, !7, i64 112, !7, i64 116, !7, i64 120}
!38 = !{!37, !7, i64 32}
!39 = !{!37, !12, i64 40}
!40 = !{!6, !6, i64 0}
!41 = !{!28, !7, i64 128}
!42 = !{!12, !12, i64 0}
!43 = !{!28, !7, i64 132}
!44 = !{!28, !7, i64 136}
!45 = !{!28, !7, i64 140}
!46 = !{!28, !19, i64 16}
!47 = !{!28, !13, i64 104}
!48 = !{!13, !13, i64 0}
!49 = !{!37, !7, i64 112}
!50 = !{!37, !13, i64 48}
!51 = !{!37, !7, i64 56}
!52 = !{!"", !13, i64 0, !13, i64 8}
!53 = !{!52, !13, i64 0}
!54 = !{!52, !13, i64 8}
!55 = !{!28, !13, i64 24}
!56 = !{!28, !13, i64 56}
!57 = !{!28, !13, i64 40}
!58 = !{!28, !13, i64 48}
!59 = !{!37, !19, i64 24}
!60 = !{!19, !19, i64 0}
!61 = !{!28, !7, i64 112}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!28, !13, i64 160}
!64 = !{!28, !13, i64 184}
!65 = !{!37, !7, i64 116}
!66 = !{!28, !12, i64 256}
!67 = !{!28, !13, i64 32}
!68 = !{!28, !7, i64 124}
!69 = !{!28, !7, i64 116}
!70 = !{!20, !7, i64 64}
!71 = !{!20, !7, i64 48}
!72 = !{!20, !12, i64 56}
!73 = !{!20, !10, i64 88}
!74 = !{!20, !10, i64 80}
!75 = !{!10, !10, i64 0}
!76 = !{!28, !12, i64 168}
!77 = !{!28, !13, i64 176}
!78 = !{!28, !7, i64 120}
!79 = !{!28, !13, i64 8}
!80 = !{!20, !12, i64 0}
!81 = !{!"p1 _ZTS14internal_state", !10, i64 0}
!82 = !{!"z_stream_s", !12, i64 0, !7, i64 8, !13, i64 16, !12, i64 24, !7, i64 32, !13, i64 40, !12, i64 48, !81, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !7, i64 88, !13, i64 96, !13, i64 104}
!83 = !{!82, !12, i64 0}
!84 = !{!20, !13, i64 8}
!85 = !{!82, !7, i64 8}
!86 = !{!20, !13, i64 16}
!87 = !{!82, !13, i64 16}
!88 = !{!20, !12, i64 24}
!89 = !{!82, !12, i64 24}
!90 = !{!20, !13, i64 32}
!91 = !{!82, !7, i64 32}
!92 = !{!20, !13, i64 40}
!93 = !{!82, !13, i64 40}
!94 = !{!20, !10, i64 72}
!95 = !{!"", !12, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !12, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!96 = !{!95, !12, i64 0}
!97 = !{!95, !7, i64 8}
!98 = !{!95, !12, i64 24}
!99 = !{!95, !7, i64 32}
!100 = !{!"p1 _ZTS15CPpmd7_Context_", !10, i64 0}
!101 = !{!"short", !6, i64 0}
!102 = !{!"", !101, i64 0, !6, i64 2, !6, i64 3}
!103 = !{!"", !100, i64 0, !100, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !7, i64 104, !6, i64 108, !6, i64 146, !6, i64 276, !6, i64 428, !6, i64 684, !6, i64 940, !102, i64 1196, !6, i64 1200, !6, i64 2800}
!104 = !{!"long long", !6, i64 0}
!105 = !{!"", !104, i64 0, !7, i64 8, !6, i64 12, !104, i64 16, !10, i64 24}
!106 = !{!"p1 _ZTS13archive_write", !10, i64 0}
!107 = !{!"", !106, i64 0, !10, i64 8}
!108 = !{!"ppmd_stream", !7, i64 0, !103, i64 8, !105, i64 19192, !107, i64 19224, !12, i64 19240, !12, i64 19248, !12, i64 19256, !13, i64 19264}
!109 = !{!108, !12, i64 19240}
!110 = !{!108, !12, i64 19248}
!111 = !{!108, !12, i64 19256}
!112 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!113 = !{!108, !7, i64 0}
!114 = !{!108, !13, i64 19264}
!115 = !{!21, !7, i64 0}
!116 = !{!18, !10, i64 312}
!117 = !{!18, !12, i64 256}
!118 = !{!18, !10, i64 272}
!119 = !{!18, !10, i64 288}
!120 = !{!18, !10, i64 296}
!121 = !{!18, !10, i64 280}
!122 = !{!18, !10, i64 304}
!123 = !{!18, !7, i64 16}
!124 = !{!18, !12, i64 24}
!125 = !{!28, !15, i64 264}
!126 = distinct !{!126, !62}
!127 = !{!18, !13, i64 176}
!128 = !{!18, !12, i64 168}
!129 = !{!28, !13, i64 88}
!130 = !{!28, !13, i64 96}
!131 = distinct !{!131, !62}
!132 = distinct !{!132, !62}
!133 = distinct !{!133, !62}
!134 = distinct !{!134, !62}
!135 = distinct !{!135, !62}
!136 = distinct !{ptr @_7z_compression_init_encoder, null, null}
!137 = distinct !{!137, !62}
!138 = !{!28, !7, i64 240}
!139 = !{!28, !7, i64 192}
!140 = !{!28, !13, i64 248}
!141 = !{!28, !12, i64 200}
!142 = !{!28, !13, i64 61712}
!143 = distinct !{!143, !62}
!144 = distinct !{null, null}
!145 = distinct !{null, null}
!146 = distinct !{null, null}
!147 = distinct !{null}
!148 = distinct !{null, null}
!149 = distinct !{null, null}
!150 = !{!112, !10, i64 0}
!151 = !{!112, !10, i64 8}
!152 = !{!112, !10, i64 24}
!153 = !{!108, !106, i64 19224}
!154 = !{!108, !10, i64 19232}
!155 = !{!108, !10, i64 19216}
!156 = !{!112, !10, i64 72}
!157 = distinct !{null}
!158 = distinct !{!158, !62}
!159 = !{!28, !12, i64 144}
!160 = !{!28, !13, i64 152}
!161 = !{!"", !13, i64 0, !10, i64 8}
!162 = !{!161, !13, i64 0}
!163 = !{!161, !10, i64 8}
!164 = !{!"p1 _ZTS15lzma_internal_s", !10, i64 0}
!165 = !{!"", !12, i64 0, !13, i64 8, !13, i64 16, !12, i64 24, !13, i64 32, !13, i64 40, !10, i64 48, !164, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !7, i64 128, !7, i64 132}
!166 = !{!165, !12, i64 0}
!167 = !{!165, !12, i64 24}
!168 = !{!107, !106, i64 0}
!169 = distinct !{!169, !62}
!170 = distinct !{!170, !62}
!171 = !{!112, !10, i64 80}
!172 = !{!112, !10, i64 16}
end_hunk_2
