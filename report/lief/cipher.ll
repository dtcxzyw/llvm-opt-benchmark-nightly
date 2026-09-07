Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/cipher?download=true
inline.NumInlined: 52
inline.NumDeleted: 25
begin_hunk_0_@mbedtls_cipher_finish_padded:bb.a

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29
  %.not52 = icmp eq i64 %i.r, 0
  %. = select i1 %.not52, i32 0, i32 -25216
  br label %switch.lookup

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27   ; 2 uses
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.i, label %mbedtls_cipher_get_block_size.exit

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %mbedtls_cipher_get_iv_size.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !29
  %.not51 = icmp eq i64 %i.z, 0
  %.53 = select i1 %.not51, i32 0, i32 -25216
  br label %switch.lookup

mbedtls_cipher_get_iv_size.exit:                  ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  %i.ad = lshr i32 %i.g, 3
  %i.ae = and i32 %i.ad, 28
  %i.af = trunc i64 %i.ac to i32
  %.0.i = select i1 %.not.i, i32 %i.ae, i32 %i.af
  %i.ag = sext i32 %.0.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !29
  tail call void %i.w(ptr noundef nonnull %i.aa, i64 noundef %i.ag, i64 noundef %i.ai) #15
  %.pre = load ptr, ptr %0, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.val.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre66 = load i32, ptr %i.s, align 4, !tbaa !27
  %.pre67 = and i32 %.val.pre, 31
  %.pre68 = zext nneg i32 %.pre67 to i64
  br label %mbedtls_cipher_get_block_size.exit60

mbedtls_cipher_get_block_size.exit:               ; preds = %bb.h
  %i.aj = and i32 %i.g, 31
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %.not = icmp eq i64 %i.am, %i.ak
  br i1 %.not, label %mbedtls_cipher_get_block_size.exit60, label %bb.k

bb.k:                                             ; preds = %mbedtls_cipher_get_block_size.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ap = icmp eq ptr %i.ao, null
  %i.aq = icmp eq i64 %i.am, 0
  %or.cond = and i1 %i.aq, %i.ap
  %spec.select = select i1 %or.cond, i32 0, i32 -25216
  br label %switch.lookup

mbedtls_cipher_get_block_size.exit60:             ; preds = %mbedtls_cipher_get_block_size.exit, %mbedtls_cipher_get_iv_size.exit
  %.pre-phi69 = phi i64 [ %i.ak, %mbedtls_cipher_get_block_size.exit ], [ %.pre68, %mbedtls_cipher_get_iv_size.exit ]
  %i.ar = phi i32 [ %i.t, %mbedtls_cipher_get_block_size.exit ], [ %.pre66, %mbedtls_cipher_get_iv_size.exit ]
  %.val = phi i32 [ %i.g, %mbedtls_cipher_get_block_size.exit ], [ %.val.pre, %mbedtls_cipher_get_iv_size.exit ]
  %i.as = lshr i32 %.val, 26
  %i.at = and i32 %i.as, 31
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = tail call i32 %i.ay(ptr noundef %i.ba, i32 noundef %i.ar, i64 noundef %.pre-phi69, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, ptr noundef %1) #15 ; 2 uses
  %.not50 = icmp eq i32 %i.bd, 0
  br i1 %.not50, label %bb.l, label %switch.lookup

bb.l:                                             ; preds = %mbedtls_cipher_get_block_size.exit60
  %i.be = load i32, ptr %i.s, align 4, !tbaa !27
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !33
  %.val55 = load ptr, ptr %0, align 8, !tbaa !25  ; 2 uses
  %i.bi = icmp eq ptr %.val55, null
  br i1 %i.bi, label %mbedtls_cipher_get_block_size.exit62, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.val55, i64 8
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = and i32 %i.bk, 31
  %i.bm = zext nneg i32 %i.bl to i64
  br label %mbedtls_cipher_get_block_size.exit62

