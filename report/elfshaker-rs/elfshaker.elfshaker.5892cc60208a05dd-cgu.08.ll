Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.08?download=true
inline.NumInlined: 356
inline.NumDeleted: 210
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtCs1xwejQucwHj_5alloc2io4copy7generic17stack_buffer_copyQQRShNtNtCsaL1QbXo9JQH_3std2fs4FileECs7BtpbLEd5q3_9elfshaker:bb.a
  %.sroa.4.0 = phi ptr [ %i.o, %._crit_edge.loopexit ], [ null, %bb.a ], [ %i.p, %.lr.ph ]
  %.sroa.0.0 = phi i64 [ 0, %._crit_edge.loopexit ], [ 0, %bb.a ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, ptr } %i.q, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.r
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs1xwejQucwHj_5alloc6string6StringNvYB14_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly %4) unnamed_addr #3 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs1xwejQucwHj_5alloc6string6StringNvYB14_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs1xwejQucwHj_5alloc6string6StringNvYB14_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs1xwejQucwHj_5alloc6string6StringNvYB14_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val17 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 16
  %.sroa.0.0.val18 = load i64, ptr %i.o, align 8, !noundef !5 ; 4 uses
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val19 = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 16
  %.sroa.04.0.val20 = load i64, ptr %i.q, align 8, !noundef !5 ; 4 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val18, i64 range(i64 0, -9223372036854775808) %.sroa.04.0.val20)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val17, ptr nonnull readonly %.sroa.04.0.val19, i64 %spec.store.select.i.i.i.i.i), !alias.scope !40 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.sroa.0.0.val18, %.sroa.04.0.val20
  %spec.select.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val15 = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.08.0, i64 16
  %.sroa.08.0.val16 = load i64, ptr %i.w, align 8, !noundef !5 ; 4 uses
  %spec.store.select.i.i.i.i.i21 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val18, i64 range(i64 0, -9223372036854775808) %.sroa.08.0.val16)
  %i.x = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val17, ptr nonnull readonly %.sroa.08.0.val15, i64 %spec.store.select.i.i.i.i.i21), !alias.scope !44 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub nsw i64 %.sroa.0.0.val18, %.sroa.08.0.val16
  %spec.select.i.i.i.i.i22 = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = xor i64 %spec.select.i.i.i.i.i22, %spec.select.i.i.i.i.i
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs1xwejQucwHj_5alloc6string6StringNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i.i.i.i23 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.04.0.val20, i64 range(i64 0, -9223372036854775808) %.sroa.08.0.val16)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.sroa.04.0.val19, ptr nonnull readonly %.sroa.08.0.val15, i64 %spec.store.select.i.i.i.i.i23), !alias.scope !48 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub nsw i64 %.sroa.04.0.val20, %.sroa.08.0.val16
  %spec.select.i.i.i.i.i24 = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = xor i64 %spec.select.i.i.i.i.i24, %spec.select.i.i.i.i.i
  %i.ai = icmp slt i64 %i.ah, 0
  %..i = select i1 %i.ai, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs1xwejQucwHj_5alloc6string6StringNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs1xwejQucwHj_5alloc6string6StringNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs1xwejQucwHj_5alloc6string6StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %..i, 24                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.y, %.preheader ], [ %i.h, %.critedge ] ; 3 uses
  %i.j = phi ptr [ %i.x, %.preheader ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -24 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -24 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -24 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -16
  %.val.i = load ptr, ptr %i.n, align 8, !noalias !52, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %i.i, i64 -8
  %.val12.i = load i64, ptr %i.o, align 8, !noalias !52, !noundef !5 ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 -16
  %.val13.i = load ptr, ptr %i.p, align 8, !noalias !52, !nonnull !5, !noundef !5
  %i.q = getelementptr i8, ptr %i.j, i64 -8
  %.val14.i = load i64, ptr %i.q, align 8, !noalias !52, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i, i64 range(i64 0, -9223372036854775808) %.val14.i)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !55, !noalias !52 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.val12.i, %.val14.i
  %spec.select.i.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i17 = select i1 %i.v, ptr %i.l, ptr %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %..i17, i64 24, i1 false), !noalias !52
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.w ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %spec.select.i.i.i.i.i.lobit.i ; 3 uses
  %i.z = icmp eq ptr %i.x, %0
  %i.aa = icmp eq ptr %i.y, %2
  %or.cond.i = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs1xwejQucwHj_5alloc6string6StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.ab = phi ptr [ %i.ap, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ac = phi ptr [ %i.an, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
  %i.ad = getelementptr i8, ptr %.sroa.0.02.i, i64 8
  %.sroa.0.0.val.i = load ptr, ptr %i.ad, align 8, !noalias !59, !nonnull !5, !noundef !5
  %i.ae = getelementptr i8, ptr %.sroa.0.02.i, i64 16
  %.sroa.0.0.val6.i = load i64, ptr %i.ae, align 8, !noalias !59, !noundef !5 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val.i19 = load ptr, ptr %i.af, align 8, !noalias !59, !nonnull !5, !noundef !5
  %i.ag = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ag, align 8, !noalias !59, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val6.i, i64 range(i64 0, -9223372036854775808) %.val7.i)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i, ptr nonnull readonly %.val.i19, i64 %spec.store.select.i.i.i.i.i.i20), !alias.scope !62, !noalias !59 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub nsw i64 %.sroa.0.0.val6.i, %.val7.i
  %spec.select.i.i.i.i.i.i21 = select i1 %i.aj, i64 %i.ak, i64 %i.ai ; 2 uses
  %i.al = icmp sgt i64 %spec.select.i.i.i.i.i.i21, -1 ; 2 uses
  %.sroa.05.0.i = select i1 %i.al, ptr %i.ac, ptr %.sroa.0.02.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i, i64 24, i1 false), !noalias !59
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.am ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i22 = lshr i64 %spec.select.i.i.i.i.i.i21, 63
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i, i64 %spec.select.i.i.i.i.i.lobit.i22 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.aq = icmp ne ptr %i.an, %i.h
  %i.ar = icmp ne ptr %i.ao, %i.f
  %or.cond.i23 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond.i23, label %.lr.ph.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs1xwejQucwHj_5alloc6string6StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs1xwejQucwHj_5alloc6string6StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.x, %.preheader ], [ %i.ap, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.y, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %i.as = ptrtoint ptr %.sroa.7.0 to i64
  %i.at = ptrtoint ptr %.sroa.0.0 to i64
  %i.au = sub nuw i64 %i.as, %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.au, i1 false), !noalias !66
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs1xwejQucwHj_5alloc6string6StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB6_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer25serialize_newtype_variantShECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly captures(address) %7, i64 noundef range(i64 0, -9223372036854775808) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode13write_map_lenINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1)
  %i.g = load i64, ptr %i.f, align 8, !range !71, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.g, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = zext i32 %4 to i64
  call void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.j)
  %i.k = load i64, ptr %i.e, align 8, !range !72, !noundef !5
  %.not1 = icmp eq i64 %i.k, -1
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 %8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !86
  %i.m = trunc i64 %8 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.m), !noalias !93
  %i.n = load i64, ptr %i.b, align 8, !range !71, !noalias !86, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.n, 2
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !86, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !86
  %i.q = ptrtoint ptr %i.p to i64
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !94, !noalias !95
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !alias.scope !94, !noalias !95
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !alias.scope !94, !noalias !95
  br label %_RINvXs6_NtNtCs6LlcditsbhK_5serde3ser5implsShNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !86
  store i64 -1, ptr %i.d, align 8, !noalias !83
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !83
  %.sroa.712.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %.sroa.712.0..sroa_idx.i.i, align 8, !noalias !83
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !83
  %i.r = icmp samesign eq i64 %8, 0
  br i1 %i.r, label %.loopexit.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1L_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRShE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1L_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRShE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i.i.i: ; preds = %bb.g, %bb.h
  %i.s = phi ptr [ %i.t, %bb.h ], [ %7, %bb.g ]   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96
  %.val4.us.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !105, !noalias !106
  %i.u = zext i8 %.val4.us.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.u)
          to label %.noexc.i.i unwind label %bb.m, !noalias !107

.noexc.i.i:                                       ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1L_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRShE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i.i.i
  %.pr.us.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !108, !noalias !111 ; 2 uses
  %.not.i.us.i.i.i.i = icmp eq i64 %.pr.us.i.i.i.i, -1
  br i1 %.not.i.us.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96
  %i.v = icmp eq ptr %i.t, %i.l
  br i1 %i.v, label %.loopexit.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1L_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRShE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i.i.i

bb.i:                                             ; preds = %.noexc.i.i
  %.sroa.7.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.420.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7.i.i.i.i, i64 16, i1 false), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96
  store i64 %.pr.us.i.i.i.i, ptr %0, align 8, !alias.scope !94, !noalias !95
  %i.w = load i64, ptr %i.d, align 8, !range !17, !alias.scope !113, !noalias !83, !noundef !5
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvXs6_NtNtCs6LlcditsbhK_5serde3ser5implsShNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i unwind label %bb.k, !noalias !107

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %common.resume.i.i unwind label %bb.l, !noalias !107

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !107
  unreachable

