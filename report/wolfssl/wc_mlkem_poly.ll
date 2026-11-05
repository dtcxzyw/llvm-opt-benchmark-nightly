Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/wc_mlkem_poly?download=true
inline.NumInlined: 49
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mlkem_decapsulate:bb.a
  %i.s = sub i16 %i.p, %i.r                       ; 2 uses
  %i.t = sext i16 %i.s to i32
  %i.u = mul nsw i32 %i.t, 20159
  %i.v = ashr i32 %i.u, 26
  %i.w = trunc nsw i32 %i.v to i16
  %i.x = mul i16 %i.w, -3329
  %i.y = add i16 %i.x, %i.s
  store i16 %i.y, ptr %i.q, align 2, !tbaa !10
  %indvars.iv.next24.i = or disjoint i64 %indvars.iv23.i, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.next24.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !10
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next24.i ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !10
  %i.ad = sub i16 %i.aa, %i.ac                    ; 2 uses
  %i.ae = sext i16 %i.ad to i32
  %i.af = mul nsw i32 %i.ae, 20159
  %i.ag = ashr i32 %i.af, 26
  %i.ah = trunc nsw i32 %i.ag to i16
  %i.ai = mul i16 %i.ah, -3329
  %i.aj = add i16 %i.ai, %i.ad
  store i16 %i.aj, ptr %i.ab, align 2, !tbaa !10
  %indvars.iv.next24.i.1 = add nuw nsw i64 %indvars.iv23.i, 2 ; 2 uses
  %exitcond26.not.i.1 = icmp eq i64 %indvars.iv.next24.i.1, 256
  br i1 %exitcond26.not.i.1, label %mlkem_decapsulate_c.exit, label %scalar.ph, !llvm.loop !54

mlkem_decapsulate_c.exit:                         ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mlkem_hash_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @wc_InitSha3_256(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8
  ret i32 %i.a
}

declare i32 @wc_InitSha3_256(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @mlkem_hash_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @wc_Sha3_256_Free(ptr noundef %0) #8
  ret void
}

declare void @wc_Sha3_256_Free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @mlkem_hash256(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @wc_Sha3_256_Update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wc_Sha3_256_Final(ptr noundef %0, ptr noundef %3) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @wc_Sha3_256_Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_Sha3_256_Final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define i32 @mlkem_hash512(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @wc_Sha3_512_Update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = icmp ne ptr %3, null
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp ne i32 %4, 0
  %or.cond3 = and i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @wc_Sha3_512_Update(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %4) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.a, %bb.a ]  ; 2 uses
  %i.f = icmp eq i32 %.0, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @wc_Sha3_512_Final(ptr noundef %0, ptr noundef %5) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.g, %bb.d ], [ %.0, %bb.c ]
  ret i32 %.1
}

