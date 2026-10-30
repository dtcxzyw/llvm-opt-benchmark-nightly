Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/aria?download=true
inline.NumInlined: 23
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@mbedtls_aria_crypt_cbc:bb.a
  store i64 %i.g, ptr %.059, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.059, i64 8 ; 2 uses
  %.0.copyload.i39.1 = load i64, ptr %i.h, align 1
  %.0.copyload.i.1 = load i64, ptr %i.e, align 1
  %i.i = xor i64 %.0.copyload.i.1, %.0.copyload.i39.1
  store i64 %i.i, ptr %i.h, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.02958, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %i.l = add i64 %.03257, -16                     ; 2 uses
  %.not35 = icmp eq i64 %i.l, 0
  br i1 %.not35, label %.loopexit, label %mbedtls_xor.exit38, !llvm.loop !22

mbedtls_xor.exit:                                 ; preds = %mbedtls_xor.exit, %.preheader44.preheader
  %.152 = phi ptr [ %i.s, %mbedtls_xor.exit ], [ %5, %.preheader44.preheader ] ; 6 uses
  %.13051 = phi ptr [ %i.r, %mbedtls_xor.exit ], [ %4, %.preheader44.preheader ] ; 3 uses
  %.13350 = phi i64 [ %i.t, %mbedtls_xor.exit ], [ %2, %.preheader44.preheader ]
  %.0.copyload.i41 = load i64, ptr %.13051, align 1
  %.0.copyload.i40 = load i64, ptr %3, align 1
  %i.m = xor i64 %.0.copyload.i40, %.0.copyload.i41
  store i64 %i.m, ptr %.152, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.13051, i64 8
  %.0.copyload.i41.1 = load i64, ptr %i.n, align 1
  %.0.copyload.i40.1 = load i64, ptr %i.d, align 1
  %i.o = xor i64 %.0.copyload.i40.1, %.0.copyload.i41.1
  %i.p = getelementptr inbounds nuw i8, ptr %.152, i64 8
  store i64 %i.o, ptr %i.p, align 1
  %i.q = tail call i32 @mbedtls_aria_crypt_ecb(ptr noundef %0, ptr noundef nonnull %.152, ptr noundef nonnull %.152) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) %.152, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.13051, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.152, i64 16
  %i.t = add i64 %.13350, -16                     ; 2 uses
  %.not34 = icmp eq i64 %i.t, 0
  br i1 %.not34, label %.loopexit, label %mbedtls_xor.exit, !llvm.loop !23

