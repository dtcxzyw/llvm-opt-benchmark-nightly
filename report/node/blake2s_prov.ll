Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/blake2s_prov?download=true
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
  store <4 x i8> <i8 32, i8 0, i8 1, i8 1>, ptr %0, align 1, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ossl_blake2s_param_set_digest_length(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ossl_blake2s_param_set_key_length(ptr nofree noundef writeonly captures(none) initializes((1, 2)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %i.a, align 1, !tbaa !20
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
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 32
  %i.d = add i64 %i.a, 128
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !12

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !13
  %i.f = load i8, ptr %1, align 1, !tbaa !11
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.g, ptr %i.h, align 8, !tbaa !16
  %i.i = load <4 x i32>, ptr %1, align 1
  %i.j = xor <4 x i32> %i.i, <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>
  store <4 x i32> %i.j, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load <4 x i32>, ptr %i.k, align 1
  %i.n = xor <4 x i32> %i.m, <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>
  store <4 x i32> %i.n, ptr %i.l, align 8, !tbaa !13
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.o, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !13
  %i.p = load i8, ptr %1, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.q, ptr %i.r, align 8, !tbaa !16
  %.val.i.scalar = load i32, ptr %1, align 1
  %i.s = xor i32 %.val.i.scalar, 1779033703
  store i32 %i.s, ptr %0, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.1.i.scalar = load i32, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = xor i32 %.val.1.i.scalar, -1150833019
  store i32 %i.v, ptr %i.u, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.2.i.scalar = load i32, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = xor i32 %.val.2.i.scalar, 1013904242
  store i32 %i.y, ptr %i.x, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val.3.i.scalar = load i32, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = xor i32 %.val.3.i.scalar, -1521486534
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.4.i.scalar = load i32, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = xor i32 %.val.4.i.scalar, 1359893119
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val.5.i.scalar = load i32, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ah = xor i32 %.val.5.i.scalar, -1694144372
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.6.i.scalar = load i32, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = xor i32 %.val.6.i.scalar, 528734635
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val.7.i.scalar = load i32, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.an = xor i32 %.val.7.i.scalar, 1541459225
  store i32 %i.an, ptr %i.am, align 4, !tbaa !13
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ossl_blake2s_init_key(ptr nofree noundef writeonly captures(none) initializes((0, 128)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
ossl_blake2s_update.exit:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 32
  %i.d = add i64 %i.a, 128
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %ossl_blake2s_update.exit.rtscalar, label %ossl_blake2s_update.exit.rtvec, !prof !12

ossl_blake2s_update.exit.rtvec:                   ; preds = %ossl_blake2s_update.exit
  %i.e = alloca [64 x i8], align 16               ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !13
  %i.g = load i8, ptr %1, align 1, !tbaa !11
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.h, ptr %i.i, align 8, !tbaa !16
  %i.j = load <4 x i32>, ptr %1, align 1
  %.val.i = load i32, ptr %1, align 1
  %i.k = xor <4 x i32> %i.j, <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>
  store <4 x i32> %i.k, ptr %0, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load <4 x i32>, ptr %i.l, align 1
  %i.o = xor <4 x i32> %i.n, <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>
  store <4 x i32> %i.o, ptr %i.m, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.p = lshr i32 %.val.i, 8
  %i.q = and i32 %i.p, 255
  %i.r = zext nneg i32 %i.q to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr align 1 %2, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 16 dereferenceable(64) %i.e, i64 64, i1 false)
  store i64 64, ptr %i.s, align 8, !tbaa !17
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 64) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %ossl_blake2s_update.exit.rtcont

ossl_blake2s_update.exit.rtscalar:                ; preds = %ossl_blake2s_update.exit
  %i.u = alloca [64 x i8], align 16               ; 6 uses
  %i.v = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.v, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !13
  %i.w = load i8, ptr %1, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.x, ptr %i.y, align 8, !tbaa !16
  %.val.i.scalar = load i32, ptr %1, align 1      ; 2 uses
  %i.z = xor i32 %.val.i.scalar, 1779033703
  store i32 %i.z, ptr %0, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.1.i.scalar = load i32, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = xor i32 %.val.1.i.scalar, -1150833019
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.2.i.scalar = load i32, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = xor i32 %.val.2.i.scalar, 1013904242
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val.3.i.scalar = load i32, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ai = xor i32 %.val.3.i.scalar, -1521486534
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.4.i.scalar = load i32, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = xor i32 %.val.4.i.scalar, 1359893119
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val.5.i.scalar = load i32, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ao = xor i32 %.val.5.i.scalar, -1694144372
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.6.i.scalar = load i32, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = xor i32 %.val.6.i.scalar, 528734635
  store i32 %i.ar, ptr %i.aq, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val.7.i.scalar = load i32, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = xor i32 %.val.7.i.scalar, 1541459225
  store i32 %i.au, ptr %i.at, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.u, i8 0, i64 64, i1 false)
  %i.av = lshr i32 %.val.i.scalar, 8
  %i.aw = and i32 %i.av, 255
  %i.ax = zext nneg i32 %i.aw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.u, ptr align 1 %2, i64 %i.ax, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.az, ptr noundef nonnull align 16 dereferenceable(64) %i.u, i64 64, i1 false)
  store i64 64, ptr %i.ay, align 8, !tbaa !17
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.u, i64 noundef 64) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  br label %ossl_blake2s_update.exit.rtcont

