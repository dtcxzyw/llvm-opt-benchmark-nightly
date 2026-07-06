inline.NumInlined: 1222
inline.NumDeleted: 483
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN9Stockfish4Eval4NNUE6Layers15AffineTransformILj32ELj1EE15read_parametersERSi:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %i.cd, ptr %i.ce, align 2, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.cf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  %i.cg = load i8, ptr %i.a, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ci = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  %i.cj = load i8, ptr %i.a, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 %i.cj, ptr %i.ck, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.cl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  %i.cm = load i8, ptr %i.a, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.co = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  %i.cp = load i8, ptr %i.a, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i8 %i.cp, ptr %i.cq, align 2, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.cr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  %i.cs = load i8, ptr %i.a, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !51
  %i.cu = load ptr, ptr %1, align 8, !tbaa !86
  %i.cv = getelementptr i8, ptr %i.cu, i64 -24
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds i8, ptr %1, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !226
  %i.da = and i32 %i.cz, 5
  %.not = icmp eq i32 %i.da, 0
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE18FeatureTransformerILj1024EE16write_parametersERSo(ptr noundef nonnull align 64 dereferenceable(131188224) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.i1.i = alloca [128 x i8], align 1      ; 11 uses
  %.sroa.0.i.i = alloca [128 x i8], align 1       ; 11 uses
  %i.a = tail call noalias noundef nonnull align 64 dereferenceable(131188224) ptr @_ZnwmSt11align_val_t(i64 noundef 131188224, i64 noundef 64) #20, !noalias !349 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(131188224) %i.a, ptr noundef nonnull align 64 dereferenceable(131188224) %0, i64 131188224, i1 false), !tbaa.struct !352, !noalias !349
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %.sroa.0.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 32
  %.sroa.0.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 48
  %.sroa.0.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 64
  %.sroa.0.80..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 80
  %.sroa.0.96..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 96
  %.sroa.0.112..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 112
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.016.i.i = phi i64 [ 0, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %.016.i.i ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 64 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.16..sroa_idx.i.i, ptr noundef nonnull align 64 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.32..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.64..sroa_idx.i.i, ptr noundef nonnull align 32 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.80..sroa_idx.i.i, ptr noundef nonnull align 32 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.96..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.112..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.b, ptr noundef nonnull align 1 dereferenceable(128) %.sroa.0.i.i, i64 128, i1 false)
  %i.j = add nuw nsw i64 %.016.i.i, 128
  %i.k = icmp samesign ult i64 %.016.i.i, 1920
  br i1 %i.k, label %bb.b, label %_ZN9Stockfish4Eval4NNUE7permuteILm16EsLm1024ELm8EEEvRSt5arrayIT0_XT1_EERKS3_ImXT2_EE.exit.i, !llvm.loop !342

_ZN9Stockfish4Eval4NNUE7permuteILm16EsLm1024ELm8EEEvRSt5arrayIT0_XT1_EERKS3_ImXT2_EE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2048 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i1.i)
  %.sroa.0.16..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 16
  %.sroa.0.32..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 32
  %.sroa.0.48..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 48
  %.sroa.0.64..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 64
  %.sroa.0.80..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 80
  %.sroa.0.96..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 96
  %.sroa.0.112..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 112
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN9Stockfish4Eval4NNUE7permuteILm16EsLm1024ELm8EEEvRSt5arrayIT0_XT1_EERKS3_ImXT2_EE.exit.i
  %.016.i9.i = phi i64 [ 0, %_ZN9Stockfish4Eval4NNUE7permuteILm16EsLm1024ELm8EEEvRSt5arrayIT0_XT1_EERKS3_ImXT2_EE.exit.i ], [ %i.u, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.016.i9.i ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.i1.i, ptr noundef nonnull align 64 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.16..sroa_idx.i2.i, ptr noundef nonnull align 64 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.32..sroa_idx.i3.i, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.48..sroa_idx.i4.i, ptr noundef nonnull align 16 dereferenceable(16) %i.p, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.64..sroa_idx.i5.i, ptr noundef nonnull align 32 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.80..sroa_idx.i6.i, ptr noundef nonnull align 32 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.96..sroa_idx.i7.i, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.112..sroa_idx.i8.i, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.m, ptr noundef nonnull align 1 dereferenceable(128) %.sroa.0.i1.i, i64 128, i1 false)
  %i.u = add nuw nsw i64 %.016.i9.i, 128
  %i.v = icmp samesign ult i64 %.016.i9.i, 46137216
  br i1 %i.v, label %bb.c, label %_ZN9Stockfish4Eval4NNUE7permuteILm16EsLm23068672ELm8EEEvRSt5arrayIT0_XT1_EERKS3_ImXT2_EE.exit.i, !llvm.loop !343

