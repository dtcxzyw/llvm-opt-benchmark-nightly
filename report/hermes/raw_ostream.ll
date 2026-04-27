inline.NumInlined: 299
inline.NumDeleted: 139
begin_hunk_0_@_ZNK4llvh19formatv_object_base6formatERNS_11raw_ostreamE:bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %.sroa.023.028 = phi ptr [ %i.b, %.lr.ph ], [ %i.ax, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit ] ; 13 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.023.028) ]
  %i.l = load i32, ptr %.sroa.023.028, align 8, !tbaa !48
  switch i32 %i.l, label %bb.g [
    i32 0, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
end_hunk_0
begin_hunk_1_@_ZNK4llvh19formatv_object_base6formatERNS_11raw_ostreamE:bb.a
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.l:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 40
end_hunk_1
begin_hunk_2_@_ZN4llvh11raw_ostreamlsERKNS_14FormattedBytesE:bb.a
bb.e:                                             ; preds = %._crit_edge273, %_ZN4llvh11raw_ostreamlsEc.exit107
  %.048227 = phi i64 [ 0, %._crit_edge273 ], [ %i.kz, %_ZN4llvh11raw_ostreamlsEc.exit107 ] ; 2 uses
  %.sroa.6151.0226 = phi i64 [ %.fr, %._crit_edge273 ], [ %i.kx, %_ZN4llvh11raw_ostreamlsEc.exit107 ] ; 2 uses
  %.sroa.0150.0224 = phi ptr [ %.sroa.0150.0.copyload, %._crit_edge273 ], [ %i.ky, %_ZN4llvh11raw_ostreamlsEc.exit107 ] ; 6 uses
  %i.ar = load i32, ptr %i.aj, align 8, !tbaa !100 ; 3 uses
  %i.as = icmp ult i32 %i.ar, 80
  br i1 %i.as, label %bb.f, label %.preheader.i.i
end_hunk_2
begin_hunk_3_@_ZN4llvh11raw_ostreamlsERKNS_14FormattedBytesE:bb.a
  br i1 %.not228, label %._crit_edge212, label %_ZN4llvh11raw_ostreamlsEPKc.exit57.peel

_ZN4llvh11raw_ostreamlsEPKc.exit57.peel:          ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.0224) ]
  %i.ej = load i8, ptr %.sroa.0150.0224, align 1, !tbaa !24
  %i.ek = zext i8 %i.ej to i64
  call void @_ZN4llvh9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleENS_8OptionalImEE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.ek, i32 noundef %not., i64 2, i8 1) #27
end_hunk_3
begin_hunk_4_@_ZN4llvh14raw_fd_ostreamD2Ev:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %.sroa.21.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i2, align 8, !tbaa !108, !nonnull !81, !noundef !81 ; 2 uses
  %i.ag = load ptr, ptr %.sroa.21.0.copyload.i, align 8, !tbaa !7, !noalias !124
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !124
end_hunk_4
