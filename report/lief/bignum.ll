Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/bignum?download=true
inline.NumInlined: 198
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@mbedtls_mpi_lsb:bb.a

bb.d:                                             ; preds = %bb.b
  %i.j = add nuw nsw i64 %.011, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.c
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !0

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  %.08 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i64 %.08
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define hidden i64 @mbedtls_mpi_bitlen(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20
  %i.d = zext i16 %i.c to i64
  %i.e = tail call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.a, i64 noundef %i.d) #17
  ret i64 %i.e
}

declare i64 @mbedtls_mpi_core_bitlen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i64 0, 2305843009213693952) i64 @mbedtls_mpi_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20
  %i.d = zext i16 %i.c to i64
  %i.e = tail call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.a, i64 noundef %i.d) #17
  %i.f = add i64 %i.e, 7
  %i.g = lshr i64 %i.f, 3
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_read_string(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.b = add i32 %1, -17
  %or.cond = icmp ult i32 %i.b, -15
  br i1 %or.cond, label %mbedtls_mpi_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 1, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  store i16 0, ptr %i.d, align 2, !tbaa !20
  store ptr null, ptr %4, align 8, !tbaa !23
  %i.e = load i8, ptr %2, align 1, !tbaa !28      ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %mbedtls_mpi_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !20
  %i.k = zext i16 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.h, i64 noundef %i.l) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.n, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  br label %mbedtls_mpi_free.exit

bb.g:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %i.e, 45                      ; 2 uses
  %spec.select.idx = zext i1 %i.o to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.idx ; 3 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #19 ; 7 uses
  %i.q = icmp eq i32 %1, 16
  br i1 %i.q, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ugt i64 %i.p, 4611686018427387903
  br i1 %i.r, label %mbedtls_mpi_free.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw nsw i64 %i.p, 15
  %i.t = lshr i64 %i.s, 4                         ; 3 uses
  %i.u = icmp samesign ugt i64 %i.p, 160000
  br i1 %i.u, label %mbedtls_mpi_grow.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !20   ; 3 uses
  %i.x = zext i16 %i.w to i64                     ; 2 uses
  %i.y = icmp samesign ugt i64 %i.t, %i.x
  br i1 %i.y, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.z = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 8) #18 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %mbedtls_mpi_grow.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %.not.i67 = icmp eq ptr %i.ab, null
  br i1 %.not.i67, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = shl nuw nsw i64 %i.x, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.ab, i64 %i.ac, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ab, i64 noundef %i.ac) #17
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m
  %i.ad = trunc nuw nsw i64 %i.t to i16           ; 2 uses
  store i16 %i.ad, ptr %i.v, align 2, !tbaa !20
  store ptr %i.z, ptr %0, align 8, !tbaa !23
  br label %._crit_edge.i

bb.n:                                             ; preds = %bb.j
  %i.ae = icmp eq i16 %i.w, 0
  br i1 %i.ae, label %bb.o, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.thread, %bb.n
  %i.af = phi i16 [ %i.ad, %.thread ], [ %i.w, %bb.n ]
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !23
  %i.ag = zext i16 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  br label %mbedtls_mpi_lset.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #18 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %mbedtls_mpi_grow.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ak, i64 noundef 0) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i16 1, ptr %i.v, align 2, !tbaa !20
  store ptr %i.ai, ptr %0, align 8, !tbaa !23
  br label %mbedtls_mpi_lset.exit

mbedtls_mpi_lset.exit:                            ; preds = %._crit_edge.i, %bb.r
  %i.al = phi i64 [ %i.ah, %._crit_edge.i ], [ 8, %bb.r ]
  %i.am = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ai, %bb.r ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.al, i1 false)
  %i.an = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  store i64 0, ptr %i.an, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.ao, align 8, !tbaa !21
  %.not6495 = icmp eq i64 %i.p, 0
  br i1 %.not6495, label %.loopexit, label %.lr.ph98

