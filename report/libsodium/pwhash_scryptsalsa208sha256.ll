Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/pwhash_scryptsalsa208sha256?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@pickparams:bb.a
  %i.bo = icmp ult i64 %1, 8192
  br i1 %i.bo, label %bb.dg, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.bp = icmp ult i64 %1, 16384
  br i1 %i.bp, label %bb.dg, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.bq = icmp ult i64 %1, 32768
  br i1 %i.bq, label %bb.dg, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.br = icmp ult i64 %1, 65536
  br i1 %i.br, label %bb.dg, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.bs = icmp ult i64 %1, 131072
  br i1 %i.bs, label %bb.dg, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.bt = icmp ult i64 %1, 262144
  br i1 %i.bt, label %bb.dg, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.bu = icmp ult i64 %1, 524288
  br i1 %i.bu, label %bb.dg, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.bv = icmp ult i64 %1, 1048576
  br i1 %i.bv, label %bb.dg, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.bw = icmp ult i64 %1, 2097152
  br i1 %i.bw, label %bb.dg, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.bx = icmp ult i64 %1, 4194304
  br i1 %i.bx, label %bb.dg, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.by = icmp ult i64 %1, 8388608
  br i1 %i.by, label %bb.dg, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.bz = icmp ult i64 %1, 16777216
  br i1 %i.bz, label %bb.dg, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ca = icmp ult i64 %1, 33554432
  br i1 %i.ca, label %bb.dg, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.cb = icmp ult i64 %1, 67108864
  br i1 %i.cb, label %bb.dg, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.cc = icmp ult i64 %1, 134217728
  br i1 %i.cc, label %bb.dg, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.cd = icmp ult i64 %1, 268435456
  br i1 %i.cd, label %bb.dg, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ce = icmp ult i64 %1, 536870912
  br i1 %i.ce, label %bb.dg, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.cf = icmp ult i64 %1, 1073741824
  br i1 %i.cf, label %bb.dg, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.cg = icmp ult i64 %1, 2147483648
  br i1 %i.cg, label %bb.dg, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ch = icmp ult i64 %1, 4294967296
  br i1 %i.ch, label %bb.dg, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ci = icmp ult i64 %1, 8589934592
  br i1 %i.ci, label %bb.dg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.cj = icmp ult i64 %1, 17179869184
  br i1 %i.cj, label %bb.dg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ck = icmp ult i64 %1, 34359738368
  br i1 %i.ck, label %bb.dg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.cl = icmp ult i64 %1, 68719476736
  br i1 %i.cl, label %bb.dg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.cm = icmp ult i64 %1, 137438953472
  br i1 %i.cm, label %bb.dg, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.cn = icmp ult i64 %1, 274877906944
  br i1 %i.cn, label %bb.dg, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.co = icmp ult i64 %1, 549755813888
  br i1 %i.co, label %bb.dg, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.cp = icmp ult i64 %1, 1099511627776
  br i1 %i.cp, label %bb.dg, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.cq = icmp ult i64 %1, 2199023255552
  br i1 %i.cq, label %bb.dg, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.cr = icmp ult i64 %1, 4398046511104
  br i1 %i.cr, label %bb.dg, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.cs = icmp ult i64 %1, 8796093022208
  br i1 %i.cs, label %bb.dg, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ct = icmp ult i64 %1, 17592186044416
  br i1 %i.ct, label %bb.dg, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.cu = icmp ult i64 %1, 35184372088832
  br i1 %i.cu, label %bb.dg, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.cv = icmp ult i64 %1, 70368744177664
  br i1 %i.cv, label %bb.dg, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.cw = icmp ult i64 %1, 140737488355328
  br i1 %i.cw, label %bb.dg, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.cx = icmp ult i64 %1, 281474976710656
  br i1 %i.cx, label %bb.dg, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.cy = icmp ult i64 %1, 562949953421312
  br i1 %i.cy, label %bb.dg, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.cz = icmp ult i64 %1, 1125899906842624
  br i1 %i.cz, label %bb.dg, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.da = icmp ult i64 %1, 2251799813685248
  br i1 %i.da, label %bb.dg, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.db = icmp ult i64 %1, 4503599627370496
  br i1 %i.db, label %bb.dg, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.dc = icmp ult i64 %1, 9007199254740992
  br i1 %i.dc, label %bb.dg, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.dd = icmp ult i64 %1, 18014398509481984
  br i1 %i.dd, label %bb.dg, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.de = icmp ult i64 %1, 36028797018963968
  br i1 %i.de, label %bb.dg, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.df = icmp ult i64 %1, 72057594037927936
  br i1 %i.df, label %bb.dg, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.dg = icmp ult i64 %1, 144115188075855872
  br i1 %i.dg, label %bb.dg, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.dh = icmp ult i64 %1, 288230376151711744
  br i1 %i.dh, label %bb.dg, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.di = icmp ult i64 %1, 576460752303423488
  br i1 %i.di, label %bb.dg, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.dj = icmp ult i64 %1, 1152921504606846976
  br i1 %i.dj, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.dk = icmp ult i64 %1, 2305843009213693952
  br i1 %i.dk, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.dl = icmp ult i64 %1, 4611686018427387904
  br i1 %i.dl, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.dm = icmp sgt i64 %1, -1
  %spec.select33.a = select i1 %i.dm, i32 52, i32 53
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.preheader
  %storemerge.lcssa28.a = phi i32 [ 1, %.preheader ], [ 44, %bb.cx ], [ 2, %bb.bh ], [ 28, %bb.ch ], [ 3, %bb.bi ], [ 47, %bb.da ], [ 4, %bb.bj ], [ 49, %bb.dc ], [ 5, %bb.bk ], [ 33, %bb.cm ], [ 6, %bb.bl ], [ 29, %bb.ci ], [ 7, %bb.bm ], [ 40, %bb.ct ], [ 8, %bb.bn ], [ 39, %bb.cs ], [ 9, %bb.bo ], [ 34, %bb.cn ], [ 10, %bb.bp ], [ 30, %bb.cj ], [ 11, %bb.bq ], [ 46, %bb.cz ], [ 12, %bb.br ], [ 48, %bb.db ], [ 13, %bb.bs ], [ 35, %bb.co ], [ 14, %bb.bt ], [ 31, %bb.ck ], [ 15, %bb.bu ], [ 43, %bb.cw ], [ 16, %bb.bv ], [ 42, %bb.cv ], [ 17, %bb.bw ], [ 36, %bb.cp ], [ 18, %bb.bx ], [ 32, %bb.cl ], [ 19, %bb.by ], [ 45, %bb.cy ], [ 20, %bb.bz ], [ 27, %bb.cg ], [ 21, %bb.ca ], [ 37, %bb.cq ], [ 22, %bb.cb ], [ %spec.select33.a, %bb.df ], [ 23, %bb.cc ], [ 41, %bb.cu ], [ 24, %bb.cd ], [ 51, %bb.de ], [ 25, %bb.ce ], [ 38, %bb.cr ], [ 26, %bb.cf ], [ 50, %bb.dd ] ; 2 uses
  store i32 %storemerge.lcssa28.a, ptr %2, align 4
  %i.dn = lshr i64 %spec.store.select, 2
  %5 = zext nneg i32 %storemerge.lcssa28.a to i64
  %i.do = lshr i64 %i.dn, %5
  %spec.store.select1 = tail call i64 @llvm.umin.i64(i64 %i.do, i64 1073741823)
  %i.dp = trunc nuw nsw i64 %spec.store.select1 to i32
  %i.dq = load i32, ptr %4, align 4
  %i.dr = udiv i32 %i.dp, %i.dq
  store i32 %i.dr, ptr %3, align 4
  br label %bb.dh

