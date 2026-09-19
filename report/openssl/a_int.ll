Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/a_int?download=true
inline.NumInlined: 20
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ASN1_ENUMERATED_set_int64:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define i32 @ASN1_ENUMERATED_set(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.b, label %.preheader.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = sub i64 0, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.04.i.i.i = phi i64 [ %i.c, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.0.i.i.i = phi i64 [ 8, %bb.b ], [ %i.e, %bb.c ]
  %i.d = trunc i64 %.04.i.i.i to i8
  %i.e = add nsw i64 %.0.i.i.i, -1                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  store i8 %i.d, ptr %i.f, align 1, !tbaa !18
  %i.g = lshr i64 %.04.i.i.i, 8                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %ASN1_ENUMERATED_set_int64.exit, label %bb.c, !llvm.loop !1

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.04.i10.i.i = phi i64 [ %i.k, %.preheader.i.i ], [ %1, %bb.a ] ; 2 uses
  %.0.i11.i.i = phi i64 [ %i.i, %.preheader.i.i ], [ 8, %bb.a ]
  %i.h = trunc i64 %.04.i10.i.i to i8
  %i.i = add nsw i64 %.0.i11.i.i, -1              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  store i8 %i.h, ptr %i.j, align 1, !tbaa !18
  %i.k = lshr i64 %.04.i10.i.i, 8                 ; 2 uses
  %.not.i12.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i12.i.i, label %ASN1_ENUMERATED_set_int64.exit, label %.preheader.i.i, !llvm.loop !1

ASN1_ENUMERATED_set_int64.exit:                   ; preds = %.preheader.i.i, %bb.c
  %storemerge.i.i = phi i32 [ 266, %bb.c ], [ 10, %.preheader.i.i ]
  %.0.i.i = phi i64 [ %i.e, %bb.c ], [ %i.i, %.preheader.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %storemerge.i.i, ptr %i.l, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i.i
  %i.n = trunc i64 %.0.i.i to i32
  %i.o = sub i32 8, %i.n
  %i.p = call i32 @ASN1_STRING_set(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define i64 @ASN1_ENUMERATED_get(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = and i32 %i.d, -257
  %.not = icmp eq i32 %i.e, 10
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %0, align 8, !tbaa !17
  %i.g = icmp sgt i32 %i.f, 8
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call fastcc range(i32 0, 2) i32 @asn1_string_get_int64(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %0, i32 noundef 10)
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load i64, ptr %i.a, align 8
  %spec.select = select i1 %i.i, i64 -1, i64 %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ %spec.select, %bb.d ], [ 0, %bb.a ], [ -1, %bb.b ], [ 4294967295, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define ptr @BN_to_ASN1_ENUMERATED(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @bn_to_asn1_string(ptr noundef %0, ptr noundef %1, i32 noundef 10)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @ASN1_ENUMERATED_to_BN(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @asn1_string_to_bn(ptr noundef %0, ptr noundef %1, i32 noundef 10)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_c2i_uint64_int(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load ptr, ptr %2, align 8, !tbaa !15
  %i.c = tail call fastcc i64 @c2i_ibuf(ptr noundef null, ptr noundef null, ptr noundef %i.b, i64 noundef %3) ; 9 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.c, 8
  br i1 %i.e, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 641, ptr noundef nonnull @__func__.ossl_c2i_uint64_int) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 223, ptr noundef null) #5
  br label %bb.d

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !15
  %i.g = call fastcc i64 @c2i_ibuf(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %i.f, i64 noundef %3) ; 0 uses
  %i.h = load i8, ptr %i.a, align 1, !tbaa !18
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.c, 1
  br i1 %exitcond.not.i, label %asn1_get_uint64.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.j = shl nuw nsw i64 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18
  %i.m = zext i8 %i.l to i64
  %i.n = or disjoint i64 %i.j, %i.m               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.c, 2
  br i1 %exitcond.not.i.1, label %asn1_get_uint64.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.o = shl nuw nsw i64 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18
  %i.r = zext i8 %i.q to i64
  %i.s = or disjoint i64 %i.o, %i.r               ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.c, 3
  br i1 %exitcond.not.i.2, label %asn1_get_uint64.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.t = shl nuw nsw i64 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.t, %i.w               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.c, 4
  br i1 %exitcond.not.i.3, label %asn1_get_uint64.exit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.y = shl i64 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = zext i8 %i.aa to i64
  %i.ac = or disjoint i64 %i.y, %i.ab             ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %i.c, 5
  br i1 %exitcond.not.i.4, label %asn1_get_uint64.exit, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.ad = shl i64 %i.ac, 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.ag = zext i8 %i.af to i64
  %i.ah = or disjoint i64 %i.ad, %i.ag            ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %i.c, 6
  br i1 %exitcond.not.i.5, label %asn1_get_uint64.exit, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.ai = shl i64 %i.ah, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18
  %i.al = zext i8 %i.ak to i64
  %i.am = or disjoint i64 %i.ai, %i.al            ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %i.c, 7
  br i1 %exitcond.not.i.6, label %asn1_get_uint64.exit, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.an = shl i64 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq
  br label %asn1_get_uint64.exit

asn1_get_uint64.exit:                             ; preds = %.lr.ph.i.7, %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %.lcssa = phi i64 [ %i.i, %.lr.ph.i ], [ %i.n, %.lr.ph.i.1 ], [ %i.s, %.lr.ph.i.2 ], [ %i.x, %.lr.ph.i.3 ], [ %i.ac, %.lr.ph.i.4 ], [ %i.ah, %.lr.ph.i.5 ], [ %i.am, %.lr.ph.i.6 ], [ %i.ar, %.lr.ph.i.7 ]
  store i64 %.lcssa, ptr %0, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %asn1_get_uint64.exit, %bb.c
  %.0 = phi i32 [ 1, %asn1_get_uint64.exit ], [ 0, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define range(i32 0, 11) i32 @ossl_i2c_uint64_int(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.04.i = phi i64 [ %i.e, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.0.i = phi i64 [ %i.c, %bb.b ], [ 8, %bb.a ]   ; 4 uses
  %i.b = trunc i64 %.04.i to i8                   ; 4 uses
  %i.c = add nsw i64 %.0.i, -1                    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  store i8 %i.b, ptr %i.d, align 1, !tbaa !18
  %i.e = lshr i64 %.04.i, 8                       ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %asn1_put_uint64.exit, label %bb.b, !llvm.loop !1

asn1_put_uint64.exit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.g = sub nsw i64 9, %.0.i                     ; 5 uses
  %i.h = icmp eq i32 %2, 0
  %i.i = icmp slt i8 %i.b, 0
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %asn1_put_uint64.exit
  %i.j = icmp ugt i8 %i.b, -128
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i8 %i.b, -128
  br i1 %i.k, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  %3 = icmp ult i64 %.0.i, 8
  br i1 %3, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %min.iters.check = icmp ult i64 %indvar, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %indvar, -8                    ; 3 uses
  %i.l = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi19 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %wide.load = load <4 x i8>, ptr %i.n, align 1, !tbaa !18
  %wide.load20 = load <4 x i8>, ptr %i.o, align 1, !tbaa !18
  %i.p = zext <4 x i8> %wide.load to <4 x i32>
  %i.q = zext <4 x i8> %wide.load20 to <4 x i32>
  %i.r = or <4 x i32> %vec.phi, %i.p              ; 2 uses
  %i.s = or <4 x i32> %vec.phi19, %i.q            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.s, %i.r
  %i.u = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %indvar, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader21

.lr.ph.i.preheader21:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.03665.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.l, %middle.block ]
  %.03864.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader21, %.lr.ph.i
  %.03665.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.03665.i.ph, %.lr.ph.i.preheader21 ] ; 2 uses
  %.03864.i = phi i32 [ %i.y, %.lr.ph.i ], [ %.03864.i.ph, %.lr.ph.i.preheader21 ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %.03665.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !18
  %i.x = zext i8 %i.w to i32
  %i.y = or i32 %.03864.i, %i.x                   ; 2 uses
  %i.z = add nuw nsw i64 %.03665.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.g
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !31

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.u, %middle.block ], [ %i.y, %.lr.ph.i ]
  %i.aa = icmp ne i32 %.lcssa, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.038.lcssa.i = phi i1 [ false, %.preheader.i ], [ %i.aa, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ab = sext i1 %.038.lcssa.i to i8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.d, %bb.c, %asn1_put_uint64.exit
  %.139.shrunk.i = phi i1 [ true, %bb.c ], [ %i.i, %asn1_put_uint64.exit ], [ %.038.lcssa.i, %._crit_edge.i ], [ false, %bb.d ]
  %.0.i4 = phi i8 [ -1, %bb.c ], [ 0, %asn1_put_uint64.exit ], [ %i.ab, %._crit_edge.i ], [ -1, %bb.d ] ; 5 uses
  %.139.i = zext i1 %.139.shrunk.i to i64         ; 2 uses
  %i.ac = icmp eq ptr %0, null
  br i1 %i.ac, label %i2c_ibuf.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  store i8 %.0.i4, ptr %0, align 1, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.139.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.g ; 2 uses
  %i.ag = and i8 %.0.i4, 1
  %i.ah = zext nneg i8 %i.ag to i32               ; 2 uses
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %i.ai = sub i64 8, %.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18
  %i.al = xor i8 %i.ak, %.0.i4
  %i.am = zext i8 %i.al to i32
  %i.an = add nuw nsw i32 %i.ah, %i.am            ; 2 uses
  %i.ao = trunc i32 %i.an to i8
  %i.ap = getelementptr inbounds i8, ptr %i.af, i64 -1 ; 2 uses
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !18
  %i.aq = lshr i32 %i.an, 8
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.021.i.i.unr = phi i32 [ %i.ah, %.lr.ph.preheader.i.i ], [ %i.aq, %.lr.ph.i.i.prol ]
  %.120.i.i.unr = phi ptr [ %i.af, %.lr.ph.preheader.i.i ], [ %i.ap, %.lr.ph.i.i.prol ]
  %.01219.i.i.unr = phi i64 [ %i.g, %.lr.ph.preheader.i.i ], [ %i.ai, %.lr.ph.i.i.prol ]
  %.11418.i.i.unr = phi ptr [ %i.ae, %.lr.ph.preheader.i.i ], [ %i.aj, %.lr.ph.i.i.prol ]
  %i.ar = icmp eq i64 %indvar, 0
  br i1 %i.ar, label %i2c_ibuf.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.021.i.i = phi i32 [ %i.bi, %.lr.ph.i.i ], [ %.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.120.i.i = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %.120.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.01219.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.01219.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.11418.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.11418.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.11418.i.i, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18
  %i.au = xor i8 %i.at, %.0.i4
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %.021.i.i, %i.av        ; 2 uses
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds i8, ptr %.120.i.i, i64 -1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !18
  %i.az = lshr i32 %i.aw, 8
  %i.ba = add nsw i64 %.01219.i.i, -2             ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.11418.i.i, i64 -2 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !18
  %i.bd = xor i8 %i.bc, %.0.i4
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.az, %i.be            ; 2 uses
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds i8, ptr %.120.i.i, i64 -2 ; 2 uses
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !18
  %i.bi = lshr i32 %i.bf, 8
  %.not16.i.i.1 = icmp eq i64 %i.ba, 0
  br i1 %.not16.i.i.1, label %i2c_ibuf.exit, label %.lr.ph.i.i, !llvm.loop !0

i2c_ibuf.exit:                                    ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %i.bj = add nuw nsw i64 %i.g, %.139.i
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.bk
}

declare ptr @ASN1_STRING_type_new(i32 noundef) local_unnamed_addr #1

declare i32 @BN_is_negative(ptr noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BN_bin2bn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BN_set_negative(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"asn1_string_st", !7, i64 0, !7, i64 4, !11, i64 8, !12, i64 16}
!14 = !{!13, !7, i64 4}
!15 = !{!11, !11, i64 0}
!16 = !{!13, !11, i64 8}
!17 = !{!13, !7, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"p1 _ZTS14asn1_string_st", !10, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!7, !7, i64 0}
!25 = !{!12, !12, i64 0}
!26 = distinct !{!26, !19, !20, !21}
!27 = distinct !{!27, !19, !21, !20}
!28 = distinct !{!28, !19, !20, !21}
!29 = distinct !{!29, !19, !21, !20}
!30 = distinct !{!30, !19, !20, !21}
!31 = distinct !{!31, !19, !21, !20}
end_hunk_0
