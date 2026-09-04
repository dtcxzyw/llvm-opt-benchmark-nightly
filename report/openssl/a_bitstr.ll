Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/a_bitstr?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@ossl_c2i_ASN1_BIT_STRING:bb.a
  br i1 %i.g, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.039 = phi ptr [ %i.f, %bb.e ], [ %i.d, %bb.d ] ; 8 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.h, align 1, !tbaa !14    ; 3 uses
  %i.k = zext i8 %i.j to i32                      ; 3 uses
  %i.l = icmp ugt i8 %i.j, 7
  br i1 %i.l, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ossl_asn1_string_set_bits_left(ptr noundef nonnull %.039, i32 noundef %i.k) #8
  %i.m = add nsw i64 %2, -1                       ; 3 uses
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.m, ptr noundef nonnull @.str, i32 noundef 116) #8 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.i, i64 %i.m, i1 false)
  %i.p = shl nuw nsw i32 255, %i.k
  %i.q = getelementptr i8, ptr %i.n, i64 %2
  %i.r = getelementptr i8, ptr %i.q, i64 -2       ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = trunc i32 %i.p to i8
  %i.u = and i8 %i.s, %i.t
  store i8 %i.u, ptr %i.r, align 1, !tbaa !14
  %i.v = getelementptr i8, ptr %i.h, i64 %2
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %.038 = phi ptr [ %i.v, %bb.i ], [ %i.i, %bb.g ]
  %.037 = phi ptr [ %i.n, %bb.i ], [ null, %bb.g ]
  %i.w = trunc nuw nsw i64 %i.m to i32
  tail call void @ASN1_STRING_set0(ptr noundef nonnull %.039, ptr noundef %.037, i32 noundef %i.w) #8
  %i.x = getelementptr inbounds nuw i8, ptr %.039, i64 4
  store i32 3, ptr %i.x, align 4, !tbaa !17
  br i1 %i.c, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %.039, ptr %0, align 8, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %.038, ptr %1, align 8, !tbaa !13
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %.not49 = icmp eq i8 %i.j, 0
  br i1 %.not49, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.f, %bb.b, %bb.a, %bb.m
  %.056 = phi i32 [ %i.k, %bb.m ], [ 220, %bb.f ], [ 151, %bb.b ], [ 152, %bb.a ]
  %.154 = phi ptr [ %.039, %bb.m ], [ %.039, %bb.f ], [ null, %bb.b ], [ null, %bb.a ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @__func__.ossl_c2i_ASN1_BIT_STRING) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.056, ptr noundef null) #8
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.155 = phi ptr [ %.154, %.thread ], [ %.039, %bb.m ] ; 2 uses
  %i.y = icmp eq ptr %0, null
  br i1 %i.y, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = load ptr, ptr %0, align 8, !tbaa !20
  %.not50 = icmp eq ptr %i.z, %.155
  br i1 %.not50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @ASN1_BIT_STRING_free(ptr noundef %.155) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.e, %bb.l
  %.040 = phi ptr [ null, %bb.e ], [ %.039, %bb.l ], [ null, %bb.p ], [ null, %bb.o ]
  ret ptr %.040
}

declare ptr @ASN1_BIT_STRING_new() local_unnamed_addr #1

