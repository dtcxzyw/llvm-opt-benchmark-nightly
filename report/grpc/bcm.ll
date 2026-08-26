Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 371
begin_hunk_0_@slhdsa_fors_pk_from_sig:bb.a
  %.03639 = phi i64 [ 0, %bb.a ], [ %i.fm, %bb.d ] ; 5 uses
  %i.et = mul nuw nsw i64 %.03639, 208
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  store i8 0, ptr %i.ec, align 1, !tbaa !13
  %i.ew = shl nuw nsw i64 %.03639, 12
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.03639
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !639 ; 2 uses
  %i.ez = zext i16 %i.ey to i64
  %i.fa = add nuw nsw i64 %i.ew, %i.ez
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = call noundef i32 @llvm.bswap.i32(i32 %i.fb)
  store i32 %i.fc, ptr %i.ed, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.fd = call i32 @SHA256_Init(ptr noundef nonnull %7) #36 ; 0 uses
  %i.fe = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %i.ff = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.fg = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef %4, i64 noundef 22) #36 ; 0 uses
  %i.fh = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef %i.eu, i64 noundef 16) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.fi = call i32 @SHA256_Final(ptr noundef nonnull %i.c, ptr noundef nonnull %7) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.fj = zext i16 %i.ey to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.h
  %i.fk = shl nuw nsw i64 %.03639, 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fl, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.fm = add nuw nsw i64 %.03639, 1              ; 2 uses
  %exitcond40.not = icmp eq i64 %i.fm, 14
  br i1 %exitcond40.not, label %bb.b, label %bb.c, !llvm.loop !1434

