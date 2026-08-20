inline.NumInlined: 96
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ccm_init_block:bb.a
  %i.f = or i8 %storemerge, 64
  %spec.select = select i1 %1, i8 %i.f, i8 %storemerge
  store i8 %spec.select, ptr %0, align 1
  %i.g = icmp eq ptr %7, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = lshr i64 %3, 56
  %i.i = trunc nuw i64 %i.h to i8
  %i.j = getelementptr i8, ptr %0, i64 1
  store i8 %i.i, ptr %i.j, align 1
  %i.k = lshr i64 %3, 48
  %i.l = trunc i64 %i.k to i8
  %i.m = getelementptr i8, ptr %0, i64 2
  store i8 %i.l, ptr %i.m, align 1
  %i.n = lshr i64 %3, 40
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr i8, ptr %0, i64 3
  store i8 %i.o, ptr %i.p, align 1
  %i.q = lshr i64 %3, 32
  %i.r = trunc i64 %i.q to i8
  %i.s = getelementptr i8, ptr %0, i64 4
  store i8 %i.r, ptr %i.s, align 1
  %i.t = lshr i64 %3, 24
  %i.u = trunc i64 %i.t to i8
  %i.v = getelementptr i8, ptr %0, i64 5
  store i8 %i.u, ptr %i.v, align 1
  %i.w = lshr i64 %3, 16
  %i.x = trunc i64 %i.w to i8
  %i.y = getelementptr i8, ptr %0, i64 6
  store i8 %i.x, ptr %i.y, align 1
  %i.z = lshr i64 %3, 8
  %i.aa = trunc i64 %i.z to i8
  %i.ab = getelementptr i8, ptr %0, i64 7
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = trunc i64 %3 to i8
  %i.ad = getelementptr i8, ptr %0, i64 8
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = lshr i32 %4, 24
  %i.af = trunc nuw i32 %i.ae to i8
  %i.ag = getelementptr i8, ptr %0, i64 9
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = lshr i32 %4, 16
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr i8, ptr %0, i64 10
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = lshr i32 %4, 8
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr i8, ptr %0, i64 11
  store i8 %i.al, ptr %i.am, align 1
  %i.an = trunc i32 %4 to i8
  %i.ao = getelementptr i8, ptr %0, i64 12
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %0, i64 13
  store i8 %5, ptr %i.ap, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aq = getelementptr i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(13) %i.aq, ptr noundef nonnull align 1 dereferenceable(13) %7, i64 noundef 13, i1 noundef false) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ar = lshr i32 %6, 8
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr i8, ptr %0, i64 14
  store i8 %i.as, ptr %i.at, align 1
  %i.au = trunc i32 %6 to i8
  %i.av = getelementptr i8, ptr %0, i64 15
  store i8 %i.au, ptr %i.av, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden zeroext i1 @ccm_ctr_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call i32 @gcry_cipher_open(ptr noundef nonnull %i.a, i32 noundef 7, i32 noundef 6, i32 noundef 0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = call i32 @gcry_cipher_setkey(ptr noundef %i.c, ptr noundef %0, i64 noundef 16)
  %.not5 = icmp eq i32 %i.d, 0
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %.not5, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @gcry_cipher_setctr(ptr noundef %i.e, ptr noundef %1, i64 noundef 16)
  %.not6 = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %.not6, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @gcry_cipher_encrypt(ptr noundef %i.g, ptr noundef %2, i64 noundef 16, ptr noundef null, i64 noundef 0)
  %.not7 = icmp eq i32 %i.h, 0
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %.not7, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.j = sext i32 %4 to i64
  %i.k = call i32 @gcry_cipher_encrypt(ptr noundef %i.i, ptr noundef %3, i64 noundef %i.j, ptr noundef null, i64 noundef 0)
  %.not8 = icmp eq i32 %i.k, 0
  %i.l = load ptr, ptr %i.a, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  %.sink = phi ptr [ %i.l, %bb.e ], [ %i.g, %bb.c ], [ %i.e, %bb.b ], [ %i.i, %bb.d ]
  %.0.ph = phi i1 [ %.not8, %bb.e ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.d ]
  call void @gcry_cipher_close(ptr noundef %.sink)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_open(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @gcry_cipher_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setctr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @ccm_cbc_mac(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca [16 x i8], align 16               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = call i32 @gcry_cipher_open(ptr noundef nonnull %i.a, i32 noundef 7, i32 noundef 3, i32 noundef 8)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = call i32 @gcry_cipher_setkey(ptr noundef %i.d, ptr noundef %0, i64 noundef 16)
  %.not57 = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %.not57, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @gcry_cipher_encrypt(ptr noundef %i.f, ptr noundef %6, i64 noundef 16, ptr noundef %1, i64 noundef 16)
  %.not58 = icmp eq i32 %i.g, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.i = icmp sgt i32 %3, 65279
  br i1 %i.i, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.j = lshr i32 %3, 24
  %i.k = trunc nuw nsw i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.l, align 2
  %i.m = lshr i32 %3, 16
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.n, ptr %i.o, align 1
  %i.p = lshr i32 %3, 8
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.q, ptr %i.r, align 4
  %i.s = trunc i32 %3 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.s, ptr %i.t, align 1
  store i8 -1, ptr %i.b, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 -2, ptr %i.u, align 1
  br label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.e
  %i.v = lshr i32 %3, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = trunc i32 %3 to i8
  store i8 %i.w, ptr %i.b, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.x, ptr %i.y, align 1
  %i.z = icmp sgt i32 %3, 0
  br i1 %i.z, label %.lr.ph.preheader, label %.lr.ph70.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.f
  %.084 = phi i32 [ 6, %.thread ], [ 2, %bb.f ]   ; 2 uses
  %i.aa = zext nneg i32 %.084 to i64              ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.b, i64 %i.aa
  %i.ab = sub nuw nsw i32 14, %.084
  %i.ac = or disjoint i32 %i.ab, 1
  %i.ad = add nsw i32 %3, -1
  %i.ae = call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.ad)
  %narrow = add nuw nsw i32 %i.ae, 1
  %i.af = zext nneg i32 %narrow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef align 1 %2, i64 %i.af, i1 false)
  br label %.lr.ph

.preheader63:                                     ; preds = %.lr.ph
  %i.ag = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ah = icmp samesign ult i64 %indvars.iv, 15
  br i1 %i.ah, label %.lr.ph70.preheader, label %._crit_edge

.lr.ph70.preheader:                               ; preds = %bb.f, %.preheader63
  %.1.lcssa92 = phi i32 [ %i.ag, %.preheader63 ], [ 2, %bb.f ] ; 2 uses
  %.049.lcssa91 = phi i32 [ %i.al, %.preheader63 ], [ %3, %bb.f ]
  %.051.lcssa89 = phi ptr [ %i.ak, %.preheader63 ], [ %2, %bb.f ]
  %i.ai = zext nneg i32 %.1.lcssa92 to i64
  %scevgep74 = getelementptr nuw i8, ptr %i.b, i64 %i.ai
  %narrow80 = sub nuw nsw i32 16, %.1.lcssa92
  %i.aj = zext nneg i32 %narrow80 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep74, i8 0, i64 %i.aj, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.04965 = phi i32 [ %3, %.lr.ph.preheader ], [ %i.al, %.lr.ph ] ; 2 uses
  %.05164 = phi ptr [ %2, %.lr.ph.preheader ], [ %i.ak, %.lr.ph ]
  %i.ak = getelementptr i8, ptr %.05164, i64 1    ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = add nsw i32 %.04965, -1                 ; 3 uses
  %i.am = icmp samesign ult i64 %indvars.iv, 15
  %i.an = icmp samesign ugt i32 %.04965, 1
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %.preheader63, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph70.preheader, %.preheader63
  %.049.lcssa90 = phi i32 [ %.049.lcssa91, %.lr.ph70.preheader ], [ %i.al, %.preheader63 ] ; 2 uses
  %.051.lcssa88 = phi ptr [ %.051.lcssa89, %.lr.ph70.preheader ], [ %i.ak, %.preheader63 ]
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = call i32 @gcry_cipher_encrypt(ptr noundef %i.ap, ptr noundef %6, i64 noundef 16, ptr noundef nonnull %i.b, i64 noundef 16)
  %.not59 = icmp eq i32 %i.aq, 0
  br i1 %.not59, label %.preheader62.preheader, label %bb.g

.preheader62.preheader:                           ; preds = %._crit_edge
  %i.ar = icmp sgt i32 %.049.lcssa90, 0
  br i1 %i.ar, label %.lr.ph97, label %.preheader.preheader

bb.g:                                             ; preds = %._crit_edge
  %i.as = load ptr, ptr %i.a, align 8
  br label %.sink.split

.preheader62:                                     ; preds = %bb.j
  %i.at = add nsw i32 %.15096, -16
  %i.au = getelementptr i8, ptr %.15295, i64 16
  %i.av = icmp sgt i32 %.15096, 16
  br i1 %i.av, label %.lr.ph97, label %.preheader.preheader, !llvm.loop !17

.preheader.preheader:                             ; preds = %.preheader62, %.preheader62.preheader
  %i.aw = icmp sgt i32 %5, 0
  br i1 %i.aw, label %.lr.ph100, label %.preheader._crit_edge

.lr.ph97:                                         ; preds = %.preheader62.preheader, %.preheader62
  %.15096 = phi i32 [ %i.at, %.preheader62 ], [ %.049.lcssa90, %.preheader62.preheader ] ; 4 uses
  %.15295 = phi ptr [ %i.au, %.preheader62 ], [ %.051.lcssa88, %.preheader62.preheader ] ; 3 uses
  %i.ax = icmp samesign ugt i32 %.15096, 15
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef align 1 dereferenceable(16) %.15295, i64 noundef 16, i1 noundef false) #19
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph97
  %i.ay = zext nneg i32 %.15096 to i64            ; 3 uses
  %i.az = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef %.15295, i64 noundef %i.ay, i64 noundef 16) #19, !alias.scope !18 ; 0 uses
  %i.ba = getelementptr i8, ptr %i.b, i64 %i.ay
  %i.bb = sub nuw nsw i64 16, %i.ay
  call void @llvm.memset.p0.i64(ptr noundef align 1 %i.ba, i8 noundef 0, i64 noundef range(i64 -2147483631, 17) %i.bb, i1 noundef false) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = load ptr, ptr %i.a, align 8
  %i.bd = call i32 @gcry_cipher_encrypt(ptr noundef %i.bc, ptr noundef %6, i64 noundef 16, ptr noundef nonnull %i.b, i64 noundef 16)
  %.not61 = icmp eq i32 %i.bd, 0
  br i1 %.not61, label %.preheader62, label %bb.k, !llvm.loop !17

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.a, align 8
  br label %.sink.split