.loopexit:                                        ; preds = %mbedtls_xor.exit, %mbedtls_xor.exit38, %.preheader45, %.preheader42, %bb.b, %bb.a
  %.031 = phi i32 [ -94, %bb.b ], [ -135, %bb.a ], [ 0, %.preheader42 ], [ 0, %.preheader45 ], [ 0, %mbedtls_xor.exit38 ], [ 0, %mbedtls_xor.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.031
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_aria_crypt_cfb128(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #5 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !18     ; 5 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %1, 0
  %.not4249 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader43

.preheader43:                                     ; preds = %bb.c
  br i1 %.not4249, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not4249, label %.loopexit, label %.lr.ph53

.lr.ph53:                                         ; preds = %.preheader, %bb.e
  %.in55 = phi i64 [ %i.d, %bb.e ], [ %2, %.preheader ]
  %.052 = phi i64 [ %i.n, %bb.e ], [ %i.a, %.preheader ] ; 3 uses
  %.03451 = phi ptr [ %i.l, %bb.e ], [ %6, %.preheader ] ; 2 uses
  %.03650 = phi ptr [ %i.g, %bb.e ], [ %5, %.preheader ] ; 2 uses
  %i.d = add i64 %.in55, -1                       ; 2 uses
  %i.e = icmp eq i64 %.052, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph53
  %i.f = tail call i32 @mbedtls_aria_crypt_ecb(ptr noundef %0, ptr noundef %4, ptr noundef %4) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph53
  %i.g = getelementptr inbounds nuw i8, ptr %.03650, i64 1
  %i.h = load i8, ptr %.03650, align 1, !tbaa !15 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.052 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = xor i8 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %.03451, i64 1
  store i8 %i.k, ptr %.03451, align 1, !tbaa !15
  store i8 %i.h, ptr %i.i, align 1, !tbaa !15
  %i.m = add nuw nsw i64 %.052, 1
  %i.n = and i64 %i.m, 15                         ; 2 uses
  %.not42 = icmp eq i64 %i.d, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph53, !llvm.loop !0

.lr.ph:                                           ; preds = %.preheader43, %bb.g
  %.in = phi i64 [ %i.o, %bb.g ], [ %2, %.preheader43 ]
  %.148 = phi i64 [ %i.y, %bb.g ], [ %i.a, %.preheader43 ] ; 3 uses
  %.13547 = phi ptr [ %i.w, %bb.g ], [ %6, %.preheader43 ] ; 2 uses
  %.13746 = phi ptr [ %i.t, %bb.g ], [ %5, %.preheader43 ] ; 2 uses
  %i.o = add i64 %.in, -1                         ; 2 uses
  %i.p = icmp eq i64 %.148, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.q = tail call i32 @mbedtls_aria_crypt_ecb(ptr noundef %0, ptr noundef %4, ptr noundef %4) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %.148 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %.13746, i64 1
  %i.u = load i8, ptr %.13746, align 1, !tbaa !15
  %i.v = xor i8 %i.u, %i.s                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.13547, i64 1
  store i8 %i.v, ptr %.13547, align 1, !tbaa !15
  store i8 %i.v, ptr %i.r, align 1, !tbaa !15
  %i.x = add nuw nsw i64 %.148, 1
  %i.y = and i64 %i.x, 15                         ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

.loopexit:                                        ; preds = %bb.g, %bb.e, %.preheader43, %.preheader
  %.2 = phi i64 [ %i.n, %bb.e ], [ %i.a, %.preheader ], [ %i.a, %.preheader43 ], [ %i.y, %bb.g ]
  store i64 %.2, ptr %3, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %.loopexit
  %.038 = phi i32 [ 0, %.loopexit ], [ -135, %bb.a ], [ -135, %bb.b ]
  ret i32 %.038
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_aria_crypt_ctr(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !18     ; 3 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not27 = icmp eq i64 %1, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.in = phi i64 [ %i.c, %.loopexit ], [ %1, %.preheader ]
  %.030 = phi i64 [ %i.t, %.loopexit ], [ %i.a, %.preheader ] ; 3 uses
  %.02029 = phi ptr [ %i.r, %.loopexit ], [ %6, %.preheader ] ; 2 uses
  %.02128 = phi ptr [ %i.m, %.loopexit ], [ %5, %.preheader ] ; 2 uses
  %i.c = add i64 %.in, -1                         ; 2 uses
  %i.d = icmp eq i64 %.030, 0
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call i32 @mbedtls_aria_crypt_ecb(ptr noundef %0, ptr noundef %3, ptr noundef %4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.01926 = phi i32 [ 16, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %i.f = zext nneg i32 %.01926 to i64
  %i.g = getelementptr i8, ptr %3, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1       ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !15
  %i.j = add i8 %i.i, 1                           ; 2 uses
  store i8 %i.j, ptr %i.h, align 1, !tbaa !15
  %.not25 = icmp eq i8 %i.j, 0
  %i.k = add nsw i32 %.01926, -1
  %i.l = icmp samesign ugt i32 %.01926, 1
  %or.cond = and i1 %.not25, %i.l
  br i1 %or.cond, label %bb.c, label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %bb.c, %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.02128, i64 1
  %i.n = load i8, ptr %.02128, align 1, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 %.030
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15
  %i.q = xor i8 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %.02029, i64 1
  store i8 %i.q, ptr %.02029, align 1, !tbaa !15
  %i.s = add nuw nsw i64 %.030, 1
  %i.t = and i64 %i.s, 15                         ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.0.lcssa = phi i64 [ %i.a, %.preheader ], [ %i.t, %.loopexit ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.022 = phi i32 [ 0, %._crit_edge ], [ -135, %bb.a ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @mbedtls_aria_self_test(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 26 uses
  %1 = alloca %struct.mbedtls_aria_context, align 4 ; 48 uses
  %i.b = alloca [48 x i8], align 16               ; 52 uses
  %i.c = alloca [16 x i8], align 16               ; 53 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(276) %1, i8 0, i64 276, i1 false)
  %.not87 = icmp eq i32 %0, 0                     ; 30 uses
  br i1 %.not87, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 128) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = call i32 @mbedtls_aria_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull @aria_test1_ecb_key, i32 noundef 128) ; 0 uses
  %i.f = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull %1, ptr noundef nonnull @aria_test1_ecb_pt, ptr noundef nonnull %i.a) ; 0 uses
  %i.g = load i128, ptr %i.a, align 16
  %i.h = icmp ne i128 %i.g, 159628200049051500546675246995261298903
  %i.i = zext i1 %i.h to i32
  %.not89 = icmp eq i32 %i.i, 0
  br i1 %.not89, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread159, %.thread, %bb.c
  br i1 %.not87, label %.thread172, label %bb.e

bb.e:                                             ; preds = %bb.d
  %puts95 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.thread172

bb.f:                                             ; preds = %bb.c
  br i1 %.not87, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %puts90 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 128) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.k = call i32 @mbedtls_aria_setkey_dec(ptr noundef nonnull %1, ptr noundef nonnull @aria_test1_ecb_key, i32 noundef 128) ; 0 uses
  %i.l = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull %1, ptr noundef nonnull @aria_test1_ecb_ct, ptr noundef nonnull %i.a) ; 0 uses
  %i.m = load i128, ptr %i.a, align 16
  %i.n = icmp ne i128 %i.m, -88962710306127702866241727433142016
  %i.o = zext i1 %i.n to i32
  %.not92 = icmp eq i32 %i.o, 0
  br i1 %.not92, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.critedge.2, %.critedge.1, %.critedge
  br i1 %.not87, label %.thread172, label %bb.i

bb.i:                                             ; preds = %bb.h
  %puts94 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.thread172

bb.j:                                             ; preds = %.critedge
  br i1 %.not87, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %puts93 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 192) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %i.q = call i32 @mbedtls_aria_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull @aria_test1_ecb_key, i32 noundef 192) ; 0 uses
  %i.r = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull %1, ptr noundef nonnull @aria_test1_ecb_pt, ptr noundef nonnull %i.a) ; 0 uses
  %i.s = load i128, ptr %i.a, align 16
  %i.t = icmp ne i128 %i.s, 161658149847930926196982669670728090662
  %i.u = zext i1 %i.t to i32
  %.not89.1 = icmp eq i32 %i.u, 0
  br i1 %.not89.1, label %bb.l, label %bb.d