bb.e:                                             ; preds = %bb.c, %bb.h
  %.038 = phi i64 [ 0, %bb.c ], [ %i.fn, %bb.h ]  ; 3 uses
  %i.fn = add nuw nsw i64 %.038, 1                ; 3 uses
  %i.fo = trunc nuw nsw i64 %i.fn to i8
  store i8 %i.fo, ptr %i.ec, align 1, !tbaa !13
  %i.fp = trunc nuw nsw i64 %.038 to i32
  %i.fq = shl nuw nsw i32 1, %i.fp
  %i.fr = and i32 %i.fq, %i.fj
  %i.fs = icmp eq i32 %i.fr, 0
  %.0.copyload.i.i = load i32, ptr %i.ed, align 1
  %i.ft = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i) ; 2 uses
  %i.fu = shl nuw nsw i64 %.038, 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fu ; 2 uses
  br i1 %i.fs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fw = lshr i32 %i.ft, 1
  %i.fx = call noundef i32 @llvm.bswap.i32(i32 %i.fw)
  store i32 %i.fx, ptr %i.ed, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ee, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fv, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.fy = call i32 @SHA256_Init(ptr noundef nonnull %6) #36 ; 0 uses
  %i.fz = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %i.ga = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.gb = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull %4, i64 noundef 22) #36 ; 0 uses
  %i.gc = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull %i.f, i64 noundef 32) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.gd = call i32 @SHA256_Final(ptr noundef nonnull %i.b, ptr noundef nonnull %6) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ge = add i32 %i.ft, -1
  %i.gf = lshr i32 %i.ge, 1
  %i.gg = call noundef i32 @llvm.bswap.i32(i32 %i.gf)
  store i32 %i.gg, ptr %i.ed, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.fv, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ee, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.gh = call i32 @SHA256_Init(ptr noundef nonnull %5) #36 ; 0 uses
  %i.gi = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %i.gj = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.gk = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 22) #36 ; 0 uses
  %i.gl = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull %i.f, i64 noundef 32) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.gm = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %5) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull readonly align 16 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %exitcond.not = icmp eq i64 %i.fn, 12
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !1435
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_thash_tk(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.b = call i32 @SHA256_Init(ptr noundef nonnull %4) #36 ; 0 uses
  %i.c = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  %i.d = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.e = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %3, i64 noundef 22) #36 ; 0 uses
  %i.f = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 224) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.g = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_treehash(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = icmp ult i32 %3, 10
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = lshr exact i32 512, %3
  %i.e = icmp ult i32 %2, %i.d
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #37
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.h = lshr i32 %2, 8
  %i.i = trunc nuw nsw i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.g, i8 0, i64 13, i1 false)
  store i8 %i.i, ptr %i.j, align 1, !tbaa !13
  %i.k = trunc i32 %2 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 %i.k, ptr %i.l, align 1, !tbaa !13
  tail call void @slhdsa_wots_pk_gen(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.m = shl nuw nsw i32 %2, 1                    ; 2 uses
  %i.n = add nsw i32 %3, -1                       ; 2 uses
  call void @slhdsa_treehash(ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %i.m, i32 noundef %i.n, ptr noundef %4, ptr noundef %5)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = or disjoint i32 %i.m, 1
  call void @slhdsa_treehash(ptr noundef nonnull %i.o, ptr noundef %1, i32 noundef %i.p, i32 noundef %i.n, ptr noundef %4, ptr noundef %5)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.q, i8 0, i64 7, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 2, ptr %i.r, align 1, !tbaa !13
  %i.s = trunc nuw nsw i32 %3 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %i.s, ptr %i.t, align 1, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  store i32 %i.v, ptr %i.u, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.w = call i32 @SHA256_Init(ptr noundef nonnull %6) #36 ; 0 uses
  %i.x = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef %4, i64 noundef 16) #36 ; 0 uses
  %i.y = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.z = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef %5, i64 noundef 22) #36 ; 0 uses
  %i.aa = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull %i.b, i64 noundef 32) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.ab = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %6) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_wots_pk_gen(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %5 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %6 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 9 uses
  %i.e = alloca [32 x i8], align 16               ; 10 uses
  %i.f = alloca [560 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.g, i8 0, i64 12, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 5, ptr %i.h, align 1, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(9) %3, i64 9, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i8 %i.j, ptr %i.k, align 4, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  store i8 %i.m, ptr %i.n, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 21
  br label %bb.c

bb.b:                                             ; preds = %_ZL5chainPhPKhjjS1_S_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.r, i8 0, i64 12, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 1, ptr %i.s, align 1, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(9) %3, i64 9, i1 false)
  %i.t = load i8, ptr %i.i, align 1, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 %i.t, ptr %i.u, align 4, !tbaa !13
  %i.v = load i8, ptr %i.l, align 1, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 %i.v, ptr %i.w, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.x = call i32 @SHA256_Init(ptr noundef nonnull %6) #36 ; 0 uses
  %i.y = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  %i.z = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.aa = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull %i.d, i64 noundef 22) #36 ; 0 uses
  %i.ab = call i32 @SHA256_Update(ptr noundef nonnull %6, ptr noundef nonnull %i.f, i64 noundef 560) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.ac = call i32 @SHA256_Final(ptr noundef nonnull %i.c, ptr noundef nonnull %6) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  ret void

bb.c:                                             ; preds = %bb.a, %_ZL5chainPhPKhjjS1_S_.exit
  %.012 = phi i64 [ 0, %bb.a ], [ %i.au, %_ZL5chainPhPKhjjS1_S_.exit ] ; 3 uses
  %i.ad = shl nuw nsw i64 %.012, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ad ; 3 uses
  %i.af = trunc nuw i64 %.012 to i8               ; 2 uses
  store i8 %i.af, ptr %i.o, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ag = call i32 @SHA256_Init(ptr noundef nonnull %5) #36 ; 0 uses
  %i.ah = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  %i.ai = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.aj = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull %i.e, i64 noundef 22) #36 ; 0 uses
  %i.ak = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 16) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.al = call i32 @SHA256_Final(ptr noundef nonnull %i.b, ptr noundef nonnull %5) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  store i8 %i.af, ptr %i.p, align 1, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.013.i = phi i64 [ 0, %bb.c ], [ %i.at, %bb.d ] ; 2 uses
  %i.am = trunc nuw i64 %.013.i to i8
  store i8 %i.am, ptr %i.q, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.an = call i32 @SHA256_Init(ptr noundef nonnull %4) #36 ; 0 uses
  %i.ao = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  %i.ap = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.aq = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 22) #36 ; 0 uses
  %i.ar = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull %i.ae, i64 noundef 16) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.as = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ae, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.at = add nuw nsw i64 %.013.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, 15
  br i1 %exitcond.not.i, label %_ZL5chainPhPKhjjS1_S_.exit, label %bb.d, !llvm.loop !1436

