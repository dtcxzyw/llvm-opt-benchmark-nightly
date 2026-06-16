inline.NumInlined: 308
inline.NumDeleted: 157
begin_hunk_0_@_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11rotate_leftCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit55.i.i: ; preds = %bb.s, %bb.r
  %i.dp = sub i64 %.sroa.0.2.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.dq = icmp ult i64 %i.dp, %.sroa.016.0.i.i
  %indvar.next87 = add i64 %indvar86, 1
  br i1 %i.dq, label %.loopexit.i.i, label %.preheader56.split.split.i.i

_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate10ptr_rotatehECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.loopexit.i.i, %bb.c, %_RINvNtNtCsbvkFyIu7lgC_4core5slice6rotate18ptr_rotate_memmovehECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3popCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [80 x i8], align 8      ; 6 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !266, !noalias !269 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.a = icmp eq i64 %.pre, 0
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %.pre, %bb.b ], [ %2, %bb.a ]  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = add nsw i64 %i.b, -1                     ; 9 uses
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !266, !noalias !269
  %i.e = load i64, ptr %1, align 8, !range !120, !alias.scope !266, !noalias !269, !noundef !8
  %i.f = icmp samesign ult i64 %i.d, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !266, !noalias !269, !nonnull !8, !noundef !8 ; 23 uses
  %i.i = icmp ult i64 %i.b, 115292150460684699
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.d ; 10 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !271 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.sroa.0.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !271 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !271 ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.sroa.5.0.copyload.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !271 ; 2 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.4.sroa.6.0.copyload.i = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !271 ; 2 uses
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.4.sroa.7.0.copyload.i = load i64, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !271 ; 2 uses
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.4.sroa.8.0.copyload.i = load i64, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !271 ; 2 uses
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.4.sroa.9.0.copyload.i = load i64, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !271 ; 2 uses
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.4.sroa.10.0.copyload.i = load i64, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !271 ; 2 uses
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.4.sroa.11.0.copyload.i = load i64, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !271 ; 2 uses
  %i.k = icmp eq i64 %i.d, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.h, align 1, !alias.scope !272, !noalias !275
  store i64 %.sroa.05.0.copyload.i, ptr %i.h, align 1, !alias.scope !272, !noalias !275
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.1.i.i.i.i = load i64, ptr %i.l, align 1, !alias.scope !280, !noalias !282
  store i64 %.sroa.4.sroa.0.0.copyload.i, ptr %i.l, align 1, !alias.scope !280, !noalias !282
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.m, align 1, !alias.scope !284, !noalias !286
  store i64 %.sroa.4.sroa.4.0.copyload.i, ptr %i.m, align 1, !alias.scope !284, !noalias !286
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.3.i.i.i.i = load i64, ptr %i.n, align 1, !alias.scope !288, !noalias !290
  store i64 %.sroa.4.sroa.5.0.copyload.i, ptr %i.n, align 1, !alias.scope !288, !noalias !290
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.4.i.i.i.i = load i64, ptr %i.o, align 1, !alias.scope !292, !noalias !294
  store i64 %.sroa.4.sroa.6.0.copyload.i, ptr %i.o, align 1, !alias.scope !292, !noalias !294
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.5.i.i.i.i = load i64, ptr %i.p, align 1, !alias.scope !296, !noalias !298
  store i64 %.sroa.4.sroa.7.0.copyload.i, ptr %i.p, align 1, !alias.scope !296, !noalias !298
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.6.i.i.i.i = load i64, ptr %i.q, align 1, !alias.scope !300, !noalias !302
  store i64 %.sroa.4.sroa.8.0.copyload.i, ptr %i.q, align 1, !alias.scope !300, !noalias !302
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.7.i.i.i.i = load i64, ptr %i.r, align 1, !alias.scope !304, !noalias !306
  store i64 %.sroa.4.sroa.9.0.copyload.i, ptr %i.r, align 1, !alias.scope !304, !noalias !306
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.8.i.i.i.i = load i64, ptr %i.s, align 1, !alias.scope !308, !noalias !310
  store i64 %.sroa.4.sroa.10.0.copyload.i, ptr %i.s, align 1, !alias.scope !308, !noalias !310
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.9.i.i.i.i = load i64, ptr %i.t, align 1, !alias.scope !312, !noalias !314
  store i64 %.sroa.4.sroa.11.0.copyload.i, ptr %i.t, align 1, !alias.scope !312, !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !316
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 2)
  %.not.not8.i.i.i = icmp samesign ult i64 %i.b, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %i.aq, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %bb.c ], [ %i.au, %.lr.ph.i.i.i ] ; 4 uses
  %i.v = add nsw i64 %i.b, -2
  %i.w = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.v
  br i1 %i.w, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.0.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 80, i1 false), !noalias !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !316
  %i.z = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.d
  tail call void @llvm.assume(i1 %i.z)
  %.sroa.416.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.416.0.copyload.i.i7.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i, align 8, !noalias !316
  br label %.lr.ph.i.i.preheader.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !316
  %i.ab = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i, %i.d
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %.sroa.416.0.copyload.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !316 ; 2 uses
  %.not18.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, 0
  br i1 %.not18.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.d, %.thread.i.i
  %.sroa.416.0.copyload.i.i10.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i, %.thread.i.i ], [ %.sroa.416.0.copyload.i.i.i.i, %bb.d ] ; 3 uses
  %.sroa.12.1.i9.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.thread.i.i ], [ %.sroa.12.0.lcssa.i.i.i, %bb.d ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.preheader.i.i
  %.sroa.13.019.i.i.i.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.12.1.i9.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.ac = add nsw i64 %.sroa.13.019.i.i.i.i, -1
  %i.ad = lshr i64 %i.ac, 1                       ; 4 uses
  %i.ae = icmp samesign ult i64 %i.ad, %i.d
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.ad ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 72
  %.val1.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !316, !noundef !8
  %.not17.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i
  br i1 %.not17.i.i.i.i, label %bb.e, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.13.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %i.af, i64 80, i1 false), !noalias !316
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ 1, %bb.c ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i ], [ 0, %bb.c ]
  %i.ai = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.05.010.i.i.i
  %i.aj = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %i.d
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.aj
  %i.am = getelementptr i8, ptr %i.ai, i64 72
  %.val.i.i.i = load i64, ptr %i.am, align 8, !noalias !316, !noundef !8
  %i.an = getelementptr i8, ptr %i.al, i64 72
  %.val17.i.i.i = load i64, ptr %i.an, align 8, !noalias !316, !noundef !8
  %i.ao = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ap = zext i1 %i.ao to i64
  %i.aq = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ap ; 4 uses
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.aq
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.09.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 80, i1 false), !noalias !316
  %i.at = shl nuw nsw i64 %i.aq, 1
  %i.au = or disjoint i64 %i.at, 1                ; 3 uses
  %.not.not.i.i.i = icmp samesign ugt i64 %i.au, %i.u
  br i1 %.not.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i, %bb.d
  %.sroa.416.0.copyload.i.i11.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i, %bb.d ], [ %.sroa.416.0.copyload.i.i10.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i, %bb.e ]
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %.sroa.13.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.av = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i, i64 72, i1 false), !noalias !316
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store i64 %.sroa.416.0.copyload.i.i11.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 8, !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.thread, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.b
  %.sroa.12.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.9.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.7.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.11.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.8.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.6.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.10.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.7.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.5.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.9.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.6.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.4.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.8.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.5.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.3.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.7.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.4.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.6.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.0.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.1.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.012.0 = phi i64 [ -9223372036854775789, %bb.b ], [ %.sroa.05.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.13.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.10.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.8.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.14.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.11.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.9.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %i.aw = icmp ne i64 %.sroa.012.0, -9223372036854775789
  tail call void @llvm.assume(i1 %i.aw)
  store i64 %.sroa.012.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [80 x i8], align 8      ; 6 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !317, !noalias !320 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.a = icmp eq i64 %.pre, 0
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %.pre, %bb.b ], [ %2, %bb.a ]  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = add nsw i64 %i.b, -1                     ; 9 uses
  store i64 %i.d, ptr %i.c, align 8, !alias.scope !317, !noalias !320
  %i.e = load i64, ptr %1, align 8, !range !120, !alias.scope !317, !noalias !320, !noundef !8
  %i.f = icmp samesign ult i64 %i.d, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !317, !noalias !320, !nonnull !8, !noundef !8 ; 23 uses
  %i.i = icmp ult i64 %i.b, 115292150460684699
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.d ; 10 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !322 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.sroa.0.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !322 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !322 ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.sroa.5.0.copyload.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !322 ; 2 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.4.sroa.6.0.copyload.i = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !322 ; 2 uses
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.4.sroa.7.0.copyload.i = load i64, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !322 ; 2 uses
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.4.sroa.8.0.copyload.i = load i64, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !322 ; 2 uses
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.4.sroa.9.0.copyload.i = load i64, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !322 ; 2 uses
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.4.sroa.10.0.copyload.i = load i64, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !322 ; 2 uses
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.4.sroa.11.0.copyload.i = load i64, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !322 ; 2 uses
  %i.k = icmp eq i64 %i.d, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.h, align 1, !alias.scope !323, !noalias !326
  store i64 %.sroa.05.0.copyload.i, ptr %i.h, align 1, !alias.scope !323, !noalias !326
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.1.i.i.i.i = load i64, ptr %i.l, align 1, !alias.scope !331, !noalias !333
  store i64 %.sroa.4.sroa.0.0.copyload.i, ptr %i.l, align 1, !alias.scope !331, !noalias !333
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.m, align 1, !alias.scope !335, !noalias !337
  store i64 %.sroa.4.sroa.4.0.copyload.i, ptr %i.m, align 1, !alias.scope !335, !noalias !337
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.3.i.i.i.i = load i64, ptr %i.n, align 1, !alias.scope !339, !noalias !341
  store i64 %.sroa.4.sroa.5.0.copyload.i, ptr %i.n, align 1, !alias.scope !339, !noalias !341
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.4.i.i.i.i = load i64, ptr %i.o, align 1, !alias.scope !343, !noalias !345
  store i64 %.sroa.4.sroa.6.0.copyload.i, ptr %i.o, align 1, !alias.scope !343, !noalias !345
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.5.i.i.i.i = load i64, ptr %i.p, align 1, !alias.scope !347, !noalias !349
  store i64 %.sroa.4.sroa.7.0.copyload.i, ptr %i.p, align 1, !alias.scope !347, !noalias !349
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.6.i.i.i.i = load i64, ptr %i.q, align 1, !alias.scope !351, !noalias !353
  store i64 %.sroa.4.sroa.8.0.copyload.i, ptr %i.q, align 1, !alias.scope !351, !noalias !353
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.7.i.i.i.i = load i64, ptr %i.r, align 1, !alias.scope !355, !noalias !357
  store i64 %.sroa.4.sroa.9.0.copyload.i, ptr %i.r, align 1, !alias.scope !355, !noalias !357
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.8.i.i.i.i = load i64, ptr %i.s, align 1, !alias.scope !359, !noalias !361
  store i64 %.sroa.4.sroa.10.0.copyload.i, ptr %i.s, align 1, !alias.scope !359, !noalias !361
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.9.i.i.i.i = load i64, ptr %i.t, align 1, !alias.scope !363, !noalias !365
  store i64 %.sroa.4.sroa.11.0.copyload.i, ptr %i.t, align 1, !alias.scope !363, !noalias !365
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !367
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 2)
  %.not.not8.i.i.i = icmp samesign ult i64 %i.b, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %i.aq, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %bb.c ], [ %i.au, %.lr.ph.i.i.i ] ; 4 uses
  %i.v = add nsw i64 %i.b, -2
  %i.w = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.v
  br i1 %i.w, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.0.lcssa.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 80, i1 false), !noalias !367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !367
  %i.z = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.d
  tail call void @llvm.assume(i1 %i.z)
  %.sroa.416.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.416.0.copyload.i.i7.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i, align 8, !noalias !367
  br label %.lr.ph.i.i.preheader.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !367
  %i.ab = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i, %i.d
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %.sroa.416.0.copyload.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !367 ; 2 uses
  %.not18.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, 0
  br i1 %.not18.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.d, %.thread.i.i
  %.sroa.416.0.copyload.i.i10.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i, %.thread.i.i ], [ %.sroa.416.0.copyload.i.i.i.i, %bb.d ] ; 3 uses
  %.sroa.12.1.i9.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.thread.i.i ], [ %.sroa.12.0.lcssa.i.i.i, %bb.d ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.preheader.i.i
  %.sroa.13.019.i.i.i.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.12.1.i9.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.ac = add nsw i64 %.sroa.13.019.i.i.i.i, -1
  %i.ad = lshr i64 %i.ac, 1                       ; 4 uses
  %i.ae = icmp samesign ult i64 %i.ad, %i.d
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.ad ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 72
  %.val1.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !367, !noundef !8
  %.not17.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i
  br i1 %.not17.i.i.i.i, label %bb.e, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.13.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %i.af, i64 80, i1 false), !noalias !367
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ 1, %bb.c ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i ], [ 0, %bb.c ]
  %i.ai = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.05.010.i.i.i
  %i.aj = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %i.d
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.aj
  %i.am = getelementptr i8, ptr %i.ai, i64 72
  %.val.i.i.i = load i64, ptr %i.am, align 8, !noalias !367, !noundef !8
  %i.an = getelementptr i8, ptr %i.al, i64 72
  %.val17.i.i.i = load i64, ptr %i.an, align 8, !noalias !367, !noundef !8
  %i.ao = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ap = zext i1 %i.ao to i64
  %i.aq = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ap ; 4 uses
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.aq
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.12.09.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 80, i1 false), !noalias !367
  %i.at = shl nuw nsw i64 %i.aq, 1
  %i.au = or disjoint i64 %i.at, 1                ; 3 uses
  %.not.not.i.i.i = icmp samesign ugt i64 %i.au, %i.u
  br i1 %.not.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i, %bb.d
  %.sroa.416.0.copyload.i.i11.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i, %bb.d ], [ %.sroa.416.0.copyload.i.i10.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i, %bb.e ]
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %.sroa.13.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.av = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i, i64 72, i1 false), !noalias !367
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store i64 %.sroa.416.0.copyload.i.i11.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 8, !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.thread, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.b
  %.sroa.12.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.9.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.7.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.11.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.8.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.6.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.10.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.7.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.5.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.9.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.6.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.4.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.8.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.5.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.3.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.7.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.4.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.6.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.0.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.1.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.012.0 = phi i64 [ -9223372036854775789, %bb.b ], [ %.sroa.05.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.13.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.10.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.8.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.14.0 = phi i64 [ undef, %bb.b ], [ %.sroa.4.sroa.11.0.copyload.i, %.thread ], [ %.sroa.02.0.copyload.i.i.i.9.i.i.i.i, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %i.aw = icmp ne i64 %.sroa.012.0, -9223372036854775789
  tail call void @llvm.assume(i1 %i.aw)
  store i64 %.sroa.012.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.j, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.b
  %i.d = and i64 %1, 4
  %..i.i = add nuw nsw i64 %i.d, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3
  %i.f = udiv i64 %i.e, 7
  %i.g = add nsw i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = lshr i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i = phi i64 [ %i.j, %bb.e ], [ %..i.i, %bb.d ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 40) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16    ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !16

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !368
  %i.t = tail call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !368 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !368
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !368
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread.i

bb.j:                                             ; preds = %bb.c
  %i.x = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !373 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aa = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ab = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.ac = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.03.0.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i8 -1, i64 %i.p, i1 false), !noalias !373
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.j, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %.sroa.10.0 = phi i64 [ %i.z, %bb.j ], [ %.sroa.12.09.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread.i ], [ %.sroa.03.0.i.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.y, %bb.j ], [ %.sroa.7.010.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread.i ], [ %i.ab, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.j ], [ null, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread.i ], [ %i.ae, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ @0, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE6removeCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !374, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 40                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.f = add nsw i64 %i.e, -16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !380, !noundef !8
  %i.i = and i64 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i20.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !381
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i20.i.i, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i421.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !384
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i421.i.i, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.l, i1 false)
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.o, i1 false)
  %narrow.i.i = add nuw nsw i16 %i.q, %i.p
  %i.r = icmp samesign ugt i16 %narrow.i.i, 15
  br i1 %i.r, label %_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE13erase_no_dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !380, !noundef !8
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !alias.scope !380
  br label %_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE13erase_no_dropCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE13erase_no_dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i8 [ -1, %bb.b ], [ -128, %bb.a ] ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.m, align 1, !noalias !380
  %i.v = getelementptr i8, ptr %i.j, i64 16
  store i8 %.sroa.0.0.i.i, ptr %i.v, align 1, !noalias !380
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !380, !noundef !8
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.w, align 8, !alias.scope !380
  %i.z = getelementptr inbounds i8, ptr %2, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.e, ptr %i.aa, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE4pushCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [72 x i8], align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 7 uses
  %i.c = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !120, !alias.scope !387, !noalias !390, !noundef !8
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8grow_oneB3b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.c, !noalias !390

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(80) %1) #30
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !387, !noalias !390, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.k = add nuw nsw i64 %i.b, 1                  ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !387, !noalias !390
  %.val = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.b ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false)
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.416.0.copyload.i = load i64, ptr %.sroa.416.0..sroa_idx.i, align 8 ; 2 uses
  %.not18.i = icmp eq i64 %i.b, 0
  br i1 %.not18.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE7sift_upCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.f
  %.sroa.13.019.i = phi i64 [ %i.n, %bb.f ], [ %i.b, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit ] ; 3 uses
  %i.m = add nsw i64 %.sroa.13.019.i, -1
  %i.n = lshr i64 %i.m, 1                         ; 4 uses
  %2 = icmp samesign ult i64 %i.n, %i.k
  tail call void @llvm.assume(i1 %2)
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 72
  %.val1.i = load i64, ptr %i.p, align 8, !noundef !8
  %.not17.i = icmp sgt i64 %.val1.i, %.sroa.416.0.copyload.i
  br i1 %.not17.i, label %bb.f, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE7sift_upCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.13.019.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false)
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE7sift_upCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE7sift_upCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.lr.ph.i, %bb.f, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit
  %.sroa.13.0.lcssa.i = phi i64 [ 0, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit ], [ 0, %bb.f ], [ %.sroa.13.019.i, %.lr.ph.i ]
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.13.0.lcssa.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, i64 72, i1 false)
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i64 %.sroa.416.0.copyload.i, ptr %.sroa.5.0..sroa_idx1.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE4pushCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [72 x i8], align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 7 uses
  %i.c = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !120, !alias.scope !392, !noalias !395, !noundef !8
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2D_5ErrorEEE8grow_oneB2D_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.c, !noalias !395

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(80) %1) #30
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !392, !noalias !395, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.k = add nuw nsw i64 %i.b, 1                  ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !392, !noalias !395
  %.val = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.b ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false)
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.416.0.copyload.i = load i64, ptr %.sroa.416.0..sroa_idx.i, align 8 ; 2 uses
  %.not18.i = icmp eq i64 %i.b, 0
  br i1 %.not18.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE7sift_upCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.f
  %.sroa.13.019.i = phi i64 [ %i.n, %bb.f ], [ %i.b, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit ] ; 3 uses
  %i.m = add nsw i64 %.sroa.13.019.i, -1
  %i.n = lshr i64 %i.m, 1                         ; 4 uses
  %2 = icmp samesign ult i64 %i.n, %i.k
  tail call void @llvm.assume(i1 %2)
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 72
  %.val1.i = load i64, ptr %i.p, align 8, !noundef !8
  %.not17.i = icmp sgt i64 %.val1.i, %.sroa.416.0.copyload.i
  br i1 %.not17.i, label %bb.f, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE7sift_upCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.13.019.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false)
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE7sift_upCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE7sift_upCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.lr.ph.i, %bb.f, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit
  %.sroa.13.0.lcssa.i = phi i64 [ 0, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsj34PGqTgg0L_16deltalake_lakefs.exit ], [ 0, %bb.f ], [ %.sroa.13.019.i, %.lr.ph.i ]
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.13.0.lcssa.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, i64 72, i1 false)
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i64 %.sroa.416.0.copyload.i, ptr %.sroa.5.0..sroa_idx1.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtCsjyY8HP3IvQ6_12object_store5ErrorNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !nonnull !8, !align !37, !noundef !8 ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.m = load i64, ptr %i.l, align 8, !range !144, !alias.scope !397, !noalias !400, !noundef !8 ; 3 uses
  %i.n = icmp ne i64 %i.m, -9223372036854775800
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i64 %i.m, 9223372036854775802
  %i.p = icmp ugt i64 %i.m, -9223372036854775803
  %i.q = select i1 %i.p, i64 %i.o, i64 2
  switch i64 %i.q, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !402
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.s, ptr %i.k, align 8, !noalias !402
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 5, ptr noundef nonnull readonly %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !402
  br label %_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !402
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.v, ptr %i.j, align 8, !noalias !402
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull readonly %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !402
  br label %_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !402
  store ptr %i.l, ptr %i.i, align 8, !noalias !402
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !402
  br label %_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !402
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.y, ptr %i.h, align 8, !noalias !402
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !402
  br label %_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !402
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.aa, ptr %i.g, align 8, !noalias !402
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !402
  br label %_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !402
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.ad, ptr %i.f, align 8, !noalias !402
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull readonly %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !402
  br label %_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !402
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.ag, ptr %i.e, align 8, !noalias !402
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull readonly %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !402
  br label %_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.j:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !402
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.aj, ptr %i.d, align 8, !noalias !402
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull readonly %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !402
  br label %_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.k:                                             ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 14), !noalias !397
  br label %_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.l:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !402
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.an, ptr %i.c, align 8, !noalias !402
  %i.ao = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull readonly %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !402
  br label %_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.m:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !402
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.aq, ptr %i.b, align 8, !noalias !402
  %i.ar = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull readonly %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !402
  br label %_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.n:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !402
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.at, ptr %i.a, align 8, !noalias !402
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 23, ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 5, ptr noundef nonnull readonly %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !402
  br label %_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.sroa.0.0.in.i = phi i1 [ %i.t, %bb.c ], [ %i.w, %bb.d ], [ %i.x, %bb.e ], [ %i.z, %bb.f ], [ %i.ab, %bb.g ], [ %i.ae, %bb.h ], [ %i.ah, %bb.i ], [ %i.ak, %bb.j ], [ %i.al, %bb.k ], [ %i.ao, %bb.l ], [ %i.ar, %bb.m ], [ %i.au, %bb.n ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !37, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5errorNtB5_9JoinErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB5_11InvalidPartNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !148, !noundef !8 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775807
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808
end_hunk_0
begin_hunk_1_@_RNvXs5_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %i.b, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.a, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 4, ptr noundef nonnull %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %i.w, %bb.g ], [ %i.z, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXs6_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !148, !noundef !8 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.f
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.e, %bb.d, %bb.c
  %.sroa.7.0 = phi ptr [ undef, %bb.a ], [ @27, %bb.c ], [ @29, %bb.d ], [ undef, %bb.a ], [ @31, %bb.e ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ null, %bb.a ], [ %i.h, %bb.e ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.7.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 11, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtBN_11ObjectStore10get_ranges00INtB4_6FnMut1INtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !align !37, !noundef !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !8, !align !37, !noundef !8
  %i.b = tail call { ptr, ptr } @_RNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB6_11ObjectStore9get_rangeCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val1, i64 noundef %1, i64 noundef %2)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_11ObjectStoreEL_EEB27_13delete_stream0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtBM_4path4PathNtBM_5ErrorEE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 80), (120, 121)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #9 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !align !37, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull readonly align 8 dereferenceable(72) %2, i64 72, i1 false), !alias.scope !406
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.val, ptr %i.a, align 8, !alias.scope !408, !noalias !403
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.b, align 8, !alias.scope !408, !noalias !403
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [72 x i8], align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 9 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !37, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.b, ptr %i.d, align 8
  %i.e = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(72) %.val, i64 72, i1 false)
  %.sroa.427.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %.sroa.427.0.copyload.i = load i64, ptr %.sroa.427.0..8.val.sroa_idx.i, align 8 ; 3 uses
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, 115292150460684698) %i.b, i64 2)
  %.not31.i = icmp samesign ult i64 %i.b, 3
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.22.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.01.0.lcssa.i = phi i64 [ 1, %bb.b ], [ %i.ac, %bb.e ] ; 4 uses
  %i.h = add nsw i64 %i.b, -1
  %i.i = icmp eq i64 %.sroa.01.0.lcssa.i, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE15sift_down_rangeCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.j = icmp ult i64 %.sroa.01.0.lcssa.i, %i.b
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.01.0.lcssa.i ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 72
  %.val16.i = load i64, ptr %i.l, align 8, !noundef !8
  %i.m = icmp slt i64 %.val16.i, %.sroa.427.0.copyload.i
  br i1 %i.m, label %bb.d, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE15sift_down_rangeCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.22.0.lcssa.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 80, i1 false)
  br label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE15sift_down_rangeCsj34PGqTgg0L_16deltalake_lakefs.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.sroa.01.033.i = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.b ] ; 3 uses
  %.sroa.22.032.i = phi i64 [ %i.w, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.01.033.i
  %i.p = add nuw nsw i64 %.sroa.01.033.i, 1       ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.p
  %i.s = getelementptr i8, ptr %i.o, i64 72
  %.val.i = load i64, ptr %i.s, align 8, !noundef !8
  %i.t = getelementptr i8, ptr %i.r, i64 72
  %.val14.i = load i64, ptr %i.t, align 8, !noundef !8
  %i.u = icmp sle i64 %.val14.i, %.val.i
  %i.v = zext i1 %i.u to i64
  %i.w = add nuw nsw i64 %.sroa.01.033.i, %i.v    ; 5 uses
  %i.x = icmp ult i64 %i.w, %i.b
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.w ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 72
  %.val18.i = load i64, ptr %i.z, align 8, !noundef !8
  %.not28.i = icmp slt i64 %.val18.i, %.sroa.427.0.copyload.i
  br i1 %.not28.i, label %bb.e, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE15sift_down_rangeCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.22.032.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 80, i1 false)
  %i.ab = shl nuw nsw i64 %i.w, 1
  %i.ac = or disjoint i64 %i.ab, 1                ; 3 uses
  %.not.i = icmp samesign ugt i64 %i.ac, %i.g
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE15sift_down_rangeCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.lr.ph.i, %._crit_edge.i, %bb.c, %bb.d
  %.sroa.22.032.lcssa.sink.i = phi i64 [ %.sroa.22.0.lcssa.i, %._crit_edge.i ], [ %.sroa.01.0.lcssa.i, %bb.d ], [ %.sroa.22.0.lcssa.i, %bb.c ], [ %.sroa.22.032.i, %.lr.ph.i ]
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.22.032.lcssa.sink.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, i64 72, i1 false)
  %.sroa.7.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i64 %.sroa.427.0.copyload.i, ptr %.sroa.7.0..sroa_idx5.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE15sift_down_rangeCsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2X_5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [72 x i8], align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 9 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !37, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.b, ptr %i.d, align 8
  %i.e = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(72) %.val, i64 72, i1 false)
  %.sroa.427.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %.sroa.427.0.copyload.i = load i64, ptr %.sroa.427.0..8.val.sroa_idx.i, align 8 ; 3 uses
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, 115292150460684698) %i.b, i64 2)
  %.not31.i = icmp samesign ult i64 %i.b, 3
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.22.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.01.0.lcssa.i = phi i64 [ 1, %bb.b ], [ %i.ac, %bb.e ] ; 4 uses
  %i.h = add nsw i64 %i.b, -1
  %i.i = icmp eq i64 %.sroa.01.0.lcssa.i, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.j = icmp ult i64 %.sroa.01.0.lcssa.i, %i.b
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.01.0.lcssa.i ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 72
  %.val16.i = load i64, ptr %i.l, align 8, !noundef !8
  %i.m = icmp slt i64 %.val16.i, %.sroa.427.0.copyload.i
  br i1 %i.m, label %bb.d, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.22.0.lcssa.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 80, i1 false)
  br label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsj34PGqTgg0L_16deltalake_lakefs.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.sroa.01.033.i = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.b ] ; 3 uses
  %.sroa.22.032.i = phi i64 [ %i.w, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.01.033.i
  %i.p = add nuw nsw i64 %.sroa.01.033.i, 1       ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.p
  %i.s = getelementptr i8, ptr %i.o, i64 72
  %.val.i = load i64, ptr %i.s, align 8, !noundef !8
  %i.t = getelementptr i8, ptr %i.r, i64 72
  %.val14.i = load i64, ptr %i.t, align 8, !noundef !8
  %i.u = icmp sle i64 %.val14.i, %.val.i
  %i.v = zext i1 %i.u to i64
  %i.w = add nuw nsw i64 %.sroa.01.033.i, %i.v    ; 5 uses
  %i.x = icmp ult i64 %i.w, %i.b
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.w ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 72
  %.val18.i = load i64, ptr %i.z, align 8, !noundef !8
  %.not28.i = icmp slt i64 %.val18.i, %.sroa.427.0.copyload.i
  br i1 %.not28.i, label %bb.e, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.22.032.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 80, i1 false)
  %i.ab = shl nuw nsw i64 %i.w, 1
  %i.ac = or disjoint i64 %i.ab, 1                ; 3 uses
  %.not.i = icmp samesign ugt i64 %i.ac, %i.g
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.lr.ph.i, %._crit_edge.i, %bb.c, %bb.d
  %.sroa.22.032.lcssa.sink.i = phi i64 [ %.sroa.22.0.lcssa.i, %._crit_edge.i ], [ %.sroa.01.0.lcssa.i, %bb.d ], [ %.sroa.22.0.lcssa.i, %bb.c ], [ %.sroa.22.032.i, %.lr.ph.i ]
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.22.032.lcssa.sink.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, i64 72, i1 false)
  %.sroa.7.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i64 %.sroa.427.0.copyload.i, ptr %.sroa.7.0..sroa_idx5.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !align !37, !noundef !8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4iterCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !409, !noalias !412, !nonnull !8, !noundef !8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !409, !noalias !412, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !415
  store ptr %i.a, ptr %i.o, align 8, !noalias !416
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.c ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.c ]
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.sroa.04.0.i.i.i.i
  %i.z = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %.sroa.02.0.i.i.i.i, ptr noundef nonnull align 8 %i.y), !noalias !409 ; 2 uses
  %i.aa = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.x
  br i1 %i.ab, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %bb.c

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.z, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !415
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !409, !noalias !412, !nonnull !8, !noundef !8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !409, !noalias !412, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !415
  store ptr %i.a, ptr %i.n, align 8, !noalias !419
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 5
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.04.0.i1.i.i.i = phi i64 [ 0, %bb.d ], [ %i.an, %bb.e ] ; 2 uses
  %.sroa.02.0.i2.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.d ], [ %i.am, %bb.e ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %.sroa.04.0.i1.i.i.i
  %i.am = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %.sroa.02.0.i2.i.i.i, ptr noundef nonnull align 8 %i.al), !noalias !409 ; 2 uses
  %i.an = add nuw i64 %.sroa.04.0.i1.i.i.i, 1     ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.ak
  br i1 %i.ao, label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.e

