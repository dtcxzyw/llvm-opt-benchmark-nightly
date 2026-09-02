Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/krb5enc?download=true
inline.NumInlined: 121
inline.NumDeleted: 57
begin_hunk_0_@llvm.lifetime.start.p0
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @crypto_krb5enc_module_exit() #3 section ".exit.text" align 16 prefalign(16) {
bb.a:
  tail call void @crypto_unregister_template(ptr noundef nonnull @crypto_krb5enc_tmpl) #10
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @crypto_unregister_template(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @crypto_krb5enc_module_init() #3 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @crypto_register_template(ptr noundef nonnull @crypto_krb5enc_tmpl) #10
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @krb5enc_create(ptr noundef %0, ptr noundef %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.b = call i32 @crypto_check_attr_type(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.e = call noalias noundef align 8 dereferenceable_or_null(592) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef 3520, i64 noundef 592) #13 ; 25 uses
  %.not58 = icmp eq ptr %i.e, null
  br i1 %.not58, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.e, i64 488      ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 72       ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call ptr @crypto_attr_alg_name(ptr noundef %i.i) #10
  %i.k = load i32, ptr %i.a, align 4
  %i.l = call i32 @crypto_grab_ahash(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.j, i32 noundef 0, i32 noundef %i.k) #10 ; 2 uses
  %.not59 = icmp eq i32 %i.l, 0
  br i1 %.not59, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.e, i64 504
  %.val = load ptr, ptr %i.m, align 8             ; 4 uses
  %i.n = getelementptr i8, ptr %.val, i64 -8      ; 2 uses
  %i.o = getelementptr i8, ptr %i.e, i64 536
  %i.p = getelementptr i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call ptr @crypto_attr_alg_name(ptr noundef %i.q) #10
  %i.s = load i32, ptr %i.a, align 4
  %i.t = call i32 @crypto_grab_skcipher(ptr noundef %i.o, ptr noundef %i.g, ptr noundef %i.r, i32 noundef 0, i32 noundef %i.s) #10 ; 2 uses
  %.not60 = icmp eq i32 %i.t, 0
  br i1 %.not60, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.e, i64 552
  %.val62 = load ptr, ptr %i.u, align 8           ; 7 uses
  %i.v = load i32, ptr %i.n, align 8
  %i.w = shl i32 %i.v, 1
  %i.x = getelementptr i8, ptr %i.e, i64 584
  store i32 %i.w, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.e, i64 8
  %i.z = getelementptr i8, ptr %i.e, i64 132
  %i.aa = getelementptr i8, ptr %.val, i64 60
  %i.ab = getelementptr i8, ptr %.val62, i64 60
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.z, i64 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %i.aa, ptr noundef %i.ab) #10
  %i.ad = icmp sgt i32 %i.ac, 127
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.e, i64 260
  %i.af = getelementptr i8, ptr %.val, i64 188
  %i.ag = getelementptr i8, ptr %.val62, i64 188
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.ae, i64 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %i.af, ptr noundef %i.ag) #10
  %i.ai = icmp sgt i32 %i.ah, 127
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %.val62, i64 52
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = mul i32 %i.ak, 10
  %i.am = getelementptr i8, ptr %.val, i64 52
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.al, %i.an
  %i.ap = getelementptr i8, ptr %i.e, i64 124
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %.val62, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = getelementptr i8, ptr %i.e, i64 108
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = getelementptr i8, ptr %.val62, i64 44
  %i.au = load i32, ptr %i.at, align 4
  %i.av = getelementptr i8, ptr %i.e, i64 116
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = getelementptr i8, ptr %i.e, i64 112
  store i32 16, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %.val62, i64 -16
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.e, i64 56
  store i32 %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %.val62, i64 -12
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr i8, ptr %i.e, i64 64
  store i32 %i.bb, ptr %i.bc, align 8
  %i.bd = load i32, ptr %i.n, align 8
  %i.be = getelementptr i8, ptr %i.e, i64 60
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = getelementptr i8, ptr %i.e, i64 40
  store ptr @krb5enc_init_tfm, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %i.e, i64 48
  store ptr @krb5enc_exit_tfm, ptr %i.bg, align 8
  store ptr @krb5enc_setkey, ptr %i.y, align 8
  %i.bh = getelementptr i8, ptr %i.e, i64 24
  store ptr @krb5enc_encrypt, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %i.e, i64 32
  store ptr @krb5enc_decrypt, ptr %i.bi, align 8
  store ptr @krb5enc_free, ptr %i.e, align 8
  %i.bj = call i32 @aead_register_instance(ptr noundef %0, ptr noundef nonnull %i.e) #10 ; 2 uses
  %.not61 = icmp eq i32 %i.bj, 0
  br i1 %.not61, label %bb.j, label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.e, %bb.d
  %.str.4.sink = phi ptr [ @.str.2, %bb.e ], [ @.str.1, %bb.d ], [ @.str.4, %bb.h ]
  %.053.ph = phi i32 [ %i.t, %bb.e ], [ %i.l, %bb.d ], [ %i.bj, %bb.h ]
  %i.bk = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.f
  %.053 = phi i32 [ -36, %bb.f ], [ -36, %bb.g ], [ %.053.ph, %.sink.split ]
  %i.bl = getelementptr i8, ptr %i.e, i64 536
  call void @crypto_drop_spawn(ptr noundef %i.bl) #10
  call void @crypto_drop_spawn(ptr noundef %i.f) #10
  call void @kfree(ptr noundef nonnull %i.e) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.c, %bb.i, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %.053, %bb.i ], [ -12, %bb.c ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_check_attr_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_grab_ahash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @crypto_attr_alg_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crypto_grab_skcipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @krb5enc_init_tfm(ptr nofree noundef captures(none) %0) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 416
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = tail call ptr @crypto_spawn_tfm2(ptr noundef %i.b) #10 ; 6 uses
  %i.e = icmp ugt ptr %i.d, inttoptr (i64 -4096 to ptr)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = trunc i64 %i.f to i32
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val, i64 464
  %i.i = tail call ptr @crypto_spawn_tfm2(ptr noundef %i.h) #10 ; 4 uses
  %i.j = icmp ugt ptr %i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
  %i.k = getelementptr i8, ptr %0, i64 48
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val, i64 512
  %i.m = load i32, ptr %i.l, align 8
  %1 = add i32 %i.m, 128
  %i.n = getelementptr i8, ptr %i.d, i64 8
  %.val24 = load i32, ptr %i.n, align 8
  %i.o = zext i32 %.val24 to i64
  %i.p = add nuw nsw i64 %i.o, 152
  %.val25 = load i32, ptr %i.i, align 8
  %i.q = zext i32 %.val25 to i64
  %i.r = add nuw nsw i64 %i.q, 80
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.r)
  %2 = trunc i64 %i.s to i32
  %3 = add i32 %1, %2
  %i.t = getelementptr i8, ptr %0, i64 4
  store i32 %3, ptr %i.t, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr i8, ptr %i.d, i64 16
  tail call void @crypto_destroy_tfm(ptr noundef %i.d, ptr noundef %i.w) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.v, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @krb5enc_exit_tfm(ptr nofree noundef readonly captures(none) %0) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  tail call void @crypto_destroy_tfm(ptr noundef %i.b, ptr noundef %i.c) #10
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  tail call void @crypto_destroy_tfm(ptr noundef %i.e, ptr noundef %i.f) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @krb5enc_setkey(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #5 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.crypto_authenc_keys, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = getelementptr i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.e, align 8
  %i.f = icmp ugt i32 %2, 3
  br i1 %i.f, label %bb.b, label %crypto_krb5enc_extractkeys.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %1, align 2                ; 3 uses
  %i.h = icmp ult i16 %i.g, 4
  %i.i = zext i16 %i.g to i32                     ; 2 uses
  %.not.i = icmp ult i32 %2, %i.i
  %or.cond.i = or i1 %i.h, %.not.i
  br i1 %or.cond.i, label %crypto_krb5enc_extractkeys.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 2
  %i.k = load i16, ptr %i.j, align 2
  %.not28.i = icmp eq i16 %i.k, 1
  %.not29.i = icmp eq i16 %i.g, 8
  %or.cond30.i = and i1 %.not29.i, %.not28.i
  br i1 %or.cond30.i, label %bb.d, label %crypto_krb5enc_extractkeys.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)  ; 3 uses
  %i.o = sub nuw i32 %2, %i.i                     ; 2 uses
  %i.p = icmp ult i32 %i.o, %i.n
  br i1 %i.p, label %crypto_krb5enc_extractkeys.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.r = sub nuw i32 %i.o, %i.n                   ; 2 uses
  %i.s = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, -1048321
  %i.v = and i32 %.val, 1048320                   ; 2 uses
  %i.w = or disjoint i32 %i.u, %i.v
  store i32 %i.w, ptr %i.s, align 8
  %i.x = tail call i32 @crypto_ahash_setkey(ptr noundef %i.d, ptr noundef %i.q, i32 noundef %i.r) #10 ; 2 uses
  %.not16 = icmp eq i32 %i.x, 0
  br i1 %.not16, label %bb.f, label %crypto_krb5enc_extractkeys.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %i.r to i64
  %i.z = getelementptr i8, ptr %i.q, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.c, i64 8       ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = and i32 %i.ab, -1048321
  %i.ad = or disjoint i32 %i.ac, %i.v
  store i32 %i.ad, ptr %i.aa, align 8
  %i.ae = tail call i32 @crypto_skcipher_setkey(ptr noundef %i.c, ptr noundef %i.z, i32 noundef %i.n) #10
  br label %crypto_krb5enc_extractkeys.exit.thread

