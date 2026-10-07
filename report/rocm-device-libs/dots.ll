Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/dots?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@__ockl_fdot2:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define internal fastcc noundef float @amdgcn_fdot2(<2 x half> noundef %0, <2 x half> noundef %1, float noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call float @llvm.amdgcn.fdot2(<2 x half> %0, <2 x half> %1, float %2, i1 true)
  ret float %i.a
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden i32 @__ockl_sdot2(<2 x i16> noundef %0, <2 x i16> noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr addrspace(4) @__oclc_ISA_version, align 4, !tbaa !9 ; 2 uses
  %i.b = insertelement <4 x i32> <i32 9009, i32 10100, i32 poison, i32 9006>, i32 %i.a, i64 2 ; 2 uses
  %i.c = insertelement <4 x i32> <i32 poison, i32 poison, i32 10999, i32 poison>, i32 %i.a, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0> ; 2 uses
  %i.e = icmp eq <4 x i32> %i.b, %i.d
  %i.f = icmp sgt <4 x i32> %i.b, %i.d
  %i.g = shufflevector <4 x i1> %i.e, <4 x i1> %i.f, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.h = bitcast <4 x i1> %i.g to i4
  %.not = icmp eq i4 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext <2 x i16> %0 to <2 x i32>
  %i.j = sext <2 x i16> %1 to <2 x i32>
  %i.k = mul nsw <2 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.k) ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @__ockl_add_sat_i32(i32 noundef %i.l, i32 noundef %2) #10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.n = add nsw i32 %i.l, %2
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = tail call fastcc i32 @amdgcn_sdot2(<2 x i16> noundef %0, <2 x i16> noundef %1, i32 noundef %2, i1 noundef zeroext %3) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %i.o, %bb.e ], [ %i.m, %bb.c ], [ %i.n, %bb.d ]
  ret i32 %.0
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare i32 @__ockl_add_sat_i32(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define internal fastcc noundef i32 @amdgcn_sdot2(<2 x i16> noundef %0, <2 x i16> noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @llvm.amdgcn.sdot2(<2 x i16> %0, <2 x i16> %1, i32 %2, i1 true)
  %i.b = tail call i32 @llvm.amdgcn.sdot2(<2 x i16> %0, <2 x i16> %1, i32 %2, i1 false)
  %.0 = select i1 %3, i32 %i.a, i32 %i.b
  ret i32 %.0
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden i32 @__ockl_udot2(<2 x i16> noundef %0, <2 x i16> noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr addrspace(4) @__oclc_ISA_version, align 4, !tbaa !9 ; 2 uses
  %i.b = insertelement <4 x i32> <i32 9009, i32 10100, i32 poison, i32 9006>, i32 %i.a, i64 2 ; 2 uses
  %i.c = insertelement <4 x i32> <i32 poison, i32 poison, i32 10999, i32 poison>, i32 %i.a, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0> ; 2 uses
  %i.e = icmp eq <4 x i32> %i.b, %i.d
  %i.f = icmp sgt <4 x i32> %i.b, %i.d
  %i.g = shufflevector <4 x i1> %i.e, <4 x i1> %i.f, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.h = bitcast <4 x i1> %i.g to i4
  %.not = icmp eq i4 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext <2 x i16> %0 to <2 x i32>
  %i.j = zext <2 x i16> %1 to <2 x i32>
  %i.k = mul nuw <2 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.k) ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @__ockl_add_sat_u32(i32 noundef %i.l, i32 noundef %2) #10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.n = add i32 %i.l, %2
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = tail call fastcc i32 @amdgcn_udot2(<2 x i16> noundef %0, <2 x i16> noundef %1, i32 noundef %2, i1 noundef zeroext %3) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %i.o, %bb.e ], [ %i.m, %bb.c ], [ %i.n, %bb.d ]
  ret i32 %.0
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare i32 @__ockl_add_sat_u32(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define internal fastcc noundef i32 @amdgcn_udot2(<2 x i16> noundef %0, <2 x i16> noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @llvm.amdgcn.udot2(<2 x i16> %0, <2 x i16> %1, i32 %2, i1 true)
  %i.b = tail call i32 @llvm.amdgcn.udot2(<2 x i16> %0, <2 x i16> %1, i32 %2, i1 false)
  %.0 = select i1 %3, i32 %i.a, i32 %i.b
  ret i32 %.0
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden i32 @__ockl_sdot4(<4 x i8> noundef %0, <4 x i8> noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr addrspace(4) @__oclc_ISA_version, align 4, !tbaa !9 ; 3 uses
  %i.b = insertelement <4 x i32> <i32 9009, i32 10100, i32 poison, i32 9006>, i32 %i.a, i64 2 ; 2 uses
  %i.c = insertelement <4 x i32> <i32 poison, i32 poison, i32 12499, i32 poison>, i32 %i.a, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0> ; 2 uses
  %i.e = icmp eq <4 x i32> %i.b, %i.d
  %i.f = icmp sgt <4 x i32> %i.b, %i.d
  %i.g = shufflevector <4 x i1> %i.e, <4 x i1> %i.f, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.h = bitcast <4 x i1> %i.g to i4
  %.not = icmp eq i4 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext <4 x i8> %0 to <4 x i16>
  %i.j = sext <4 x i8> %1 to <4 x i16>
  %i.k = mul nsw <4 x i16> %i.j, %i.i             ; 4 uses
  %i.l = extractelement <4 x i16> %i.k, i64 0
  %i.m = sext i16 %i.l to i32
  %i.n = extractelement <4 x i16> %i.k, i64 1
  %i.o = sext i16 %i.n to i32
  %i.p = add nsw i32 %i.m, %i.o
  %i.q = extractelement <4 x i16> %i.k, i64 2
  %i.r = sext i16 %i.q to i32
  %i.s = add nsw i32 %i.p, %i.r
  %i.t = extractelement <4 x i16> %i.k, i64 3
  %i.u = sext i16 %i.t to i32
  %i.v = add nsw i32 %i.s, %i.u                   ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = tail call i32 @__ockl_add_sat_i32(i32 noundef %i.v, i32 noundef %2) #10
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.x = add nsw i32 %i.v, %2
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.y = icmp samesign ugt i32 %i.a, 10999
  %i.z = bitcast <4 x i8> %0 to i32               ; 2 uses
  %i.aa = bitcast <4 x i8> %1 to i32              ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call fastcc i32 @amdgcn_sudot4(i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %2, i1 noundef zeroext %3) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = tail call fastcc i32 @amdgcn_sdot4(i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %2, i1 noundef zeroext %3) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.f
  %.0 = phi i32 [ %i.ac, %bb.g ], [ %i.ab, %bb.f ], [ %i.w, %bb.c ], [ %i.x, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define internal fastcc noundef i32 @amdgcn_sudot4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @llvm.amdgcn.sudot4(i1 true, i32 %0, i1 true, i32 %1, i32 %2, i1 true)
  %i.b = tail call i32 @llvm.amdgcn.sudot4(i1 true, i32 %0, i1 true, i32 %1, i32 %2, i1 false)
  %.0 = select i1 %3, i32 %i.a, i32 %i.b
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define internal fastcc noundef i32 @amdgcn_sdot4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @llvm.amdgcn.sdot4(i32 %0, i32 %1, i32 %2, i1 true)
  %i.b = tail call i32 @llvm.amdgcn.sdot4(i32 %0, i32 %1, i32 %2, i1 false)
  %.0 = select i1 %3, i32 %i.a, i32 %i.b
  ret i32 %.0
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden i32 @__ockl_udot4(<4 x i8> noundef %0, <4 x i8> noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr addrspace(4) @__oclc_ISA_version, align 4, !tbaa !9 ; 2 uses
  %i.b = insertelement <4 x i32> <i32 9009, i32 10100, i32 poison, i32 9006>, i32 %i.a, i64 2 ; 2 uses
  %i.c = insertelement <4 x i32> <i32 poison, i32 poison, i32 12499, i32 poison>, i32 %i.a, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0> ; 2 uses
  %i.e = icmp eq <4 x i32> %i.b, %i.d
  %i.f = icmp sgt <4 x i32> %i.b, %i.d
  %i.g = shufflevector <4 x i1> %i.e, <4 x i1> %i.f, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.h = bitcast <4 x i1> %i.g to i4
  %.not = icmp eq i4 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = zext <4 x i8> %0 to <4 x i32>
  %5 = zext <4 x i8> %1 to <4 x i32>
  %6 = mul nuw nsw <4 x i32> %5, %4
  %7 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %6) ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @__ockl_add_sat_u32(i32 noundef %7, i32 noundef %2) #10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = add i32 %7, %2
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = bitcast <4 x i8> %0 to i32
  %i.l = bitcast <4 x i8> %1 to i32
  %i.m = tail call fastcc i32 @amdgcn_udot4(i32 noundef %i.k, i32 noundef %i.l, i32 noundef %2, i1 noundef zeroext %3) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %i.m, %bb.e ], [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define internal fastcc noundef i32 @amdgcn_udot4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @llvm.amdgcn.udot4(i32 %0, i32 %1, i32 %2, i1 true)
  %i.b = tail call i32 @llvm.amdgcn.udot4(i32 %0, i32 %1, i32 %2, i1 false)
  %.0 = select i1 %3, i32 %i.a, i32 %i.b
  ret i32 %.0
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden i32 @__ockl_sdot8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr addrspace(4) @__oclc_ISA_version, align 4, !tbaa !9 ; 3 uses
  %i.b = insertelement <4 x i32> <i32 9009, i32 10100, i32 poison, i32 9006>, i32 %i.a, i64 2 ; 2 uses
  %i.c = insertelement <4 x i32> <i32 poison, i32 poison, i32 12499, i32 poison>, i32 %i.a, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0> ; 2 uses
  %i.e = icmp eq <4 x i32> %i.b, %i.d
  %i.f = icmp sgt <4 x i32> %i.b, %i.d
  %i.g = shufflevector <4 x i1> %i.e, <4 x i1> %i.f, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.h = bitcast <4 x i1> %i.g to i4
  %.not = icmp eq i4 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.j = insertelement <4 x i32> %i.i, i32 %1, i64 1
  %i.k = shufflevector <4 x i32> %i.j, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.l = shl <4 x i32> %i.k, <i32 28, i32 28, i32 24, i32 24>
  %i.m = ashr <4 x i32> %i.l, splat (i32 28)      ; 3 uses
  %i.n = shufflevector <4 x i32> %i.m, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.o = tail call i32 @llvm.vector.reduce.mul.v2i32(<2 x i32> %i.n)
  %shift38 = shufflevector <4 x i32> %i.m, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop39 = mul nsw <4 x i32> %shift38, %i.m
  %i.p = extractelement <4 x i32> %foldExtExtBinop39, i64 2
  %i.q = shl <4 x i32> %i.k, <i32 20, i32 20, i32 16, i32 16>
  %i.r = ashr <4 x i32> %i.q, splat (i32 28)      ; 3 uses
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.t = tail call i32 @llvm.vector.reduce.mul.v2i32(<2 x i32> %i.s)
  %shift44 = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop45 = mul nsw <4 x i32> %shift44, %i.r
  %i.u = extractelement <4 x i32> %foldExtExtBinop45, i64 2
  %i.v = shl <4 x i32> %i.k, <i32 12, i32 12, i32 8, i32 8>
  %i.w = ashr <4 x i32> %i.v, splat (i32 28)      ; 3 uses
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.y = tail call i32 @llvm.vector.reduce.mul.v2i32(<2 x i32> %i.x)
  %shift50 = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop51 = mul nsw <4 x i32> %shift50, %i.w
  %i.z = extractelement <4 x i32> %foldExtExtBinop51, i64 2
  %i.aa = shl i32 %0, 4
  %i.ab = ashr i32 %i.aa, 28
  %i.ac = shl i32 %1, 4
  %i.ad = ashr i32 %i.ac, 28
  %i.ae = mul nsw i32 %i.ad, %i.ab
  %i.af = ashr i32 %0, 28
  %i.ag = ashr i32 %1, 28
  %i.ah = mul nsw i32 %i.ag, %i.af
  %i.ai = add nsw i32 %i.p, %i.ah
  %i.aj = add nsw i32 %i.ai, %i.o
  %i.ak = add nsw i32 %i.aj, %i.t
  %i.al = add nsw i32 %i.ak, %i.u
  %i.am = add nsw i32 %i.al, %i.y
  %i.an = add nsw i32 %i.am, %i.z
  %i.ao = add nsw i32 %i.an, %i.ae                ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = tail call i32 @__ockl_add_sat_i32(i32 noundef %i.ao, i32 noundef %2) #10
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.aq = add nsw i32 %i.ao, %2
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.ar = icmp samesign ugt i32 %i.a, 10999
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = tail call fastcc i32 @amdgcn_sudot8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.at = tail call fastcc i32 @amdgcn_sdot8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.f
  %.0 = phi i32 [ %i.at, %bb.g ], [ %i.as, %bb.f ], [ %i.ap, %bb.c ], [ %i.aq, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define internal fastcc noundef i32 @amdgcn_sudot8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @llvm.amdgcn.sudot8(i1 true, i32 %0, i1 true, i32 %1, i32 %2, i1 true)
  %i.b = tail call i32 @llvm.amdgcn.sudot8(i1 true, i32 %0, i1 true, i32 %1, i32 %2, i1 false)
  %.0 = select i1 %3, i32 %i.a, i32 %i.b
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define internal fastcc noundef i32 @amdgcn_sdot8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @llvm.amdgcn.sdot8(i32 %0, i32 %1, i32 %2, i1 true)
  %i.b = tail call i32 @llvm.amdgcn.sdot8(i32 %0, i32 %1, i32 %2, i1 false)
  %.0 = select i1 %3, i32 %i.a, i32 %i.b
  ret i32 %.0
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden i32 @__ockl_udot8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr addrspace(4) @__oclc_ISA_version, align 4, !tbaa !9 ; 2 uses
  %i.b = insertelement <4 x i32> <i32 9009, i32 10100, i32 poison, i32 9006>, i32 %i.a, i64 2 ; 2 uses
  %i.c = insertelement <4 x i32> <i32 poison, i32 poison, i32 12499, i32 poison>, i32 %i.a, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0> ; 2 uses
  %i.e = icmp eq <4 x i32> %i.b, %i.d
  %i.f = icmp sgt <4 x i32> %i.b, %i.d
  %i.g = shufflevector <4 x i1> %i.e, <4 x i1> %i.f, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.h = bitcast <4 x i1> %i.g to i4
  %.not = icmp eq i4 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %0, 15
  %i.j = and i32 %1, 15
  %i.k = mul nuw nsw i32 %i.j, %i.i
  %i.l = lshr i32 %0, 4
  %i.m = and i32 %i.l, 15
  %i.n = lshr i32 %1, 4
  %i.o = and i32 %i.n, 15
  %i.p = mul nuw nsw i32 %i.o, %i.m
  %i.q = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.r = insertelement <4 x i32> %i.q, i32 %1, i64 1
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.t = lshr <4 x i32> %i.s, <i32 8, i32 8, i32 12, i32 12>
  %i.u = and <4 x i32> %i.t, splat (i32 15)       ; 3 uses
  %i.v = shufflevector <4 x i32> %i.u, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.w = tail call i32 @llvm.vector.reduce.mul.v2i32(<2 x i32> %i.v)
  %shift32 = shufflevector <4 x i32> %i.u, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop33 = mul nuw nsw <4 x i32> %shift32, %i.u
  %i.x = extractelement <4 x i32> %foldExtExtBinop33, i64 2
  %i.y = lshr <4 x i32> %i.s, <i32 16, i32 16, i32 20, i32 20>
  %i.z = and <4 x i32> %i.y, splat (i32 15)       ; 3 uses
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ab = tail call i32 @llvm.vector.reduce.mul.v2i32(<2 x i32> %i.aa)
  %shift38 = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop39 = mul nuw nsw <4 x i32> %shift38, %i.z
  %i.ac = extractelement <4 x i32> %foldExtExtBinop39, i64 2
  %i.ad = lshr i32 %0, 24
  %i.ae = and i32 %i.ad, 15
  %i.af = lshr i32 %1, 24
  %i.ag = and i32 %i.af, 15
  %i.ah = mul nuw nsw i32 %i.ag, %i.ae
  %i.ai = lshr i32 %0, 28
  %i.aj = lshr i32 %1, 28
  %i.ak = mul nuw nsw i32 %i.aj, %i.ai
  %i.al = add nuw nsw i32 %i.ak, %i.k
  %i.am = add nuw nsw i32 %i.al, %i.p
  %i.an = add nuw nsw i32 %i.am, %i.w
  %i.ao = add nuw nsw i32 %i.an, %i.x
  %i.ap = add nuw nsw i32 %i.ao, %i.ab
  %i.aq = add nuw nsw i32 %i.ap, %i.ac
  %i.ar = add nuw nsw i32 %i.aq, %i.ah            ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.as = tail call i32 @__ockl_add_sat_u32(i32 noundef %i.ar, i32 noundef %2) #10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.at = add i32 %i.ar, %2
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.au = tail call fastcc i32 @amdgcn_udot8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %i.au, %bb.e ], [ %i.as, %bb.c ], [ %i.at, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define internal fastcc noundef i32 @amdgcn_udot8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @llvm.amdgcn.udot8(i32 %0, i32 %1, i32 %2, i1 true)
  %i.b = tail call i32 @llvm.amdgcn.udot8(i32 %0, i32 %1, i32 %2, i1 false)
  %.0 = select i1 %3, i32 %i.a, i32 %i.b
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.fdot2(<2 x half>, <2 x half>, float, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.sdot2(<2 x i16>, <2 x i16>, i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.udot2(<2 x i16>, <2 x i16>, i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.sudot4(i1 immarg, i32, i1 immarg, i32, i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.sdot4(i32, i32, i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.udot4(i32, i32, i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.sudot8(i1 immarg, i32, i1 immarg, i32, i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.sdot8(i32, i32, i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.udot8(i32, i32, i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v2i32(<2 x i32>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+dot10-insts" }
attributes #2 = { convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+dot2-insts" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+dot8-insts" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+dot1-insts" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+dot7-insts" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { convergent nounwind willreturn memory(none) }

!opencl.ocl.version = !{!0}
!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 2, i32 0}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
end_hunk_0