_ZN9Stockfish4Eval4NNUE7permuteILm16EsLm23068672ELm8EEEvRSt5arrayIT0_XT1_EERKS3_ImXT2_EE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i1.i)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 46139392 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN9Stockfish4Eval4NNUE7permuteILm16EsLm23068672ELm8EEEvRSt5arrayIT0_XT1_EERKS3_ImXT2_EE.exit.i
  %.016.i10.i = phi i64 [ 0, %_ZN9Stockfish4Eval4NNUE7permuteILm16EsLm23068672ELm8EEEvRSt5arrayIT0_XT1_EERKS3_ImXT2_EE.exit.i ], [ %i.aq, %bb.d ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.016.i10.i ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = tail call <5 x i64> @llvm.masked.load.v5i64.p0(ptr nonnull align 8 %i.y, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i64> poison)
  %i.af = shufflevector <5 x i64> %i.ae, <5 x i64> poison, <4 x i32> <i32 3, i32 0, i32 4, i32 1>
  store <4 x i64> %i.af, ptr %i.y, align 8
  store i64 %i.ab, ptr %i.z, align 8
  store i64 %i.ad, ptr %i.aa, align 16
  %i.ag = or disjoint i64 %.016.i10.i, 64         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = tail call <5 x i64> @llvm.masked.load.v5i64.p0(ptr nonnull align 8 %i.ai, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i64> poison)
  %i.ap = shufflevector <5 x i64> %i.ao, <5 x i64> poison, <4 x i32> <i32 3, i32 0, i32 4, i32 1>
  store <4 x i64> %i.ap, ptr %i.ai, align 8
  store i64 %i.al, ptr %i.aj, align 8
  store i64 %i.an, ptr %i.ak, align 16
  %i.aq = add nuw nsw i64 %.016.i10.i, 128
  %i.ar = icmp samesign ult i64 %i.ag, 81772480
  br i1 %i.ar, label %bb.d, label %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE18FeatureTransformerILj1024EEESt14default_deleteIS4_EED2Ev.exit, !llvm.loop !344

_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE18FeatureTransformerILj1024EEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.d
  tail call void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 2 dereferenceable(2048) %i.a)
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.w, i64 noundef 81772544) #19 ; 0 uses
  tail call void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 2 dereferenceable(46137344) %i.l)
  %i.at = tail call noalias noundef nonnull dereferenceable(3276288) ptr @_Znwm(i64 noundef 3276288) #20, !noalias !353 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 128632832
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2555392) %i.at, ptr noundef nonnull align 64 dereferenceable(2555392) %i.au, i64 2555392, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 127911936
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 2555392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(720896) %i.aw, ptr noundef nonnull align 64 dereferenceable(720896) %i.av, i64 720896, i1 false)
  tail call void @_ZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(3276288) %i.at)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 3276288) #21
  %i.ax = load ptr, ptr %1, align 8, !tbaa !86
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !226
  %i.bd = and i32 %i.bc, 5
  %.not = icmp eq i32 %i.bd, 0
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.a, i64 noundef 131188224, i64 noundef 64) #21
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2048) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN9Stockfish4Eval4NNUEL17Leb128MagicStringE, i64 noundef 17) #19 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !146
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.backedge

bb.c:                                             ; preds = %bb.g, %bb.a
  %.059 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.g ]
  %.02858 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.g ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02858
  %i.f = load i16, ptr %i.e, align 2, !tbaa !266
  %2 = sext i16 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i32 [ %2, %bb.c ], [ %3, %bb.d ]    ; 2 uses
  %.1 = phi i32 [ %.059, %bb.c ], [ %i.g, %bb.d ]
  %3 = ashr i32 %.029, 7                          ; 2 uses
  %i.g = add i32 %.1, 1                           ; 2 uses
  %4 = shl i32 %.029, 25
  %sext = ashr i32 %4, 31
  %.not = icmp eq i32 %3, %sext
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !356

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02858
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !266
  %5 = sext i16 %i.j to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.029.1 = phi i32 [ %5, %bb.e ], [ %6, %bb.f ]  ; 2 uses
  %.1.1 = phi i32 [ %i.g, %bb.e ], [ %i.k, %bb.f ]
  %6 = ashr i32 %.029.1, 7                        ; 2 uses
  %i.k = add i32 %.1.1, 1                         ; 3 uses
  %7 = shl i32 %.029.1, 25
  %sext.1 = ashr i32 %7, 31
  %.not.1 = icmp eq i32 %6, %sext.1
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !356

bb.g:                                             ; preds = %bb.f
  %i.l = add nuw nsw i64 %.02858, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.l, 1024
  br i1 %exitcond.not.1, label %bb.b, label %bb.c, !llvm.loop !357

