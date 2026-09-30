Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_wire_pkt?download=true
inline.NumInlined: 59
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ossl_quic_wire_get_encoded_pkt_hdr_len:bb.a
  %i.i = lshr i32 %i.a, 10
  %i.j = and i32 %i.i, 15                         ; 2 uses
  %i.k = add nsw i32 %i.j, -5
  %or.cond51 = icmp ult i32 %i.k, -4
  br i1 %or.cond51, label %ossl_quic_vlint_encode_len.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw nsw i64 %0, 1
  %i.m = zext nneg i32 %i.j to i64
  %i.n = add nuw nsw i64 %i.l, %i.m
  br label %ossl_quic_vlint_encode_len.exit

bb.f:                                             ; preds = %bb.b
  %i.o = icmp ugt i8 %i.f, 20
  br i1 %i.o, label %ossl_quic_vlint_encode_len.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33    ; 2 uses
  %i.r = icmp ugt i8 %i.q, 20
  br i1 %i.r, label %ossl_quic_vlint_encode_len.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %narrow = add nuw nsw i8 %i.f, 7
  %narrow46 = add nuw nsw i8 %narrow, %i.q
  %i.s = zext nneg i8 %narrow46 to i64            ; 2 uses
  %i.t = and i32 %i.a, 253
  %switch.selectcmp.i.i.not = icmp eq i32 %i.t, 4
  br i1 %switch.selectcmp.i.i.not, label %ossl_quic_vlint_encode_len.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = lshr i32 %i.a, 10
  %i.v = and i32 %i.u, 15                         ; 2 uses
  %i.w = add nsw i32 %i.v, -5
  %or.cond52 = icmp ult i32 %i.w, -4
  br i1 %or.cond52, label %ossl_quic_vlint_encode_len.exit, label %.thread

.thread:                                          ; preds = %bb.i
  %i.x = zext nneg i32 %i.v to i64
  %i.y = add nuw nsw i64 %i.s, %i.x               ; 2 uses
  %i.z = icmp eq i32 %i.c, 1
  br i1 %i.z, label %bb.j, label %.thread77

bb.j:                                             ; preds = %.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !37 ; 5 uses
  %i.ac = icmp ult i64 %i.ab, 64
  br i1 %i.ac, label %.thread59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp ult i64 %i.ab, 16384
  br i1 %i.ad, label %.thread59, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp ult i64 %i.ab, 1073741824
  br i1 %i.ae, label %.thread59, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = icmp ult i64 %i.ab, 4611686018427387904
  br i1 %i.af, label %.thread59, label %ossl_quic_vlint_encode_len.exit

.thread59:                                        ; preds = %bb.k, %bb.j, %bb.l, %bb.m
  %.0.i.ph = phi i64 [ 4, %bb.l ], [ 2, %bb.k ], [ 1, %bb.j ], [ 8, %bb.m ]
  %i.ag = add nuw nsw i64 %i.ab, %i.y
  %i.ah = add nuw nsw i64 %i.ag, %.0.i.ph
  br label %.thread77