bb.l:                                             ; preds = %.thread
  br i1 %.not87, label %.critedge.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  %puts90.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 192) ; 0 uses
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.m, %bb.l
  %i.w = call i32 @mbedtls_aria_setkey_dec(ptr noundef nonnull %1, ptr noundef nonnull @aria_test1_ecb_key, i32 noundef 192) ; 0 uses
  %i.x = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @aria_test1_ecb_ct, i64 16), ptr noundef nonnull %i.a) ; 0 uses
  %i.y = load i128, ptr %i.a, align 16
  %i.z = icmp ne i128 %i.y, -88962710306127702866241727433142016
  %i.aa = zext i1 %i.z to i32
  %.not92.1 = icmp eq i32 %i.aa, 0
  br i1 %.not92.1, label %bb.n, label %bb.h

bb.n:                                             ; preds = %.critedge.1
  br i1 %.not87, label %.thread159, label %bb.o

bb.o:                                             ; preds = %bb.n
  %puts93.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 256) ; 0 uses
  br label %.thread159

.thread159:                                       ; preds = %bb.n, %bb.o
  %i.ac = call i32 @mbedtls_aria_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull @aria_test1_ecb_key, i32 noundef 256) ; 0 uses
  %i.ad = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull %1, ptr noundef nonnull @aria_test1_ecb_pt, ptr noundef nonnull %i.a) ; 0 uses
  %i.ae = load i128, ptr %i.a, align 16
  %i.af = icmp ne i128 %i.ae, -5129064564461680222456903129211917319
  %i.ag = zext i1 %i.af to i32
  %.not89.2 = icmp eq i32 %i.ag, 0
  br i1 %.not89.2, label %bb.p, label %bb.d