declare i32 @wc_Sha3_512_Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_Sha3_512_Final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @mlkem_prf_init(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @wc_InitShake256(ptr noundef %0, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  ret void
}

declare i32 @wc_InitShake256(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @mlkem_prf_new(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @wc_InitShake256(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define void @mlkem_prf_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @wc_Shake256_Free(ptr noundef %0) #8
  ret void
}

declare void @wc_Shake256_Free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @mlkem_derive_secret(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @wc_InitShake256(ptr noundef %0, ptr noundef null, i32 noundef -2) #8 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.thread13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wc_Shake256_Update(ptr noundef %0, ptr noundef %1, i32 noundef 32) #8 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread13

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @wc_Shake256_Update(ptr noundef %0, ptr noundef %2, i32 noundef %3) #8 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.thread13

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @wc_Shake256_Final(ptr noundef %0, ptr noundef %4, i32 noundef 32) #8
  br label %.thread13

.thread13:                                        ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.2 = phi i32 [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.2
}

declare i32 @wc_Shake256_Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_Shake256_Final(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @mlkem_gen_matrix(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %switch.tableidx = add i32 %2, -2
  %i.a = icmp ult i32 %switch.tableidx, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = tail call fastcc i32 @mlkem_gen_matrix_c(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ -192, %bb.a ], [ %i.b, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mlkem_gen_matrix_c(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 2, 5) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [506 x i8], align 16              ; 9 uses
  %i.b = alloca [34 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  store i8 -1, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 505
  store i8 -1, ptr %i.d, align 1, !tbaa !13
  %.not = icmp eq i32 %4, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.g = shl nuw nsw i32 %2, 8
  %i.h = zext nneg i32 %i.g to i64
  %i.i = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.x
  %.03183 = phi i32 [ 0, %bb.a ], [ %i.ir, %bb.x ] ; 2 uses
  %.03382 = phi ptr [ %1, %bb.a ], [ %i.is, %bb.x ] ; 2 uses
  %i.j = trunc i32 %.03183 to i8                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.thread ] ; 4 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.j, ptr %i.e, align 16, !tbaa !13
  %i.k = trunc i64 %indvars.iv to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = trunc i64 %indvars.iv to i8
  store i8 %i.l, ptr %i.e, align 16, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i8 [ %i.k, %bb.c ], [ %i.j, %bb.d ]
  store i8 %storemerge, ptr %i.f, align 1, !tbaa !13
  %i.m = call i32 @wc_InitShake128(ptr noundef %0, ptr noundef null, i32 noundef -2) #8 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %mlkem_xof_absorb.exit, label %.thread113

mlkem_xof_absorb.exit:                            ; preds = %bb.e
  %i.o = call i32 @wc_Shake128_Absorb(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 34) #8 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %.thread113

bb.f:                                             ; preds = %mlkem_xof_absorb.exit
  %i.q = call i32 @wc_Shake128_SqueezeBlocks(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 3) #8 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %.thread113

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %indvars.iv, 9
  %i.s = getelementptr inbounds nuw i8, ptr %.03382, i64 %.idx ; 13 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.g
  %.0120.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.a, %bb.g ] ; 2 uses
  %.0107119.i = phi i32 [ %i.ax, %.lr.ph.i ], [ 0, %bb.g ] ; 2 uses
  %.0110118.i = phi i32 [ %i.az, %.lr.ph.i ], [ 0, %bb.g ] ; 2 uses
  %.0.val.i = load i64, ptr %.0120.i, align 1     ; 4 uses
  %i.t = trunc i64 %.0.val.i to i16
  %i.u = and i16 %i.t, 4095                       ; 2 uses
  %i.v = lshr i64 %.0.val.i, 12
  %i.w = trunc i64 %i.v to i16
  %i.x = and i16 %i.w, 4095                       ; 2 uses
  %i.y = lshr i64 %.0.val.i, 24
  %i.z = trunc i64 %i.y to i16
  %i.aa = and i16 %i.z, 4095                      ; 2 uses
  %i.ab = lshr i64 %.0.val.i, 36
  %i.ac = trunc i64 %i.ab to i16
  %i.ad = and i16 %i.ac, 4095                     ; 2 uses
  %i.ae = zext i32 %.0107119.i to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ae
  store i16 %i.u, ptr %i.af, align 2, !tbaa !10
  %i.ag = icmp samesign ult i16 %i.u, 3329
  %i.ah = zext i1 %i.ag to i32
  %i.ai = add i32 %.0107119.i, %i.ah              ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.aj
  store i16 %i.x, ptr %i.ak, align 2, !tbaa !10
  %i.al = icmp samesign ult i16 %i.x, 3329
  %i.am = zext i1 %i.al to i32
  %i.an = add i32 %i.ai, %i.am                    ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ao
  store i16 %i.aa, ptr %i.ap, align 2, !tbaa !10
  %i.aq = icmp samesign ult i16 %i.aa, 3329
  %i.ar = zext i1 %i.aq to i32
  %i.as = add i32 %i.an, %i.ar                    ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.at
  store i16 %i.ad, ptr %i.au, align 2, !tbaa !10
  %i.av = icmp samesign ult i16 %i.ad, 3329
  %i.aw = zext i1 %i.av to i32
  %i.ax = add i32 %i.as, %i.aw                    ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0120.i, i64 6 ; 3 uses
  %i.az = add nuw nsw i32 %.0110118.i, 6
  %i.ba = icmp samesign ult i32 %.0110118.i, 378
  br i1 %i.ba, label %.lr.ph.i, label %.preheader117.i, !llvm.loop !57

.preheader117.i:                                  ; preds = %.lr.ph.i
  %i.bb = add i32 %i.ax, 4
  %i.bc = icmp ult i32 %i.bb, 256
  br i1 %i.bc, label %.lr.ph126.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph126.i, %.preheader117.i
  %.1111.lcssa.i = phi i32 [ 384, %.preheader117.i ], [ %i.cm, %.lr.ph126.i ] ; 2 uses
  %.1108.lcssa.i = phi i32 [ %i.ax, %.preheader117.i ], [ %i.ck, %.lr.ph126.i ] ; 3 uses
  %.1.lcssa.i = phi ptr [ %i.ay, %.preheader117.i ], [ %i.cl, %.lr.ph126.i ]
  %i.bd = icmp ult i32 %.1108.lcssa.i, 256
  %i.be = icmp samesign ult i32 %.1111.lcssa.i, 504
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %.lr.ph133.i, label %mlkem_rej_uniform_c.exit

.lr.ph126.i:                                      ; preds = %.preheader117.i, %.lr.ph126.i
  %.1125.i = phi ptr [ %i.cl, %.lr.ph126.i ], [ %i.ay, %.preheader117.i ] ; 2 uses
  %.1108124.i = phi i32 [ %i.ck, %.lr.ph126.i ], [ %i.ax, %.preheader117.i ] ; 2 uses
  %.1111123.i = phi i32 [ %i.cm, %.lr.ph126.i ], [ 384, %.preheader117.i ] ; 2 uses
  %.1.val.i = load i64, ptr %.1125.i, align 1     ; 4 uses
  %i.bg = trunc i64 %.1.val.i to i16
  %i.bh = and i16 %i.bg, 4095                     ; 2 uses
  %i.bi = lshr i64 %.1.val.i, 12
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = and i16 %i.bj, 4095                     ; 2 uses
  %i.bl = lshr i64 %.1.val.i, 24
  %i.bm = trunc i64 %i.bl to i16
  %i.bn = and i16 %i.bm, 4095                     ; 2 uses
  %i.bo = lshr i64 %.1.val.i, 36
  %i.bp = trunc i64 %i.bo to i16
  %i.bq = and i16 %i.bp, 4095                     ; 2 uses
  %i.br = zext i32 %.1108124.i to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.br
  store i16 %i.bh, ptr %i.bs, align 2, !tbaa !10
  %i.bt = icmp samesign ult i16 %i.bh, 3329
  %i.bu = zext i1 %i.bt to i32
  %i.bv = add nsw i32 %.1108124.i, %i.bu          ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.bw
  store i16 %i.bk, ptr %i.bx, align 2, !tbaa !10
  %i.by = icmp samesign ult i16 %i.bk, 3329
  %i.bz = zext i1 %i.by to i32
  %i.ca = add nsw i32 %i.bv, %i.bz                ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.cb
  store i16 %i.bn, ptr %i.cc, align 2, !tbaa !10
  %i.cd = icmp samesign ult i16 %i.bn, 3329
  %i.ce = zext i1 %i.cd to i32
  %i.cf = add nsw i32 %i.ca, %i.ce                ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.cg
  store i16 %i.bq, ptr %i.ch, align 2, !tbaa !10
  %i.ci = icmp samesign ult i16 %i.bq, 3329
  %i.cj = zext i1 %i.ci to i32
  %i.ck = add nsw i32 %i.cf, %i.cj                ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.1125.i, i64 6 ; 2 uses
  %i.cm = add nuw nsw i32 %.1111123.i, 6          ; 2 uses
  %i.cn = icmp slt i32 %i.ck, 252
  %i.co = icmp samesign ult i32 %.1111123.i, 498
  %i.cp = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %i.cp, label %.lr.ph126.i, label %.preheader.i, !llvm.loop !58

.lr.ph133.i:                                      ; preds = %.preheader.i, %bb.o
  %.2132.i = phi ptr [ %i.du, %bb.o ], [ %.1.lcssa.i, %.preheader.i ] ; 2 uses
  %.2109131.i = phi i32 [ %.6.i, %bb.o ], [ %.1108.lcssa.i, %.preheader.i ] ; 3 uses
  %.2112130.i = phi i32 [ %i.dv, %bb.o ], [ %.1111.lcssa.i, %.preheader.i ] ; 2 uses
  %.2.val.i = load i64, ptr %.2132.i, align 1     ; 4 uses
  %i.cq = trunc i64 %.2.val.i to i16
  %i.cr = and i16 %i.cq, 4095                     ; 2 uses
  %i.cs = lshr i64 %.2.val.i, 12
  %i.ct = trunc i64 %i.cs to i16
  %i.cu = and i16 %i.ct, 4095                     ; 2 uses
  %i.cv = lshr i64 %.2.val.i, 24
  %i.cw = trunc i64 %i.cv to i16
  %i.cx = and i16 %i.cw, 4095                     ; 2 uses
  %i.cy = lshr i64 %.2.val.i, 36
  %i.cz = trunc i64 %i.cy to i16
  %i.da = and i16 %i.cz, 4095                     ; 2 uses
  %i.db = icmp samesign ult i16 %i.cr, 3329
  br i1 %i.db, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph133.i
  %i.dc = add nuw nsw i32 %.2109131.i, 1
  %i.dd = zext nneg i32 %.2109131.i to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.dd
  store i16 %i.cr, ptr %i.de, align 2, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph133.i
  %.3.i = phi i32 [ %i.dc, %bb.h ], [ %.2109131.i, %.lr.ph133.i ] ; 4 uses
  %i.df = icmp ult i32 %.3.i, 256
  %i.dg = icmp samesign ult i16 %i.cu, 3329
  %or.cond.i = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dh = add nuw nsw i32 %.3.i, 1
  %i.di = zext nneg i32 %.3.i to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.di
  store i16 %i.cu, ptr %i.dj, align 2, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4.i = phi i32 [ %i.dh, %bb.j ], [ %.3.i, %bb.i ] ; 4 uses
  %i.dk = icmp ult i32 %.4.i, 256
  %i.dl = icmp samesign ult i16 %i.cx, 3329
  %or.cond5.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond5.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dm = add nuw nsw i32 %.4.i, 1
  %i.dn = zext nneg i32 %.4.i to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.dn
  store i16 %i.cx, ptr %i.do, align 2, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.5.i = phi i32 [ %i.dm, %bb.l ], [ %.4.i, %bb.k ] ; 4 uses
  %i.dp = icmp ult i32 %.5.i, 256
  %i.dq = icmp samesign ult i16 %i.da, 3329
  %or.cond8.i = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond8.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dr = add nuw nsw i32 %.5.i, 1
  %i.ds = zext nneg i32 %.5.i to i64
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ds
  store i16 %i.da, ptr %i.dt, align 2, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
end_hunk_0
