Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/handshake_client?download=true
inline.NumInlined: 680
inline.NumDeleted: 363
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4bssl29ssl_done_writing_client_helloEPNS_13SSL_HANDSHAKEE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !168
  tail call void @OPENSSL_free(ptr noundef %i.h)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl22ssl_parse_server_helloEPNS_17ParsedServerHelloEPhRKNS_10SSLMessageE(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cbs_st, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !214
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 223, ptr noundef nonnull @.str, i32 noundef 541)
  store i8 10, ptr %1, align 1, !tbaa !215
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !216
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !216
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = call i32 @CBS_get_u16(ptr noundef nonnull %3, ptr noundef nonnull %i.e)
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = call i32 @CBS_get_bytes(ptr noundef nonnull %3, ptr noundef nonnull %i.g, i64 noundef 32)
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = call i32 @CBS_get_u8_length_prefixed(ptr noundef nonnull %3, ptr noundef nonnull %i.i)
  %.not18 = icmp eq i32 %i.j, 0
  br i1 %.not18, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !217
  %i.m = icmp ugt i64 %i.l, 32
  br i1 %i.m, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = call i32 @CBS_get_u16(ptr noundef nonnull %3, ptr noundef nonnull %i.n)
  %.not19 = icmp eq i32 %i.o, 0
  br i1 %.not19, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.q = call i32 @CBS_get_u8(ptr noundef nonnull %3, ptr noundef nonnull %i.p)
  %.not20 = icmp eq i32 %i.q, 0
  br i1 %.not20, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.t = load i64, ptr %i.s, align 8, !tbaa !217
  %.not21 = icmp eq i64 %i.t, 0
  br i1 %.not21, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %3, ptr noundef nonnull %i.r)
  %.not22 = icmp ne i32 %i.u, 0
  %.pr = load i64, ptr %i.s, align 8
  %.not23 = icmp eq i64 %.pr, 0
  %or.cond = select i1 %.not22, i1 %.not23, i1 false
  br i1 %or.cond, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.j, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sink = phi i32 [ 553, %bb.c ], [ 553, %bb.h ], [ 553, %bb.g ], [ 553, %bb.f ], [ 553, %bb.e ], [ 553, %bb.d ], [ 563, %bb.j ]
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef %.sink)
  store i8 50, ptr %1, align 1, !tbaa !215
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.j, %bb.i
  %.0 = phi i1 [ true, %bb.j ], [ true, %bb.i ], [ false, %.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ %.0, %.thread ]
  ret i1 %.1
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @CBS_get_u16(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CBS_get_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CBS_get_u8_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CBS_get_u8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CBS_get_u16_length_prefixed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4bssl20ssl_client_handshakeEPNS_13SSL_HANDSHAKEE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.41", align 8 ; 6 uses
  %2 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %3 = alloca %struct.cbs_st, align 8             ; 6 uses
  %4 = alloca %struct.cbs_st, align 8             ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::unique_ptr.41", align 8 ; 5 uses
  %6 = alloca %"class.bssl::internal::StackAllocated.117", align 8 ; 10 uses
  %7 = alloca %struct.cbb_st, align 8             ; 7 uses
  %8 = alloca %struct.cbb_st, align 8             ; 8 uses
  %9 = alloca %"class.bssl::internal::StackAllocated.117", align 8 ; 10 uses
  %10 = alloca %struct.cbb_st, align 8            ; 6 uses
  %11 = alloca %"class.bssl::internal::StackAllocated.117", align 8 ; 8 uses
  %12 = alloca %struct.cbb_st, align 8            ; 6 uses
  %13 = alloca %struct.cbb_st, align 8            ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.bssl::Span.103", align 8   ; 5 uses
  %15 = alloca %"class.bssl::internal::StackAllocated.117", align 8 ; 8 uses
  %16 = alloca %struct.cbb_st, align 8            ; 10 uses
  %17 = alloca %"class.bssl::Array", align 8      ; 20 uses
  %18 = alloca %struct.cbs_st, align 8            ; 6 uses
  %i.d = alloca [256 x i8], align 16              ; 5 uses
  %i.e = alloca [129 x i8], align 16              ; 10 uses
  %19 = alloca %struct.cbb_st, align 8            ; 6 uses
  %20 = alloca %struct.cbb_st, align 8            ; 7 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %21 = alloca %struct.cbb_st, align 8            ; 7 uses
  %22 = alloca %"class.std::unique_ptr.2", align 8 ; 9 uses
  %i.h = alloca i8, align 1                       ; 7 uses
  %23 = alloca %"class.bssl::internal::StackAllocated.117", align 8 ; 12 uses
  %24 = alloca %struct.cbb_st, align 8            ; 8 uses
  %25 = alloca %"class.bssl::Array.153", align 8  ; 9 uses
  %i.i = alloca i16, align 2                      ; 6 uses
  %26 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %27 = alloca %"struct.bssl::SSLMessage", align 8 ; 8 uses
  %28 = alloca %struct.cbs_st, align 8            ; 8 uses
  %29 = alloca %struct.cbs_st, align 8            ; 6 uses
  %30 = alloca %struct.cbs_st, align 8            ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %31 = alloca %"class.std::unique_ptr.21", align 8 ; 8 uses
  %32 = alloca %"struct.bssl::SSLMessage", align 8 ; 8 uses
  %33 = alloca %struct.cbs_st, align 8            ; 11 uses
  %34 = alloca %struct.cbs_st, align 8            ; 8 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %i.m = alloca i16, align 2                      ; 6 uses
  %35 = alloca %struct.cbs_st, align 8            ; 6 uses
  %i.n = alloca i16, align 2                      ; 12 uses
  %i.o = alloca i8, align 1                       ; 6 uses
  %36 = alloca %struct.cbs_st, align 8            ; 8 uses
  %37 = alloca %"class.bssl::internal::StackAllocated.117", align 8 ; 13 uses
  %38 = alloca %"class.bssl::Array", align 8      ; 11 uses
  %39 = alloca %"class.bssl::Span.103", align 8   ; 5 uses
  %40 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %41 = alloca %struct.cbs_st, align 8            ; 6 uses
  %42 = alloca %struct.cbs_st, align 8            ; 5 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %43 = alloca %"struct.bssl::SSLMessage", align 8 ; 6 uses
  %44 = alloca %struct.cbs_st, align 8            ; 5 uses
  %i.q = alloca i8, align 1                       ; 5 uses
  %45 = alloca %"struct.bssl::SSLExtension", align 8 ; 9 uses
  %46 = alloca %struct.cbs_st, align 8            ; 5 uses
  %i.r = alloca [1 x ptr], align 8                ; 4 uses
  %47 = alloca %struct.cbs_st, align 8            ; 7 uses
  %48 = alloca %struct.cbs_st, align 8            ; 6 uses
  %i.s = alloca i16, align 2                      ; 4 uses
  %49 = alloca %"struct.bssl::SSLMessage", align 8 ; 7 uses
  %50 = alloca %"struct.bssl::ParsedServerHello", align 8 ; 10 uses
  %i.t = alloca i16, align 2                      ; 7 uses
  %i.u = alloca i8, align 1                       ; 7 uses
  %51 = alloca %"class.bssl::Span.103", align 8   ; 7 uses
  %i.v = alloca [65 x i8], align 16               ; 4 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 39 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 24 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 37 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 13 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1626 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ai = getelementptr i8, ptr %0, i64 8         ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1620 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ap = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %27, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.ay = getelementptr inbounds nuw i8, ptr %32, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %40, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %49, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bt = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %50, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %50, i64 58 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %45, i64 2
  %i.bx = getelementptr inbounds nuw i8, ptr %45, i64 3 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %50, i64 64 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %50, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1629 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1661 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %50, i64 48 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %50, i64 40 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 504
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %51, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.un, %bb.a
  %i.cq = load i32, ptr %i.x, align 4, !tbaa !218 ; 2 uses
  switch i32 %i.cq, label %_ZN4bsslL16do_start_connectEPNS_13SSL_HANDSHAKEE.exit [
    i32 21, label %bb.uo
    i32 0, label %bb.c
    i32 1, label %bb.ba
    i32 2, label %bb.be
    i32 3, label %bb.bl
    i32 4, label %bb.ev
    i32 5, label %bb.ex
    i32 6, label %bb.fm
    i32 7, label %bb.gc
    i32 8, label %bb.gf
    i32 9, label %bb.gh
    i32 10, label %bb.ip
    i32 11, label %bb.ju
    i32 12, label %bb.kc
    i32 13, label %bb.lo
    i32 14, label %bb.py
    i32 15, label %bb.re
    i32 16, label %bb.so
    i32 17, label %bb.tb
    i32 18, label %bb.tr
    i32 19, label %bb.tt
    i32 20, label %bb.tu
  ]

bb.c:                                             ; preds = %bb.b
  %i.cr = load ptr, ptr %0, align 8, !tbaa !136   ; 9 uses
  call void @_ZN4bssl20ssl_do_info_callbackEPK6ssl_stii(ptr noundef %i.cr, i32 noundef 16, i32 noundef 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48 ; 4 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !166
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 220 ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 4
  %i.cw = and i16 %i.cv, -33
  store i16 %i.cw, ptr %i.cu, align 4
  %i.cx = call noundef zeroext i1 @_ZN4bssl21ssl_get_version_rangeEPKNS_13SSL_HANDSHAKEEPtS3_(ptr noundef nonnull %0, ptr noundef nonnull %i.co, ptr noundef nonnull %i.ch)
  br i1 %i.cx, label %bb.d, label %_ZN4bsslL16do_start_connectEPNS_13SSL_HANDSHAKEE.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #11
  %i.cy = call noundef zeroext i1 @_ZN4bssl21ssl_select_ech_configEPNS_13SSL_HANDSHAKEENS_4SpanIhEEPm(ptr noundef nonnull %0, ptr nonnull %i.v, i64 65, ptr noundef nonnull %i.w)
  br i1 %i.cy, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.cz = load ptr, ptr %0, align 8, !tbaa !136
  %i.da = call i32 @SSL_is_dtls(ptr noundef %i.cz)
  %.not.i = icmp eq i32 %i.da, 0
  %i.db = load i16, ptr %i.ch, align 2, !tbaa !199 ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dc = icmp ugt i16 %i.db, 770
  %i.dd = select i1 %i.dc, i16 -259, i16 -257
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %spec.select.i = call i16 @llvm.umin.i16(i16 %i.db, i16 771)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i16 [ %spec.select.i, %bb.g ], [ %i.dd, %bb.f ]
  store i16 %.sink.i, ptr %i.am, align 4, !tbaa !137
  %i.de = call noundef zeroext i1 @_ZN4bssl21ssl_setup_pake_sharesEPNS_13SSL_HANDSHAKEE(ptr noundef nonnull %0)
  br i1 %i.de, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 88 ; 6 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !219 ; 2 uses
  %.not89.i = icmp eq ptr %i.dg, null
  br i1 %.not89.i, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dh = call noundef i32 @_ZN4bssl20ssl_session_get_typeEPK14ssl_session_st(ptr noundef nonnull %i.dg) ; 4 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !219 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 408
  %i.dk = load i8, ptr %i.dj, align 8
  %i.dl = and i8 %i.dk, 16
  %.not63.i = icmp eq i8 %i.dl, 0
  br i1 %.not63.i, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dn = load i16, ptr %i.dm, align 4, !tbaa !280
  %i.do = call noundef zeroext i1 @_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt(ptr noundef nonnull %0, i16 noundef zeroext %i.dn)
  br i1 %i.do, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.dp = load ptr, ptr %i.cf, align 8, !tbaa !204
  %.not90.i = icmp eq ptr %i.dp, null
  br i1 %.not90.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = load ptr, ptr %i.df, align 8, !tbaa !219
  %i.dr = call noundef zeroext i16 @_ZN4bssl28ssl_session_protocol_versionEPK14ssl_session_st(ptr noundef %i.dq)
  %i.ds = icmp ult i16 %i.dr, 772
  %i.dt = icmp eq i32 %i.dh, 0
  %or.cond.i = or i1 %i.dt, %i.ds
  br i1 %or.cond.i, label %bb.u, label %bb.o

bb.n:                                             ; preds = %bb.l
  switch i32 %i.dh, label %bb.q [
    i32 0, label %bb.u
    i32 2, label %bb.p
  ]

bb.o:                                             ; preds = %bb.m
  %i.du = icmp eq i32 %i.dh, 2
  br i1 %i.du, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dv = call i32 @SSL_get_options(ptr noundef nonnull %i.cr)
  %i.dw = and i32 %i.dv, 16384
  %.not64.i = icmp eq i32 %i.dw, 0
  br i1 %.not64.i, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dx = load ptr, ptr %i.cc, align 8, !tbaa !281
  %.not91.i = icmp eq ptr %i.dx, null
  br i1 %.not91.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dy = load ptr, ptr %i.df, align 8, !tbaa !219
  %i.dz = call noundef zeroext i1 @_ZN4bssl25ssl_session_is_time_validEPK6ssl_stPK14ssl_session_st(ptr noundef nonnull %i.cr, ptr noundef %i.dy)
  br i1 %i.dz, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ea = call i32 @SSL_is_quic(ptr noundef nonnull %i.cr)
  %i.eb = load ptr, ptr %i.df, align 8, !tbaa !219
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 408
  %i.ed = load i8, ptr %i.ec, align 8
  %i.ee = lshr i8 %i.ed, 5
  %.lobit.i = and i8 %i.ee, 1
  %i.ef = zext nneg i8 %.lobit.i to i32
  %.not65.i = icmp eq i32 %i.ea, %i.ef
  br i1 %.not65.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eg = load ptr, ptr %i.cs, align 8, !tbaa !166
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 220
  %i.ei = load i16, ptr %i.eh, align 4
end_hunk_0
begin_hunk_1_@_ZN4bssl20ssl_client_handshakeEPNS_13SSL_HANDSHAKEE:bb.a
bb.lv:                                            ; preds = %bb.lu
  br i1 %i.aby, label %bb.md, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.abz = load ptr, ptr %i.ai, align 8, !tbaa !170
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 269
  %i.acb = load i16, ptr %i.aca, align 1
  %i.acc = and i16 %i.acb, 16
  %.not.i112 = icmp eq i16 %i.acc, 0
  br i1 %.not.i112, label %bb.lx, label %.critedge.i113

bb.lx:                                            ; preds = %bb.lw
  %i.acd = load ptr, ptr %i.aj, align 8, !tbaa !350
  %i.ace = invoke i32 @EVP_PKEY_id(ptr noundef %i.acd)
          to label %bb.ly unwind label %bb.ma

bb.ly:                                            ; preds = %bb.lx
  %.not89.i114 = icmp eq i32 %i.ace, 6
  br i1 %.not89.i114, label %bb.mb, label %.critedge.i113

bb.lz:                                            ; preds = %bb.lt, %bb.lr
  %i.acf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ps

bb.ma:                                            ; preds = %bb.mb, %bb.lx, %bb.lu, %sk_CRYPTO_BUFFER_value.exit.i
  %i.acg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %bb.ps

bb.mb:                                            ; preds = %bb.ly
  invoke void @ERR_clear_error()
          to label %bb.mc unwind label %bb.ma

bb.mc:                                            ; preds = %bb.mb
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abg, i64 48
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !166
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 220 ; 2 uses
  %i.ack = load i16, ptr %i.acj, align 4
  %i.acl = or i16 %i.ack, 8192
  store i16 %i.acl, ptr %i.acj, align 4
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %bb.me

bb.me:                                            ; preds = %bb.md, %bb.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.acm = and i32 %i.abq, 8
  %.not92.i93 = icmp eq i32 %i.acm, 0             ; 2 uses
  br i1 %.not92.i93, label %bb.my, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.acn = load ptr, ptr %i.ai, align 8, !tbaa !170
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 64 ; 2 uses
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !197
  %i.acq = icmp eq ptr %i.acp, null
  br i1 %i.acq, label %.invoke.i108, label %bb.mg

.invoke.i108:                                     ; preds = %bb.op, %bb.na, %bb.mf
  %i.acr = phi i32 [ 68, %bb.op ], [ 196, %bb.mf ], [ 68, %bb.na ]
  %i.acs = phi i32 [ 1471, %bb.op ], [ 1384, %bb.mf ], [ 1419, %bb.na ]
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef %i.acr, ptr noundef nonnull @.str, i32 noundef %i.acs)
          to label %.critedge128.i unwind label %bb.nb

bb.mg:                                            ; preds = %bb.mf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(129) %i.e, i8 0, i64 129, i1 false)
  %i.act = load ptr, ptr %i.aco, align 8, !tbaa !197
  %i.acu = load ptr, ptr %i.ak, align 8, !tbaa !210
  %i.acv = invoke noundef i32 %i.act(ptr noundef nonnull %i.abg, ptr noundef %i.acu, ptr noundef nonnull %i.e, i32 noundef 129, ptr noundef nonnull %i.d, i32 noundef 256)
          to label %bb.mh unwind label %bb.mk     ; 2 uses

