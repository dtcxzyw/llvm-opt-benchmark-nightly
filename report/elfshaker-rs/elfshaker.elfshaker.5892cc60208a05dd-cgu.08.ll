Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.08?download=true
inline.NumInlined: 356
inline.NumDeleted: 210
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtCs1xwejQucwHj_5alloc2io4copy7generic17stack_buffer_copyNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtB15_2io5stdio6StdoutECs7BtpbLEd5q3_9elfshaker:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  store ptr %i.am, ptr %i.g, align 8, !alias.scope !31
  store i8 3, ptr %i.a, align 8, !alias.scope !31
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.ao = call noundef ptr @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm

bb.k:                                             ; preds = %.noexc, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.j) #21
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtNtCs1xwejQucwHj_5alloc2io4copy7generic17stack_buffer_copyQQRShNtNtCsaL1QbXo9JQH_3std2fs4FileECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8192 x i8], align 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %.val.i14 = load ptr, ptr %.val, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i14, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !34, !noundef !5 ; 3 uses
  %..i.i.i.i15 = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 8192) ; 5 uses
  %i.d = load ptr, ptr %.val.i14, align 8, !alias.scope !34, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %..i.i.i.i15
  %i.f = sub nuw nsw i64 %i.c, %..i.i.i.i15
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i.i15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i.i15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3), !noalias !34
  store ptr %i.e, ptr %.val.i14, align 8, !alias.scope !34, !captures !37
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !34
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.h = add i64 %..i.i.i.i17, %.sroa.02.016      ; 2 uses
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !38, !noundef !5 ; 3 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.j, i64 8192) ; 5 uses
  %i.k = load ptr, ptr %.val.i, align 8, !alias.scope !38, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %..i.i.i.i
  %i.m = sub nuw nsw i64 %i.j, %..i.i.i.i
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3), !noalias !38
  store ptr %i.l, ptr %.val.i, align 8, !alias.scope !38, !captures !37
  store i64 %i.m, ptr %i.i, align 8, !alias.scope !38
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.o = inttoptr i64 %i.h to ptr
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %..i.i.i.i17 = phi i64 [ %..i.i.i.i, %bb.b ], [ %..i.i.i.i15, %bb.a ] ; 2 uses
  %.sroa.02.016 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.p = call noundef ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %..i.i.i.i17) ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %._crit_edge.loopexit
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
  %i.i = phi ptr [ %i.x, %.preheader ], [ %i.h, %.critedge ] ; 3 uses
  %i.j = phi ptr [ %i.w, %.preheader ], [ %i.e, %.critedge ] ; 3 uses
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
  %spec.select.i.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 3 uses
  %6 = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  %..i17 = select i1 %6, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %..i17, i64 24, i1 false), !noalias !52
  %7 = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %i.v = zext i1 %7 to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.v ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %spec.select.i.i.i.i.i.lobit.i ; 3 uses
  %i.y = icmp eq ptr %i.w, %0
  %i.z = icmp eq ptr %i.x, %2
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs1xwejQucwHj_5alloc6string6StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.aa = phi ptr [ %i.ao, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ab = phi ptr [ %i.am, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.02.i, i64 8
  %.sroa.0.0.val.i = load ptr, ptr %i.ac, align 8, !noalias !59, !nonnull !5, !noundef !5
  %i.ad = getelementptr i8, ptr %.sroa.0.02.i, i64 16
  %.sroa.0.0.val6.i = load i64, ptr %i.ad, align 8, !noalias !59, !noundef !5 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 8
  %.val.i19 = load ptr, ptr %i.ae, align 8, !noalias !59, !nonnull !5, !noundef !5
  %i.af = getelementptr i8, ptr %i.ab, i64 16
  %.val7.i = load i64, ptr %i.af, align 8, !noalias !59, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val6.i, i64 range(i64 0, -9223372036854775808) %.val7.i)
  %i.ag = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i, ptr nonnull readonly %.val.i19, i64 %spec.store.select.i.i.i.i.i.i20), !alias.scope !62, !noalias !59 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %i.aj = sub nsw i64 %.sroa.0.0.val6.i, %.val7.i
  %spec.select.i.i.i.i.i.i21 = select i1 %i.ai, i64 %i.aj, i64 %i.ah ; 3 uses
  %8 = icmp slt i64 %spec.select.i.i.i.i.i.i21, 0
  %i.ak = icmp sgt i64 %spec.select.i.i.i.i.i.i21, -1
  %.sroa.05.0.i = select i1 %8, ptr %.sroa.0.02.i, ptr %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i, i64 24, i1 false), !noalias !59
  %i.al = zext i1 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.al ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i22 = lshr i64 %spec.select.i.i.i.i.i.i21, 63
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i, i64 %spec.select.i.i.i.i.i.lobit.i22 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ap = icmp ne ptr %i.am, %i.h
  %i.aq = icmp ne ptr %i.an, %i.f
  %or.cond.i23 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond.i23, label %.lr.ph.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs1xwejQucwHj_5alloc6string6StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs1xwejQucwHj_5alloc6string6StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.w, %.preheader ], [ %i.ao, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.x, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %i.ar = ptrtoint ptr %.sroa.7.0 to i64
  %i.as = ptrtoint ptr %.sroa.0.0 to i64
  %i.at = sub nuw i64 %i.ar, %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.at, i1 false), !noalias !66
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
end_hunk_0
