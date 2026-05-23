inline.NumInlined: 174
inline.NumDeleted: 64
begin_hunk_0_@mbedtls_ssl_set_hs_authmode:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.a, ptr %i.d, align 2, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mbedtls_ssl_set_verify(ptr noundef writeonly captures(none) initializes((32, 48)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !178
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.b, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @mbedtls_ssl_conf_has_static_psk(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = load i64, ptr %i.d, align 8, !tbaa !157
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.j = load i64, ptr %i.i, align 8, !tbaa !159
  %.not4 = icmp eq i64 %i.j, 0
  br i1 %.not4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -32512, 1) i32 @mbedtls_ssl_conf_psk(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = load i64, ptr %i.d, align 8, !tbaa !157
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.j = load i64, ptr %i.i, align 8, !tbaa !159
  %.not4.i = icmp eq i64 %i.j, 0
  br i1 %.not4.i, label %bb.e, label %mbedtls_ssl_conf_has_static_psk.exit

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %i.k = icmp eq ptr %1, null
  %i.l = add i64 %2, -49
  %i.m = icmp ult i64 %i.l, -48
  %or.cond20 = or i1 %i.k, %i.m
  br i1 %or.cond20, label %mbedtls_ssl_conf_has_static_psk.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %2) #26 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !158
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %mbedtls_ssl_conf_has_static_psk.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %2, ptr %i.q, align 8, !tbaa !159
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %1, i64 %2, i1 false)
  %i.r = icmp eq ptr %3, null
  %i.s = add i64 %4, -16385
  %i.t = icmp ult i64 %i.s, -16384
  %or.cond17.i = or i1 %i.r, %i.t
  br i1 %or.cond17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %4) #26 ; 3 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !156
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %ssl_conf_set_psk_identity.exit

ssl_conf_set_psk_identity.exit:                   ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %4, ptr %i.w, align 8, !tbaa !157
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %3, i64 %4, i1 false)
  br label %mbedtls_ssl_conf_has_static_psk.exit

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0.i21.ph = phi i32 [ -32512, %bb.h ], [ -28928, %bb.g ] ; 2 uses
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.n, i64 noundef %2) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %.not10.i = icmp eq ptr %i.x, null
  br i1 %.not10.i, label %mbedtls_ssl_conf_has_static_psk.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.x) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %mbedtls_ssl_conf_has_static_psk.exit

mbedtls_ssl_conf_has_static_psk.exit:             ; preds = %bb.j, %bb.i, %ssl_conf_set_psk_identity.exit, %bb.d, %bb.f, %bb.e
  %.0 = phi i32 [ -32512, %bb.f ], [ -28800, %bb.d ], [ -28928, %bb.e ], [ 0, %ssl_conf_set_psk_identity.exit ], [ %.0.i21.ph, %bb.i ], [ %.0.i21.ph, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -32512, 1) i32 @mbedtls_ssl_set_hs_psk(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = icmp ugt i64 %2, 48
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !180  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %ssl_remove_psk.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1688
  %i.i = load i64, ptr %i.h, align 8, !tbaa !181
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.g, i64 noundef %i.i) #25
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1680
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !70
  br label %ssl_remove_psk.exit