bb.mh:                                            ; preds = %bb.mg
  %i.acw = icmp eq i32 %i.acv, 0
  br i1 %i.acw, label %bb.mi, label %bb.ml

bb.mi:                                            ; preds = %bb.mh
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 195, ptr noundef nonnull @.str, i32 noundef 1394)
          to label %bb.mj unwind label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  invoke void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.abg, i32 noundef 2, i32 noundef 40)
          to label %.critedge126.i unwind label %bb.mk

bb.mk:                                            ; preds = %bb.ml, %bb.mj, %bb.mi, %bb.mg
  %i.acx = landingpad { ptr, i32 }
          cleanup
  br label %bb.mx

bb.ml:                                            ; preds = %bb.mh
  %i.acy = load ptr, ptr %i.y, align 8, !tbaa !219
  %i.acz = invoke ptr @OPENSSL_strdup(ptr noundef nonnull %i.e)
          to label %bb.mm unwind label %bb.mk

bb.mm:                                            ; preds = %bb.ml
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acy, i64 128 ; 2 uses
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !210 ; 2 uses
  store ptr %i.acz, ptr %i.ada, align 8, !tbaa !210
  %.not.i.i.i94 = icmp eq ptr %i.adb, null
  br i1 %.not.i.i.i94, label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit.i, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  invoke void @OPENSSL_free(ptr noundef nonnull %i.adb)
          to label %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit.i unwind label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.adc = landingpad { ptr, i32 }
          catch ptr null
  %i.add = extractvalue { ptr, i32 } %i.adc, 0
  call void @__clang_call_terminate(ptr %i.add) #12
  unreachable