.thread77:                                        ; preds = %.thread, %.thread59
  %.163 = phi i64 [ %i.ah, %.thread59 ], [ %i.y, %.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.ak = lshr i32 %i.a, 10
  %i.al = and i32 %i.ak, 15
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add i64 %i.aj, %i.am                    ; 4 uses
  %i.ao = icmp ult i64 %i.an, 64
  br i1 %i.ao, label %ossl_quic_vlint_encode_len.exit55.thread, label %bb.n

bb.n:                                             ; preds = %.thread77
  %i.ap = icmp ult i64 %i.an, 16384
  br i1 %i.ap, label %ossl_quic_vlint_encode_len.exit55.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = icmp ult i64 %i.an, 1073741824
  br i1 %i.aq, label %ossl_quic_vlint_encode_len.exit55.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = icmp ult i64 %i.an, 4611686018427387904
  br i1 %i.ar, label %ossl_quic_vlint_encode_len.exit55.thread, label %ossl_quic_vlint_encode_len.exit

ossl_quic_vlint_encode_len.exit55.thread:         ; preds = %bb.o, %.thread77, %bb.n, %bb.p
  %.0.i54.ph = phi i64 [ 4, %bb.o ], [ 2, %bb.n ], [ 1, %.thread77 ], [ 8, %bb.p ]
  %i.as = add nuw nsw i64 %.0.i54.ph, %.163
  br label %ossl_quic_vlint_encode_len.exit

ossl_quic_vlint_encode_len.exit:                  ; preds = %bb.h, %bb.p, %ossl_quic_vlint_encode_len.exit55.thread, %bb.m, %bb.i, %bb.f, %bb.g, %bb.d, %bb.a, %bb.c, %bb.e
  %.036 = phi i64 [ 0, %bb.i ], [ 0, %bb.a ], [ %i.n, %bb.e ], [ %i.as, %ossl_quic_vlint_encode_len.exit55.thread ], [ 0, %bb.f ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.g ], [ %i.s, %bb.h ]
  ret i64 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @ossl_quic_wire_get_pkt_hdr_dst_conn_id(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i64 %1, 7
  %i.b = icmp ugt i64 %2, 20
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !23      ; 4 uses
  %.not = icmp sgt i8 %i.c, -1
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !23
  %.not30 = icmp eq i8 %i.e, 0
  br i1 %.not30, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !23
  %.not31 = icmp eq i8 %i.g, 0
  br i1 %.not31, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !23
  %.not32 = icmp eq i8 %i.i, 0
  br i1 %.not32, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  %.not33 = icmp ne i8 %i.k, 0
  %i.l = and i8 %i.c, 64
  %i.m = icmp eq i8 %i.l, 0
  %or.cond35 = and i1 %i.m, %.not33
  br i1 %or.cond35, label %bb.k, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.old = and i8 %i.c, 64
  %.old34 = icmp eq i8 %.old, 0
  br i1 %.old34, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23    ; 3 uses
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = icmp ugt i8 %i.o, 20
  %i.r = add nuw nsw i64 %i.p, 7
  %i.s = icmp ult i64 %1, %i.r
  %or.cond38 = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond38, label %bb.k, label %.sink.split

bb.i:                                             ; preds = %bb.b
  %i.t = icmp samesign ult i8 %i.c, 64
  %i.u = add nuw nsw i64 %2, 21
  %i.v = icmp ult i64 %1, %i.u
  %or.cond41 = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = trunc nuw nsw i64 %2 to i8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.j
  %.sink = phi i8 [ %i.w, %bb.j ], [ %i.o, %bb.h ]
  %.sink48 = phi i64 [ 1, %bb.j ], [ 6, %bb.h ]
  %.sink47 = phi i64 [ %2, %bb.j ], [ %i.p, %bb.h ]
  store i8 %.sink, ptr %3, align 1, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sink48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %i.y, i64 %.sink47, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.h, %bb.g, %bb.f, %bb.a
  %.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.h ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @ossl_quic_wire_decode_pkt_hdr_pn(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  switch i64 %1, label %bb.i [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !23
  %i.b = zext i8 %i.a to i64
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %4 = load i16, ptr %0, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %i.c = zext i16 %5 to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %6 = load i16, ptr %0, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %i.d = zext i16 %7 to i64
  %i.e = shl nuw nsw i64 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !23
  %i.h = zext i8 %i.g to i64
  %i.i = or disjoint i64 %i.e, %i.h
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 1
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  %i.l = zext i32 %i.k to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.i, %bb.d ], [ %i.l, %bb.e ]
  %i.m = add i64 %2, 1                            ; 3 uses
  %i.n = shl nuw nsw i64 %1, 3
  %i.o = shl nuw nsw i64 1, %i.n                  ; 6 uses
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %i.q = sub nsw i64 0, %i.o
  %i.r = and i64 %i.m, %i.q
  %i.s = or i64 %.0, %i.r                         ; 6 uses
  %i.t = sub nsw i64 %i.m, %i.p
  %.not = icmp sle i64 %i.s, %i.t
  %i.u = sub nuw nsw i64 4611686018427387904, %i.o
  %i.v = icmp slt i64 %i.s, %i.u
  %or.cond = select i1 %.not, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i64 %i.s, %i.o
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.x = add nsw i64 %i.p, %i.m
  %i.y = icmp sle i64 %i.s, %i.x
  %.not39 = icmp slt i64 %i.s, %i.o
  %or.cond41 = or i1 %i.y, %.not39
  %i.z = select i1 %or.cond41, i64 0, i64 %i.o
  %spec.select = sub nuw nsw i64 %i.s, %i.z
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.sink = phi i64 [ %i.w, %bb.g ], [ %spec.select, %bb.h ]
  store i64 %.sink, ptr %3, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.036 = phi i32 [ 0, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 1, 5) i32 @ossl_quic_wire_determine_pn_len(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = sub i64 %0, %1                           ; 3 uses
  %i.b = icmp ult i64 %i.a, 129
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %i.a, 32769
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult i64 %i.a, 8388609
  %. = select i1 %i.d, i32 3, i32 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.b ], [ 1, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @ossl_quic_wire_encode_pkt_hdr_pn(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  switch i64 %2, label %bb.c [
    i64 1, label %.sink.split
    i64 2, label %.sink.split.sink.split
    i64 3, label %.sink.split.sink.split.sink.split
    i64 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i64 %0 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.a, ptr %i.b, align 1, !tbaa !23
  %i.c = lshr i64 %0, 8
  br label %.sink.split.sink.split.sink.split

.sink.split.sink.split.sink.split:                ; preds = %bb.a, %bb.b
  %.sink28 = phi i64 [ %i.c, %bb.b ], [ %0, %bb.a ]
  %.sink25 = phi i64 [ 16, %bb.b ], [ 8, %bb.a ]
  %.sink.ph = phi i64 [ 24, %bb.b ], [ 16, %bb.a ]
  %i.d = trunc i64 %.sink28 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.d, ptr %i.e, align 1, !tbaa !23
  %i.f = lshr i64 %0, %.sink25
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %bb.a
  %.sink24 = phi i64 [ %0, %bb.a ], [ %i.f, %.sink.split.sink.split.sink.split ]
  %.sink = phi i64 [ 8, %bb.a ], [ %.sink.ph, %.sink.split.sink.split.sink.split ]
  %i.g = trunc i64 %.sink24 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !23
  %i.i = lshr i64 %0, %.sink
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.a
  %.sink21 = phi i64 [ %0, %bb.a ], [ %i.i, %.sink.split.sink.split ]
  %i.j = trunc i64 %.sink21 to i8
  store i8 %i.j, ptr %1, align 1, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_quic_validate_retry_integrity_tag(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34
  %i.e = icmp ult i64 %i.d, 16
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @ossl_quic_calculate_retry_integrity_tag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = load i64, ptr %i.c, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16
  %i.l = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, i64 noundef 16) #10
  %.not10 = icmp eq i32 %i.l, 0
  %i.m = zext i1 %.not10 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ %i.m, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_quic_calculate_retry_integrity_tag(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.wpacket_st, align 8         ; 8 uses
  %i.c = alloca [128 x i8], align 16              ; 4 uses
  %6 = alloca %struct.quic_pkt_hdr_st, align 8    ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i64 0, ptr %i.d, align 8, !tbaa !27
  %i.e = load i32, ptr %2, align 8
  %i.f = and i32 %i.e, 255
  %.not = icmp eq i32 %i.f, 4
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34
  %i.l = icmp ult i64 %i.k, 16
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = icmp eq ptr %i.n, null
  %i.p = icmp eq ptr %3, null
  %or.cond = or i1 %i.p, %i.o
  %i.q = icmp eq ptr %4, null
  %or.cond3 = or i1 %i.q, %or.cond
  br i1 %or.cond3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %3, align 1, !tbaa !39
  %i.s = icmp ugt i8 %i.r, 20
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 883, ptr noundef nonnull @__func__.ossl_quic_calculate_retry_integrity_tag) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524550, ptr noundef null) #10
  br label %bb.ac

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false), !tbaa.struct !47
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 0, ptr %i.t, align 8, !tbaa !34
  %i.u = call i32 @WPACKET_init_static_len(ptr noundef nonnull %5, ptr noundef nonnull %i.c, i64 noundef 128, i64 noundef 0) #10
  %.not36 = icmp eq i32 %i.u, 0
  br i1 %.not36, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 897, ptr noundef nonnull @__func__.ossl_quic_calculate_retry_integrity_tag) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524303, ptr noundef null) #10
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  %i.v = load i8, ptr %3, align 1, !tbaa !39
  %i.w = zext i8 %i.v to i64
  %i.x = call i32 @WPACKET_put_bytes__(ptr noundef nonnull %5, i64 noundef %i.w, i64 noundef 1) #10
  %.not37 = icmp eq i32 %i.x, 0
  br i1 %.not37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.z = load i8, ptr %3, align 1, !tbaa !39
  %i.aa = zext i8 %i.z to i64
  %i.ab = call i32 @WPACKET_memcpy(ptr noundef nonnull %5, ptr noundef nonnull %i.y, i64 noundef %i.aa) #10
  %.not38 = icmp eq i32 %i.ab, 0
  br i1 %.not38, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 907, ptr noundef nonnull @__func__.ossl_quic_calculate_retry_integrity_tag) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524303, ptr noundef null) #10
  br label %bb.ac

