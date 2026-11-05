Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 333
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 552
begin_hunk_0_@hmac_ctx_set_md_methods:bb.a
  br i1 %i.f, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 112), align 8, !tbaa !252
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 168), align 8, !tbaa !252
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 224), align 8, !tbaa !252
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %select.unfold, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 280), align 8, !tbaa !252
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 336), align 8, !tbaa !252
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 392), align 8, !tbaa !252
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %select.unfold, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 448), align 8, !tbaa !252
  %i.t = icmp eq ptr %i.s, %1
  br i1 %i.t, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 504), align 8, !tbaa !252
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 560), align 8, !tbaa !252
  %i.x = icmp eq ptr %i.w, %1
  br i1 %i.x, label %select.unfold, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 616), align 8, !tbaa !252
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %select.unfold, label %GetInPlaceMethods.exit

GetInPlaceMethods.exit:                           ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !250
  br label %bb.q

select.unfold:                                    ; preds = %bb.o, %bb.j, %bb.d, %bb.e, %bb.f, %bb.l, %bb.g, %bb.n, %bb.h, %bb.k, %bb.i, %bb.m
  %spec.select.i.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 336), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 504), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 280), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 392), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 224), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 560), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 168), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 448), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 112), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 56), %bb.e ], [ @AWSLC_hmac_in_place_methods_storage, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @AWSLC_hmac_in_place_methods_storage, i64 616), %bb.o ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.ph, ptr %i.ab, align 8, !tbaa !250
  store ptr %1, ptr %0, align 8, !tbaa !249
  br label %bb.p

._crit_edge:                                      ; preds = %bb.a, %bb.c
  %.off = add i8 %.pre, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge, %select.unfold
  br label %bb.q