.loopexit:                                        ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %storemerge26.lcssa = phi i32 [ 1, %bb.b ], [ 48, %bb.aw ], [ 2, %bb.c ], [ 31, %bb.af ], [ 3, %bb.d ], [ 47, %bb.av ], [ 4, %bb.e ], [ 42, %bb.aq ], [ 5, %bb.f ], [ 33, %bb.ah ], [ 6, %bb.g ], [ 32, %bb.ag ], [ 7, %bb.h ], [ 40, %bb.ao ], [ 8, %bb.i ], [ 30, %bb.ae ], [ 9, %bb.j ], [ 34, %bb.ai ], [ 10, %bb.k ], [ %spec.select, %bb.bg ], [ 11, %bb.l ], [ 46, %bb.au ], [ 12, %bb.m ], [ 57, %bb.bf ], [ 13, %bb.n ], [ 35, %bb.aj ], [ 14, %bb.o ], [ 56, %bb.be ], [ 15, %bb.p ], [ 43, %bb.ar ], [ 16, %bb.q ], [ 55, %bb.bd ], [ 17, %bb.r ], [ 36, %bb.ak ], [ 18, %bb.s ], [ 54, %bb.bc ], [ 19, %bb.t ], [ 45, %bb.at ], [ 20, %bb.u ], [ 53, %bb.bb ], [ 21, %bb.v ], [ 37, %bb.al ], [ 22, %bb.w ], [ 52, %bb.ba ], [ 23, %bb.x ], [ 41, %bb.ap ], [ 24, %bb.y ], [ 51, %bb.az ], [ 25, %bb.z ], [ 38, %bb.am ], [ 26, %bb.aa ], [ 50, %bb.ay ], [ 27, %bb.ab ], [ 44, %bb.as ], [ 28, %bb.ac ], [ 49, %bb.ax ], [ 29, %bb.ad ], [ 39, %bb.an ]
  store i32 %storemerge26.lcssa, ptr %2, align 4
  br label %bb.dh

bb.dh:                                            ; preds = %.loopexit, %bb.dg
  ret void
}