common.resume.i.i:                                ; preds = %bb.m, %bb.k
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.y, %bb.k ], [ %lpad.thr_comm.i.i, %bb.m ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %bb.j
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d), !noalias !107
  br label %_RINvXs6_NtNtCs6LlcditsbhK_5serde3ser5implsShNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker.exit

.loopexit.i.i:                                    ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !83
  call fastcc void @_RNvXsh_NtCs974quTetXso_9rmp_serde6encodeINtB5_26MaybeUnknownLengthCompoundINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB7_6config13DefaultConfigENtNtCs6LlcditsbhK_5serde3ser12SerializeSeq3endCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.c), !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83
  br label %_RINvXs6_NtNtCs6LlcditsbhK_5serde3ser5implsShNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker.exit

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1L_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRShE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i.i.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #21
          to label %common.resume.i.i unwind label %bb.n, !noalias !107

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !107
  unreachable

_RINvXs6_NtNtCs6LlcditsbhK_5serde3ser5implsShNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.f, %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !83
  br label %bb.o

bb.o:                                             ; preds = %_RINvXs6_NtNtCs6LlcditsbhK_5serde3ser5implsShNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB6_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer25serialize_newtype_variantShECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly captures(address) %7, i64 noundef range(i64 0, -9223372036854775808) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode13write_map_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1)
  %i.g = load i64, ptr %i.f, align 8, !range !71, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.g, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = zext i32 %4 to i64
  call void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.j)
  %i.k = load i64, ptr %i.e, align 8, !range !72, !noundef !5
  %.not1 = icmp eq i64 %i.k, -1
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 %8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !131
  %i.m = trunc i64 %8 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.m), !noalias !138
  %i.n = load i64, ptr %i.b, align 8, !range !71, !noalias !131, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.n, 2
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !131, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131
  %i.q = ptrtoint ptr %i.p to i64
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !139, !noalias !140
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !alias.scope !139, !noalias !140
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !alias.scope !139, !noalias !140
  br label %_RINvXs6_NtNtCs6LlcditsbhK_5serde3ser5implsShNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs7BtpbLEd5q3_9elfshaker.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131
  store i64 -1, ptr %i.d, align 8, !noalias !128
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !128
  %.sroa.712.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %.sroa.712.0..sroa_idx.i.i, align 8, !noalias !128
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !128
  %i.r = icmp samesign eq i64 %8, 0
  br i1 %i.r, label %.loopexit.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1L_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRShE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1L_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRShE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i.i.i: ; preds = %bb.g, %bb.h
  %i.s = phi ptr [ %i.t, %bb.h ], [ %7, %bb.g ]   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !141
  %.val4.us.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !150, !noalias !151
  %i.u = zext i8 %.val4.us.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.u)
          to label %.noexc.i.i unwind label %bb.m, !noalias !152

.noexc.i.i:                                       ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1L_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRShE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i.i.i
  %.pr.us.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !153, !noalias !156 ; 2 uses
  %.not.i.us.i.i.i.i = icmp eq i64 %.pr.us.i.i.i.i, -1
  br i1 %.not.i.us.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  %i.v = icmp eq ptr %i.t, %i.l
  br i1 %i.v, label %.loopexit.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1L_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRShE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i.i.i

bb.i:                                             ; preds = %.noexc.i.i
  %.sroa.7.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.420.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7.i.i.i.i, i64 16, i1 false), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  store i64 %.pr.us.i.i.i.i, ptr %0, align 8, !alias.scope !139, !noalias !140
  %i.w = load i64, ptr %i.d, align 8, !range !17, !alias.scope !158, !noalias !128, !noundef !5
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvXs6_NtNtCs6LlcditsbhK_5serde3ser5implsShNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i unwind label %bb.k, !noalias !152

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %common.resume.i.i unwind label %bb.l, !noalias !152

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !152
  unreachable

common.resume.i.i:                                ; preds = %bb.m, %bb.k
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.y, %bb.k ], [ %lpad.thr_comm.i.i, %bb.m ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %bb.j
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d), !noalias !152
  br label %_RINvXs6_NtNtCs6LlcditsbhK_5serde3ser5implsShNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs7BtpbLEd5q3_9elfshaker.exit

.loopexit.i.i:                                    ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !128
  call fastcc void @_RNvXsh_NtCs974quTetXso_9rmp_serde6encodeINtB5_26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB7_6config13DefaultConfigENtNtCs6LlcditsbhK_5serde3ser12SerializeSeq3endCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.c), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !128
  br label %_RINvXs6_NtNtCs6LlcditsbhK_5serde3ser5implsShNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs7BtpbLEd5q3_9elfshaker.exit

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1L_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRShE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i.i.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #21
          to label %common.resume.i.i unwind label %bb.n, !noalias !152

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !152
  unreachable

_RINvXs6_NtNtCs6LlcditsbhK_5serde3ser5implsShNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.f, %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !128
  br label %bb.o

bb.o:                                             ; preds = %_RINvXs6_NtNtCs6LlcditsbhK_5serde3ser5implsShNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRIBR_NtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load i64, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %.idx = mul nuw nsw i64 %.val6, 12
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !163
  %i.h = trunc i64 %.val6 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.h), !noalias !170
  %i.i = load i64, ptr %i.b, align 8, !range !71, !noalias !163, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !163, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !163
  %i.l = ptrtoint ptr %i.k to i64
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !163
  store i64 -1, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %.sroa.714.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  %i.m = icmp eq i64 %.val6, 0
  br i1 %i.m, label %.loopexit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2w_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRIB3B_B1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2w_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRIB3B_B1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.o, %bb.d ], [ %.val, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171
  invoke void @_RINvXNvNtCskuiImRAV2ip_9elfshaker7packidx1__NtB5_10FileHandleNtNtCs6LlcditsbhK_5serde3ser9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2w_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRIB3B_B1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i
  %.pr.us.i.i = load i64, ptr %i.a, align 8, !alias.scope !180, !noalias !183 ; 2 uses
  %.not.i.us.i.i = icmp eq i64 %.pr.us.i.i, -1
  br i1 %.not.i.us.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %.loopexit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2w_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRIB3B_B1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i

bb.e:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171
  store i64 %.pr.us.i.i, ptr %0, align 8
  %i.q = load i64, ptr %i.d, align 8, !range !17, !alias.scope !185, !noundef !5
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %lpad.thr_comm, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

.loopexit:                                        ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call fastcc void @_RNvXsh_NtCs974quTetXso_9rmp_serde6encodeINtB5_26MaybeUnknownLengthCompoundINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB7_6config13DefaultConfigENtNtCs6LlcditsbhK_5serde3ser12SerializeSeq3endCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2w_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRIB3B_B1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #21
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB10_3vec3VecAhj14_EECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 83 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load i64, ptr %i.g, align 8, !noundef !5 ; 3 uses
  %.idx = mul nuw nsw i64 %.val6, 20
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !190
  %i.i = trunc i64 %.val6 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.i), !noalias !197
  %i.j = load i64, ptr %i.c, align 8, !range !71, !noalias !190, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !190, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !190
  %i.m = ptrtoint ptr %i.l to i64
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %.sroa.558.0..sroa_idx, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !190
  store i64 -1, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 0, ptr %.sroa.755.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.n = icmp eq i64 %.val6, 0
  br i1 %i.n, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterAhj14_ENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB2M_3vec3VecBJ_EE0INtNtBa_6result6ResultuNtB1T_5ErrorEECs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c, %bb.y
  %i.o = phi ptr [ %i.p, %bb.y ], [ %.val, %bb.c ] ; 21 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.q = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !213, !noalias !214, !nonnull !5, !align !6, !noundef !5 ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !225
  invoke void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i32 noundef 20)
          to label %.noexc30 unwind label %bb.ad

.noexc30:                                         ; preds = %.lr.ph.i.i.preheader
  %i.r = load i64, ptr %i.a, align 8, !range !71, !noalias !225, !noundef !5 ; 2 uses
  %.not.i.i.i3.i.i.i.i.i = icmp eq i64 %i.r, 2
  br i1 %.not.i.i.i3.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc30
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !225, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !225
  br label %bb.z

bb.e:                                             ; preds = %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.i.i6.i.i.i.i.i = load i8, ptr %i.o, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.u = zext i8 %.sroa.03.0.ptr.val.i.i6.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.u)
          to label %.noexc31 unwind label %bb.ad

.noexc31:                                         ; preds = %bb.e
  %i.v = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.i.i7.i.i.i.i.i = icmp eq i64 %i.v, -1
  br i1 %.not5.i.i7.i.i.i.i.i, label %bb.f, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.f:                                             ; preds = %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.1.i.i8.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.1.i.i9.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.1.i.i8.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.w = zext i8 %.sroa.03.0.ptr.val.1.i.i9.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.w)
          to label %.noexc32 unwind label %bb.ad