_ZL5chainPhPKhjjS1_S_.exit:                       ; preds = %bb.d
  %i.au = add nuw nsw i64 %.012, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, 35
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !1437
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_xmss_sign(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = xor i32 %2, 1
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.a, ptr noundef %3, i32 noundef %i.b, i32 noundef 0, ptr noundef %4, ptr noundef %5)
  %i.c = lshr i32 %2, 1
  %i.d = xor i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.e, ptr noundef %3, i32 noundef %i.d, i32 noundef 1, ptr noundef %4, ptr noundef %5)
  %i.f = lshr i32 %2, 2
  %i.g = xor i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.h, ptr noundef %3, i32 noundef %i.g, i32 noundef 2, ptr noundef %4, ptr noundef %5)
  %i.i = lshr i32 %2, 3
  %i.j = xor i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.k, ptr noundef %3, i32 noundef %i.j, i32 noundef 3, ptr noundef %4, ptr noundef %5)
  %i.l = lshr i32 %2, 4
  %i.m = xor i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 624
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.n, ptr noundef %3, i32 noundef %i.m, i32 noundef 4, ptr noundef %4, ptr noundef %5)
  %i.o = lshr i32 %2, 5
  %i.p = xor i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.q, ptr noundef %3, i32 noundef %i.p, i32 noundef 5, ptr noundef %4, ptr noundef %5)
  %i.r = lshr i32 %2, 6
  %i.s = xor i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.t, ptr noundef %3, i32 noundef %i.s, i32 noundef 6, ptr noundef %4, ptr noundef %5)
  %i.u = lshr i32 %2, 7
  %i.v = xor i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.w, ptr noundef %3, i32 noundef %i.v, i32 noundef 7, ptr noundef %4, ptr noundef %5)
  %i.x = lshr i32 %2, 8                           ; 2 uses
  %i.y = xor i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @slhdsa_treehash(ptr noundef nonnull %i.z, ptr noundef %3, i32 noundef %i.y, i32 noundef 8, ptr noundef %4, ptr noundef %5)
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.ab = trunc i32 %i.x to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.aa, i8 0, i64 13, i1 false)
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !13
  %i.ad = trunc i32 %2 to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !13
  tail call void @slhdsa_wots_sign(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_wots_sign(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %6 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %7 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.e = alloca [32 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %8 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.g = alloca [32 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %9 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.i = alloca [32 x i8], align 16               ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [32 x i8], align 16               ; 14 uses
  %i.l = load i8, ptr %1, align 1, !tbaa !13      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.r = load <12 x i8>, ptr %i.q, align 1, !tbaa !13 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.u, i8 0, i64 12, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  store i8 5, ptr %i.v, align 1, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(9) %4, i64 9, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 %i.x, ptr %i.y, align 4, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 17 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 17 ; 5 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.ae = xor i8 %i.l, -1
  %i.af = lshr i8 %i.ae, 4
  %i.ag = and i8 %i.l, 15
  %i.ah = xor i8 %i.ag, 15
  %narrow = add nuw nsw i8 %i.af, %i.ah
  %i.ai = xor i8 %i.n, -1
  %i.aj = lshr i8 %i.ai, 4
  %narrow58 = add nuw nsw i8 %narrow, %i.aj
  %i.ak = and i8 %i.n, 15
  %i.al = xor i8 %i.ak, 15
  %narrow59 = add nuw nsw i8 %narrow58, %i.al
  %i.am = xor i8 %i.p, -1
  %i.an = lshr i8 %i.am, 4
  %narrow60 = add nuw nsw i8 %narrow59, %i.an
  %i.ao = and i8 %i.p, 15
  %i.ap = xor i8 %i.ao, 15
  %narrow61 = add nuw i8 %narrow60, %i.ap
  %i.aq = zext i8 %narrow61 to i16
  %i.ar = xor <12 x i8> %i.r, splat (i8 -1)
  %i.as = and <12 x i8> %i.r, splat (i8 15)
  %i.at = lshr <12 x i8> %i.ar, splat (i8 4)
  %i.au = xor <12 x i8> %i.as, splat (i8 15)
  %i.av = shufflevector <12 x i8> %i.at, <12 x i8> %i.au, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aw = zext nneg <24 x i8> %i.av to <24 x i16>
  %i.ax = xor i8 %i.t, -1
  %i.ay = lshr i8 %i.ax, 4
  %i.az = and i8 %i.t, 15
  %i.ba = xor i8 %i.az, 15
  %i.bb = call i16 @llvm.vector.reduce.add.v24i16(<24 x i16> %i.aw)
  %op.rdx = add nuw nsw i16 %i.bb, %i.aq
  %narrow64 = add nuw nsw i8 %i.ay, %i.ba
  %op.rdx62 = zext nneg i8 %narrow64 to i16
  %op.rdx63 = add nuw nsw i16 %op.rdx, %op.rdx62  ; 2 uses
  %i.bc = lshr i16 %op.rdx63, 8
  %i.bd = zext nneg i16 %i.bc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  store i8 32, ptr %i.ac, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.be = call i32 @SHA256_Init(ptr noundef nonnull %9) #36 ; 0 uses
  %i.bf = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %i.bg = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.bh = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull %i.k, i64 noundef 22) #36 ; 0 uses
  %i.bi = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  %i.bj = call i32 @SHA256_Final(ptr noundef nonnull %i.i, ptr noundef nonnull %9) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  store i8 32, ptr %i.ad, align 1, !tbaa !13
  call fastcc void @_ZL5chainPhPKhjjS1_S_(ptr noundef nonnull %i.da, ptr noundef nonnull %i.j, i32 noundef 0, i32 noundef %i.bd, ptr noundef %3, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  %i.bk = getelementptr inbounds nuw i8, ptr %.05053, i64 48
  %i.bl = trunc i16 %op.rdx63 to i8               ; 2 uses
  %i.bm = lshr i8 %i.bl, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  store i8 33, ptr %i.ac, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.bn = call i32 @SHA256_Init(ptr noundef nonnull %8) #36 ; 0 uses
  %i.bo = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %i.bp = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.bq = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.k, i64 noundef 22) #36 ; 0 uses
  %i.br = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  %i.bs = call i32 @SHA256_Final(ptr noundef nonnull %i.g, ptr noundef nonnull %8) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.g, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  store i8 33, ptr %i.ad, align 1, !tbaa !13
  %i.bt = zext nneg i8 %i.bm to i32
  call fastcc void @_ZL5chainPhPKhjjS1_S_(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef %i.bt, ptr noundef %3, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  %i.bu = getelementptr inbounds nuw i8, ptr %.05053, i64 64
  %i.bv = and i8 %i.bl, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  store i8 34, ptr %i.ac, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.bw = call i32 @SHA256_Init(ptr noundef nonnull %7) #36 ; 0 uses
  %i.bx = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %i.by = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.bz = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef nonnull %i.k, i64 noundef 22) #36 ; 0 uses
  %i.ca = call i32 @SHA256_Update(ptr noundef nonnull %7, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  %i.cb = call i32 @SHA256_Final(ptr noundef nonnull %i.e, ptr noundef nonnull %7) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  store i8 34, ptr %i.ad, align 1, !tbaa !13
  %i.cc = zext nneg i8 %i.bv to i32
  call fastcc void @_ZL5chainPhPKhjjS1_S_(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef %i.cc, ptr noundef %3, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #36
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.055 = phi i64 [ 0, %bb.a ], [ %i.db, %bb.c ]  ; 2 uses
  %.04754 = phi i32 [ 0, %bb.a ], [ %i.cr, %bb.c ] ; 2 uses
  %.05053 = phi ptr [ %0, %bb.a ], [ %i.da, %bb.c ] ; 5 uses
end_hunk_0