_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit.i: ; preds = %bb.mn, %bb.mm
  %i.ade = load ptr, ptr %i.y, align 8, !tbaa !219
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 128
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !210
  %.not.i.i95 = icmp eq ptr %i.adg, null
  br i1 %.not.i.i95, label %.critedge126.i, label %bb.mp

bb.mp:                                            ; preds = %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  %i.adh = invoke i32 @CBB_add_u16_length_prefixed(ptr noundef nonnull %16, ptr noundef nonnull %19)
          to label %bb.mq unwind label %bb.mw

bb.mq:                                            ; preds = %bb.mp
  %.not93.i = icmp eq i32 %i.adh, 0
  br i1 %.not93.i, label %.critedge128.critedge.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.adi = invoke i64 @OPENSSL_strnlen(ptr noundef nonnull %i.e, i64 noundef 129)
          to label %bb.ms unwind label %bb.mw

bb.ms:                                            ; preds = %bb.mr
  %i.adj = invoke i32 @CBB_add_bytes(ptr noundef nonnull %19, ptr noundef nonnull %i.e, i64 noundef %i.adi)
          to label %bb.mt unwind label %bb.mw

bb.mt:                                            ; preds = %bb.ms
  %.not94.i = icmp eq i32 %i.adj, 0
  br i1 %.not94.i, label %.critedge128.critedge.i, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.adk = invoke i32 @CBB_flush(ptr noundef nonnull %16)
          to label %bb.mv unwind label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  %.not95.not.i = icmp eq i32 %i.adk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br i1 %.not95.not.i, label %.critedge128.i, label %bb.my