ssl_remove_psk.exit:                              ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.c, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.m = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %2) #26 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1680
  store ptr %i.m, ptr %i.n, align 8, !tbaa !180
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ssl_remove_psk.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 1688
  store i64 %2, ptr %i.p, align 8, !tbaa !181
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %ssl_remove_psk.exit, %bb.a, %bb.b, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -28928, %bb.a ], [ -32512, %ssl_remove_psk.exit ], [ -28928, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mbedtls_ssl_conf_psk_cb(ptr noundef writeonly captures(none) initializes((128, 144)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.a, align 8, !tbaa !182
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %2, ptr %i.b, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 4) i32 @mbedtls_ssl_get_mode_from_transform(ptr noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.a, align 8, !tbaa !184 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %mbedtls_cipher_get_cipher_mode.exit.thread, label %mbedtls_cipher_get_cipher_mode.exit

mbedtls_cipher_get_cipher_mode.exit:              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %1 = trunc i32 %i.d to i16
  %trunc = and i16 %1, -4096
  switch i16 %trunc, label %mbedtls_cipher_get_cipher_mode.exit.thread [
    i16 8192, label %mbedtls_ssl_get_base_mode.exit
    i16 -20480, label %.fold.split.i
    i16 -32768, label %.fold.split.i
    i16 24576, label %.fold.split.i
  ]

mbedtls_cipher_get_cipher_mode.exit.thread:       ; preds = %bb.a, %mbedtls_cipher_get_cipher_mode.exit
  br label %mbedtls_ssl_get_base_mode.exit

.fold.split.i:                                    ; preds = %mbedtls_cipher_get_cipher_mode.exit, %mbedtls_cipher_get_cipher_mode.exit, %mbedtls_cipher_get_cipher_mode.exit
  br label %mbedtls_ssl_get_base_mode.exit

mbedtls_ssl_get_base_mode.exit:                   ; preds = %mbedtls_cipher_get_cipher_mode.exit, %mbedtls_cipher_get_cipher_mode.exit.thread, %.fold.split.i
  %i.e = phi i1 [ false, %mbedtls_cipher_get_cipher_mode.exit.thread ], [ true, %mbedtls_cipher_get_cipher_mode.exit ], [ false, %.fold.split.i ]
  %.0.i3 = phi i32 [ 0, %mbedtls_cipher_get_cipher_mode.exit.thread ], [ 1, %mbedtls_cipher_get_cipher_mode.exit ], [ 3, %.fold.split.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !185
  %i.h = icmp eq i32 %i.g, 1
  %or.cond.i = and i1 %i.e, %i.h
  %..i = select i1 %or.cond.i, i32 2, i32 %.0.i3
  ret i32 %..i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @mbedtls_ssl_get_mode_from_ciphersuite(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !186
  %i.c = zext i8 %i.b to i32
  %i.d = tail call ptr @mbedtls_cipher_info_from_type(i32 noundef %i.c) #25 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %mbedtls_ssl_get_base_mode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val = load i32, ptr %i.e, align 8
  %2 = trunc i32 %.val to i16
  %trunc = and i16 %2, -4096
  switch i16 %trunc, label %bb.c [
    i16 8192, label %mbedtls_ssl_get_base_mode.exit
    i16 -20480, label %.fold.split.i
    i16 -32768, label %.fold.split.i
    i16 24576, label %.fold.split.i
  ]

bb.c:                                             ; preds = %bb.b
  br label %mbedtls_ssl_get_base_mode.exit

.fold.split.i:                                    ; preds = %bb.b, %bb.b, %bb.b
  br label %mbedtls_ssl_get_base_mode.exit

mbedtls_ssl_get_base_mode.exit:                   ; preds = %.fold.split.i, %bb.c, %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.b ], [ false, %.fold.split.i ]
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ], [ 3, %.fold.split.i ]
  %i.g = icmp eq i32 %0, 1
  %or.cond.i = and i1 %i.g, %i.f
  %..i = select i1 %or.cond.i, i32 2, i32 %.0
  ret i32 %..i
}

declare ptr @mbedtls_cipher_info_from_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -134, 1) i32 @mbedtls_ssl_cipher_to_psa(i32 noundef %0, i64 noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.aa [
    i32 5, label %.sink.split
    i32 38, label %bb.b
    i32 14, label %bb.c
    i32 39, label %bb.d
    i32 15, label %bb.e
    i32 7, label %bb.f
    i32 40, label %bb.g
    i32 16, label %bb.h
    i32 53, label %bb.i
    i32 65, label %bb.j
    i32 62, label %bb.k
    i32 66, label %bb.l
    i32 63, label %bb.m
    i32 55, label %bb.n
    i32 67, label %bb.o
    i32 64, label %bb.p
    i32 20, label %bb.q
    i32 44, label %bb.r
    i32 29, label %bb.s
    i32 45, label %bb.t
    i32 30, label %bb.u
    i32 22, label %bb.v
    i32 46, label %bb.w
    i32 31, label %bb.x
    i32 77, label %bb.y
    i32 1, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %.not111 = icmp eq i64 %1, 0
  %.tr112 = trunc i64 %1 to i32
  %i.a = shl i32 %.tr112, 16
  %i.b = and i32 %i.a, 4128768
  %i.c = or disjoint i32 %i.b, 88080640
  %i.d = select i1 %.not111, i32 89129216, i32 %i.c
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %.not109 = icmp eq i64 %1, 0
  %.tr110 = trunc i64 %1 to i32
  %i.e = shl i32 %.tr110, 16
  %i.f = and i32 %i.e, 4128768
  %i.g = or disjoint i32 %i.f, 88080640
  %i.h = select i1 %.not109, i32 89129216, i32 %i.g
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %.not107 = icmp eq i64 %1, 0
  %.tr108 = trunc i64 %1 to i32
  %i.i = shl i32 %.tr108, 16
  %i.j = and i32 %i.i, 4128768
  %i.k = or disjoint i32 %i.j, 88080640
  %i.l = select i1 %.not107, i32 89129216, i32 %i.k
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  br label %.sink.split

bb.i:                                             ; preds = %bb.a
  br label %.sink.split

bb.j:                                             ; preds = %bb.a
  %.not105 = icmp eq i64 %1, 0
  %.tr106 = trunc i64 %1 to i32
  %i.m = shl i32 %.tr106, 16
  %i.n = and i32 %i.m, 4128768
  %i.o = or disjoint i32 %i.n, 88080640
  %i.p = select i1 %.not105, i32 89129216, i32 %i.o
  br label %.sink.split

bb.k:                                             ; preds = %bb.a
  br label %.sink.split

bb.l:                                             ; preds = %bb.a
  %.not103 = icmp eq i64 %1, 0
  %.tr104 = trunc i64 %1 to i32
  %i.q = shl i32 %.tr104, 16
  %i.r = and i32 %i.q, 4128768
  %i.s = or disjoint i32 %i.r, 88080640
  %i.t = select i1 %.not103, i32 89129216, i32 %i.s
  br label %.sink.split

bb.m:                                             ; preds = %bb.a
  br label %.sink.split

bb.n:                                             ; preds = %bb.a
  br label %.sink.split

bb.o:                                             ; preds = %bb.a
  %.not101 = icmp eq i64 %1, 0
  %.tr102 = trunc i64 %1 to i32
  %i.u = shl i32 %.tr102, 16
  %i.v = and i32 %i.u, 4128768
  %i.w = or disjoint i32 %i.v, 88080640
  %i.x = select i1 %.not101, i32 89129216, i32 %i.w
  br label %.sink.split

bb.p:                                             ; preds = %bb.a
  br label %.sink.split

bb.q:                                             ; preds = %bb.a
  br label %.sink.split

bb.r:                                             ; preds = %bb.a
  %.not99 = icmp eq i64 %1, 0
  %.tr100 = trunc i64 %1 to i32
  %i.y = shl i32 %.tr100, 16
  %i.z = and i32 %i.y, 4128768
  %i.aa = or disjoint i32 %i.z, 88080640
  %i.ab = select i1 %.not99, i32 89129216, i32 %i.aa
  br label %.sink.split

bb.s:                                             ; preds = %bb.a
  br label %.sink.split

bb.t:                                             ; preds = %bb.a
  %.not97 = icmp eq i64 %1, 0
  %.tr98 = trunc i64 %1 to i32
  %i.ac = shl i32 %.tr98, 16
  %i.ad = and i32 %i.ac, 4128768
  %i.ae = or disjoint i32 %i.ad, 88080640
  %i.af = select i1 %.not97, i32 89129216, i32 %i.ae
  br label %.sink.split

bb.u:                                             ; preds = %bb.a
  br label %.sink.split

bb.v:                                             ; preds = %bb.a
  br label %.sink.split

bb.w:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  %.tr = trunc i64 %1 to i32
  %i.ag = shl i32 %.tr, 16
  %i.ah = and i32 %i.ag, 4128768
  %i.ai = or disjoint i32 %i.ah, 88080640
  %i.aj = select i1 %.not, i32 89129216, i32 %i.ai
  br label %.sink.split

bb.x:                                             ; preds = %bb.a
  br label %.sink.split

bb.y:                                             ; preds = %bb.a
  br label %.sink.split

bb.z:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink114 = phi i32 [ 67108864, %bb.z ], [ %i.d, %bb.b ], [ 89129472, %bb.c ], [ %i.h, %bb.d ], [ 89129472, %bb.e ], [ 71319552, %bb.f ], [ %i.l, %bb.g ], [ 89129472, %bb.h ], [ 71319552, %bb.i ], [ %i.p, %bb.j ], [ 89129472, %bb.k ], [ %i.t, %bb.l ], [ 89129472, %bb.m ], [ 71319552, %bb.n ], [ %i.x, %bb.o ], [ 89129472, %bb.p ], [ 71319552, %bb.q ], [ %i.ab, %bb.r ], [ 89129472, %bb.s ], [ %i.af, %bb.t ], [ 89129472, %bb.u ], [ 71319552, %bb.v ], [ %i.aj, %bb.w ], [ 89129472, %bb.x ], [ 84935936, %bb.y ], [ 71319552, %bb.a ]
  %.sink113 = phi i16 [ 0, %bb.z ], [ 9216, %bb.b ], [ 9216, %bb.c ], [ 9216, %bb.d ], [ 9216, %bb.e ], [ 9216, %bb.f ], [ 9216, %bb.g ], [ 9216, %bb.h ], [ 9222, %bb.i ], [ 9222, %bb.j ], [ 9222, %bb.k ], [ 9222, %bb.l ], [ 9222, %bb.m ], [ 9222, %bb.n ], [ 9222, %bb.o ], [ 9222, %bb.p ], [ 9219, %bb.q ], [ 9219, %bb.r ], [ 9219, %bb.s ], [ 9219, %bb.t ], [ 9219, %bb.u ], [ 9219, %bb.v ], [ 9219, %bb.w ], [ 9219, %bb.x ], [ 8196, %bb.y ], [ 9216, %bb.a ]
  %.sink = phi i64 [ 0, %bb.z ], [ 128, %bb.b ], [ 128, %bb.c ], [ 192, %bb.d ], [ 192, %bb.e ], [ 256, %bb.f ], [ 256, %bb.g ], [ 256, %bb.h ], [ 128, %bb.i ], [ 128, %bb.j ], [ 128, %bb.k ], [ 192, %bb.l ], [ 192, %bb.m ], [ 256, %bb.n ], [ 256, %bb.o ], [ 256, %bb.p ], [ 128, %bb.q ], [ 128, %bb.r ], [ 128, %bb.s ], [ 192, %bb.t ], [ 192, %bb.u ], [ 256, %bb.v ], [ 256, %bb.w ], [ 256, %bb.x ], [ 256, %bb.y ], [ 128, %bb.a ]
  store i32 %.sink114, ptr %2, align 4, !tbaa !4
  store i16 %.sink113, ptr %3, align 2, !tbaa !100
  store i64 %.sink, ptr %4, align 8, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -134, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_ssl_conf_dh_param_bin(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  tail call void @mbedtls_mpi_free(ptr noundef nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
end_hunk_0
begin_hunk_1_@mbedtls_ssl_parse_sig_alg_ext:bb.a
  br label %bb.o

bb.m:                                             ; preds = %.outer._crit_edge
  %i.bf = icmp eq i32 %.0.ph.lcssa71, 0
  br i1 %i.bf, label %.thread, label %bb.n

.thread:                                          ; preds = %.outer._crit_edge.thread, %bb.m
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 6687, ptr noundef nonnull @.str.50) #25
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 40, i32 noundef -28160) #25
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = zext i32 %.0.ph.lcssa71 to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.bi
  store i16 0, ptr %i.bj, align 2, !tbaa !100
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread, %bb.l, %.lr.ph._crit_edge, %bb.d, %bb.b
  %.047 = phi i32 [ -29440, %bb.b ], [ -29440, %bb.d ], [ -29440, %.lr.ph._crit_edge ], [ -29440, %bb.l ], [ -28160, %.thread ], [ 0, %bb.n ]
  ret i32 %.047
}

declare void @mbedtls_ssl_pend_fatal_alert(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare ptr @mbedtls_ssl_sig_alg_to_str(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @mbedtls_ssl_derive_keys(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !253
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 7230, ptr noundef nonnull @.str.51) #25
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !70   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.j = load i8, ptr %i.i, align 1, !tbaa !68
  %i.k = icmp eq i8 %i.j, 10                      ; 3 uses
  %tls_prf_sha256.sink.i = select i1 %i.k, ptr @tls_prf_sha384, ptr @tls_prf_sha256 ; 2 uses
  %ssl_calc_verify_tls_sha256.sink.i = select i1 %i.k, ptr @ssl_calc_verify_tls_sha384, ptr @ssl_calc_verify_tls_sha256 ; 2 uses
  %ssl_calc_finished_tls_sha256.sink.i = select i1 %i.k, ptr @ssl_calc_finished_tls_sha384, ptr @ssl_calc_finished_tls_sha256
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  store ptr %tls_prf_sha256.sink.i, ptr %i.l, align 8, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %ssl_calc_verify_tls_sha256.sink.i, ptr %i.m, align 8, !tbaa !255
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %ssl_calc_finished_tls_sha256.sink.i, ptr %i.n, align 8, !tbaa !256
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 64, ptr %i.b, align 8, !tbaa !34
  %i.r = load i8, ptr %i.h, align 8, !tbaa !151
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 7071, ptr noundef nonnull @.str.185) #25
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 2120
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.u = load i8, ptr %i.t, align 4, !tbaa !257
  %i.v = icmp eq i8 %i.u, 1
  br i1 %i.v, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.w = call i32 %ssl_calc_verify_tls_sha256.sink.i(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25, !inline_history !258 ; 2 uses
  %.not28.i = icmp eq i32 %i.w, 0
  br i1 %.not28.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7081, ptr noundef nonnull @.str.187, i32 noundef %i.w) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = load i64, ptr %i.b, align 8, !tbaa !34
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 7085, ptr noundef nonnull @.str.188, ptr noundef nonnull %i.a, i64 noundef %i.x) #25
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !34
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !254
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.y = phi ptr [ %.pre, %bb.f ], [ %tls_prf_sha256.sink.i, %bb.c ]
  %i.z = phi i64 [ %.pre.i, %bb.f ], [ 64, %bb.c ]
  %.024.i = phi ptr [ @.str.186, %bb.f ], [ @.str.184, %bb.c ]
  %.0.i = phi ptr [ %i.a, %bb.f ], [ %i.s, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 2184 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 3264 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !259
  %i.ad = call i32 %i.y(ptr noundef nonnull %i.aa, i64 noundef %i.ac, ptr noundef nonnull %.024.i, ptr noundef nonnull %.0.i, i64 noundef %i.z, ptr noundef nonnull %i.q, i64 noundef 48) #25, !inline_history !258 ; 4 uses
  %.not29.i = icmp eq i32 %i.ad, 0
  br i1 %.not29.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !259
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 7215, ptr noundef nonnull @.str.190, ptr noundef nonnull %i.aa, i64 noundef %i.ae) #25
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.aa, i64 noundef 1076) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7209, ptr noundef nonnull @.str.189, i32 noundef %i.ad) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7245, ptr noundef nonnull @.str.53, i32 noundef %i.ad) #25
  br label %bb.m

