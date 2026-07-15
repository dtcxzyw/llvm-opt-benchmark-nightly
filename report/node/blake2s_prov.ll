inline.NumInlined: 330
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@blake2s_IV = internal unnamed_addr constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ossl_blake2s_param_init(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0) local_unnamed_addr #0 {
bb.a:
  store <4 x i8> <i8 32, i8 0, i8 1, i8 1>, ptr %0, align 1, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ossl_blake2s_param_set_digest_length(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ossl_blake2s_param_set_key_length(ptr nofree noundef writeonly captures(none) initializes((1, 2)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %i.a, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ossl_blake2s_param_set_personal(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %1, i64 %2, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.c = sub i64 8, %2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 0, i64 %i.c, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ossl_blake2s_param_set_salt(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %1, i64 %2, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.c = sub i64 8, %2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 0, i64 %i.c, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ossl_blake2s_init(ptr nofree noundef writeonly captures(none) initializes((0, 128)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !5
  %i.b = load i8, ptr %1, align 1, !tbaa !10
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.c, ptr %i.d, align 8, !tbaa !13
  %.val.i = load i32, ptr %1, align 1
  %i.e = xor i32 %.val.i, 1779033703
  store i32 %i.e, ptr %0, align 8, !tbaa !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.1.i = load i32, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = xor i32 %.val.1.i, -1150833019
  store i32 %i.h, ptr %i.g, align 4, !tbaa !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.2.i = load i32, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = xor i32 %.val.2.i, 1013904242
  store i32 %i.k, ptr %i.j, align 8, !tbaa !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val.3.i = load i32, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = xor i32 %.val.3.i, -1521486534
  store i32 %i.n, ptr %i.m, align 4, !tbaa !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.4.i = load i32, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = xor i32 %.val.4.i, 1359893119
  store i32 %i.q, ptr %i.p, align 8, !tbaa !5
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val.5.i = load i32, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = xor i32 %.val.5.i, -1694144372
  store i32 %i.t, ptr %i.s, align 4, !tbaa !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.6.i = load i32, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = xor i32 %.val.6.i, 528734635
  store i32 %i.w, ptr %i.v, align 8, !tbaa !5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val.7.i = load i32, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = xor i32 %.val.7.i, 1541459225
  store i32 %i.z, ptr %i.y, align 4, !tbaa !5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ossl_blake2s_init_key(ptr nofree noundef writeonly captures(none) initializes((0, 128)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
ossl_blake2s_update.exit.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !5
  %i.c = load i8, ptr %1, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.d, ptr %i.e, align 8, !tbaa !13
  %.val.i.a = load i32, ptr %1, align 1           ; 2 uses
  %i.f = xor i32 %.val.i.a, 1779033703
  store i32 %i.f, ptr %0, align 8, !tbaa !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.1.i = load i32, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = xor i32 %.val.1.i, -1150833019
  store i32 %i.i, ptr %i.h, align 4, !tbaa !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.2.i = load i32, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = xor i32 %.val.2.i, 1013904242
  store i32 %i.l, ptr %i.k, align 8, !tbaa !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val.3.i = load i32, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = xor i32 %.val.3.i, -1521486534
  store i32 %i.o, ptr %i.n, align 4, !tbaa !5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.4.i = load i32, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = xor i32 %.val.4.i, 1359893119
  store i32 %i.r, ptr %i.q, align 8, !tbaa !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val.5.i = load i32, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = xor i32 %.val.5.i, -1694144372
  store i32 %i.u, ptr %i.t, align 4, !tbaa !5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.6.i = load i32, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = xor i32 %.val.6.i, 528734635
  store i32 %i.x, ptr %i.w, align 8, !tbaa !5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val.7.i = load i32, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = xor i32 %.val.7.i, 1541459225
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.ab = lshr i32 %.val.i.a, 8
  %i.ac = and i32 %i.ab, 255
  %i.ad = zext nneg i32 %i.ac to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %2, i64 %i.ad, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.af, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false)
  store i64 64, ptr %i.ae, align 8, !tbaa !16
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ossl_blake2s_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = sub i64 64, %i.b                         ; 4 uses
  %i.d = icmp ugt i64 %2, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %1, i64 %i.c, i1 false)
  tail call fastcc void @blake2s_compress(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 64)
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.h = sub i64 %2, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.033 = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]  ; 3 uses
  %.0 = phi i64 [ %i.h, %bb.c ], [ %2, %bb.b ]    ; 4 uses
  %i.i = icmp ugt i64 %.0, 64
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = and i64 %.0, 63                          ; 2 uses
  %.not39 = icmp eq i64 %i.j, 0
  %i.k = select i1 %.not39, i64 64, i64 %i.j      ; 2 uses
  %i.l = sub nuw i64 %.0, %i.k                    ; 2 uses
  tail call fastcc void @blake2s_compress(ptr noundef nonnull %0, ptr noundef %.033, i64 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.033, i64 %i.l
  %.pre = load i64, ptr %i.a, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %i.n = phi i64 [ %.pre, %bb.e ], [ 0, %bb.d ], [ %i.b, %bb.a ]
  %.134 = phi ptr [ %i.m, %bb.e ], [ %.033, %bb.d ], [ %1, %bb.a ]
  %.1 = phi i64 [ %i.k, %bb.e ], [ %.0, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %.134, i64 %.1, i1 false)
  %i.q = load i64, ptr %i.a, align 8, !tbaa !16
  %i.r = add i64 %i.q, %.1
  store i64 %i.r, ptr %i.a, align 8, !tbaa !16
  ret i32 1
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @blake2s_compress(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
.preheader:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !5
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.sroa.62.0.copyload = load i32, ptr %.sroa.62.0..sroa_idx, align 4, !tbaa !5
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.121.0.copyload = load i32, ptr %.sroa.121.0..sroa_idx, align 4, !tbaa !5
  %.sroa.180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %.sroa.180.0.copyload = load i32, ptr %.sroa.180.0..sroa_idx, align 4, !tbaa !5
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.239.0.copyload = load i32, ptr %.sroa.239.0..sroa_idx, align 4, !tbaa !5
  %.sroa.303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.sroa.303.0.copyload = load i32, ptr %.sroa.303.0..sroa_idx, align 4, !tbaa !5
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.370.0.copyload = load i32, ptr %.sroa.370.0..sroa_idx, align 4, !tbaa !5
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %.sroa.437.0.copyload = load i32, ptr %.sroa.437.0..sroa_idx, align 4, !tbaa !5
  %i.a = tail call i64 @llvm.umin.i64(i64 %2, i64 64) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = trunc nuw nsw i64 %i.a to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.e, align 8, !tbaa !5
  %i.h = load i32, ptr %i.f, align 4, !tbaa !5
  %.promoted = load i32, ptr %i.b, align 8, !tbaa !5
  %.promoted432 = load i32, ptr %i.d, align 4, !tbaa !5
  %.promoted433 = load i32, ptr %0, align 8, !tbaa !5
  %.sroa.62.0..sroa_idx.promoted = load i32, ptr %.sroa.62.0..sroa_idx, align 4, !tbaa !5
  %.sroa.121.0..sroa_idx.promoted = load i32, ptr %.sroa.121.0..sroa_idx, align 8, !tbaa !5
  %.sroa.180.0..sroa_idx.promoted = load i32, ptr %.sroa.180.0..sroa_idx, align 4, !tbaa !5
  %.sroa.239.0..sroa_idx.promoted = load i32, ptr %.sroa.239.0..sroa_idx, align 8, !tbaa !5
  %.sroa.303.0..sroa_idx.promoted = load i32, ptr %.sroa.303.0..sroa_idx, align 4, !tbaa !5
  %.sroa.370.0..sroa_idx.promoted = load i32, ptr %.sroa.370.0..sroa_idx, align 8, !tbaa !5
  %.sroa.437.0..sroa_idx.promoted = load i32, ptr %.sroa.437.0..sroa_idx, align 4, !tbaa !5
  %invariant.op = xor i32 %i.g, 528734635
  %invariant.op434 = xor i32 %i.h, 1541459225
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %bb.a
  %i.i = phi i32 [ %.sroa.437.0..sroa_idx.promoted, %.preheader ], [ %i.aro, %bb.a ]
  %i.j = phi i32 [ %.sroa.370.0..sroa_idx.promoted, %.preheader ], [ %i.arm, %bb.a ]
  %i.k = phi i32 [ %.sroa.303.0..sroa_idx.promoted, %.preheader ], [ %i.ark, %bb.a ]
  %i.l = phi i32 [ %.sroa.239.0..sroa_idx.promoted, %.preheader ], [ %i.ari, %bb.a ]
  %i.m = phi i32 [ %.sroa.180.0..sroa_idx.promoted, %.preheader ], [ %i.arg, %bb.a ]
  %i.n = phi i32 [ %.sroa.121.0..sroa_idx.promoted, %.preheader ], [ %i.are, %bb.a ]
  %i.o = phi i32 [ %.sroa.62.0..sroa_idx.promoted, %.preheader ], [ %i.arc, %bb.a ]
  %i.p = phi i32 [ %.promoted433, %.preheader ], [ %i.ara, %bb.a ]
  %i.q = phi i32 [ %.promoted432, %.preheader ], [ %i.w, %bb.a ]
  %i.r = phi i32 [ %.promoted, %.preheader ], [ %i.s, %bb.a ]
  %.sroa.437.0 = phi i32 [ %.sroa.437.0.copyload, %.preheader ], [ %i.aro, %bb.a ] ; 2 uses
  %.sroa.370.0 = phi i32 [ %.sroa.370.0.copyload, %.preheader ], [ %i.arm, %bb.a ] ; 2 uses
  %.sroa.303.0 = phi i32 [ %.sroa.303.0.copyload, %.preheader ], [ %i.ark, %bb.a ] ; 2 uses
  %.sroa.239.0 = phi i32 [ %.sroa.239.0.copyload, %.preheader ], [ %i.ari, %bb.a ] ; 2 uses
  %.sroa.180.0 = phi i32 [ %.sroa.180.0.copyload, %.preheader ], [ %i.arg, %bb.a ]
  %.sroa.121.0 = phi i32 [ %.sroa.121.0.copyload, %.preheader ], [ %i.are, %bb.a ]
  %.sroa.62.0 = phi i32 [ %.sroa.62.0.copyload, %.preheader ], [ %i.arc, %bb.a ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %.preheader ], [ %i.ara, %bb.a ]
  %.034 = phi i64 [ %2, %.preheader ], [ %i.arq, %bb.a ]
  %.0 = phi ptr [ %1, %.preheader ], [ %i.arp, %bb.a ] ; 17 uses
  %.sroa.0332.0.copyload = load i32, ptr %.0, align 1 ; 10 uses
  %.sroa.10.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.17.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.24.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.31.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %.sroa.31.0.copyload = load i32, ptr %.sroa.31.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.38.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %.sroa.38.0.copyload = load i32, ptr %.sroa.38.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.46.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %.sroa.46.0.copyload = load i32, ptr %.sroa.46.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.53.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %.sroa.53.0.copyload = load i32, ptr %.sroa.53.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.60.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %.sroa.60.0.copyload = load i32, ptr %.sroa.60.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.67.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 36
  %.sroa.67.0.copyload = load i32, ptr %.sroa.67.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.74.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %.sroa.74.0.copyload = load i32, ptr %.sroa.74.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.81.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 44
  %.sroa.81.0.copyload = load i32, ptr %.sroa.81.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.88.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %.sroa.88.0.copyload = load i32, ptr %.sroa.88.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.95.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 52
  %.sroa.95.0.copyload = load i32, ptr %.sroa.95.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.102.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %.sroa.102.0.copyload = load i32, ptr %.sroa.102.0..0.sroa_idx, align 1 ; 10 uses
  %.sroa.109.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 60
  %.sroa.109.0.copyload = load i32, ptr %.sroa.109.0..0.sroa_idx, align 1 ; 10 uses
  %i.s = add i32 %i.r, %i.c                       ; 4 uses
  store i32 %i.s, ptr %i.b, align 8, !tbaa !5
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ugt i64 %i.a, %i.t
  %i.v = zext i1 %i.u to i32
  %i.w = add i32 %i.q, %i.v                       ; 3 uses
  store i32 %i.w, ptr %i.d, align 4, !tbaa !5
  %i.x = add i32 %.sroa.239.0, %.sroa.0.0
  %i.y = add i32 %i.x, %.sroa.0332.0.copyload     ; 2 uses
  %i.z = xor i32 %i.s, %i.y
  %i.aa = xor i32 %i.z, 1359893119                ; 2 uses
  %i.ab = tail call i32 @llvm.fshl.i32(i32 %i.aa, i32 %i.aa, i32 16) ; 2 uses
  %i.ac = add i32 %i.ab, 1779033703               ; 2 uses
  %i.ad = xor i32 %i.ac, %.sroa.239.0             ; 2 uses
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %i.ad, i32 %i.ad, i32 20) ; 2 uses
  %i.af = add i32 %.sroa.10.0.copyload, %i.y
  %i.ag = add i32 %i.af, %i.ae                    ; 2 uses
  %i.ah = xor i32 %i.ag, %i.ab                    ; 2 uses
  %i.ai = tail call i32 @llvm.fshl.i32(i32 %i.ah, i32 %i.ah, i32 24) ; 2 uses
  %i.aj = add i32 %i.ai, %i.ac                    ; 2 uses
  %i.ak = xor i32 %i.aj, %i.ae                    ; 2 uses
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 25) ; 2 uses
  %i.am = add i32 %.sroa.303.0, %.sroa.62.0
  %i.an = add i32 %i.am, %.sroa.17.0.copyload     ; 2 uses
  %i.ao = xor i32 %i.w, %i.an
  %i.ap = xor i32 %i.ao, -1694144372              ; 2 uses
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %i.ap, i32 %i.ap, i32 16) ; 2 uses
  %i.ar = add i32 %i.aq, -1150833019              ; 2 uses
  %i.as = xor i32 %i.ar, %.sroa.303.0             ; 2 uses
  %i.at = tail call i32 @llvm.fshl.i32(i32 %i.as, i32 %i.as, i32 20) ; 2 uses
  %i.au = add i32 %.sroa.24.0.copyload, %i.an
  %i.av = add i32 %i.au, %i.at                    ; 2 uses
  %i.aw = xor i32 %i.av, %i.aq                    ; 2 uses
  %i.ax = tail call i32 @llvm.fshl.i32(i32 %i.aw, i32 %i.aw, i32 24) ; 2 uses
  %i.ay = add i32 %i.ax, %i.ar                    ; 2 uses
  %i.az = xor i32 %i.ay, %i.at                    ; 2 uses
  %i.ba = tail call i32 @llvm.fshl.i32(i32 %i.az, i32 %i.az, i32 25) ; 2 uses
  %i.bb = add i32 %.sroa.370.0, %.sroa.121.0
  %i.bc = add i32 %i.bb, %.sroa.31.0.copyload     ; 2 uses
  %.reass.reass = xor i32 %i.bc, %invariant.op    ; 2 uses
  %i.bd = tail call i32 @llvm.fshl.i32(i32 %.reass.reass, i32 %.reass.reass, i32 16) ; 2 uses
  %i.be = add i32 %i.bd, 1013904242               ; 2 uses
  %i.bf = xor i32 %i.be, %.sroa.370.0             ; 2 uses
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 20) ; 2 uses
  %i.bh = add i32 %.sroa.38.0.copyload, %i.bc
end_hunk_0
