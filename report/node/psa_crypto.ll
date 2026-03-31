begin_hunk_0
; Function Attrs: nounwind uwtable
define internal fastcc i32 @psa_mac_setup(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.b = load i32, ptr %0, align 8, !tbaa !56     ; 2 uses
end_hunk_0
begin_hunk_1
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.s = call i32 @mbedtls_psa_mac_sign_setup(ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef %i.r, i64 noundef %i.p, i32 noundef %2) #21 ; 3 uses
  switch i32 %i.s, label %psa_driver_wrapper_mac_sign_setup.exit [
    i32 0, label %psa_driver_wrapper_mac_sign_setup.exit.thread34
    i32 -134, label %psa_driver_wrapper_mac_sign_setup.exit.threadthread-pre-split
  ]

psa_driver_wrapper_mac_sign_setup.exit.thread34:  ; preds = %bb.f
  store i32 1, ptr %0, align 8, !tbaa !56
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25
  %i.x = call fastcc i32 @psa_driver_wrapper_mac_verify_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %i.u, i64 noundef %i.w, i32 noundef %2)
  br label %psa_driver_wrapper_mac_sign_setup.exit

psa_driver_wrapper_mac_sign_setup.exit:           ; preds = %bb.f, %bb.g
  %.0 = phi i32 [ %i.x, %bb.g ], [ %i.s, %bb.f ]  ; 2 uses
  %.not25 = icmp eq i32 %.0, 0
  br i1 %.not25, label %bb.i, label %psa_driver_wrapper_mac_sign_setup.exit.threadthread-pre-split

psa_driver_wrapper_mac_sign_setup.exit.threadthread-pre-split: ; preds = %psa_driver_wrapper_mac_sign_setup.exit, %bb.b, %bb.c, %bb.e, %bb.f
  %.030.ph = phi i32 [ %i.s, %bb.f ], [ %i.h, %bb.c ], [ %i.e, %bb.b ], [ -135, %bb.e ], [ %.0, %psa_driver_wrapper_mac_sign_setup.exit ]
  %.pr = load i32, ptr %0, align 8, !tbaa !56
  br label %psa_driver_wrapper_mac_sign_setup.exit.thread

psa_driver_wrapper_mac_sign_setup.exit.thread:    ; preds = %psa_driver_wrapper_mac_sign_setup.exit.threadthread-pre-split, %bb.a
  %i.y = phi i32 [ %.pr, %psa_driver_wrapper_mac_sign_setup.exit.threadthread-pre-split ], [ %i.b, %bb.a ]
  %.030 = phi i32 [ %.030.ph, %psa_driver_wrapper_mac_sign_setup.exit.threadthread-pre-split ], [ -137, %bb.a ]
  switch i32 %i.y, label %psa_driver_wrapper_mac_abort.exit.i [
    i32 0, label %psa_mac_abort.exit.a
    i32 1, label %bb.h
  ]

end_hunk_1
begin_hunk_2
  %i.ae = and i8 %i.ad, -2
  store i8 %i.ae, ptr %i.ac, align 1
  store i32 0, ptr %0, align 8, !tbaa !56
  br label %psa_mac_abort.exit.a

psa_mac_abort.exit.a:                             ; preds = %psa_driver_wrapper_mac_abort.exit.i, %psa_driver_wrapper_mac_sign_setup.exit.thread
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.ag = call i32 @psa_unregister_read_under_mutex(ptr noundef %i.af) #21 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %psa_driver_wrapper_mac_sign_setup.exit.thread34, %psa_driver_wrapper_mac_sign_setup.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.ai = call i32 @psa_unregister_read_under_mutex(ptr noundef %i.ah) #21
  br label %bb.j

bb.j:                                             ; preds = %psa_mac_abort.exit.a, %bb.i
  %4 = phi i32 [ %i.ai, %bb.i ], [ %.030, %psa_mac_abort.exit.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %4
}

; Function Attrs: nounwind uwtable
end_hunk_2
begin_hunk_3
; Function Attrs: nounwind uwtable
define internal fastcc i32 @psa_cipher_setup(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %.not = icmp eq i32 %3, 0                       ; 2 uses
end_hunk_3
begin_hunk_4
bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %2, 2130706432
  %i.e = icmp eq i32 %i.d, 67108864
  br i1 %i.e, label %bb.c, label %psa_cipher_abort.exit

bb.c:                                             ; preds = %bb.b
  %i.f = call fastcc i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %1, ptr noundef %i.a, i32 noundef %i.b, i32 noundef %2) ; 2 uses