.noexc32:                                         ; preds = %bb.f
  %i.x = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.1.i.i10.i.i.i.i.i = icmp eq i64 %i.x, -1
  br i1 %.not5.1.i.i10.i.i.i.i.i, label %bb.g, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.g:                                             ; preds = %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.2.i.i11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.2.i.i12.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.2.i.i11.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.y = zext i8 %.sroa.03.0.ptr.val.2.i.i12.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.y)
          to label %.noexc33 unwind label %bb.ad

.noexc33:                                         ; preds = %bb.g
  %i.z = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.2.i.i13.i.i.i.i.i = icmp eq i64 %i.z, -1
  br i1 %.not5.2.i.i13.i.i.i.i.i, label %bb.h, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.h:                                             ; preds = %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.3.i.i14.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.3.i.i15.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.3.i.i14.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.aa = zext i8 %.sroa.03.0.ptr.val.3.i.i15.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.aa)
          to label %.noexc34 unwind label %bb.ad

.noexc34:                                         ; preds = %bb.h
  %i.ab = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.3.i.i16.i.i.i.i.i = icmp eq i64 %i.ab, -1
  br i1 %.not5.3.i.i16.i.i.i.i.i, label %bb.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.i:                                             ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.4.i.i17.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.4.i.i18.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.4.i.i17.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.ac = zext i8 %.sroa.03.0.ptr.val.4.i.i18.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.ac)
          to label %.noexc35 unwind label %bb.ad

.noexc35:                                         ; preds = %bb.i
  %i.ad = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.4.i.i19.i.i.i.i.i = icmp eq i64 %i.ad, -1
  br i1 %.not5.4.i.i19.i.i.i.i.i, label %bb.j, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.j:                                             ; preds = %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.5.i.i20.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.5.i.i21.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.5.i.i20.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.ae = zext i8 %.sroa.03.0.ptr.val.5.i.i21.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.ae)
          to label %.noexc36 unwind label %bb.ad

.noexc36:                                         ; preds = %bb.j
  %i.af = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.5.i.i22.i.i.i.i.i = icmp eq i64 %i.af, -1
  br i1 %.not5.5.i.i22.i.i.i.i.i, label %bb.k, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.k:                                             ; preds = %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.6.i.i23.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.6.i.i24.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.6.i.i23.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.ag = zext i8 %.sroa.03.0.ptr.val.6.i.i24.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.ag)
          to label %.noexc37 unwind label %bb.ad

.noexc37:                                         ; preds = %bb.k
  %i.ah = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.6.i.i25.i.i.i.i.i = icmp eq i64 %i.ah, -1
  br i1 %.not5.6.i.i25.i.i.i.i.i, label %bb.l, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.l:                                             ; preds = %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.7.i.i26.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.7.i.i27.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.7.i.i26.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.ai = zext i8 %.sroa.03.0.ptr.val.7.i.i27.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.ai)
          to label %.noexc38 unwind label %bb.ad

.noexc38:                                         ; preds = %bb.l
  %i.aj = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.7.i.i28.i.i.i.i.i = icmp eq i64 %i.aj, -1
  br i1 %.not5.7.i.i28.i.i.i.i.i, label %bb.m, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.m:                                             ; preds = %.noexc38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.8.i.i29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.8.i.i30.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.8.i.i29.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.ak = zext i8 %.sroa.03.0.ptr.val.8.i.i30.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.ak)
          to label %.noexc39 unwind label %bb.ad

.noexc39:                                         ; preds = %bb.m
  %i.al = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.8.i.i31.i.i.i.i.i = icmp eq i64 %i.al, -1
  br i1 %.not5.8.i.i31.i.i.i.i.i, label %bb.n, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.n:                                             ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.9.i.i32.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.9.i.i33.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.9.i.i32.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.am = zext i8 %.sroa.03.0.ptr.val.9.i.i33.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.am)
          to label %.noexc40 unwind label %bb.ad

.noexc40:                                         ; preds = %bb.n
  %i.an = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.9.i.i34.i.i.i.i.i = icmp eq i64 %i.an, -1
  br i1 %.not5.9.i.i34.i.i.i.i.i, label %bb.o, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.o:                                             ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.10.i.i35.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.10.i.i36.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.10.i.i35.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.ao = zext i8 %.sroa.03.0.ptr.val.10.i.i36.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.ao)
          to label %.noexc41 unwind label %bb.ad

.noexc41:                                         ; preds = %bb.o
  %i.ap = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.10.i.i37.i.i.i.i.i = icmp eq i64 %i.ap, -1
  br i1 %.not5.10.i.i37.i.i.i.i.i, label %bb.p, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.p:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.11.i.i38.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.11.i.i39.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.11.i.i38.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.aq = zext i8 %.sroa.03.0.ptr.val.11.i.i39.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.aq)
          to label %.noexc42 unwind label %bb.ad

.noexc42:                                         ; preds = %bb.p
  %i.ar = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.11.i.i40.i.i.i.i.i = icmp eq i64 %i.ar, -1
  br i1 %.not5.11.i.i40.i.i.i.i.i, label %bb.q, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.q:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.12.i.i41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.12.i.i42.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.12.i.i41.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.as = zext i8 %.sroa.03.0.ptr.val.12.i.i42.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.as)
          to label %.noexc43 unwind label %bb.ad

.noexc43:                                         ; preds = %bb.q
  %i.at = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.12.i.i43.i.i.i.i.i = icmp eq i64 %i.at, -1
  br i1 %.not5.12.i.i43.i.i.i.i.i, label %bb.r, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.r:                                             ; preds = %.noexc43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.13.i.i44.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.13.i.i45.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.13.i.i44.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.au = zext i8 %.sroa.03.0.ptr.val.13.i.i45.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.au)
          to label %.noexc44 unwind label %bb.ad

.noexc44:                                         ; preds = %bb.r
  %i.av = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.13.i.i46.i.i.i.i.i = icmp eq i64 %i.av, -1
  br i1 %.not5.13.i.i46.i.i.i.i.i, label %bb.s, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.s:                                             ; preds = %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.14.i.i47.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.14.i.i48.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.14.i.i47.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.aw = zext i8 %.sroa.03.0.ptr.val.14.i.i48.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.aw)
          to label %.noexc45 unwind label %bb.ad

.noexc45:                                         ; preds = %bb.s
  %i.ax = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.14.i.i49.i.i.i.i.i = icmp eq i64 %i.ax, -1
  br i1 %.not5.14.i.i49.i.i.i.i.i, label %bb.t, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.t:                                             ; preds = %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.15.i.i50.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.15.i.i51.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.15.i.i50.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.ay = zext i8 %.sroa.03.0.ptr.val.15.i.i51.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.ay)
          to label %.noexc46 unwind label %bb.ad

.noexc46:                                         ; preds = %bb.t
  %i.az = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.15.i.i52.i.i.i.i.i = icmp eq i64 %i.az, -1
  br i1 %.not5.15.i.i52.i.i.i.i.i, label %bb.u, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.u:                                             ; preds = %.noexc46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.16.i.i53.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.16.i.i54.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.16.i.i53.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.ba = zext i8 %.sroa.03.0.ptr.val.16.i.i54.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.ba)
          to label %.noexc47 unwind label %bb.ad

.noexc47:                                         ; preds = %bb.u
  %i.bb = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.16.i.i55.i.i.i.i.i = icmp eq i64 %i.bb, -1
  br i1 %.not5.16.i.i55.i.i.i.i.i, label %bb.v, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.v:                                             ; preds = %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.17.i.i56.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.17.i.i57.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.17.i.i56.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.bc = zext i8 %.sroa.03.0.ptr.val.17.i.i57.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.bc)
          to label %.noexc48 unwind label %bb.ad

.noexc48:                                         ; preds = %bb.v
  %i.bd = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.17.i.i58.i.i.i.i.i = icmp eq i64 %i.bd, -1
  br i1 %.not5.17.i.i58.i.i.i.i.i, label %bb.w, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.w:                                             ; preds = %.noexc48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.18.i.i59.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.18.i.i60.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.18.i.i59.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.be = zext i8 %.sroa.03.0.ptr.val.18.i.i60.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.be)
          to label %.noexc49 unwind label %bb.ad

.noexc49:                                         ; preds = %bb.w
  %i.bf = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.18.i.i61.i.i.i.i.i = icmp eq i64 %i.bf, -1
  br i1 %.not5.18.i.i61.i.i.i.i.i, label %bb.x, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.x:                                             ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.19.i.i62.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  %.sroa.03.0.ptr.val.19.i.i63.i.i.i.i.i = load i8, ptr %.sroa.03.0.ptr.19.i.i62.i.i.i.i.i, align 1, !alias.scope !235, !noalias !236, !noundef !5
  %i.bg = zext i8 %.sroa.03.0.ptr.val.19.i.i63.i.i.i.i.i to i64
  invoke void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.bg)
          to label %.noexc50 unwind label %bb.ad