bb.mw:                                            ; preds = %bb.mu, %bb.ms, %bb.mr, %bb.mp
  %i.adl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mk
  %.pn96.i = phi { ptr, i32 } [ %i.acx, %bb.mk ], [ %i.adl, %bb.mw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %bb.pp

bb.my:                                            ; preds = %bb.mv, %bb.me
  %.0.i96 = phi i32 [ %i.acv, %bb.mv ], [ 0, %bb.me ] ; 4 uses
  %i.adm = and i32 %i.abo, 1
  %.not98.i = icmp eq i32 %i.adm, 0
  br i1 %.not98.i, label %bb.nt, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.adn = load ptr, ptr %i.aj, align 8, !tbaa !350
  %i.ado = invoke ptr @EVP_PKEY_get0_RSA(ptr noundef %i.adn)
          to label %bb.na unwind label %bb.nb     ; 4 uses

bb.na:                                            ; preds = %bb.mz
  %i.adp = icmp eq ptr %i.ado, null
  br i1 %i.adp, label %.invoke.i108, label %bb.nc

bb.nb:                                            ; preds = %bb.pk, %bb.pi, %bb.op, %bb.om, %bb.ol, %_ZN4bssl5ArrayIhEixEm.exit141.i, %.noexc.i, %bb.nc, %bb.mz, %.invoke.i108
  %i.adq = landingpad { ptr, i32 }
          cleanup
  br label %bb.pp

bb.nc:                                            ; preds = %bb.na
  %i.adr = load ptr, ptr %17, align 8, !tbaa !168
  invoke void @OPENSSL_free(ptr noundef %i.adr)
          to label %.noexc.i unwind label %bb.nb

.noexc.i:                                         ; preds = %bb.nc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.ads = invoke ptr @OPENSSL_malloc(i64 noundef 48)
          to label %.noexc139.i unwind label %bb.nb ; 3 uses

.noexc139.i:                                      ; preds = %.noexc.i
  store ptr %i.ads, ptr %17, align 8, !tbaa !168
  %i.adt = icmp eq ptr %i.ads, null
  br i1 %i.adt, label %.critedge128.i, label %_ZN4bssl5ArrayIhEixEm.exit.i

_ZN4bssl5ArrayIhEixEm.exit.i:                     ; preds = %.noexc139.i
  store i64 48, ptr %i.al, align 8, !tbaa !169
  %52 = load i16, ptr %i.am, align 4, !tbaa !137
  %53 = lshr i16 %52, 8
  %54 = trunc nuw i16 %53 to i8
  store i8 %54, ptr %i.ads, align 1, !tbaa !215
  %i.adu = load i64, ptr %i.al, align 8, !tbaa !169
  %i.adv = icmp ugt i64 %i.adu, 1
  br i1 %i.adv, label %_ZN4bssl5ArrayIhEixEm.exit140.i, label %bb.nd

bb.nd:                                            ; preds = %_ZN4bssl5ArrayIhEixEm.exit.i
  call void @abort() #12
  unreachable

_ZN4bssl5ArrayIhEixEm.exit140.i:                  ; preds = %_ZN4bssl5ArrayIhEixEm.exit.i
  %i.adw = load i16, ptr %i.am, align 4, !tbaa !137
  %i.adx = trunc i16 %i.adw to i8
  %i.ady = load ptr, ptr %17, align 8, !tbaa !168
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 1
  store i8 %i.adx, ptr %i.adz, align 1, !tbaa !215
  %i.aea = load i64, ptr %i.al, align 8, !tbaa !169
  %i.aeb = icmp ugt i64 %i.aea, 2
  br i1 %i.aeb, label %_ZN4bssl5ArrayIhEixEm.exit141.i, label %bb.ne

bb.ne:                                            ; preds = %_ZN4bssl5ArrayIhEixEm.exit140.i
  call void @abort() #12
  unreachable

_ZN4bssl5ArrayIhEixEm.exit141.i:                  ; preds = %_ZN4bssl5ArrayIhEixEm.exit140.i
  %i.aec = load ptr, ptr %17, align 8, !tbaa !168
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 2
  %i.aee = invoke i32 @RAND_bytes(ptr noundef nonnull %i.aed, i64 noundef 46)
          to label %bb.nf unwind label %bb.nb

bb.nf:                                            ; preds = %_ZN4bssl5ArrayIhEixEm.exit141.i
  %.not106.i97 = icmp eq i32 %i.aee, 0
  br i1 %.not106.i97, label %.critedge128.i, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.aef = invoke i32 @CBB_add_u16_length_prefixed(ptr noundef nonnull %16, ptr noundef nonnull %20)
          to label %bb.nh unwind label %bb.ns

bb.nh:                                            ; preds = %bb.ng
  %.not107.i98 = icmp eq i32 %i.aef, 0
  br i1 %.not107.i98, label %.critedge128.critedge136.i, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.aeg = invoke i32 @RSA_size(ptr noundef nonnull %i.ado)
          to label %bb.nj unwind label %bb.ns

bb.nj:                                            ; preds = %bb.ni
  %i.aeh = zext i32 %i.aeg to i64
  %i.aei = invoke i32 @CBB_reserve(ptr noundef nonnull %20, ptr noundef nonnull %i.f, i64 noundef %i.aeh)
          to label %bb.nk unwind label %bb.ns

bb.nk:                                            ; preds = %bb.nj
  %.not108.i99 = icmp eq i32 %i.aei, 0
  br i1 %.not108.i99, label %.critedge128.critedge136.i, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.aej = load ptr, ptr %i.f, align 8, !tbaa !210
  %i.aek = invoke i32 @RSA_size(ptr noundef nonnull %i.ado)
          to label %bb.nm unwind label %bb.ns

bb.nm:                                            ; preds = %bb.nl
  %i.ael = zext i32 %i.aek to i64
  %i.aem = load ptr, ptr %17, align 8, !tbaa !168
  %i.aen = load i64, ptr %i.al, align 8, !tbaa !169
  %i.aeo = invoke i32 @RSA_encrypt(ptr noundef nonnull %i.ado, ptr noundef nonnull %i.g, ptr noundef %i.aej, i64 noundef %i.ael, ptr noundef %i.aem, i64 noundef %i.aen, i32 noundef 1)
          to label %bb.nn unwind label %bb.ns

bb.nn:                                            ; preds = %bb.nm
  %.not109.i100 = icmp eq i32 %i.aeo, 0
  br i1 %.not109.i100, label %.critedge128.critedge136.i, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.aep = load i64, ptr %i.g, align 8, !tbaa !211
  %i.aeq = invoke i32 @CBB_did_write(ptr noundef nonnull %20, i64 noundef %i.aep)
          to label %bb.np unwind label %bb.ns

bb.np:                                            ; preds = %bb.no
  %.not110.i101 = icmp eq i32 %i.aeq, 0
  br i1 %.not110.i101, label %.critedge128.critedge136.i, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.aer = invoke i32 @CBB_flush(ptr noundef nonnull %16)
          to label %bb.nr unwind label %bb.ns

bb.nr:                                            ; preds = %bb.nq
  %.not111.not.i = icmp eq i32 %i.aer, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  br i1 %.not111.not.i, label %.critedge128.i, label %_ZN4bssl5ArrayIhE4InitEm.exit.thread.i

bb.ns:                                            ; preds = %bb.nq, %bb.no, %bb.nm, %bb.nl, %bb.nj, %bb.ni, %bb.ng
  %i.aes = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  br label %bb.pp

bb.nt:                                            ; preds = %bb.my
  %i.aet = and i32 %i.abo, 2
  %.not99.i = icmp eq i32 %i.aet, 0
  br i1 %.not99.i, label %bb.ok, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  %i.aeu = invoke i32 @CBB_add_u8_length_prefixed(ptr noundef nonnull %16, ptr noundef nonnull %21)
          to label %bb.nv unwind label %bb.nw

bb.nv:                                            ; preds = %bb.nu
  %.not101.i = icmp eq i32 %i.aeu, 0
  br i1 %.not101.i, label %.critedge130.i, label %bb.nx

bb.nw:                                            ; preds = %bb.nu
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %bb.oj

bb.nx:                                            ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #11
  %i.aew = load ptr, ptr %i.y, align 8, !tbaa !219
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 6
  %i.aey = load i16, ptr %i.aex, align 2, !tbaa !352
  invoke void @_ZN4bssl11SSLKeyShare6CreateEt(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %22, i16 noundef zeroext %i.aey)
          to label %bb.ny unwind label %bb.oc

bb.ny:                                            ; preds = %bb.nx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  store i8 50, ptr %i.h, align 1, !tbaa !215
  %i.aez = load ptr, ptr %22, align 8, !tbaa !223 ; 3 uses
  %.not160.i = icmp eq ptr %i.aez, null
  br i1 %.not160.i, label %bb.ob, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.afa = load ptr, ptr %i.an, align 8, !tbaa !168
  %i.afb = load i64, ptr %i.ao, align 8, !tbaa !169
  %i.afc = load ptr, ptr %i.aez, align 8, !tbaa !225
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 32
  %i.afe = load ptr, ptr %i.afd, align 8
  %i.aff = invoke noundef zeroext i1 %i.afe(ptr noundef nonnull align 8 dereferenceable(8) %i.aez, ptr noundef nonnull %21, ptr noundef nonnull %17, ptr noundef nonnull %i.h, ptr %i.afa, i64 %i.afb)
          to label %bb.oa unwind label %bb.od, !call_target !392

bb.oa:                                            ; preds = %bb.nz
  br i1 %i.aff, label %bb.oe, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.oa
  %.pre.i110 = load i8, ptr %i.h, align 1, !tbaa !215
  %i.afg = zext i8 %.pre.i110 to i32
  br label %bb.ob

bb.ob:                                            ; preds = %._crit_edge.i109, %bb.ny
  %i.afh = phi i32 [ %i.afg, %._crit_edge.i109 ], [ 50, %bb.ny ]
  invoke void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.abg, i32 noundef 2, i32 noundef %i.afh)
          to label %.critedge128.critedge138.i unwind label %bb.od