.lr.ph98:                                         ; preds = %mbedtls_mpi_lset.exit, %bb.s
  %.03997 = phi i64 [ %i.bk, %bb.s ], [ 0, %mbedtls_mpi_lset.exit ] ; 3 uses
  %.04096 = phi i64 [ %i.bj, %bb.s ], [ %i.p, %mbedtls_mpi_lset.exit ] ; 2 uses
  %i.ap = getelementptr i8, ptr %spec.select, i64 %.04096
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28  ; 4 uses
  %i.as = sext i8 %i.ar to i32                    ; 3 uses
  %i.at = add i8 %i.ar, -48
  %or.cond.i = icmp ult i8 %i.at, 10
  %i.au = add nsw i32 %i.as, -48
  %i.av = zext nneg i32 %i.au to i64
  %storemerge.i = select i1 %or.cond.i, i64 %i.av, i64 255
  %i.aw = add i8 %i.ar, -65
  %or.cond5.i = icmp ult i8 %i.aw, 6
  %i.ax = add nsw i32 %i.as, -55
  %i.ay = zext nneg i32 %i.ax to i64
  %storemerge24.i = select i1 %or.cond5.i, i64 %i.ay, i64 %storemerge.i
  %i.az = add i8 %i.ar, -97
  %or.cond8.i = icmp ult i8 %i.az, 6
  %i.ba = add nsw i32 %i.as, -87
  %i.bb = zext nneg i32 %i.ba to i64
  %storemerge25.i = select i1 %or.cond8.i, i64 %i.bb, i64 %storemerge24.i ; 2 uses
  %.not.i68 = icmp samesign ult i64 %storemerge25.i, 16
  br i1 %.not.i68, label %bb.s, label %mbedtls_mpi_grow.exit

bb.s:                                             ; preds = %.lr.ph98
  %i.bc = shl i64 %.03997, 2
  %i.bd = and i64 %i.bc, 60
  %i.be = shl nuw i64 %storemerge25.i, %i.bd
  %i.bf = lshr i64 %.03997, 4
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.bi = or i64 %i.bh, %i.be
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !26
  %i.bj = add nsw i64 %.04096, -1                 ; 2 uses
  %i.bk = add nuw i64 %.03997, 1
  %.not64 = icmp eq i64 %i.bj, 0
  br i1 %.not64, label %.loopexit, label %.lr.ph98, !llvm.loop !37

bb.t:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !20 ; 2 uses
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %bb.u, label %._crit_edge.i70

._crit_edge.i70:                                  ; preds = %bb.t
  %.pre.i71 = load ptr, ptr %0, align 8, !tbaa !23
  %i.bo = zext i16 %i.bm to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3
  br label %mbedtls_mpi_lset.exit74

bb.u:                                             ; preds = %bb.t
  %i.bq = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #18 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %mbedtls_mpi_grow.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i73, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bs, i64 noundef 0) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i16 1, ptr %i.bl, align 2, !tbaa !20
  store ptr %i.bq, ptr %0, align 8, !tbaa !23
  br label %mbedtls_mpi_lset.exit74

mbedtls_mpi_lset.exit74:                          ; preds = %._crit_edge.i70, %bb.x
  %i.bt = phi i64 [ %i.bp, %._crit_edge.i70 ], [ 8, %bb.x ]
  %i.bu = phi ptr [ %.pre.i71, %._crit_edge.i70 ], [ %i.bq, %bb.x ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.bt, i1 false)
  %i.bv = load ptr, ptr %0, align 8, !tbaa !23
  store i64 0, ptr %i.bv, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.bw, align 8, !tbaa !21
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %mbedtls_mpi_lset.exit74
  %i.bx = zext nneg i32 %1 to i64                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 10
  br label %bb.z

bb.y:                                             ; preds = %bb.ab
  %i.ca = add nuw i64 %.194, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.p
  br i1 %exitcond.not, label %.loopexit, label %bb.z, !llvm.loop !38

bb.z:                                             ; preds = %.lr.ph, %bb.y
  %.194 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.y ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.194
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !28  ; 4 uses
  %i.cd = sext i8 %i.cc to i32                    ; 3 uses
  %i.ce = add i8 %i.cc, -48
  %or.cond.i75 = icmp ult i8 %i.ce, 10
  %i.cf = add nsw i32 %i.cd, -48
  %i.cg = zext nneg i32 %i.cf to i64
  %storemerge.i76 = select i1 %or.cond.i75, i64 %i.cg, i64 255
  %i.ch = add i8 %i.cc, -65
  %or.cond5.i77 = icmp ult i8 %i.ch, 6
  %i.ci = add nsw i32 %i.cd, -55
  %i.cj = zext nneg i32 %i.ci to i64
  %storemerge24.i78 = select i1 %or.cond5.i77, i64 %i.cj, i64 %storemerge.i76
  %i.ck = add i8 %i.cc, -97
  %or.cond8.i79 = icmp ult i8 %i.ck, 6
  %i.cl = add nsw i32 %i.cd, -87
  %i.cm = zext nneg i32 %i.cl to i64
  %storemerge25.i80 = select i1 %or.cond8.i79, i64 %i.cm, i64 %storemerge24.i78 ; 2 uses
  %.not.i81 = icmp samesign ult i64 %storemerge25.i80, %i.bx
  br i1 %.not.i81, label %bb.aa, label %mbedtls_mpi_grow.exit