bb.h:                                             ; preds = %bb.o
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = zext i32 %i.t to i64
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.m) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02761 = phi i64 [ 0, %bb.b ], [ %.02761.be, %.backedge.backedge ] ; 3 uses
  %.05260 = phi i32 [ 0, %bb.b ], [ %.05260.be, %.backedge.backedge ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02761
  %i.p = load i16, ptr %i.o, align 2, !tbaa !266
  %8 = sext i16 %i.p to i32
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05260, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.025 = phi i32 [ %8, %.backedge ], [ %9, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.q = trunc i32 %.025 to i8                    ; 2 uses
  %9 = ashr i32 %.025, 7                          ; 3 uses
  %10 = and i32 %.025, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.r = icmp eq i32 %9, 0
  br i1 %i.r, label %bb.l, label %bb.m

bb.k:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.s = icmp eq i32 %9, -1
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %12 = and i8 %i.q, 127
  %i.t = add i32 %.153, 1                         ; 4 uses
  %i.u = zext i32 %.153 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u
  store i8 %12, ptr %i.v, align 1, !tbaa !51
  %i.w = icmp eq i32 %i.t, 4096
  br i1 %i.w, label %.thread, label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.x = or i8 %i.q, -128
  %i.y = add i32 %.153, 1                         ; 2 uses
  %i.z = zext i32 %.153 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !51
  %i.ab = icmp eq i32 %i.y, 4096
  br i1 %i.ab, label %bb.n, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.n:                                             ; preds = %bb.m
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.n, %bb.m
  %.153.be = phi i32 [ %i.y, %bb.m ], [ 0, %bb.n ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.o:                                             ; preds = %bb.l
  %i.ad = add nuw nsw i64 %.02761, 1              ; 2 uses
  %exitcond63.not = icmp eq i64 %i.ad, 1024
  br i1 %exitcond63.not, label %bb.h, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.o, %.thread
  %.02761.be = phi i64 [ %i.ad, %bb.o ], [ %i.af, %.thread ]
  %.05260.be = phi i32 [ %i.t, %bb.o ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !358

.thread:                                          ; preds = %bb.l
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.af = add nuw nsw i64 %.02761, 1              ; 2 uses
  %exitcond63.not68 = icmp eq i64 %i.af, 1024
  br i1 %exitcond63.not68, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm1024EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(46137344) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN9Stockfish4Eval4NNUEL17Leb128MagicStringE, i64 noundef 17) #19 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !146
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.backedge

bb.c:                                             ; preds = %bb.g, %bb.a
  %.059 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.g ]
  %.02858 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.g ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02858
  %i.f = load i16, ptr %i.e, align 2, !tbaa !266
  %2 = sext i16 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i32 [ %2, %bb.c ], [ %3, %bb.d ]    ; 2 uses
  %.1 = phi i32 [ %.059, %bb.c ], [ %i.g, %bb.d ]
  %3 = ashr i32 %.029, 7                          ; 2 uses
  %i.g = add i32 %.1, 1                           ; 2 uses
  %4 = shl i32 %.029, 25
  %sext = ashr i32 %4, 31
  %.not = icmp eq i32 %3, %sext
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !359

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02858
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !266
  %5 = sext i16 %i.j to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.029.1 = phi i32 [ %5, %bb.e ], [ %6, %bb.f ]  ; 2 uses
  %.1.1 = phi i32 [ %i.g, %bb.e ], [ %i.k, %bb.f ]
  %6 = ashr i32 %.029.1, 7                        ; 2 uses
  %i.k = add i32 %.1.1, 1                         ; 3 uses
  %7 = shl i32 %.029.1, 25
  %sext.1 = ashr i32 %7, 31
  %.not.1 = icmp eq i32 %6, %sext.1
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !359

bb.g:                                             ; preds = %bb.f
  %i.l = add nuw nsw i64 %.02858, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.l, 23068672
  br i1 %exitcond.not.1, label %bb.b, label %bb.c, !llvm.loop !360

bb.h:                                             ; preds = %bb.o
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = zext i32 %i.t to i64
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.m) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02761 = phi i64 [ 0, %bb.b ], [ %.02761.be, %.backedge.backedge ] ; 3 uses
  %.05260 = phi i32 [ 0, %bb.b ], [ %.05260.be, %.backedge.backedge ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02761
  %i.p = load i16, ptr %i.o, align 2, !tbaa !266
  %8 = sext i16 %i.p to i32
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05260, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.025 = phi i32 [ %8, %.backedge ], [ %9, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.q = trunc i32 %.025 to i8                    ; 2 uses
  %9 = ashr i32 %.025, 7                          ; 3 uses
  %10 = and i32 %.025, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.r = icmp eq i32 %9, 0
  br i1 %i.r, label %bb.l, label %bb.m

bb.k:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.s = icmp eq i32 %9, -1
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %12 = and i8 %i.q, 127
  %i.t = add i32 %.153, 1                         ; 4 uses
  %i.u = zext i32 %.153 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u
  store i8 %12, ptr %i.v, align 1, !tbaa !51
  %i.w = icmp eq i32 %i.t, 4096
  br i1 %i.w, label %.thread, label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.x = or i8 %i.q, -128
  %i.y = add i32 %.153, 1                         ; 2 uses
  %i.z = zext i32 %.153 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !51
  %i.ab = icmp eq i32 %i.y, 4096
  br i1 %i.ab, label %bb.n, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.n:                                             ; preds = %bb.m
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.n, %bb.m
  %.153.be = phi i32 [ %i.y, %bb.m ], [ 0, %bb.n ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.o:                                             ; preds = %bb.l
  %i.ad = add nuw nsw i64 %.02761, 1              ; 2 uses
  %exitcond63.not = icmp eq i64 %i.ad, 23068672
  br i1 %exitcond63.not, label %bb.h, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.o, %.thread
  %.02761.be = phi i64 [ %i.ad, %bb.o ], [ %i.af, %.thread ]
  %.05260.be = phi i32 [ %i.t, %bb.o ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !361

.thread:                                          ; preds = %bb.l
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.af = add nuw nsw i64 %.02761, 1              ; 2 uses
  %exitcond63.not68 = icmp eq i64 %i.af, 23068672
  br i1 %exitcond63.not68, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm23068672EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(3276288) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN9Stockfish4Eval4NNUEL17Leb128MagicStringE, i64 noundef 17) #19 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.n, ptr %i.a, align 4, !tbaa !146
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.backedge

bb.c:                                             ; preds = %bb.g, %bb.a
  %.059 = phi i32 [ 0, %bb.a ], [ %i.n, %bb.g ]
  %.02858 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.g ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02858
  %i.f = load i32, ptr %i.e, align 4, !tbaa !146
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i32 [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.059, %bb.c ], [ %i.h, %bb.d ]
  %i.g = ashr i32 %.029, 7                        ; 2 uses
  %i.h = add i32 %.1, 1                           ; 2 uses
  %i.i = shl i32 %.029, 25
  %sext = ashr i32 %i.i, 31
  %.not = icmp eq i32 %i.g, %sext
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !362

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02858
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !146
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.029.1 = phi i32 [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 2 uses
  %.1.1 = phi i32 [ %i.h, %bb.e ], [ %i.n, %bb.f ]
  %i.m = ashr i32 %.029.1, 7                      ; 2 uses
  %i.n = add i32 %.1.1, 1                         ; 3 uses
  %i.o = shl i32 %.029.1, 25
  %sext.1 = ashr i32 %i.o, 31
  %.not.1 = icmp eq i32 %i.m, %sext.1
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !362

bb.g:                                             ; preds = %bb.f
  %i.p = add nuw nsw i64 %.02858, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.p, 819072
  br i1 %exitcond.not.1, label %bb.b, label %bb.c, !llvm.loop !363

bb.h:                                             ; preds = %bb.o
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = zext i32 %i.ab to i64
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.q) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02762 = phi i64 [ 0, %bb.b ], [ %.02762.be, %.backedge.backedge ] ; 3 uses
  %.05261 = phi i32 [ 0, %bb.b ], [ %.05261.be, %.backedge.backedge ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02762
  %i.t = load i32, ptr %i.s, align 4, !tbaa !146
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05261, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.025 = phi i32 [ %i.t, %.backedge ], [ %i.v, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.u = trunc i32 %.025 to i8                    ; 2 uses
  %i.v = ashr i32 %.025, 7                        ; 3 uses
  %i.w = and i32 %.025, 64
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.y = icmp eq i32 %i.v, 0
  br i1 %i.y, label %bb.l, label %bb.m

bb.k:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.z = icmp eq i32 %i.v, -1
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = and i8 %i.u, 127
  %i.ab = add i32 %.153, 1                        ; 4 uses
  %i.ac = zext i32 %.153 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !51
  %i.ae = icmp eq i32 %i.ab, 4096
  br i1 %i.ae, label %.thread, label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.af = or i8 %i.u, -128
  %i.ag = add i32 %.153, 1                        ; 2 uses
  %i.ah = zext i32 %.153 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ah
  store i8 %i.af, ptr %i.ai, align 1, !tbaa !51
  %i.aj = icmp eq i32 %i.ag, 4096
  br i1 %i.aj, label %bb.n, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.n:                                             ; preds = %bb.m
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.n, %bb.m
  %.153.be = phi i32 [ %i.ag, %bb.m ], [ 0, %bb.n ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.o:                                             ; preds = %bb.l
  %i.al = add nuw nsw i64 %.02762, 1              ; 2 uses
  %exitcond64.not = icmp eq i64 %i.al, 819072
  br i1 %exitcond64.not, label %bb.h, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.o, %.thread
  %.02762.be = phi i64 [ %i.al, %bb.o ], [ %i.an, %.thread ]
  %.05261.be = phi i32 [ %i.ab, %bb.o ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !364

.thread:                                          ; preds = %bb.l
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.an = add nuw nsw i64 %.02762, 1              ; 2 uses
  %exitcond64.not69 = icmp eq i64 %i.an, 819072
  br i1 %exitcond64.not69, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm819072EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj1024ELi15ELi32EE16write_parametersERSo(ptr noundef nonnull align 64 dereferenceable(17856) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 64 dereferenceable(16448) %0, i64 noundef 64) #19 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i = phi i32 [ 0, %bb.a ], [ %i.p, %bb.b ]  ; 4 uses
  %i.e = shl nuw nsw i32 %.06.i, 4
  %i.f = and i32 %i.e, 16320
  %i.g = lshr i32 %.06.i, 8
  %i.h = and i32 %i.g, 60
  %i.i = and i32 %.06.i, 3
  %i.j = or disjoint i32 %i.h, %i.i
  %i.k = or disjoint i32 %i.j, %i.f
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.n, ptr %i.b, align 1, !tbaa !51
end_hunk_0
begin_hunk_1_@_ZN9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE15read_parametersERSi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ac = shl nuw nsw i32 %.06.i6, 5
  %i.ad = and i32 %i.ac, 896
  %i.ae = lshr i32 %.06.i6, 3
  %i.af = and i32 %i.ae, 124
  %i.ag = and i32 %.06.i6, 3
  %i.ah = or disjoint i32 %i.af, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aj
  store i8 %i.ab, ptr %i.ak, align 1, !tbaa !51
  %i.al = add nuw nsw i32 %.06.i6, 1              ; 2 uses
  %exitcond.not.i7 = icmp eq i32 %i.al, 1024
  br i1 %exitcond.not.i7, label %_ZN9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE15read_parametersERSi.exit, label %bb.d, !llvm.loop !348

_ZN9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE15read_parametersERSi.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %1, align 8, !tbaa !86
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !226
  %i.as = and i32 %i.ar, 5
  %.not.i8 = icmp eq i32 %i.as, 0
  br i1 %.not.i8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE15read_parametersERSi.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3392
  %i.au = call noundef zeroext i1 @_ZN9Stockfish4Eval4NNUE6Layers15AffineTransformILj32ELj1EE15read_parametersERSi(ptr noundef nonnull align 64 dereferenceable(96) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE15read_parametersERSi.exit, %_ZN9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE15read_parametersERSi.exit
  %i.av = phi i1 [ false, %_ZN9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE15read_parametersERSi.exit ], [ false, %_ZN9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE15read_parametersERSi.exit ], [ %i.au, %bb.e ]
  ret i1 %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE18FeatureTransformerILj128EE16write_parametersERSo(ptr noundef nonnull align 64 dereferenceable(6488448) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.i1.i = alloca [128 x i8], align 1      ; 11 uses
  %.sroa.0.i.i = alloca [128 x i8], align 1       ; 13 uses
  %i.a = tail call noalias noundef nonnull align 64 dereferenceable(6488448) ptr @_ZnwmSt11align_val_t(i64 noundef 6488448, i64 noundef 64) #20, !noalias !374 ; 12 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(6488448) %i.a, ptr noundef nonnull align 64 dereferenceable(6488448) %0, i64 6488448, i1 false), !tbaa.struct !377, !noalias !374
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 64 dereferenceable(16) %0, i64 16, i1 false)
  %.sroa.0.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.16..sroa_idx.i.i, ptr noundef nonnull align 64 dereferenceable(16) %i.b, i64 16, i1 false)
  %.sroa.0.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.32..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.0.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  %.sroa.0.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.64..sroa_idx.i.i, ptr noundef nonnull align 32 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.0.80..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.80..sroa_idx.i.i, ptr noundef nonnull align 32 dereferenceable(16) %i.f, i64 16, i1 false)
  %.sroa.0.96..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.96..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false)
  %.sroa.0.112..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.112..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(6488448) %i.a, ptr noundef nonnull align 1 dereferenceable(128) %.sroa.0.i.i, i64 128, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 64 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.16..sroa_idx.i.i, ptr noundef nonnull align 64 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.32..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.64..sroa_idx.i.i, ptr noundef nonnull align 32 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.80..sroa_idx.i.i, ptr noundef nonnull align 32 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.96..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.p, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.112..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.i, ptr noundef nonnull align 1 dereferenceable(128) %.sroa.0.i.i, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i1.i)
  %.sroa.0.16..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 16
  %.sroa.0.32..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 32
  %.sroa.0.48..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 48
  %.sroa.0.64..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 64
  %.sroa.0.80..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 80
  %.sroa.0.96..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 96
  %.sroa.0.112..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i1.i, i64 112
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.016.i.i = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.016.i.i ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.i1.i, ptr noundef nonnull align 64 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.16..sroa_idx.i2.i, ptr noundef nonnull align 64 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.32..sroa_idx.i3.i, ptr noundef nonnull align 16 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.48..sroa_idx.i4.i, ptr noundef nonnull align 16 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.64..sroa_idx.i5.i, ptr noundef nonnull align 32 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.80..sroa_idx.i6.i, ptr noundef nonnull align 32 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.96..sroa_idx.i7.i, ptr noundef nonnull align 16 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.112..sroa_idx.i8.i, ptr noundef nonnull align 16 dereferenceable(16) %i.z, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.s, ptr noundef nonnull align 1 dereferenceable(128) %.sroa.0.i1.i, i64 128, i1 false)
  %i.aa = add nuw nsw i64 %.016.i.i, 128
  %i.ab = icmp samesign ult i64 %.016.i.i, 5767040
  br i1 %i.ab, label %bb.b, label %_ZN9Stockfish4Eval4NNUE18FeatureTransformerILj128EE17unpermute_weightsEv.exit, !llvm.loop !369

_ZN9Stockfish4Eval4NNUE18FeatureTransformerILj128EE17unpermute_weightsEv.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i1.i)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN9Stockfish4Eval4NNUE18FeatureTransformerILj128EE17unpermute_weightsEv.exit
  %index = phi i64 [ 0, %_ZN9Stockfish4Eval4NNUE18FeatureTransformerILj128EE17unpermute_weightsEv.exit ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ac ; 5 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 128 ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 192 ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 64, !tbaa !266
  %wide.load11 = load <32 x i16>, ptr %i.ad, align 64, !tbaa !266
  %wide.load12 = load <32 x i16>, ptr %i.ae, align 64, !tbaa !266
  %wide.load13 = load <32 x i16>, ptr %i.af, align 64, !tbaa !266
  %i.ag = sdiv <32 x i16> %wide.load, splat (i16 2)
  %i.ah = sdiv <32 x i16> %wide.load11, splat (i16 2)
  %i.ai = sdiv <32 x i16> %wide.load12, splat (i16 2)
  %i.aj = sdiv <32 x i16> %wide.load13, splat (i16 2)
  store <32 x i16> %i.ag, ptr %next.gep, align 64, !tbaa !266
  store <32 x i16> %i.ah, ptr %i.ad, align 64, !tbaa !266
  store <32 x i16> %i.ai, ptr %i.ae, align 64, !tbaa !266
  store <32 x i16> %i.aj, ptr %i.af, align 64, !tbaa !266
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ak = icmp eq i64 %index.next, 2883584
  br i1 %i.ak, label %vector.body15, label %vector.body, !llvm.loop !378

vector.body15:                                    ; preds = %vector.body
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %wide.load16 = load <32 x i16>, ptr %i.a, align 64, !tbaa !266
  %wide.load17 = load <32 x i16>, ptr %i.al, align 64, !tbaa !266
  %wide.load18 = load <32 x i16>, ptr %i.am, align 64, !tbaa !266
  %wide.load19 = load <32 x i16>, ptr %i.an, align 64, !tbaa !266
  %i.ao = sdiv <32 x i16> %wide.load16, splat (i16 2)
  %i.ap = sdiv <32 x i16> %wide.load17, splat (i16 2)
  %i.aq = sdiv <32 x i16> %wide.load18, splat (i16 2)
  %i.ar = sdiv <32 x i16> %wide.load19, splat (i16 2)
  store <32 x i16> %i.ao, ptr %i.a, align 64, !tbaa !266
  store <32 x i16> %i.ap, ptr %i.al, align 64, !tbaa !266
  store <32 x i16> %i.aq, ptr %i.am, align 64, !tbaa !266
  store <32 x i16> %i.ar, ptr %i.an, align 64, !tbaa !266
  tail call void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 2 dereferenceable(256) %i.a)
  tail call void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 2 dereferenceable(5767168) %i.r)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 5767488
  tail call void @_ZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(720896) %i.as)
  %i.at = load ptr, ptr %1, align 8, !tbaa !86
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !226
  %i.az = and i32 %i.ay, 5
  %.not = icmp eq i32 %i.az, 0
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.a, i64 noundef 6488448, i64 noundef 64) #21
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(256) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN9Stockfish4Eval4NNUEL17Leb128MagicStringE, i64 noundef 17) #19 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !146
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.backedge