bb.p:                                             ; preds = %.thread159
  br i1 %.not87, label %.critedge.2, label %bb.q

bb.q:                                             ; preds = %bb.p
  %puts90.2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 256) ; 0 uses
  br label %.critedge.2

.critedge.2:                                      ; preds = %bb.q, %bb.p
  %i.ai = call i32 @mbedtls_aria_setkey_dec(ptr noundef nonnull %1, ptr noundef nonnull @aria_test1_ecb_key, i32 noundef 256) ; 0 uses
  %i.aj = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @aria_test1_ecb_ct, i64 32), ptr noundef nonnull %i.a) ; 0 uses
  %i.ak = load i128, ptr %i.a, align 16
  %i.al = icmp ne i128 %i.ak, -88962710306127702866241727433142016
  %i.am = zext i1 %i.al to i32
  %.not92.2 = icmp eq i32 %i.am, 0
  br i1 %.not92.2, label %bb.r, label %bb.h

bb.r:                                             ; preds = %.critedge.2
  br i1 %.not87, label %.thread160, label %bb.s

bb.s:                                             ; preds = %bb.r
  %puts93.2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %.thread160

.thread160:                                       ; preds = %bb.r, %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.thread160
  %indvars.iv = phi i64 [ 0, %.thread160 ], [ %indvars.iv.be, %.backedge.backedge ] ; 4 uses
  %indvars.iv.tr158 = trunc i64 %indvars.iv to i32
  %i.ar = shl i32 %indvars.iv.tr158, 6
  %.pre144 = add i32 %i.ar, 128                   ; 4 uses
  br i1 %.not87, label %mbedtls_xor.exit.i, label %bb.t

bb.t:                                             ; preds = %.backedge
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.pre144) ; 0 uses
  br label %mbedtls_xor.exit.i

mbedtls_xor.exit.i:                               ; preds = %.backedge, %bb.t
  %i.at = call i32 @mbedtls_aria_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull @aria_test2_key, i32 noundef %.pre144) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.an, i8 85, i64 32, i1 false)
  store i64 -3259496855368888546, ptr %i.b, align 16
  store i64 5429768267645618070, ptr %i.ao, align 8
  %i.au = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.av = load <2 x i64>, ptr %i.c, align 16
  %i.aw = xor <2 x i64> %i.av, <i64 -3689348817891553007, i64 -2459565879930580719>
  store <2 x i64> %i.aw, ptr %i.ap, align 16
  %i.ax = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.ap, i64 16, i1 false)
  %i.ay = load <2 x i64>, ptr %i.c, align 16
  %i.az = xor <2 x i64> %i.ay, <i64 -6148914693527166430, i64 -4919131755566194142>
  store <2 x i64> %i.az, ptr %i.aq, align 16
  %i.ba = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.aq) ; 0 uses
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr @aria_test2_cbc_ct, i64 %indvars.iv ; 5 uses
  %bcmp79 = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %i.b, ptr noundef nonnull dereferenceable(48) %i.bb, i64 48)
  %.not80 = icmp eq i32 %bcmp79, 0
  br i1 %.not80, label %bb.w, label %bb.u

bb.u:                                             ; preds = %mbedtls_xor.exit.i
  br i1 %.not87, label %.thread172, label %bb.v

bb.v:                                             ; preds = %bb.u
  %puts86 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.thread172

bb.w:                                             ; preds = %mbedtls_xor.exit.i
  br i1 %.not87, label %.critedge97, label %bb.x