bb.j:                                             ; preds = %bb.b, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !70  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2120 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 64, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 2152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 64) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !88
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !89  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !153
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !217
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !70  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !254
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 2120
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !85
  %i.ay = load ptr, ptr %0, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !95
  %i.bb = zext i8 %i.ba to i32
  %i.bc = call fastcc i32 @ssl_tls12_populate_transform(ptr noundef %i.al, i32 noundef %i.ao, ptr noundef nonnull %i.ap, i32 noundef %i.ar, ptr noundef %i.au, ptr noundef nonnull %i.av, i32 noundef %i.ax, i32 noundef %i.bb, ptr noundef nonnull %0) ; 3 uses
  %.not36 = icmp eq i32 %i.bc, 0
  br i1 %.not36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 7273, ptr noundef nonnull @.str.54, i32 noundef %i.bc) #25
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2120
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.be, i64 noundef 64) #25
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 7281, ptr noundef nonnull @.str.55) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.0 = phi i32 [ 0, %bb.l ], [ %i.ad, %bb.i ], [ %i.bc, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ssl_tls12_populate_transform(ptr noundef initializes((120, 128), (386, 450)) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly captures(address) %4, ptr noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7, ptr noundef %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %3, ptr %i.b, align 8, !tbaa !185
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %6, ptr %i.c, align 4, !tbaa !211
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 386
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.d, ptr noundef nonnull align 1 dereferenceable(64) %5, i64 64, i1 false)
  %i.e = icmp eq i32 %6, 772
  br i1 %i.e, label %bb.aw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @mbedtls_ssl_ciphersuite_from_id(i32 noundef %1) #25 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 8690, ptr noundef nonnull @.str.201, i32 noundef %1) #25
  br label %bb.aw

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !186
  %i.j = zext i8 %i.i to i32
  %i.k = tail call ptr @mbedtls_cipher_info_from_type(i32 noundef %i.j) #25 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %mbedtls_ssl_get_mode_from_ciphersuite.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val.i = load i32, ptr %i.l, align 8
  %9 = trunc i32 %.val.i to i16
  %trunc.i = and i16 %9, -4096
  switch i16 %trunc.i, label %bb.f [
    i16 8192, label %mbedtls_ssl_get_mode_from_ciphersuite.exit
    i16 -20480, label %.fold.split.i.i
    i16 -32768, label %.fold.split.i.i
    i16 24576, label %.fold.split.i.i
  ]

bb.f:                                             ; preds = %bb.e
  br label %mbedtls_ssl_get_mode_from_ciphersuite.exit

.fold.split.i.i:                                  ; preds = %bb.e, %bb.e, %bb.e
  br label %mbedtls_ssl_get_mode_from_ciphersuite.exit

mbedtls_ssl_get_mode_from_ciphersuite.exit:       ; preds = %bb.d, %bb.e, %bb.f, %.fold.split.i.i
  %i.m = phi i1 [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.e ], [ false, %.fold.split.i.i ]
  %.0.i = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 1, %bb.e ], [ 3, %.fold.split.i.i ]
  %i.n = icmp eq i32 %3, 1
  %or.cond.i.i = and i1 %i.n, %i.m
  %..i.i = select i1 %or.cond.i.i, i32 2, i32 %.0.i ; 2 uses
  %i.o = icmp eq i32 %..i.i, 3                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %mbedtls_ssl_get_mode_from_ciphersuite.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 19
  %i.q = load i8, ptr %i.p, align 1, !tbaa !260
  %i.r = and i8 %i.q, 2
  %.not = icmp eq i8 %i.r, 0
  %i.s = select i1 %.not, i64 16, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.s, ptr %i.t, align 8, !tbaa !236
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %mbedtls_ssl_get_mode_from_ciphersuite.exit
  %i.u = load i8, ptr %i.h, align 8, !tbaa !186
  %i.v = zext i8 %i.u to i32
  %i.w = tail call ptr @mbedtls_cipher_info_from_type(i32 noundef %i.v) #25 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %i.h, align 8, !tbaa !186
  %i.z = zext i8 %i.y to i32
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 8719, ptr noundef nonnull @.str.202, i32 noundef %i.z) #25
  br label %bb.aw

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 17 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !68
  %i.ac = zext i8 %i.ab to i32
  %i.ad = tail call ptr @mbedtls_md_info_from_type(i32 noundef %i.ac) #25 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !68
  %i.ag = zext i8 %i.af to i32
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 8735, ptr noundef nonnull @.str.203, i32 noundef %i.ag) #25
  br label %bb.aw

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1944
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !261
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %8, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 8744, ptr noundef nonnull @.str.204) #25
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 536
  %i.an = load i8, ptr %i.am, align 8, !tbaa !33  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 %i.an, ptr %i.ao, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 322 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 504
  %i.ar = zext i8 %i.an to i64                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ap, ptr nonnull align 8 %i.aq, i64 %i.ar, i1 false)
  tail call void @mbedtls_debug_print_buf(ptr noundef nonnull %8, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 8749, ptr noundef nonnull @.str.205, ptr noundef nonnull %i.ap, i64 noundef %i.ar) #25
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !70 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1977
  %i.au = load i8, ptr %i.at, align 1, !tbaa !262 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 321
  store i8 %i.au, ptr %i.av, align 1, !tbaa !44
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 354 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1945
  %i.ay = zext i8 %i.au to i64                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.aw, ptr nonnull align 1 %i.ax, i64 %i.ay, i1 false)
  tail call void @mbedtls_debug_print_buf(ptr noundef nonnull %8, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 8755, ptr noundef nonnull @.str.206, ptr noundef nonnull %i.aw, i64 noundef %i.ay) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = call i32 %4(ptr noundef %2, i64 noundef 48, ptr noundef nonnull @.str.207, ptr noundef nonnull %5, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 256) #25 ; 3 uses
  %.not216 = icmp eq i32 %i.az, 0
  br i1 %.not216, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 8764, ptr noundef nonnull @.str.189, i32 noundef %i.az) #25
  br label %bb.aw