bb.q:                                             ; preds = %GetInPlaceMethods.exit, %._crit_edge, %bb.p
  %.0 = phi i32 [ 0, %GetInPlaceMethods.exit ], [ 1, %bb.p ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @HMAC_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !207
  %i.d = zext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @HMAC_CTX_get_md(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !249
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @HMAC_CTX_copy_ex(ptr nofree noundef writeonly captures(none) initializes((0, 1224)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1224) %0, ptr noundef nonnull readonly align 1 dereferenceable(1224) %1, i64 1224, i1 false)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @HMAC_CTX_reset(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @OPENSSL_cleanse(ptr noundef %0, i64 noundef 1224) #46
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @HMAC_Init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  %i.b = icmp slt i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.a, %i.c
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1224) %0, i8 0, i64 1224, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = sext i32 %2 to i64
  %i.e = tail call i32 @HMAC_Init_ex(ptr noundef %0, ptr noundef %1, i64 noundef %i.d, ptr noundef %3, ptr poison)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.e, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @HMAC_CTX_copy(ptr nofree noundef writeonly captures(none) initializes((0, 1224)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #21 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1224) %0, i8 0, i64 1224, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1224) %0, ptr noundef nonnull readonly align 1 dereferenceable(1224) %1, i64 1224, i1 false)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @KBKDF_ctr_hmac(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %7 = alloca %struct.hmac_ctx_st, align 8        ; 14 uses
  %i.b = alloca [64 x i8], align 16               ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %i.d = icmp eq ptr %0, null                     ; 2 uses
  %i.e = icmp eq i64 %1, 0                        ; 2 uses
  %i.f = icmp eq ptr %3, null
  %i.g = icmp eq i64 %4, 0
  %i.h = or i1 %i.f, %i.g
  %i.i = or i1 %i.h, %i.e
  %or.cond5 = or i1 %i.i, %i.d
  br i1 %or.cond5, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1224) %7, i8 0, i64 1224, i1 false)
  %i.j = call i32 @HMAC_Init_ex(ptr noundef nonnull %7, ptr noundef nonnull %3, i64 noundef %4, ptr noundef %2, ptr poison)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %7, align 8, !tbaa !249
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !207  ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 5 uses
  %i.o = add i32 %i.m, -65
  %or.cond7 = icmp ult i32 %i.o, -64
  %i.p = xor i64 %i.n, -1
  %i.q = icmp ugt i64 %1, %i.p
  %or.cond = or i1 %or.cond7, %i.q
  br i1 %or.cond, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add i64 %1, -1
  %i.s = add i64 %i.r, %i.n                       ; 2 uses
  %i.t = udiv i64 %i.s, %i.n                      ; 2 uses
  %i.u = icmp ugt i64 %i.t, 4294967295
  br i1 %i.u, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not97102.not = icmp ult i64 %i.s, %i.n
  br i1 %.not97102.not, label %HMAC_Update.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 1216 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 816
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 416
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %OPENSSL_memcpy.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %OPENSSL_memcpy.exit ]
  %.051103 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %OPENSSL_memcpy.exit ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aa = trunc nuw i64 %indvars.iv.next to i32
  %i.ab = call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  store i32 %i.ab, ptr %i.c, align 4
  %i.ac = call i32 @HMAC_Init_ex(ptr noundef nonnull %7, ptr noundef null, i64 noundef 0, ptr noundef null, ptr poison)
  %.not67 = icmp eq i32 %i.ac, 0
  br i1 %.not67, label %HMAC_Update.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.v, align 8, !tbaa !248
  %.off.i = add i8 %i.ad, -1
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %HMAC_Update.exit, label %HMAC_Update.exit.thread

HMAC_Update.exit:                                 ; preds = %bb.f
  store i8 2, ptr %i.v, align 8, !tbaa !248
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !250
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !254
  %i.ah = call i32 %i.ag(ptr noundef nonnull %i.x, ptr noundef nonnull %i.c, i64 noundef 4) #46, !inline_history !423
  %.not68 = icmp eq i32 %i.ah, 0
  br i1 %.not68, label %HMAC_Update.exit.thread, label %bb.g

bb.g:                                             ; preds = %HMAC_Update.exit
  %i.ai = load i8, ptr %i.v, align 8, !tbaa !248
  %.off.i75 = add i8 %i.ai, -1
  %switch.i76 = icmp ult i8 %.off.i75, 2
  br i1 %switch.i76, label %HMAC_Update.exit78, label %HMAC_Update.exit.thread

HMAC_Update.exit78:                               ; preds = %bb.g
  store i8 2, ptr %i.v, align 8, !tbaa !248
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !250
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !254
  %i.am = call i32 %i.al(ptr noundef nonnull %i.x, ptr noundef %5, i64 noundef %6) #46, !inline_history !423
  %.not69 = icmp eq i32 %i.am, 0
  br i1 %.not69, label %HMAC_Update.exit.thread, label %bb.h

bb.h:                                             ; preds = %HMAC_Update.exit78
  %i.an = load i8, ptr %i.v, align 8, !tbaa !248
  %.off.i79 = add i8 %i.an, -1
  %switch.i80 = icmp ult i8 %.off.i79, 2
  br i1 %switch.i80, label %bb.i, label %HMAC_Update.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !250
  %i.ap = load ptr, ptr %7, align 8, !tbaa !249
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !207 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !255
  %i.au = call i32 %i.at(ptr noundef nonnull %i.a, ptr noundef nonnull %i.x) #46, !inline_history !424
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(400) %i.y, i64 400, i1 false)
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !250
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !254
  %i.ay = sext i32 %i.ar to i64
  %i.az = call i32 %i.ax(ptr noundef nonnull %i.x, ptr noundef nonnull %i.a, i64 noundef %i.ay) #46, !inline_history !424
  %.not32.i = icmp eq i32 %i.az, 0
  br i1 %.not32.i, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !255
  %i.bb = call i32 %i.ba(ptr noundef nonnull %i.b, ptr noundef nonnull %i.x) #46, !inline_history !424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(400) %i.z, i64 400, i1 false)
  store i8 3, ptr %i.v, align 8, !tbaa !248
  %i.bc = icmp eq i32 %i.bb, 0
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #46
  br i1 %i.bc, label %HMAC_Final.exit.thread91, label %bb.l

.critedge.i:                                      ; preds = %bb.j, %bb.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #46
  br label %HMAC_Final.exit.thread91

HMAC_Final.exit.thread91:                         ; preds = %bb.k, %.critedge.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %7, i64 noundef 1224) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %HMAC_Update.exit.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %.not71 = icmp eq i32 %i.m, %i.ar
  br i1 %.not71, label %bb.m, label %HMAC_Update.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bd = sub i64 %1, %.051103
  %spec.select9596 = call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.n) ; 2 uses
  %i.be = icmp eq i64 %1, %.051103
  br i1 %i.be, label %OPENSSL_memcpy.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.051103
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr nonnull readonly align 16 %i.b, i64 %spec.select9596, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.m, %bb.n
  %i.bg = add i64 %spec.select9596, %.051103
  %.not97 = icmp ugt i64 %i.t, %indvars.iv.next
  br i1 %.not97, label %bb.e, label %HMAC_Update.exit.thread, !llvm.loop !2082