bb.oc:                                            ; preds = %bb.nx
  %i.afi = landingpad { ptr, i32 }
          cleanup
  br label %bb.oi

bb.od:                                            ; preds = %bb.og, %bb.oe, %bb.ob, %bb.nz
  %i.afj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #11
  br label %bb.oi

bb.oe:                                            ; preds = %bb.oa
  %i.afk = invoke i32 @CBB_flush(ptr noundef nonnull %16)
          to label %bb.of unwind label %bb.od

bb.of:                                            ; preds = %bb.oe
  %.not102.i111 = icmp eq i32 %i.afk, 0
  br i1 %.not102.i111, label %.critedge128.critedge138.i, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.afl = load ptr, ptr %i.an, align 8, !tbaa !168
  invoke void @OPENSSL_free(ptr noundef %i.afl)
          to label %bb.oh unwind label %bb.od

bb.oh:                                            ; preds = %bb.og
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  br label %_ZN4bssl5ArrayIhE4InitEm.exit.thread.i

bb.oi:                                            ; preds = %bb.od, %bb.oc
  %.pn103.i = phi { ptr, i32 } [ %i.afj, %bb.od ], [ %i.afi, %bb.oc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %bb.nw
  %.pn103.pn.i = phi { ptr, i32 } [ %.pn103.i, %bb.oi ], [ %i.aev, %bb.nw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  br label %bb.pp

bb.ok:                                            ; preds = %bb.nt
  %i.afm = and i32 %i.abo, 4
  %.not100.i = icmp eq i32 %i.afm, 0
  br i1 %.not100.i, label %bb.op, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.afn = zext i32 %.0.i96 to i64                ; 3 uses
  %i.afo = load ptr, ptr %17, align 8, !tbaa !168
  invoke void @OPENSSL_free(ptr noundef %i.afo)
          to label %.noexc144.i unwind label %bb.nb

.noexc144.i:                                      ; preds = %bb.ol
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.afp = icmp eq i32 %.0.i96, 0
  br i1 %i.afp, label %_ZN4bssl5ArrayIhE4InitEm.exit.thread.i, label %bb.om

bb.om:                                            ; preds = %.noexc144.i
  %i.afq = invoke ptr @OPENSSL_malloc(i64 noundef %i.afn)
          to label %.noexc145.i unwind label %bb.nb ; 4 uses

.noexc145.i:                                      ; preds = %bb.om
  store ptr %i.afq, ptr %17, align 8, !tbaa !168
  %i.afr = icmp eq ptr %i.afq, null
  br i1 %i.afr, label %.critedge128.i, label %bb.on

bb.on:                                            ; preds = %.noexc145.i
  store i64 %i.afn, ptr %i.al, align 8, !tbaa !169
  store i8 0, ptr %i.afq, align 1, !tbaa !215
  %i.afs = add nsw i64 %i.afn, -1                 ; 2 uses
  %i.aft = icmp eq i64 %i.afs, 0
  br i1 %i.aft, label %_ZN4bssl5ArrayIhE4InitEm.exit.thread.i, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afq, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.afu, i8 0, i64 %i.afs, i1 false)
  br label %_ZN4bssl5ArrayIhE4InitEm.exit.thread.i

bb.op:                                            ; preds = %bb.ok
  invoke void @_ZN4bssl14ssl_send_alertEP6ssl_stii(ptr noundef nonnull %i.abg, i32 noundef 2, i32 noundef 40)
          to label %.invoke.i108 unwind label %bb.nb

_ZN4bssl5ArrayIhE4InitEm.exit.thread.i:           ; preds = %bb.oo, %bb.on, %.noexc144.i, %bb.oh, %bb.nr
  br i1 %.not92.i93, label %bb.pi, label %bb.oq

bb.oq:                                            ; preds = %_ZN4bssl5ArrayIhE4InitEm.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  invoke void @CBB_zero(ptr noundef nonnull align 8 dereferenceable(48) %23)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEEC2Ev.exit.i unwind label %bb.pc

_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEEC2Ev.exit.i: ; preds = %bb.oq
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  %i.afv = add i32 %.0.i96, 4
  %i.afw = zext i32 %i.afv to i64
  %i.afx = load i64, ptr %i.al, align 8, !tbaa !169
  %i.afy = add i64 %i.afx, %i.afw
  %i.afz = invoke i32 @CBB_init(ptr noundef nonnull %23, i64 noundef %i.afy)
          to label %bb.or unwind label %bb.pd

bb.or:                                            ; preds = %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEEC2Ev.exit.i
  %.not114.i103 = icmp eq i32 %i.afz, 0
  br i1 %.not114.i103, label %bb.pg, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.aga = invoke i32 @CBB_add_u16_length_prefixed(ptr noundef nonnull %23, ptr noundef nonnull %24)
          to label %bb.ot unwind label %bb.pd

bb.ot:                                            ; preds = %bb.os
  %.not115.i104 = icmp eq i32 %i.aga, 0
  br i1 %.not115.i104, label %bb.pg, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.agb = load ptr, ptr %17, align 8, !tbaa !168
  %i.agc = load i64, ptr %i.al, align 8, !tbaa !169
  %i.agd = invoke i32 @CBB_add_bytes(ptr noundef nonnull %24, ptr noundef %i.agb, i64 noundef %i.agc)
          to label %bb.ov unwind label %bb.pd

bb.ov:                                            ; preds = %bb.ou
  %.not116.i = icmp eq i32 %i.agd, 0
  br i1 %.not116.i, label %bb.pg, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.age = invoke i32 @CBB_add_u16_length_prefixed(ptr noundef nonnull %23, ptr noundef nonnull %24)
          to label %bb.ox unwind label %bb.pd

bb.ox:                                            ; preds = %bb.ow
  %.not117.i = icmp eq i32 %i.age, 0
  br i1 %.not117.i, label %bb.pg, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.agf = zext i32 %.0.i96 to i64
  %i.agg = invoke i32 @CBB_add_bytes(ptr noundef nonnull %24, ptr noundef nonnull %i.d, i64 noundef %i.agf)
          to label %bb.oz unwind label %bb.pd

bb.oz:                                            ; preds = %bb.oy
  %.not118.i = icmp eq i32 %i.agg, 0
  br i1 %.not118.i, label %bb.pg, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.agh = invoke noundef zeroext i1 @_ZN4bssl14CBBFinishArrayEP6cbb_stPNS_5ArrayIhEE(ptr noundef nonnull %23, ptr noundef nonnull %17)
          to label %bb.pb unwind label %bb.pd

bb.pb:                                            ; preds = %bb.pa
  br i1 %i.agh, label %.critedge132.i, label %bb.pg

bb.pc:                                            ; preds = %bb.oq
  %i.agi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit.i102

bb.pd:                                            ; preds = %bb.pa, %bb.oy, %bb.ow, %bb.ou, %bb.os, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEEC2Ev.exit.i
  %i.agj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  invoke void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %23)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit.i102 unwind label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.agk = landingpad { ptr, i32 }
          catch ptr null
  %i.agl = extractvalue { ptr, i32 } %i.agk, 0
  call void @__clang_call_terminate(ptr %i.agl) #12
  unreachable

