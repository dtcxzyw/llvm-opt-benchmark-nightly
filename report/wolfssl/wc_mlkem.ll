Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/wc_mlkem?download=true
inline.NumInlined: 24
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@wc_MlKemKey_MakeKeyWithRandom:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 1 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  call void @mlkem_prf_init(ptr noundef nonnull %i.z) #8
  %i.aa = call i32 @mlkem_get_noise(ptr noundef nonnull %i.z, i32 noundef %switch.offset.i, ptr noundef nonnull %i.v, ptr noundef nonnull %i.l, ptr noundef null, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = call i32 @mlkem_gen_matrix(ptr noundef nonnull %i.z, ptr noundef nonnull %i.p, i32 noundef %switch.offset.i, ptr noundef nonnull %i.a, i32 noundef 0) #8 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @mlkem_keygen(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, i32 noundef %switch.offset.i) #8
  %i.ae = load i32, ptr %i.f, align 8, !tbaa !14
  %i.af = or i32 %i.ae, 3
  store i32 %i.af, ptr %i.f, align 8, !tbaa !14
  br label %bb.h

.thread118:                                       ; preds = %bb.a, %bb.b, %bb.c
  %.5127 = phi i32 [ -125, %bb.c ], [ -174, %bb.b ], [ %spec.store.select, %bb.a ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.a, i8 0, i64 65, i1 false)
  fence seq_cst
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.d
  %.5127.ph = phi i32 [ %i.s, %bb.d ], [ %i.aa, %bb.e ], [ 0, %bb.g ], [ %i.ac, %bb.f ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.a, i8 0, i64 65, i1 false)
  fence seq_cst
  %i.ag = shl nuw nsw i32 %switch.offset.i, 9
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  fence seq_cst
  %i.ai = ptrtoint ptr %i.l to i64
  %i.aj = and i64 %i.ai, 7
  %.not19.i68 = icmp eq i64 %i.aj, 0
  br i1 %.not19.i68, label %.preheader16.i73, label %.lr.ph

.preheader16.i73.loopexit.split.loop.exit156:     ; preds = %.lr.ph.i69.1
  %i.ak = add nsw i64 %.01320.i71152, -3
  br label %.preheader16.i73

.preheader16.i73.loopexit.split.loop.exit159:     ; preds = %.lr.ph.i69
  %i.al = add nsw i64 %.01320.i71152, -2
  br label %.preheader16.i73

.preheader16.i73.loopexit.split.loop.exit162:     ; preds = %.lr.ph
  %i.am = add nsw i64 %.01320.i71152, -1
  br label %.preheader16.i73

.preheader16.i73:                                 ; preds = %.preheader16.i73.loopexit.split.loop.exit156, %.preheader16.i73.loopexit.split.loop.exit159, %.preheader16.i73.loopexit.split.loop.exit162, %.lr.ph.i69.2, %bb.h
  %.013.lcssa.i74 = phi i64 [ %i.ah, %bb.h ], [ %i.al, %.preheader16.i73.loopexit.split.loop.exit159 ], [ %i.ak, %.preheader16.i73.loopexit.split.loop.exit156 ], [ %i.am, %.preheader16.i73.loopexit.split.loop.exit162 ], [ %i.ax, %.lr.ph.i69.2 ] ; 4 uses
  %.012.lcssa.i75 = phi ptr [ %i.l, %bb.h ], [ %i.aq, %.preheader16.i73.loopexit.split.loop.exit159 ], [ %i.at, %.preheader16.i73.loopexit.split.loop.exit156 ], [ %i.bb, %.preheader16.i73.loopexit.split.loop.exit162 ], [ %i.aw, %.lr.ph.i69.2 ] ; 3 uses
  %i.an = icmp ugt i64 %.013.lcssa.i74, 7
  br i1 %i.an, label %.lr.ph25.preheader.i82, label %.preheader.i76

.lr.ph25.preheader.i82:                           ; preds = %.preheader16.i73
  %i.ao = and i64 %.013.lcssa.i74, -8             ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.012.lcssa.i75, i8 0, i64 %i.ao, i1 false), !tbaa !16
  %scevgep.i83 = getelementptr i8, ptr %.012.lcssa.i75, i64 %i.ao
  %i.ap = and i64 %.013.lcssa.i74, 7
  br label %.preheader.i76

.lr.ph.i69:                                       ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.01221.i70151, i64 2 ; 3 uses
  store i8 0, ptr %i.bb, align 1, !tbaa !17
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 7
  %.not.i72.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i72.1, label %.preheader16.i73.loopexit.split.loop.exit159, label %.lr.ph.i69.1, !llvm.loop !0