.preheader:                                       ; preds = %bb.n
  %i.bf = add nsw i32 %.04799, -16
  %i.bg = getelementptr i8, ptr %.04898, i64 16
  %i.bh = icmp sgt i32 %.04799, 16
  br i1 %i.bh, label %.lr.ph100, label %.preheader._crit_edge, !llvm.loop !22

.lr.ph100:                                        ; preds = %.preheader.preheader, %.preheader
  %.04799 = phi i32 [ %i.bf, %.preheader ], [ %5, %.preheader.preheader ] ; 4 uses
  %.04898 = phi ptr [ %i.bg, %.preheader ], [ %4, %.preheader.preheader ] ; 3 uses
  %i.bi = icmp samesign ugt i32 %.04799, 15
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef align 1 dereferenceable(16) %.04898, i64 noundef 16, i1 noundef false) #19
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph100
  %i.bj = zext nneg i32 %.04799 to i64            ; 3 uses
  %i.bk = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef %.04898, i64 noundef %i.bj, i64 noundef 16) #19, !alias.scope !23 ; 0 uses
  %i.bl = getelementptr i8, ptr %i.b, i64 %i.bj
  %i.bm = sub nuw nsw i64 16, %i.bj
  call void @llvm.memset.p0.i64(ptr noundef align 1 %i.bl, i8 noundef 0, i64 noundef range(i64 -2147483631, 17) %i.bm, i1 noundef false) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = load ptr, ptr %i.a, align 8
  %i.bo = call i32 @gcry_cipher_encrypt(ptr noundef %i.bn, ptr noundef %6, i64 noundef 16, ptr noundef nonnull %i.b, i64 noundef 16)
  %.not60 = icmp eq i32 %i.bo, 0
  br i1 %.not60, label %.preheader, label %bb.o, !llvm.loop !22

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.a, align 8
  br label %.sink.split

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.bq = load ptr, ptr %i.a, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d, %bb.g, %bb.k, %bb.o, %.preheader._crit_edge
  %.sink = phi ptr [ %i.bq, %.preheader._crit_edge ], [ %i.bp, %bb.o ], [ %i.be, %bb.k ], [ %i.as, %bb.g ], [ %i.h, %bb.d ], [ %i.f, %bb.b ]
  %.046.ph = phi i1 [ true, %.preheader._crit_edge ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.g ], [ false, %bb.d ], [ false, %bb.b ]
  call void @gcry_cipher_close(ptr noundef %.sink)
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.a
  %.046 = phi i1 [ false, %bb.a ], [ %.046.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %.046
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define hidden i32 @ieee802154_short_addr_hash(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = load i16, ptr %0, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw i32 %i.e, 16
  %i.g = or disjoint i32 %i.f, %i.c
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @ieee802154_short_addr_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load i16, ptr %0, align 2
  %i.b = load i16, ptr %1, align 2
  %i.c = icmp eq i16 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = getelementptr i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2
  %i.h = icmp eq i16 %i.e, %i.g
  %i.i = zext i1 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 0, %bb.a ], [ %i.i, %bb.b ]
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define hidden i32 @ieee802154_long_addr_hash(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @ieee802154_long_addr_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @ieee802154_addr_update(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %6 = alloca %struct.ieee802154_short_addr, align 2 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  store i64 %3, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i16 %2, ptr %6, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %1, ptr %i.c, align 2
  %i.d = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr @g_hash_table_lookup(ptr noundef %i.e, ptr noundef nonnull %6) ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, %3
  br i1 %i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 12
  store i32 %5, ptr %i.j, align 4
  br label %bb.d
end_hunk_0