.noexc50:                                         ; preds = %bb.x
  %i.bh = load i64, ptr %i.b, align 8, !noalias !237 ; 2 uses
  %.not5.19.i.i64.i.i.i.i.i = icmp eq i64 %i.bh, -1
  br i1 %.not5.19.i.i64.i.i.i.i.i, label %bb.y, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %.noexc50, %.noexc49, %.noexc48, %.noexc47, %.noexc46, %.noexc45, %.noexc44, %.noexc43, %.noexc42, %.noexc41, %.noexc40, %.noexc39, %.noexc38, %.noexc37, %.noexc36, %.noexc35, %.noexc34, %.noexc33, %.noexc32, %.noexc31
  %.sroa.07.0.copyload.i.i = phi i64 [ %i.v, %.noexc31 ], [ %i.x, %.noexc32 ], [ %i.z, %.noexc33 ], [ %i.ab, %.noexc34 ], [ %i.ad, %.noexc35 ], [ %i.af, %.noexc36 ], [ %i.ah, %.noexc37 ], [ %i.aj, %.noexc38 ], [ %i.al, %.noexc39 ], [ %i.an, %.noexc40 ], [ %i.ap, %.noexc41 ], [ %i.ar, %.noexc42 ], [ %i.at, %.noexc43 ], [ %i.av, %.noexc44 ], [ %i.ax, %.noexc45 ], [ %i.az, %.noexc46 ], [ %i.bb, %.noexc47 ], [ %i.bd, %.noexc48 ], [ %i.bf, %.noexc49 ], [ %i.bh, %.noexc50 ]
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !237
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  br label %bb.z

bb.y:                                             ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  %i.bi = icmp eq ptr %i.p, %i.h
  br i1 %i.bi, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterAhj14_ENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB2M_3vec3VecBJ_EE0INtNtBa_6result6ResultuNtB1T_5ErrorEECs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph.i.i.preheader

bb.z:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i, %bb.d
  %.sroa.059.0.ph = phi i64 [ -9223372036854775808, %bb.d ], [ %.sroa.07.0.copyload.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i ]
  %.sroa.760.0.ph = phi i64 [ %i.r, %bb.d ], [ %.sroa.9.0.copyload.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i ]
  %.sroa.861.0.ph = phi ptr [ %i.t, %bb.d ], [ %.sroa.12.0.copyload.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRAhj14_INtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB1Q_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB34_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i ]
  store i64 %.sroa.059.0.ph, ptr %0, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.760.0.ph, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.861.0.ph, ptr %.sroa.564.0..sroa_idx, align 8
  %i.bj = load i64, ptr %i.e, align 8, !range !17, !alias.scope !238, !noundef !5
  %i.bk = icmp eq i64 %i.bj, -1
  br i1 %i.bk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.ab ], [ %lpad.thr_comm, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.aa
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterAhj14_ENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB2M_3vec3VecBJ_EE0INtNtBa_6result6ResultuNtB1T_5ErrorEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.y, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call fastcc void @_RNvXsh_NtCs974quTetXso_9rmp_serde6encodeINtB5_26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB7_6config13DefaultConfigENtNtCs6LlcditsbhK_5serde3ser12SerializeSeq3endCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %bb.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterAhj14_ENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB2M_3vec3VecBJ_EE0INtNtBa_6result6ResultuNtB1T_5ErrorEECs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ad:                                            ; preds = %bb.x, %.lr.ph.i.i.preheader, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #21
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB10_3vec3VecINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB3y_10FileHandleEEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load i64, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %.idx = mul nuw nsw i64 %.val6, 48
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !243
  %i.h = trunc i64 %.val6 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.h), !noalias !250
  %i.i = load i64, ptr %i.b, align 8, !range !71, !noalias !243, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !243, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !243
  %i.l = ptrtoint ptr %i.k to i64
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !243
  store i64 -1, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %.sroa.714.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  %i.m = icmp eq i64 %.val6, 0
  br i1 %i.m, label %.loopexit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1o_10FileHandleEINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2O_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB42_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1o_10FileHandleEINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2O_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB42_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.o, %bb.d ], [ %.val, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !251
  invoke void @_RINvXNvNtCskuiImRAV2ip_9elfshaker7packidxs2_1__INtB5_9ChangeSetNtB5_10FileHandleENtNtCs6LlcditsbhK_5serde3ser9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1o_10FileHandleEINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2O_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB42_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i
  %.pr.us.i.i = load i64, ptr %i.a, align 8, !alias.scope !260, !noalias !263 ; 2 uses
  %.not.i.us.i.i = icmp eq i64 %.pr.us.i.i, -1
  br i1 %.not.i.us.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !251
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %.loopexit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1o_10FileHandleEINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2O_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB42_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i

bb.e:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !251
  store i64 %.pr.us.i.i, ptr %0, align 8
  %i.q = load i64, ptr %i.d, align 8, !range !17, !alias.scope !265, !noundef !5
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %lpad.thr_comm, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

.loopexit:                                        ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call fastcc void @_RNvXsh_NtCs974quTetXso_9rmp_serde6encodeINtB5_26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB7_6config13DefaultConfigENtNtCs6LlcditsbhK_5serde3ser12SerializeSeq3endCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB1o_10FileHandleEINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2O_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB42_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #21
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB10_3vec3VecNtNtB10_6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 7 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 7 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load i64, ptr %i.j, align 8, !noundef !5 ; 3 uses
  %.idx = mul nuw nsw i64 %.val6, 24
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !270
  %i.l = trunc i64 %.val6 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.l), !noalias !277
  %i.m = load i64, ptr %i.f, align 8, !range !71, !noalias !270, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !270, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !270
  %i.p = ptrtoint ptr %i.o to i64
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.536.0..sroa_idx, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !270
  store i64 -1, ptr %i.h, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 0, ptr %.sroa.733.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.q = icmp eq i64 %.val6, 0
  br i1 %i.q, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtBN_2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtBN_3vec3VecBJ_EE0INtNtBa_6result6ResultuNtB2p_5ErrorEECs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c, %bb.i
  %i.r = phi ptr [ %i.s, %bb.i ], [ %.val, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %.val4.i.i = load ptr, ptr %i.t, align 8, !noalias !284, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 16
  %.val5.i.i = load i64, ptr %i.u, align 8, !noalias !284 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.v = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !292, !noalias !293, !nonnull !5, !align !6, !noundef !5 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.w = trunc i64 %.val5.i.i to i32              ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.x = icmp ult i32 %i.w, 32
  br i1 %i.x, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.preheader
  %i.y = icmp ult i32 %i.w, 256
  br i1 %i.y, label %.thread.i.i.i.i.i12.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp ult i32 %i.w, 65536
  br i1 %i.z, label %bb.f, label %spec.select.i.i.i.i.i5.i.i.i.i.si.unfold.false.jt219.i

spec.select.i.i.i.i.i5.i.i.i.i.si.unfold.false.jt219.i: ; preds = %bb.e
  %i.aa = invoke noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v, i8 noundef -37, i8 undef)
          to label %.noexc18 unwind label %bb.n   ; 2 uses

.noexc18:                                         ; preds = %spec.select.i.i.i.i.i5.i.i.i.i.si.unfold.false.jt219.i
  %.not.i.i.i.i.i7.i.i.i.i.jt219.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i7.i.i.i.i.jt219.i, label %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit32.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ab = invoke noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v, i8 noundef -38, i8 undef)
          to label %.noexc19 unwind label %bb.n   ; 2 uses

.noexc19:                                         ; preds = %bb.f
  %.not.i.i.i.i.i7.i.i.i.i.jt218.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i7.i.i.i.i.jt218.i, label %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit30.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.g:                                             ; preds = %.lr.ph.i.i.preheader
  %i.ac = trunc i64 %.val5.i.i to i8
  %i.ad = invoke noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v, i8 noundef -96, i8 %i.ac)
          to label %.noexc20 unwind label %bb.n   ; 2 uses

.noexc20:                                         ; preds = %bb.g
  %.not.i.i.i.i.i7.i.i.i.i.jt160.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i7.i.i.i.i.jt160.i, label %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i11.i.i.i.i.jt160.i, label %bb.j

.thread.i.i.i.i.i12.i.i.i.i.i:                    ; preds = %bb.d
  %i.ae = invoke noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v, i8 noundef -39, i8 undef)
          to label %.noexc21 unwind label %bb.n   ; 2 uses

.noexc21:                                         ; preds = %.thread.i.i.i.i.i12.i.i.i.i.i
  %.not40.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not40.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.noexc21
  %i.af = trunc i64 %.val5.i.i to i8              ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !315, !noalias !316, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !323
  store i8 %i.af, ptr %i.e, align 1, !noalias !323
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.ag = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i, align 8, !range !327, !alias.scope !324, !noalias !328, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !324, !noalias !328, !noundef !5 ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %i.ak = sub nsw i64 %i.ag, %i.ai
  %i.al = icmp ugt i64 %i.ak, 1
  br i1 %i.al, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i.i, !prof !334

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !338, !noalias !339, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai
  store i8 %i.af, ptr %i.ao, align 1, !noalias !341
  %i.ap = add nuw i64 %i.ai, 1
  store i64 %i.ap, ptr %i.ah, align 8, !alias.scope !338, !noalias !339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !323
  br label %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i11.i.i.i.i.jt160.i

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.aq = invoke noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef range(i64 0, -9223372036854775808) 1) #22
          to label %.noexc22 unwind label %bb.n   ; 2 uses