bb.x:                                             ; preds = %bb.w
  %puts81 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.pre144) ; 0 uses
  br label %.critedge97

.critedge97:                                      ; preds = %bb.w, %bb.x
  %i.bd = call i32 @mbedtls_aria_setkey_dec(ptr noundef nonnull %1, ptr noundef nonnull @aria_test2_key, i32 noundef %.pre144) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 -86, i64 48, i1 false)
  %i.be = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.b) ; 0 uses
  %i.bf = load <2 x i64>, ptr %i.b, align 16
  %i.bg = xor <2 x i64> %i.bf, <i64 8676565436284608015, i64 -1089357896855742841>
  store <2 x i64> %i.bg, ptr %i.b, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.bb, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bi = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.ap) ; 0 uses
  %i.bj = load <2 x i64>, ptr %i.ap, align 16
  %i.bk = load <2 x i64>, ptr %i.c, align 16
  %i.bl = xor <2 x i64> %i.bk, %i.bj
  store <2 x i64> %i.bl, ptr %i.ap, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.bh, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bn = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.aq) ; 0 uses
  %i.bo = load <2 x i64>, ptr %i.aq, align 16
  %i.bp = load <2 x i64>, ptr %i.c, align 16
  %i.bq = xor <2 x i64> %i.bp, %i.bo
  store <2 x i64> %i.bq, ptr %i.aq, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.bm, i64 16, i1 false)
  %bcmp82 = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %i.b, ptr noundef nonnull dereferenceable(48) @aria_test2_pt, i64 48)
  %.not83 = icmp eq i32 %bcmp82, 0
  br i1 %.not83, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.critedge97
  br i1 %.not87, label %.thread172, label %bb.z

bb.z:                                             ; preds = %bb.y
  %puts85 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.thread172

bb.aa:                                            ; preds = %.critedge97
  br i1 %.not87, label %bb.ab, label %.thread161

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.loopexit.a, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ab, %.thread161
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %bb.ab ], [ %indvars.iv.next162, %.thread161 ]
  br label %.backedge, !llvm.loop !24

.thread161:                                       ; preds = %bb.aa
  %puts84 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not163 = icmp eq i64 %indvars.iv.next162, 3
  br i1 %exitcond.not163, label %bb.ac, label %.backedge.backedge

bb.ac:                                            ; preds = %.thread161
  %putchar62 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 128) ; 0 uses
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %bb.ab, %bb.ac
  %i.bs = call i32 @mbedtls_aria_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull @aria_test2_key, i32 noundef 128) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @aria_test2_iv, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 85, i64 48, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae, %.loopexit.a
  %.in.i = phi i64 [ %i.bt, %bb.ae ], [ 48, %.loopexit.a ]
  %.148.i = phi i64 [ %i.cd, %bb.ae ], [ 0, %.loopexit.a ] ; 3 uses
  %.13547.i = phi ptr [ %i.cb, %bb.ae ], [ %i.b, %.loopexit.a ] ; 2 uses
  %.13746.i = phi ptr [ %i.by, %bb.ae ], [ @aria_test2_pt, %.loopexit.a ] ; 2 uses
  %i.bt = add nsw i64 %.in.i, -1                  ; 2 uses
  %i.bu = icmp eq i64 %.148.i, 0
  br i1 %i.bu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i
  %i.bv = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 %.148.i ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %.13746.i, i64 1
  %i.bz = load i8, ptr %.13746.i, align 1, !tbaa !15
  %i.ca = xor i8 %i.bz, %i.bx                     ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.13547.i, i64 1
  store i8 %i.ca, ptr %.13547.i, align 1, !tbaa !15
  store i8 %i.ca, ptr %i.bw, align 1, !tbaa !15
  %i.cc = add nuw nsw i64 %.148.i, 1
  %i.cd = and i64 %i.cc, 15
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %mbedtls_aria_crypt_cfb128.exit, label %.lr.ph.i, !llvm.loop !1