ossl_blake2s_update.exit.rtcont:                  ; preds = %ossl_blake2s_update.exit.rtscalar, %ossl_blake2s_update.exit.rtvec
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ossl_blake2s_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 4 uses
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
  store i64 0, ptr %i.a, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.h = sub nuw i64 %2, %i.c
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
  %.pre = load i64, ptr %i.a, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %i.n = phi i64 [ %.pre, %bb.e ], [ 0, %bb.d ], [ %i.b, %bb.a ]
  %.134 = phi ptr [ %i.m, %bb.e ], [ %.033, %bb.d ], [ %1, %bb.a ]
  %.1 = phi i64 [ %i.k, %bb.e ], [ %.0, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %.134, i64 %.1, i1 false)
  %i.q = load i64, ptr %i.a, align 8, !tbaa !17
  %i.r = add i64 %i.q, %.1
  store i64 %i.r, ptr %i.a, align 8, !tbaa !17
  ret i32 1
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @blake2s_compress(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
.preheader:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !13
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.sroa.62.0.copyload = load i32, ptr %.sroa.62.0..sroa_idx, align 4, !tbaa !13
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.121.0.copyload = load i32, ptr %.sroa.121.0..sroa_idx, align 4, !tbaa !13
  %.sroa.180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %.sroa.180.0.copyload = load i32, ptr %.sroa.180.0..sroa_idx, align 4, !tbaa !13
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.239.0.copyload = load i32, ptr %.sroa.239.0..sroa_idx, align 4, !tbaa !13
  %.sroa.303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.sroa.303.0.copyload = load i32, ptr %.sroa.303.0..sroa_idx, align 4, !tbaa !13
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.370.0.copyload = load i32, ptr %.sroa.370.0..sroa_idx, align 4, !tbaa !13
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %.sroa.437.0.copyload = load i32, ptr %.sroa.437.0..sroa_idx, align 4, !tbaa !13
  %i.a = tail call i64 @llvm.umin.i64(i64 %2, i64 64) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = trunc nuw nsw i64 %i.a to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.e, align 8, !tbaa !13
  %i.h = load i32, ptr %i.f, align 4, !tbaa !13
  %.promoted = load i32, ptr %i.b, align 8, !tbaa !13
  %.promoted432 = load i32, ptr %i.d, align 4, !tbaa !13
  %.promoted433 = load i32, ptr %0, align 8, !tbaa !13
  %.sroa.62.0..sroa_idx.promoted = load i32, ptr %.sroa.62.0..sroa_idx, align 4, !tbaa !13
  %.sroa.121.0..sroa_idx.promoted = load i32, ptr %.sroa.121.0..sroa_idx, align 8, !tbaa !13
  %.sroa.180.0..sroa_idx.promoted = load i32, ptr %.sroa.180.0..sroa_idx, align 4, !tbaa !13
  %.sroa.239.0..sroa_idx.promoted = load i32, ptr %.sroa.239.0..sroa_idx, align 8, !tbaa !13
  %.sroa.303.0..sroa_idx.promoted = load i32, ptr %.sroa.303.0..sroa_idx, align 4, !tbaa !13
  %.sroa.370.0..sroa_idx.promoted = load i32, ptr %.sroa.370.0..sroa_idx, align 8, !tbaa !13
  %.sroa.437.0..sroa_idx.promoted = load i32, ptr %.sroa.437.0..sroa_idx, align 4, !tbaa !13
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
  %.034 = phi ptr [ %1, %.preheader ], [ %i.arp, %bb.a ] ; 17 uses
  %.033 = phi i64 [ %2, %.preheader ], [ %i.arq, %bb.a ]
  %.sroa.0332.0.copyload = load i32, ptr %.034, align 1 ; 10 uses
  %.sroa.10.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 4
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.17.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.24.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 12
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.31.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %.sroa.31.0.copyload = load i32, ptr %.sroa.31.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.38.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 20
  %.sroa.38.0.copyload = load i32, ptr %.sroa.38.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.46.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %.sroa.46.0.copyload = load i32, ptr %.sroa.46.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.53.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 28
  %.sroa.53.0.copyload = load i32, ptr %.sroa.53.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.60.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %.sroa.60.0.copyload = load i32, ptr %.sroa.60.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.67.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 36
  %.sroa.67.0.copyload = load i32, ptr %.sroa.67.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.74.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 40
  %.sroa.74.0.copyload = load i32, ptr %.sroa.74.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.81.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 44
  %.sroa.81.0.copyload = load i32, ptr %.sroa.81.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.88.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 48
  %.sroa.88.0.copyload = load i32, ptr %.sroa.88.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.95.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 52
  %.sroa.95.0.copyload = load i32, ptr %.sroa.95.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.102.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 56
  %.sroa.102.0.copyload = load i32, ptr %.sroa.102.0..034.sroa_idx, align 1 ; 10 uses
  %.sroa.109.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 60
  %.sroa.109.0.copyload = load i32, ptr %.sroa.109.0..034.sroa_idx, align 1 ; 10 uses
  %i.s = add i32 %i.r, %i.c                       ; 4 uses
  store i32 %i.s, ptr %i.b, align 8, !tbaa !13
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ugt i64 %i.a, %i.t
  %i.v = zext i1 %i.u to i32
  %i.w = add i32 %i.q, %i.v                       ; 3 uses
  store i32 %i.w, ptr %i.d, align 4, !tbaa !13
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
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %i.bj = xor i32 %i.bi, %i.bd                    ; 2 uses
  %i.bk = tail call i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 24) ; 2 uses
  %i.bl = add i32 %i.bk, %i.be                    ; 2 uses
  %i.bm = xor i32 %i.bl, %i.bg                    ; 2 uses
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 25) ; 2 uses
  %i.bo = add i32 %.sroa.437.0, %.sroa.180.0
  %i.bp = add i32 %i.bo, %.sroa.46.0.copyload     ; 2 uses
  %.reass431.reass = xor i32 %i.bp, %invariant.op434 ; 2 uses
  %i.bq = tail call i32 @llvm.fshl.i32(i32 %.reass431.reass, i32 %.reass431.reass, i32 16) ; 2 uses
  %i.br = add i32 %i.bq, -1521486534              ; 2 uses
  %i.bs = xor i32 %i.br, %.sroa.437.0             ; 2 uses
  %i.bt = tail call i32 @llvm.fshl.i32(i32 %i.bs, i32 %i.bs, i32 20) ; 2 uses
  %i.bu = add i32 %.sroa.53.0.copyload, %i.bp
  %i.bv = add i32 %i.bu, %i.bt                    ; 2 uses
  %i.bw = xor i32 %i.bv, %i.bq                    ; 2 uses
  %i.bx = tail call i32 @llvm.fshl.i32(i32 %i.bw, i32 %i.bw, i32 24) ; 2 uses
  %i.by = add i32 %i.bx, %i.br                    ; 2 uses
  %i.bz = xor i32 %i.by, %i.bt                    ; 2 uses
  %i.ca = tail call i32 @llvm.fshl.i32(i32 %i.bz, i32 %i.bz, i32 25) ; 2 uses
  %i.cb = add i32 %i.ba, %i.ag
  %i.cc = add i32 %i.cb, %.sroa.60.0.copyload     ; 2 uses
  %i.cd = xor i32 %i.cc, %i.bx                    ; 2 uses
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 16) ; 2 uses
  %i.cf = add i32 %i.ce, %i.bl                    ; 2 uses
  %i.cg = xor i32 %i.cf, %i.ba                    ; 2 uses
  %i.ch = tail call i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 20) ; 2 uses
  %i.ci = add i32 %.sroa.67.0.copyload, %i.cc
  %i.cj = add i32 %i.ci, %i.ch                    ; 2 uses
  %i.ck = xor i32 %i.cj, %i.ce                    ; 2 uses
  %i.cl = tail call i32 @llvm.fshl.i32(i32 %i.ck, i32 %i.ck, i32 24) ; 2 uses
  %i.cm = add i32 %i.cl, %i.cf                    ; 2 uses
  %i.cn = xor i32 %i.cm, %i.ch                    ; 2 uses
  %i.co = tail call i32 @llvm.fshl.i32(i32 %i.cn, i32 %i.cn, i32 25) ; 2 uses
  %i.cp = add i32 %i.bn, %i.av
  %i.cq = add i32 %i.cp, %.sroa.74.0.copyload     ; 2 uses
  %i.cr = xor i32 %i.cq, %i.ai                    ; 2 uses
  %i.cs = tail call i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 16) ; 2 uses
  %i.ct = add i32 %i.cs, %i.by                    ; 2 uses
  %i.cu = xor i32 %i.ct, %i.bn                    ; 2 uses
  %i.cv = tail call i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.cu, i32 20) ; 2 uses
  %i.cw = add i32 %.sroa.81.0.copyload, %i.cq
  %i.cx = add i32 %i.cw, %i.cv                    ; 2 uses
  %i.cy = xor i32 %i.cx, %i.cs                    ; 2 uses
  %i.cz = tail call i32 @llvm.fshl.i32(i32 %i.cy, i32 %i.cy, i32 24) ; 2 uses
  %i.da = add i32 %i.cz, %i.ct                    ; 2 uses
  %i.db = xor i32 %i.da, %i.cv                    ; 2 uses
  %i.dc = tail call i32 @llvm.fshl.i32(i32 %i.db, i32 %i.db, i32 25) ; 2 uses
  %i.dd = add i32 %i.ca, %i.bi
  %i.de = add i32 %i.dd, %.sroa.88.0.copyload     ; 2 uses
  %i.df = xor i32 %i.de, %i.ax                    ; 2 uses
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 16) ; 2 uses
  %i.dh = add i32 %i.dg, %i.aj                    ; 2 uses
  %i.di = xor i32 %i.dh, %i.ca                    ; 2 uses
  %i.dj = tail call i32 @llvm.fshl.i32(i32 %i.di, i32 %i.di, i32 20) ; 2 uses
  %i.dk = add i32 %.sroa.95.0.copyload, %i.de
  %i.dl = add i32 %i.dk, %i.dj                    ; 2 uses
  %i.dm = xor i32 %i.dl, %i.dg                    ; 2 uses
  %i.dn = tail call i32 @llvm.fshl.i32(i32 %i.dm, i32 %i.dm, i32 24) ; 2 uses
  %i.do = add i32 %i.dn, %i.dh                    ; 2 uses
  %i.dp = xor i32 %i.do, %i.dj                    ; 2 uses
  %i.dq = tail call i32 @llvm.fshl.i32(i32 %i.dp, i32 %i.dp, i32 25) ; 2 uses
  %i.dr = add i32 %i.bv, %i.al
  %i.ds = add i32 %i.dr, %.sroa.102.0.copyload    ; 2 uses
  %i.dt = xor i32 %i.ds, %i.bk                    ; 2 uses
  %i.du = tail call i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 16) ; 2 uses
  %i.dv = add i32 %i.du, %i.ay                    ; 2 uses
  %i.dw = xor i32 %i.dv, %i.al                    ; 2 uses
  %i.dx = tail call i32 @llvm.fshl.i32(i32 %i.dw, i32 %i.dw, i32 20) ; 2 uses
  %i.dy = add i32 %.sroa.109.0.copyload, %i.ds
  %i.dz = add i32 %i.dy, %i.dx                    ; 2 uses
  %i.ea = xor i32 %i.dz, %i.du                    ; 2 uses
  %i.eb = tail call i32 @llvm.fshl.i32(i32 %i.ea, i32 %i.ea, i32 24) ; 2 uses
  %i.ec = add i32 %i.eb, %i.dv                    ; 2 uses
  %i.ed = xor i32 %i.ec, %i.dx                    ; 2 uses
  %i.ee = tail call i32 @llvm.fshl.i32(i32 %i.ed, i32 %i.ed, i32 25) ; 2 uses
  %i.ef = add i32 %.sroa.102.0.copyload, %i.cj
  %i.eg = add i32 %i.ef, %i.ee                    ; 2 uses
  %i.eh = xor i32 %i.eg, %i.cz                    ; 2 uses
  %i.ei = tail call i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 16) ; 2 uses
  %i.ej = add i32 %i.ei, %i.do                    ; 2 uses
  %i.ek = xor i32 %i.ej, %i.ee                    ; 2 uses
  %i.el = tail call i32 @llvm.fshl.i32(i32 %i.ek, i32 %i.ek, i32 20) ; 2 uses
  %i.em = add i32 %i.eg, %.sroa.74.0.copyload
  %i.en = add i32 %i.em, %i.el                    ; 2 uses
  %i.eo = xor i32 %i.en, %i.ei                    ; 2 uses
  %i.ep = tail call i32 @llvm.fshl.i32(i32 %i.eo, i32 %i.eo, i32 24) ; 2 uses
  %i.eq = add i32 %i.ep, %i.ej                    ; 2 uses
  %i.er = xor i32 %i.eq, %i.el                    ; 2 uses
  %i.es = tail call i32 @llvm.fshl.i32(i32 %i.er, i32 %i.er, i32 25) ; 2 uses
  %i.et = add i32 %i.co, %.sroa.31.0.copyload
  %i.eu = add i32 %i.et, %i.cx                    ; 2 uses
  %i.ev = xor i32 %i.dn, %i.eu                    ; 2 uses
  %i.ew = tail call i32 @llvm.fshl.i32(i32 %i.ev, i32 %i.ev, i32 16) ; 2 uses
  %i.ex = add i32 %i.ec, %i.ew                    ; 2 uses
  %i.ey = xor i32 %i.ex, %i.co                    ; 2 uses
  %i.ez = tail call i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.ey, i32 20) ; 2 uses
  %i.fa = add i32 %i.eu, %.sroa.60.0.copyload
  %i.fb = add i32 %i.fa, %i.ez                    ; 2 uses
  %i.fc = xor i32 %i.fb, %i.ew                    ; 2 uses
  %i.fd = tail call i32 @llvm.fshl.i32(i32 %i.fc, i32 %i.fc, i32 24) ; 2 uses
  %i.fe = add i32 %i.fd, %i.ex                    ; 2 uses
  %i.ff = xor i32 %i.fe, %i.ez                    ; 2 uses
  %i.fg = tail call i32 @llvm.fshl.i32(i32 %i.ff, i32 %i.ff, i32 25) ; 2 uses
  %i.fh = add i32 %i.dc, %.sroa.67.0.copyload
  %i.fi = add i32 %i.fh, %i.dl                    ; 2 uses
  %i.fj = xor i32 %i.eb, %i.fi                    ; 2 uses
  %i.fk = tail call i32 @llvm.fshl.i32(i32 %i.fj, i32 %i.fj, i32 16) ; 2 uses
  %i.fl = add i32 %i.fk, %i.cm                    ; 2 uses
  %i.fm = xor i32 %i.fl, %i.dc                    ; 2 uses
  %i.fn = tail call i32 @llvm.fshl.i32(i32 %i.fm, i32 %i.fm, i32 20) ; 2 uses
  %i.fo = add i32 %.sroa.109.0.copyload, %i.fi
  %i.fp = add i32 %i.fo, %i.fn                    ; 2 uses
  %i.fq = xor i32 %i.fp, %i.fk                    ; 2 uses
  %i.fr = tail call i32 @llvm.fshl.i32(i32 %i.fq, i32 %i.fq, i32 24) ; 2 uses
  %i.fs = add i32 %i.fr, %i.fl                    ; 2 uses
  %i.ft = xor i32 %i.fs, %i.fn                    ; 2 uses
  %i.fu = tail call i32 @llvm.fshl.i32(i32 %i.ft, i32 %i.ft, i32 25) ; 2 uses
  %i.fv = add i32 %i.dq, %.sroa.95.0.copyload
  %i.fw = add i32 %i.fv, %i.dz                    ; 2 uses
  %i.fx = xor i32 %i.fw, %i.cl                    ; 2 uses
  %i.fy = tail call i32 @llvm.fshl.i32(i32 %i.fx, i32 %i.fx, i32 16) ; 2 uses
  %i.fz = add i32 %i.fy, %i.da                    ; 2 uses
  %i.ga = xor i32 %i.fz, %i.dq                    ; 2 uses
  %i.gb = tail call i32 @llvm.fshl.i32(i32 %i.ga, i32 %i.ga, i32 20) ; 2 uses
  %i.gc = add i32 %i.fw, %.sroa.46.0.copyload
  %i.gd = add i32 %i.gc, %i.gb                    ; 2 uses
  %i.ge = xor i32 %i.gd, %i.fy                    ; 2 uses
  %i.gf = tail call i32 @llvm.fshl.i32(i32 %i.ge, i32 %i.ge, i32 24) ; 2 uses
  %i.gg = add i32 %i.gf, %i.fz                    ; 2 uses
  %i.gh = xor i32 %i.gg, %i.gb                    ; 2 uses
  %i.gi = tail call i32 @llvm.fshl.i32(i32 %i.gh, i32 %i.gh, i32 25) ; 2 uses
  %i.gj = add i32 %i.fg, %.sroa.10.0.copyload
  %i.gk = add i32 %i.gj, %i.en                    ; 2 uses
  %i.gl = xor i32 %i.gk, %i.gf                    ; 2 uses
  %i.gm = tail call i32 @llvm.fshl.i32(i32 %i.gl, i32 %i.gl, i32 16) ; 2 uses
  %i.gn = add i32 %i.gm, %i.fs                    ; 2 uses
  %i.go = xor i32 %i.gn, %i.fg                    ; 2 uses
  %i.gp = tail call i32 @llvm.fshl.i32(i32 %i.go, i32 %i.go, i32 20) ; 2 uses
  %i.gq = add i32 %i.gk, %.sroa.88.0.copyload
  %i.gr = add i32 %i.gq, %i.gp                    ; 2 uses
  %i.gs = xor i32 %i.gr, %i.gm                    ; 2 uses
  %i.gt = tail call i32 @llvm.fshl.i32(i32 %i.gs, i32 %i.gs, i32 24) ; 2 uses
  %i.gu = add i32 %i.gt, %i.gn                    ; 2 uses
  %i.gv = xor i32 %i.gu, %i.gp                    ; 2 uses
  %i.gw = tail call i32 @llvm.fshl.i32(i32 %i.gv, i32 %i.gv, i32 25) ; 2 uses
  %i.gx = add i32 %i.fu, %i.fb
  %i.gy = add i32 %i.gx, %.sroa.0332.0.copyload   ; 2 uses
  %i.gz = xor i32 %i.gy, %i.ep                    ; 2 uses
  %i.ha = tail call i32 @llvm.fshl.i32(i32 %i.gz, i32 %i.gz, i32 16) ; 2 uses
  %i.hb = add i32 %i.ha, %i.gg                    ; 2 uses
  %i.hc = xor i32 %i.hb, %i.fu                    ; 2 uses
  %i.hd = tail call i32 @llvm.fshl.i32(i32 %i.hc, i32 %i.hc, i32 20) ; 2 uses
  %i.he = add i32 %.sroa.17.0.copyload, %i.gy
  %i.hf = add i32 %i.he, %i.hd                    ; 2 uses
  %i.hg = xor i32 %i.hf, %i.ha                    ; 2 uses
  %i.hh = tail call i32 @llvm.fshl.i32(i32 %i.hg, i32 %i.hg, i32 24) ; 2 uses
  %i.hi = add i32 %i.hh, %i.hb                    ; 2 uses
  %i.hj = xor i32 %i.hi, %i.hd                    ; 2 uses
  %i.hk = tail call i32 @llvm.fshl.i32(i32 %i.hj, i32 %i.hj, i32 25) ; 2 uses
  %i.hl = add i32 %i.fp, %.sroa.81.0.copyload
  %i.hm = add i32 %i.hl, %i.gi                    ; 2 uses