crypto_krb5enc_extractkeys.exit.thread:           ; preds = %bb.b, %bb.d, %bb.c, %bb.a, %bb.e, %bb.f
  %.0 = phi i32 [ %i.ae, %bb.f ], [ %i.x, %bb.e ], [ -22, %bb.a ], [ -22, %bb.c ], [ -22, %bb.d ], [ -22, %bb.b ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %3) #11, !srcloc !12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @krb5enc_encrypt(ptr noundef %0) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr i8, ptr %.val.i, i64 24
  %.val25.i = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val.i, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 208        ; 4 uses
  %i.f = getelementptr i8, ptr %.val25.i, i64 512
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr i8, ptr %i.e, i64 %i.h     ; 8 uses
  %i.j = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val26.i = load i32, ptr %i.j, align 8
  %i.k = and i32 %.val26.i, -2050
  %i.l = getelementptr i8, ptr %i.i, i64 40
  %i.m = getelementptr i8, ptr %i.i, i64 16
  store ptr @krb5enc_encrypt_ahash_done, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.i, i64 24
  store ptr %0, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.d, i64 16
  %i.p = getelementptr i8, ptr %i.i, i64 32
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %0, i64 52         ; 3 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = add i32 %i.v, %i.t
  %i.x = getelementptr i8, ptr %i.i, i64 56
  store ptr %i.r, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.i, i64 48
  store i32 %i.w, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.i, i64 64
  store ptr %i.e, ptr %i.z, align 8
  store i32 %i.k, ptr %i.l, align 8
  %i.aa = tail call i32 @crypto_ahash_digest(ptr noundef %i.i) #10 ; 3 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %krb5enc_dispatch_encrypt_hash.exit.thread, label %krb5enc_dispatch_encrypt_hash.exit