.lr.ph.i69.1:                                     ; preds = %.lr.ph.i69
  %i.at = getelementptr inbounds nuw i8, ptr %.01221.i70151, i64 3 ; 3 uses
  store i8 0, ptr %i.aq, align 1, !tbaa !17
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = and i64 %i.au, 7
  %.not.i72.2 = icmp eq i64 %i.av, 0
  br i1 %.not.i72.2, label %.preheader16.i73.loopexit.split.loop.exit156, label %.lr.ph.i69.2, !llvm.loop !0

.lr.ph.i69.2:                                     ; preds = %.lr.ph.i69.1
  %i.aw = getelementptr inbounds nuw i8, ptr %.01221.i70151, i64 4 ; 3 uses
  store i8 0, ptr %i.at, align 1, !tbaa !17
  %i.ax = add nsw i64 %.01320.i71152, -4          ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = and i64 %i.ay, 7
  %.not.i72.3 = icmp eq i64 %i.az, 0
  br i1 %.not.i72.3, label %.preheader16.i73, label %.lr.ph.i69.3, !llvm.loop !0

.lr.ph.i69.3:                                     ; preds = %.lr.ph.i69.2
  %i.ba = icmp eq i64 %i.ax, 0
  br i1 %i.ba, label %ForceZero.exit84, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.h, %.lr.ph.i69.3
  %.01320.i71152 = phi i64 [ %i.ax, %.lr.ph.i69.3 ], [ %i.ah, %bb.h ] ; 4 uses
  %.01221.i70151 = phi ptr [ %i.aw, %.lr.ph.i69.3 ], [ %i.l, %bb.h ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01221.i70151, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i70151, align 1, !tbaa !17
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 7
  %.not.i72 = icmp eq i64 %i.bd, 0
  br i1 %.not.i72, label %.preheader16.i73.loopexit.split.loop.exit162, label %.lr.ph.i69, !llvm.loop !0

.preheader.i76:                                   ; preds = %.lr.ph25.preheader.i82, %.preheader16.i73
  %.114.lcssa.i77 = phi i64 [ %.013.lcssa.i74, %.preheader16.i73 ], [ %i.ap, %.lr.ph25.preheader.i82 ] ; 2 uses
  %.0.lcssa.i78 = phi ptr [ %.012.lcssa.i75, %.preheader16.i73 ], [ %scevgep.i83, %.lr.ph25.preheader.i82 ]
  %.not1528.i79 = icmp eq i64 %.114.lcssa.i77, 0
  br i1 %.not1528.i79, label %._crit_edge.i81, label %.lr.ph31.preheader.i80

.lr.ph31.preheader.i80:                           ; preds = %.preheader.i76
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i78, i8 0, i64 %.114.lcssa.i77, i1 false), !tbaa !17
  br label %._crit_edge.i81

._crit_edge.i81:                                  ; preds = %.lr.ph31.preheader.i80, %.preheader.i76
  fence seq_cst
  br label %ForceZero.exit84

ForceZero.exit84:                                 ; preds = %.lr.ph.i69.3, %._crit_edge.i81
  call void @wolfSSL_Free(ptr noundef nonnull %i.l) #8
  br label %bb.i

bb.i:                                             ; preds = %.thread118, %ForceZero.exit84
  %.5127146 = phi i32 [ %.5127.ph, %ForceZero.exit84 ], [ %.5127, %.thread118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.5127146
}