.noexc22:                                         ; preds = %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !323
  %.not12.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i11.i.i.i.i.jt160.i, label %bb.j

_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit30.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc19
  %i.ar = trunc i64 %.val5.i.i to i16
  %.val15.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !315, !noalias !316 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !323
  store i16 0, ptr %i.d, align 2, !noalias !323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !342
  %i.as = call i16 @llvm.bswap.i16(i16 %i.ar)
  store i16 %i.as, ptr %i.c, align 2, !noalias !342
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.d, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %.noexc23 unwind label %bb.n

.noexc23:                                         ; preds = %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit30.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !342
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.at = load i64, ptr %.val15.i.i.i.i.i.i.i.i.i.i, align 8, !range !327, !alias.scope !345, !noalias !348, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %.val15.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !345, !noalias !348, !noundef !5 ; 4 uses
  %i.aw = icmp sgt i64 %i.av, -1
  call void @llvm.assume(i1 %i.aw)
  %i.ax = sub nsw i64 %i.at, %i.av
  %i.ay = icmp ugt i64 %i.ax, 2
  br i1 %i.ay, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i.i, !prof !334

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc23
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.az = getelementptr inbounds nuw i8, ptr %.val15.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !357, !noalias !358, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.av
  %i.bc = load i16, ptr %i.d, align 2, !noalias !360
  store i16 %i.bc, ptr %i.bb, align 1, !noalias !361
  %i.bd = add nuw i64 %i.av, 2
  store i64 %i.bd, ptr %i.au, align 8, !alias.scope !357, !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !323
  br label %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i11.i.i.i.i.jt160.i

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc23
  %i.be = invoke noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val15.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) 2) #22
          to label %.noexc24 unwind label %bb.n   ; 2 uses

.noexc24:                                         ; preds = %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !323
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i11.i.i.i.i.jt160.i, label %bb.j

_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit32.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc18
  %.val16.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !315, !noalias !316 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !323
  store i32 0, ptr %i.b, align 4, !noalias !323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !362
  %i.bf = call i32 @llvm.bswap.i32(i32 %i.w)
  store i32 %i.bf, ptr %i.a, align 4, !noalias !362
  invoke void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %.noexc25 unwind label %bb.n

.noexc25:                                         ; preds = %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit32.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !362
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.bg = load i64, ptr %.val16.i.i.i.i.i.i.i.i.i.i, align 8, !range !327, !alias.scope !365, !noalias !368, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !365, !noalias !368, !noundef !5 ; 4 uses
  %i.bj = icmp sgt i64 %i.bi, -1
  call void @llvm.assume(i1 %i.bj)
  %i.bk = sub nsw i64 %i.bg, %i.bi
  %i.bl = icmp ugt i64 %i.bk, 4
  br i1 %i.bl, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i.i, !prof !334

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc25
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.bm = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !377, !noalias !378, !nonnull !5, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bi
  %i.bp = load i32, ptr %i.b, align 4, !noalias !380
  store i32 %i.bp, ptr %i.bo, align 1, !noalias !381
  %i.bq = add nuw i64 %i.bi, 4
  store i64 %i.bq, ptr %i.bh, align 8, !alias.scope !377, !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !323
  br label %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i11.i.i.i.i.jt160.i

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc25
  %i.br = invoke noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val16.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 4) #22
          to label %.noexc26 unwind label %bb.n   ; 2 uses

.noexc26:                                         ; preds = %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !323
  %.not14.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not14.i.i.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i11.i.i.i.i.jt160.i, label %bb.j

_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i11.i.i.i.i.jt160.i: ; preds = %.noexc26, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i.i.i.i.i.i.i.i.i, %.noexc24, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i.i.i.i.i.i.i.i.i, %.noexc22, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i.i.i.i.i.i.i.i.i, %.noexc20
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !382, !noalias !383, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.bs = load i64, ptr %.val.i.i.i.i.i.i.i.i.i, align 8, !range !327, !alias.scope !384, !noalias !387, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !384, !noalias !387, !noundef !5 ; 4 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  call void @llvm.assume(i1 %i.bv)
  %i.bw = sub nsw i64 %i.bs, %i.bu
  %i.bx = icmp ult i64 %.val5.i.i, %i.bw
  br i1 %i.bx, label %_RNvXs2_NtCsdxnJubla0R8_3rmp6encodeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_8RmpWrite11write_bytesCs7BtpbLEd5q3_9elfshaker.exit.i.thread.i.i.i.i.i.i.i.i, label %_RNvXs2_NtCsdxnJubla0R8_3rmp6encodeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_8RmpWrite11write_bytesCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i, !prof !334

_RNvXs2_NtCsdxnJubla0R8_3rmp6encodeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_8RmpWrite11write_bytesCs7BtpbLEd5q3_9elfshaker.exit.i.thread.i.i.i.i.i.i.i.i: ; preds = %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i11.i.i.i.i.jt160.i
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !396, !noalias !397, !nonnull !5, !noundef !5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull readonly align 1 %.val4.i.i, i64 range(i64 0, -9223372036854775808) %.val5.i.i, i1 false), !noalias !399
  %i.cb = add nuw i64 %i.bu, %.val5.i.i
  store i64 %i.cb, ptr %i.bt, align 8, !alias.scope !396, !noalias !397
  br label %bb.i

_RNvXs2_NtCsdxnJubla0R8_3rmp6encodeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_8RmpWrite11write_bytesCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i.i.i11.i.i.i.i.jt160.i
  %i.cc = invoke noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val4.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val5.i.i) #22
          to label %.noexc27 unwind label %bb.n   ; 2 uses

.noexc27:                                         ; preds = %_RNvXs2_NtCsdxnJubla0R8_3rmp6encodeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_8RmpWrite11write_bytesCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc27, %_RNvXs2_NtCsdxnJubla0R8_3rmp6encodeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_8RmpWrite11write_bytesCs7BtpbLEd5q3_9elfshaker.exit.i.thread.i.i.i.i.i.i.i.i
  %i.cd = icmp eq ptr %i.s, %i.k
  br i1 %i.cd, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtBN_2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtBN_3vec3VecBJ_EE0INtNtBa_6result6ResultuNtB2p_5ErrorEECs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph.i.i.preheader

