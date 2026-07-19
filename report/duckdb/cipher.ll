inline.NumInlined: 46
inline.NumDeleted: 18
begin_hunk_0_@mbedtls_cipher_finish:bb.a
bb.e:                                             ; preds = %bb.d
  switch i32 %i.k, label %switch.lookup [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37
  %.not49 = icmp eq i64 %i.o, 0
  %. = select i1 %.not49, i32 0, i32 -25216
  br label %switch.lookup

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !34   ; 2 uses
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %mbedtls_cipher_get_block_size.exit

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %mbedtls_cipher_get_iv_size.exit

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37
  %.not48 = icmp eq i64 %i.w, 0
  %.50 = select i1 %.not48, i32 0, i32 -25216
  br label %switch.lookup

mbedtls_cipher_get_iv_size.exit:                  ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq i64 %i.z, 0
  %i.aa = lshr i32 %i.d, 3
  %i.ab = and i32 %i.aa, 28
  %i.ac = trunc i64 %i.z to i32
  %.0.i = select i1 %.not.i, i32 %i.ab, i32 %i.ac
  %i.ad = sext i32 %.0.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !37
  tail call void %i.t(ptr noundef nonnull %i.x, i64 noundef %i.ad, i64 noundef %i.af)
  %.pre = load ptr, ptr %0, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.val.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre59 = load i32, ptr %i.p, align 4, !tbaa !34
  %.pre60 = and i32 %.val.pre, 31
  %.pre61 = zext nneg i32 %.pre60 to i64
  br label %mbedtls_cipher_get_block_size.exit53

mbedtls_cipher_get_block_size.exit:               ; preds = %bb.g
  %i.ag = and i32 %i.d, 31
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !37 ; 2 uses
  %.not = icmp eq i64 %i.aj, %i.ah
  br i1 %.not, label %mbedtls_cipher_get_block_size.exit53, label %bb.j

bb.j:                                             ; preds = %mbedtls_cipher_get_block_size.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !40
  %i.am = icmp eq ptr %i.al, null
  %i.an = icmp eq i64 %i.aj, 0
  %or.cond = and i1 %i.an, %i.am
  %spec.select = select i1 %or.cond, i32 0, i32 -25216
  br label %switch.lookup

mbedtls_cipher_get_block_size.exit53:             ; preds = %mbedtls_cipher_get_block_size.exit, %mbedtls_cipher_get_iv_size.exit
  %.pre-phi62 = phi i64 [ %i.ah, %mbedtls_cipher_get_block_size.exit ], [ %.pre61, %mbedtls_cipher_get_iv_size.exit ]
  %i.ao = phi i32 [ %i.q, %mbedtls_cipher_get_block_size.exit ], [ %.pre59, %mbedtls_cipher_get_iv_size.exit ]
  %.val = phi i32 [ %i.d, %mbedtls_cipher_get_block_size.exit ], [ %.val.pre, %mbedtls_cipher_get_iv_size.exit ]
  %i.ap = lshr i32 %.val, 26
  %i.aq = and i32 %i.ap, 31
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = tail call noundef i32 %i.av(ptr noundef %i.ax, i32 noundef %i.ao, i64 noundef %.pre-phi62, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, ptr noundef %1) ; 2 uses
  %.not47 = icmp eq i32 %i.ba, 0
  br i1 %.not47, label %bb.k, label %switch.lookup

bb.k:                                             ; preds = %mbedtls_cipher_get_block_size.exit53
  %i.bb = load i32, ptr %i.p, align 4, !tbaa !34
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !43
  %i.bf = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %mbedtls_cipher_get_block_size.exit55, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = and i32 %i.bi, 31
  %i.bk = zext nneg i32 %i.bj to i64
  br label %mbedtls_cipher_get_block_size.exit55

mbedtls_cipher_get_block_size.exit55:             ; preds = %bb.l, %bb.m
  %.0.i54 = phi i64 [ %i.bk, %bb.m ], [ 0, %bb.l ]
  %i.bl = tail call noundef i32 %i.be(ptr noundef %1, i64 noundef %.0.i54, ptr noundef nonnull %2)
  br label %switch.lookup

bb.n:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %mbedtls_cipher_get_block_size.exit57, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = and i32 %i.bp, 31
  %i.br = zext nneg i32 %i.bq to i64
  br label %mbedtls_cipher_get_block_size.exit57

mbedtls_cipher_get_block_size.exit57:             ; preds = %bb.n, %bb.o
  %.0.i56 = phi i64 [ %i.br, %bb.o ], [ 0, %bb.n ]
  store i64 %.0.i56, ptr %2, align 8, !tbaa !38
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.d, %bb.j, %bb.e, %mbedtls_cipher_get_block_size.exit55, %mbedtls_cipher_get_block_size.exit57, %bb.i, %mbedtls_cipher_get_block_size.exit53, %bb.f, %bb.c, %bb.a
  %.1 = phi i32 [ %i.ba, %mbedtls_cipher_get_block_size.exit53 ], [ -24832, %bb.a ], [ -24832, %bb.c ], [ %.50, %bb.i ], [ %., %bb.f ], [ -24704, %bb.e ], [ 0, %bb.d ], [ %i.bl, %mbedtls_cipher_get_block_size.exit55 ], [ %spec.select, %bb.j ], [ 0, %mbedtls_cipher_get_block_size.exit57 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -24832, 1) i32 @mbedtls_cipher_set_padding_mode(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 61440
  %.not = icmp eq i32 %i.e, 8192
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %bb.e [
    i32 0, label %.sink.split
    i32 4, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %_ZL16add_pkcs_paddingPhmm.sink = phi ptr [ null, %bb.d ], [ @_ZL16add_pkcs_paddingPhmm, %bb.c ]
  %_ZL24mbedtls_get_pkcs_paddingPhmPm.sink = phi ptr [ @_ZL14get_no_paddingPhmPm, %bb.d ], [ @_ZL24mbedtls_get_pkcs_paddingPhmPm, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %_ZL16add_pkcs_paddingPhmm.sink, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %_ZL24mbedtls_get_pkcs_paddingPhmPm.sink, ptr %i.g, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -24704, %bb.c ], [ -24832, %bb.a ], [ -24832, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @_ZL16add_pkcs_paddingPhmm(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) #11 {
bb.a:
  %i.a = sub i64 %1, %2                           ; 9 uses
  %.not = icmp eq i64 %1, %2
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = trunc i64 %i.a to i8                     ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %2         ; 3 uses
  %min.iters.check = icmp ult i64 %i.a, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.d = xor i64 %2, -1
  %i.e = add i64 %1, %i.d                         ; 2 uses
  %i.f = and i64 %i.e, 255
  %i.g = icmp eq i64 %i.f, 255
  %i.h = icmp ugt i64 %i.e, 255
  %i.i = or i1 %i.g, %i.h
  br i1 %i.i, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check11 = icmp ult i64 %i.a, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.a, 28
  %n.vec = and i64 %i.a, -32                      ; 5 uses
  %3 = trunc i64 %n.vec to i8
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = getelementptr i8, ptr %i.c, i64 %index   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.j, align 1, !tbaa !44
  store <16 x i8> %broadcast.splat, ptr %i.k, align 1, !tbaa !44
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.a, -4                     ; 4 uses
  %4 = trunc i64 %n.vec13 to i8
  %broadcast.splatinsert14 = insertelement <4 x i8> poison, i8 %i.b, i64 0
  %broadcast.splat15 = shufflevector <4 x i8> %broadcast.splatinsert14, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.c, i64 %index16
  store <4 x i8> %broadcast.splat15, ptr %i.m, align 1, !tbaa !44
  %index.next17 = add nuw i64 %index16, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next17, %n.vec13
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.a, %n.vec13
  br i1 %cmp.n18, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ]
  %.010.ph = phi i8 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %3, %vec.epilog.iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.o = phi i64 [ %6, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %.010 = phi i8 [ %5, %vec.epilog.scalar.ph ], [ %.010.ph, %vec.epilog.scalar.ph.preheader ]
  %i.p = getelementptr i8, ptr %i.c, i64 %i.o
  store i8 %i.b, ptr %i.p, align 1, !tbaa !44
  %5 = add i8 %.010, 1                            ; 2 uses
  %6 = zext i8 %5 to i64                          ; 2 uses
  %i.q = icmp ugt i64 %i.a, %6
  br i1 %i.q, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i32 -25088, 1) i32 @_ZL24mbedtls_get_pkcs_paddingPhmPm(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) #12 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 %1
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !44    ; 2 uses
  %i.f = zext i8 %i.e to i64                      ; 3 uses
  %i.g = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.h = xor i64 %i.g, %1                         ; 2 uses
  %i.i = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38 ; 3 uses
  %i.j = xor i64 %i.i, %i.f
  %i.k = xor i64 %i.i, %i.h
  %i.l = lshr i64 %i.k, 63
  %i.m = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38 ; 2 uses
  %i.n = xor i64 %i.l, %i.m
  %i.o = sub i64 0, %i.n
  %i.p = lshr i64 %i.m, 1
  %i.q = sub nsw i64 0, %i.p
  %i.r = or i64 %i.o, %i.q
  %.neg.i.i.i = ashr i64 %i.r, 63                 ; 2 uses
  %i.s = sub i64 %i.h, %i.j
  %i.t = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.u = xor i64 %i.t, %.neg.i.i.i
  %i.v = xor i64 %i.u, -1
  %i.w = and i64 %.neg.i.i.i, %i.i
  %i.x = and i64 %i.s, %i.v
  %i.y = or i64 %i.x, %i.w
  %i.z = lshr i64 %i.y, 63
  %i.aa = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38 ; 2 uses
  %i.ab = xor i64 %i.z, %i.aa
  %i.ac = sub i64 0, %i.ab
  %i.ad = lshr i64 %i.aa, 1
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = or i64 %i.ac, %i.ae
  %.neg.i10.i.i = ashr i64 %i.af, 63
  %i.ag = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.ah = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.ai = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.aj = xor i64 %i.ag, %i.ah
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = xor i64 %i.ak, %i.f                     ; 2 uses
  %i.am = sub i64 0, %i.al
  %i.an = lshr i64 %i.al, 1
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = or i64 %i.ao, %i.am
  %isnotneg.i = icmp sgt i64 %i.ap, -1
  %i.aq = select i1 %isnotneg.i, i64 -1, i64 %.neg.i10.i.i ; 2 uses
  %i.ar = sub i64 %1, %i.f                        ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.02734 = phi i64 [ %i.ci, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %.02833 = phi i64 [ %i.ch, %.lr.ph ], [ %i.aq, %bb.b ]
  %i.as = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.at = xor i64 %i.as, %.02734                  ; 2 uses
  %i.au = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = xor i64 %i.av, %i.at
  %i.ax = lshr i64 %i.aw, 63
  %i.ay = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38 ; 2 uses
  %i.az = xor i64 %i.ax, %i.ay
  %i.ba = sub i64 0, %i.az
  %i.bb = lshr i64 %i.ay, 1
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = or i64 %i.ba, %i.bc
  %.neg.i.i.i31 = ashr i64 %i.bd, 63              ; 2 uses
  %i.be = sub i64 %i.at, %i.av
  %i.bf = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.bg = xor i64 %i.bf, %.neg.i.i.i31
  %i.bh = xor i64 %i.bg, -1
  %i.bi = and i64 %.neg.i.i.i31, %i.av
  %i.bj = and i64 %i.be, %i.bh
  %i.bk = or i64 %i.bj, %i.bi
  %i.bl = lshr i64 %i.bk, 63
  %i.bm = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38 ; 2 uses
  %i.bn = xor i64 %i.bl, %i.bm
  %i.bo = sub i64 0, %i.bn
  %i.bp = lshr i64 %i.bm, 1
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = or i64 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.02734
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !44
  %i.bu = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.bv = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.bw = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.bx = xor i8 %i.bt, %i.e
  %i.by = zext i8 %i.bx to i64
  %i.bz = xor i64 %i.bu, %i.by
  %i.ca = xor i64 %i.bz, %i.bv
  %i.cb = xor i64 %i.ca, %i.bw                    ; 2 uses
  %i.cc = sub i64 0, %i.cb
  %i.cd = lshr i64 %i.cb, 1
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = or i64 %i.ce, %i.cc
  %.neg.i.i = ashr i64 %i.cf, 63
  %isnotneg.i32.inv = icmp slt i64 %i.br, 0
  %i.cg = select i1 %isnotneg.i32.inv, i64 0, i64 %.neg.i.i
  %i.ch = or i64 %i.cg, %.02833                   ; 2 uses
  %i.ci = add nuw i64 %.02734, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ci, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.028.lcssa = phi i64 [ %i.aq, %bb.b ], [ %i.ch, %.lr.ph ] ; 2 uses
  %i.cj = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.ck = xor i64 %.028.lcssa, %i.cj
  %i.cl = xor i64 %i.ck, -1
  %i.cm = and i64 %i.ar, %i.cl
  store i64 %i.cm, ptr %2, align 8, !tbaa !38
  %i.cn = trunc i64 %.028.lcssa to i32
  %i.co = and i32 %i.cn, 25088
  %i.cp = sub nsw i32 0, %i.co
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i32 [ %i.cp, %._crit_edge ], [ -24832, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef range(i32 -24832, 1) i32 @_ZL14get_no_paddingPhmPm(ptr nofree noundef readnone captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %2, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -24832, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_cipher_write_tag(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 61440
  %i.i = icmp eq i32 %i.h, 24576
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = call i32 @mbedtls_gcm_finish(ptr noundef %i.k, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -24832, %bb.b ], [ -24832, %bb.a ], [ %i.l, %bb.d ], [ -24704, %bb.c ]
  ret i32 %.0
}

declare i32 @mbedtls_gcm_finish(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_cipher_check_tag(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.g
end_hunk_0