end_hunk_0
begin_hunk_1_@blake2s_compress:.preheader
  %i.ajj = xor i32 %i.ajd, %i.aji                 ; 2 uses
  %i.ajk = tail call i32 @llvm.fshl.i32(i32 %i.ajj, i32 %i.ajj, i32 25) ; 2 uses
  %i.ajl = add i32 %i.ahg, %i.ahp
  %i.ajm = add i32 %i.ajl, %.sroa.81.0.copyload   ; 2 uses
  %i.ajn = xor i32 %i.aif, %i.ajm                 ; 2 uses
  %i.ajo = tail call i32 @llvm.fshl.i32(i32 %i.ajn, i32 %i.ajn, i32 16) ; 2 uses
  %i.ajp = add i32 %i.agq, %i.ajo                 ; 2 uses
  %i.ajq = xor i32 %i.ahg, %i.ajp                 ; 2 uses
  %i.ajr = tail call i32 @llvm.fshl.i32(i32 %i.ajq, i32 %i.ajq, i32 20) ; 2 uses
  %i.ajs = add i32 %i.ajm, %i.ajr
  %i.ajt = add i32 %i.ajs, %.sroa.24.0.copyload   ; 2 uses
  %i.aju = xor i32 %i.ajo, %i.ajt                 ; 2 uses
  %i.ajv = tail call i32 @llvm.fshl.i32(i32 %i.aju, i32 %i.aju, i32 24) ; 2 uses
  %i.ajw = add i32 %i.ajp, %i.ajv                 ; 2 uses
  %i.ajx = xor i32 %i.ajr, %i.ajw                 ; 2 uses
  %i.ajy = tail call i32 @llvm.fshl.i32(i32 %i.ajx, i32 %i.ajx, i32 25) ; 2 uses
  %i.ajz = add i32 %i.ahu, %i.aid
  %i.aka = add i32 %i.ajz, %.sroa.0332.0.copyload ; 2 uses
  %i.akb = xor i32 %i.agp, %i.aka                 ; 2 uses
  %i.akc = tail call i32 @llvm.fshl.i32(i32 %i.akb, i32 %i.akb, i32 16) ; 2 uses
  %i.akd = add i32 %i.ahe, %i.akc                 ; 2 uses
  %i.ake = xor i32 %i.ahu, %i.akd                 ; 2 uses
  %i.akf = tail call i32 @llvm.fshl.i32(i32 %i.ake, i32 %i.ake, i32 20) ; 2 uses
  %i.akg = add i32 %i.aka, %i.akf
  %i.akh = add i32 %i.akg, %.sroa.60.0.copyload   ; 2 uses
  %i.aki = xor i32 %i.akc, %i.akh                 ; 2 uses
  %i.akj = tail call i32 @llvm.fshl.i32(i32 %i.aki, i32 %i.aki, i32 24) ; 2 uses
  %i.akk = add i32 %i.akd, %i.akj                 ; 2 uses
  %i.akl = xor i32 %i.akf, %i.akk                 ; 2 uses
  %i.akm = tail call i32 @llvm.fshl.i32(i32 %i.akl, i32 %i.akl, i32 25) ; 2 uses
  %i.akn = add i32 %i.ajk, %i.air
  %i.ako = add i32 %i.akn, %.sroa.88.0.copyload   ; 2 uses
  %i.akp = xor i32 %i.akj, %i.ako                 ; 2 uses
  %i.akq = tail call i32 @llvm.fshl.i32(i32 %i.akp, i32 %i.akp, i32 16) ; 2 uses
  %i.akr = add i32 %i.ajw, %i.akq                 ; 2 uses
  %i.aks = xor i32 %i.ajk, %i.akr                 ; 2 uses
  %i.akt = tail call i32 @llvm.fshl.i32(i32 %i.aks, i32 %i.aks, i32 20) ; 2 uses
  %i.aku = add i32 %i.ako, %i.akt
  %i.akv = add i32 %i.aku, %.sroa.17.0.copyload   ; 2 uses
  %i.akw = xor i32 %i.akq, %i.akv                 ; 2 uses
  %i.akx = tail call i32 @llvm.fshl.i32(i32 %i.akw, i32 %i.akw, i32 24) ; 2 uses
  %i.aky = add i32 %i.akr, %i.akx                 ; 2 uses
  %i.akz = xor i32 %i.akt, %i.aky                 ; 2 uses
  %i.ala = tail call i32 @llvm.fshl.i32(i32 %i.akz, i32 %i.akz, i32 25) ; 2 uses
  %i.alb = add i32 %i.ajy, %i.ajf
  %i.alc = add i32 %i.alb, %.sroa.95.0.copyload   ; 2 uses
  %i.ald = xor i32 %i.ait, %i.alc                 ; 2 uses
  %i.ale = tail call i32 @llvm.fshl.i32(i32 %i.ald, i32 %i.ald, i32 16) ; 2 uses
  %i.alf = add i32 %i.akk, %i.ale                 ; 2 uses
  %i.alg = xor i32 %i.ajy, %i.alf                 ; 2 uses
  %i.alh = tail call i32 @llvm.fshl.i32(i32 %i.alg, i32 %i.alg, i32 20) ; 2 uses
  %i.ali = add i32 %i.alc, %i.alh
  %i.alj = add i32 %i.ali, %.sroa.53.0.copyload   ; 2 uses
  %i.alk = xor i32 %i.ale, %i.alj                 ; 2 uses
  %i.all = tail call i32 @llvm.fshl.i32(i32 %i.alk, i32 %i.alk, i32 24) ; 2 uses
  %i.alm = add i32 %i.alf, %i.all                 ; 2 uses
  %i.aln = xor i32 %i.alh, %i.alm                 ; 2 uses
  %i.alo = tail call i32 @llvm.fshl.i32(i32 %i.aln, i32 %i.aln, i32 25) ; 2 uses
  %i.alp = add i32 %i.akm, %i.ajt
  %i.alq = add i32 %i.alp, %.sroa.10.0.copyload   ; 2 uses
  %i.alr = xor i32 %i.ajh, %i.alq                 ; 2 uses
  %i.als = tail call i32 @llvm.fshl.i32(i32 %i.alr, i32 %i.alr, i32 16) ; 2 uses
  %i.alt = add i32 %i.aiu, %i.als                 ; 2 uses
  %i.alu = xor i32 %i.akm, %i.alt                 ; 2 uses
  %i.alv = tail call i32 @llvm.fshl.i32(i32 %i.alu, i32 %i.alu, i32 20) ; 2 uses
  %i.alw = add i32 %i.alq, %i.alv
  %i.alx = add i32 %i.alw, %.sroa.31.0.copyload   ; 2 uses
  %i.aly = xor i32 %i.als, %i.alx                 ; 2 uses
  %i.alz = tail call i32 @llvm.fshl.i32(i32 %i.aly, i32 %i.aly, i32 24) ; 2 uses
  %i.ama = add i32 %i.alt, %i.alz                 ; 2 uses
  %i.amb = xor i32 %i.alv, %i.ama                 ; 2 uses
  %i.amc = tail call i32 @llvm.fshl.i32(i32 %i.amb, i32 %i.amb, i32 25) ; 2 uses
  %i.amd = add i32 %i.aiw, %i.akh
  %i.ame = add i32 %i.amd, %.sroa.74.0.copyload   ; 2 uses
  %i.amf = xor i32 %i.ajv, %i.ame                 ; 2 uses
  %i.amg = tail call i32 @llvm.fshl.i32(i32 %i.amf, i32 %i.amf, i32 16) ; 2 uses
  %i.amh = add i32 %i.aji, %i.amg                 ; 2 uses
  %i.ami = xor i32 %i.aiw, %i.amh                 ; 2 uses
  %i.amj = tail call i32 @llvm.fshl.i32(i32 %i.ami, i32 %i.ami, i32 20) ; 2 uses
  %i.amk = add i32 %i.ame, %i.amj
  %i.aml = add i32 %i.amk, %.sroa.38.0.copyload   ; 2 uses
  %i.amm = xor i32 %i.amg, %i.aml                 ; 2 uses
  %i.amn = tail call i32 @llvm.fshl.i32(i32 %i.amm, i32 %i.amm, i32 24) ; 2 uses
  %i.amo = add i32 %i.amh, %i.amn                 ; 2 uses
  %i.amp = xor i32 %i.amj, %i.amo                 ; 2 uses
  %i.amq = tail call i32 @llvm.fshl.i32(i32 %i.amp, i32 %i.amp, i32 25) ; 2 uses
  %i.amr = add i32 %i.akv, %i.amq
  %i.ams = add i32 %i.amr, %.sroa.74.0.copyload   ; 2 uses
  %i.amt = xor i32 %i.all, %i.ams                 ; 2 uses
  %i.amu = tail call i32 @llvm.fshl.i32(i32 %i.amt, i32 %i.amt, i32 16) ; 2 uses
  %i.amv = add i32 %i.ama, %i.amu                 ; 2 uses
  %i.amw = xor i32 %i.amq, %i.amv                 ; 2 uses
  %i.amx = tail call i32 @llvm.fshl.i32(i32 %i.amw, i32 %i.amw, i32 20) ; 2 uses
  %i.amy = add i32 %i.ams, %i.amx
  %i.amz = add i32 %i.amy, %.sroa.17.0.copyload   ; 2 uses
  %i.ana = xor i32 %i.amu, %i.amz                 ; 2 uses
  %i.anb = tail call i32 @llvm.fshl.i32(i32 %i.ana, i32 %i.ana, i32 24) ; 2 uses
  %i.anc = add i32 %i.amv, %i.anb                 ; 2 uses
  %i.and = xor i32 %i.amx, %i.anc                 ; 2 uses
  %i.ane = tail call i32 @llvm.fshl.i32(i32 %i.and, i32 %i.and, i32 25) ; 2 uses
  %i.anf = add i32 %i.ala, %i.alj
  %i.ang = add i32 %i.anf, %.sroa.60.0.copyload   ; 2 uses
  %i.anh = xor i32 %i.alz, %i.ang                 ; 2 uses
  %i.ani = tail call i32 @llvm.fshl.i32(i32 %i.anh, i32 %i.anh, i32 16) ; 2 uses
  %i.anj = add i32 %i.amo, %i.ani                 ; 2 uses
  %i.ank = xor i32 %i.ala, %i.anj                 ; 2 uses
  %i.anl = tail call i32 @llvm.fshl.i32(i32 %i.ank, i32 %i.ank, i32 20) ; 2 uses
  %i.anm = add i32 %i.ang, %i.anl
  %i.ann = add i32 %i.anm, %.sroa.31.0.copyload   ; 2 uses
  %i.ano = xor i32 %i.ani, %i.ann                 ; 2 uses
  %i.anp = tail call i32 @llvm.fshl.i32(i32 %i.ano, i32 %i.ano, i32 24) ; 2 uses
  %i.anq = add i32 %i.anj, %i.anp                 ; 2 uses
  %i.anr = xor i32 %i.anl, %i.anq                 ; 2 uses
  %i.ans = tail call i32 @llvm.fshl.i32(i32 %i.anr, i32 %i.anr, i32 25) ; 2 uses
  %i.ant = add i32 %i.alo, %i.alx
  %i.anu = add i32 %i.ant, %.sroa.53.0.copyload   ; 2 uses
  %i.anv = xor i32 %i.amn, %i.anu                 ; 2 uses
  %i.anw = tail call i32 @llvm.fshl.i32(i32 %i.anv, i32 %i.anv, i32 16) ; 2 uses
  %i.anx = add i32 %i.aky, %i.anw                 ; 2 uses
  %i.any = xor i32 %i.alo, %i.anx                 ; 2 uses
  %i.anz = tail call i32 @llvm.fshl.i32(i32 %i.any, i32 %i.any, i32 20) ; 2 uses
  %i.aoa = add i32 %i.anu, %i.anz
  %i.aob = add i32 %i.aoa, %.sroa.46.0.copyload   ; 2 uses
  %i.aoc = xor i32 %i.anw, %i.aob                 ; 2 uses
  %i.aod = tail call i32 @llvm.fshl.i32(i32 %i.aoc, i32 %i.aoc, i32 24) ; 2 uses
  %i.aoe = add i32 %i.anx, %i.aod                 ; 2 uses
  %i.aof = xor i32 %i.anz, %i.aoe                 ; 2 uses
  %i.aog = tail call i32 @llvm.fshl.i32(i32 %i.aof, i32 %i.aof, i32 25) ; 2 uses
  %i.aoh = add i32 %i.amc, %i.aml
  %i.aoi = add i32 %i.aoh, %.sroa.10.0.copyload   ; 2 uses
  %i.aoj = xor i32 %i.akx, %i.aoi                 ; 2 uses
  %i.aok = tail call i32 @llvm.fshl.i32(i32 %i.aoj, i32 %i.aoj, i32 16) ; 2 uses
  %i.aol = add i32 %i.alm, %i.aok                 ; 2 uses
  %i.aom = xor i32 %i.amc, %i.aol                 ; 2 uses
  %i.aon = tail call i32 @llvm.fshl.i32(i32 %i.aom, i32 %i.aom, i32 20) ; 2 uses
  %i.aoo = add i32 %i.aoi, %i.aon
  %i.aop = add i32 %i.aoo, %.sroa.38.0.copyload   ; 2 uses
  %i.aoq = xor i32 %i.aok, %i.aop                 ; 2 uses
  %i.aor = tail call i32 @llvm.fshl.i32(i32 %i.aoq, i32 %i.aoq, i32 24) ; 2 uses
  %i.aos = add i32 %i.aol, %i.aor                 ; 2 uses
  %i.aot = xor i32 %i.aon, %i.aos                 ; 2 uses
  %i.aou = tail call i32 @llvm.fshl.i32(i32 %i.aot, i32 %i.aot, i32 25) ; 2 uses
  %i.aov = add i32 %i.ans, %i.amz
  %i.aow = add i32 %i.aov, %.sroa.109.0.copyload  ; 2 uses
  %i.aox = xor i32 %i.aor, %i.aow                 ; 2 uses
  %i.aoy = tail call i32 @llvm.fshl.i32(i32 %i.aox, i32 %i.aox, i32 16) ; 2 uses
  %i.aoz = add i32 %i.aoe, %i.aoy                 ; 2 uses
  %i.apa = xor i32 %i.ans, %i.aoz                 ; 2 uses
  %i.apb = tail call i32 @llvm.fshl.i32(i32 %i.apa, i32 %i.apa, i32 20) ; 2 uses
  %i.apc = add i32 %i.aow, %i.apb
  %i.apd = add i32 %i.apc, %.sroa.81.0.copyload   ; 2 uses
  %i.ape = xor i32 %i.aoy, %i.apd                 ; 2 uses
  %i.apf = tail call i32 @llvm.fshl.i32(i32 %i.ape, i32 %i.ape, i32 24) ; 2 uses
  %i.apg = add i32 %i.aoz, %i.apf                 ; 2 uses
  %i.aph = xor i32 %i.apb, %i.apg                 ; 2 uses
  %i.api = tail call i32 @llvm.fshl.i32(i32 %i.aph, i32 %i.aph, i32 25)
  %i.apj = add i32 %i.aog, %i.ann
  %i.apk = add i32 %i.apj, %.sroa.67.0.copyload   ; 2 uses
  %i.apl = xor i32 %i.anb, %i.apk                 ; 2 uses
  %i.apm = tail call i32 @llvm.fshl.i32(i32 %i.apl, i32 %i.apl, i32 16) ; 2 uses
  %i.apn = add i32 %i.aos, %i.apm                 ; 2 uses
  %i.apo = xor i32 %i.aog, %i.apn                 ; 2 uses
  %i.app = tail call i32 @llvm.fshl.i32(i32 %i.apo, i32 %i.apo, i32 20) ; 2 uses
  %i.apq = add i32 %i.apk, %i.app
  %i.apr = add i32 %i.apq, %.sroa.102.0.copyload  ; 2 uses
  %i.aps = xor i32 %i.apm, %i.apr                 ; 2 uses
  %i.apt = tail call i32 @llvm.fshl.i32(i32 %i.aps, i32 %i.aps, i32 24) ; 2 uses
  %i.apu = add i32 %i.apn, %i.apt                 ; 2 uses
  %i.apv = xor i32 %i.app, %i.apu                 ; 2 uses
  %i.apw = tail call i32 @llvm.fshl.i32(i32 %i.apv, i32 %i.apv, i32 25)
  %i.apx = add i32 %i.aou, %i.aob
  %i.apy = add i32 %i.apx, %.sroa.24.0.copyload   ; 2 uses
  %i.apz = xor i32 %i.anp, %i.apy                 ; 2 uses
  %i.aqa = tail call i32 @llvm.fshl.i32(i32 %i.apz, i32 %i.apz, i32 16) ; 2 uses
  %i.aqb = add i32 %i.anc, %i.aqa                 ; 2 uses
  %i.aqc = xor i32 %i.aou, %i.aqb                 ; 2 uses
  %i.aqd = tail call i32 @llvm.fshl.i32(i32 %i.aqc, i32 %i.aqc, i32 20) ; 2 uses
  %i.aqe = add i32 %i.apy, %i.aqd
  %i.aqf = add i32 %i.aqe, %.sroa.88.0.copyload   ; 2 uses
  %i.aqg = xor i32 %i.aqa, %i.aqf                 ; 2 uses
  %i.aqh = tail call i32 @llvm.fshl.i32(i32 %i.aqg, i32 %i.aqg, i32 24) ; 2 uses
  %i.aqi = add i32 %i.aqb, %i.aqh                 ; 2 uses
  %i.aqj = xor i32 %i.aqd, %i.aqi                 ; 2 uses
  %i.aqk = tail call i32 @llvm.fshl.i32(i32 %i.aqj, i32 %i.aqj, i32 25)
  %i.aql = add i32 %i.ane, %i.aop
  %i.aqm = add i32 %i.aql, %.sroa.95.0.copyload   ; 2 uses
  %i.aqn = xor i32 %i.aod, %i.aqm                 ; 2 uses
  %i.aqo = tail call i32 @llvm.fshl.i32(i32 %i.aqn, i32 %i.aqn, i32 16) ; 2 uses
  %i.aqp = add i32 %i.anq, %i.aqo                 ; 2 uses
  %i.aqq = xor i32 %i.ane, %i.aqp                 ; 2 uses
  %i.aqr = tail call i32 @llvm.fshl.i32(i32 %i.aqq, i32 %i.aqq, i32 20) ; 2 uses
  %i.aqs = add i32 %i.aqm, %i.aqr
  %i.aqt = add i32 %i.aqs, %.sroa.0332.0.copyload ; 2 uses
  %i.aqu = xor i32 %i.aqo, %i.aqt                 ; 2 uses
  %i.aqv = tail call i32 @llvm.fshl.i32(i32 %i.aqu, i32 %i.aqu, i32 24) ; 2 uses
  %i.aqw = add i32 %i.aqp, %i.aqv                 ; 2 uses
  %i.aqx = xor i32 %i.aqr, %i.aqw                 ; 2 uses
  %i.aqy = tail call i32 @llvm.fshl.i32(i32 %i.aqx, i32 %i.aqx, i32 25)
  %i.aqz = xor i32 %i.p, %i.aqi
  %i.ara = xor i32 %i.aqz, %i.apd                 ; 3 uses
  store i32 %i.ara, ptr %0, align 8, !tbaa !13
  %i.arb = xor i32 %i.o, %i.aqw
  %i.arc = xor i32 %i.arb, %i.apr                 ; 3 uses
  store i32 %i.arc, ptr %.sroa.62.0..sroa_idx, align 4, !tbaa !13
  %i.ard = xor i32 %i.n, %i.apg
  %i.are = xor i32 %i.ard, %i.aqf                 ; 3 uses
  store i32 %i.are, ptr %.sroa.121.0..sroa_idx, align 8, !tbaa !13
  %i.arf = xor i32 %i.m, %i.apu
  %i.arg = xor i32 %i.arf, %i.aqt                 ; 3 uses
  store i32 %i.arg, ptr %.sroa.180.0..sroa_idx, align 4, !tbaa !13
  %i.arh = xor i32 %i.l, %i.aqy
  %i.ari = xor i32 %i.arh, %i.apt                 ; 3 uses
  store i32 %i.ari, ptr %.sroa.239.0..sroa_idx, align 8, !tbaa !13
  %i.arj = xor i32 %i.k, %i.api
  %i.ark = xor i32 %i.arj, %i.aqh                 ; 3 uses
  store i32 %i.ark, ptr %.sroa.303.0..sroa_idx, align 4, !tbaa !13
  %i.arl = xor i32 %i.j, %i.apw
  %i.arm = xor i32 %i.arl, %i.aqv                 ; 3 uses
  store i32 %i.arm, ptr %.sroa.370.0..sroa_idx, align 8, !tbaa !13
  %i.arn = xor i32 %i.i, %i.aqk
  %i.aro = xor i32 %i.arn, %i.apf                 ; 3 uses
  store i32 %i.aro, ptr %.sroa.437.0..sroa_idx, align 4, !tbaa !13
  %i.arp = getelementptr inbounds nuw i8, ptr %.034, i64 %i.a
  %i.arq = sub i64 %.033, %i.a                    ; 2 uses
  %.not = icmp eq i64 %i.arq, 0
  br i1 %.not, label %bb.b, label %bb.a, !llvm.loop !21