declare i32 @crypto_pwhash_scryptsalsa208sha256_ll(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind ssp uwtable
define dso_local range(i32 -1, 1) i32 @crypto_pwhash_scryptsalsa208sha256_str(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [58 x i8], align 16               ; 4 uses
  %5 = alloca %struct.escrypt_region_t, align 8   ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(102) %0, i8 noundef 0, i64 noundef 102, i1 noundef false) #8
  call fastcc void @pickparams(i64 noundef %3, i64 noundef %4, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  call void @randombytes_buf(ptr noundef nonnull %i.a, i64 noundef 32) #8
  %i.f = load i32, ptr %i.c, align 4
  %i.g = load i32, ptr %i.e, align 4
  %i.h = load i32, ptr %i.d, align 4
  %i.i = call ptr @escrypt_gensalt_r(i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %i.b, i64 noundef 58) #8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @escrypt_init_local(ptr noundef nonnull %5) #8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = call ptr @escrypt_r(ptr noundef nonnull %5, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %0, i64 noundef 102) #8
  %i.m = icmp eq ptr %i.l, null
  %i.n = call i32 @escrypt_free_local(ptr noundef nonnull %5) #8 ; 0 uses
  br i1 %i.m, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.a
  %i.o = tail call ptr @__errno_location() #9
  store i32 22, ptr %i.o, align 4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ -1, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

declare void @randombytes_buf(ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @escrypt_gensalt_r(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @escrypt_init_local(ptr noundef) local_unnamed_addr #5

declare ptr @escrypt_r(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @escrypt_free_local(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define dso_local i32 @crypto_pwhash_scryptsalsa208sha256_str_verify(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [102 x i8], align 16              ; 6 uses
  %3 = alloca %struct.escrypt_region_t, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  fence acquire
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.05.i = phi i64 [ 0, %bb.a ], [ %i.s, %bb.h ]  ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 %.05.i
  %i.c = load i8, ptr %i.b, align 1
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %sodium_strnlen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = or disjoint i64 %.05.i, 1                ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %.not.i.1 = icmp eq i8 %i.f, 0
  br i1 %.not.i.1, label %sodium_strnlen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %.05.i, 2                ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %.not.i.2 = icmp eq i8 %i.i, 0
  br i1 %.not.i.2, label %sodium_strnlen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw nsw i64 %.05.i, 3                ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  %.not.i.3 = icmp eq i8 %i.l, 0
  br i1 %.not.i.3, label %sodium_strnlen.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i64 %.05.i, 4                ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %.not.i.4 = icmp eq i8 %i.o, 0
  br i1 %.not.i.4, label %sodium_strnlen.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add nuw nsw i64 %.05.i, 5                ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %.not.i.5 = icmp eq i8 %i.r, 0
  br i1 %.not.i.5, label %sodium_strnlen.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw nsw i64 %.05.i, 6                ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %i.s, 102
  br i1 %exitcond.not.i.5, label %sodium_strnlen.exit.thread, label %bb.b, !llvm.loop !0

sodium_strnlen.exit:                              ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.05.i.lcssa = phi i64 [ %.05.i, %bb.b ], [ %i.d, %bb.c ], [ %i.g, %bb.d ], [ %i.j, %bb.e ], [ %i.m, %bb.f ], [ %i.p, %bb.g ]
  %.not = icmp eq i64 %.05.i.lcssa, 101
  br i1 %.not, label %bb.i, label %sodium_strnlen.exit.thread

bb.i:                                             ; preds = %sodium_strnlen.exit
  %i.t = call i32 @escrypt_init_local(ptr noundef nonnull %3) #8
  %.not6 = icmp eq i32 %i.t, 0
  br i1 %.not6, label %bb.j, label %sodium_strnlen.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(102) %i.a, i8 noundef 0, i64 noundef 102, i1 noundef false) #8
  %i.u = call ptr @escrypt_r(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 102) #8
  %i.v = icmp eq ptr %i.u, null
  %i.w = call i32 @escrypt_free_local(ptr noundef nonnull %3) #8 ; 0 uses
  br i1 %i.v, label %sodium_strnlen.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = call i32 @sodium_memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %0, i64 noundef 102) #8
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 102) #8
  br label %sodium_strnlen.exit.thread

sodium_strnlen.exit.thread:                       ; preds = %bb.h, %bb.j, %bb.i, %sodium_strnlen.exit, %bb.k
  %.0 = phi i32 [ %i.x, %bb.k ], [ -1, %sodium_strnlen.exit ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

declare i32 @sodium_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define dso_local range(i32 -1, 2) i32 @crypto_pwhash_scryptsalsa208sha256_str_needs_rehash(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call fastcc void @pickparams(i64 noundef %1, i64 noundef %2, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.e)
  fence acquire
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.05.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.h ]  ; 8 uses
  %i.g = getelementptr i8, ptr %0, i64 %.05.i
  %i.h = load i8, ptr %i.g, align 1
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %sodium_strnlen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