bb.j:                                             ; preds = %.noexc27, %.noexc26, %.noexc24, %.noexc22, %.noexc21, %.noexc20, %.noexc19, %.noexc18
  %.sroa.738.0.ph = phi i64 [ 0, %.noexc18 ], [ 0, %.noexc19 ], [ 0, %.noexc20 ], [ 1, %.noexc27 ], [ 1, %.noexc22 ], [ 1, %.noexc24 ], [ 0, %.noexc21 ], [ 1, %.noexc26 ]
  %.sroa.839.0.ph = phi ptr [ %i.aa, %.noexc18 ], [ %i.ab, %.noexc19 ], [ %i.ad, %.noexc20 ], [ %i.cc, %.noexc27 ], [ %i.aq, %.noexc22 ], [ %i.be, %.noexc24 ], [ %i.ae, %.noexc21 ], [ %i.br, %.noexc26 ]
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.738.0.ph, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.839.0.ph, ptr %.sroa.542.0..sroa_idx, align 8
  %i.ce = load i64, ptr %i.h, align 8, !range !17, !alias.scope !400, !noundef !5
  %i.cf = icmp eq i64 %i.ce, -1
  br i1 %i.cf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.l ], [ %lpad.thr_comm, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.k
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtBN_2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtBN_3vec3VecBJ_EE0INtNtBa_6result6ResultuNtB2p_5ErrorEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call fastcc void @_RNvXsh_NtCs974quTetXso_9rmp_serde6encodeINtB5_26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB7_6config13DefaultConfigENtNtCs6LlcditsbhK_5serde3ser12SerializeSeq3endCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtBN_2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtBN_3vec3VecBJ_EE0INtNtBa_6result6ResultuNtB2p_5ErrorEECs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.n:                                             ; preds = %spec.select.i.i.i.i.i5.i.i.i.i.si.unfold.false.jt219.i, %bb.f, %bb.g, %.thread.i.i.i.i.i12.i.i.i.i.i, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit30.i.i.i.i.i.i.i.i.i.i, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXs6_NtCsdxnJubla0R8_3rmp6markerNtB5_6MarkerNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit32.i.i.i.i.i.i.i.i.i.i, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXs2_NtCsdxnJubla0R8_3rmp6encodeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB5_8RmpWrite11write_bytesCs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i.i.i.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #21
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB10_3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load i64, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %.idx = mul nuw nsw i64 %.val6, 12
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !405
  %i.h = trunc i64 %.val6 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.h), !noalias !412
  %i.i = load i64, ptr %i.b, align 8, !range !71, !noalias !405, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !405, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !405
  %i.l = ptrtoint ptr %i.k to i64
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !405
  store i64 -1, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %.sroa.714.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  %i.m = icmp eq i64 %.val6, 0
  br i1 %i.m, label %.loopexit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2w_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3K_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2w_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3K_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.o, %bb.d ], [ %.val, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !413
  invoke void @_RINvXNvNtCskuiImRAV2ip_9elfshaker7packidx1__NtB5_10FileHandleNtNtCs6LlcditsbhK_5serde3ser9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2w_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3K_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i
  %.pr.us.i.i = load i64, ptr %i.a, align 8, !alias.scope !422, !noalias !425 ; 2 uses
  %.not.i.us.i.i = icmp eq i64 %.pr.us.i.i, -1
  br i1 %.not.i.us.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %.loopexit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2w_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3K_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i

bb.e:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  store i64 %.pr.us.i.i, ptr %0, align 8
  %i.q = load i64, ptr %i.d, align 8, !range !17, !alias.scope !427, !noundef !5
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %lpad.thr_comm, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

.loopexit:                                        ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call fastcc void @_RNvXsh_NtCs974quTetXso_9rmp_serde6encodeINtB5_26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB7_6config13DefaultConfigENtNtCs6LlcditsbhK_5serde3ser12SerializeSeq3endCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2w_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3K_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #21
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB10_3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load i64, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %.idx = shl nuw nsw i64 %.val6, 4
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !432
  %i.h = trunc i64 %.val6 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.h), !noalias !439
  %i.i = load i64, ptr %i.b, align 8, !range !71, !noalias !432, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !432, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !432
  %i.l = ptrtoint ptr %i.k to i64
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !432
  store i64 -1, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %.sroa.714.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  %i.m = icmp eq i64 %.val6, 0
  br i1 %i.m, label %.loopexit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2A_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3O_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2A_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3O_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.o, %bb.d ], [ %.val, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !440
  invoke void @_RINvXNvNtCskuiImRAV2ip_9elfshaker7packidxs6_1__NtB5_14ObjectMetadataNtNtCs6LlcditsbhK_5serde3ser9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2A_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3O_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i
  %.pr.us.i.i = load i64, ptr %i.a, align 8, !alias.scope !449, !noalias !452 ; 2 uses
  %.not.i.us.i.i = icmp eq i64 %.pr.us.i.i, -1
  br i1 %.not.i.us.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !440
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %.loopexit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2A_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3O_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i

bb.e:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !440
  store i64 %.pr.us.i.i, ptr %0, align 8
  %i.q = load i64, ptr %i.d, align 8, !range !17, !alias.scope !454, !noundef !5
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %lpad.thr_comm, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

.loopexit:                                        ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call fastcc void @_RNvXsh_NtCs974quTetXso_9rmp_serde6encodeINtB5_26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB7_6config13DefaultConfigENtNtCs6LlcditsbhK_5serde3ser12SerializeSeq3endCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2A_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3O_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #21
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB10_3vec3VecNtNtNtB1U_3ffi6os_str8OsStringEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load i64, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %.idx = mul nuw nsw i64 %.val6, 24
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !459
  %i.h = trunc i64 %.val6 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.h), !noalias !466
  %i.i = load i64, ptr %i.b, align 8, !range !71, !noalias !459, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !459, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !459
  %i.l = ptrtoint ptr %i.k to i64
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !459
  store i64 -1, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %.sroa.714.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8
  %i.m = icmp eq i64 %.val6, 0
  br i1 %i.m, label %.loopexit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2s_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtB1r_2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3G_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2s_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtB1r_2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3G_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.o, %bb.d ], [ %.val, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !467
  invoke void @_RINvXsw_NtNtCs6LlcditsbhK_5serde3ser5implsNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtBK_2fs4FileEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2s_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtB1r_2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3G_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i
  %.pr.us.i.i = load i64, ptr %i.a, align 8, !alias.scope !476, !noalias !479 ; 2 uses
  %.not.i.us.i.i = icmp eq i64 %.pr.us.i.i, -1
  br i1 %.not.i.us.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !467
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %.loopexit, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2s_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtB1r_2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3G_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i

bb.e:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !467
  store i64 %.pr.us.i.i, ptr %0, align 8
  %i.q = load i64, ptr %i.d, align 8, !range !17, !alias.scope !481, !noundef !5
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %lpad.thr_comm, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

.loopexit:                                        ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call fastcc void @_RNvXsh_NtCs974quTetXso_9rmp_serde6encodeINtB5_26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB7_6config13DefaultConfigENtNtCs6LlcditsbhK_5serde3ser12SerializeSeq3endCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode21UnknownLengthCompoundNtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtBe_6result6ResultuNtNtCs974quTetXso_9rmp_serde6encode5ErrorENCINvYQINtB2s_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtB1r_2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer11collect_seqRINtNtB3G_3vec3VecB1l_EE0E0Cs7BtpbLEd5q3_9elfshaker.exit.us.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtBG_6config13DefaultConfigEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #21
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: noreturn nonlazybind uwtable
define hidden void @_RNvMNtCskfBPnJUU6aB_12clap_builder5errorNtB2_5Error4exitCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_RNvMNtCskfBPnJUU6aB_12clap_builder5errorNtB2_5Error5printCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 221
  %i.d = load i8, ptr %i.c, align 1, !range !486, !noundef !5
  %i.e = and i8 %i.d, 29
  %switch.selectcmp = icmp eq i8 %i.e, 12
  %i.f = select i1 %switch.selectcmp, i32 0, i32 2
  tail call void @_RNvNtCsaL1QbXo9JQH_3std7process4exit(i32 noundef %i.f) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtCskfBPnJUU6aB_12clap_builder5errorNtB2_5Error5printCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !487, !noalias !490, !nonnull !5, !noundef !5 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !range !71, !noalias !492, !noundef !5
  %.not.i = icmp eq i64 %i.g, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  call void @_RNvMs4_NtCskfBPnJUU6aB_12clap_builder5errorNtB5_7Message9formatted(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(98) %i.h), !noalias !487
  br label %_RNvMNtCskfBPnJUU6aB_12clap_builder5errorNtB2_5Error9formattedCs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs_NtNtCskfBPnJUU6aB_12clap_builder5error6formatNtB4_13RichFormatterNtB4_14ErrorFormatter12format_error(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  br label %_RNvMNtCskfBPnJUU6aB_12clap_builder5errorNtB2_5Error9formattedCs7BtpbLEd5q3_9elfshaker.exit

_RNvMNtCskfBPnJUU6aB_12clap_builder5errorNtB2_5Error9formattedCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 221
  %i.j = load i8, ptr %i.i, align 1, !range !486, !noundef !5 ; 2 uses
  %i.k = and i8 %i.j, 30
  %switch = icmp eq i8 %i.k, 12
  %.sroa.0.0.in.v = select i1 %switch, i64 220, i64 219
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.in.v
  %.sroa.0.0 = load i8, ptr %.sroa.0.0.in, align 1, !range !493, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = and i8 %i.j, 29
  %switch.selectcmp = icmp ne i8 %i.l, 12
  %i.m = zext i1 %switch.selectcmp to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  store i8 %.sroa.0.0, ptr %i.o, align 1
  store i64 0, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = load i64, ptr %i.e, align 8, !range !17, !noundef !5
  %.not = icmp eq i64 %i.p, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCskfBPnJUU6aB_12clap_builder5errorNtB2_5Error9formattedCs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %_RNvMNtCskfBPnJUU6aB_12clap_builder5errorNtB2_5Error9formattedCs7BtpbLEd5q3_9elfshaker.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @_RNvMNtNtCskfBPnJUU6aB_12clap_builder6output3fmtNtB2_9Colorizer12with_content(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = invoke noundef ptr @_RNvMs_NtNtCskfBPnJUU6aB_12clap_builder6output3fmtNtB4_9Colorizer5print(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder6output3fmt9ColorizerECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #21
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder6output3fmt9ColorizerECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.t, %bb.h ], [ %i.x, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder6output3fmt9ColorizerECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.s

bb.l:                                             ; preds = %bb.m, %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.m:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder6output3fmt9ColorizerECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #21
          to label %common.resume unwind label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator9size_hintCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %.val = load i64, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.a, i64 32
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.d = icmp eq i64 %.val1, 0
  br i1 %i.d, label %bb.b, label %_RNvXs1y_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs7BtpbLEd5q3_9elfshaker.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18, !noalias !494
  unreachable

_RNvXs1y_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a
  %i.e = udiv i64 %.val, %.val1                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !494
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !494
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !494
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator9size_hintCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 2                   ; 2 uses
  store i64 %i.f, ptr %0, align 8, !alias.scope !497
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !497
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8, !alias.scope !497
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRAhj14_NtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core5arrayAhj14_NtNtB7_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRAhj4_NtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core5arrayAhj4_NtNtB7_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs974quTetXso_9rmp_serde6encode5ErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.e = load i64, ptr %i.d, align 8, !range !503, !alias.scope !500, !noalias !504, !noundef !5 ; 2 uses
  %i.f = xor i64 %i.e, -9223372036854775808
  %i.g = icmp slt i64 %i.e, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 4
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !506
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.c, align 8, !noalias !506
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 17, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !506
  br label %_RNvXsp_NtCs974quTetXso_9rmp_serde6encodeNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 13), !noalias !500
  br label %_RNvXsp_NtCs974quTetXso_9rmp_serde6encodeNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !506
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.l, ptr %i.b, align 8, !noalias !506
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !506
  br label %_RNvXsp_NtCs974quTetXso_9rmp_serde6encodeNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 18), !noalias !500
  br label %_RNvXsp_NtCs974quTetXso_9rmp_serde6encodeNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !506
  store ptr %i.d, ptr %i.a, align 8, !noalias !506
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !506
  br label %_RNvXsp_NtCs974quTetXso_9rmp_serde6encodeNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXsp_NtCs974quTetXso_9rmp_serde6encodeNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ], [ %i.o, %bb.g ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRReNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRaNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker:bb.a

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core3fmt3numaNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsO_NtNtCs3oUPovFnLWP_4core3fmt3numaNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsO_NtNtCs3oUPovFnLWP_4core3fmt3numaNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsh_NtNtCs3oUPovFnLWP_4core3fmt3numaNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsO_NtNtCs3oUPovFnLWP_4core3fmt3numaNtB7_5Debug3fmt.exit

_RNvXsO_NtNtCs3oUPovFnLWP_4core3fmt3numaNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRhNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !512, !noalias !515, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !517, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !518, !noalias !521, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsu_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsw_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_5Debug3fmt.exit

_RNvXsW_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRuNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRlNtB6_7Display3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !517, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs1y_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = mul i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.b, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsh_NtCs974quTetXso_9rmp_serde6encodeINtB5_26MaybeUnknownLengthCompoundINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB7_6config13DefaultConfigENtNtCs6LlcditsbhK_5serde3ser12SerializeSeq3endCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = load i64, ptr %1, align 8, !range !17, !noundef !5
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load i32, ptr %i.g, align 8, !noundef !5
  invoke void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef %i.h)
          to label %bb.d unwind label %bb.n

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !range !71, !noundef !5 ; 2 uses
  %.not9 = icmp eq i64 %i.i, 2
  br i1 %.not9, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  invoke void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.m)
          to label %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #21
          to label %common.resume unwind label %bb.i