mbedtls_cipher_get_block_size.exit62:             ; preds = %bb.m, %bb.n
  %.0.i61 = phi i64 [ %i.bm, %bb.n ], [ 0, %bb.m ]
  %i.bn = tail call i32 %i.bh(ptr noundef %1, i64 noundef %.0.i61, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  br label %switch.lookup

bb.o:                                             ; preds = %bb.l
  %.val54 = load ptr, ptr %0, align 8, !tbaa !25  ; 2 uses
  %i.bo = icmp eq ptr %.val54, null
  br i1 %i.bo, label %mbedtls_cipher_get_block_size.exit64, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %.val54, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = and i32 %i.bq, 31
  %i.bs = zext nneg i32 %i.br to i64
  br label %mbedtls_cipher_get_block_size.exit64

mbedtls_cipher_get_block_size.exit64:             ; preds = %bb.o, %bb.p
  %.0.i63 = phi i64 [ %i.bs, %bb.p ], [ 0, %bb.o ]
  store i64 %.0.i63, ptr %2, align 8, !tbaa !30
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.e, %bb.k, %bb.f, %mbedtls_cipher_get_block_size.exit62, %mbedtls_cipher_get_block_size.exit64, %bb.j, %mbedtls_cipher_get_block_size.exit60, %bb.g, %bb.d, %bb.b, %bb.a
  %.1 = phi i32 [ %i.bd, %mbedtls_cipher_get_block_size.exit60 ], [ -135, %bb.a ], [ -24704, %bb.b ], [ -135, %bb.d ], [ %.53, %bb.j ], [ %., %bb.g ], [ -24704, %bb.f ], [ 0, %bb.e ], [ %i.bn, %mbedtls_cipher_get_block_size.exit62 ], [ %spec.select, %bb.k ], [ 0, %mbedtls_cipher_get_block_size.exit64 ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_cipher_finish(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.b = call i32 @mbedtls_cipher_finish_padded(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i64, ptr %i.a, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = and i32 %i.e, 150
  %i.g = sub nsw i32 0, %i.f
  %.0 = select i1 %i.c, i32 %i.g, i32 %i.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -24704, 1) i32 @mbedtls_cipher_set_padding_mode(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 61440
  %.not = icmp eq i32 %i.e, 8192
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i8, ptr %i.f, align 8, !tbaa !20
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not10 = icmp eq i32 %1, 1
  %. = select i1 %.not10, i32 0, i32 -24704
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  switch i32 %1, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @add_pkcs_padding, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @mbedtls_get_pkcs_padding, ptr %i.j, align 8, !tbaa !33
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @get_no_padding, ptr %i.l, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.d, %bb.a, %bb.b
  %.0 = phi i32 [ -24704, %bb.e ], [ %., %bb.d ], [ -135, %bb.a ], [ -135, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @add_pkcs_padding(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) #13 {
bb.a:
  %i.a = sub i64 %1, %2                           ; 10 uses
  %.not = icmp eq i64 %1, %2
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = trunc i64 %i.a to i8                     ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %2         ; 3 uses
  %min.iters.check = icmp ult i64 %i.a, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.d = add i64 %i.a, -1                         ; 2 uses
  %i.e = and i64 %i.d, 255
  %i.f = icmp eq i64 %i.e, 255
  %i.g = icmp ugt i64 %i.d, 255
  %i.h = or i1 %i.f, %i.g
  br i1 %i.h, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check12 = icmp ult i64 %i.a, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.a, 28
  %n.vec = and i64 %i.a, 480                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = getelementptr i8, ptr %i.c, i64 %index   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.j, align 1, !tbaa !34
  store <16 x i8> %broadcast.splat, ptr %i.k, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.a, 508                    ; 3 uses
  %broadcast.splatinsert14 = insertelement <4 x i8> poison, i8 %i.b, i64 0
  %broadcast.splat15 = shufflevector <4 x i8> %broadcast.splatinsert14, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.c, i64 %index16
  store <4 x i8> %broadcast.splat15, ptr %i.m, align 1, !tbaa !34
  %index.next17 = add nuw i64 %index16, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next17, %n.vec13
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.a, %n.vec13
  br i1 %cmp.n18, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.o = getelementptr i8, ptr %i.c, i64 %indvars.iv
  store i8 %i.b, ptr %i.o, align 1, !tbaa !34
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.p = and i64 %indvars.iv.next, 255
  %i.q = icmp ugt i64 %i.a, %i.p
  br i1 %i.q, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -135, 1) i32 @mbedtls_get_pkcs_padding(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3) #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 %1
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !34
  %i.f = zext i8 %i.e to i64                      ; 4 uses
  %i.g = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %1, i64 range(i64 0, 256) %i.f) #15, !srcloc !68
  %i.h = extractvalue { i64, i64, i64 } %i.g, 1
  %i.i = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.f) #15, !srcloc !69
  %i.j = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) 0) #15, !srcloc !69
  %i.k = xor i64 %i.j, %i.i
  %i.l = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.k) #15, !srcloc !70
  %i.m = xor i64 %i.l, -1
  %i.n = or i64 %i.h, %i.m                        ; 2 uses
  %i.o = sub i64 %1, %i.f                         ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.02833 = phi i64 [ %i.ab, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %.02932 = phi i64 [ %i.aa, %.lr.ph ], [ %i.n, %bb.b ]
  %i.p = tail call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.02833, i64 %i.o) #15, !srcloc !68
  %i.q = extractvalue { i64, i64, i64 } %i.p, 1
  %i.r = xor i64 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.02833
  %i.t = load i8, ptr %i.s, align 1, !tbaa !34
  %i.u = zext i8 %i.t to i64
  %i.v = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.u) #15, !srcloc !69
  %i.w = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.f) #15, !srcloc !69
  %i.x = xor i64 %i.w, %i.v
  %i.y = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.x) #15, !srcloc !70
  %i.z = and i64 %i.y, %i.r
  %i.aa = or i64 %i.z, %.02932                    ; 2 uses
  %i.ab = add nuw i64 %.02833, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.029.lcssa = phi i64 [ %i.n, %bb.b ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.ac = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.029.lcssa, i64 0, i64 %i.o) #15, !srcloc !71
  %i.ad = extractvalue { i64, i64, i64 } %i.ac, 2
  store i64 %i.ad, ptr %2, align 8, !tbaa !30
  store i64 %.029.lcssa, ptr %3, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ -135, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal range(i32 -135, 1) i32 @get_no_padding(ptr nofree noundef readnone captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3) #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %2, align 8, !tbaa !30
  store i64 0, ptr %3, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -135, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_cipher_write_tag(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i8, ptr %i.f, align 8, !tbaa !20
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = and i32 %i.j, 61440
  %i.l = icmp eq i32 %i.k, 24576
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = call i32 @mbedtls_gcm_finish(ptr noundef %i.n, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.p = and i32 %i.j, 16711680
  %i.q = icmp eq i32 %i.p, 4653056
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not12 = icmp eq i64 %2, 16
  br i1 %.not12, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = tail call i32 @mbedtls_chachapoly_finish(ptr noundef %i.s, ptr noundef %1) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.b, %bb.a, %bb.h, %bb.e
  %.0 = phi i32 [ -135, %bb.g ], [ -135, %bb.a ], [ -135, %bb.b ], [ %i.o, %bb.e ], [ -24704, %bb.c ], [ %i.t, %bb.h ], [ -24704, %bb.f ]
  ret i32 %.0
}

declare i32 @mbedtls_gcm_finish(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare i32 @mbedtls_chachapoly_finish(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_cipher_check_tag(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i8, ptr %i.g, align 8, !tbaa !20
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = and i32 %i.k, 61440
  %i.m = icmp eq i32 %i.l, 24576
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.n = icmp ugt i64 %2, 16
  br i1 %i.n, label %.thread, label %bb.f
end_hunk_0
