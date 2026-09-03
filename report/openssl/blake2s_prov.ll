Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/blake2s_prov?download=true
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
define void @ossl_blake2s_param_init(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0) local_unnamed_addr #0 {
bb.a:
  store <4 x i8> <i8 32, i8 0, i8 1, i8 1>, ptr %0, align 1, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ossl_blake2s_param_set_digest_length(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ossl_blake2s_param_set_key_length(ptr nofree noundef writeonly captures(none) initializes((1, 2)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %i.a, align 1, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ossl_blake2s_param_set_personal(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
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
define void @ossl_blake2s_param_set_salt(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %1, i64 %2, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.c = sub i64 8, %2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.b, i8 0, i64 %i.c, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @ossl_blake2s_init(ptr nofree noundef writeonly captures(none) initializes((0, 128)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 32
  %i.d = add i64 %i.a, 128
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !10

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !11
  %i.f = load i8, ptr %1, align 1, !tbaa !9
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.g, ptr %i.h, align 8, !tbaa !14
  %i.i = load <4 x i32>, ptr %1, align 1
  %i.j = xor <4 x i32> %i.i, <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>
  store <4 x i32> %i.j, ptr %0, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load <4 x i32>, ptr %i.k, align 1
  %i.n = xor <4 x i32> %i.m, <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>
  store <4 x i32> %i.n, ptr %i.l, align 8, !tbaa !11
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.o, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !11
  %i.p = load i8, ptr %1, align 1, !tbaa !9
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.q, ptr %i.r, align 8, !tbaa !14
  %.val.i.scalar = load i32, ptr %1, align 1
  %i.s = xor i32 %.val.i.scalar, 1779033703
  store i32 %i.s, ptr %0, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.1.i.scalar = load i32, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = xor i32 %.val.1.i.scalar, -1150833019
  store i32 %i.v, ptr %i.u, align 4, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.2.i.scalar = load i32, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = xor i32 %.val.2.i.scalar, 1013904242
  store i32 %i.y, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val.3.i.scalar = load i32, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = xor i32 %.val.3.i.scalar, -1521486534
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.4.i.scalar = load i32, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = xor i32 %.val.4.i.scalar, 1359893119
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val.5.i.scalar = load i32, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ah = xor i32 %.val.5.i.scalar, -1694144372
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.6.i.scalar = load i32, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = xor i32 %.val.6.i.scalar, 528734635
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val.7.i.scalar = load i32, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.an = xor i32 %.val.7.i.scalar, 1541459225
  store i32 %i.an, ptr %i.am, align 4, !tbaa !11
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret i32 1
}

; Function Attrs: nounwind uwtable
define noundef i32 @ossl_blake2s_init_key(ptr nofree noundef writeonly captures(none) initializes((0, 128)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
ossl_blake2s_update.exit:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 32
  %i.d = add i64 %i.a, 128
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %ossl_blake2s_update.exit.rtscalar, label %ossl_blake2s_update.exit.rtvec, !prof !10

ossl_blake2s_update.exit.rtvec:                   ; preds = %ossl_blake2s_update.exit
  %i.e = alloca [64 x i8], align 16               ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !11
  %i.g = load i8, ptr %1, align 1, !tbaa !9
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.h, ptr %i.i, align 8, !tbaa !14
  %i.j = load <4 x i32>, ptr %1, align 1
  %.val.i = load i32, ptr %1, align 1
  %i.k = xor <4 x i32> %i.j, <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>
  store <4 x i32> %i.k, ptr %0, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load <4 x i32>, ptr %i.l, align 1
  %i.o = xor <4 x i32> %i.n, <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>
  store <4 x i32> %i.o, ptr %i.m, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.p = lshr i32 %.val.i, 8
  %i.q = and i32 %i.p, 255
  %i.r = zext nneg i32 %i.q to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr align 1 %2, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 16 dereferenceable(64) %i.e, i64 64, i1 false)
  store i64 64, ptr %i.s, align 8, !tbaa !15
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 64) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %ossl_blake2s_update.exit.rtcont

ossl_blake2s_update.exit.rtscalar:                ; preds = %ossl_blake2s_update.exit
  %i.u = alloca [64 x i8], align 16               ; 6 uses
  %i.v = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.v, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !11
  %i.w = load i8, ptr %1, align 1, !tbaa !9
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.x, ptr %i.y, align 8, !tbaa !14
  %.val.i.scalar = load i32, ptr %1, align 1      ; 2 uses
  %i.z = xor i32 %.val.i.scalar, 1779033703
  store i32 %i.z, ptr %0, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.1.i.scalar = load i32, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = xor i32 %.val.1.i.scalar, -1150833019
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.2.i.scalar = load i32, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = xor i32 %.val.2.i.scalar, 1013904242
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val.3.i.scalar = load i32, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ai = xor i32 %.val.3.i.scalar, -1521486534
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.4.i.scalar = load i32, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = xor i32 %.val.4.i.scalar, 1359893119
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val.5.i.scalar = load i32, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ao = xor i32 %.val.5.i.scalar, -1694144372
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.6.i.scalar = load i32, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = xor i32 %.val.6.i.scalar, 528734635
  store i32 %i.ar, ptr %i.aq, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val.7.i.scalar = load i32, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = xor i32 %.val.7.i.scalar, 1541459225
  store i32 %i.au, ptr %i.at, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.u, i8 0, i64 64, i1 false)
  %i.av = lshr i32 %.val.i.scalar, 8
  %i.aw = and i32 %i.av, 255
  %i.ax = zext nneg i32 %i.aw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.u, ptr align 1 %2, i64 %i.ax, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.az, ptr noundef nonnull align 16 dereferenceable(64) %i.u, i64 64, i1 false)
  store i64 64, ptr %i.ay, align 8, !tbaa !15
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.u, i64 noundef 64) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  br label %ossl_blake2s_update.exit.rtcont

ossl_blake2s_update.exit.rtcont:                  ; preds = %ossl_blake2s_update.exit.rtscalar, %ossl_blake2s_update.exit.rtvec
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @ossl_blake2s_update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 4 uses
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
  store i64 0, ptr %i.a, align 8, !tbaa !15
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
  %.pre = load i64, ptr %i.a, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %i.n = phi i64 [ %.pre, %bb.e ], [ 0, %bb.d ], [ %i.b, %bb.a ]
  %.134 = phi ptr [ %i.m, %bb.e ], [ %.033, %bb.d ], [ %1, %bb.a ]
  %.1 = phi i64 [ %i.k, %bb.e ], [ %.0, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %.134, i64 %.1, i1 false)
  %i.q = load i64, ptr %i.a, align 8, !tbaa !15
  %i.r = add i64 %i.q, %.1
  store i64 %i.r, ptr %i.a, align 8, !tbaa !15
  ret i32 1
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @blake2s_compress(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
.preheader:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !11
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.sroa.62.0.copyload = load i32, ptr %.sroa.62.0..sroa_idx, align 4, !tbaa !11
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.121.0.copyload = load i32, ptr %.sroa.121.0..sroa_idx, align 4, !tbaa !11
  %.sroa.180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %.sroa.180.0.copyload = load i32, ptr %.sroa.180.0..sroa_idx, align 4, !tbaa !11
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.239.0.copyload = load i32, ptr %.sroa.239.0..sroa_idx, align 4, !tbaa !11
  %.sroa.303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.sroa.303.0.copyload = load i32, ptr %.sroa.303.0..sroa_idx, align 4, !tbaa !11
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.370.0.copyload = load i32, ptr %.sroa.370.0..sroa_idx, align 4, !tbaa !11
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %.sroa.437.0.copyload = load i32, ptr %.sroa.437.0..sroa_idx, align 4, !tbaa !11
  %i.a = tail call i64 @llvm.umin.i64(i64 %2, i64 64) ; 3 uses
  %i.b = trunc nuw nsw i64 %i.a to i32            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.e, align 8, !tbaa !11
  %i.h = load i32, ptr %i.f, align 4, !tbaa !11
  %.promoted = load i32, ptr %i.c, align 8, !tbaa !11
  %.promoted432 = load i32, ptr %i.d, align 4, !tbaa !11
  %.promoted433 = load i32, ptr %0, align 8, !tbaa !11
  %.sroa.62.0..sroa_idx.promoted = load i32, ptr %.sroa.62.0..sroa_idx, align 4, !tbaa !11
  %.sroa.121.0..sroa_idx.promoted = load i32, ptr %.sroa.121.0..sroa_idx, align 8, !tbaa !11
  %.sroa.180.0..sroa_idx.promoted = load i32, ptr %.sroa.180.0..sroa_idx, align 4, !tbaa !11
  %.sroa.239.0..sroa_idx.promoted = load i32, ptr %.sroa.239.0..sroa_idx, align 8, !tbaa !11
  %.sroa.303.0..sroa_idx.promoted = load i32, ptr %.sroa.303.0..sroa_idx, align 4, !tbaa !11
  %.sroa.370.0..sroa_idx.promoted = load i32, ptr %.sroa.370.0..sroa_idx, align 8, !tbaa !11
  %.sroa.437.0..sroa_idx.promoted = load i32, ptr %.sroa.437.0..sroa_idx, align 4, !tbaa !11
  %invariant.op = xor i32 %i.g, 528734635
  %invariant.op434 = xor i32 %i.h, 1541459225
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %bb.a
  %i.i = phi i32 [ %.sroa.437.0..sroa_idx.promoted, %.preheader ], [ %i.arn, %bb.a ]
  %i.j = phi i32 [ %.sroa.370.0..sroa_idx.promoted, %.preheader ], [ %i.arl, %bb.a ]
  %i.k = phi i32 [ %.sroa.303.0..sroa_idx.promoted, %.preheader ], [ %i.arj, %bb.a ]
  %i.l = phi i32 [ %.sroa.239.0..sroa_idx.promoted, %.preheader ], [ %i.arh, %bb.a ]
  %i.m = phi i32 [ %.sroa.180.0..sroa_idx.promoted, %.preheader ], [ %i.arf, %bb.a ]
  %i.n = phi i32 [ %.sroa.121.0..sroa_idx.promoted, %.preheader ], [ %i.ard, %bb.a ]
  %i.o = phi i32 [ %.sroa.62.0..sroa_idx.promoted, %.preheader ], [ %i.arb, %bb.a ]
  %i.p = phi i32 [ %.promoted433, %.preheader ], [ %i.aqz, %bb.a ]
  %i.q = phi i32 [ %.promoted432, %.preheader ], [ %i.v, %bb.a ]
  %i.r = phi i32 [ %.promoted, %.preheader ], [ %i.s, %bb.a ]
  %.sroa.437.0 = phi i32 [ %.sroa.437.0.copyload, %.preheader ], [ %i.arn, %bb.a ] ; 2 uses
  %.sroa.370.0 = phi i32 [ %.sroa.370.0.copyload, %.preheader ], [ %i.arl, %bb.a ] ; 2 uses
  %.sroa.303.0 = phi i32 [ %.sroa.303.0.copyload, %.preheader ], [ %i.arj, %bb.a ] ; 2 uses
  %.sroa.239.0 = phi i32 [ %.sroa.239.0.copyload, %.preheader ], [ %i.arh, %bb.a ] ; 2 uses
  %.sroa.180.0 = phi i32 [ %.sroa.180.0.copyload, %.preheader ], [ %i.arf, %bb.a ]
  %.sroa.121.0 = phi i32 [ %.sroa.121.0.copyload, %.preheader ], [ %i.ard, %bb.a ]
  %.sroa.62.0 = phi i32 [ %.sroa.62.0.copyload, %.preheader ], [ %i.arb, %bb.a ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %.preheader ], [ %i.aqz, %bb.a ]
  %.034 = phi ptr [ %1, %.preheader ], [ %i.aro, %bb.a ] ; 17 uses
  %.033 = phi i64 [ %2, %.preheader ], [ %i.arp, %bb.a ]
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
  %i.s = add i32 %i.r, %i.b                       ; 4 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !11
  %i.t = icmp ult i32 %i.s, %i.b
  %i.u = zext i1 %i.t to i32
  %i.v = add i32 %i.q, %i.u                       ; 3 uses
  store i32 %i.v, ptr %i.d, align 4, !tbaa !11
  %i.w = add i32 %.sroa.239.0, %.sroa.0.0
  %i.x = add i32 %i.w, %.sroa.0332.0.copyload     ; 2 uses
  %i.y = xor i32 %i.s, %i.x
  %i.z = xor i32 %i.y, 1359893119                 ; 2 uses
  %i.aa = tail call i32 @llvm.fshl.i32(i32 %i.z, i32 %i.z, i32 16) ; 2 uses
  %i.ab = add i32 %i.aa, 1779033703               ; 2 uses
  %i.ac = xor i32 %i.ab, %.sroa.239.0             ; 2 uses
  %i.ad = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 20) ; 2 uses
  %i.ae = add i32 %.sroa.10.0.copyload, %i.x
  %i.af = add i32 %i.ae, %i.ad                    ; 2 uses
  %i.ag = xor i32 %i.af, %i.aa                    ; 2 uses
  %i.ah = tail call i32 @llvm.fshl.i32(i32 %i.ag, i32 %i.ag, i32 24) ; 2 uses
  %i.ai = add i32 %i.ah, %i.ab                    ; 2 uses
  %i.aj = xor i32 %i.ai, %i.ad                    ; 2 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 25) ; 2 uses
  %i.al = add i32 %.sroa.303.0, %.sroa.62.0
  %i.am = add i32 %i.al, %.sroa.17.0.copyload     ; 2 uses
  %i.an = xor i32 %i.v, %i.am
  %i.ao = xor i32 %i.an, -1694144372              ; 2 uses
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 16) ; 2 uses
  %i.aq = add i32 %i.ap, -1150833019              ; 2 uses
  %i.ar = xor i32 %i.aq, %.sroa.303.0             ; 2 uses
  %i.as = tail call i32 @llvm.fshl.i32(i32 %i.ar, i32 %i.ar, i32 20) ; 2 uses
  %i.at = add i32 %.sroa.24.0.copyload, %i.am
  %i.au = add i32 %i.at, %i.as                    ; 2 uses
  %i.av = xor i32 %i.au, %i.ap                    ; 2 uses
  %i.aw = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.av, i32 24) ; 2 uses
  %i.ax = add i32 %i.aw, %i.aq                    ; 2 uses
  %i.ay = xor i32 %i.ax, %i.as                    ; 2 uses
  %i.az = tail call i32 @llvm.fshl.i32(i32 %i.ay, i32 %i.ay, i32 25) ; 2 uses
  %i.ba = add i32 %.sroa.370.0, %.sroa.121.0
  %i.bb = add i32 %i.ba, %.sroa.31.0.copyload     ; 2 uses
  %.reass.reass = xor i32 %i.bb, %invariant.op    ; 2 uses
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %.reass.reass, i32 %.reass.reass, i32 16) ; 2 uses
  %i.bd = add i32 %i.bc, 1013904242               ; 2 uses
  %i.be = xor i32 %i.bd, %.sroa.370.0             ; 2 uses
  %i.bf = tail call i32 @llvm.fshl.i32(i32 %i.be, i32 %i.be, i32 20) ; 2 uses
  %i.bg = add i32 %.sroa.38.0.copyload, %i.bb
  %i.bh = add i32 %i.bg, %i.bf                    ; 2 uses
  %i.bi = xor i32 %i.bh, %i.bc                    ; 2 uses
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 24) ; 2 uses
  %i.bk = add i32 %i.bj, %i.bd                    ; 2 uses
  %i.bl = xor i32 %i.bk, %i.bf                    ; 2 uses
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 25) ; 2 uses
  %i.bn = add i32 %.sroa.437.0, %.sroa.180.0
  %i.bo = add i32 %i.bn, %.sroa.46.0.copyload     ; 2 uses
  %.reass431.reass = xor i32 %i.bo, %invariant.op434 ; 2 uses
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %.reass431.reass, i32 %.reass431.reass, i32 16) ; 2 uses
  %i.bq = add i32 %i.bp, -1521486534              ; 2 uses
  %i.br = xor i32 %i.bq, %.sroa.437.0             ; 2 uses
  %i.bs = tail call i32 @llvm.fshl.i32(i32 %i.br, i32 %i.br, i32 20) ; 2 uses
  %i.bt = add i32 %.sroa.53.0.copyload, %i.bo
  %i.bu = add i32 %i.bt, %i.bs                    ; 2 uses
  %i.bv = xor i32 %i.bu, %i.bp                    ; 2 uses
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 24) ; 2 uses
  %i.bx = add i32 %i.bw, %i.bq                    ; 2 uses
  %i.by = xor i32 %i.bx, %i.bs                    ; 2 uses
  %i.bz = tail call i32 @llvm.fshl.i32(i32 %i.by, i32 %i.by, i32 25) ; 2 uses
  %i.ca = add i32 %i.az, %i.af
  %i.cb = add i32 %i.ca, %.sroa.60.0.copyload     ; 2 uses
  %i.cc = xor i32 %i.cb, %i.bw                    ; 2 uses
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %i.cc, i32 %i.cc, i32 16) ; 2 uses
  %i.ce = add i32 %i.cd, %i.bk                    ; 2 uses
  %i.cf = xor i32 %i.ce, %i.az                    ; 2 uses
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %i.cf, i32 %i.cf, i32 20) ; 2 uses
  %i.ch = add i32 %.sroa.67.0.copyload, %i.cb
  %i.ci = add i32 %i.ch, %i.cg                    ; 2 uses
  %i.cj = xor i32 %i.ci, %i.cd                    ; 2 uses
  %i.ck = tail call i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cj, i32 24) ; 2 uses
  %i.cl = add i32 %i.ck, %i.ce                    ; 2 uses
  %i.cm = xor i32 %i.cl, %i.cg                    ; 2 uses
  %i.cn = tail call i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 25) ; 2 uses
  %i.co = add i32 %i.bm, %i.au
  %i.cp = add i32 %i.co, %.sroa.74.0.copyload     ; 2 uses
  %i.cq = xor i32 %i.cp, %i.ah                    ; 2 uses
  %i.cr = tail call i32 @llvm.fshl.i32(i32 %i.cq, i32 %i.cq, i32 16) ; 2 uses
  %i.cs = add i32 %i.cr, %i.bx                    ; 2 uses
  %i.ct = xor i32 %i.cs, %i.bm                    ; 2 uses
  %i.cu = tail call i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.ct, i32 20) ; 2 uses
  %i.cv = add i32 %.sroa.81.0.copyload, %i.cp
  %i.cw = add i32 %i.cv, %i.cu                    ; 2 uses
  %i.cx = xor i32 %i.cw, %i.cr                    ; 2 uses
  %i.cy = tail call i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.cx, i32 24) ; 2 uses
  %i.cz = add i32 %i.cy, %i.cs                    ; 2 uses
  %i.da = xor i32 %i.cz, %i.cu                    ; 2 uses
  %i.db = tail call i32 @llvm.fshl.i32(i32 %i.da, i32 %i.da, i32 25) ; 2 uses
  %i.dc = add i32 %i.bz, %i.bh
  %i.dd = add i32 %i.dc, %.sroa.88.0.copyload     ; 2 uses
  %i.de = xor i32 %i.dd, %i.aw                    ; 2 uses
  %i.df = tail call i32 @llvm.fshl.i32(i32 %i.de, i32 %i.de, i32 16) ; 2 uses
  %i.dg = add i32 %i.df, %i.ai                    ; 2 uses
  %i.dh = xor i32 %i.dg, %i.bz                    ; 2 uses
  %i.di = tail call i32 @llvm.fshl.i32(i32 %i.dh, i32 %i.dh, i32 20) ; 2 uses
  %i.dj = add i32 %.sroa.95.0.copyload, %i.dd
  %i.dk = add i32 %i.dj, %i.di                    ; 2 uses
  %i.dl = xor i32 %i.dk, %i.df                    ; 2 uses
  %i.dm = tail call i32 @llvm.fshl.i32(i32 %i.dl, i32 %i.dl, i32 24) ; 2 uses
  %i.dn = add i32 %i.dm, %i.dg                    ; 2 uses
  %i.do = xor i32 %i.dn, %i.di                    ; 2 uses
  %i.dp = tail call i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 25) ; 2 uses
  %i.dq = add i32 %i.bu, %i.ak
  %i.dr = add i32 %i.dq, %.sroa.102.0.copyload    ; 2 uses
  %i.ds = xor i32 %i.dr, %i.bj                    ; 2 uses
  %i.dt = tail call i32 @llvm.fshl.i32(i32 %i.ds, i32 %i.ds, i32 16) ; 2 uses
  %i.du = add i32 %i.dt, %i.ax                    ; 2 uses
  %i.dv = xor i32 %i.du, %i.ak                    ; 2 uses
  %i.dw = tail call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 20) ; 2 uses
  %i.dx = add i32 %.sroa.109.0.copyload, %i.dr
  %i.dy = add i32 %i.dx, %i.dw                    ; 2 uses
  %i.dz = xor i32 %i.dy, %i.dt                    ; 2 uses
  %i.ea = tail call i32 @llvm.fshl.i32(i32 %i.dz, i32 %i.dz, i32 24) ; 2 uses
  %i.eb = add i32 %i.ea, %i.du                    ; 2 uses
  %i.ec = xor i32 %i.eb, %i.dw                    ; 2 uses
  %i.ed = tail call i32 @llvm.fshl.i32(i32 %i.ec, i32 %i.ec, i32 25) ; 2 uses
  %i.ee = add i32 %.sroa.102.0.copyload, %i.ci
  %i.ef = add i32 %i.ee, %i.ed                    ; 2 uses
  %i.eg = xor i32 %i.ef, %i.cy                    ; 2 uses
  %i.eh = tail call i32 @llvm.fshl.i32(i32 %i.eg, i32 %i.eg, i32 16) ; 2 uses
  %i.ei = add i32 %i.eh, %i.dn                    ; 2 uses
  %i.ej = xor i32 %i.ei, %i.ed                    ; 2 uses
  %i.ek = tail call i32 @llvm.fshl.i32(i32 %i.ej, i32 %i.ej, i32 20) ; 2 uses
  %i.el = add i32 %i.ef, %.sroa.74.0.copyload
  %i.em = add i32 %i.el, %i.ek                    ; 2 uses
  %i.en = xor i32 %i.em, %i.eh                    ; 2 uses
  %i.eo = tail call i32 @llvm.fshl.i32(i32 %i.en, i32 %i.en, i32 24) ; 2 uses
  %i.ep = add i32 %i.eo, %i.ei                    ; 2 uses
  %i.eq = xor i32 %i.ep, %i.ek                    ; 2 uses
  %i.er = tail call i32 @llvm.fshl.i32(i32 %i.eq, i32 %i.eq, i32 25) ; 2 uses
  %i.es = add i32 %i.cn, %.sroa.31.0.copyload
  %i.et = add i32 %i.es, %i.cw                    ; 2 uses
  %i.eu = xor i32 %i.dm, %i.et                    ; 2 uses
  %i.ev = tail call i32 @llvm.fshl.i32(i32 %i.eu, i32 %i.eu, i32 16) ; 2 uses
  %i.ew = add i32 %i.eb, %i.ev                    ; 2 uses
  %i.ex = xor i32 %i.ew, %i.cn                    ; 2 uses
  %i.ey = tail call i32 @llvm.fshl.i32(i32 %i.ex, i32 %i.ex, i32 20) ; 2 uses
  %i.ez = add i32 %i.et, %.sroa.60.0.copyload
  %i.fa = add i32 %i.ez, %i.ey                    ; 2 uses
  %i.fb = xor i32 %i.fa, %i.ev                    ; 2 uses
  %i.fc = tail call i32 @llvm.fshl.i32(i32 %i.fb, i32 %i.fb, i32 24) ; 2 uses
  %i.fd = add i32 %i.fc, %i.ew                    ; 2 uses
  %i.fe = xor i32 %i.fd, %i.ey                    ; 2 uses
  %i.ff = tail call i32 @llvm.fshl.i32(i32 %i.fe, i32 %i.fe, i32 25) ; 2 uses
  %i.fg = add i32 %i.db, %.sroa.67.0.copyload
  %i.fh = add i32 %i.fg, %i.dk                    ; 2 uses
  %i.fi = xor i32 %i.ea, %i.fh                    ; 2 uses
  %i.fj = tail call i32 @llvm.fshl.i32(i32 %i.fi, i32 %i.fi, i32 16) ; 2 uses
  %i.fk = add i32 %i.fj, %i.cl                    ; 2 uses
  %i.fl = xor i32 %i.fk, %i.db                    ; 2 uses
  %i.fm = tail call i32 @llvm.fshl.i32(i32 %i.fl, i32 %i.fl, i32 20) ; 2 uses
  %i.fn = add i32 %.sroa.109.0.copyload, %i.fh
  %i.fo = add i32 %i.fn, %i.fm                    ; 2 uses
  %i.fp = xor i32 %i.fo, %i.fj                    ; 2 uses
  %i.fq = tail call i32 @llvm.fshl.i32(i32 %i.fp, i32 %i.fp, i32 24) ; 2 uses
  %i.fr = add i32 %i.fq, %i.fk                    ; 2 uses
  %i.fs = xor i32 %i.fr, %i.fm                    ; 2 uses
  %i.ft = tail call i32 @llvm.fshl.i32(i32 %i.fs, i32 %i.fs, i32 25) ; 2 uses
  %i.fu = add i32 %i.dp, %.sroa.95.0.copyload
  %i.fv = add i32 %i.fu, %i.dy                    ; 2 uses
  %i.fw = xor i32 %i.fv, %i.ck                    ; 2 uses
  %i.fx = tail call i32 @llvm.fshl.i32(i32 %i.fw, i32 %i.fw, i32 16) ; 2 uses
  %i.fy = add i32 %i.fx, %i.cz                    ; 2 uses
  %i.fz = xor i32 %i.fy, %i.dp                    ; 2 uses
  %i.ga = tail call i32 @llvm.fshl.i32(i32 %i.fz, i32 %i.fz, i32 20) ; 2 uses
  %i.gb = add i32 %i.fv, %.sroa.46.0.copyload
  %i.gc = add i32 %i.gb, %i.ga                    ; 2 uses
  %i.gd = xor i32 %i.gc, %i.fx                    ; 2 uses
  %i.ge = tail call i32 @llvm.fshl.i32(i32 %i.gd, i32 %i.gd, i32 24) ; 2 uses
  %i.gf = add i32 %i.ge, %i.fy                    ; 2 uses
  %i.gg = xor i32 %i.gf, %i.ga                    ; 2 uses
  %i.gh = tail call i32 @llvm.fshl.i32(i32 %i.gg, i32 %i.gg, i32 25) ; 2 uses
  %i.gi = add i32 %i.ff, %.sroa.10.0.copyload
  %i.gj = add i32 %i.gi, %i.em                    ; 2 uses
  %i.gk = xor i32 %i.gj, %i.ge                    ; 2 uses
  %i.gl = tail call i32 @llvm.fshl.i32(i32 %i.gk, i32 %i.gk, i32 16) ; 2 uses
  %i.gm = add i32 %i.gl, %i.fr                    ; 2 uses
  %i.gn = xor i32 %i.gm, %i.ff                    ; 2 uses
  %i.go = tail call i32 @llvm.fshl.i32(i32 %i.gn, i32 %i.gn, i32 20) ; 2 uses
  %i.gp = add i32 %i.gj, %.sroa.88.0.copyload
  %i.gq = add i32 %i.gp, %i.go                    ; 2 uses
  %i.gr = xor i32 %i.gq, %i.gl                    ; 2 uses
  %i.gs = tail call i32 @llvm.fshl.i32(i32 %i.gr, i32 %i.gr, i32 24) ; 2 uses
  %i.gt = add i32 %i.gs, %i.gm                    ; 2 uses
  %i.gu = xor i32 %i.gt, %i.go                    ; 2 uses
  %i.gv = tail call i32 @llvm.fshl.i32(i32 %i.gu, i32 %i.gu, i32 25) ; 2 uses
  %i.gw = add i32 %i.ft, %i.fa
  %i.gx = add i32 %i.gw, %.sroa.0332.0.copyload   ; 2 uses
  %i.gy = xor i32 %i.gx, %i.eo                    ; 2 uses
  %i.gz = tail call i32 @llvm.fshl.i32(i32 %i.gy, i32 %i.gy, i32 16) ; 2 uses
  %i.ha = add i32 %i.gz, %i.gf                    ; 2 uses
  %i.hb = xor i32 %i.ha, %i.ft                    ; 2 uses
  %i.hc = tail call i32 @llvm.fshl.i32(i32 %i.hb, i32 %i.hb, i32 20) ; 2 uses
  %i.hd = add i32 %.sroa.17.0.copyload, %i.gx
  %i.he = add i32 %i.hd, %i.hc                    ; 2 uses
  %i.hf = xor i32 %i.he, %i.gz                    ; 2 uses
  %i.hg = tail call i32 @llvm.fshl.i32(i32 %i.hf, i32 %i.hf, i32 24) ; 2 uses
  %i.hh = add i32 %i.hg, %i.ha                    ; 2 uses
  %i.hi = xor i32 %i.hh, %i.hc                    ; 2 uses
  %i.hj = tail call i32 @llvm.fshl.i32(i32 %i.hi, i32 %i.hi, i32 25) ; 2 uses
  %i.hk = add i32 %i.fo, %.sroa.81.0.copyload
  %i.hl = add i32 %i.hk, %i.gh                    ; 2 uses