bb.p:                                             ; preds = %bb.n
  %i.ba = call ptr @mbedtls_ssl_get_ciphersuite_name(i32 noundef %1) #25
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %8, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 8769, ptr noundef nonnull @.str.208, ptr noundef %i.ba) #25
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %8, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 8770, ptr noundef nonnull @.str.184, ptr noundef %2, i64 noundef 48) #25
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %8, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 8771, ptr noundef nonnull @.str.209, ptr noundef nonnull %5, i64 noundef 64) #25
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %8, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 8772, ptr noundef nonnull @.str.210, ptr noundef nonnull %i.a, i64 noundef 256) #25
  %i.bb = getelementptr i8, ptr %i.w, i64 8       ; 6 uses
  %.val235 = load i32, ptr %i.bb, align 8         ; 2 uses
  %i.bc = lshr i32 %.val235, 5
  %i.bd = and i32 %i.bc, 120                      ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64              ; 3 uses
  br i1 %i.o, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.bf, align 8, !tbaa !235
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.bg, align 8, !tbaa !263
  %.val232 = load i32, ptr %i.bb, align 8
  %i.bh = and i32 %.val232, 61440
  %i.bi = icmp eq i32 %i.bh, 45056
  %spec.select = select i1 %i.bi, i64 12, i64 4   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select, ptr %i.bj, align 8, !tbaa !264
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !236
  %reass.sub243 = sub i64 %i.bl, %spec.select
  %i.bm = add i64 %reass.sub243, 12
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %i.bn = and i32 %.val235, 31                    ; 2 uses
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bq = call i32 @mbedtls_md_setup(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.ad, i32 noundef 1) #25 ; 2 uses
  %.not217 = icmp eq i32 %i.bq, 0
  br i1 %.not217, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bs = call i32 @mbedtls_md_setup(ptr noundef nonnull %i.br, ptr noundef nonnull %i.ad, i32 noundef 1) #25 ; 2 uses
  %.not218 = icmp eq i32 %i.bs, 0
  br i1 %.not218, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0186 = phi i32 [ %i.bq, %bb.r ], [ %i.bs, %bb.s ] ; 2 uses
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 8837, ptr noundef nonnull @.str.86, i32 noundef %.0186) #25
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.bt = call zeroext i8 @mbedtls_md_get_size(ptr noundef nonnull %i.ad) #25 ; 2 uses
  %i.bu = zext i8 %i.bt to i64                    ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !235
  %.val237 = load i32, ptr %i.bb, align 8
  %i.bw = lshr i32 %.val237, 3
  %i.bx = and i32 %i.bw, 28                       ; 3 uses
  %i.by = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !263
  switch i32 %..i.i, label %bb.w [
    i32 0, label %bb.aa
    i32 2, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.ca = add nuw nsw i64 %i.bu, %i.bo
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cb = add nuw nsw i64 %i.bu, %i.bo
  %.rhs.trunc = trunc nuw nsw i32 %i.bn to i8
  %i.cc = urem i8 %i.bt, %.rhs.trunc
  %.zext = zext nneg i8 %i.cc to i64
  %i.cd = sub nsw i64 %i.cb, %.zext
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge = phi i64 [ %i.cd, %bb.w ], [ %i.ca, %bb.v ] ; 2 uses
  store i64 %storemerge, ptr %0, align 8, !tbaa !265
  %i.ce = icmp eq i32 %6, 771
  br i1 %i.ce, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cf = add nsw i64 %storemerge, %i.by
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 8878, ptr noundef nonnull @.str.12) #25
  br label %.thread

bb.aa:                                            ; preds = %bb.u, %bb.y, %bb.q
  %i.cg = phi i32 [ 12, %bb.q ], [ %i.bx, %bb.y ], [ %i.bx, %bb.u ]
  %storemerge242 = phi i64 [ %i.bm, %bb.q ], [ %i.cf, %bb.y ], [ %i.bu, %bb.u ] ; 2 uses
  %i.ch = phi i64 [ 0, %bb.q ], [ %i.bu, %bb.y ], [ %i.bu, %bb.u ] ; 8 uses
  store i64 %storemerge242, ptr %0, align 8, !tbaa !265
  %i.ci = trunc i64 %storemerge242 to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = trunc nuw nsw i64 %i.ch to i32
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %8, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 8894, ptr noundef nonnull @.str.211, i32 noundef %i.bd, i32 noundef %i.ci, i32 noundef %i.cg, i32 noundef %i.ck) #25
  %trunc = trunc nuw i32 %7 to i8
  switch i8 %trunc, label %bb.ad [
    i8 0, label %bb.ab
    i8 1, label %bb.ac
  ]

end_hunk_1