_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.e, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %.sroa.0.0.i3.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i ], [ %i.am, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !8 ; 2 uses
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %.sroa.0.0.i3.i.i.i)
  %.not = icmp ugt i64 %2, %.sroa.0.0.i
  br i1 %.not, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #32
  unreachable

bb.g:                                             ; preds = %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !428, !noalias !430, !noundef !8
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !428, !noalias !430, !noundef !8 ; 2 uses
  %i.av = load i64, ptr %.val, align 8, !range !120, !alias.scope !428, !noalias !430, !noundef !8 ; 2 uses
  %.not13.i.i = icmp ult i64 %i.au, %i.av
  %i.aw = select i1 %.not13.i.i, i64 0, i64 %i.av
  %.sroa.05.0.i.i = sub nuw i64 %i.au, %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !428, !noalias !430, !nonnull !8, !noundef !8
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %.sroa.05.0.i.i ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %.val16.i.i = load i64, ptr %i.ba, align 8, !noalias !431, !noundef !8 ; 2 uses
  %i.bb = icmp eq i64 %.val16.i.i, %2
  br i1 %i.bb, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.n, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !431
  call void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4iterCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val), !noalias !430
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.bc = load ptr, ptr %i.j, align 8, !alias.scope !432, !noalias !431, !nonnull !8, !noundef !8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !432, !noalias !431, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !435
  store ptr %i.a, ptr %i.i, align 8, !noalias !436
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = sub nuw i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 5
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.sroa.04.0.i.i.i.i2 = phi i64 [ 0, %bb.j ], [ %i.bm, %bb.k ] ; 2 uses
  %.sroa.02.0.i.i.i.i3 = phi i64 [ 0, %bb.j ], [ %i.bl, %bb.k ]
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %.sroa.04.0.i.i.i.i2
  %i.bl = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %.sroa.02.0.i.i.i.i3, ptr noundef nonnull align 8 %i.bk), !noalias !439 ; 2 uses
  %i.bm = add nuw i64 %.sroa.04.0.i.i.i.i2, 1     ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.bj
  br i1 %i.bn, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4, label %bb.k

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4: ; preds = %bb.k, %bb.i
  %.sroa.0.0.i.i.i.i5 = phi i64 [ 0, %bb.i ], [ %i.bl, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !435
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !432, !noalias !431, !nonnull !8, !noundef !8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !432, !noalias !431, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !435
  store ptr %i.a, ptr %i.h, align 8, !noalias !440
  %i.bs = icmp eq ptr %i.bp, %i.br
  br i1 %i.bs, label %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = sub nuw i64 %i.bt, %i.bu
  %i.bw = lshr exact i64 %i.bv, 5
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.04.0.i1.i.i.i6 = phi i64 [ 0, %bb.l ], [ %i.bz, %bb.m ] ; 2 uses
  %.sroa.02.0.i2.i.i.i7 = phi i64 [ %.sroa.0.0.i.i.i.i5, %bb.l ], [ %i.by, %bb.m ]
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %.sroa.04.0.i1.i.i.i6
  %i.by = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %.sroa.02.0.i2.i.i.i7, ptr noundef nonnull align 8 %i.bx), !noalias !439 ; 2 uses
  %i.bz = add nuw i64 %.sroa.04.0.i1.i.i.i6, 1    ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.bw
  br i1 %i.ca, label %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.m

_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.m, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4
  %.sroa.0.0.i3.i.i.i8 = phi i64 [ %.sroa.0.0.i.i.i.i5, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4 ], [ %i.by, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !431
  %.not14.i.i = icmp ugt i64 %2, %.sroa.0.0.i3.i.i.i8
  br i1 %.not14.i.i, label %bb.q, label %bb.r, !prof !9

bb.n:                                             ; preds = %bb.h
  %i.cb = icmp ugt i64 %.val16.i.i, %2
  br i1 %i.cb, label %bb.p, label %bb.i

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !431
  call void @_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf13copy_to_bytes(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef %2), !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !431
  invoke void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9pop_frontCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %bb.af unwind label %bb.ae, !noalias !430
end_hunk_1