bb.l:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !31
  %i.ae = zext i8 %i.ad to i64
  %i.af = call i32 @ossl_quic_wire_encode_pkt_hdr(ptr noundef nonnull %5, i64 noundef %i.ae, ptr noundef nonnull %6, ptr noundef null)
  %.not39 = icmp eq i32 %i.af, 0
  br i1 %.not39, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = call i32 @WPACKET_get_total_written(ptr noundef nonnull %5, ptr noundef nonnull %i.d) #10
  %.not40 = icmp eq i32 %i.ag, 0
  br i1 %.not40, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 917, ptr noundef nonnull @__func__.ossl_quic_calculate_retry_integrity_tag) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524303, ptr noundef null) #10
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  %i.ah = call ptr @EVP_CIPHER_fetch(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1) #10 ; 9 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 924, ptr noundef nonnull @__func__.ossl_quic_calculate_retry_integrity_tag) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524294, ptr noundef null) #10
  br label %bb.ac

bb.q:                                             ; preds = %bb.o
  %i.aj = call ptr @EVP_CIPHER_CTX_new() #10      ; 12 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 929, ptr noundef nonnull @__func__.ossl_quic_calculate_retry_integrity_tag) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524294, ptr noundef null) #10
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  %i.al = call i32 @EVP_CipherInit_ex(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ah, ptr noundef null, ptr noundef nonnull @retry_integrity_key, ptr noundef nonnull @retry_integrity_nonce, i32 noundef 1) #10
  %.not41 = icmp eq i32 %i.al, 0
  br i1 %.not41, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 935, ptr noundef nonnull @__func__.ossl_quic_calculate_retry_integrity_tag) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524294, ptr noundef null) #10
  br label %bb.ac