bb.aa:                                            ; preds = %bb.z
  %i.cn = call i32 @mbedtls_mpi_mul_int(ptr noundef nonnull %4, ptr noundef nonnull %0, i64 noundef %i.bx) ; 2 uses
  %.not60 = icmp eq i32 %i.cn, 0
  br i1 %.not60, label %bb.ab, label %mbedtls_mpi_grow.exit

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %storemerge25.i80, ptr %i.a, align 8, !tbaa !26
  store i16 1, ptr %i.by, align 8, !tbaa !21
  store i16 1, ptr %i.bz, align 2, !tbaa !20
  store ptr %i.a, ptr %3, align 8, !tbaa !23
  %i.co = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %3, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not61 = icmp eq i32 %i.co, 0
  br i1 %.not61, label %bb.y, label %mbedtls_mpi_grow.exit

.loopexit:                                        ; preds = %bb.y, %bb.s, %mbedtls_mpi_lset.exit74, %mbedtls_mpi_lset.exit
  br i1 %i.o, label %bb.ac, label %mbedtls_mpi_grow.exit

bb.ac:                                            ; preds = %.loopexit
  %i.cp = load ptr, ptr %0, align 8, !tbaa !23
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !20
  %i.cs = zext i16 %i.cr to i64
  %i.ct = call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.cp, i64 noundef %i.cs) #17
  %.not65 = icmp eq i64 %i.ct, 0
  br i1 %.not65, label %mbedtls_mpi_grow.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.cu, align 8, !tbaa !21
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.ab, %bb.aa, %bb.z, %.lr.ph98, %bb.u, %bb.o, %bb.k, %bb.i, %.loopexit, %bb.ac, %bb.ad
  %.3 = phi i32 [ -6, %.lr.ph98 ], [ -141, %bb.i ], [ -141, %bb.u ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %.loopexit ], [ -141, %bb.o ], [ -141, %bb.k ], [ %i.cn, %bb.aa ], [ -6, %bb.z ], [ %i.co, %bb.ab ] ; 2 uses
  %i.cv = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i83 = icmp eq ptr %i.cv, null
  br i1 %.not.i83, label %mbedtls_mpi_free.exit, label %bb.ae

bb.ae:                                            ; preds = %mbedtls_mpi_grow.exit
  %i.cw = load i16, ptr %i.d, align 2, !tbaa !20
  %i.cx = zext i16 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.cv, i64 noundef %i.cy) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.ae, %mbedtls_mpi_grow.exit, %bb.f, %bb.c, %bb.h, %bb.a
  %.044 = phi i32 [ 0, %bb.f ], [ -135, %bb.h ], [ -135, %bb.a ], [ 0, %bb.c ], [ %.3, %mbedtls_mpi_grow.exit ], [ %.3, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %.044
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_mul_int(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !20   ; 2 uses
  %.not31 = icmp eq i16 %i.b, 0
  br i1 %.not31, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext i16 %i.b to i64
  %i.d = load ptr, ptr %1, align 8, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01932 = phi i64 [ %i.c, %.lr.ph ], [ %i.i, %bb.c ] ; 6 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.01932
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i64 %.01932, -1                  ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.critedge.thread, label %bb.b, !llvm.loop !39

.critedge:                                        ; preds = %bb.b
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %.critedge.thread, label %bb.i

.critedge.thread:                                 ; preds = %bb.c, %bb.a, %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !20   ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.critedge.thread
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !23
  %i.n = zext i16 %i.l to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  br label %bb.h

bb.d:                                             ; preds = %.critedge.thread
  %i.p = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #18 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %mbedtls_mpi_lset.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.r, i64 noundef 0) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i16 1, ptr %i.k, align 2, !tbaa !20
  store ptr %i.p, ptr %0, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %i.s = phi i64 [ %i.o, %._crit_edge.i ], [ 8, %bb.g ]
  %i.t = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.p, %bb.g ]
end_hunk_0