end_hunk_0
begin_hunk_1_@blake2s_compress:.preheader
  %i.aji = xor i32 %i.ajc, %i.ajh                 ; 2 uses
  %i.ajj = tail call i32 @llvm.fshl.i32(i32 %i.aji, i32 %i.aji, i32 25) ; 2 uses
  %i.ajk = add i32 %i.ahf, %i.aho
  %i.ajl = add i32 %i.ajk, %.sroa.81.0.copyload   ; 2 uses
  %i.ajm = xor i32 %i.aie, %i.ajl                 ; 2 uses
  %i.ajn = tail call i32 @llvm.fshl.i32(i32 %i.ajm, i32 %i.ajm, i32 16) ; 2 uses
  %i.ajo = add i32 %i.agp, %i.ajn                 ; 2 uses
  %i.ajp = xor i32 %i.ahf, %i.ajo                 ; 2 uses
  %i.ajq = tail call i32 @llvm.fshl.i32(i32 %i.ajp, i32 %i.ajp, i32 20) ; 2 uses
  %i.ajr = add i32 %i.ajl, %i.ajq
  %i.ajs = add i32 %i.ajr, %.sroa.24.0.copyload   ; 2 uses
  %i.ajt = xor i32 %i.ajn, %i.ajs                 ; 2 uses
  %i.aju = tail call i32 @llvm.fshl.i32(i32 %i.ajt, i32 %i.ajt, i32 24) ; 2 uses
  %i.ajv = add i32 %i.ajo, %i.aju                 ; 2 uses
  %i.ajw = xor i32 %i.ajq, %i.ajv                 ; 2 uses
  %i.ajx = tail call i32 @llvm.fshl.i32(i32 %i.ajw, i32 %i.ajw, i32 25) ; 2 uses
  %i.ajy = add i32 %i.aht, %i.aic
  %i.ajz = add i32 %i.ajy, %.sroa.0332.0.copyload ; 2 uses
  %i.aka = xor i32 %i.ago, %i.ajz                 ; 2 uses
  %i.akb = tail call i32 @llvm.fshl.i32(i32 %i.aka, i32 %i.aka, i32 16) ; 2 uses
  %i.akc = add i32 %i.ahd, %i.akb                 ; 2 uses
  %i.akd = xor i32 %i.aht, %i.akc                 ; 2 uses
  %i.ake = tail call i32 @llvm.fshl.i32(i32 %i.akd, i32 %i.akd, i32 20) ; 2 uses
  %i.akf = add i32 %i.ajz, %i.ake
  %i.akg = add i32 %i.akf, %.sroa.60.0.copyload   ; 2 uses
  %i.akh = xor i32 %i.akb, %i.akg                 ; 2 uses
  %i.aki = tail call i32 @llvm.fshl.i32(i32 %i.akh, i32 %i.akh, i32 24) ; 2 uses
  %i.akj = add i32 %i.akc, %i.aki                 ; 2 uses
  %i.akk = xor i32 %i.ake, %i.akj                 ; 2 uses
  %i.akl = tail call i32 @llvm.fshl.i32(i32 %i.akk, i32 %i.akk, i32 25) ; 2 uses
  %i.akm = add i32 %i.ajj, %i.aiq
  %i.akn = add i32 %i.akm, %.sroa.88.0.copyload   ; 2 uses
  %i.ako = xor i32 %i.aki, %i.akn                 ; 2 uses
  %i.akp = tail call i32 @llvm.fshl.i32(i32 %i.ako, i32 %i.ako, i32 16) ; 2 uses
  %i.akq = add i32 %i.ajv, %i.akp                 ; 2 uses
  %i.akr = xor i32 %i.ajj, %i.akq                 ; 2 uses
  %i.aks = tail call i32 @llvm.fshl.i32(i32 %i.akr, i32 %i.akr, i32 20) ; 2 uses
  %i.akt = add i32 %i.akn, %i.aks
  %i.aku = add i32 %i.akt, %.sroa.17.0.copyload   ; 2 uses
  %i.akv = xor i32 %i.akp, %i.aku                 ; 2 uses
  %i.akw = tail call i32 @llvm.fshl.i32(i32 %i.akv, i32 %i.akv, i32 24) ; 2 uses
  %i.akx = add i32 %i.akq, %i.akw                 ; 2 uses
  %i.aky = xor i32 %i.aks, %i.akx                 ; 2 uses
  %i.akz = tail call i32 @llvm.fshl.i32(i32 %i.aky, i32 %i.aky, i32 25) ; 2 uses
  %i.ala = add i32 %i.ajx, %i.aje
  %i.alb = add i32 %i.ala, %.sroa.95.0.copyload   ; 2 uses
  %i.alc = xor i32 %i.ais, %i.alb                 ; 2 uses
  %i.ald = tail call i32 @llvm.fshl.i32(i32 %i.alc, i32 %i.alc, i32 16) ; 2 uses
  %i.ale = add i32 %i.akj, %i.ald                 ; 2 uses
  %i.alf = xor i32 %i.ajx, %i.ale                 ; 2 uses
  %i.alg = tail call i32 @llvm.fshl.i32(i32 %i.alf, i32 %i.alf, i32 20) ; 2 uses
  %i.alh = add i32 %i.alb, %i.alg
  %i.ali = add i32 %i.alh, %.sroa.53.0.copyload   ; 2 uses
  %i.alj = xor i32 %i.ald, %i.ali                 ; 2 uses
  %i.alk = tail call i32 @llvm.fshl.i32(i32 %i.alj, i32 %i.alj, i32 24) ; 2 uses
  %i.all = add i32 %i.ale, %i.alk                 ; 2 uses
  %i.alm = xor i32 %i.alg, %i.all                 ; 2 uses
  %i.aln = tail call i32 @llvm.fshl.i32(i32 %i.alm, i32 %i.alm, i32 25) ; 2 uses
  %i.alo = add i32 %i.akl, %i.ajs
  %i.alp = add i32 %i.alo, %.sroa.10.0.copyload   ; 2 uses
  %i.alq = xor i32 %i.ajg, %i.alp                 ; 2 uses
  %i.alr = tail call i32 @llvm.fshl.i32(i32 %i.alq, i32 %i.alq, i32 16) ; 2 uses
  %i.als = add i32 %i.ait, %i.alr                 ; 2 uses
  %i.alt = xor i32 %i.akl, %i.als                 ; 2 uses
  %i.alu = tail call i32 @llvm.fshl.i32(i32 %i.alt, i32 %i.alt, i32 20) ; 2 uses
  %i.alv = add i32 %i.alp, %i.alu
  %i.alw = add i32 %i.alv, %.sroa.31.0.copyload   ; 2 uses
  %i.alx = xor i32 %i.alr, %i.alw                 ; 2 uses
  %i.aly = tail call i32 @llvm.fshl.i32(i32 %i.alx, i32 %i.alx, i32 24) ; 2 uses
  %i.alz = add i32 %i.als, %i.aly                 ; 2 uses
  %i.ama = xor i32 %i.alu, %i.alz                 ; 2 uses
  %i.amb = tail call i32 @llvm.fshl.i32(i32 %i.ama, i32 %i.ama, i32 25) ; 2 uses
  %i.amc = add i32 %i.aiv, %i.akg
  %i.amd = add i32 %i.amc, %.sroa.74.0.copyload   ; 2 uses
  %i.ame = xor i32 %i.aju, %i.amd                 ; 2 uses
  %i.amf = tail call i32 @llvm.fshl.i32(i32 %i.ame, i32 %i.ame, i32 16) ; 2 uses
  %i.amg = add i32 %i.ajh, %i.amf                 ; 2 uses
  %i.amh = xor i32 %i.aiv, %i.amg                 ; 2 uses
  %i.ami = tail call i32 @llvm.fshl.i32(i32 %i.amh, i32 %i.amh, i32 20) ; 2 uses
  %i.amj = add i32 %i.amd, %i.ami
  %i.amk = add i32 %i.amj, %.sroa.38.0.copyload   ; 2 uses
  %i.aml = xor i32 %i.amf, %i.amk                 ; 2 uses
  %i.amm = tail call i32 @llvm.fshl.i32(i32 %i.aml, i32 %i.aml, i32 24) ; 2 uses
  %i.amn = add i32 %i.amg, %i.amm                 ; 2 uses
  %i.amo = xor i32 %i.ami, %i.amn                 ; 2 uses
  %i.amp = tail call i32 @llvm.fshl.i32(i32 %i.amo, i32 %i.amo, i32 25) ; 2 uses
  %i.amq = add i32 %i.aku, %i.amp
  %i.amr = add i32 %i.amq, %.sroa.74.0.copyload   ; 2 uses
  %i.ams = xor i32 %i.alk, %i.amr                 ; 2 uses
  %i.amt = tail call i32 @llvm.fshl.i32(i32 %i.ams, i32 %i.ams, i32 16) ; 2 uses
  %i.amu = add i32 %i.alz, %i.amt                 ; 2 uses
  %i.amv = xor i32 %i.amp, %i.amu                 ; 2 uses
  %i.amw = tail call i32 @llvm.fshl.i32(i32 %i.amv, i32 %i.amv, i32 20) ; 2 uses
  %i.amx = add i32 %i.amr, %i.amw
  %i.amy = add i32 %i.amx, %.sroa.17.0.copyload   ; 2 uses
  %i.amz = xor i32 %i.amt, %i.amy                 ; 2 uses
  %i.ana = tail call i32 @llvm.fshl.i32(i32 %i.amz, i32 %i.amz, i32 24) ; 2 uses
  %i.anb = add i32 %i.amu, %i.ana                 ; 2 uses
  %i.anc = xor i32 %i.amw, %i.anb                 ; 2 uses
  %i.and = tail call i32 @llvm.fshl.i32(i32 %i.anc, i32 %i.anc, i32 25) ; 2 uses
  %i.ane = add i32 %i.akz, %i.ali
  %i.anf = add i32 %i.ane, %.sroa.60.0.copyload   ; 2 uses
  %i.ang = xor i32 %i.aly, %i.anf                 ; 2 uses
  %i.anh = tail call i32 @llvm.fshl.i32(i32 %i.ang, i32 %i.ang, i32 16) ; 2 uses
  %i.ani = add i32 %i.amn, %i.anh                 ; 2 uses
  %i.anj = xor i32 %i.akz, %i.ani                 ; 2 uses
  %i.ank = tail call i32 @llvm.fshl.i32(i32 %i.anj, i32 %i.anj, i32 20) ; 2 uses
  %i.anl = add i32 %i.anf, %i.ank
  %i.anm = add i32 %i.anl, %.sroa.31.0.copyload   ; 2 uses
  %i.ann = xor i32 %i.anh, %i.anm                 ; 2 uses
  %i.ano = tail call i32 @llvm.fshl.i32(i32 %i.ann, i32 %i.ann, i32 24) ; 2 uses
  %i.anp = add i32 %i.ani, %i.ano                 ; 2 uses
  %i.anq = xor i32 %i.ank, %i.anp                 ; 2 uses
  %i.anr = tail call i32 @llvm.fshl.i32(i32 %i.anq, i32 %i.anq, i32 25) ; 2 uses
  %i.ans = add i32 %i.aln, %i.alw
  %i.ant = add i32 %i.ans, %.sroa.53.0.copyload   ; 2 uses
  %i.anu = xor i32 %i.amm, %i.ant                 ; 2 uses
  %i.anv = tail call i32 @llvm.fshl.i32(i32 %i.anu, i32 %i.anu, i32 16) ; 2 uses
  %i.anw = add i32 %i.akx, %i.anv                 ; 2 uses
  %i.anx = xor i32 %i.aln, %i.anw                 ; 2 uses
  %i.any = tail call i32 @llvm.fshl.i32(i32 %i.anx, i32 %i.anx, i32 20) ; 2 uses
  %i.anz = add i32 %i.ant, %i.any
  %i.aoa = add i32 %i.anz, %.sroa.46.0.copyload   ; 2 uses
  %i.aob = xor i32 %i.anv, %i.aoa                 ; 2 uses
  %i.aoc = tail call i32 @llvm.fshl.i32(i32 %i.aob, i32 %i.aob, i32 24) ; 2 uses
  %i.aod = add i32 %i.anw, %i.aoc                 ; 2 uses
  %i.aoe = xor i32 %i.any, %i.aod                 ; 2 uses
  %i.aof = tail call i32 @llvm.fshl.i32(i32 %i.aoe, i32 %i.aoe, i32 25) ; 2 uses
  %i.aog = add i32 %i.amb, %i.amk
  %i.aoh = add i32 %i.aog, %.sroa.10.0.copyload   ; 2 uses
  %i.aoi = xor i32 %i.akw, %i.aoh                 ; 2 uses
  %i.aoj = tail call i32 @llvm.fshl.i32(i32 %i.aoi, i32 %i.aoi, i32 16) ; 2 uses
  %i.aok = add i32 %i.all, %i.aoj                 ; 2 uses
  %i.aol = xor i32 %i.amb, %i.aok                 ; 2 uses
  %i.aom = tail call i32 @llvm.fshl.i32(i32 %i.aol, i32 %i.aol, i32 20) ; 2 uses
  %i.aon = add i32 %i.aoh, %i.aom
  %i.aoo = add i32 %i.aon, %.sroa.38.0.copyload   ; 2 uses
  %i.aop = xor i32 %i.aoj, %i.aoo                 ; 2 uses
  %i.aoq = tail call i32 @llvm.fshl.i32(i32 %i.aop, i32 %i.aop, i32 24) ; 2 uses
  %i.aor = add i32 %i.aok, %i.aoq                 ; 2 uses
  %i.aos = xor i32 %i.aom, %i.aor                 ; 2 uses
  %i.aot = tail call i32 @llvm.fshl.i32(i32 %i.aos, i32 %i.aos, i32 25) ; 2 uses
  %i.aou = add i32 %i.anr, %i.amy
  %i.aov = add i32 %i.aou, %.sroa.109.0.copyload  ; 2 uses
  %i.aow = xor i32 %i.aoq, %i.aov                 ; 2 uses
  %i.aox = tail call i32 @llvm.fshl.i32(i32 %i.aow, i32 %i.aow, i32 16) ; 2 uses
  %i.aoy = add i32 %i.aod, %i.aox                 ; 2 uses
  %i.aoz = xor i32 %i.anr, %i.aoy                 ; 2 uses
  %i.apa = tail call i32 @llvm.fshl.i32(i32 %i.aoz, i32 %i.aoz, i32 20) ; 2 uses
  %i.apb = add i32 %i.aov, %i.apa
  %i.apc = add i32 %i.apb, %.sroa.81.0.copyload   ; 2 uses
  %i.apd = xor i32 %i.aox, %i.apc                 ; 2 uses
  %i.ape = tail call i32 @llvm.fshl.i32(i32 %i.apd, i32 %i.apd, i32 24) ; 2 uses
  %i.apf = add i32 %i.aoy, %i.ape                 ; 2 uses
  %i.apg = xor i32 %i.apa, %i.apf                 ; 2 uses
  %i.aph = tail call i32 @llvm.fshl.i32(i32 %i.apg, i32 %i.apg, i32 25)
  %i.api = add i32 %i.aof, %i.anm
  %i.apj = add i32 %i.api, %.sroa.67.0.copyload   ; 2 uses
  %i.apk = xor i32 %i.ana, %i.apj                 ; 2 uses
  %i.apl = tail call i32 @llvm.fshl.i32(i32 %i.apk, i32 %i.apk, i32 16) ; 2 uses
  %i.apm = add i32 %i.aor, %i.apl                 ; 2 uses
  %i.apn = xor i32 %i.aof, %i.apm                 ; 2 uses
  %i.apo = tail call i32 @llvm.fshl.i32(i32 %i.apn, i32 %i.apn, i32 20) ; 2 uses
  %i.app = add i32 %i.apj, %i.apo
  %i.apq = add i32 %i.app, %.sroa.102.0.copyload  ; 2 uses
  %i.apr = xor i32 %i.apl, %i.apq                 ; 2 uses
  %i.aps = tail call i32 @llvm.fshl.i32(i32 %i.apr, i32 %i.apr, i32 24) ; 2 uses
  %i.apt = add i32 %i.apm, %i.aps                 ; 2 uses
  %i.apu = xor i32 %i.apo, %i.apt                 ; 2 uses
  %i.apv = tail call i32 @llvm.fshl.i32(i32 %i.apu, i32 %i.apu, i32 25)
  %i.apw = add i32 %i.aot, %i.aoa
  %i.apx = add i32 %i.apw, %.sroa.24.0.copyload   ; 2 uses
  %i.apy = xor i32 %i.ano, %i.apx                 ; 2 uses
  %i.apz = tail call i32 @llvm.fshl.i32(i32 %i.apy, i32 %i.apy, i32 16) ; 2 uses
  %i.aqa = add i32 %i.anb, %i.apz                 ; 2 uses
  %i.aqb = xor i32 %i.aot, %i.aqa                 ; 2 uses
  %i.aqc = tail call i32 @llvm.fshl.i32(i32 %i.aqb, i32 %i.aqb, i32 20) ; 2 uses
  %i.aqd = add i32 %i.apx, %i.aqc
  %i.aqe = add i32 %i.aqd, %.sroa.88.0.copyload   ; 2 uses
  %i.aqf = xor i32 %i.apz, %i.aqe                 ; 2 uses
  %i.aqg = tail call i32 @llvm.fshl.i32(i32 %i.aqf, i32 %i.aqf, i32 24) ; 2 uses
  %i.aqh = add i32 %i.aqa, %i.aqg                 ; 2 uses
  %i.aqi = xor i32 %i.aqc, %i.aqh                 ; 2 uses
  %i.aqj = tail call i32 @llvm.fshl.i32(i32 %i.aqi, i32 %i.aqi, i32 25)
  %i.aqk = add i32 %i.and, %i.aoo
  %i.aql = add i32 %i.aqk, %.sroa.95.0.copyload   ; 2 uses
  %i.aqm = xor i32 %i.aoc, %i.aql                 ; 2 uses
  %i.aqn = tail call i32 @llvm.fshl.i32(i32 %i.aqm, i32 %i.aqm, i32 16) ; 2 uses
  %i.aqo = add i32 %i.anp, %i.aqn                 ; 2 uses
  %i.aqp = xor i32 %i.and, %i.aqo                 ; 2 uses
  %i.aqq = tail call i32 @llvm.fshl.i32(i32 %i.aqp, i32 %i.aqp, i32 20) ; 2 uses
  %i.aqr = add i32 %i.aql, %i.aqq
  %i.aqs = add i32 %i.aqr, %.sroa.0332.0.copyload ; 2 uses
  %i.aqt = xor i32 %i.aqn, %i.aqs                 ; 2 uses
  %i.aqu = tail call i32 @llvm.fshl.i32(i32 %i.aqt, i32 %i.aqt, i32 24) ; 2 uses
  %i.aqv = add i32 %i.aqo, %i.aqu                 ; 2 uses
  %i.aqw = xor i32 %i.aqq, %i.aqv                 ; 2 uses
  %i.aqx = tail call i32 @llvm.fshl.i32(i32 %i.aqw, i32 %i.aqw, i32 25)
  %i.aqy = xor i32 %i.p, %i.aqh
  %i.aqz = xor i32 %i.aqy, %i.apc                 ; 3 uses
  store i32 %i.aqz, ptr %0, align 8, !tbaa !11
  %i.ara = xor i32 %i.o, %i.aqv
  %i.arb = xor i32 %i.ara, %i.apq                 ; 3 uses
  store i32 %i.arb, ptr %.sroa.62.0..sroa_idx, align 4, !tbaa !11
  %i.arc = xor i32 %i.n, %i.apf
  %i.ard = xor i32 %i.arc, %i.aqe                 ; 3 uses
  store i32 %i.ard, ptr %.sroa.121.0..sroa_idx, align 8, !tbaa !11
  %i.are = xor i32 %i.m, %i.apt
  %i.arf = xor i32 %i.are, %i.aqs                 ; 3 uses
  store i32 %i.arf, ptr %.sroa.180.0..sroa_idx, align 4, !tbaa !11
  %i.arg = xor i32 %i.l, %i.aqx
  %i.arh = xor i32 %i.arg, %i.aps                 ; 3 uses
  store i32 %i.arh, ptr %.sroa.239.0..sroa_idx, align 8, !tbaa !11
  %i.ari = xor i32 %i.k, %i.aph
  %i.arj = xor i32 %i.ari, %i.aqg                 ; 3 uses
  store i32 %i.arj, ptr %.sroa.303.0..sroa_idx, align 4, !tbaa !11
  %i.ark = xor i32 %i.j, %i.apv
  %i.arl = xor i32 %i.ark, %i.aqu                 ; 3 uses
  store i32 %i.arl, ptr %.sroa.370.0..sroa_idx, align 8, !tbaa !11
  %i.arm = xor i32 %i.i, %i.aqj
  %i.arn = xor i32 %i.arm, %i.ape                 ; 3 uses
  store i32 %i.arn, ptr %.sroa.437.0..sroa_idx, align 4, !tbaa !11
  %i.aro = getelementptr inbounds nuw i8, ptr %.034, i64 %i.a
  %i.arp = sub i64 %.033, %i.a                    ; 2 uses
  %.not = icmp eq i64 %i.arp, 0
  br i1 %.not, label %bb.b, label %bb.a, !llvm.loop !19