_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.g

bb.g:                                             ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.i:                                             ; preds = %bb.n, %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.f, %bb.g, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.n, %bb.f ], [ %i.v, %bb.n ], [ %i.o, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.c
  ret void

bb.n:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #21
          to label %common.resume unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsh_NtCs974quTetXso_9rmp_serde6encodeINtB5_26MaybeUnknownLengthCompoundQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB7_6config13DefaultConfigENtNtCs6LlcditsbhK_5serde3ser12SerializeSeq3endCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = load i64, ptr %1, align 8, !range !17, !noundef !5
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load i32, ptr %i.g, align 8, !noundef !5
  invoke void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.h)
          to label %bb.d unwind label %bb.t

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !range !71, !noundef !5 ; 2 uses
  %.not9 = icmp eq i64 %i.i, 2
  br i1 %.not9, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 4 uses
  %.val = load ptr, ptr %i.f, align 8, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.n = load i64, ptr %.val, align 8, !range !327, !alias.scope !523, !noalias !526, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !523, !noalias !526, !noundef !5 ; 4 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = sub nsw i64 %i.n, %i.p
  %i.s = icmp ult i64 %i.m, %i.r
  br i1 %i.s, label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit.thread, label %bb.f, !prof !334

bb.f:                                             ; preds = %bb.e
  %i.t = invoke noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.m) #22
          to label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.g ; 2 uses

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit.thread: ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !533, !noalias !534, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.k, i64 range(i64 0, -9223372036854775808) %i.m, i1 false), !noalias !533
  %i.x = add nuw i64 %i.p, %i.m
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !533, !noalias !534
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #21
          to label %common.resume unwind label %bb.o

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.f
  %.not10 = icmp eq ptr %i.t, null
  br i1 %.not10, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit.thread, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.k:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCs7BtpbLEd5q3_9elfshaker.exit
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %.sroa.521.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit18 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit18: ; preds = %bb.k
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.o:                                             ; preds = %bb.t, %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.p:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.g, %bb.i, %bb.l, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.q ], [ %i.z, %bb.i ], [ %lpad.thr_comm.split-lp, %bb.t ], [ %i.ab, %bb.l ], [ %i.y, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.p
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  br label %bb.n

bb.s:                                             ; preds = %bb.n, %bb.c
  ret void

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #21
          to label %common.resume unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u32Cs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  tail call void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [2 x i8], align 2                 ; 4 uses
  %i.f = alloca [2 x i8], align 2                 ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = icmp ult i64 %2, 256
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %2, 65536
  br i1 %i.i, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = trunc nuw i64 %2 to i8                   ; 3 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef -52, i8 undef), !noalias !536 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !541
  store i8 %i.j, ptr %i.g, align 1, !noalias !541
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !541
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef 0, i8 range(i8 0, -128) %i.j), !noalias !536 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i2.i.i, label %bb.j, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit

bb.f:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %2, 4294967296
  br i1 %i.n, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef -51, i8 undef), !noalias !550 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.g
  %i.p = trunc nuw i64 %2 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !551
  store i16 0, ptr %i.f, align 2, !noalias !551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !556
  %i.q = tail call i16 @llvm.bswap.i16(i16 range(i16 256, 0) %i.p)
  store i16 %i.q, ptr %i.e, align 2, !noalias !556
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.f, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !556
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !551
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.r = tail call noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef -49, i8 undef), !noalias !550 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.r, null
  br i1 %.not.i2.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorEECs7BtpbLEd5q3_9elfshaker.exit.i9.i, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorEECs7BtpbLEd5q3_9elfshaker.exit.i9.i: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !560
  store i64 0, ptr %i.d, align 8, !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !565
  %i.s = tail call i64 @llvm.bswap.i64(i64 range(i64 4294967296, 0) %2)
  store i64 %i.s, ptr %i.c, align 8, !noalias !565
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.d, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7), !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !565
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) 8), !noalias !550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !560
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.t = tail call noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef -50, i8 undef), !noalias !550 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.t, null
  br i1 %.not.i11.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorEECs7BtpbLEd5q3_9elfshaker.exit.i18.i, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorEECs7BtpbLEd5q3_9elfshaker.exit.i18.i: ; preds = %bb.i
  %i.u = trunc nuw i64 %2 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !569
  store i32 0, ptr %i.b, align 4, !noalias !569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !574
  %i.v = tail call i32 @llvm.bswap.i32(i32 range(i32 65536, 0) %i.u)
  store i32 %i.v, ptr %i.a, align 4, !noalias !574
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !574
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !569
  br label %bb.j

_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %bb.e
  %.sroa.14.0 = phi ptr [ %i.l, %bb.d ], [ %i.o, %bb.g ], [ %i.m, %bb.e ], [ %i.r, %bb.h ], [ %i.t, %bb.i ]
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorEECs7BtpbLEd5q3_9elfshaker.exit.i18.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorEECs7BtpbLEd5q3_9elfshaker.exit.i9.i
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs6LlcditsbhK_5serde3ser10Serializer16serialize_structCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !578
  %i.b = trunc i64 %4 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.b), !noalias !582
  %i.c = load i64, ptr %i.a, align 8, !range !71, !noalias !578, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.c, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !578, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !578
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.513.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !578
  %i.f = ptrtoint ptr %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink17 = phi i64 [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %.sink = phi i64 [ -1, %bb.c ], [ -9223372036854775808, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink17, ptr %i.g, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u32Cs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  tail call void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer13serialize_u64Cs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [2 x i8], align 2                 ; 4 uses
  %i.f = alloca [2 x i8], align 2                 ; 7 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %i.h = icmp ult i64 %2, 256
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %2, 65536
  br i1 %i.i, label %bb.h, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = trunc nuw i64 %2 to i8                   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.l = tail call noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef -52, i8 undef), !noalias !592 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !595, !noalias !592, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !596
  store i8 %i.j, ptr %i.g, align 1, !noalias !596
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.m = load i64, ptr %.val.i.i.i, align 8, !range !327, !alias.scope !597, !noalias !600, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !597, !noalias !600, !noundef !5 ; 4 uses
  %i.p = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = sub nsw i64 %i.m, %i.o
  %i.r = icmp ugt i64 %i.q, 1
  br i1 %i.r, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i.i, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i, !prof !334

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i.i: ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !609, !noalias !610, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  store i8 %i.j, ptr %i.u, align 1, !noalias !612
  %i.v = add nuw i64 %i.o, 1
  store i64 %i.v, ptr %i.n, align 8, !alias.scope !609, !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !596
  br label %bb.n

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.e
  %i.w = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef range(i64 0, -9223372036854775808) 1) #22, !noalias !592 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !596
  %.not7.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not7.i.i.i, label %bb.n, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit

bb.f:                                             ; preds = %bb.c
  %i.x = tail call noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef 0, i8 range(i8 0, -128) %i.j), !noalias !592 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i3.i.i, label %bb.n, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit

