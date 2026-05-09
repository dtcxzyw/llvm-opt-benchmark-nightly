inline.NumInlined: 158
inline.NumDeleted: 58
begin_hunk_0_@mbedtls_ssl_tls13_write_client_hello_exts:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61
  %i.g = icmp ult i32 %i.f, 772                   ; 3 uses
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 57, ptr noundef nonnull @.str.13) #12
  %4 = select i1 %i.g, i64 9, i64 7               ; 2 uses
  %i.h = icmp ule ptr %1, %2
  %i.i = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %5 = icmp ule i64 %4, %i.k
  %narrow.i.not.i = and i1 %i.h, %5
  br i1 %narrow.i.not.i, label %bb.c, label %ssl_tls13_write_supported_versions_ext.exit

bb.c:                                             ; preds = %bb.b
  %6 = select i1 %i.g, i8 4, i8 2
  store i16 11008, ptr %1, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %7 = select i1 %i.g, i16 1280, i16 768
  store i16 %7, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %6, ptr %i.m, align 1, !tbaa !60
  tail call void @mbedtls_ssl_write_version(ptr noundef nonnull %i.n, i32 noundef 0, i32 noundef 772) #12
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 80, ptr noundef nonnull @.str.14) #12
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !19
end_hunk_0
begin_hunk_1_@mbedtls_ssl_tls13_write_client_hello_exts:bb.a
  %i.w = load i32, ptr %i.v, align 8, !tbaa !59
  %i.x = or i32 %i.w, %i.t
  store i32 %i.x, ptr %i.v, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %4 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 1872 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
end_hunk_1
