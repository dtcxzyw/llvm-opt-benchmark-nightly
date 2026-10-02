Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_msg?download=true
inline.NumInlined: 166
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mbedtls_ssl_prepare_handshake_record:bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 3
  br label %mbedtls_ssl_update_in_pointers.exit

bb.t:                                             ; preds = %bb.r
  %i.ek = load ptr, ptr %i.dl, align 8, !tbaa !62
  br label %mbedtls_ssl_update_in_pointers.exit

mbedtls_ssl_update_in_pointers.exit:              ; preds = %bb.s, %bb.t
  %.sink117 = phi i64 [ 11, %bb.s ], [ 3, %bb.t ]
  %.sink = phi i64 [ 13, %bb.s ], [ 5, %bb.t ]
  %.sink21.i = phi ptr [ %i.ej, %bb.s ], [ %i.ek, %bb.t ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sink117 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sink ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %.sink21.i, ptr %i.en, align 8, !tbaa !38
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.el, ptr %i.eo, align 8, !tbaa !122
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.el, ptr %i.ep, align 8, !tbaa !123
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.em, ptr %i.eq, align 8, !tbaa !124
  store ptr %i.em, ptr %i.dw, align 8, !tbaa !110
  br label %.thread104

bb.u:                                             ; preds = %bb.q
  store i64 %i.ea, ptr %i.dq, align 8, !tbaa !120
  store i64 0, ptr %i.a, align 8, !tbaa !119
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.dn, ptr %i.er, align 8, !tbaa !61
  %i.es = load ptr, ptr %0, align 8, !tbaa !22
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 9
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !32
  %i.ev = icmp eq i8 %i.eu, 1
  br i1 %i.ev, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dm, i64 11
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dm, i64 19
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dm, i64 21
  br label %mbedtls_ssl_update_in_pointers.exit93

bb.w:                                             ; preds = %bb.u
  %i.ez = load ptr, ptr %i.dl, align 8, !tbaa !62
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dm, i64 11
  br label %mbedtls_ssl_update_in_pointers.exit93

mbedtls_ssl_update_in_pointers.exit93:            ; preds = %bb.v, %bb.w
  %.sink21.i90 = phi ptr [ %i.ew, %bb.v ], [ %i.ez, %bb.w ]
  %.sink20.i91 = phi ptr [ %i.ex, %bb.v ], [ %i.fa, %bb.w ] ; 3 uses
  %.sink.i92 = phi ptr [ %i.ey, %bb.v ], [ %i.do, %bb.w ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %.sink21.i90, ptr %i.fb, align 8, !tbaa !38
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.sink20.i91, ptr %i.fc, align 8, !tbaa !122
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %.sink20.i91, ptr %i.fd, align 8, !tbaa !123
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %.sink.i92, ptr %i.fe, align 8, !tbaa !124
  store ptr %.sink.i92, ptr %i.dw, align 8, !tbaa !110
  %i.ff = icmp ugt i64 %i.ea, 65535
  br i1 %i.ff, label %.thread104, label %bb.x

bb.x:                                             ; preds = %mbedtls_ssl_update_in_pointers.exit93
  %i.fg = trunc nuw i64 %i.ea to i16
  %i.fh = tail call i16 @llvm.bswap.i16(i16 %i.fg)
  store i16 %i.fh, ptr %.sink20.i91, align 1
  br label %.thread104

.thread104:                                       ; preds = %ssl_hs_is_proper_fragment.exit, %mbedtls_ssl_update_in_pointers.exit93, %bb.p, %mbedtls_ssl_update_in_pointers.exit, %bb.o, %.thread, %bb.e, %bb.n, %bb.j, %ssl_check_hs_header.exit, %bb.m, %bb.x, %bb.b
  %.2 = phi i32 [ -25984, %mbedtls_ssl_update_in_pointers.exit ], [ -29184, %bb.b ], [ %spec.select, %ssl_hs_is_proper_fragment.exit ], [ 0, %bb.x ], [ -29184, %bb.e ], [ %i.cn, %bb.m ], [ -25984, %bb.n ], [ -25728, %bb.j ], [ -29184, %ssl_check_hs_header.exit ], [ -25728, %.thread ], [ -25728, %bb.o ], [ -151, %mbedtls_ssl_update_in_pointers.exit93 ], [ -151, %bb.p ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mbedtls_ssl_update_in_pointers(ptr nofree noundef captures(none) initializes((192, 200), (208, 240)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !32
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink21 = phi ptr [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  %.sink20 = phi ptr [ %i.h, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %.sink = phi ptr [ %i.i, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %.sink21, ptr %i.p, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.sink20, ptr %i.q, align 8, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %.sink20, ptr %i.r, align 8, !tbaa !123
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %.sink, ptr %i.s, align 8, !tbaa !124
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %.sink, ptr %i.t, align 8, !tbaa !110
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_update_handshake_status(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.c, align 8, !tbaa !65
  %i.d = icmp slt i32 %.val, 27
  %i.e = icmp ne ptr %i.b, null
  %or.cond = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.k = load i64, ptr %i.j, align 8, !tbaa !121
  %i.l = tail call i32 %i.g(ptr noundef nonnull %0, ptr noundef %i.i, i64 noundef %i.k) #19 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.o = load i8, ptr %i.n, align 1, !tbaa !32
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !66   ; 5 uses
  %.not25 = icmp eq ptr %i.q, null
  br i1 %.not25, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1376 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !106
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !106
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1240 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, 1
  %.not.i = icmp eq i8 %i.w, 0
  br i1 %.not.i, label %ssl_buffering_free_slot.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 1224 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 1256
  %i.z = load i64, ptr %i.y, align 8, !tbaa !115  ; 2 uses
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !113
  %i.ab = sub i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 1248
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !116
  tail call void @mbedtls_zeroize_and_free(ptr noundef %i.ad, i64 noundef %i.z) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  br label %ssl_buffering_free_slot.exit

ssl_buffering_free_slot.exit:                     ; preds = %bb.e, %bb.f
  %i.ae = getelementptr i8, ptr %i.b, i64 1240
  %scevgep = getelementptr i8, ptr %i.b, i64 1264
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %scevgep, i64 72, i1 false)
  %scevgep28 = getelementptr i8, ptr %i.b, i64 1312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep28, i8 0, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %ssl_buffering_free_slot.exit, %bb.b
  %.022 = phi i32 [ %i.l, %bb.b ], [ 0, %ssl_buffering_free_slot.exit ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @mbedtls_ssl_dtls_replay_reset(ptr nofree noundef writeonly captures(none) initializes((288, 304)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -1, 1) i32 @mbedtls_ssl_dtls_replay_check(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 6 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %2 = load i8, ptr %1, align 1, !tbaa !34
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 40
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 32
  %9 = or disjoint i64 %8, %4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %10 = load i8, ptr %i.c, align 1, !tbaa !34
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 24
  %13 = or disjoint i64 %9, %12
  %14 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %i.d = zext i8 %15 to i64
  %i.e = shl nuw nsw i64 %i.d, 16
  %16 = or disjoint i64 %13, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.g = load i8, ptr %i.f, align 1, !tbaa !34
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 8
  %i.j = or disjoint i64 %16, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.l = load i8, ptr %i.k, align 1, !tbaa !34
  %i.m = zext i8 %i.l to i64
  %i.n = or disjoint i64 %i.j, %i.m               ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.q = load i8, ptr %i.p, align 1, !tbaa !125
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.t = load i64, ptr %i.s, align 8, !tbaa !126  ; 2 uses
  %i.u = icmp ugt i64 %i.n, %i.t
  br i1 %i.u, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = sub nuw i64 %i.t, %i.n                   ; 2 uses
  %i.w = icmp ugt i64 %i.v, 63
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.y = load i64, ptr %i.x, align 8, !tbaa !127
  %i.z = shl nuw i64 1, %i.v
  %i.aa = and i64 %i.y, %i.z
  %.not = icmp ne i64 %i.aa, 0
  %. = sext i1 %.not to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mbedtls_ssl_dtls_replay_update(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 6 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %2 = load i8, ptr %1, align 1, !tbaa !34
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 40
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 32
  %9 = or disjoint i64 %8, %4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %10 = load i8, ptr %i.c, align 1, !tbaa !34
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 24
  %13 = or disjoint i64 %9, %12
  %14 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %i.d = zext i8 %15 to i64
  %i.e = shl nuw nsw i64 %i.d, 16
  %16 = or disjoint i64 %13, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.g = load i8, ptr %i.f, align 1, !tbaa !34
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 8
  %i.j = or disjoint i64 %16, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.l = load i8, ptr %i.k, align 1, !tbaa !34
  %i.m = zext i8 %i.l to i64
  %i.n = or disjoint i64 %i.j, %i.m               ; 4 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.q = load i8, ptr %i.p, align 1, !tbaa !125
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !126  ; 3 uses
  %i.u = icmp ugt i64 %i.n, %i.t
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = sub nuw nsw i64 %i.n, %i.t               ; 2 uses
  %i.w = icmp samesign ugt i64 %i.v, 63
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.x, align 8, !tbaa !127
  %i.z = shl i64 %i.y, %i.v
  %i.aa = or i64 %i.z, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ %i.aa, %bb.d ], [ 1, %bb.c ]
  store i64 %.sink, ptr %i.x, align 8, !tbaa !127
  store i64 %i.n, ptr %i.s, align 8, !tbaa !126
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.ab = sub nuw i64 %i.t, %i.n                  ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 64
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = shl nuw i64 1, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !127
  %i.ag = or i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !127
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_read_record(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.mbedtls_record, align 8     ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !128
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader, label %bb.cr

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.g = getelementptr i8, ptr %0, i64 256        ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 264        ; 9 uses
  %i.k = getelementptr i8, ptr %0, i64 280        ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.m = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !121 ; 4 uses
  %.not.i = icmp eq i64 %i.ag, 0
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !129
  %.not19.i = icmp eq ptr %i.ah, null             ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.backedge
  br i1 %.not19.i, label %bb.c, label %ssl_consume_current_message.exit

bb.c:                                             ; preds = %bb.b
  %i.ai = load i64, ptr %i.f, align 8, !tbaa !119
  %.not21.i = icmp eq i64 %i.ai, 0
  br i1 %.not21.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !120 ; 2 uses
  %i.ak = icmp ult i64 %i.ag, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = sub nuw i64 %i.aj, %i.ag                ; 2 uses
  store i64 %i.al, ptr %i.g, align 8, !tbaa !120
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !110 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ag
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 1 %i.an, i64 %i.al, i1 false)
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.ap = load i64, ptr %i.g, align 8, !tbaa !120
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = call i16 @llvm.bswap.i16(i16 %i.aq)
  store i16 %i.ar, ptr %i.ao, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 0, ptr %i.g, align 8, !tbaa !120
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 0, ptr %i.d, align 8, !tbaa !121
  br label %bb.i

bb.h:                                             ; preds = %.backedge
  br i1 %.not19.i, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store i64 0, ptr %i.g, align 8, !tbaa !120
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.g
  %.val.pr = load i64, ptr %i.g, align 8, !tbaa !120
  %.not.i48.not = icmp eq i64 %.val.pr, 0
  br i1 %.not.i48.not, label %bb.j, label %ssl_load_buffered_message.exit.thread61

bb.j:                                             ; preds = %.thread, %bb.i
  %i.as = load ptr, ptr %0, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 9 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !32
  %i.av = icmp eq i8 %i.au, 1
  br i1 %i.av, label %bb.k, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.j
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !66
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %.val46 = load i64, ptr %i.j, align 8, !tbaa !63
  %.val47 = load i64, ptr %i.k, align 8, !tbaa !64
  %.not = icmp ugt i64 %.val46, %.val47
  %.pre90 = load ptr, ptr %i.l, align 8, !tbaa !66 ; 8 uses
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp eq ptr %.pre90, null
  br i1 %i.aw, label %.critedge.thread, label %bb.m

.critedge.thread:                                 ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %i.m, align 8, !tbaa !65
  switch i32 %i.ax, label %bb.p [
    i32 10, label %bb.n
    i32 12, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre90, i64 1232 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !108
  %.not35.i = icmp eq i8 %i.az, 0
  br i1 %.not35.i, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 20, ptr %i.n, align 8, !tbaa !109
  store i64 1, ptr %i.g, align 8, !tbaa !120
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !110
  store i8 1, ptr %i.ba, align 1, !tbaa !34
  store i64 0, ptr %i.j, align 8, !tbaa !63
  store i64 0, ptr %i.k, align 8, !tbaa !64
  store i8 0, ptr %i.ay, align 8, !tbaa !108
  br label %ssl_load_buffered_message.exit.thread61

bb.p:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre90, i64 1240
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = and i8 %i.bc, 5
  %or.cond.not.i = icmp eq i8 %i.bd, 5
  br i1 %or.cond.not.i, label %bb.q, label %.critedge
end_hunk_0
begin_hunk_1_@mbedtls_ssl_read_record:bb.a
  store i64 %i.dm, ptr %i.du, align 8, !tbaa !112
  %i.dv = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.dm) #20 ; 3 uses
  store ptr %i.dv, ptr %i.dk, align 8, !tbaa !111
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %mbedtls_ssl_update_in_pointers.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dx = load ptr, ptr %i.t, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dv, ptr align 1 %i.dx, i64 %i.dm, i1 false)
  %i.dy = add i64 %i.dn, %i.dm
  store i64 %i.dy, ptr %i.dj, align 8, !tbaa !113
  br label %mbedtls_ssl_update_in_pointers.exit.i

mbedtls_ssl_update_in_pointers.exit.i:            ; preds = %.mbedtls_ssl_update_in_pointers.exit.i_crit_edge, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.dz = phi i8 [ %.pre91, %.mbedtls_ssl_update_in_pointers.exit.i_crit_edge ], [ 22, %bb.ah ], [ 22, %bb.ag ], [ 22, %bb.af ], [ 22, %bb.ae ], [ %i.di, %bb.ad ] ; 2 uses
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !61  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 11 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 3 ; 2 uses
  store ptr %i.ec, ptr %i.u, align 8, !tbaa !38
  store ptr %i.eb, ptr %i.v, align 8, !tbaa !122
  %i.ed = zext i8 %i.dz to i32
  store i32 %i.ed, ptr %i.n, align 8, !tbaa !109
  %i.ee = load i8, ptr %i.x, align 8, !tbaa !37
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ef ; 2 uses
  store ptr %i.eg, ptr %i.i, align 8, !tbaa !123
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2 ; 2 uses
  store ptr %i.eh, ptr %i.h, align 8, !tbaa !110
  store ptr %i.eh, ptr %i.w, align 8, !tbaa !124
  %i.ei = load i64, ptr %i.y, align 8, !tbaa !40
  store i64 %i.ei, ptr %i.g, align 8, !tbaa !120
  %.0.copyload.i.i.i = load i16, ptr %i.ec, align 1
  %i.ej = icmp eq i16 %.0.copyload.i.i.i, 0
  br i1 %i.ej, label %bb.ai, label %ssl_check_client_reconnect.exit.thread.i

bb.ai:                                            ; preds = %mbedtls_ssl_update_in_pointers.exit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !78
  %i.em = icmp eq i8 %i.el, 1
  br i1 %i.em, label %bb.aj, label %ssl_check_client_reconnect.exit.thread.i

bb.aj:                                            ; preds = %bb.ai
  %.val.i85.i = load i32, ptr %i.m, align 8, !tbaa !65
  %i.en = icmp sgt i32 %.val.i85.i, 26
  %i.eo = icmp eq i8 %i.dz, 22
  %or.cond113.i = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %or.cond113.i, label %bb.ak, label %ssl_check_client_reconnect.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.ep = load i64, ptr %i.j, align 8, !tbaa !63
  %i.eq = icmp ugt i64 %i.ep, 13
  br i1 %i.eq, label %bb.al, label %ssl_check_client_reconnect.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  %i.er = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 13
  %i.et = load i8, ptr %i.es, align 1, !tbaa !34
  %i.eu = icmp eq i8 %i.et, 1
  br i1 %i.eu, label %ssl_check_client_reconnect.exit.i, label %ssl_check_client_reconnect.exit.thread.i

ssl_check_client_reconnect.exit.i:                ; preds = %bb.al
  %i.ev = call fastcc i32 @ssl_handle_possible_reconnect(ptr noundef nonnull %0) ; 2 uses
  %.not82.i = icmp eq i32 %i.ev, 0
  br i1 %.not82.i, label %ssl_check_client_reconnect.exit.thread.i, label %ssl_get_next_record.exit

ssl_check_client_reconnect.exit.thread.i:         ; preds = %ssl_check_client_reconnect.exit.i, %bb.al, %bb.ak, %bb.aj, %bb.ai, %mbedtls_ssl_update_in_pointers.exit.i
  %i.ew = load i64, ptr %i.s, align 8, !tbaa !42
  store i64 %i.ew, ptr %i.k, align 8, !tbaa !64
  br label %ssl_get_next_record.exit.thread65

bb.am:                                            ; preds = %bb.ac
  store i64 0, ptr %i.k, align 8, !tbaa !64
  store i64 0, ptr %i.j, align 8, !tbaa !63
  br label %ssl_get_next_record.exit.thread65

bb.an:                                            ; preds = %bb.aa
  %i.ex = load i64, ptr %i.s, align 8, !tbaa !42  ; 2 uses
  br i1 %i.df, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i64 %i.ex, ptr %i.k, align 8, !tbaa !64
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.ey = call i32 @mbedtls_ssl_fetch_input(ptr noundef nonnull %0, i64 noundef %i.ex) ; 2 uses
  %.not78.i = icmp eq i32 %i.ey, 0
  br i1 %.not78.i, label %bb.aq, label %ssl_get_next_record.exit

bb.aq:                                            ; preds = %bb.ap
  store i64 0, ptr %i.j, align 8, !tbaa !63
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %i.ez = load ptr, ptr %i.z, align 8, !tbaa !33  ; 3 uses
  %.not.i86.i = icmp eq ptr %i.ez, null
  br i1 %.not.i86.i, label %.critedge.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 88
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !49
  %i.fc = icmp eq i32 %i.fb, 772
  %i.fd = load i8, ptr %i.r, align 8
  %.not56.i.i = icmp eq i8 %i.fd, 20
  %or.cond115.i = select i1 %i.fc, i1 %.not56.i.i, i1 false
  br i1 %or.cond115.i, label %.critedge.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fe = call i32 @mbedtls_ssl_decrypt_buf(ptr nonnull poison, ptr noundef nonnull %i.ez, ptr noundef nonnull %2) ; 2 uses
  switch i32 %i.fe, label %ssl_prepare_record_content.exit.thread.i [
    i32 0, label %bb.av
    i32 -24576, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at
  %i.ff = load ptr, ptr %0, align 8, !tbaa !22
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 22
  %i.fh = load i8, ptr %i.fg, align 2, !tbaa !170
  %i.fi = icmp eq i8 %i.fh, 0
  %spec.select50.i.i = select i1 %i.fi, i32 -25984, i32 -24576
  br label %ssl_prepare_record_content.exit.thread.i

bb.av:                                            ; preds = %bb.at
  %i.fj = load i8, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %i.fk = and i8 %i.fj, -4
  %or.cond8.i.i.i = icmp eq i8 %i.fk, 20
  br i1 %or.cond8.i.i.i, label %bb.aw, label %ssl_prepare_record_content.exit.thread.i

bb.aw:                                            ; preds = %bb.av
  %i.fl = load i64, ptr %i.y, align 8, !tbaa !40
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.fn = load i32, ptr %i.ab, align 8, !tbaa !105
  %i.fo = icmp ne i32 %i.fn, 771
  %.not47.i.i = icmp eq i8 %i.fj, 23
  %or.cond.i89.i = or i1 %.not47.i.i, %i.fo
  br i1 %or.cond.i89.i, label %bb.ay, label %ssl_prepare_record_content.exit.thread.i

bb.ay:                                            ; preds = %bb.ax
  %i.fp = load i32, ptr %i.aa, align 8, !tbaa !171 ; 2 uses
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.aa, align 8, !tbaa !171
  %i.fr = icmp sgt i32 %i.fp, 2
  br i1 %i.fr, label %ssl_prepare_record_content.exit.thread.thread.i, label %bb.ba

bb.az:                                            ; preds = %bb.aw
  store i32 0, ptr %i.aa, align 8, !tbaa !171
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fs = load ptr, ptr %0, align 8, !tbaa !22
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 9
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !32
  %i.fv = icmp eq i8 %i.fu, 1
  br i1 %i.fv, label %.critedge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ba, %bb.bb
  %.0.i87.i = phi i32 [ %i.gb, %bb.bb ], [ 8, %bb.ba ] ; 2 uses
  %i.fw = zext i32 %.0.i87.i to i64               ; 2 uses
  %.val51.i.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.fx = getelementptr i8, ptr %.val51.i.i, i64 9
  %.val51.val.i.i = load i8, ptr %i.fx, align 1, !tbaa !32 ; 2 uses
  %i.fy = icmp eq i8 %.val51.val.i.i, 1
  %..i52.i.i = select i1 %i.fy, i64 2, i64 0
  %i.fz = icmp samesign ult i64 %..i52.i.i, %i.fw
  br i1 %i.fz, label %bb.bb, label %split.i.i

bb.bb:                                            ; preds = %.preheader.i.i
  %i.ga = load ptr, ptr %i.u, align 8, !tbaa !38
  %i.gb = add i32 %.0.i87.i, -1                   ; 2 uses
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gc ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !34
  %i.gf = add i8 %i.ge, 1                         ; 2 uses
  store i8 %i.gf, ptr %i.gd, align 1, !tbaa !34
  %.not48.i.i = icmp eq i8 %i.gf, 0
  br i1 %.not48.i.i, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !168

._crit_edge.i.i:                                  ; preds = %bb.bb
  %.val.pre.i.i = load ptr, ptr %0, align 8, !tbaa !22
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.val.pre.i.i, i64 9
  %.val.val.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !tbaa !32
  br label %split.i.i, !llvm.loop !168

split.i.i:                                        ; preds = %.preheader.i.i, %._crit_edge.i.i
  %.val.val.i.i = phi i8 [ %.val.val.pre.i.i, %._crit_edge.i.i ], [ %.val51.val.i.i, %.preheader.i.i ]
  %i.gg = icmp eq i8 %.val.val.i.i, 1
  %..i53.i.i = select i1 %i.gg, i64 2, i64 0
  %.not49.i.i = icmp eq i64 %..i53.i.i, %i.fw
  br i1 %.not49.i.i, label %ssl_prepare_record_content.exit.thread.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %split.i.i, %bb.ba, %bb.as, %bb.ar
  %i.gh = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 9
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !32
  %i.gk = icmp eq i8 %i.gj, 1
  br i1 %i.gk, label %bb.bc, label %mbedtls_ssl_dtls_replay_update.exit.i.thread.i

bb.bc:                                            ; preds = %.critedge.i.i
  %i.gl = load ptr, ptr %i.u, align 8, !tbaa !38  ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  %4 = load i8, ptr %3, align 1, !tbaa !34
  %5 = zext i8 %4 to i64
  %6 = shl nuw nsw i64 %5, 40
  %7 = getelementptr inbounds nuw i8, ptr %i.gl, i64 3
  %8 = load i8, ptr %7, align 1, !tbaa !34
  %9 = zext i8 %8 to i64
  %10 = shl nuw nsw i64 %9, 32
  %11 = or disjoint i64 %10, %6
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %12 = load i8, ptr %i.gm, align 1, !tbaa !34
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 24
  %15 = or disjoint i64 %11, %14
  %16 = getelementptr inbounds nuw i8, ptr %i.gl, i64 5
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %i.gn = zext i8 %17 to i64
  %i.go = shl nuw nsw i64 %i.gn, 16
  %18 = or disjoint i64 %15, %i.go
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 6
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !34
  %i.gr = zext i8 %i.gq to i64
  %i.gs = shl nuw nsw i64 %i.gr, 8
  %i.gt = or disjoint i64 %18, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 7
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !34
  %i.gw = zext i8 %i.gv to i64
  %i.gx = or disjoint i64 %i.gt, %i.gw            ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gh, i64 15
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !125
  %i.ha = icmp eq i8 %i.gz, 0
  br i1 %i.ha, label %mbedtls_ssl_dtls_replay_update.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hb = load i64, ptr %i.ac, align 8, !tbaa !126 ; 3 uses
  %i.hc = icmp ugt i64 %i.gx, %i.hb
  br i1 %i.hc, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.hd = sub nuw nsw i64 %i.gx, %i.hb            ; 2 uses
  %i.he = icmp samesign ugt i64 %i.hd, 63
  br i1 %i.he, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = load i64, ptr %i.ad, align 8, !tbaa !127
  %i.hg = shl i64 %i.hf, %i.hd
  %i.hh = or i64 %i.hg, 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.sink.i.i.i = phi i64 [ %i.hh, %bb.bf ], [ 1, %bb.be ]
  store i64 %.sink.i.i.i, ptr %i.ad, align 8, !tbaa !127
  store i64 %i.gx, ptr %i.ac, align 8, !tbaa !126
  br label %mbedtls_ssl_dtls_replay_update.exit.i.i

bb.bh:                                            ; preds = %bb.bd
  %i.hi = sub nuw i64 %i.hb, %i.gx                ; 2 uses
  %i.hj = icmp ult i64 %i.hi, 64
  br i1 %i.hj, label %bb.bi, label %mbedtls_ssl_dtls_replay_update.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.hk = shl nuw i64 1, %i.hi
  %i.hl = load i64, ptr %i.ad, align 8, !tbaa !127
  %i.hm = or i64 %i.hl, %i.hk
  store i64 %i.hm, ptr %i.ad, align 8, !tbaa !127
  br label %mbedtls_ssl_dtls_replay_update.exit.i.i

mbedtls_ssl_dtls_replay_update.exit.i.i:          ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bc
  %i.hn = load i64, ptr %i.y, align 8, !tbaa !40
  %i.ho = icmp ugt i64 %i.hn, 16384
  br i1 %i.ho, label %ssl_prepare_record_content.exit.thread.i, label %ssl_prepare_record_content.exit.thread102.i

mbedtls_ssl_dtls_replay_update.exit.i.thread.i:   ; preds = %.critedge.i.i
  %i.hp = load i64, ptr %i.y, align 8, !tbaa !40
  %i.hq = icmp ugt i64 %i.hp, 16384
  br i1 %i.hq, label %ssl_prepare_record_content.exit.thread.i, label %ssl_prepare_record_content.exit.thread102.thread.i

ssl_prepare_record_content.exit.thread.i:         ; preds = %mbedtls_ssl_dtls_replay_update.exit.i.thread.i, %mbedtls_ssl_dtls_replay_update.exit.i.i, %split.i.i, %bb.ax, %bb.av, %bb.au, %bb.at
  %.3.i101.i = phi i32 [ -29184, %bb.ax ], [ %spec.select50.i.i, %bb.au ], [ -27520, %split.i.i ], [ -29184, %mbedtls_ssl_dtls_replay_update.exit.i.i ], [ -29184, %bb.av ], [ %i.fe, %bb.at ], [ -29184, %mbedtls_ssl_dtls_replay_update.exit.i.thread.i ] ; 3 uses
  %i.hr = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 9
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !32
  %i.hu = icmp eq i8 %i.ht, 1
  %i.hv = icmp eq i32 %.3.i101.i, -29056          ; 2 uses
  br i1 %i.hu, label %bb.bj, label %bb.bn

ssl_prepare_record_content.exit.thread.thread.i:  ; preds = %bb.ay
  %i.hw = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 9
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !32
  %i.hz = icmp eq i8 %i.hy, 1
  br i1 %i.hz, label %.thread.i, label %ssl_get_next_record.exit.thread.sink.split

bb.bj:                                            ; preds = %ssl_prepare_record_content.exit.thread.i
  br i1 %i.hv, label %.thread.i, label %ssl_get_next_record.exit

.thread.i:                                        ; preds = %bb.bj, %ssl_prepare_record_content.exit.thread.thread.i
  %i.ia = phi ptr [ %i.hr, %bb.bj ], [ %i.hw, %ssl_prepare_record_content.exit.thread.thread.i ]
  %i.ib = load i32, ptr %i.m, align 8, !tbaa !65
  switch i32 %i.ib, label %bb.bk [
    i32 11, label %ssl_get_next_record.exit.thread.sink.split
    i32 13, label %ssl_get_next_record.exit.thread.sink.split
  ]

bb.bk:                                            ; preds = %.thread.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 304
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !172 ; 2 uses
  %.not80.i = icmp eq i32 %i.id, 0
  br i1 %.not80.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ie = load i32, ptr %i.af, align 4, !tbaa !173
  %i.if = add i32 %i.ie, 1                        ; 2 uses
  store i32 %i.if, ptr %i.af, align 4, !tbaa !173
  %.not81.i = icmp ult i32 %i.if, %i.id
  br i1 %.not81.i, label %bb.bm, label %ssl_get_next_record.exit.thread

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  store i64 0, ptr %i.k, align 8, !tbaa !64
  store i64 0, ptr %i.j, align 8, !tbaa !63
  br label %ssl_get_next_record.exit.thread65

bb.bn:                                            ; preds = %ssl_prepare_record_content.exit.thread.i
  br i1 %i.hv, label %ssl_get_next_record.exit.thread.sink.split, label %ssl_get_next_record.exit

ssl_prepare_record_content.exit.thread102.i:      ; preds = %mbedtls_ssl_dtls_replay_update.exit.i.i
  %i.ig = load ptr, ptr %i.p, align 8, !tbaa !61  ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 11
  br label %ssl_get_next_record.exit.thread67

ssl_prepare_record_content.exit.thread102.thread.i: ; preds = %mbedtls_ssl_dtls_replay_update.exit.i.thread.i
  %i.ij = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.ik = load ptr, ptr %i.p, align 8, !tbaa !61  ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 3
  br label %ssl_get_next_record.exit.thread67

ssl_get_next_record.exit.thread67:                ; preds = %ssl_prepare_record_content.exit.thread102.i, %ssl_prepare_record_content.exit.thread102.thread.i
  %i.im = phi ptr [ %i.ig, %ssl_prepare_record_content.exit.thread102.i ], [ %i.ik, %ssl_prepare_record_content.exit.thread102.thread.i ]
  %.sink21.i90.i = phi ptr [ %i.ih, %ssl_prepare_record_content.exit.thread102.i ], [ %i.ij, %ssl_prepare_record_content.exit.thread102.thread.i ]
  %.sink20.i91.i = phi ptr [ %i.ii, %ssl_prepare_record_content.exit.thread102.i ], [ %i.il, %ssl_prepare_record_content.exit.thread102.thread.i ] ; 2 uses
  store ptr %.sink21.i90.i, ptr %i.u, align 8, !tbaa !38
  store ptr %.sink20.i91.i, ptr %i.v, align 8, !tbaa !122
  %i.in = load i8, ptr %i.x, align 8, !tbaa !37
  %i.io = zext i8 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %.sink20.i91.i, i64 %i.io ; 2 uses
  store ptr %i.ip, ptr %i.i, align 8, !tbaa !123
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  store ptr %i.iq, ptr %i.w, align 8, !tbaa !124
  %i.ir = load i8, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %i.is = zext i8 %i.ir to i32
  store i32 %i.is, ptr %i.n, align 8, !tbaa !109
  store i8 %i.ir, ptr %i.im, align 1, !tbaa !34
  %i.it = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.iu = load i64, ptr %i.ae, align 8, !tbaa !39
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iu
  store ptr %i.iv, ptr %i.h, align 8, !tbaa !110
  %i.iw = load i64, ptr %i.y, align 8, !tbaa !40  ; 2 uses
  store i64 %i.iw, ptr %i.g, align 8, !tbaa !120
  %i.ix = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.iy = trunc i64 %i.iw to i16
  %i.iz = call i16 @llvm.bswap.i16(i16 %i.iy)
  store i16 %i.iz, ptr %i.ix, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %ssl_load_buffered_message.exit.thread61

ssl_get_next_record.exit.thread.sink.split:       ; preds = %ssl_prepare_record_content.exit.thread.thread.i, %bb.bn, %.thread.i, %.thread.i
  %i.ja = call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 20) ; 0 uses
  br label %ssl_get_next_record.exit.thread

ssl_get_next_record.exit.thread:                  ; preds = %bb.bl, %bb.v, %ssl_get_next_record.exit.thread.sink.split
  %.067.i.ph = phi i32 [ -29056, %ssl_get_next_record.exit.thread.sink.split ], [ -29056, %bb.bl ], [ -27648, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %ssl_consume_current_message.exit

ssl_get_next_record.exit.thread65:                ; preds = %ssl_check_client_reconnect.exit.thread.i, %bb.bm, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.backedge.backedge

ssl_get_next_record.exit:                         ; preds = %bb.z, %bb.ab, %ssl_check_client_reconnect.exit.i, %bb.ap, %bb.bj, %bb.bn
  %.067.i = phi i32 [ %.3.i101.i, %bb.bj ], [ %.3.i101.i, %bb.bn ], [ %i.db, %bb.ab ], [ %i.cy, %bb.z ], [ %i.ev, %ssl_check_client_reconnect.exit.i ], [ %i.ey, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  switch i32 %.067.i, label %ssl_consume_current_message.exit [
    i32 -25984, label %.backedge.backedge
    i32 0, label %ssl_load_buffered_message.exit.thread61
  ]

ssl_load_buffered_message.exit.thread61:          ; preds = %bb.o, %bb.r, %ssl_get_next_record.exit.thread67, %ssl_get_next_record.exit, %bb.i
  %i.jb = call i32 @mbedtls_ssl_handle_message_type(ptr noundef nonnull %0) ; 2 uses
  switch i32 %i.jb, label %ssl_consume_current_message.exit [
    i32 -25728, label %bb.bo
    i32 -25984, label %.backedge.backedge
    i32 -26240, label %.backedge.backedge
    i32 0, label %bb.ck
  ]

.backedge.backedge:                               ; preds = %ssl_load_buffered_message.exit.thread61, %ssl_load_buffered_message.exit.thread61, %bb.ca, %ssl_hs_is_proper_fragment.exit.i, %bb.ce, %bb.cj, %bb.cf, %bb.bq, %bb.bp, %bb.bo, %bb.bs, %ssl_get_next_record.exit.thread65, %ssl_get_next_record.exit
  br label %.backedge

bb.bo:                                            ; preds = %ssl_load_buffered_message.exit.thread61
  %i.jc = load ptr, ptr %i.l, align 8, !tbaa !66  ; 5 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %.backedge.backedge, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.je = load i32, ptr %i.n, align 8, !tbaa !109
  switch i32 %i.je, label %.backedge.backedge [
    i32 20, label %bb.bq
    i32 22, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 1232
  store i8 1, ptr %i.jf, align 8, !tbaa !108
  br label %.backedge.backedge

bb.br:                                            ; preds = %bb.bp
  %i.jg = load ptr, ptr %i.h, align 8, !tbaa !110 ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %.0.copyload.i.i = load i16, ptr %i.jh, align 1
  %i.ji = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i)
  %i.jj = zext i16 %i.ji to i32                   ; 3 uses
  %i.jk = load i64, ptr %i.d, align 8, !tbaa !121 ; 6 uses
  %i.jl = add i64 %i.jk, -12                      ; 3 uses
end_hunk_1
begin_hunk_2_@mbedtls_ssl_write:bb.a
  br label %mbedtls_ssl_flush_output.exit.thread.i

mbedtls_ssl_flush_output.exit.i:                  ; preds = %bb.l
  %.not29.i = icmp eq i32 %i.aw, 0
  br i1 %.not29.i, label %mbedtls_ssl_flush_output.exit.thread.i, label %ssl_write_real.exit

bb.v:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %.0.i16, ptr %i.ci, align 8, !tbaa !99
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 23, ptr %i.cj, align 8, !tbaa !100
  %.not27.i = icmp eq i64 %.0.i16, 0
  br i1 %.not27.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr readonly align 1 %1, i64 %.0.i16, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cm = tail call i32 @mbedtls_ssl_write_record(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %.not28.i = icmp eq i32 %i.cm, 0
  br i1 %.not28.i, label %mbedtls_ssl_flush_output.exit.thread.i, label %ssl_write_real.exit

mbedtls_ssl_flush_output.exit.thread.i:           ; preds = %bb.x, %mbedtls_ssl_flush_output.exit.i, %bb.u, %bb.t
  %i.cn = trunc i64 %.0.i16 to i32
  br label %ssl_write_real.exit

ssl_write_real.exit:                              ; preds = %bb.m, %mbedtls_ssl_flush_output.exit.thread.i, %bb.x, %mbedtls_ssl_flush_output.exit.i, %bb.k, %bb.i, %bb.g, %ssl_check_ctr_renegotiate.exit.thread.thread, %ssl_check_ctr_renegotiate.exit, %bb.a, %bb.b
  %.0 = phi i32 [ %i.aa, %ssl_check_ctr_renegotiate.exit.thread.thread ], [ -135, %bb.a ], [ %i.z, %ssl_check_ctr_renegotiate.exit ], [ -135, %bb.b ], [ %i.aw, %mbedtls_ssl_flush_output.exit.i ], [ %i.ab, %bb.g ], [ -135, %bb.i ], [ %i.cn, %mbedtls_ssl_flush_output.exit.thread.i ], [ %i.cm, %bb.x ], [ -135, %bb.k ], [ -27648, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_close_notify(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !22
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.d, align 8, !tbaa !65
  %i.e = icmp slt i32 %.val, 27
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 0) ; 2 uses
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -135, %bb.a ], [ -135, %bb.b ], [ %i.f, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_ssl_transform_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.c = load i32, ptr %i.b, align 4, !tbaa !60
  %i.d = tail call i32 @psa_destroy_key(i32 noundef %i.c) #19 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50
  %i.g = tail call i32 @psa_destroy_key(i32 noundef %i.f) #19 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !59
  %i.j = tail call i32 @psa_destroy_key(i32 noundef %i.i) #19 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = load i32, ptr %i.k, align 4, !tbaa !54
  %i.m = tail call i32 @psa_destroy_key(i32 noundef %i.l) #19 ; 0 uses
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 240) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare i32 @psa_destroy_key(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @mbedtls_ssl_set_inbound_transform(ptr nofree noundef captures(none) initializes((120, 128)) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  store i64 0, ptr %i.c, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @mbedtls_ssl_set_outbound_transform(ptr nofree noundef writeonly captures(none) initializes((128, 136), (424, 432)) %0, ptr noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.a, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i16 @mbedtls_ssl_read_version(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %.0.copyload.i = load i16, ptr %0, align 1      ; 2 uses
  %i.a = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i) ; 2 uses
  %i.b = icmp eq i32 %1, 1
  %i.c = icmp eq i16 %.0.copyload.i, -2
  %i.d = select i1 %i.c, i16 513, i16 512
  %i.e = sub i16 %i.d, %i.a
  %.0 = select i1 %i.b, i16 %i.e, i16 %i.a
  ret i16 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_handle_pending_alert(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !131
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.e = load i8, ptr %i.d, align 1, !tbaa !132
  %i.f = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext %i.e) ; 3 uses
  %cond = icmp eq i32 %i.f, -26752
  br i1 %cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !131
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.h = load i32, ptr %i.g, align 4, !tbaa !133
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ 0, %bb.a ], [ -26752, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @mbedtls_ssl_pend_fatal_alert(ptr nofree noundef writeonly captures(none) initializes((328, 330), (332, 336)) %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 1, ptr %i.a, align 8, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 329
  store i8 %1, ptr %i.b, align 1, !tbaa !132
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i32 %2, ptr %i.c, align 4, !tbaa !133
  ret void
}

declare i32 @psa_status_to_mbedtls(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @psa_generic_status_to_mbedtls(i32 noundef) #3

declare i32 @psa_export_key(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @psa_hash_setup(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @psa_hash_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @psa_hash_clone(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @psa_hash_finish(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @mbedtls_ct_memcpy_if(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @psa_hash_abort(ptr noundef) local_unnamed_addr #3

declare i64 @mbedtls_ssl_get_output_max_frag_len(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

declare i64 @mbedtls_ssl_get_current_mtu(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @mbedtls_ssl_dtls_record_replay_check(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  store ptr %1, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %2 = load i8, ptr %i.c, align 1, !tbaa !34
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 40
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 32
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 24
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %16 = load i8, ptr %15, align 1, !tbaa !34
  %i.d = zext i8 %16 to i64
  %i.e = shl nuw nsw i64 %i.d, 16
  %17 = or disjoint i64 %14, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.g = load i8, ptr %i.f, align 1, !tbaa !34
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 8
  %i.j = or disjoint i64 %17, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.l = load i8, ptr %i.k, align 1, !tbaa !34
  %i.m = zext i8 %i.l to i64
  %i.n = or disjoint i64 %i.j, %i.m               ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.q = load i8, ptr %i.p, align 1, !tbaa !125
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %mbedtls_ssl_dtls_replay_check.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.t = load i64, ptr %i.s, align 8, !tbaa !126  ; 2 uses
  %i.u = icmp ugt i64 %i.n, %i.t
  br i1 %i.u, label %mbedtls_ssl_dtls_replay_check.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = sub nuw i64 %i.t, %i.n                   ; 2 uses
  %i.w = icmp ugt i64 %i.v, 63
  br i1 %i.w, label %mbedtls_ssl_dtls_replay_check.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.y = load i64, ptr %i.x, align 8, !tbaa !127
  %i.z = shl nuw i64 1, %i.v
  %i.aa = and i64 %i.y, %i.z
  %.not.i = icmp ne i64 %i.aa, 0
  %..i = sext i1 %.not.i to i32
  br label %mbedtls_ssl_dtls_replay_check.exit

mbedtls_ssl_dtls_replay_check.exit:               ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %..i, %bb.d ]
  store ptr %i.b, ptr %i.a, align 8, !tbaa !38
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @ssl_buffer_make_space(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ssl_free_buffered_record.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1336 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %ssl_free_buffered_record.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1224 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  %i.h = load i64, ptr %i.g, align 8, !tbaa !112
  %i.i = load i64, ptr %i.f, align 8, !tbaa !113
  %i.j = sub i64 %i.i, %i.h
  store i64 %i.j, ptr %i.f, align 8, !tbaa !113
  tail call void @free(ptr noundef nonnull %i.e) #19
  store ptr null, ptr %i.d, align 8, !tbaa !111
  br label %ssl_free_buffered_record.exit

ssl_free_buffered_record.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1224 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !113
  %i.m = sub i64 32768, %i.l
  %.not = icmp ugt i64 %1, %i.m
  br i1 %.not, label %bb.e, label %.loopexit

.critedge33:                                      ; preds = %bb.e, %ssl_buffering_free_slot.exit
  %.val13.1 = load ptr, ptr %i.a, align 8, !tbaa !66 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val13.1, i64 1288 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 1
  %.not.i14.1 = icmp eq i8 %i.p, 0
  br i1 %.not.i14.1, label %.critedge, label %ssl_buffering_free_slot.exit.1

ssl_buffering_free_slot.exit.1:                   ; preds = %.critedge33
  %i.q = getelementptr inbounds nuw i8, ptr %.val13.1, i64 1224 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val13.1, i64 1304
  %i.s = load i64, ptr %i.r, align 8, !tbaa !115  ; 2 uses
  %i.t = load i64, ptr %i.q, align 8, !tbaa !113
  %i.u = sub i64 %i.t, %i.s
  store i64 %i.u, ptr %i.q, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw i8, ptr %.val13.1, i64 1296
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !116
  tail call void @mbedtls_zeroize_and_free(ptr noundef %i.w, i64 noundef %i.s) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.pre19 = load i64, ptr %i.k, align 8, !tbaa !113
  %.pre23 = sub i64 32768, %.pre19
  %i.x = icmp ugt i64 %1, %.pre23
  br i1 %i.x, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %.critedge33, %ssl_buffering_free_slot.exit.1
  %.val13.2 = load ptr, ptr %i.a, align 8, !tbaa !66 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val13.2, i64 1264 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, 1
  %.not.i14.2 = icmp eq i8 %i.aa, 0
  br i1 %.not.i14.2, label %.critedge32, label %ssl_buffering_free_slot.exit.2

ssl_buffering_free_slot.exit.2:                   ; preds = %.critedge
  %i.ab = getelementptr inbounds nuw i8, ptr %.val13.2, i64 1224 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val13.2, i64 1280
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !115 ; 2 uses
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !113
  %i.af = sub i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !113
  %i.ag = getelementptr inbounds nuw i8, ptr %.val13.2, i64 1272
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !116
  tail call void @mbedtls_zeroize_and_free(ptr noundef %i.ah, i64 noundef %i.ad) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.pre20 = load i64, ptr %i.k, align 8, !tbaa !113
  %.pre25 = sub i64 32768, %.pre20
  %i.ai = icmp ugt i64 %1, %.pre25
  br i1 %i.ai, label %.critedge32, label %.loopexit

.critedge32:                                      ; preds = %.critedge, %ssl_buffering_free_slot.exit.2
  %.val13.3 = load ptr, ptr %i.a, align 8, !tbaa !66 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val13.3, i64 1240 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = and i8 %i.ak, 1
  %.not.i14.3 = icmp eq i8 %i.al, 0
  br i1 %.not.i14.3, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.critedge32
  %i.am = getelementptr inbounds nuw i8, ptr %.val13.3, i64 1224 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val13.3, i64 1256
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !115 ; 2 uses
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !113
  %i.aq = sub i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.am, align 8, !tbaa !113
  %i.ar = getelementptr inbounds nuw i8, ptr %.val13.3, i64 1248
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !116
  tail call void @mbedtls_zeroize_and_free(ptr noundef %i.as, i64 noundef %i.ao) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %.pre21 = load i64, ptr %i.k, align 8, !tbaa !113
  %.pre27 = sub i64 32768, %.pre21
  %i.at = icmp ugt i64 %1, %.pre27
  %i.au = sext i1 %i.at to i32
  br label %.loopexit

bb.e:                                             ; preds = %ssl_free_buffered_record.exit
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !66 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val13, i64 1312 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8
  %i.ax = and i8 %i.aw, 1
  %.not.i14 = icmp eq i8 %i.ax, 0
  br i1 %.not.i14, label %.critedge33, label %ssl_buffering_free_slot.exit

ssl_buffering_free_slot.exit:                     ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.val13, i64 1224 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val13, i64 1328
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !115 ; 2 uses
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !113
  %i.bc = sub i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !113
  %i.bd = getelementptr inbounds nuw i8, ptr %.val13, i64 1320
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !116
  tail call void @mbedtls_zeroize_and_free(ptr noundef %i.be, i64 noundef %i.ba) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %.pre = load i64, ptr %i.k, align 8, !tbaa !113
  %.pre22 = sub i64 32768, %.pre
  %i.bf = icmp ugt i64 %1, %.pre22
  br i1 %i.bf, label %.critedge33, label %.loopexit

.loopexit:                                        ; preds = %.critedge32, %bb.d, %ssl_buffering_free_slot.exit, %ssl_buffering_free_slot.exit.1, %ssl_buffering_free_slot.exit.2, %ssl_free_buffered_record.exit
  %.010 = phi i32 [ 0, %ssl_free_buffered_record.exit ], [ 0, %ssl_buffering_free_slot.exit ], [ 0, %ssl_buffering_free_slot.exit.2 ], [ 0, %ssl_buffering_free_slot.exit.1 ], [ -1, %.critedge32 ], [ %i.au, %bb.d ]
  ret i32 %.010
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ssl_bitmask_set(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 16777216) %1, i64 noundef range(i64 0, 16777216) %2) unnamed_addr #15 {
bb.a:
  %i.a = trunc nuw nsw i64 %1 to i32
  %i.b = and i32 %i.a, 7                          ; 15 uses
  %i.c = sub nuw nsw i32 8, %i.b                  ; 8 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %1, 3                           ; 2 uses
  %i.e = zext nneg i32 %i.c to i64                ; 3 uses
  %.not44 = icmp samesign ugt i64 %2, %i.e
  br i1 %.not44, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not4651 = icmp eq i64 %2, 0
  br i1 %.not4651, label %.loopexit50.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  %.promoted = load i8, ptr %i.f, align 1, !tbaa !34
  %i.g = trunc nuw nsw i64 %2 to i32
  %i.h = sub nsw i32 %i.c, %i.g
  %i.i = shl nuw nsw i32 1, %i.h
  %i.j = trunc i32 %i.i to i8
  %i.k = or i8 %.promoted, %i.j                   ; 2 uses
  %i.l = add nsw i64 %2, -1                       ; 2 uses
  %.not46 = icmp eq i64 %i.l, 0
  br i1 %.not46, label %..loopexit50_crit_edge, label %bb.c
end_hunk_2
begin_hunk_3_@ssl_bitmask_check:bb.a
  br i1 %i.q, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %exitcond24.not.4 = icmp eq i64 %i.c, 5
  br i1 %exitcond24.not.4, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = and i32 %i.f, 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %exitcond24.not.5 = icmp eq i64 %i.c, 6
  br i1 %exitcond24.not.5, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = and i32 %i.f, 2
  %i.u = icmp eq i32 %i.t, 0
  %spec.select = select i1 %i.u, i32 -1, i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.lr.ph, %.lr.ph17, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %.preheader
  %.011 = phi i32 [ 0, %.preheader ], [ -1, %.lr.ph ], [ -1, %.lr.ph17 ], [ 0, %bb.c ], [ -1, %bb.d ], [ 0, %bb.e ], [ -1, %bb.f ], [ 0, %bb.g ], [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.j ], [ 0, %bb.k ], [ -1, %bb.l ], [ 0, %bb.m ], [ %spec.select, %bb.n ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ssl_handle_possible_reconnect(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !188  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.l = load i64, ptr %i.k, align 8, !tbaa !189  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = load i64, ptr %i.o, align 8, !tbaa !63   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !84   ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.s = icmp ult i64 %i.p, 61
  br i1 %i.s, label %mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %.0.copyload.i.i = load i16, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 19
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.x = load i8, ptr %i.w, align 1, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 21
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  %i.aa = load i8, ptr %i.n, align 1, !tbaa !34
  %i.ab = icmp ne i8 %i.aa, 22
  %i.ac = icmp ne i16 %.0.copyload.i.i, 0
  %or.cond.i = select i1 %i.ab, i1 true, i1 %i.ac
  %i.ad = or i8 %i.x, %i.v
  %i.ae = or i8 %i.ad, %i.z
  %i.af = icmp ne i8 %i.ae, 0
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.af
  br i1 %or.cond3.i, label %mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 59
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !34
  %i.ai = zext i8 %i.ah to i64                    ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 61               ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, %i.p
  br i1 %i.ak, label %mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.an = load i8, ptr %i.am, align 1, !tbaa !34
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %i.ap = add nuw nsw i64 %i.aj, %i.ao
  %i.aq = icmp ugt i64 %i.ap, %i.p
  br i1 %i.aq, label %mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !190
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 61
  %i.au = tail call i32 %i.g(ptr noundef %i.as, ptr noundef nonnull %i.at, i64 noundef %i.ao, ptr noundef %i.j, i64 noundef %i.l) #19, !inline_history !185
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.r, ptr noundef nonnull align 1 dereferenceable(25) %i.n, i64 25, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  store i8 3, ptr %i.aw, align 1, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 25
  store i8 -2, ptr %i.ax, align 1, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 26
  store i8 -1, ptr %i.ay, align 1, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  store ptr %i.az, ptr %i.a, align 8, !tbaa !117
  %i.ba = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !186
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !190
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 16384
  %i.bg = call i32 %i.bc(ptr noundef %i.be, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bf, ptr noundef %i.j, i64 noundef %i.l) #19, !inline_history !185
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %bb.i, label %mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread

mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.h
  %.0.i.ph = phi i32 [ -27648, %bb.h ], [ -29440, %bb.f ], [ -29440, %bb.e ], [ -29440, %bb.d ], [ -29440, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.r to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 5 uses
  %i.bl = trunc i64 %i.bk to i8                   ; 2 uses
  %i.bm = add i8 %i.bl, -28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 27
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !34
  %i.bo = add i64 %i.bk, 16777191
  %i.bp = lshr i64 %i.bo, 16
  %i.bq = trunc i64 %i.bp to i8                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 22
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !34
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !34
  %i.bt = add i64 %i.bk, 65511
  %i.bu = lshr i64 %i.bt, 8
  %i.bv = trunc i64 %i.bu to i8                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 23
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 15
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !34
  %i.by = add i8 %i.bl, -25                       ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !34
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 %i.by, ptr %i.ca, align 1, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  %i.cc = trunc i64 %i.bk to i16
  %i.cd = add i16 %i.cc, -13
  %i.ce = call i16 @llvm.bswap.i16(i16 %i.cd)
  store i16 %i.ce, ptr %i.cb, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !81
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !67
  %i.cj = load ptr, ptr %i.q, align 8, !tbaa !84
  %i.ck = call i32 %i.cg(ptr noundef %i.ci, ptr noundef %i.cj, i64 noundef %i.bk) #19 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cl = tail call i32 @mbedtls_ssl_session_reset_int(ptr noundef nonnull %0, i32 noundef 1) #19 ; 2 uses
  %.not = icmp eq i32 %i.cl, 0
  %. = select i1 %.not, i32 -26496, i32 %i.cl
  br label %bb.k

bb.k:                                             ; preds = %mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread, %bb.j, %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ %., %bb.j ], [ 0, %bb.b ], [ %.0.i.ph, %mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread ]
  ret i32 %.0
}

declare i32 @mbedtls_ssl_session_reset_int(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mbedtls_ssl_renegotiate(ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_ssl_start_renegotiation(ptr noundef) local_unnamed_addr #3

declare i32 @mbedtls_ssl_get_max_out_record_payload(ptr noundef) local_unnamed_addr #3

declare void @mbedtls_zeroize_and_free(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS18mbedtls_ssl_config", !10, i64 0}
!12 = !{!"p1 _ZTS19mbedtls_ssl_session", !10, i64 0}
!13 = !{!"p1 _ZTS28mbedtls_ssl_handshake_params", !10, i64 0}
!14 = !{!"p1 _ZTS21mbedtls_ssl_transform", !10, i64 0}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"short", !6, i64 0}
!18 = !{!"mbedtls_ssl_context", !11, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !13, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !7, i64 248, !16, i64 256, !16, i64 264, !17, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !7, i64 320, !7, i64 324, !6, i64 328, !6, i64 329, !7, i64 332, !6, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !7, i64 400, !16, i64 408, !16, i64 416, !6, i64 424, !17, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !16, i64 464, !7, i64 472, !16, i64 480, !6, i64 488, !6, i64 500, !6, i64 512, !6, i64 544, !6, i64 545, !10, i64 552, !10, i64 560, !6, i64 568}
!19 = !{!18, !10, i64 168}
!20 = !{!18, !10, i64 160}
!21 = !{!18, !10, i64 176}
!22 = !{!18, !11, i64 0}
!23 = !{!"p1 int", !10, i64 0}
!24 = !{!"p1 _ZTS24mbedtls_x509_crt_profile", !10, i64 0}
!25 = !{!"p1 _ZTS20mbedtls_ssl_key_cert", !10, i64 0}
!26 = !{!"p1 _ZTS16mbedtls_x509_crt", !10, i64 0}
!27 = !{!"p1 _ZTS16mbedtls_x509_crl", !10, i64 0}
!28 = !{!"p1 short", !10, i64 0}
!29 = !{!"any p2 pointer", !10, i64 0}
!30 = !{!"p2 omnipotent char", !29, i64 0}
!31 = !{!"mbedtls_ssl_config", !7, i64 0, !7, i64 4, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !6, i64 12, !6, i64 13, !6, i64 14, !6, i64 15, !6, i64 16, !6, i64 17, !17, i64 18, !6, i64 20, !6, i64 21, !6, i64 22, !23, i64 24, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !16, i64 176, !24, i64 184, !25, i64 192, !26, i64 200, !27, i64 208, !28, i64 216, !28, i64 224, !7, i64 232, !15, i64 240, !16, i64 248, !15, i64 256, !16, i64 264, !30, i64 272, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !6, i64 296, !7, i64 304, !6, i64 312, !10, i64 320, !26, i64 328}
!32 = !{!31, !6, i64 9}
!33 = !{!18, !14, i64 120}
!34 = !{!6, !6, i64 0}
!35 = !{!"", !6, i64 0, !6, i64 8, !6, i64 9, !15, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !6, i64 48, !6, i64 49}
!36 = !{!35, !6, i64 8}
!37 = !{!35, !6, i64 48}
!38 = !{!18, !15, i64 192}
!39 = !{!35, !16, i64 32}
!40 = !{!35, !16, i64 40}
!41 = !{!35, !15, i64 16}
!42 = !{!35, !16, i64 24}
!43 = !{!18, !17, i64 272}
!44 = !{i64 2718769}
!45 = !{!"mbedtls_ssl_transform", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !6, i64 40, !6, i64 56, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !6, i64 104, !6, i64 105, !6, i64 106, !6, i64 138, !6, i64 170}
!46 = !{!45, !16, i64 8}
!47 = !{!45, !16, i64 16}
!48 = !{!45, !16, i64 32}
!49 = !{!45, !7, i64 88}
!50 = !{!45, !7, i64 96}
!51 = !{!45, !7, i64 100}
!52 = !{!16, !16, i64 0}
!53 = !{!45, !16, i64 24}
!54 = !{!45, !7, i64 76}
!55 = !{!45, !7, i64 80}
!56 = !{i64 2721647, i64 2721697, i64 2721769, i64 2721841, i64 2721913}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!45, !6, i64 105}
!59 = !{!45, !7, i64 72}
!60 = !{!45, !7, i64 92}
!61 = !{!18, !15, i64 200}
!62 = !{!18, !15, i64 184}
!63 = !{!18, !16, i64 264}
!64 = !{!18, !16, i64 280}
!65 = !{!18, !7, i64 8}
!66 = !{!18, !13, i64 112}
!67 = !{!18, !10, i64 72}
!68 = !{ptr @mbedtls_ssl_set_timer}
!69 = !{!"p1 _ZTS25mbedtls_ssl_ciphersuite_t", !10, i64 0}
!70 = !{!"", !15, i64 0, !16, i64 8, !7, i64 16}
!71 = !{!"", !16, i64 0, !6, i64 8, !6, i64 16, !70, i64 112}
!72 = !{!"p1 _ZTS23mbedtls_ssl_flight_item", !10, i64 0}
!73 = !{!"psa_hash_operation_s", !7, i64 0, !6, i64 8}
!74 = !{!"", !6, i64 0, !6, i64 64}
!75 = !{!"mbedtls_ssl_handshake_params", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !7, i64 8, !6, i64 12, !6, i64 13, !69, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !6, i64 57, !6, i64 58, !6, i64 59, !17, i64 60, !17, i64 62, !6, i64 64, !28, i64 104, !28, i64 112, !17, i64 120, !16, i64 128, !7, i64 136, !6, i64 140, !6, i64 141, !16, i64 1168, !28, i64 1176, !7, i64 1184, !6, i64 1188, !17, i64 1190, !25, i64 1192, !25, i64 1200, !26, i64 1208, !27, i64 1216, !71, i64 1224, !15, i64 1360, !17, i64 1368, !6, i64 1370, !7, i64 1372, !7, i64 1376, !7, i64 1380, !72, i64 1384, !72, i64 1392, !15, i64 1400, !7, i64 1408, !14, i64 1416, !6, i64 1424, !6, i64 1432, !6, i64 1433, !6, i64 1465, !17, i64 1466, !73, i64 1472, !73, i64 1704, !17, i64 1936, !6, i64 1938, !6, i64 1944, !6, i64 2024, !6, i64 2088, !16, i64 2208, !7, i64 2216, !7, i64 2220, !6, i64 2224, !15, i64 2232, !14, i64 2240, !6, i64 2248, !74, i64 2312, !15, i64 2440, !16, i64 2448, !26, i64 2456}
!76 = !{!75, !7, i64 1380}
!77 = !{!31, !7, i64 284}
!78 = !{!31, !6, i64 8}
!79 = !{!18, !7, i64 16}
!80 = !{!31, !7, i64 280}
!81 = !{!18, !10, i64 48}
!82 = !{!18, !16, i64 416}
!83 = !{!18, !15, i64 360}
!84 = !{!18, !15, i64 344}
!85 = !{!18, !14, i64 128}
!86 = !{!18, !15, i64 352}
!87 = !{!18, !15, i64 368}
!88 = !{!18, !15, i64 376}
!89 = !{!18, !15, i64 384}
!90 = !{!18, !15, i64 392}
!91 = !{!"mbedtls_ssl_flight_item", !15, i64 0, !16, i64 8, !6, i64 16, !72, i64 24}
!92 = !{!91, !72, i64 24}
!93 = !{!91, !15, i64 0}
!94 = !{!75, !6, i64 13}
!95 = !{!75, !72, i64 1384}
!96 = !{!91, !6, i64 16}
!97 = !{ptr @mbedtls_ssl_flush_output}
!98 = !{!91, !16, i64 8}
!99 = !{!18, !16, i64 408}
!100 = !{!18, !7, i64 400}
!101 = !{!45, !16, i64 0}
!102 = !{!"psa_key_policy_s", !7, i64 0, !7, i64 4, !7, i64 8}
!103 = !{!"psa_key_attributes_s", !17, i64 0, !17, i64 2, !7, i64 4, !102, i64 8, !7, i64 20}
!104 = !{!103, !17, i64 0}
!105 = !{!18, !7, i64 24}
!106 = !{!75, !7, i64 1376}
!107 = !{!75, !7, i64 1408}
!108 = !{!75, !6, i64 1232}
!109 = !{!18, !7, i64 248}
!110 = !{!18, !15, i64 232}
!111 = !{!75, !15, i64 1336}
!112 = !{!75, !16, i64 1344}
!113 = !{!75, !16, i64 1224}
!114 = !{!"mbedtls_ssl_hs_buffer", !7, i64 0, !7, i64 0, !7, i64 0, !15, i64 8, !16, i64 16}
!115 = !{!114, !16, i64 16}
!116 = !{!114, !15, i64 8}
!117 = !{!15, !15, i64 0}
!118 = !{!75, !10, i64 24}
!119 = !{!18, !16, i64 312}
!120 = !{!18, !16, i64 256}
!121 = !{!18, !16, i64 304}
!122 = !{!18, !15, i64 208}
!123 = !{!18, !15, i64 216}
!124 = !{!18, !15, i64 224}
!125 = !{!31, !6, i64 15}
!126 = !{!18, !16, i64 288}
!127 = !{!18, !16, i64 296}
!128 = !{!18, !7, i64 324}
!129 = !{!18, !15, i64 240}
!130 = !{!31, !6, i64 16}
!131 = !{!18, !6, i64 328}
!132 = !{!18, !6, i64 329}
!133 = !{!18, !7, i64 332}
!134 = !{!31, !16, i64 176}
!135 = !{!31, !7, i64 0}
!136 = distinct !{!136, !57}
!137 = distinct !{!137, !57}
!138 = !{!45, !6, i64 104}
!139 = !{i64 2728300, i64 2728350, i64 2728422, i64 2728494, i64 2728566, i64 2728638, i64 2728710, i64 2728782, i64 2728854}
!140 = distinct !{!140, !57}
!141 = distinct !{!141, !142}
!142 = !{!"llvm.loop.unroll.disable"}
!143 = distinct !{!143, !57, !150, !151}
!144 = distinct !{!144, !57, !150, !151}
!145 = distinct !{!145, !57, !151, !150}
!146 = distinct !{!146, !57}
!147 = distinct !{!147, !57, !150, !151}
!148 = distinct !{!148, !57, !150, !151}
!149 = distinct !{!149, !57, !151, !150}
!150 = !{!"llvm.loop.isvectorized", i32 1}
!151 = !{!"llvm.loop.unroll.runtime.disable"}
!152 = !{!"branch_weights", i32 4, i32 28}
!153 = distinct !{!153, !57}
!154 = !{!18, !10, i64 56}
!155 = !{!18, !10, i64 64}
!156 = !{ptr @mbedtls_ssl_check_timer}
!157 = !{!7, !7, i64 0}
!158 = !{!31, !7, i64 288}
!159 = !{!75, !17, i64 1466}
!160 = distinct !{!160, !57}
!161 = !{!75, !72, i64 1392}
!162 = !{!75, !15, i64 1400}
!163 = !{!75, !14, i64 1416}
!164 = !{!18, !6, i64 336}
end_hunk_3