mbedtls_aria_crypt_cfb128.exit:                   ; preds = %bb.ae
  %bcmp71 = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %i.b, ptr noundef nonnull dereferenceable(48) @aria_test2_cfb_ct, i64 48)
  %.not72 = icmp eq i32 %bcmp71, 0
  br i1 %.not72, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %mbedtls_aria_crypt_cfb128.exit.2, %mbedtls_aria_crypt_cfb128.exit.1, %mbedtls_aria_crypt_cfb128.exit
  br i1 %.not87, label %.thread172, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %puts78 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.thread172

bb.ah:                                            ; preds = %mbedtls_aria_crypt_cfb128.exit
  br i1 %.not87, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %puts73 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef 128) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cf = call i32 @mbedtls_aria_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull @aria_test2_key, i32 noundef 128) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @aria_test2_iv, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 -86, i64 48, i1 false)
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %bb.al, %bb.aj
  %.in55.i = phi i64 [ %i.cg, %bb.al ], [ 48, %bb.aj ]
  %.052.i = phi i64 [ %i.cq, %bb.al ], [ 0, %bb.aj ] ; 3 uses
  %.03451.i = phi ptr [ %i.co, %bb.al ], [ %i.b, %bb.aj ] ; 2 uses
  %.03650.i = phi ptr [ %i.cj, %bb.al ], [ @aria_test2_cfb_ct, %bb.aj ] ; 2 uses
  %i.cg = add nsw i64 %.in55.i, -1                ; 2 uses
  %i.ch = icmp eq i64 %.052.i, 0
  br i1 %i.ch, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph53.i
  %i.ci = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph53.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.03650.i, i64 1
  %i.ck = load i8, ptr %.03650.i, align 1, !tbaa !15 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !15
  %i.cn = xor i8 %i.cm, %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %.03451.i, i64 1
  store i8 %i.cn, ptr %.03451.i, align 1, !tbaa !15
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !15
  %i.cp = add nuw nsw i64 %.052.i, 1
  %i.cq = and i64 %i.cp, 15
  %.not42.i = icmp eq i64 %i.cg, 0
  br i1 %.not42.i, label %mbedtls_aria_crypt_cfb128.exit105, label %.lr.ph53.i, !llvm.loop !0

mbedtls_aria_crypt_cfb128.exit105:                ; preds = %bb.al
  %bcmp74 = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %i.b, ptr noundef nonnull dereferenceable(48) @aria_test2_pt, i64 48)
  %.not75 = icmp eq i32 %bcmp74, 0
  br i1 %.not75, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %mbedtls_aria_crypt_cfb128.exit105.2, %mbedtls_aria_crypt_cfb128.exit105.1, %mbedtls_aria_crypt_cfb128.exit105
  br i1 %.not87, label %.thread172, label %bb.an

bb.an:                                            ; preds = %bb.am
  %puts77 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %.thread172

bb.ao:                                            ; preds = %mbedtls_aria_crypt_cfb128.exit105
  br i1 %.not87, label %.thread166.a, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %puts76 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.cr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 192) ; 0 uses
  br label %.thread166.a

.thread166.a:                                     ; preds = %bb.ao, %bb.ap
  %i.cs = call i32 @mbedtls_aria_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull @aria_test2_key, i32 noundef 192) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @aria_test2_iv, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 85, i64 48, i1 false)
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ar, %.thread166.a
  %.in.i.1 = phi i64 [ %i.ct, %bb.ar ], [ 48, %.thread166.a ]
  %.148.i.1 = phi i64 [ %i.dd, %bb.ar ], [ 0, %.thread166.a ] ; 3 uses
  %.13547.i.1 = phi ptr [ %i.db, %bb.ar ], [ %i.b, %.thread166.a ] ; 2 uses
  %.13746.i.1 = phi ptr [ %i.cy, %bb.ar ], [ @aria_test2_pt, %.thread166.a ] ; 2 uses
  %i.ct = add nsw i64 %.in.i.1, -1                ; 2 uses
  %i.cu = icmp eq i64 %.148.i.1, 0
  br i1 %i.cu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i.1
  %i.cv = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i.1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 %.148.i.1 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %.13746.i.1, i64 1
  %i.cz = load i8, ptr %.13746.i.1, align 1, !tbaa !15
  %i.da = xor i8 %i.cz, %i.cx                     ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.13547.i.1, i64 1
  store i8 %i.da, ptr %.13547.i.1, align 1, !tbaa !15
  store i8 %i.da, ptr %i.cw, align 1, !tbaa !15
  %i.dc = add nuw nsw i64 %.148.i.1, 1
  %i.dd = and i64 %i.dc, 15
  %.not.i.1 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.1, label %mbedtls_aria_crypt_cfb128.exit.1, label %.lr.ph.i.1, !llvm.loop !1