bb.b:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @ossl_blake2s_final(ptr noundef %0, ptr noundef initializes((40, 44)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = add i64 %i.c, 3
  %i.e = lshr i64 %i.d, 2                         ; 4 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = and i64 %i.c, 3
  %i.h = icmp eq i64 %i.g, 0
  %spec.select = select i1 %i.h, ptr %0, ptr %i.a ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 -1, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = sub i64 64, %i.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.n, i1 false)
  %i.o = load i64, ptr %i.k, align 8, !tbaa !15
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
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !11
  %wide.load29 = load <4 x i32>, ptr %i.v, align 4, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load, ptr %i.t, align 1
  store <4 x i32> %wide.load29, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !20

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
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !11
  store i32 %i.ab, ptr %i.z, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !21

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
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !11
  store i32 %i.ah, ptr %i.af, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = shl nuw nsw i64 %indvars.iv.next, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !11
  store i32 %i.al, ptr %i.aj, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.am = shl nuw nsw i64 %indvars.iv.next.1, 2
  %i.an = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !11
  store i32 %i.ap, ptr %i.an, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aq = shl nuw nsw i64 %indvars.iv.next.2, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11
  store i32 %i.at, ptr %i.ar, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.au = load i64, ptr %i.b, align 8, !tbaa !14
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"blake2s_param_st", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !4, i64 4, !4, i64 8, !4, i64 14, !4, i64 15, !4, i64 16, !4, i64 24}
!9 = !{!8, !4, i64 0}
!10 = !{!"branch_weights", i32 1, i32 1048575}
!11 = !{!5, !5, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"blake2s_ctx_st", !4, i64 0, !4, i64 32, !4, i64 40, !4, i64 48, !12, i64 112, !12, i64 120}
!14 = !{!13, !12, i64 120}
!15 = !{!13, !12, i64 112}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!4, !4, i64 0}
!18 = !{!8, !4, i64 1}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16, !23, !24}
!21 = distinct !{!21, !25}
!22 = distinct !{!22, !16, !23}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
