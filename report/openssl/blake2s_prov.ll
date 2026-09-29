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
  %3 = alloca [64 x i8], align 16                 ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !11
  %i.f = load i8, ptr %1, align 1, !tbaa !9
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.g, ptr %i.h, align 8, !tbaa !14
  %i.i = load <4 x i32>, ptr %1, align 1
  %.val.i = load i32, ptr %1, align 1
  %i.j = xor <4 x i32> %i.i, <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>
  store <4 x i32> %i.j, ptr %0, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load <4 x i32>, ptr %i.k, align 1
  %i.n = xor <4 x i32> %i.m, <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>
  store <4 x i32> %i.n, ptr %i.l, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.o = lshr i32 %.val.i, 8
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr align 1 %2, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 16 dereferenceable(64) %3, i64 64, i1 false)
  store i64 64, ptr %i.r, align 8, !tbaa !15
  call void @OPENSSL_cleanse(ptr noundef nonnull %3, i64 noundef 64) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %ossl_blake2s_update.exit.rtcont

ossl_blake2s_update.exit.rtscalar:                ; preds = %ossl_blake2s_update.exit
  %4 = alloca [64 x i8], align 16                 ; 6 uses
  %i.t = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.t, i8 0, i64 96, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @blake2s_IV, i64 32, i1 false), !tbaa !11
  %i.u = load i8, ptr %1, align 1, !tbaa !9
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.v, ptr %i.w, align 8, !tbaa !14
  %.val.i.scalar = load i32, ptr %1, align 1      ; 2 uses
  %i.x = xor i32 %.val.i.scalar, 1779033703
  store i32 %i.x, ptr %0, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val.1.i.scalar = load i32, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = xor i32 %.val.1.i.scalar, -1150833019
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.2.i.scalar = load i32, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = xor i32 %.val.2.i.scalar, 1013904242
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val.3.i.scalar = load i32, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = xor i32 %.val.3.i.scalar, -1521486534
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.4.i.scalar = load i32, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = xor i32 %.val.4.i.scalar, 1359893119
  store i32 %i.aj, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val.5.i.scalar = load i32, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = xor i32 %.val.5.i.scalar, -1694144372
  store i32 %i.am, ptr %i.al, align 4, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.6.i.scalar = load i32, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = xor i32 %.val.6.i.scalar, 528734635
  store i32 %i.ap, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val.7.i.scalar = load i32, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.as = xor i32 %.val.7.i.scalar, 1541459225
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %i.at = lshr i32 %.val.i.scalar, 8
  %i.au = and i32 %i.at, 255
  %i.av = zext nneg i32 %i.au to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr align 1 %2, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 16 dereferenceable(64) %4, i64 64, i1 false)
  store i64 64, ptr %i.aw, align 8, !tbaa !15
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 64) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
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
end_hunk_0