HMAC_Update.exit.thread:                          ; preds = %OPENSSL_memcpy.exit, %bb.l, %HMAC_Update.exit78, %HMAC_Update.exit, %bb.e, %bb.f, %bb.g, %bb.h, %.preheader, %HMAC_Final.exit.thread91
  %.not97100 = phi i1 [ true, %HMAC_Final.exit.thread91 ], [ false, %.preheader ], [ false, %OPENSSL_memcpy.exit ], [ true, %bb.l ], [ true, %HMAC_Update.exit78 ], [ true, %HMAC_Update.exit ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ] ; 2 uses
  %not..not97 = xor i1 %.not97100, true
  %spec.select74 = zext i1 %not..not97 to i32
  br label %bb.o

bb.o:                                             ; preds = %HMAC_Update.exit.thread, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bh = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.d ], [ %.not97100, %HMAC_Update.exit.thread ]
  %.053 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ], [ %spec.select74, %HMAC_Update.exit.thread ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #46
  %i.bi = or i1 %i.d, %i.e
  %i.bj = xor i1 %i.bi, true
  %or.cond11 = and i1 %i.bh, %i.bj
  br i1 %or.cond11, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef %1) #46
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @OPENSSL_cleanse(ptr noundef nonnull %7, i64 noundef 1224) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  ret i32 %.053
}

; Function Attrs: nounwind uwtable
define hidden noundef nonnull ptr @sskdf_variant_digest() local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @sskdf_variant_digest_once, ptr noundef nonnull @sskdf_variant_digest_init) #46
  ret ptr @sskdf_variant_digest_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @sskdf_variant_digest_init() #16 {
bb.a:
  store ptr @sskdf_variant_digest_output_size, ptr @sskdf_variant_digest_storage, align 8, !tbaa !429
  store ptr @sskdf_variant_digest_compute, ptr getelementptr inbounds nuw (i8, ptr @sskdf_variant_digest_storage, i64 8), align 8, !tbaa !430
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef nonnull ptr @sskdf_variant_hmac() local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @sskdf_variant_hmac_once, ptr noundef nonnull @sskdf_variant_hmac_init) #46
  ret ptr @sskdf_variant_hmac_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @sskdf_variant_hmac_init() #16 {
bb.a:
  store ptr @sskdf_variant_hmac_output_size, ptr @sskdf_variant_hmac_storage, align 8, !tbaa !429
  store ptr @sskdf_variant_hmac_compute, ptr getelementptr inbounds nuw (i8, ptr @sskdf_variant_hmac_storage, i64 8), align 8, !tbaa !430
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SSKDF_digest(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.sskdf_variant_ctx, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 16) #46 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @OPENSSL_zalloc(i64 noundef 48) #46 ; 2 uses
  %.not23.i = icmp eq ptr %i.b, null
  br i1 %.not23.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.016.i = phi ptr [ %i.a, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  tail call void @OPENSSL_free(ptr noundef %.016.i) #46
  br label %sskdf_variant_digest_ctx_cleanup.exit

bb.e:                                             ; preds = %bb.c
  store ptr %2, ptr %i.a, align 8, !tbaa !433
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !434
  store ptr %i.a, ptr %7, align 8, !tbaa !407
  tail call void @CRYPTO_once(ptr noundef nonnull @sskdf_variant_digest_once, ptr noundef nonnull @sskdf_variant_digest_init) #46
  %i.d = call fastcc i32 @SSKDF(ptr noundef nonnull @sskdf_variant_digest_storage, ptr noundef %7, ptr noundef %0, i64 noundef %1, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) ; 2 uses
  %i.e = load ptr, ptr %7, align 8, !tbaa !407    ; 3 uses
  %.not.i13 = icmp eq ptr %i.e, null
  br i1 %.not.i13, label %sskdf_variant_digest_ctx_cleanup.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !434  ; 7 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %EVP_MD_CTX_free.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