bb.b:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ossl_blake2s_final(ptr noundef %0, ptr noundef initializes((40, 44)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = add i64 %i.c, 3
  %i.e = lshr i64 %i.d, 2                         ; 4 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = and i64 %i.c, 3
  %i.h = icmp eq i64 %i.g, 0
  %spec.select = select i1 %i.h, ptr %0, ptr %i.a ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 -1, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = sub i64 64, %i.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.n, i1 false)
  %i.o = load i64, ptr %i.k, align 8, !tbaa !17
  tail call fastcc void @blake2s_compress(ptr noundef %1, ptr noundef nonnull %i.j, i64 noundef %i.o)
  %i.p = icmp sgt i32 %i.f, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %spec.select28 = ptrtoaddr ptr %spec.select to i64
  %i.q = ptrtoaddr ptr %1 to i64
  %wide.trip.count = and i64 %i.e, 2147483647     ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  %i.r = sub i64 %i.q, %spec.select28
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = shl nuw nsw i64 %index, 2
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !13
  %wide.load29 = load <4 x i32>, ptr %i.v, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load, ptr %i.t, align 1
  store <4 x i32> %wide.load29, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader30, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader30 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader30 ]
  %i.y = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !13
  store i32 %i.ab, ptr %i.z, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !23

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader30
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader30 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ae = shl nuw nsw i64 %indvars.iv, 2
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13
  store i32 %i.ah, ptr %i.af, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = shl nuw nsw i64 %indvars.iv.next, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !13
  store i32 %i.al, ptr %i.aj, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.am = shl nuw nsw i64 %indvars.iv.next.1, 2
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !13
  store i32 %i.ap, ptr %i.an, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aq = shl nuw nsw i64 %indvars.iv.next.2, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.at = load i32, ptr %i.as, align 4, !tbaa !13
  store i32 %i.at, ptr %i.ar, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.au = load i64, ptr %i.b, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %spec.select, i64 %i.au, i1 false)
  call void @OPENSSL_cleanse(ptr noundef %spec.select, i64 noundef 32) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 128) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"blake2s_param_st", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 8, !6, i64 14, !6, i64 15, !6, i64 16, !6, i64 24}
!11 = !{!10, !6, i64 0}
!12 = !{!"branch_weights", i32 1, i32 1048575}
!13 = !{!7, !7, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"blake2s_ctx_st", !6, i64 0, !6, i64 32, !6, i64 40, !6, i64 48, !14, i64 112, !14, i64 120}
!16 = !{!15, !14, i64 120}
!17 = !{!15, !14, i64 112}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!6, !6, i64 0}
!20 = !{!10, !6, i64 1}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18, !25, !26}
!23 = distinct !{!23, !27}
!24 = distinct !{!24, !18, !25}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