bb.u:                                             ; preds = %bb.s
  %i.am = load i64, ptr %i.d, align 8, !tbaa !27
  %i.an = trunc i64 %i.am to i32
  %i.ao = call i32 @EVP_CipherUpdate(ptr noundef nonnull %i.aj, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %i.an) #10
  %.not42 = icmp eq i32 %i.ao, 1
  br i1 %.not42, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 941, ptr noundef nonnull @__func__.ossl_quic_calculate_retry_integrity_tag) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524294, ptr noundef null) #10
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !34
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add i32 %i.ar, -16
  %i.at = call i32 @EVP_CipherUpdate(ptr noundef nonnull %i.aj, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %i.ap, i32 noundef %i.as) #10
  %.not43 = icmp eq i32 %i.at, 1
  br i1 %.not43, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 949, ptr noundef nonnull @__func__.ossl_quic_calculate_retry_integrity_tag) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524294, ptr noundef null) #10
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.au = call i32 @EVP_CipherFinal_ex(ptr noundef nonnull %i.aj, ptr noundef null, ptr noundef nonnull %i.b) #10
  %.not44 = icmp eq i32 %i.au, 1
  br i1 %.not44, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 955, ptr noundef nonnull @__func__.ossl_quic_calculate_retry_integrity_tag) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524294, ptr noundef null) #10
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.av = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %i.aj, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %4) #10
  %.not45 = icmp eq i32 %i.av, 1
  br i1 %.not45, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str.3, i32 noundef 963, ptr noundef nonnull @__func__.ossl_quic_calculate_retry_integrity_tag) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524294, ptr noundef null) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.l, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.k, %bb.h, %bb.f
  %.030 = phi ptr [ null, %bb.f ], [ null, %bb.p ], [ %i.ah, %bb.r ], [ %i.ah, %bb.v ], [ %i.ah, %bb.x ], [ %i.ah, %bb.z ], [ %i.ah, %bb.ab ], [ null, %bb.h ], [ %i.ah, %bb.t ], [ null, %bb.n ], [ null, %bb.l ], [ null, %bb.k ], [ %i.ah, %bb.aa ]
  %.029 = phi ptr [ null, %bb.f ], [ null, %bb.p ], [ null, %bb.r ], [ %i.aj, %bb.v ], [ %i.aj, %bb.x ], [ %i.aj, %bb.z ], [ %i.aj, %bb.ab ], [ null, %bb.h ], [ %i.aj, %bb.t ], [ null, %bb.n ], [ null, %bb.l ], [ null, %bb.k ], [ %i.aj, %bb.aa ]
  %.028 = phi i32 [ 0, %bb.f ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 0, %bb.h ], [ 0, %bb.t ], [ 0, %bb.n ], [ 0, %bb.l ], [ 0, %bb.k ], [ 1, %bb.aa ]
  %.not46 = phi i1 [ true, %bb.f ], [ false, %bb.p ], [ false, %bb.r ], [ false, %bb.v ], [ false, %bb.x ], [ false, %bb.z ], [ false, %bb.ab ], [ true, %bb.h ], [ false, %bb.t ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.aa ]
  call void @EVP_CIPHER_free(ptr noundef %.030) #10
  call void @EVP_CIPHER_CTX_free(ptr noundef %.029) #10
  br i1 %.not46, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aw = call i32 @WPACKET_finish(ptr noundef nonnull %5) #10 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.028
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_init_static_len(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_CipherUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CipherFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_ctrl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WPACKET_finish(ptr noundef) local_unnamed_addr #2

declare i64 @ossl_quic_vlint_decode_unchecked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS15ossl_lib_ctx_st", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS17evp_cipher_ctx_st", !8, i64 0}
!12 = !{!"p1 _ZTS13evp_cipher_st", !8, i64 0}
!13 = !{!"quic_hdr_protector_st", !9, i64 0, !10, i64 8, !11, i64 16, !12, i64 24, !5, i64 32}
!14 = !{!13, !11, i64 16}
!15 = !{!13, !12, i64 24}
!16 = !{!13, !5, i64 32}
!17 = !{!"long", !4, i64 0}
!18 = !{!"quic_pkt_hdr_ptrs_st", !10, i64 0, !10, i64 8, !17, i64 16, !10, i64 24}
!19 = !{!18, !10, i64 8}
!20 = !{!18, !17, i64 16}
!21 = !{!18, !10, i64 0}
!22 = !{!18, !10, i64 24}
!23 = !{!4, !4, i64 0}
!24 = !{!5, !5, i64 0}
!25 = !{!"", !10, i64 0, !10, i64 8, !17, i64 16}
!26 = !{!25, !17, i64 16}
!27 = !{!17, !17, i64 0}
!28 = !{!25, !10, i64 0}
!29 = !{!"quic_conn_id_st", !4, i64 0, !4, i64 1}
!30 = !{!"quic_pkt_hdr_st", !5, i64 0, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 2, !5, i64 2, !5, i64 4, !29, i64 8, !29, i64 29, !4, i64 50, !10, i64 56, !17, i64 64, !17, i64 72, !10, i64 80}
!31 = !{!30, !4, i64 8}
!32 = !{!30, !5, i64 4}
!33 = !{!30, !4, i64 29}
!34 = !{!30, !17, i64 72}
!35 = !{!30, !10, i64 80}
!36 = !{!10, !10, i64 0}
!37 = !{!30, !17, i64 64}
!38 = !{!30, !10, i64 56}
!39 = !{!29, !4, i64 0}
!40 = !{!13, !9, i64 0}
!41 = !{!13, !10, i64 8}
!42 = !{!"p1 _ZTS10buf_mem_st", !8, i64 0}
!43 = !{!"p1 _ZTS11wpacket_sub", !8, i64 0}
!44 = !{!"wpacket_st", !42, i64 0, !10, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !43, i64 40, !5, i64 48}
!45 = !{!44, !10, i64 8}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{i64 0, i64 4, !23, i64 4, i64 4, !24, i64 8, i64 1, !23, i64 9, i64 20, !23, i64 29, i64 1, !23, i64 30, i64 20, !23, i64 50, i64 4, !23, i64 56, i64 8, !36, i64 64, i64 8, !27, i64 72, i64 8, !27, i64 80, i64 8, !36}
end_hunk_0