bb.c:                                             ; preds = %bb.g, %bb.a
  %.059 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.g ]
  %.02858 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.g ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02858
  %i.f = load i16, ptr %i.e, align 2, !tbaa !266
  %2 = sext i16 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i32 [ %2, %bb.c ], [ %3, %bb.d ]    ; 2 uses
  %.1 = phi i32 [ %.059, %bb.c ], [ %i.g, %bb.d ]
  %3 = ashr i32 %.029, 7                          ; 2 uses
  %i.g = add i32 %.1, 1                           ; 2 uses
  %4 = shl i32 %.029, 25
  %sext = ashr i32 %4, 31
  %.not = icmp eq i32 %3, %sext
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !379

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02858
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !266
  %5 = sext i16 %i.j to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.029.1 = phi i32 [ %5, %bb.e ], [ %6, %bb.f ]  ; 2 uses
  %.1.1 = phi i32 [ %i.g, %bb.e ], [ %i.k, %bb.f ]
  %6 = ashr i32 %.029.1, 7                        ; 2 uses
  %i.k = add i32 %.1.1, 1                         ; 3 uses
  %7 = shl i32 %.029.1, 25
  %sext.1 = ashr i32 %7, 31
  %.not.1 = icmp eq i32 %6, %sext.1
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !379