declare i32 @mlkem_hash512(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @mlkem_prf_init(ptr noundef) local_unnamed_addr #3

declare i32 @mlkem_get_noise(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mlkem_gen_matrix(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mlkem_keygen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -174, 1) i32 @wc_MlKemKey_CipherTextSize(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.wc_MlKemKey_Decapsulate, i64 %i.e
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  store i32 %switch.ext, ptr %1, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ -174, %bb.b ], [ 0, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 1) i32 @wc_MlKemKey_SharedSecretSize(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 32, ptr %1, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wc_MlKemKey_Encapsulate(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.c = insertelement <4 x ptr> %i.b, ptr %1, i64 1
  %i.d = insertelement <4 x ptr> %i.c, ptr %2, i64 2
  %i.e = insertelement <4 x ptr> %i.d, ptr %3, i64 3
  %i.f = icmp eq <4 x ptr> %i.e, splat (ptr null)
  %i.g = bitcast <4 x i1> %i.f to i4
  %.not28 = icmp eq i4 %i.g, 0
  br i1 %.not28, label %bb.b, label %.thread19

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14
  %i.j = and i32 %i.i, 2
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %4

4:                                                ; preds = %bb.b
  %5 = call i32 @wc_RNG_GenerateBlock(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i32 noundef 32) #8
  br label %bb.c

bb.c:                                             ; preds = %4, %bb.b
  %.1 = phi i32 [ %5, %4 ], [ -192, %bb.b ]       ; 2 uses
  %i.k = icmp eq i32 %.1, 0
  br i1 %i.k, label %bb.d, label %.thread19

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @wc_MlKemKey_EncapsulateWithRandom(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef 32)
  br label %.thread19

.thread19:                                        ; preds = %bb.a, %bb.d, %bb.c
  %.2 = phi i32 [ %i.l, %bb.d ], [ %.1, %bb.c ], [ -173, %bb.a ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !16
  fence seq_cst
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @wc_MlKemKey_EncapsulateWithRandom(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.c = insertelement <4 x ptr> %i.b, ptr %1, i64 1
  %i.d = insertelement <4 x ptr> %i.c, ptr %2, i64 2
  %i.e = insertelement <4 x ptr> %i.d, ptr %3, i64 3
  %i.f = icmp eq <4 x ptr> %i.e, splat (ptr null)
  %i.g = bitcast <4 x i1> %i.f to i4
  %i.h = icmp eq i4 %i.g, 0                       ; 2 uses
  %.not = icmp eq i32 %4, 32                      ; 2 uses
  %spec.select = select i1 %.not, i32 0, i32 -132
  %spec.store.select = select i1 %i.h, i32 %spec.select, i32 -173
  %i.i = and i1 %i.h, %.not
  br i1 %i.i, label %bb.b, label %.thread39

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = and i32 %i.k, 2
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.thread39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.k, 4
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.q = icmp ult i32 %i.p, 3
  br i1 %i.q, label %bb.e, label %.thread39

bb.e:                                             ; preds = %bb.d
  %switch.idx.mult.i.i = mul nuw nsw i32 %i.p, 384
  %switch.offset.i.i = add nuw nsw i32 %switch.idx.mult.i.i, 800 ; 2 uses
  %i.r = zext nneg i32 %switch.offset.i.i to i64
  %i.s = tail call ptr @wolfSSL_Malloc(i64 noundef %i.r) #8 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread39, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @wc_MlKemKey_EncodePublicKey(ptr noundef nonnull %0, ptr noundef nonnull %i.s, i32 noundef %switch.offset.i.i) ; 2 uses
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.s) #8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %..thread34_crit_edge.i, label %.thread39

..thread34_crit_edge.i:                           ; preds = %bb.f
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !14
  %.pre38.i = and i32 %.pre.i, 4
  %i.w = icmp eq i32 %.pre38.i, 0
  br i1 %i.w, label %.thread39, label %bb.g

bb.g:                                             ; preds = %..thread34_crit_edge.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.z = call i32 @mlkem_hash512(ptr noundef nonnull %i.x, ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull %i.y, i32 noundef 32, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %.thread39

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = call fastcc i32 @mlkemkey_encapsulate(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %i.ab, ptr noundef nonnull %1) ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %.thread39

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %.thread39

.thread39:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.b, %..thread34_crit_edge.i, %bb.g, %bb.i, %bb.h
  %.441 = phi i32 [ %i.ac, %bb.h ], [ 0, %bb.i ], [ %i.z, %bb.g ], [ -192, %bb.b ], [ -174, %bb.d ], [ -125, %bb.e ], [ %i.u, %bb.f ], [ %spec.store.select, %bb.a ], [ -192, %..thread34_crit_edge.i ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.a, i8 0, i64 65, i1 false)
  fence seq_cst
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.441
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mlkemkey_encapsulate(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !12
  switch i32 %i.a, label %.critedge.thread148 [
    i32 0, label %bb.d
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.ph = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  %.ph82 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ]
  %.ph83 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  %.073.ph = phi i32 [ 2, %bb.a ], [ 3, %bb.b ], [ 4, %bb.c ] ; 7 uses
  %.072.ph = phi i64 [ 640, %bb.a ], [ 960, %bb.b ], [ 1408, %bb.c ]
  %i.b = add nuw nsw i32 %.073.ph, 3
  %i.c = shl nuw nsw i32 %.073.ph, 9
  %i.d = mul nuw nsw i32 %i.c, %i.b
  %i.e = add nuw nsw i32 %i.d, 1536
  %i.f = zext nneg i32 %i.e to i64                ; 3 uses
  %i.g = tail call ptr @wolfSSL_Malloc(i64 noundef %i.f) #8 ; 8 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge.thread148, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i32 %.073.ph, 8              ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.j ; 3 uses
  %i.l = mul nuw nsw i32 %i.i, %.073.ph
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 512 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.j ; 3 uses
  tail call void @mlkem_from_msg(ptr noundef nonnull %i.n, ptr noundef %1) #8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  tail call void @mlkem_prf_init(ptr noundef nonnull %i.q) #8
  %i.r = tail call i32 @mlkem_get_noise(ptr noundef nonnull %i.q, i32 noundef %.073.ph, ptr noundef nonnull %i.g, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %2) #8 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4952
  %i.u = tail call i32 @mlkem_gen_matrix(ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, i32 noundef %.073.ph, ptr noundef nonnull %i.t, i32 noundef 1) #8 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 512 ; 5 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.j ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2904
  tail call void @mlkem_encapsulate(ptr noundef nonnull %i.y, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %i.k, ptr noundef nonnull %i.g, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.n, i32 noundef %.073.ph) #8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %.072.ph ; 3 uses
  br i1 %.ph, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @mlkem_vec_compress_10(ptr noundef %3, ptr noundef nonnull %i.w, i32 noundef 2) #8
  tail call void @mlkem_compress_4(ptr noundef nonnull %i.z, ptr noundef nonnull %i.x) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %.ph82, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @mlkem_vec_compress_10(ptr noundef %3, ptr noundef nonnull %i.w, i32 noundef 3) #8
  tail call void @mlkem_compress_4(ptr noundef nonnull %i.z, ptr noundef nonnull %i.x) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.ph83, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  tail call void @mlkem_vec_compress_11(ptr noundef %3, ptr noundef nonnull %i.w) #8
  tail call void @mlkem_compress_5(ptr noundef nonnull %i.z, ptr noundef nonnull %i.x) #8
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.f, %bb.e
  %.3139144 = phi i32 [ %i.r, %bb.e ], [ %i.u, %bb.f ], [ 0, %bb.k ], [ 0, %bb.l ]
  fence seq_cst
  %i.aa = ptrtoint ptr %i.g to i64
  %i.ab = and i64 %i.aa, 7
  %.not19.i = icmp eq i64 %i.ab, 0
  br i1 %.not19.i, label %.lr.ph25.preheader.i, label %.lr.ph.i.preheader

.preheader16.i.split.loop.exit169:                ; preds = %.lr.ph.i.1
  %i.ac = add nsw i64 %.01320.i165, -3
  br label %.preheader16.i

.preheader16.i.split.loop.exit172:                ; preds = %.lr.ph.i
  %i.ad = add nsw i64 %.01320.i165, -2
  br label %.preheader16.i

.preheader16.i.split.loop.exit175:                ; preds = %.lr.ph.i.preheader
  %i.ae = add nsw i64 %.01320.i165, -1
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %.lr.ph.i.2, %.preheader16.i.split.loop.exit175, %.preheader16.i.split.loop.exit172, %.preheader16.i.split.loop.exit169
  %.lcssa167 = phi ptr [ %i.ai, %.preheader16.i.split.loop.exit172 ], [ %i.al, %.preheader16.i.split.loop.exit169 ], [ %i.at, %.preheader16.i.split.loop.exit175 ], [ %i.ao, %.lr.ph.i.2 ] ; 2 uses
  %.lcssa = phi i64 [ %i.ad, %.preheader16.i.split.loop.exit172 ], [ %i.ac, %.preheader16.i.split.loop.exit169 ], [ %i.ae, %.preheader16.i.split.loop.exit175 ], [ %i.ap, %.lr.ph.i.2 ] ; 3 uses
  %i.af = icmp ugt i64 %.lcssa, 7
  br i1 %i.af, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.critedge, %.preheader16.i
  %.012.lcssa.i156 = phi ptr [ %.lcssa167, %.preheader16.i ], [ %i.g, %.critedge ] ; 2 uses
  %.013.lcssa.i155 = phi i64 [ %.lcssa, %.preheader16.i ], [ %i.f, %.critedge ] ; 2 uses
  %i.ag = and i64 %.013.lcssa.i155, -8            ; 2 uses
end_hunk_0