end_hunk_4
begin_hunk_5
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18
  %i.ar = call i32 @mbedtls_psa_cipher_encrypt_setup(ptr noundef nonnull %i.al, ptr noundef nonnull %i.l, ptr noundef %i.aq, i64 noundef %i.ao, i32 noundef %2) #21 ; 2 uses
  %cond = icmp eq i32 %i.ar, 0
  br i1 %cond, label %psa_driver_wrapper_cipher_encrypt_setup.exit.thread55, label %psa_driver_wrapper_cipher_encrypt_setup.exit.threadthread-pre-split

bb.l:                                             ; preds = %bb.i
  br i1 %cond.i46, label %bb.m, label %psa_driver_wrapper_cipher_encrypt_setup.exit.threadthread-pre-split
end_hunk_5
begin_hunk_6
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.aw = call i32 @mbedtls_psa_cipher_decrypt_setup(ptr noundef nonnull %i.al, ptr noundef nonnull %i.l, ptr noundef %i.av, i64 noundef %i.at, i32 noundef %2) #21 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %psa_driver_wrapper_cipher_encrypt_setup.exit.thread55, label %psa_driver_wrapper_cipher_encrypt_setup.exit.threadthread-pre-split

psa_driver_wrapper_cipher_encrypt_setup.exit.threadthread-pre-split: ; preds = %bb.k, %bb.c, %bb.j, %bb.m, %bb.l
  %.050.ph = phi i32 [ %i.ar, %bb.k ], [ %i.f, %bb.c ], [ -135, %bb.j ], [ %i.aw, %bb.m ], [ -135, %bb.l ]
  %.pr = load i32, ptr %0, align 8, !tbaa !65
  br label %psa_driver_wrapper_cipher_encrypt_setup.exit.thread

psa_driver_wrapper_cipher_encrypt_setup.exit.thread: ; preds = %psa_driver_wrapper_cipher_encrypt_setup.exit.threadthread-pre-split, %bb.a
  %i.ay = phi i32 [ %.pr, %psa_driver_wrapper_cipher_encrypt_setup.exit.threadthread-pre-split ], [ %i.c, %bb.a ]
  %.050 = phi i32 [ %.050.ph, %psa_driver_wrapper_cipher_encrypt_setup.exit.threadthread-pre-split ], [ -137, %bb.a ] ; 2 uses
  switch i32 %i.ay, label %psa_driver_wrapper_cipher_abort.exit.i [
    i32 0, label %psa_cipher_abort.exit
    i32 1, label %bb.n
  ]

end_hunk_6
begin_hunk_7
  %i.bc = load i8, ptr %i.bb, align 4
  %i.bd = and i8 %i.bc, -4
  store i8 %i.bd, ptr %i.bb, align 4
  br label %psa_cipher_abort.exit

psa_cipher_abort.exit:                            ; preds = %bb.b, %psa_driver_wrapper_cipher_abort.exit.i, %psa_driver_wrapper_cipher_encrypt_setup.exit.thread
  %.051 = phi i32 [ %.050, %psa_driver_wrapper_cipher_encrypt_setup.exit.thread ], [ %.050, %psa_driver_wrapper_cipher_abort.exit.i ], [ -135, %bb.b ]
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.bf = call i32 @psa_unregister_read_under_mutex(ptr noundef %i.be) #21 ; 0 uses
  br label %bb.o

psa_driver_wrapper_cipher_encrypt_setup.exit.thread55: ; preds = %bb.k, %bb.m
  store i32 1, ptr %0, align 8, !tbaa !65
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.bh = call i32 @psa_unregister_read_under_mutex(ptr noundef %i.bg) #21
  br label %bb.o

bb.o:                                             ; preds = %psa_cipher_abort.exit, %psa_driver_wrapper_cipher_encrypt_setup.exit.thread55
  %4 = phi i32 [ %i.bh, %psa_driver_wrapper_cipher_encrypt_setup.exit.thread55 ], [ %.051, %psa_cipher_abort.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %4
}

; Function Attrs: nounwind uwtable
end_hunk_7