bb.g:                                             ; preds = %bb.f
  %i.l = add nuw nsw i64 %.02858, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.l, 128
  br i1 %exitcond.not.1, label %bb.b, label %bb.c, !llvm.loop !380

bb.h:                                             ; preds = %bb.o
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = zext i32 %i.t to i64
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.m) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02761 = phi i64 [ 0, %bb.b ], [ %.02761.be, %.backedge.backedge ] ; 3 uses
  %.05260 = phi i32 [ 0, %bb.b ], [ %.05260.be, %.backedge.backedge ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02761
  %i.p = load i16, ptr %i.o, align 2, !tbaa !266
  %8 = sext i16 %i.p to i32
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05260, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.025 = phi i32 [ %8, %.backedge ], [ %9, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.q = trunc i32 %.025 to i8                    ; 2 uses
  %9 = ashr i32 %.025, 7                          ; 3 uses
  %10 = and i32 %.025, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.r = icmp eq i32 %9, 0
  br i1 %i.r, label %bb.l, label %bb.m

bb.k:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.s = icmp eq i32 %9, -1
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %12 = and i8 %i.q, 127
  %i.t = add i32 %.153, 1                         ; 4 uses
  %i.u = zext i32 %.153 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u
  store i8 %12, ptr %i.v, align 1, !tbaa !51
  %i.w = icmp eq i32 %i.t, 4096
  br i1 %i.w, label %.thread, label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.x = or i8 %i.q, -128
  %i.y = add i32 %.153, 1                         ; 2 uses
  %i.z = zext i32 %.153 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !51
  %i.ab = icmp eq i32 %i.y, 4096
  br i1 %i.ab, label %bb.n, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.n:                                             ; preds = %bb.m
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.n, %bb.m
  %.153.be = phi i32 [ %i.y, %bb.m ], [ 0, %bb.n ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.o:                                             ; preds = %bb.l
  %i.ad = add nuw nsw i64 %.02761, 1              ; 2 uses
  %exitcond63.not = icmp eq i64 %i.ad, 128
  br i1 %exitcond63.not, label %bb.h, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.o, %.thread
  %.02761.be = phi i64 [ %i.ad, %bb.o ], [ %i.af, %.thread ]
  %.05260.be = phi i32 [ %i.t, %bb.o ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !381

.thread:                                          ; preds = %bb.l
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.af = add nuw nsw i64 %.02761, 1              ; 2 uses
  %exitcond63.not68 = icmp eq i64 %i.af, 128
  br i1 %exitcond63.not68, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm128EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(5767168) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN9Stockfish4Eval4NNUEL17Leb128MagicStringE, i64 noundef 17) #19 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.k, ptr %i.a, align 4, !tbaa !146
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.backedge

bb.c:                                             ; preds = %bb.g, %bb.a
  %.059 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.g ]
  %.02858 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.g ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02858
  %i.f = load i16, ptr %i.e, align 2, !tbaa !266
  %2 = sext i16 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i32 [ %2, %bb.c ], [ %3, %bb.d ]    ; 2 uses
  %.1 = phi i32 [ %.059, %bb.c ], [ %i.g, %bb.d ]
  %3 = ashr i32 %.029, 7                          ; 2 uses
  %i.g = add i32 %.1, 1                           ; 2 uses
  %4 = shl i32 %.029, 25
  %sext = ashr i32 %4, 31
  %.not = icmp eq i32 %3, %sext
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !382

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02858
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !266
  %5 = sext i16 %i.j to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.029.1 = phi i32 [ %5, %bb.e ], [ %6, %bb.f ]  ; 2 uses
  %.1.1 = phi i32 [ %i.g, %bb.e ], [ %i.k, %bb.f ]
  %6 = ashr i32 %.029.1, 7                        ; 2 uses
  %i.k = add i32 %.1.1, 1                         ; 3 uses
  %7 = shl i32 %.029.1, 25
  %sext.1 = ashr i32 %7, 31
  %.not.1 = icmp eq i32 %6, %sext.1
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !382

bb.g:                                             ; preds = %bb.f
  %i.l = add nuw nsw i64 %.02858, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.l, 2883584
  br i1 %exitcond.not.1, label %bb.b, label %bb.c, !llvm.loop !383

bb.h:                                             ; preds = %bb.o
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = zext i32 %i.t to i64
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.m) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02761 = phi i64 [ 0, %bb.b ], [ %.02761.be, %.backedge.backedge ] ; 3 uses
  %.05260 = phi i32 [ 0, %bb.b ], [ %.05260.be, %.backedge.backedge ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02761
  %i.p = load i16, ptr %i.o, align 2, !tbaa !266
  %8 = sext i16 %i.p to i32
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05260, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.025 = phi i32 [ %8, %.backedge ], [ %9, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.q = trunc i32 %.025 to i8                    ; 2 uses
  %9 = ashr i32 %.025, 7                          ; 3 uses
  %10 = and i32 %.025, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.r = icmp eq i32 %9, 0
  br i1 %i.r, label %bb.l, label %bb.m

bb.k:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.s = icmp eq i32 %9, -1
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %12 = and i8 %i.q, 127
  %i.t = add i32 %.153, 1                         ; 4 uses
  %i.u = zext i32 %.153 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u
  store i8 %12, ptr %i.v, align 1, !tbaa !51
  %i.w = icmp eq i32 %i.t, 4096
  br i1 %i.w, label %.thread, label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.x = or i8 %i.q, -128
  %i.y = add i32 %.153, 1                         ; 2 uses
  %i.z = zext i32 %.153 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !51
  %i.ab = icmp eq i32 %i.y, 4096
  br i1 %i.ab, label %bb.n, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.n:                                             ; preds = %bb.m
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.n, %bb.m
  %.153.be = phi i32 [ %i.y, %bb.m ], [ 0, %bb.n ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.o:                                             ; preds = %bb.l
  %i.ad = add nuw nsw i64 %.02761, 1              ; 2 uses
  %exitcond63.not = icmp eq i64 %i.ad, 2883584
  br i1 %exitcond63.not, label %bb.h, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.o, %.thread
  %.02761.be = phi i64 [ %i.ad, %bb.o ], [ %i.af, %.thread ]
  %.05260.be = phi i32 [ %i.t, %bb.o ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !384

.thread:                                          ; preds = %bb.l
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.af = add nuw nsw i64 %.02761, 1              ; 2 uses
  %exitcond63.not68 = icmp eq i64 %i.af, 2883584
  br i1 %exitcond63.not68, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IsLm2883584EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(720896) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN9Stockfish4Eval4NNUEL17Leb128MagicStringE, i64 noundef 17) #19 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.n, ptr %i.a, align 4, !tbaa !146
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.backedge

bb.c:                                             ; preds = %bb.g, %bb.a
  %.059 = phi i32 [ 0, %bb.a ], [ %i.n, %bb.g ]
  %.02858 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.g ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02858
  %i.f = load i32, ptr %i.e, align 4, !tbaa !146
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i32 [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.059, %bb.c ], [ %i.h, %bb.d ]
  %i.g = ashr i32 %.029, 7                        ; 2 uses
  %i.h = add i32 %.1, 1                           ; 2 uses
  %i.i = shl i32 %.029, 25
  %sext = ashr i32 %i.i, 31
  %.not = icmp eq i32 %i.g, %sext
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !385

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02858
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !146
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.029.1 = phi i32 [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 2 uses
  %.1.1 = phi i32 [ %i.h, %bb.e ], [ %i.n, %bb.f ]
  %i.m = ashr i32 %.029.1, 7                      ; 2 uses
  %i.n = add i32 %.1.1, 1                         ; 3 uses
  %i.o = shl i32 %.029.1, 25
  %sext.1 = ashr i32 %i.o, 31
  %.not.1 = icmp eq i32 %i.m, %sext.1
  br i1 %.not.1, label %bb.g, label %bb.f, !llvm.loop !385

bb.g:                                             ; preds = %bb.f
  %i.p = add nuw nsw i64 %.02858, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.p, 180224
  br i1 %exitcond.not.1, label %bb.b, label %bb.c, !llvm.loop !386

bb.h:                                             ; preds = %bb.o
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = zext i32 %i.ab to i64
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.q) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02762 = phi i64 [ 0, %bb.b ], [ %.02762.be, %.backedge.backedge ] ; 3 uses
  %.05261 = phi i32 [ 0, %bb.b ], [ %.05261.be, %.backedge.backedge ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02762
  %i.t = load i32, ptr %i.s, align 4, !tbaa !146
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05261, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.025 = phi i32 [ %i.t, %.backedge ], [ %i.v, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.u = trunc i32 %.025 to i8                    ; 2 uses
  %i.v = ashr i32 %.025, 7                        ; 3 uses
  %i.w = and i32 %.025, 64
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.y = icmp eq i32 %i.v, 0
  br i1 %i.y, label %bb.l, label %bb.m

bb.k:                                             ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.z = icmp eq i32 %i.v, -1
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = and i8 %i.u, 127
  %i.ab = add i32 %.153, 1                        ; 4 uses
  %i.ac = zext i32 %.153 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !51
  %i.ae = icmp eq i32 %i.ab, 4096
  br i1 %i.ae, label %.thread, label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.af = or i8 %i.u, -128
  %i.ag = add i32 %.153, 1                        ; 2 uses
  %i.ah = zext i32 %.153 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ah
  store i8 %i.af, ptr %i.ai, align 1, !tbaa !51
  %i.aj = icmp eq i32 %i.ag, 4096
  br i1 %i.aj, label %bb.n, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.n:                                             ; preds = %bb.m
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.n, %bb.m
  %.153.be = phi i32 [ %i.ag, %bb.m ], [ 0, %bb.n ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.o:                                             ; preds = %bb.l
  %i.al = add nuw nsw i64 %.02762, 1              ; 2 uses
  %exitcond64.not = icmp eq i64 %i.al, 180224
  br i1 %exitcond64.not, label %bb.h, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.o, %.thread
  %.02762.be = phi i64 [ %i.al, %bb.o ], [ %i.an, %.thread ]
  %.05261.be = phi i32 [ %i.ab, %bb.o ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !387

.thread:                                          ; preds = %bb.l
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.an = add nuw nsw i64 %.02762, 1              ; 2 uses
  %exitcond64.not69 = icmp eq i64 %i.an, 180224
  br i1 %exitcond64.not69, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE16write_parametersERSo(ptr noundef nonnull align 64 dereferenceable(3520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 64 dereferenceable(2112) %0, i64 noundef 64) #19 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i = phi i32 [ 0, %bb.a ], [ %i.p, %bb.b ]  ; 4 uses
  %i.e = shl nuw nsw i32 %.06.i, 4
  %i.f = and i32 %i.e, 1984
  %i.g = lshr i32 %.06.i, 5
  %i.h = and i32 %i.g, 60
  %i.i = and i32 %.06.i, 3
  %i.j = or disjoint i32 %i.h, %i.i
  %i.k = or disjoint i32 %i.j, %i.f
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.n, ptr %i.b, align 1, !tbaa !51
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = add nuw nsw i32 %.06.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.p, 2048
  br i1 %exitcond.not.i, label %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE16write_parametersERSo.exit, label %bb.b, !llvm.loop !388

end_hunk_1