krb5enc_dispatch_encrypt_hash.exit.thread:        ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.ab = getelementptr i8, ptr %.val.i.i, i64 -8
  %i.ac = getelementptr i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load i32, ptr %i.s, align 8
  %i.af = load i32, ptr %i.u, align 4
  %i.ag = add i32 %i.af, %i.ae
  %.val6.i.i = load i32, ptr %i.ab, align 8
  tail call void @memcpy_to_sglist(ptr noundef %i.ad, i32 noundef %i.ag, ptr noundef %i.e, i32 noundef %.val6.i.i) #10
  br label %bb.b

krb5enc_dispatch_encrypt_hash.exit:               ; preds = %bb.a
  %i.ah = icmp slt i32 %i.aa, 0
  br i1 %i.ah, label %bb.d, label %bb.b

bb.b:                                             ; preds = %krb5enc_dispatch_encrypt_hash.exit.thread, %krb5enc_dispatch_encrypt_hash.exit
  %.val = load i32, ptr %i.j, align 8
  %.val.i6 = load ptr, ptr %i.a, align 8          ; 2 uses
  %i.ai = getelementptr i8, ptr %.val.i6, i64 24
  %.val28.i = load ptr, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %0, i64 80
  %i.ak = getelementptr i8, ptr %.val.i6, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %.val28.i, i64 512
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.q, align 8
  %i.ap = load i32, ptr %i.s, align 8
  %i.aq = tail call ptr @scatterwalk_ffwd(ptr noundef %i.aj, ptr noundef %i.ao, i32 noundef %i.ap) #10 ; 2 uses
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr i8, ptr %0, i64 72
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %krb5enc_dispatch_encrypt.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr i8, ptr %0, i64 144
  %i.aw = load i32, ptr %i.s, align 8
  %i.ax = tail call ptr @scatterwalk_ffwd(ptr noundef %i.av, ptr noundef %i.at, i32 noundef %i.aw) #10
  br label %krb5enc_dispatch_encrypt.exit

krb5enc_dispatch_encrypt.exit:                    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.ax, %bb.c ], [ %i.aq, %bb.b ]
  %i.ay = zext i32 %i.an to i64
  %i.az = getelementptr i8, ptr %i.e, i64 %i.ay   ; 9 uses
  %i.ba = getelementptr i8, ptr %i.al, i64 8
  %i.bb = getelementptr i8, ptr %i.az, i64 64
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %i.az, i64 48
  store ptr @krb5enc_encrypt_done, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %i.az, i64 56
  store ptr %0, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %i.az, i64 72
  store i32 %.val, ptr %i.be, align 8
  %i.bf = load i32, ptr %i.u, align 4
  %i.bg = getelementptr i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %i.az, i64 16
  store ptr %i.aq, ptr %i.bi, align 8
end_hunk_0