bb.g:                                             ; preds = %bb.b
  %i.y = icmp ult i64 %2, 4294967296
  br i1 %i.y, label %bb.l, label %bb.j

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.z = tail call noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef -51, i8 undef), !noalias !616 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.i, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = trunc nuw i64 %2 to i16
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !617, !noalias !616 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !618
  store i16 0, ptr %i.f, align 2, !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !619
  %i.ab = tail call i16 @llvm.bswap.i16(i16 range(i16 256, 0) %i.aa)
  store i16 %i.ab, ptr %i.e, align 2, !noalias !619
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.f, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !619
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.ac = load i64, ptr %.val.i.i, align 8, !range !327, !alias.scope !622, !noalias !625, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !622, !noalias !625, !noundef !5 ; 4 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = sub nsw i64 %i.ac, %i.ae
  %i.ah = icmp ugt i64 %i.ag, 2
  br i1 %i.ah, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.i.i, !prof !334

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i: ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !634, !noalias !635, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae
  %i.al = load i16, ptr %i.f, align 2, !noalias !637
  store i16 %i.al, ptr %i.ak, align 1, !noalias !638
  %i.am = add nuw i64 %i.ae, 2
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !634, !noalias !635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !618
  br label %bb.n

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.i
  %i.an = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) 2) #22, !noalias !616 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !618
  %.not7.i.i = icmp eq ptr %i.an, null
  br i1 %.not7.i.i, label %bb.n, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.ao = tail call noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef -49, i8 undef), !noalias !616 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ao, null
  br i1 %.not.i3.i, label %bb.k, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit

bb.k:                                             ; preds = %bb.j
  %.val.i6.i = load ptr, ptr %1, align 8, !alias.scope !642, !noalias !616 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !643
  store i64 0, ptr %i.d, align 8, !noalias !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !644
  %i.ap = tail call i64 @llvm.bswap.i64(i64 range(i64 4294967296, 0) %2)
  store i64 %i.ap, ptr %i.c, align 8, !noalias !644
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.d, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7), !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !644
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i6.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.aq = load i64, ptr %.val.i6.i, align 8, !range !327, !alias.scope !647, !noalias !650, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !647, !noalias !650, !noundef !5 ; 4 uses
  %i.at = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.at)
  %i.au = sub nsw i64 %i.aq, %i.as
  %i.av = icmp ugt i64 %i.au, 8
  br i1 %i.av, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u64Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u64Cs7BtpbLEd5q3_9elfshaker.exit.i.i, !prof !334

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u64Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i: ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !659, !noalias !660, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.as
  %i.az = load i64, ptr %i.d, align 8, !noalias !662
  store i64 %i.az, ptr %i.ay, align 1, !noalias !663
  %i.ba = add nuw i64 %i.as, 8
  store i64 %i.ba, ptr %i.ar, align 8, !alias.scope !659, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !643
  br label %bb.n

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u64Cs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.k
  %i.bb = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i6.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) 8) #22, !noalias !616 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !643
  %.not7.i7.i = icmp eq ptr %i.bb, null
  br i1 %.not7.i7.i, label %bb.n, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit

bb.l:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  %i.bc = tail call noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i8 noundef -50, i8 undef), !noalias !616 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.bc, null
  br i1 %.not.i16.i, label %bb.m, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit

bb.m:                                             ; preds = %bb.l
  %i.bd = trunc nuw i64 %2 to i32
  %.val.i19.i = load ptr, ptr %1, align 8, !alias.scope !667, !noalias !616 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !668
  store i32 0, ptr %i.b, align 4, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !669
  %i.be = tail call i32 @llvm.bswap.i32(i32 range(i32 65536, 0) %i.bd)
  store i32 %i.be, ptr %i.a, align 4, !noalias !669
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6), !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !669
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i19.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.bf = load i64, ptr %.val.i19.i, align 8, !range !327, !alias.scope !672, !noalias !675, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !672, !noalias !675, !noundef !5 ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  call void @llvm.assume(i1 %i.bi)
  %i.bj = sub nsw i64 %i.bf, %i.bh
  %i.bk = icmp ugt i64 %i.bj, 4
  br i1 %i.bk, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, label %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.i.i, !prof !334

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i: ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !684, !noalias !685, !nonnull !5, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bh
  %i.bo = load i32, ptr %i.b, align 4, !noalias !687
  store i32 %i.bo, ptr %i.bn, align 1, !noalias !688
  %i.bp = add nuw i64 %i.bh, 4
  store i64 %i.bp, ptr %i.bg, align 8, !alias.scope !684, !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !668
  br label %bb.n

_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.m
  %i.bq = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i19.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 4) #22, !noalias !616 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !668
  %.not7.i20.i = icmp eq ptr %i.bq, null
  br i1 %.not7.i20.i, label %bb.n, label %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.l, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.i.i, %bb.j, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u64Cs7BtpbLEd5q3_9elfshaker.exit.i.i, %bb.h, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.i.i, %bb.d, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.f
  %.sroa.14.0 = phi ptr [ %i.l, %bb.d ], [ %i.ao, %bb.j ], [ %i.z, %bb.h ], [ %i.x, %bb.f ], [ %i.w, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i ], [ %i.an, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.i.i ], [ %i.bb, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u64Cs7BtpbLEd5q3_9elfshaker.exit.i.i ], [ %i.bq, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.i.i ], [ %i.bc, %bb.l ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.f ], [ 1, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i ], [ 1, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.i.i ], [ 1, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u64Cs7BtpbLEd5q3_9elfshaker.exit.i.i ], [ 1, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.i.i ], [ 0, %bb.l ]
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.f, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i.i, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u64Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite13write_data_u8Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u16Cs7BtpbLEd5q3_9elfshaker.exit.i.i, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u64Cs7BtpbLEd5q3_9elfshaker.exit.i.i, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.i.i, %_RNvYQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCsdxnJubla0R8_3rmp6encode8RmpWrite14write_data_u32Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RINvNtNtCsdxnJubla0R8_3rmp6encode4uint10write_uintQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer15serialize_tupleCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = trunc i64 %2 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.b)
  %i.c = load i64, ptr %i.a, align 8, !range !71, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink1 = phi i64 [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %.sink = phi i64 [ -1, %bb.c ], [ -9223372036854775808, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink1, ptr %i.g, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsj_NtCs974quTetXso_9rmp_serde6encodeQINtB5_10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtCs6LlcditsbhK_5serde3ser10Serializer16serialize_structCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !689
  %i.b = trunc i64 %4 to i32
  call void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.b), !noalias !693
  %i.c = load i64, ptr %i.a, align 8, !range !71, !noalias !689, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.c, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !689, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !689
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.513.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !689
  %i.f = ptrtoint ptr %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink17 = phi i64 [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %.sink = phi i64 [ -1, %bb.c ], [ -9223372036854775808, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink17, ptr %i.g, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtShNtB5_5Debug3fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter14ChunksExactMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %bb.b, label %_RNvXs1y_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs7BtpbLEd5q3_9elfshaker.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18, !noalias !694
  unreachable

_RNvXs1y_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.c, align 8
  %i.d = udiv i64 %.val, %.val1
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 384307168202282326) i64 @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterINtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtBL_10FileHandleEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 48
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4611686018427387904) i64 @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4ItermENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  ret i64 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24), i8 noundef range(i8 -128, 1), i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCsdxnJubla0R8_3rmp6encode12write_markerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(8), i8 noundef range(i8 -128, 1), i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc2io4copy7genericNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutNtB6_18BufferedWriterSpec9copy_fromNtNtBS_2fs4FileECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc2io4copy7genericNtNtCsaL1QbXo9JQH_3std2fs4FileNtB6_18BufferedWriterSpec9copy_fromQQRShECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_6StdoutNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCskuiImRAV2ip_9elfshaker7packidxs2_1__INtB5_9ChangeSetNtB5_10FileHandleENtNtCs6LlcditsbhK_5serde3ser9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCskuiImRAV2ip_9elfshaker7packidx1__NtB5_10FileHandleNtNtCs6LlcditsbhK_5serde3ser9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCskuiImRAV2ip_9elfshaker7packidx1__NtB5_10FileHandleNtNtCs6LlcditsbhK_5serde3ser9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCskuiImRAV2ip_9elfshaker7packidxs6_1__NtB5_14ObjectMetadataNtNtCs6LlcditsbhK_5serde3ser9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsw_NtNtCs6LlcditsbhK_5serde3ser5implsNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB8_9Serialize9serializeQINtNtCs974quTetXso_9rmp_serde6encode10SerializerQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtBK_2fs4FileEEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdxnJubla0R8_3rmp6encode15write_array_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdxnJubla0R8_3rmp6encode13write_map_lenINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsdxnJubla0R8_3rmp6encode13write_map_lenQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: noreturn nonlazybind uwtable
declare void @_RNvNtCsaL1QbXo9JQH_3std7process4exit(i32 noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCskfBPnJUU6aB_12clap_builder6output3fmtNtB2_9Colorizer12with_content(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMs_NtNtCskfBPnJUU6aB_12clap_builder6output3fmtNtB4_9Colorizer5print(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCskfBPnJUU6aB_12clap_builder5error6formatNtB4_13RichFormatterNtB4_14ErrorFormatter12format_error(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCskfBPnJUU6aB_12clap_builder5errorNtB5_7Message9formatted(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(98)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0
end_hunk_1