.critedge132.i:                                   ; preds = %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  invoke void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %23)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit147.i unwind label %bb.pf

bb.pf:                                            ; preds = %.critedge132.i
  %i.agm = landingpad { ptr, i32 }
          catch ptr null
  %i.agn = extractvalue { ptr, i32 } %i.agm, 0
  call void @__clang_call_terminate(ptr %i.agn) #12
  unreachable

_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit147.i: ; preds = %.critedge132.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  br label %bb.pi

bb.pg:                                            ; preds = %bb.pb, %bb.oz, %bb.ox, %bb.ov, %bb.ot, %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  invoke void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %23)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit148.i unwind label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.ago = landingpad { ptr, i32 }
          catch ptr null
  %i.agp = extractvalue { ptr, i32 } %i.ago, 0
  call void @__clang_call_terminate(ptr %i.agp) #12
  unreachable

_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit148.i: ; preds = %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  br label %.critedge128.i

_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit.i102: ; preds = %bb.pd, %bb.pc
  %.pn119.i = phi { ptr, i32 } [ %i.agi, %bb.pc ], [ %i.agj, %bb.pd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  br label %bb.pp

bb.pi:                                            ; preds = %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit147.i, %_ZN4bssl5ArrayIhE4InitEm.exit.thread.i
  %i.agq = invoke noundef zeroext i1 @_ZN4bssl19ssl_add_message_cbbEP6ssl_stP6cbb_st(ptr noundef nonnull %i.abg, ptr noundef nonnull %15)
          to label %bb.pj unwind label %bb.nb

bb.pj:                                            ; preds = %bb.pi
  br i1 %i.agq, label %bb.pk, label %.critedge128.i

bb.pk:                                            ; preds = %bb.pj
  %i.agr = load ptr, ptr %i.y, align 8, !tbaa !219 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 10
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 58
  store i8 48, ptr %i.agt, align 1, !tbaa !329
  %i.agu = load ptr, ptr %17, align 8, !tbaa !168
  %i.agv = load i64, ptr %i.al, align 8, !tbaa !169
  %i.agw = invoke noundef zeroext i1 @_ZN4bssl27tls1_generate_master_secretEPNS_13SSL_HANDSHAKEENS_4SpanIhEENS2_IKhEE(ptr noundef nonnull %0, ptr nonnull %i.ags, i64 48, ptr %i.agu, i64 %i.agv)
          to label %bb.pl unwind label %bb.nb

bb.pl:                                            ; preds = %bb.pk
  br i1 %i.agw, label %bb.pm, label %.critedge128.i

bb.pm:                                            ; preds = %bb.pl
  %i.agx = load i32, ptr %i.z, align 8
  %i.agy = load ptr, ptr %i.y, align 8, !tbaa !219
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 408 ; 2 uses
  %i.aha = lshr i32 %i.agx, 17
  %i.ahb = trunc i32 %i.aha to i8
  %i.ahc = and i8 %i.ahb, 1
  %i.ahd = load i8, ptr %i.agz, align 8
  %i.ahe = and i8 %i.ahd, -2
  %i.ahf = or disjoint i8 %i.ahe, %i.ahc
  store i8 %i.ahf, ptr %i.agz, align 8
  store i32 14, ptr %i.x, align 4, !tbaa !218
  br label %.critedge128.i

.critedge126.i:                                   ; preds = %_ZNSt10unique_ptrIcN4bssl8internal7DeleterEE5resetEPc.exit.i, %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %.critedge128.i

.critedge130.i:                                   ; preds = %bb.nv
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  br label %.critedge128.i

.critedge128.critedge.i:                          ; preds = %bb.mt, %bb.mq
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %.critedge128.i

.critedge128.critedge136.i:                       ; preds = %bb.np, %bb.nn, %bb.nk, %bb.nh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  br label %.critedge128.i

.critedge128.critedge138.i:                       ; preds = %bb.of, %bb.ob
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  %i.ahg = load ptr, ptr %22, align 8, !tbaa !223 ; 4 uses
  %.not.i150.i = icmp eq ptr %i.ahg, null
  br i1 %.not.i150.i, label %_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEED2Ev.exit.i, label %bb.pn

bb.pn:                                            ; preds = %.critedge128.critedge138.i
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !225
  %i.ahi = load ptr, ptr %i.ahh, align 8
  call void %i.ahi(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ahg) #11, !call_target !231, !inline_history !260
  invoke void @OPENSSL_free(ptr noundef nonnull %i.ahg)
          to label %_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEED2Ev.exit.i unwind label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.ahj = landingpad { ptr, i32 }
          catch ptr null
  %i.ahk = extractvalue { ptr, i32 } %i.ahj, 0
  call void @__clang_call_terminate(ptr %i.ahk) #12
  unreachable

_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEED2Ev.exit.i: ; preds = %bb.pn, %.critedge128.critedge138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  br label %.critedge128.i

.critedge128.i:                                   ; preds = %_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEED2Ev.exit.i, %.critedge128.critedge136.i, %.critedge128.critedge.i, %.critedge130.i, %.critedge126.i, %bb.pm, %bb.pl, %bb.pj, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit148.i, %.noexc145.i, %bb.nr, %bb.nf, %.noexc139.i, %bb.mv, %.invoke.i108
  %.11.i105 = phi i32 [ 0, %bb.mv ], [ 1, %bb.pm ], [ 0, %bb.pj ], [ 0, %.noexc145.i ], [ 0, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit148.i ], [ 0, %bb.nr ], [ 0, %_ZNSt10unique_ptrIN4bssl11SSLKeyShareENS0_8internal7DeleterEED2Ev.exit.i ], [ 0, %.critedge130.i ], [ 0, %.noexc139.i ], [ 0, %.invoke.i108 ], [ 0, %.critedge126.i ], [ 0, %bb.pl ], [ 0, %bb.nf ], [ 0, %.critedge128.critedge136.i ], [ 0, %.critedge128.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.pq

bb.pp:                                            ; preds = %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit.i102, %bb.oj, %bb.ns, %bb.nb, %bb.mx
  %.pn121.i = phi { ptr, i32 } [ %i.aes, %bb.ns ], [ %.pn119.i, %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit.i102 ], [ %.pn96.i, %bb.mx ], [ %.pn103.pn.i, %bb.oj ], [ %i.adq, %bb.nb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.ps

.critedge.i113:                                   ; preds = %bb.ly, %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %bb.pq

bb.pq:                                            ; preds = %.critedge.i113, %.critedge128.i
  %.12.i106 = phi i32 [ %.11.i105, %.critedge128.i ], [ 0, %.critedge.i113 ]
  %i.ahl = load ptr, ptr %17, align 8, !tbaa !168
  invoke void @OPENSSL_free(ptr noundef %i.ahl)
          to label %_ZN4bssl5ArrayIhED2Ev.exit.i107 unwind label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.ahm = landingpad { ptr, i32 }
          catch ptr null
  %i.ahn = extractvalue { ptr, i32 } %i.ahm, 0
  call void @__clang_call_terminate(ptr %i.ahn) #12
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit.i107:                  ; preds = %bb.pq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %bb.pu

bb.ps:                                            ; preds = %bb.pp, %bb.ma, %bb.lz
  %.pn121.pn.i = phi { ptr, i32 } [ %.pn121.i, %bb.pp ], [ %i.acf, %bb.lz ], [ %i.acg, %bb.ma ]
  %i.aho = load ptr, ptr %17, align 8, !tbaa !168
  invoke void @OPENSSL_free(ptr noundef %i.aho)
          to label %_ZN4bssl5ArrayIhED2Ev.exit151.i unwind label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.ahp = landingpad { ptr, i32 }
          catch ptr null
  %i.ahq = extractvalue { ptr, i32 } %i.ahp, 0
  call void @__clang_call_terminate(ptr %i.ahq) #12
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit151.i:                  ; preds = %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %bb.pw

bb.pu:                                            ; preds = %_ZN4bssl5ArrayIhED2Ev.exit.i107, %bb.lp
  %.13.i = phi i32 [ %.12.i106, %_ZN4bssl5ArrayIhED2Ev.exit.i107 ], [ 0, %bb.lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  invoke void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %_ZN4bsslL27do_send_client_key_exchangeEPNS_13SSL_HANDSHAKEE.exit unwind label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.ahr = landingpad { ptr, i32 }
          catch ptr null
  %i.ahs = extractvalue { ptr, i32 } %i.ahr, 0
  call void @__clang_call_terminate(ptr %i.ahs) #12
  unreachable

bb.pw:                                            ; preds = %_ZN4bssl5ArrayIhED2Ev.exit151.i, %bb.lq
  %.pn121.pn.pn.i = phi { ptr, i32 } [ %.pn121.pn.i, %_ZN4bssl5ArrayIhED2Ev.exit151.i ], [ %i.abl, %bb.lq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  invoke void @CBB_cleanup(ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit153.i unwind label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.aht = landingpad { ptr, i32 }
          catch ptr null
  %i.ahu = extractvalue { ptr, i32 } %i.aht, 0
  call void @__clang_call_terminate(ptr %i.ahu) #12
  unreachable

_ZN4bssl8internal14StackAllocatedI6cbb_stvXadL_Z8CBB_zeroEEXadL_Z11CBB_cleanupEEED2Ev.exit153.i: ; preds = %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %common.resume

_ZN4bsslL27do_send_client_key_exchangeEPNS_13SSL_HANDSHAKEE.exit: ; preds = %bb.pu
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %_ZN4bsslL16do_start_connectEPNS_13SSL_HANDSHAKEE.exit

bb.py:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.ahv = load ptr, ptr %0, align 8, !tbaa !136  ; 4 uses
  %i.ahw = load i32, ptr %i.z, align 8
  %i.ahx = and i32 %i.ahw, 32
  %.not.i115 = icmp eq i32 %i.ahx, 0
  br i1 %.not.i115, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.ahy = load ptr, ptr %i.ae, align 8, !tbaa !369
  %.not.i.i116 = icmp eq ptr %i.ahy, null
  br i1 %.not.i.i116, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %bb.pz, %bb.py
  store i32 15, ptr %i.x, align 4, !tbaa !218
  br label %_ZN4bsslL33do_send_client_certificate_verifyEPNS_13SSL_HANDSHAKEE.exit

bb.qb:                                            ; preds = %bb.pz
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @CBB_zero(ptr noundef nonnull align 8 dereferenceable(48) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.ahz = load ptr, ptr %i.ahv, align 8, !tbaa !205
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 88
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !207
  %i.aic = invoke noundef zeroext i1 %i.aib(ptr noundef nonnull %i.ahv, ptr noundef nonnull %11, ptr noundef nonnull %12, i8 noundef zeroext 15)
          to label %bb.qc unwind label %bb.qn

bb.qc:                                            ; preds = %bb.qb
  br i1 %i.aic, label %bb.qd, label %bb.ra

bb.qd:                                            ; preds = %bb.qc
  %i.aid = invoke noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %i.ahv)
          to label %bb.qe unwind label %bb.qn

bb.qe:                                            ; preds = %bb.qd
  %i.aie = icmp ugt i16 %i.aid, 770
  br i1 %i.aie, label %bb.qf, label %bb.qi

bb.qf:                                            ; preds = %bb.qe
  %i.aif = load i16, ptr %i.af, align 2, !tbaa !378
  %i.aig = invoke i32 @CBB_add_u16(ptr noundef nonnull %12, i16 noundef zeroext %i.aif)
          to label %bb.qg unwind label %bb.qn

bb.qg:                                            ; preds = %bb.qf
  %.not27.i = icmp eq i32 %i.aig, 0
  br i1 %.not27.i, label %bb.qh, label %bb.qi

bb.qh:                                            ; preds = %bb.qg
  invoke void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 1525)
          to label %bb.ra unwind label %bb.qn

bb.qi:                                            ; preds = %bb.qg, %bb.qe
  %i.aih = load ptr, ptr %i.ae, align 8, !tbaa !369
end_hunk_1
