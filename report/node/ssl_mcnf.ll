begin_hunk_0_@ssl_do_config
define internal fastcc range(i32 0, 2) i32 @ssl_do_config(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
end_hunk_0
begin_hunk_1_@ssl_do_config:bb.a

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, null
  %4 = icmp ne i32 %3, 0                          ; 3 uses
  %or.cond3 = and i1 %i.h, %4
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @.str.1, ptr %i.a, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %5 = phi ptr [ @.str.1, %bb.d ], [ %2, %bb.c ]  ; 2 uses
  %i.i = call i32 @conf_ssl_name_find(ptr noundef %5, ptr noundef nonnull %i.b) #4
  %.not.a = icmp eq i32 %i.i, 0
  br i1 %.not.a, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %4, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 44, ptr noundef nonnull @__func__.ssl_do_config) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 113, ptr noundef nonnull @.str.2, ptr noundef %5) #4
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  %i.j = load i64, ptr %i.b, align 8, !tbaa !12
  %i.k = call ptr @conf_ssl_get(i64 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #4
  %i.l = call ptr @SSL_CONF_CTX_new() #4          ; 7 uses
end_hunk_1
begin_hunk_2_@ssl_do_config:bb.a
  %i.aq = zext i1 %.not58 to i32
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.h, %bb.f, %bb.g, %bb.b
  %.250 = phi i1 [ false, %bb.b ], [ false, %bb.g ], [ %i.ap, %._crit_edge ], [ false, %bb.h ], [ false, %bb.f ]
  %.046 = phi i32 [ 1, %bb.b ], [ 1, %bb.g ], [ %i.aq, %._crit_edge ], [ 1, %bb.h ], [ 1, %bb.f ]
  %.044 = phi ptr [ null, %bb.b ], [ null, %bb.g ], [ %i.l, %._crit_edge ], [ null, %bb.h ], [ null, %bb.f ]
  %.043 = phi ptr [ null, %bb.b ], [ null, %bb.g ], [ %i.ac, %._crit_edge ], [ null, %bb.h ], [ null, %bb.f ]
  %.0 = phi i32 [ %3, %bb.b ], [ 0, %bb.g ], [ %3, %._crit_edge ], [ 0, %bb.h ], [ 1, %bb.f ]
  %i.ar = call ptr @OSSL_LIB_CTX_set0_default(ptr noundef %.043) #4 ; 0 uses
  call void @SSL_CONF_CTX_free(ptr noundef %.044) #4
  %.not62 = icmp eq i32 %.0, 0
end_hunk_2