mbedtls_aria_crypt_cfb128.exit.1:                 ; preds = %bb.ar
  %bcmp71.1 = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %i.b, ptr noundef nonnull dereferenceable(48) getelementptr inbounds nuw (i8, ptr @aria_test2_cfb_ct, i64 48), i64 48)
  %.not72.1 = icmp eq i32 %bcmp71.1, 0
  br i1 %.not72.1, label %bb.as, label %bb.af

bb.as:                                            ; preds = %mbedtls_aria_crypt_cfb128.exit.1
  br i1 %.not87, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %puts73.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.de = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef 192) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.df = call i32 @mbedtls_aria_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull @aria_test2_key, i32 noundef 192) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @aria_test2_iv, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 -86, i64 48, i1 false)
  br label %.lr.ph53.i.1

.lr.ph53.i.1:                                     ; preds = %bb.aw, %bb.au
  %.in55.i.1 = phi i64 [ %i.dg, %bb.aw ], [ 48, %bb.au ]
  %.052.i.1 = phi i64 [ %i.dq, %bb.aw ], [ 0, %bb.au ] ; 3 uses
  %.03451.i.1 = phi ptr [ %i.do, %bb.aw ], [ %i.b, %bb.au ] ; 2 uses
  %.03650.i.1 = phi ptr [ %i.dj, %bb.aw ], [ getelementptr inbounds nuw (i8, ptr @aria_test2_cfb_ct, i64 48), %bb.au ] ; 2 uses
  %i.dg = add nsw i64 %.in55.i.1, -1              ; 2 uses
  %i.dh = icmp eq i64 %.052.i.1, 0
  br i1 %i.dh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph53.i.1
  %i.di = call i32 @mbedtls_aria_crypt_ecb(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph53.i.1
  %i.dj = getelementptr inbounds nuw i8, ptr %.03650.i.1, i64 1
  %i.dk = load i8, ptr %.03650.i.1, align 1, !tbaa !15 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.052.i.1 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !15
  %i.dn = xor i8 %i.dm, %i.dk
  %i.do = getelementptr inbounds nuw i8, ptr %.03451.i.1, i64 1
  store i8 %i.dn, ptr %.03451.i.1, align 1, !tbaa !15
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !15
  %i.dp = add nuw nsw i64 %.052.i.1, 1
  %i.dq = and i64 %i.dp, 15
  %.not42.i.1 = icmp eq i64 %i.dg, 0
  br i1 %.not42.i.1, label %mbedtls_aria_crypt_cfb128.exit105.1, label %.lr.ph53.i.1, !llvm.loop !0

mbedtls_aria_crypt_cfb128.exit105.1:              ; preds = %bb.aw
  %bcmp74.1 = call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %i.b, ptr noundef nonnull dereferenceable(48) @aria_test2_pt, i64 48)
  %.not75.1 = icmp eq i32 %bcmp74.1, 0
  br i1 %.not75.1, label %bb.ax, label %bb.am

bb.ax:                                            ; preds = %mbedtls_aria_crypt_cfb128.exit105.1
  br i1 %.not87, label %.thread167, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %puts76.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.dr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 256) ; 0 uses
  br label %.thread167

.thread167:                                       ; preds = %bb.ax, %bb.ay
  %i.ds = call i32 @mbedtls_aria_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull @aria_test2_key, i32 noundef 256) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @aria_test2_iv, i64 16, i1 false)
end_hunk_0