declare void @ossl_asn1_string_set_bits_left(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_STRING_set0(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @ASN1_BIT_STRING_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ASN1_BIT_STRING_set_bit(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 3                           ; 3 uses
  %i.c = and i32 %1, 7                            ; 2 uses
  %i.d = lshr exact i32 128, %i.c
  %i.e = ashr i32 -129, %i.c
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %spec.select = select i1 %.not, i32 0, i32 %i.d
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15
  %i.i = and i64 %i.h, -16
  store i64 %i.i, ptr %i.g, align 8, !tbaa !15
  %i.j = load i32, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.k = add nuw nsw i32 %i.b, 1                  ; 3 uses
  %.not59 = icmp sgt i32 %i.j, %i.b
  br i1 %.not59, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = sext i32 %i.j to i64
  %i.r = zext nneg i32 %i.k to i64
  %i.s = tail call ptr @CRYPTO_clear_realloc(ptr noundef %i.p, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str, i32 noundef 165) #8 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.v = sub nsw i32 %i.k, %i.u                   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 %i.x
  %i.z = zext nneg i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.z, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %i.s, ptr %i.o, align 8, !tbaa !16
  store i32 %i.k, ptr %0, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.aa = phi ptr [ %i.s, %bb.i ], [ %i.m, %bb.d ]
  %i.ab = zext nneg i32 %i.b to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i32
  %i.af = and i32 %i.e, %i.ae
  %i.ag = or i32 %i.af, %spec.select
  %i.ah = trunc nuw i32 %i.ag to i8
  store i8 %i.ah, ptr %i.ac, align 1, !tbaa !14
  %.pr = load i32, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.ai = icmp sgt i32 %.pr, 0
  br i1 %i.ai, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.l
  %i.al = phi i32 [ %.pr, %.lr.ph ], [ %i.ar, %bb.l ] ; 3 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr i8, ptr %i.ak, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14  ; 3 uses
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.ar, ptr %0, align 8, !tbaa !12
  %i.as = icmp sgt i32 %i.al, 1
  br i1 %i.as, label %bb.k, label %.critedge, !llvm.loop !21

bb.m:                                             ; preds = %bb.k
  %i.at = sub i8 0, %i.ap
  %i.au = and i8 %i.ap, %i.at
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  %i.aw = and i32 %i.av, 15
  %.not60 = icmp eq i32 %i.aw, 0
  %spec.select63 = select i1 %.not60, i8 7, i8 3  ; 2 uses
  %i.ax = and i32 %i.av, 51
  %.not61 = icmp eq i32 %i.ax, 0
  %3 = add nsw i8 %spec.select63, -2
  %.1 = select i1 %.not61, i8 %spec.select63, i8 %3
  %i.ay = and i32 %i.av, 85
  %.not62 = icmp ne i32 %i.ay, 0
  %4 = sext i1 %.not62 to i8
  %.2 = add nsw i8 %.1, %4
  %i.az = load i64, ptr %i.g, align 8, !tbaa !15
  %i.ba = and i64 %i.az, -16
  %5 = add nuw nsw i8 %.2, 8
  %6 = zext nneg i8 %5 to i64
  %i.bb = or disjoint i64 %i.ba, %6
  store i64 %i.bb, ptr %i.g, align 8, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.j, %bb.m, %bb.f, %bb.e, %bb.b, %bb.a
  %.152 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.m ], [ 1, %bb.j ], [ 1, %bb.l ]
  ret i32 %.152
}

declare ptr @CRYPTO_clear_realloc(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @ASN1_BIT_STRING_get_bit(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 3                           ; 2 uses
  %i.c = and i32 %1, 7
  %i.d = lshr exact i32 128, %i.c
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %0, align 8, !tbaa !12
  %.not = icmp sgt i32 %i.f, %i.b
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = zext nneg i32 %i.b to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = and i32 %i.d, %i.m
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ %i.p, %bb.e ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @ASN1_BIT_STRING_check(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not17 = icmp eq ptr %i.b, null
  br i1 %.not17, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = sext i32 %2 to i64
  %i.f = zext nneg i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.g = icmp slt i64 %indvars.iv, %i.e
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = xor i8 %i.i, -1
  %i.k = zext i8 %i.j to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.l = phi i32 [ %i.k, %bb.c ], [ 255, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i8 %i.n to i32
  %i.p = and i32 %i.l, %i.o
  %i.q = icmp eq i32 %i.p, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.f
  %i.s = select i1 %i.r, i1 %i.q, i1 false
  br i1 %i.s, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !22

.loopexit.loopexit:                               ; preds = %bb.d
  %i.t = zext i1 %i.q to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a, %bb.b
  %.015 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %.preheader ], [ %i.t, %.loopexit.loopexit ]
  ret i32 %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @ASN1_BIT_STRING_get_length(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %.not = icmp eq i32 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %1, null
  %i.e = icmp eq ptr %2, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %i.j = and i64 %i.i, 8
  %.not27 = icmp eq i64 %i.j, 0
  %i.k = trunc i64 %i.i to i32
  %i.l = and i32 %i.k, 7
  %.022 = select i1 %.not27, i32 0, i32 %i.l      ; 3 uses
  %i.m = icmp eq i32 %i.f, 0
  %i.n = icmp ne i32 %.022, 0                     ; 2 uses
  %or.cond3 = and i1 %i.m, %i.n
  br i1 %or.cond3, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %notmask = shl nsw i32 -1, %.022
  %i.o = xor i32 %notmask, -1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.r = getelementptr i8, ptr %i.q, i64 %i.g
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = zext i8 %i.t to i32
  %i.v = and i32 %i.u, %i.o
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.g, ptr %1, align 8, !tbaa !23
  store i32 %.022, ptr %2, align 4, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %bb.f, %bb.g
  %.1 = phi i32 [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.g ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ASN1_BIT_STRING_set1(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 2147483647
  %i.c = icmp ugt i32 %3, 7
  %or.cond3 = or i1 %i.b, %i.c
  br i1 %or.cond3, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %2, 0                        ; 2 uses
  %i.e = icmp ne i32 %3, 0
  %or.cond5 = and i1 %i.d, %i.e
  br i1 %or.cond5, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %1, i64 %2
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i32
  %notmask = shl nsw i32 -1, %3
  %i.j = xor i32 %notmask, -1
  %i.k = and i32 %i.i, %i.j
  %.not24 = icmp eq i32 %i.k, 0
  br i1 %.not24, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = trunc nuw nsw i64 %2 to i32
end_hunk_0
