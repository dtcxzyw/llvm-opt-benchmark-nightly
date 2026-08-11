inline.NumInlined: 101
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cbd_3:bb.a
  %i.ed = ashr <8 x i32> %i.ec, splat (i32 31)
  %i.ee = shl <8 x i32> %i.dn, splat (i32 25)
  %i.ef = ashr <8 x i32> %i.ee, splat (i32 31)
  %i.eg = lshr <8 x i32> %i.dn, splat (i32 7)
  %i.eh = sub nsw <8 x i32> %i.dz, %i.eg
  %i.ei = add nsw <8 x i32> %i.eh, %i.dx
  %i.ej = add nsw <8 x i32> %i.ei, %i.eb
  %i.ek = add nsw <8 x i32> %i.ej, %i.ef
  %i.el = add nsw <8 x i32> %i.ek, %i.ed          ; 2 uses
  %i.em = shufflevector <8 x i32> %i.cp, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.en = icmp slt <16 x i32> %i.em, zeroinitializer
  %i.eo = select <16 x i1> %i.en, <16 x i32> splat (i32 3329), <16 x i32> zeroinitializer
  %i.ep = shufflevector <8 x i32> %i.cp, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eq = add nsw <16 x i32> %i.eo, %i.ep
  %i.er = shufflevector <8 x i32> %i.dv, <8 x i32> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.es = icmp slt <16 x i32> %i.er, zeroinitializer
  %i.et = select <16 x i1> %i.es, <16 x i32> splat (i32 3329), <16 x i32> zeroinitializer
  %i.eu = shufflevector <8 x i32> %i.dv, <8 x i32> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ev = add nsw <16 x i32> %i.et, %i.eu
  %i.ew = shufflevector <16 x i32> %i.eq, <16 x i32> %i.ev, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %interleaved.vec = trunc nsw <32 x i32> %i.ew to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %i.m, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ex = icmp eq i64 %index.next, 64
  br i1 %i.ex, label %.loopexit, label %vector.body, !llvm.loop !98

.loopexit:                                        ; preds = %vector.body, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %vector.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @cbd_2(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr i8, ptr %3, i64 24
  %.val = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.c = call fastcc i32 @prf(ptr noundef %i.a, i64 noundef 128, ptr noundef %1, ptr noundef %2, ptr %.val)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 3 uses
  %i.d = shl nuw i64 %index, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %wide.load = load <4 x i8>, ptr %i.e, align 4, !tbaa !44
  %i.g = zext <4 x i8> %wide.load to <4 x i32>    ; 8 uses
  %i.h = and <4 x i32> %i.g, splat (i32 1)
  %i.i = lshr <4 x i32> %i.g, splat (i32 1)
  %i.j = and <4 x i32> %i.i, splat (i32 1)
  %i.k = shl <4 x i32> %i.g, splat (i32 29)
  %i.l = ashr <4 x i32> %i.k, splat (i32 31)
  %i.m = shl <4 x i32> %i.g, splat (i32 28)
  %i.n = ashr <4 x i32> %i.m, splat (i32 31)
  %i.o = add nsw <4 x i32> %i.n, %i.h
  %i.p = add nsw <4 x i32> %i.o, %i.l
  %i.q = add nsw <4 x i32> %i.p, %i.j             ; 2 uses
  %i.r = icmp slt <4 x i32> %i.q, zeroinitializer
  %i.s = select <4 x i1> %i.r, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.t = add nsw <4 x i32> %i.s, %i.q
  %i.u = lshr <4 x i32> %i.g, splat (i32 4)
  %i.v = and <4 x i32> %i.u, splat (i32 1)
  %i.w = lshr <4 x i32> %i.g, splat (i32 5)
  %i.x = and <4 x i32> %i.w, splat (i32 1)
  %i.y = shl <4 x i32> %i.g, splat (i32 25)
  %i.z = ashr <4 x i32> %i.y, splat (i32 31)
  %i.aa = lshr <4 x i32> %i.g, splat (i32 7)
  %i.ab = sub nsw <4 x i32> %i.x, %i.aa
  %i.ac = add nsw <4 x i32> %i.ab, %i.v
  %i.ad = add nsw <4 x i32> %i.ac, %i.z           ; 2 uses
  %i.ae = icmp slt <4 x i32> %i.ad, zeroinitializer
  %i.af = select <4 x i1> %i.ae, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.ag = add nsw <4 x i32> %i.af, %i.ad
  %i.ah = shufflevector <4 x i32> %i.t, <4 x i32> %i.ag, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc nsw <8 x i32> %i.ah to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.f, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 128
  br i1 %i.ai, label %.loopexit, label %vector.body, !llvm.loop !99

.loopexit:                                        ; preds = %vector.body, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %vector.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hash_g(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 33, 65) %2, ptr noundef nonnull %3, ptr %.40.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %3, ptr noundef %.40.val, ptr noundef null) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 64, ptr %i.a, align 4, !tbaa !92
  %i.c = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef %2) #11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %single_keccak.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @EVP_MD_CTX_get0_md(ptr noundef nonnull %3) #11
  %i.e = tail call i32 @EVP_MD_xof(ptr noundef %i.d) #11
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @EVP_DigestFinalXOF(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef 64) #11
  %i.g = icmp ne i32 %i.f, 0
  br label %single_keccak.exit

bb.e:                                             ; preds = %bb.c
  %i.h = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #11
  %.not12.i = icmp ne i32 %i.h, 0
  %i.i = load i32, ptr %i.a, align 4
  %i.j = icmp eq i32 %i.i, 64
  %narrow.i = select i1 %.not12.i, i1 %i.j, i1 false
  br label %single_keccak.exit

single_keccak.exit:                               ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.g, %bb.d ], [ %narrow.i, %bb.e ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.k = zext i1 %.0.i to i32
  br label %bb.f

bb.f:                                             ; preds = %single_keccak.exit, %bb.a
  %i.l = phi i32 [ 0, %bb.a ], [ %i.k, %single_keccak.exit ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @prf(ptr noundef nonnull %0, i64 noundef range(i64 128, 193) %1, ptr noundef %2, ptr noundef %3, ptr %.24.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call i32 @EVP_DigestInit_ex(ptr noundef %3, ptr noundef %.24.val, ptr noundef null) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = trunc nuw nsw i64 %1 to i32
  store i32 %i.c, ptr %i.a, align 4, !tbaa !92
  %i.d = tail call i32 @EVP_DigestUpdate(ptr noundef %3, ptr noundef %2, i64 noundef 33) #11
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %single_keccak.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @EVP_MD_CTX_get0_md(ptr noundef %3) #11
  %i.f = tail call i32 @EVP_MD_xof(ptr noundef %i.e) #11
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @EVP_DigestFinalXOF(ptr noundef %3, ptr noundef nonnull %0, i64 noundef range(i64 32, 193) %1) #11
  %i.h = icmp ne i32 %i.g, 0
  br label %single_keccak.exit

bb.e:                                             ; preds = %bb.c
  %i.i = call i32 @EVP_DigestFinal_ex(ptr noundef %3, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #11
  %.not12.i = icmp ne i32 %i.i, 0
  %i.j = load i32, ptr %i.a, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = icmp eq i64 %1, %i.k
  %narrow.i = select i1 %.not12.i, i1 %i.l, i1 false
  br label %single_keccak.exit

single_keccak.exit:                               ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.h, %bb.d ], [ %narrow.i, %bb.e ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.m = zext i1 %.0.i to i32
  br label %bb.f

bb.f:                                             ; preds = %single_keccak.exit, %bb.a
  %i.n = phi i32 [ 0, %bb.a ], [ %i.m, %single_keccak.exit ]
  ret i32 %i.n
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @scalar_ntt(ptr nofree noundef captures(address) %0) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit138, %bb.a
  %.020.idx = phi i64 [ 0, %bb.a ], [ %.022.add.lcssa, %.loopexit138 ] ; 4 uses
  %.1 = phi ptr [ @kNTTRoots, %bb.a ], [ %i.b, %.loopexit138 ]
  %.020.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx ; 3 uses
  %.020.add = add nuw nsw i64 %.020.idx, 256      ; 4 uses
  %.ptr25 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add
  %i.b = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 3 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !38
  %i.d = zext i16 %i.c to i32                     ; 2 uses
  %i.e = add i64 %.020.idx, %i.a                  ; 2 uses
  %i.f = add i64 %i.e, 256
  %i.g = add i64 %i.e, 2
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.g)
  %1 = add i64 %.020.idx, %i.a
  %2 = xor i64 %1, -1
  %3 = add i64 %i.h, %2                           ; 2 uses
  %i.i = lshr i64 %3, 1
  %i.j = add nuw i64 %i.i, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %3, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.k = shl i64 %n.vec, 1                        ; 2 uses
  %i.l = add i64 %.020.add, %i.k                  ; 3 uses
  %i.m = getelementptr i8, ptr %.020.ptr, i64 %i.k
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.020.ptr, i64 %i.o ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !38 ; 2 uses
  %wide.load44 = load <8 x i16>, ptr %i.p, align 2, !tbaa !38
  %i.q = zext <8 x i16> %wide.load44 to <8 x i32>
  %i.r = mul nuw <8 x i32> %broadcast.splat, %i.q ; 2 uses
  %i.s = zext <8 x i32> %i.r to <8 x i64>
  %i.t = mul nuw nsw <8 x i64> %i.s, splat (i64 5039)
  %i.u = lshr <8 x i64> %i.t, splat (i64 24)
  %i.v = trunc nuw nsw <8 x i64> %i.u to <8 x i32>
  %i.w = mul <8 x i32> %i.v, splat (i32 62207)
  %i.x = add <8 x i32> %i.w, %i.r
  %i.y = trunc <8 x i32> %i.x to <8 x i16>        ; 2 uses
  %i.z = add <8 x i16> %i.y, splat (i16 -3329)    ; 2 uses
  %i.aa = icmp slt <8 x i16> %i.z, zeroinitializer
  %i.ab = select <8 x i1> %i.aa, <8 x i16> %i.y, <8 x i16> zeroinitializer
  %i.ac = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.z, <8 x i16> zeroinitializer)
  %i.ad = or <8 x i16> %i.ab, %i.ac               ; 2 uses
  %i.ae = sub <8 x i16> %wide.load, %i.ad         ; 3 uses
  %i.af = add <8 x i16> %i.ae, splat (i16 3329)
  %i.ag = icmp slt <8 x i16> %i.ae, zeroinitializer
  %i.ah = select <8 x i1> %i.ag, <8 x i16> %i.af, <8 x i16> zeroinitializer
  %i.ai = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ae, <8 x i16> zeroinitializer)
  %i.aj = or <8 x i16> %i.ah, %i.ai
  store <8 x i16> %i.aj, ptr %i.p, align 2, !tbaa !38
  %i.ak = add <8 x i16> %i.ad, %wide.load         ; 2 uses
  %i.al = add <8 x i16> %i.ak, splat (i16 -3329)  ; 2 uses
  %i.am = icmp slt <8 x i16> %i.al, zeroinitializer
  %i.an = select <8 x i1> %i.am, <8 x i16> %i.ak, <8 x i16> zeroinitializer
  %i.ao = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.al, <8 x i16> zeroinitializer)
  %i.ap = or <8 x i16> %i.an, %i.ao
  store <8 x i16> %i.ap, ptr %next.gep, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.l, -2
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit138, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.022.idx.ph = phi i64 [ %.020.add, %bb.b ], [ %i.l, %middle.block ]
  %.121.ph = phi ptr [ %.020.ptr, %bb.b ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.022.idx = phi i64 [ %.022.add, %scalar.ph ], [ %.022.idx.ph, %scalar.ph.preheader ] ; 3 uses
  %.121 = phi ptr [ %i.bp, %scalar.ph ], [ %.121.ph, %scalar.ph.preheader ] ; 3 uses
  %.022.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.022.idx ; 2 uses
  %i.ar = load i16, ptr %.121, align 2, !tbaa !38 ; 2 uses
  %i.as = load i16, ptr %.022.ptr, align 2, !tbaa !38
  %i.at = zext i16 %i.as to i32
  %i.au = mul nuw i32 %i.at, %i.d                 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = mul nuw nsw i64 %i.av, 5039
  %i.ax = lshr i64 %i.aw, 24
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %.neg.i = mul i32 %i.ay, 62207
  %i.az = add i32 %.neg.i, %i.au
  %i.ba = trunc i32 %i.az to i16                  ; 2 uses
  %i.bb = add i16 %i.ba, -3329                    ; 2 uses
  %isneg.i.i = icmp slt i16 %i.bb, 0
  %i.bc = select i1 %isneg.i.i, i16 %i.ba, i16 0
  %i.bd = tail call i16 @llvm.smax.i16(i16 %i.bb, i16 0)
  %i.be = or i16 %i.bc, %i.bd                     ; 2 uses
  %i.bf = sub i16 %i.ar, %i.be                    ; 3 uses
  %i.bg = add i16 %i.bf, 3329
  %isneg.i = icmp slt i16 %i.bf, 0
  %i.bh = select i1 %isneg.i, i16 %i.bg, i16 0
  %i.bi = tail call i16 @llvm.smax.i16(i16 %i.bf, i16 0)
  %i.bj = or i16 %i.bh, %i.bi
  %.022.add = add nuw nsw i64 %.022.idx, 2        ; 2 uses
  store i16 %i.bj, ptr %.022.ptr, align 2, !tbaa !38
  %i.bk = add i16 %i.be, %i.ar                    ; 2 uses
  %i.bl = add i16 %i.bk, -3329                    ; 2 uses
  %isneg.i26 = icmp slt i16 %i.bl, 0
  %i.bm = select i1 %isneg.i26, i16 %i.bk, i16 0
  %i.bn = tail call i16 @llvm.smax.i16(i16 %i.bl, i16 0)
  %i.bo = or i16 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.121, i64 2 ; 2 uses
  store i16 %i.bo, ptr %.121, align 2, !tbaa !38
  %i.bq = icmp ult ptr %i.bp, %.ptr25
  br i1 %i.bq, label %scalar.ph, label %.loopexit138, !llvm.loop !101

.loopexit138:                                     ; preds = %scalar.ph, %middle.block
  %.022.idx.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.022.idx, %scalar.ph ]
  %.022.add.lcssa = phi i64 [ %i.l, %middle.block ], [ %.022.add, %scalar.ph ]
  %i.br = icmp slt i64 %.022.idx.lcssa, 510
  br i1 %i.br, label %bb.b, label %.preheader38, !llvm.loop !102

.preheader38:                                     ; preds = %.loopexit138, %.loopexit137
  %.020.idx.1 = phi i64 [ %.022.add.1.lcssa, %.loopexit137 ], [ 0, %.loopexit138 ] ; 4 uses
  %.1.1 = phi ptr [ %i.bs, %.loopexit137 ], [ %i.b, %.loopexit138 ]
  %.020.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.1 ; 3 uses
  %.020.add.1 = add nuw nsw i64 %.020.idx.1, 128  ; 4 uses
  %.ptr25.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.1
  %i.bs = getelementptr inbounds nuw i8, ptr %.1.1, i64 2 ; 3 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !38
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  %i.bv = add i64 %.020.idx.1, %i.a               ; 2 uses
  %i.bw = add i64 %i.bv, 128
  %i.bx = add i64 %i.bv, 2
  %i.by = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 %i.bx)
  %4 = add i64 %.020.idx.1, %i.a
  %5 = xor i64 %4, -1
  %6 = add i64 %i.by, %5                          ; 2 uses
  %i.bz = lshr i64 %6, 1
  %i.ca = add nuw i64 %i.bz, 1                    ; 2 uses
  %min.iters.check47 = icmp ult i64 %6, 14
  br i1 %min.iters.check47, label %scalar.ph46.preheader, label %vector.ph48

vector.ph48:                                      ; preds = %.preheader38
  %n.vec49 = and i64 %i.ca, -8                    ; 3 uses
  %i.cb = shl i64 %n.vec49, 1                     ; 2 uses
  %i.cc = add i64 %.020.add.1, %i.cb              ; 3 uses
  %i.cd = getelementptr i8, ptr %.020.ptr.1, i64 %i.cb
  %broadcast.splatinsert50 = insertelement <8 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat51 = shufflevector <8 x i32> %broadcast.splatinsert50, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.1
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph48
  %index53 = phi i64 [ 0, %vector.ph48 ], [ %index.next57, %vector.body52 ] ; 2 uses
  %i.cf = shl i64 %index53, 1                     ; 2 uses
  %next.gep54 = getelementptr i8, ptr %.020.ptr.1, i64 %i.cf ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf ; 2 uses
  %wide.load55 = load <8 x i16>, ptr %next.gep54, align 2, !tbaa !38 ; 2 uses
  %wide.load56 = load <8 x i16>, ptr %i.cg, align 2, !tbaa !38
  %i.ch = zext <8 x i16> %wide.load56 to <8 x i32>
  %i.ci = mul nuw <8 x i32> %broadcast.splat51, %i.ch ; 2 uses
  %i.cj = zext <8 x i32> %i.ci to <8 x i64>
  %i.ck = mul nuw nsw <8 x i64> %i.cj, splat (i64 5039)
  %i.cl = lshr <8 x i64> %i.ck, splat (i64 24)
  %i.cm = trunc nuw nsw <8 x i64> %i.cl to <8 x i32>
  %i.cn = mul <8 x i32> %i.cm, splat (i32 62207)
  %i.co = add <8 x i32> %i.cn, %i.ci
  %i.cp = trunc <8 x i32> %i.co to <8 x i16>      ; 2 uses
  %i.cq = add <8 x i16> %i.cp, splat (i16 -3329)  ; 2 uses
  %i.cr = icmp slt <8 x i16> %i.cq, zeroinitializer
  %i.cs = select <8 x i1> %i.cr, <8 x i16> %i.cp, <8 x i16> zeroinitializer
  %i.ct = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cq, <8 x i16> zeroinitializer)
  %i.cu = or <8 x i16> %i.cs, %i.ct               ; 2 uses
  %i.cv = sub <8 x i16> %wide.load55, %i.cu       ; 3 uses
  %i.cw = add <8 x i16> %i.cv, splat (i16 3329)
  %i.cx = icmp slt <8 x i16> %i.cv, zeroinitializer
  %i.cy = select <8 x i1> %i.cx, <8 x i16> %i.cw, <8 x i16> zeroinitializer
  %i.cz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cv, <8 x i16> zeroinitializer)
  %i.da = or <8 x i16> %i.cy, %i.cz
  store <8 x i16> %i.da, ptr %i.cg, align 2, !tbaa !38
  %i.db = add <8 x i16> %i.cu, %wide.load55       ; 2 uses
  %i.dc = add <8 x i16> %i.db, splat (i16 -3329)  ; 2 uses
  %i.dd = icmp slt <8 x i16> %i.dc, zeroinitializer
  %i.de = select <8 x i1> %i.dd, <8 x i16> %i.db, <8 x i16> zeroinitializer
  %i.df = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dc, <8 x i16> zeroinitializer)
  %i.dg = or <8 x i16> %i.de, %i.df
  store <8 x i16> %i.dg, ptr %next.gep54, align 2, !tbaa !38
  %index.next57 = add nuw i64 %index53, 8         ; 2 uses
  %i.dh = icmp eq i64 %index.next57, %n.vec49
  br i1 %i.dh, label %middle.block58, label %vector.body52, !llvm.loop !103

middle.block58:                                   ; preds = %vector.body52
  %ind.escape59 = add i64 %i.cc, -2
  %cmp.n60 = icmp eq i64 %i.ca, %n.vec49
  br i1 %cmp.n60, label %.loopexit137, label %scalar.ph46.preheader

scalar.ph46.preheader:                            ; preds = %.preheader38, %middle.block58
  %.022.idx.1.ph = phi i64 [ %.020.add.1, %.preheader38 ], [ %i.cc, %middle.block58 ]
  %.121.1.ph = phi ptr [ %.020.ptr.1, %.preheader38 ], [ %i.cd, %middle.block58 ]
  br label %scalar.ph46

scalar.ph46:                                      ; preds = %scalar.ph46.preheader, %scalar.ph46
  %.022.idx.1 = phi i64 [ %.022.add.1, %scalar.ph46 ], [ %.022.idx.1.ph, %scalar.ph46.preheader ] ; 3 uses
  %.121.1 = phi ptr [ %i.eg, %scalar.ph46 ], [ %.121.1.ph, %scalar.ph46.preheader ] ; 3 uses
  %.022.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.022.idx.1 ; 2 uses
  %i.di = load i16, ptr %.121.1, align 2, !tbaa !38 ; 2 uses
  %i.dj = load i16, ptr %.022.ptr.1, align 2, !tbaa !38
  %i.dk = zext i16 %i.dj to i32
  %i.dl = mul nuw i32 %i.dk, %i.bu                ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = mul nuw nsw i64 %i.dm, 5039
  %i.do = lshr i64 %i.dn, 24
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %.neg.i.1 = mul i32 %i.dp, 62207
  %i.dq = add i32 %.neg.i.1, %i.dl
  %i.dr = trunc i32 %i.dq to i16                  ; 2 uses
  %i.ds = add i16 %i.dr, -3329                    ; 2 uses
  %isneg.i.i.1 = icmp slt i16 %i.ds, 0
  %i.dt = select i1 %isneg.i.i.1, i16 %i.dr, i16 0
  %i.du = tail call i16 @llvm.smax.i16(i16 %i.ds, i16 0)
  %i.dv = or i16 %i.dt, %i.du                     ; 2 uses
  %i.dw = sub i16 %i.di, %i.dv                    ; 3 uses
  %i.dx = add i16 %i.dw, 3329
  %isneg.i.1 = icmp slt i16 %i.dw, 0
  %i.dy = select i1 %isneg.i.1, i16 %i.dx, i16 0
  %i.dz = tail call i16 @llvm.smax.i16(i16 %i.dw, i16 0)
  %i.ea = or i16 %i.dy, %i.dz
  %.022.add.1 = add nuw nsw i64 %.022.idx.1, 2    ; 2 uses
  store i16 %i.ea, ptr %.022.ptr.1, align 2, !tbaa !38
  %i.eb = add i16 %i.dv, %i.di                    ; 2 uses
  %i.ec = add i16 %i.eb, -3329                    ; 2 uses
  %isneg.i26.1 = icmp slt i16 %i.ec, 0
  %i.ed = select i1 %isneg.i26.1, i16 %i.eb, i16 0
  %i.ee = tail call i16 @llvm.smax.i16(i16 %i.ec, i16 0)
  %i.ef = or i16 %i.ed, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %.121.1, i64 2 ; 2 uses
  store i16 %i.ef, ptr %.121.1, align 2, !tbaa !38
  %i.eh = icmp ult ptr %i.eg, %.ptr25.1
  br i1 %i.eh, label %scalar.ph46, label %.loopexit137, !llvm.loop !104

.loopexit137:                                     ; preds = %scalar.ph46, %middle.block58
  %.022.idx.1.lcssa = phi i64 [ %ind.escape59, %middle.block58 ], [ %.022.idx.1, %scalar.ph46 ]
  %.022.add.1.lcssa = phi i64 [ %i.cc, %middle.block58 ], [ %.022.add.1, %scalar.ph46 ]
  %i.ei = icmp slt i64 %.022.idx.1.lcssa, 510
  br i1 %i.ei, label %.preheader38, label %.preheader37, !llvm.loop !102

.preheader37:                                     ; preds = %.loopexit137, %.loopexit136
  %.020.idx.2 = phi i64 [ %.022.add.2.lcssa, %.loopexit136 ], [ 0, %.loopexit137 ] ; 4 uses
  %.1.2 = phi ptr [ %i.ej, %.loopexit136 ], [ %i.bs, %.loopexit137 ]
  %.020.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.2 ; 3 uses
  %.020.add.2 = add nuw nsw i64 %.020.idx.2, 64   ; 4 uses
  %.ptr25.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.2
  %i.ej = getelementptr inbounds nuw i8, ptr %.1.2, i64 2 ; 3 uses
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !38
  %i.el = zext i16 %i.ek to i32                   ; 2 uses
  %i.em = add i64 %.020.idx.2, %i.a               ; 2 uses
  %i.en = add i64 %i.em, 64
  %i.eo = add i64 %i.em, 2
  %i.ep = tail call i64 @llvm.umax.i64(i64 %i.en, i64 %i.eo)
  %7 = add i64 %.020.idx.2, %i.a
  %8 = xor i64 %7, -1
  %9 = add i64 %i.ep, %8                          ; 2 uses
  %i.eq = lshr i64 %9, 1
  %i.er = add nuw i64 %i.eq, 1                    ; 2 uses
  %min.iters.check64 = icmp ult i64 %9, 14
  br i1 %min.iters.check64, label %scalar.ph63.preheader, label %vector.ph65

vector.ph65:                                      ; preds = %.preheader37
  %n.vec66 = and i64 %i.er, -8                    ; 3 uses
  %i.es = shl i64 %n.vec66, 1                     ; 2 uses
  %i.et = add i64 %.020.add.2, %i.es              ; 3 uses
  %i.eu = getelementptr i8, ptr %.020.ptr.2, i64 %i.es
  %broadcast.splatinsert67 = insertelement <8 x i32> poison, i32 %i.el, i64 0
  %broadcast.splat68 = shufflevector <8 x i32> %broadcast.splatinsert67, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.2
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph65
  %index70 = phi i64 [ 0, %vector.ph65 ], [ %index.next74, %vector.body69 ] ; 2 uses
  %i.ew = shl i64 %index70, 1                     ; 2 uses
  %next.gep71 = getelementptr i8, ptr %.020.ptr.2, i64 %i.ew ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew ; 2 uses
  %wide.load72 = load <8 x i16>, ptr %next.gep71, align 2, !tbaa !38 ; 2 uses
  %wide.load73 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !38
  %i.ey = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.ez = mul nuw <8 x i32> %broadcast.splat68, %i.ey ; 2 uses
  %i.fa = zext <8 x i32> %i.ez to <8 x i64>
  %i.fb = mul nuw nsw <8 x i64> %i.fa, splat (i64 5039)
  %i.fc = lshr <8 x i64> %i.fb, splat (i64 24)
  %i.fd = trunc nuw nsw <8 x i64> %i.fc to <8 x i32>
  %i.fe = mul <8 x i32> %i.fd, splat (i32 62207)
  %i.ff = add <8 x i32> %i.fe, %i.ez
  %i.fg = trunc <8 x i32> %i.ff to <8 x i16>      ; 2 uses
  %i.fh = add <8 x i16> %i.fg, splat (i16 -3329)  ; 2 uses
  %i.fi = icmp slt <8 x i16> %i.fh, zeroinitializer
  %i.fj = select <8 x i1> %i.fi, <8 x i16> %i.fg, <8 x i16> zeroinitializer
  %i.fk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fh, <8 x i16> zeroinitializer)
  %i.fl = or <8 x i16> %i.fj, %i.fk               ; 2 uses
  %i.fm = sub <8 x i16> %wide.load72, %i.fl       ; 3 uses
  %i.fn = add <8 x i16> %i.fm, splat (i16 3329)
  %i.fo = icmp slt <8 x i16> %i.fm, zeroinitializer
  %i.fp = select <8 x i1> %i.fo, <8 x i16> %i.fn, <8 x i16> zeroinitializer
  %i.fq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fm, <8 x i16> zeroinitializer)
  %i.fr = or <8 x i16> %i.fp, %i.fq
  store <8 x i16> %i.fr, ptr %i.ex, align 2, !tbaa !38
  %i.fs = add <8 x i16> %i.fl, %wide.load72       ; 2 uses
  %i.ft = add <8 x i16> %i.fs, splat (i16 -3329)  ; 2 uses
  %i.fu = icmp slt <8 x i16> %i.ft, zeroinitializer
  %i.fv = select <8 x i1> %i.fu, <8 x i16> %i.fs, <8 x i16> zeroinitializer
  %i.fw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ft, <8 x i16> zeroinitializer)
  %i.fx = or <8 x i16> %i.fv, %i.fw
  store <8 x i16> %i.fx, ptr %next.gep71, align 2, !tbaa !38
  %index.next74 = add nuw i64 %index70, 8         ; 2 uses
  %i.fy = icmp eq i64 %index.next74, %n.vec66
  br i1 %i.fy, label %middle.block75, label %vector.body69, !llvm.loop !105

middle.block75:                                   ; preds = %vector.body69
  %ind.escape76 = add i64 %i.et, -2
  %cmp.n77 = icmp eq i64 %i.er, %n.vec66
  br i1 %cmp.n77, label %.loopexit136, label %scalar.ph63.preheader

scalar.ph63.preheader:                            ; preds = %.preheader37, %middle.block75
  %.022.idx.2.ph = phi i64 [ %.020.add.2, %.preheader37 ], [ %i.et, %middle.block75 ]
  %.121.2.ph = phi ptr [ %.020.ptr.2, %.preheader37 ], [ %i.eu, %middle.block75 ]
  br label %scalar.ph63

scalar.ph63:                                      ; preds = %scalar.ph63.preheader, %scalar.ph63
  %.022.idx.2 = phi i64 [ %.022.add.2, %scalar.ph63 ], [ %.022.idx.2.ph, %scalar.ph63.preheader ] ; 3 uses
  %.121.2 = phi ptr [ %i.gx, %scalar.ph63 ], [ %.121.2.ph, %scalar.ph63.preheader ] ; 3 uses
  %.022.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.022.idx.2 ; 2 uses
  %i.fz = load i16, ptr %.121.2, align 2, !tbaa !38 ; 2 uses
  %i.ga = load i16, ptr %.022.ptr.2, align 2, !tbaa !38
  %i.gb = zext i16 %i.ga to i32
  %i.gc = mul nuw i32 %i.gb, %i.el                ; 2 uses
  %i.gd = zext i32 %i.gc to i64
  %i.ge = mul nuw nsw i64 %i.gd, 5039
  %i.gf = lshr i64 %i.ge, 24
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %.neg.i.2 = mul i32 %i.gg, 62207
  %i.gh = add i32 %.neg.i.2, %i.gc
  %i.gi = trunc i32 %i.gh to i16                  ; 2 uses
  %i.gj = add i16 %i.gi, -3329                    ; 2 uses
  %isneg.i.i.2 = icmp slt i16 %i.gj, 0
  %i.gk = select i1 %isneg.i.i.2, i16 %i.gi, i16 0
  %i.gl = tail call i16 @llvm.smax.i16(i16 %i.gj, i16 0)
  %i.gm = or i16 %i.gk, %i.gl                     ; 2 uses
  %i.gn = sub i16 %i.fz, %i.gm                    ; 3 uses
  %i.go = add i16 %i.gn, 3329
  %isneg.i.2 = icmp slt i16 %i.gn, 0
  %i.gp = select i1 %isneg.i.2, i16 %i.go, i16 0
  %i.gq = tail call i16 @llvm.smax.i16(i16 %i.gn, i16 0)
  %i.gr = or i16 %i.gp, %i.gq
  %.022.add.2 = add nuw nsw i64 %.022.idx.2, 2    ; 2 uses
  store i16 %i.gr, ptr %.022.ptr.2, align 2, !tbaa !38
  %i.gs = add i16 %i.gm, %i.fz                    ; 2 uses
  %i.gt = add i16 %i.gs, -3329                    ; 2 uses
  %isneg.i26.2 = icmp slt i16 %i.gt, 0
  %i.gu = select i1 %isneg.i26.2, i16 %i.gs, i16 0
  %i.gv = tail call i16 @llvm.smax.i16(i16 %i.gt, i16 0)
  %i.gw = or i16 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %.121.2, i64 2 ; 2 uses
  store i16 %i.gw, ptr %.121.2, align 2, !tbaa !38
  %i.gy = icmp ult ptr %i.gx, %.ptr25.2
  br i1 %i.gy, label %scalar.ph63, label %.loopexit136, !llvm.loop !106

.loopexit136:                                     ; preds = %scalar.ph63, %middle.block75
  %.022.idx.2.lcssa = phi i64 [ %ind.escape76, %middle.block75 ], [ %.022.idx.2, %scalar.ph63 ]
  %.022.add.2.lcssa = phi i64 [ %i.et, %middle.block75 ], [ %.022.add.2, %scalar.ph63 ]
  %i.gz = icmp slt i64 %.022.idx.2.lcssa, 510
  br i1 %i.gz, label %.preheader37, label %.preheader36, !llvm.loop !102

.preheader36:                                     ; preds = %.loopexit136, %.loopexit135
  %.020.idx.3 = phi i64 [ %.022.add.3.lcssa, %.loopexit135 ], [ 0, %.loopexit136 ] ; 4 uses
  %.1.3 = phi ptr [ %i.ha, %.loopexit135 ], [ %i.ej, %.loopexit136 ] ; 4 uses
  %.020.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.3 ; 3 uses
  %.020.add.3 = add nuw nsw i64 %.020.idx.3, 32   ; 4 uses
  %.ptr25.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.3
  %i.ha = getelementptr inbounds nuw i8, ptr %.1.3, i64 2 ; 4 uses
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !38
  %i.hc = zext i16 %i.hb to i32                   ; 2 uses
  %i.hd = add i64 %.020.idx.3, %i.a               ; 2 uses
  %i.he = add i64 %i.hd, 32
  %i.hf = add i64 %i.hd, 2
  %i.hg = tail call i64 @llvm.umax.i64(i64 %i.he, i64 %i.hf)
  %10 = add i64 %.020.idx.3, %i.a
  %11 = xor i64 %10, -1
  %12 = add i64 %i.hg, %11                        ; 2 uses
  %i.hh = lshr i64 %12, 1
  %i.hi = add nuw i64 %i.hh, 1                    ; 2 uses
  %min.iters.check81 = icmp ult i64 %12, 14
  br i1 %min.iters.check81, label %scalar.ph80.preheader, label %vector.ph82

vector.ph82:                                      ; preds = %.preheader36
  %n.vec83 = and i64 %i.hi, -8                    ; 3 uses
  %i.hj = shl i64 %n.vec83, 1                     ; 2 uses
  %i.hk = add i64 %.020.add.3, %i.hj              ; 3 uses
  %i.hl = getelementptr i8, ptr %.020.ptr.3, i64 %i.hj
  %broadcast.splatinsert84 = insertelement <8 x i32> poison, i32 %i.hc, i64 0
  %broadcast.splat85 = shufflevector <8 x i32> %broadcast.splatinsert84, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.3
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph82
  %index87 = phi i64 [ 0, %vector.ph82 ], [ %index.next91, %vector.body86 ] ; 2 uses
  %i.hn = shl i64 %index87, 1                     ; 2 uses
  %next.gep88 = getelementptr i8, ptr %.020.ptr.3, i64 %i.hn ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn ; 2 uses
  %wide.load89 = load <8 x i16>, ptr %next.gep88, align 2, !tbaa !38 ; 2 uses
  %wide.load90 = load <8 x i16>, ptr %i.ho, align 2, !tbaa !38
  %i.hp = zext <8 x i16> %wide.load90 to <8 x i32>
  %i.hq = mul nuw <8 x i32> %broadcast.splat85, %i.hp ; 2 uses
  %i.hr = zext <8 x i32> %i.hq to <8 x i64>
  %i.hs = mul nuw nsw <8 x i64> %i.hr, splat (i64 5039)
  %i.ht = lshr <8 x i64> %i.hs, splat (i64 24)
  %i.hu = trunc nuw nsw <8 x i64> %i.ht to <8 x i32>
  %i.hv = mul <8 x i32> %i.hu, splat (i32 62207)
  %i.hw = add <8 x i32> %i.hv, %i.hq
  %i.hx = trunc <8 x i32> %i.hw to <8 x i16>      ; 2 uses
  %i.hy = add <8 x i16> %i.hx, splat (i16 -3329)  ; 2 uses
  %i.hz = icmp slt <8 x i16> %i.hy, zeroinitializer
  %i.ia = select <8 x i1> %i.hz, <8 x i16> %i.hx, <8 x i16> zeroinitializer
  %i.ib = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hy, <8 x i16> zeroinitializer)
  %i.ic = or <8 x i16> %i.ia, %i.ib               ; 2 uses
  %i.id = sub <8 x i16> %wide.load89, %i.ic       ; 3 uses
  %i.ie = add <8 x i16> %i.id, splat (i16 3329)
  %i.if = icmp slt <8 x i16> %i.id, zeroinitializer
  %i.ig = select <8 x i1> %i.if, <8 x i16> %i.ie, <8 x i16> zeroinitializer
  %i.ih = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.id, <8 x i16> zeroinitializer)
  %i.ii = or <8 x i16> %i.ig, %i.ih
  store <8 x i16> %i.ii, ptr %i.ho, align 2, !tbaa !38
  %i.ij = add <8 x i16> %i.ic, %wide.load89       ; 2 uses
  %i.ik = add <8 x i16> %i.ij, splat (i16 -3329)  ; 2 uses
  %i.il = icmp slt <8 x i16> %i.ik, zeroinitializer
  %i.im = select <8 x i1> %i.il, <8 x i16> %i.ij, <8 x i16> zeroinitializer
  %i.in = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ik, <8 x i16> zeroinitializer)
  %i.io = or <8 x i16> %i.im, %i.in
  store <8 x i16> %i.io, ptr %next.gep88, align 2, !tbaa !38
  %index.next91 = add nuw i64 %index87, 8         ; 2 uses
  %i.ip = icmp eq i64 %index.next91, %n.vec83
  br i1 %i.ip, label %middle.block92, label %vector.body86, !llvm.loop !107

middle.block92:                                   ; preds = %vector.body86
  %ind.escape93 = add i64 %i.hk, -2
  %cmp.n94 = icmp eq i64 %i.hi, %n.vec83
  br i1 %cmp.n94, label %.loopexit135, label %scalar.ph80.preheader

scalar.ph80.preheader:                            ; preds = %.preheader36, %middle.block92
  %.022.idx.3.ph = phi i64 [ %.020.add.3, %.preheader36 ], [ %i.hk, %middle.block92 ]
  %.121.3.ph = phi ptr [ %.020.ptr.3, %.preheader36 ], [ %i.hl, %middle.block92 ]
  br label %scalar.ph80

scalar.ph80:                                      ; preds = %scalar.ph80.preheader, %scalar.ph80
  %.022.idx.3 = phi i64 [ %.022.add.3, %scalar.ph80 ], [ %.022.idx.3.ph, %scalar.ph80.preheader ] ; 3 uses
  %.121.3 = phi ptr [ %i.jo, %scalar.ph80 ], [ %.121.3.ph, %scalar.ph80.preheader ] ; 3 uses
  %.022.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.022.idx.3 ; 2 uses
  %i.iq = load i16, ptr %.121.3, align 2, !tbaa !38 ; 2 uses
  %i.ir = load i16, ptr %.022.ptr.3, align 2, !tbaa !38
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw i32 %i.is, %i.hc                ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = mul nuw nsw i64 %i.iu, 5039
  %i.iw = lshr i64 %i.iv, 24
  %i.ix = trunc nuw nsw i64 %i.iw to i32
  %.neg.i.3 = mul i32 %i.ix, 62207
  %i.iy = add i32 %.neg.i.3, %i.it
  %i.iz = trunc i32 %i.iy to i16                  ; 2 uses
  %i.ja = add i16 %i.iz, -3329                    ; 2 uses
  %isneg.i.i.3 = icmp slt i16 %i.ja, 0
  %i.jb = select i1 %isneg.i.i.3, i16 %i.iz, i16 0
  %i.jc = tail call i16 @llvm.smax.i16(i16 %i.ja, i16 0)
  %i.jd = or i16 %i.jb, %i.jc                     ; 2 uses
  %i.je = sub i16 %i.iq, %i.jd                    ; 3 uses
  %i.jf = add i16 %i.je, 3329
  %isneg.i.3 = icmp slt i16 %i.je, 0
  %i.jg = select i1 %isneg.i.3, i16 %i.jf, i16 0
  %i.jh = tail call i16 @llvm.smax.i16(i16 %i.je, i16 0)
  %i.ji = or i16 %i.jg, %i.jh
  %.022.add.3 = add nuw nsw i64 %.022.idx.3, 2    ; 2 uses
  store i16 %i.ji, ptr %.022.ptr.3, align 2, !tbaa !38
  %i.jj = add i16 %i.jd, %i.iq                    ; 2 uses
  %i.jk = add i16 %i.jj, -3329                    ; 2 uses
  %isneg.i26.3 = icmp slt i16 %i.jk, 0
  %i.jl = select i1 %isneg.i26.3, i16 %i.jj, i16 0
  %i.jm = tail call i16 @llvm.smax.i16(i16 %i.jk, i16 0)
  %i.jn = or i16 %i.jl, %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %.121.3, i64 2 ; 2 uses
  store i16 %i.jn, ptr %.121.3, align 2, !tbaa !38
  %i.jp = icmp ult ptr %i.jo, %.ptr25.3
  br i1 %i.jp, label %scalar.ph80, label %.loopexit135, !llvm.loop !108

.loopexit135:                                     ; preds = %scalar.ph80, %middle.block92
  %.022.idx.3.lcssa = phi i64 [ %ind.escape93, %middle.block92 ], [ %.022.idx.3, %scalar.ph80 ]
  %.022.add.3.lcssa = phi i64 [ %i.hk, %middle.block92 ], [ %.022.add.3, %scalar.ph80 ]
  %i.jq = icmp slt i64 %.022.idx.3.lcssa, 510
  br i1 %i.jq, label %.preheader36, label %vector.memcheck, !llvm.loop !102

vector.memcheck:                                  ; preds = %.loopexit135
  %scevgep = getelementptr i8, ptr %0, i64 512    ; 2 uses
  %i.jr = getelementptr i8, ptr %.1.3, i64 4
  %i.js = getelementptr i8, ptr %.1.3, i64 36
  %bound0 = icmp ult ptr %0, %i.js
  %bound1 = icmp ult ptr %i.jr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph97, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck
  %i.jt = getelementptr i8, ptr %.1.3, i64 34
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph98
  %index100 = phi i64 [ 0, %vector.ph98 ], [ %index.next103, %vector.body99 ] ; 3 uses
  %i.ju = shl nuw i64 %index100, 5                ; 8 uses
  %i.jv = shl i64 %index100, 1
  %next.gep101 = getelementptr i8, ptr %i.ha, i64 %i.jv
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 %i.ju ; 17 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 %i.ju ; 16 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 %i.ju ; 16 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 64 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ju ; 16 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 96 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ju ; 16 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 128 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ju ; 16 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 160 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 %i.ju ; 16 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 192 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ju ; 16 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 224 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 48 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jz, i64 80 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kb, i64 112 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kd, i64 144 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kf, i64 176 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 208 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kj, i64 240 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %next.gep101, i64 2
  %wide.load102 = load <8 x i16>, ptr %i.kt, align 2, !tbaa !38, !alias.scope !109
  %i.ku = zext <8 x i16> %wide.load102 to <8 x i32> ; 8 uses
  %i.kv = load i16, ptr %i.jw, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.kw = load i16, ptr %i.jy, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.kx = load i16, ptr %i.ka, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.ky = load i16, ptr %i.kc, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.kz = load i16, ptr %i.ke, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.la = load i16, ptr %i.kg, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.lb = load i16, ptr %i.ki, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.lc = load i16, ptr %i.kk, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.ld = insertelement <8 x i16> poison, i16 %i.kv, i64 0
  %i.le = insertelement <8 x i16> %i.ld, i16 %i.kw, i64 1
  %i.lf = insertelement <8 x i16> %i.le, i16 %i.kx, i64 2
  %i.lg = insertelement <8 x i16> %i.lf, i16 %i.ky, i64 3
  %i.lh = insertelement <8 x i16> %i.lg, i16 %i.kz, i64 4
  %i.li = insertelement <8 x i16> %i.lh, i16 %i.la, i64 5
  %i.lj = insertelement <8 x i16> %i.li, i16 %i.lb, i64 6
  %i.lk = insertelement <8 x i16> %i.lj, i16 %i.lc, i64 7 ; 2 uses
  %i.ll = load i16, ptr %i.kl, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.lm = load i16, ptr %i.km, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.ln = load i16, ptr %i.kn, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.lo = load i16, ptr %i.ko, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.lp = load i16, ptr %i.kp, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.lq = load i16, ptr %i.kq, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.lr = load i16, ptr %i.kr, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.ls = load i16, ptr %i.ks, align 2, !tbaa !38, !alias.scope !112, !noalias !109
  %i.lt = insertelement <8 x i16> poison, i16 %i.ll, i64 0
  %i.lu = insertelement <8 x i16> %i.lt, i16 %i.lm, i64 1
  %i.lv = insertelement <8 x i16> %i.lu, i16 %i.ln, i64 2
  %i.lw = insertelement <8 x i16> %i.lv, i16 %i.lo, i64 3
  %i.lx = insertelement <8 x i16> %i.lw, i16 %i.lp, i64 4
  %i.ly = insertelement <8 x i16> %i.lx, i16 %i.lq, i64 5
  %i.lz = insertelement <8 x i16> %i.ly, i16 %i.lr, i64 6
  %i.ma = insertelement <8 x i16> %i.lz, i16 %i.ls, i64 7
  %i.mb = zext <8 x i16> %i.ma to <8 x i32>
  %i.mc = mul nuw <8 x i32> %i.mb, %i.ku          ; 2 uses
  %i.md = zext <8 x i32> %i.mc to <8 x i64>
  %i.me = mul nuw nsw <8 x i64> %i.md, splat (i64 5039)
  %i.mf = lshr <8 x i64> %i.me, splat (i64 24)
  %i.mg = trunc nuw nsw <8 x i64> %i.mf to <8 x i32>
  %i.mh = mul <8 x i32> %i.mg, splat (i32 62207)
  %i.mi = add <8 x i32> %i.mh, %i.mc
  %i.mj = trunc <8 x i32> %i.mi to <8 x i16>      ; 2 uses
  %i.mk = add <8 x i16> %i.mj, splat (i16 -3329)  ; 2 uses
  %i.ml = icmp slt <8 x i16> %i.mk, zeroinitializer
  %i.mm = select <8 x i1> %i.ml, <8 x i16> %i.mj, <8 x i16> zeroinitializer
  %i.mn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mk, <8 x i16> zeroinitializer)
  %i.mo = or <8 x i16> %i.mm, %i.mn               ; 2 uses
  %i.mp = sub <8 x i16> %i.lk, %i.mo              ; 3 uses
end_hunk_0
begin_hunk_1_@scalar_inverse_ntt:vector.memcheck
  %i.apx = getelementptr i8, ptr %i.td, i64 238   ; 2 uses
  %i.apy = extractelement <8 x i16> %i.app, i64 4
  store i16 %i.apy, ptr %i.amt, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.apz = extractelement <8 x i16> %i.app, i64 5
  store i16 %i.apz, ptr %i.amu, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aqa = extractelement <8 x i16> %i.app, i64 6
  store i16 %i.aqa, ptr %i.amv, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aqb = extractelement <8 x i16> %i.app, i64 7
  store i16 %i.aqb, ptr %i.amw, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aqc = getelementptr i8, ptr %i.sq, i64 30
  %i.aqd = getelementptr i8, ptr %i.sr, i64 62
  %i.aqe = getelementptr i8, ptr %i.st, i64 94
  %i.aqf = getelementptr i8, ptr %i.sv, i64 126
  %i.aqg = getelementptr i8, ptr %i.sx, i64 158   ; 2 uses
  %i.aqh = getelementptr i8, ptr %i.sz, i64 190   ; 2 uses
  %i.aqi = getelementptr i8, ptr %i.tb, i64 222   ; 2 uses
  %i.aqj = getelementptr i8, ptr %i.td, i64 254   ; 2 uses
  %i.aqk = load i16, ptr %i.apq, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aql = load i16, ptr %i.apr, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aqm = load i16, ptr %i.aps, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aqn = load i16, ptr %i.apt, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aqo = load i16, ptr %i.apu, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aqp = load i16, ptr %i.apv, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aqq = load i16, ptr %i.apw, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aqr = load i16, ptr %i.apx, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aqs = insertelement <8 x i16> poison, i16 %i.aqk, i64 0
  %i.aqt = insertelement <8 x i16> %i.aqs, i16 %i.aql, i64 1
  %i.aqu = insertelement <8 x i16> %i.aqt, i16 %i.aqm, i64 2
  %i.aqv = insertelement <8 x i16> %i.aqu, i16 %i.aqn, i64 3
  %i.aqw = insertelement <8 x i16> %i.aqv, i16 %i.aqo, i64 4
  %i.aqx = insertelement <8 x i16> %i.aqw, i16 %i.aqp, i64 5
  %i.aqy = insertelement <8 x i16> %i.aqx, i16 %i.aqq, i64 6
  %i.aqz = insertelement <8 x i16> %i.aqy, i16 %i.aqr, i64 7 ; 2 uses
  %i.ara = load i16, ptr %i.aqc, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.arb = load i16, ptr %i.aqd, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.arc = load i16, ptr %i.aqe, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.ard = load i16, ptr %i.aqf, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.are = load i16, ptr %i.aqg, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.arf = load i16, ptr %i.aqh, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.arg = load i16, ptr %i.aqi, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.arh = load i16, ptr %i.aqj, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.ari = insertelement <8 x i16> poison, i16 %i.ara, i64 0
  %i.arj = insertelement <8 x i16> %i.ari, i16 %i.arb, i64 1
  %i.ark = insertelement <8 x i16> %i.arj, i16 %i.arc, i64 2
  %i.arl = insertelement <8 x i16> %i.ark, i16 %i.ard, i64 3
  %i.arm = insertelement <8 x i16> %i.arl, i16 %i.are, i64 4
  %i.arn = insertelement <8 x i16> %i.arm, i16 %i.arf, i64 5
  %i.aro = insertelement <8 x i16> %i.arn, i16 %i.arg, i64 6
  %i.arp = insertelement <8 x i16> %i.aro, i16 %i.arh, i64 7 ; 2 uses
  %i.arq = zext <8 x i16> %i.aqz to <8 x i32>
  %i.arr = zext <8 x i16> %i.arp to <8 x i32>
  %i.ars = add nuw nsw <8 x i32> %i.arq, splat (i32 3329)
  %i.art = sub nsw <8 x i32> %i.ars, %i.arr
  %i.aru = mul <8 x i32> %i.art, %i.to            ; 2 uses
  %i.arv = zext <8 x i32> %i.aru to <8 x i64>
  %i.arw = mul nuw nsw <8 x i64> %i.arv, splat (i64 5039)
  %i.arx = lshr <8 x i64> %i.arw, splat (i64 24)
  %i.ary = trunc nuw nsw <8 x i64> %i.arx to <8 x i32>
  %i.arz = mul <8 x i32> %i.ary, splat (i32 62207)
  %i.asa = add <8 x i32> %i.arz, %i.aru
  %i.asb = trunc <8 x i32> %i.asa to <8 x i16>    ; 2 uses
  %i.asc = add <8 x i16> %i.asb, splat (i16 -3329) ; 2 uses
  %i.asd = icmp slt <8 x i16> %i.asc, zeroinitializer
  %i.ase = select <8 x i1> %i.asd, <8 x i16> %i.asb, <8 x i16> zeroinitializer
  %i.asf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.asc, <8 x i16> zeroinitializer)
  %i.asg = or <8 x i16> %i.ase, %i.asf            ; 8 uses
  %i.ash = shufflevector <8 x i16> %i.ajd, <8 x i16> %i.ame, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.asi = shufflevector <8 x i16> %i.apf, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.asj = shufflevector <4 x i16> %i.ash, <4 x i16> %i.asi, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ask = shufflevector <8 x i16> %i.asg, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.asl = shufflevector <4 x i16> %i.asj, <4 x i16> %i.ask, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.asl, ptr %i.agz, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.asm = shufflevector <8 x i16> %i.ajd, <8 x i16> %i.ame, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.asn = shufflevector <8 x i16> %i.apf, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aso = shufflevector <4 x i16> %i.asm, <4 x i16> %i.asn, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.asp = shufflevector <8 x i16> %i.asg, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.asq = shufflevector <4 x i16> %i.aso, <4 x i16> %i.asp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.asq, ptr %i.aha, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.asr = shufflevector <8 x i16> %i.ajd, <8 x i16> %i.ame, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %i.ass = shufflevector <8 x i16> %i.apf, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.ast = shufflevector <4 x i16> %i.asr, <4 x i16> %i.ass, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.asu = shufflevector <8 x i16> %i.asg, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.asv = shufflevector <4 x i16> %i.ast, <4 x i16> %i.asu, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.asv, ptr %i.ahb, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.asw = shufflevector <8 x i16> %i.ajd, <8 x i16> %i.ame, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.asx = shufflevector <8 x i16> %i.apf, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.asy = shufflevector <4 x i16> %i.asw, <4 x i16> %i.asx, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.asz = shufflevector <8 x i16> %i.asg, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.ata = shufflevector <4 x i16> %i.asy, <4 x i16> %i.asz, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.ata, ptr %i.ahc, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.atb = extractelement <8 x i16> %i.asg, i64 4
  store i16 %i.atb, ptr %i.aqg, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.atc = extractelement <8 x i16> %i.asg, i64 5
  store i16 %i.atc, ptr %i.aqh, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.atd = extractelement <8 x i16> %i.asg, i64 6
  store i16 %i.atd, ptr %i.aqi, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.ate = extractelement <8 x i16> %i.asg, i64 7
  store i16 %i.ate, ptr %i.aqj, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.atf = add <8 x i16> %i.arp, %i.aqz           ; 2 uses
  %i.atg = add <8 x i16> %i.atf, splat (i16 -3329) ; 2 uses
  %i.ath = icmp slt <8 x i16> %i.atg, zeroinitializer
  %i.ati = select <8 x i1> %i.ath, <8 x i16> %i.atf, <8 x i16> zeroinitializer
  %i.atj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.atg, <8 x i16> zeroinitializer)
  %i.atk = or <8 x i16> %i.ati, %i.atj            ; 8 uses
  %i.atl = shufflevector <8 x i16> %i.ajn, <8 x i16> %i.amo, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.atm = shufflevector <8 x i16> %i.app, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.atn = shufflevector <4 x i16> %i.atl, <4 x i16> %i.atm, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ato = shufflevector <8 x i16> %i.atk, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.atp = shufflevector <4 x i16> %i.atn, <4 x i16> %i.ato, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.atp, ptr %i.aft, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.atq = shufflevector <8 x i16> %i.ajn, <8 x i16> %i.amo, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.atr = shufflevector <8 x i16> %i.app, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ats = shufflevector <4 x i16> %i.atq, <4 x i16> %i.atr, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.att = shufflevector <8 x i16> %i.atk, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.atu = shufflevector <4 x i16> %i.ats, <4 x i16> %i.att, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.atu, ptr %i.afu, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.atv = shufflevector <8 x i16> %i.ajn, <8 x i16> %i.amo, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %i.atw = shufflevector <8 x i16> %i.app, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.atx = shufflevector <4 x i16> %i.atv, <4 x i16> %i.atw, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aty = shufflevector <8 x i16> %i.atk, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.atz = shufflevector <4 x i16> %i.atx, <4 x i16> %i.aty, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.atz, ptr %i.afv, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aua = shufflevector <8 x i16> %i.ajn, <8 x i16> %i.amo, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.aub = shufflevector <8 x i16> %i.app, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.auc = shufflevector <4 x i16> %i.aua, <4 x i16> %i.aub, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.aud = shufflevector <8 x i16> %i.atk, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.aue = shufflevector <4 x i16> %i.auc, <4 x i16> %i.aud, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.aue, ptr %i.afw, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.auf = extractelement <8 x i16> %i.atk, i64 4
  store i16 %i.auf, ptr %i.apu, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aug = extractelement <8 x i16> %i.atk, i64 5
  store i16 %i.aug, ptr %i.apv, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.auh = extractelement <8 x i16> %i.atk, i64 6
  store i16 %i.auh, ptr %i.apw, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %i.aui = extractelement <8 x i16> %i.atk, i64 7
  store i16 %i.aui, ptr %i.apx, align 2, !tbaa !38, !alias.scope !204, !noalias !201
  %index.next78 = add nuw i64 %index75, 8         ; 2 uses
  %i.auj = icmp eq i64 %index.next78, 16
  br i1 %i.auj, label %.preheader42.preheader, label %vector.body74, !llvm.loop !206

scalar.ph72:                                      ; preds = %vector.memcheck66, %scalar.ph72
  %.021.idx.2 = phi i64 [ %.023.add.2.7, %scalar.ph72 ], [ 0, %vector.memcheck66 ] ; 4 uses
  %.1.2 = phi ptr [ %i.aul, %scalar.ph72 ], [ %.lcssa48, %vector.memcheck66 ]
  %.021.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.021.idx.2 ; 2 uses
  %i.auk = getelementptr i8, ptr %0, i64 %.021.idx.2
  %.ptr26.2 = getelementptr i8, ptr %i.auk, i64 16 ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %.1.2, i64 2 ; 3 uses
  %i.aum = load i16, ptr %i.aul, align 2, !tbaa !38
  %i.aun = zext i16 %i.aum to i32
  %.023.add.2.7 = add nuw nsw i64 %.021.idx.2, 32
  %i.auo = load <8 x i16>, ptr %.021.ptr.2, align 2, !tbaa !38 ; 2 uses
  %i.aup = load <8 x i16>, ptr %.ptr26.2, align 2, !tbaa !38 ; 2 uses
  %i.auq = zext <8 x i16> %i.auo to <8 x i32>
  %i.aur = zext <8 x i16> %i.aup to <8 x i32>
  %i.aus = add nuw nsw <8 x i32> %i.auq, splat (i32 3329)
  %i.aut = sub nsw <8 x i32> %i.aus, %i.aur
  %i.auu = insertelement <8 x i32> poison, i32 %i.aun, i64 0
  %i.auv = shufflevector <8 x i32> %i.auu, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.auw = mul <8 x i32> %i.aut, %i.auv           ; 2 uses
  %i.aux = zext <8 x i32> %i.auw to <8 x i64>
  %i.auy = mul nuw nsw <8 x i64> %i.aux, splat (i64 5039)
  %i.auz = lshr <8 x i64> %i.auy, splat (i64 24)
  %i.ava = trunc nuw nsw <8 x i64> %i.auz to <8 x i32>
  %i.avb = mul <8 x i32> %i.ava, splat (i32 62207)
  %i.avc = add <8 x i32> %i.avb, %i.auw
  %i.avd = trunc <8 x i32> %i.avc to <8 x i16>    ; 2 uses
  %i.ave = add <8 x i16> %i.avd, splat (i16 -3329) ; 2 uses
  %i.avf = icmp slt <8 x i16> %i.ave, zeroinitializer
  %i.avg = select <8 x i1> %i.avf, <8 x i16> %i.avd, <8 x i16> zeroinitializer
  %i.avh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ave, <8 x i16> zeroinitializer)
  %i.avi = or <8 x i16> %i.avg, %i.avh
  store <8 x i16> %i.avi, ptr %.ptr26.2, align 2, !tbaa !38
  %i.avj = add <8 x i16> %i.aup, %i.auo           ; 2 uses
  %i.avk = add <8 x i16> %i.avj, splat (i16 -3329) ; 2 uses
  %i.avl = icmp slt <8 x i16> %i.avk, zeroinitializer
  %i.avm = select <8 x i1> %i.avl, <8 x i16> %i.avj, <8 x i16> zeroinitializer
  %i.avn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.avk, <8 x i16> zeroinitializer)
  %i.avo = or <8 x i16> %i.avm, %i.avn
  store <8 x i16> %i.avo, ptr %.021.ptr.2, align 2, !tbaa !38
  %i.avp = icmp samesign ult i64 %.021.idx.2, 480
  br i1 %i.avp, label %scalar.ph72, label %.preheader42.preheader, !llvm.loop !207

.preheader42.preheader:                           ; preds = %vector.body74, %scalar.ph72
  %.1.3.ph = phi ptr [ %i.aul, %scalar.ph72 ], [ %i.sn, %vector.body74 ]
  %i.avq = ptrtoaddr ptr %0 to i64                ; 8 uses
  br label %.preheader42

.preheader42:                                     ; preds = %.preheader42.preheader, %.loopexit150
  %.021.idx.3 = phi i64 [ %.023.add.3.lcssa, %.loopexit150 ], [ 0, %.preheader42.preheader ] ; 4 uses
  %.1.3 = phi ptr [ %i.avr, %.loopexit150 ], [ %.1.3.ph, %.preheader42.preheader ]
  %.021.ptr.3 = getelementptr inbounds i8, ptr %0, i64 %.021.idx.3 ; 3 uses
  %.021.add.3 = add nsw i64 %.021.idx.3, 32       ; 4 uses
  %.ptr26.3 = getelementptr inbounds i8, ptr %0, i64 %.021.add.3
  %i.avr = getelementptr inbounds nuw i8, ptr %.1.3, i64 2 ; 3 uses
  %i.avs = load i16, ptr %i.avr, align 2, !tbaa !38
  %i.avt = zext i16 %i.avs to i32                 ; 2 uses
  %i.avu = add i64 %.021.idx.3, %i.avq            ; 2 uses
  %i.avv = add i64 %i.avu, 32
  %i.avw = add i64 %i.avu, 2
  %i.avx = tail call i64 @llvm.umax.i64(i64 %i.avv, i64 %i.avw)
  %1 = add i64 %.021.idx.3, %i.avq
  %2 = xor i64 %1, -1
  %3 = add i64 %i.avx, %2                         ; 2 uses
  %i.avy = lshr i64 %3, 1
  %i.avz = add nuw i64 %i.avy, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 14
  br i1 %min.iters.check, label %scalar.ph80.preheader, label %vector.ph81

vector.ph81:                                      ; preds = %.preheader42
  %n.vec = and i64 %i.avz, -8                     ; 3 uses
  %i.awa = shl i64 %n.vec, 1                      ; 2 uses
  %i.awb = add i64 %.021.add.3, %i.awa            ; 3 uses
  %i.awc = getelementptr i8, ptr %.021.ptr.3, i64 %i.awa
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.avt, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.awd = getelementptr i8, ptr %0, i64 %.021.add.3
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph81
  %index83 = phi i64 [ 0, %vector.ph81 ], [ %index.next87, %vector.body82 ] ; 2 uses
  %i.awe = shl i64 %index83, 1                    ; 2 uses
  %next.gep84 = getelementptr i8, ptr %.021.ptr.3, i64 %i.awe ; 2 uses
  %i.awf = getelementptr i8, ptr %i.awd, i64 %i.awe ; 2 uses
  %wide.load85 = load <8 x i16>, ptr %next.gep84, align 2, !tbaa !38 ; 2 uses
  %wide.load86 = load <8 x i16>, ptr %i.awf, align 2, !tbaa !38 ; 2 uses
  %i.awg = zext <8 x i16> %wide.load85 to <8 x i32>
  %i.awh = zext <8 x i16> %wide.load86 to <8 x i32>
  %i.awi = add nuw nsw <8 x i32> %i.awg, splat (i32 3329)
  %i.awj = sub nsw <8 x i32> %i.awi, %i.awh
  %i.awk = mul <8 x i32> %i.awj, %broadcast.splat ; 2 uses
  %i.awl = zext <8 x i32> %i.awk to <8 x i64>
  %i.awm = mul nuw nsw <8 x i64> %i.awl, splat (i64 5039)
  %i.awn = lshr <8 x i64> %i.awm, splat (i64 24)
  %i.awo = trunc nuw nsw <8 x i64> %i.awn to <8 x i32>
  %i.awp = mul <8 x i32> %i.awo, splat (i32 62207)
  %i.awq = add <8 x i32> %i.awp, %i.awk
  %i.awr = trunc <8 x i32> %i.awq to <8 x i16>    ; 2 uses
  %i.aws = add <8 x i16> %i.awr, splat (i16 -3329) ; 2 uses
  %i.awt = icmp slt <8 x i16> %i.aws, zeroinitializer
  %i.awu = select <8 x i1> %i.awt, <8 x i16> %i.awr, <8 x i16> zeroinitializer
  %i.awv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aws, <8 x i16> zeroinitializer)
  %i.aww = or <8 x i16> %i.awu, %i.awv
  store <8 x i16> %i.aww, ptr %i.awf, align 2, !tbaa !38
  %i.awx = add <8 x i16> %wide.load86, %wide.load85 ; 2 uses
  %i.awy = add <8 x i16> %i.awx, splat (i16 -3329) ; 2 uses
  %i.awz = icmp slt <8 x i16> %i.awy, zeroinitializer
  %i.axa = select <8 x i1> %i.awz, <8 x i16> %i.awx, <8 x i16> zeroinitializer
  %i.axb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.awy, <8 x i16> zeroinitializer)
  %i.axc = or <8 x i16> %i.axa, %i.axb
  store <8 x i16> %i.axc, ptr %next.gep84, align 2, !tbaa !38
  %index.next87 = add nuw i64 %index83, 8         ; 2 uses
  %i.axd = icmp eq i64 %index.next87, %n.vec
  br i1 %i.axd, label %middle.block88, label %vector.body82, !llvm.loop !208

middle.block88:                                   ; preds = %vector.body82
  %ind.escape = add i64 %i.awb, -2
  %cmp.n = icmp eq i64 %i.avz, %n.vec
  br i1 %cmp.n, label %.loopexit150, label %scalar.ph80.preheader

scalar.ph80.preheader:                            ; preds = %.preheader42, %middle.block88
  %.023.idx.3.ph = phi i64 [ %.021.add.3, %.preheader42 ], [ %i.awb, %middle.block88 ]
  %.122.3.ph = phi ptr [ %.021.ptr.3, %.preheader42 ], [ %i.awc, %middle.block88 ]
  br label %scalar.ph80

scalar.ph80:                                      ; preds = %scalar.ph80.preheader, %scalar.ph80
  %.023.idx.3 = phi i64 [ %.023.add.3, %scalar.ph80 ], [ %.023.idx.3.ph, %scalar.ph80.preheader ] ; 3 uses
  %.122.3 = phi ptr [ %i.aya, %scalar.ph80 ], [ %.122.3.ph, %scalar.ph80.preheader ] ; 3 uses
  %.023.ptr.3 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.3 ; 2 uses
  %i.axe = load i16, ptr %.122.3, align 2, !tbaa !38 ; 2 uses
  %i.axf = load i16, ptr %.023.ptr.3, align 2, !tbaa !38 ; 2 uses
  %i.axg = zext i16 %i.axe to i32
  %i.axh = zext i16 %i.axf to i32
  %i.axi = add nuw nsw i32 %i.axg, 3329
  %i.axj = sub nsw i32 %i.axi, %i.axh
  %i.axk = mul i32 %i.axj, %i.avt                 ; 2 uses
  %i.axl = zext i32 %i.axk to i64
  %i.axm = mul nuw nsw i64 %i.axl, 5039
  %i.axn = lshr i64 %i.axm, 24
  %i.axo = trunc nuw nsw i64 %i.axn to i32
  %.neg.i.3 = mul i32 %i.axo, 62207
  %i.axp = add i32 %.neg.i.3, %i.axk
  %i.axq = trunc i32 %i.axp to i16                ; 2 uses
  %i.axr = add i16 %i.axq, -3329                  ; 2 uses
  %isneg.i.i.3 = icmp slt i16 %i.axr, 0
  %i.axs = select i1 %isneg.i.i.3, i16 %i.axq, i16 0
  %i.axt = tail call i16 @llvm.smax.i16(i16 %i.axr, i16 0)
  %i.axu = or i16 %i.axs, %i.axt
  %.023.add.3 = add nsw i64 %.023.idx.3, 2        ; 2 uses
  store i16 %i.axu, ptr %.023.ptr.3, align 2, !tbaa !38
  %i.axv = add i16 %i.axf, %i.axe                 ; 2 uses
  %i.axw = add i16 %i.axv, -3329                  ; 2 uses
  %isneg.i.3 = icmp slt i16 %i.axw, 0
  %i.axx = select i1 %isneg.i.3, i16 %i.axv, i16 0
  %i.axy = tail call i16 @llvm.smax.i16(i16 %i.axw, i16 0)
  %i.axz = or i16 %i.axx, %i.axy
  %i.aya = getelementptr inbounds nuw i8, ptr %.122.3, i64 2 ; 2 uses
  store i16 %i.axz, ptr %.122.3, align 2, !tbaa !38
  %i.ayb = icmp ult ptr %i.aya, %.ptr26.3
  br i1 %i.ayb, label %scalar.ph80, label %.loopexit150, !llvm.loop !209

.loopexit150:                                     ; preds = %scalar.ph80, %middle.block88
  %.023.idx.3.lcssa = phi i64 [ %ind.escape, %middle.block88 ], [ %.023.idx.3, %scalar.ph80 ]
  %.023.add.3.lcssa = phi i64 [ %i.awb, %middle.block88 ], [ %.023.add.3, %scalar.ph80 ]
  %i.ayc = icmp slt i64 %.023.idx.3.lcssa, 510
  br i1 %i.ayc, label %.preheader42, label %.preheader41, !llvm.loop !210

.preheader41:                                     ; preds = %.loopexit150, %.loopexit149
  %.021.idx.4 = phi i64 [ %.023.add.4.lcssa, %.loopexit149 ], [ 0, %.loopexit150 ] ; 4 uses
  %.1.4 = phi ptr [ %i.ayd, %.loopexit149 ], [ %i.avr, %.loopexit150 ]
  %.021.ptr.4 = getelementptr inbounds i8, ptr %0, i64 %.021.idx.4 ; 3 uses
  %.021.add.4 = add nsw i64 %.021.idx.4, 64       ; 4 uses
  %.ptr26.4 = getelementptr inbounds i8, ptr %0, i64 %.021.add.4
  %i.ayd = getelementptr inbounds nuw i8, ptr %.1.4, i64 2 ; 3 uses
  %i.aye = load i16, ptr %i.ayd, align 2, !tbaa !38
  %i.ayf = zext i16 %i.aye to i32                 ; 2 uses
  %i.ayg = add i64 %.021.idx.4, %i.avq            ; 2 uses
  %i.ayh = add i64 %i.ayg, 64
  %i.ayi = add i64 %i.ayg, 2
  %i.ayj = tail call i64 @llvm.umax.i64(i64 %i.ayh, i64 %i.ayi)
  %4 = add i64 %.021.idx.4, %i.avq
  %5 = xor i64 %4, -1
  %6 = add i64 %i.ayj, %5                         ; 2 uses
  %i.ayk = lshr i64 %6, 1
  %i.ayl = add nuw i64 %i.ayk, 1                  ; 2 uses
  %min.iters.check91 = icmp ult i64 %6, 14
  br i1 %min.iters.check91, label %scalar.ph90.preheader, label %vector.ph92

vector.ph92:                                      ; preds = %.preheader41
  %n.vec93 = and i64 %i.ayl, -8                   ; 3 uses
  %i.aym = shl i64 %n.vec93, 1                    ; 2 uses
  %i.ayn = add i64 %.021.add.4, %i.aym            ; 3 uses
  %i.ayo = getelementptr i8, ptr %.021.ptr.4, i64 %i.aym
  %broadcast.splatinsert94 = insertelement <8 x i32> poison, i32 %i.ayf, i64 0
  %broadcast.splat95 = shufflevector <8 x i32> %broadcast.splatinsert94, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ayp = getelementptr i8, ptr %0, i64 %.021.add.4
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph92
  %index97 = phi i64 [ 0, %vector.ph92 ], [ %index.next101, %vector.body96 ] ; 2 uses
  %i.ayq = shl i64 %index97, 1                    ; 2 uses
  %next.gep98 = getelementptr i8, ptr %.021.ptr.4, i64 %i.ayq ; 2 uses
  %i.ayr = getelementptr i8, ptr %i.ayp, i64 %i.ayq ; 2 uses
  %wide.load99 = load <8 x i16>, ptr %next.gep98, align 2, !tbaa !38 ; 2 uses
  %wide.load100 = load <8 x i16>, ptr %i.ayr, align 2, !tbaa !38 ; 2 uses
  %i.ays = zext <8 x i16> %wide.load99 to <8 x i32>
  %i.ayt = zext <8 x i16> %wide.load100 to <8 x i32>
  %i.ayu = add nuw nsw <8 x i32> %i.ays, splat (i32 3329)
  %i.ayv = sub nsw <8 x i32> %i.ayu, %i.ayt
  %i.ayw = mul <8 x i32> %i.ayv, %broadcast.splat95 ; 2 uses
  %i.ayx = zext <8 x i32> %i.ayw to <8 x i64>
  %i.ayy = mul nuw nsw <8 x i64> %i.ayx, splat (i64 5039)
  %i.ayz = lshr <8 x i64> %i.ayy, splat (i64 24)
  %i.aza = trunc nuw nsw <8 x i64> %i.ayz to <8 x i32>
  %i.azb = mul <8 x i32> %i.aza, splat (i32 62207)
  %i.azc = add <8 x i32> %i.azb, %i.ayw
  %i.azd = trunc <8 x i32> %i.azc to <8 x i16>    ; 2 uses
  %i.aze = add <8 x i16> %i.azd, splat (i16 -3329) ; 2 uses
  %i.azf = icmp slt <8 x i16> %i.aze, zeroinitializer
  %i.azg = select <8 x i1> %i.azf, <8 x i16> %i.azd, <8 x i16> zeroinitializer
  %i.azh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aze, <8 x i16> zeroinitializer)
  %i.azi = or <8 x i16> %i.azg, %i.azh
  store <8 x i16> %i.azi, ptr %i.ayr, align 2, !tbaa !38
  %i.azj = add <8 x i16> %wide.load100, %wide.load99 ; 2 uses
  %i.azk = add <8 x i16> %i.azj, splat (i16 -3329) ; 2 uses
  %i.azl = icmp slt <8 x i16> %i.azk, zeroinitializer
  %i.azm = select <8 x i1> %i.azl, <8 x i16> %i.azj, <8 x i16> zeroinitializer
  %i.azn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.azk, <8 x i16> zeroinitializer)
  %i.azo = or <8 x i16> %i.azm, %i.azn
  store <8 x i16> %i.azo, ptr %next.gep98, align 2, !tbaa !38
  %index.next101 = add nuw i64 %index97, 8        ; 2 uses
  %i.azp = icmp eq i64 %index.next101, %n.vec93
  br i1 %i.azp, label %middle.block102, label %vector.body96, !llvm.loop !211

middle.block102:                                  ; preds = %vector.body96
  %ind.escape103 = add i64 %i.ayn, -2
  %cmp.n104 = icmp eq i64 %i.ayl, %n.vec93
  br i1 %cmp.n104, label %.loopexit149, label %scalar.ph90.preheader

scalar.ph90.preheader:                            ; preds = %.preheader41, %middle.block102
  %.023.idx.4.ph = phi i64 [ %.021.add.4, %.preheader41 ], [ %i.ayn, %middle.block102 ]
  %.122.4.ph = phi ptr [ %.021.ptr.4, %.preheader41 ], [ %i.ayo, %middle.block102 ]
  br label %scalar.ph90

scalar.ph90:                                      ; preds = %scalar.ph90.preheader, %scalar.ph90
  %.023.idx.4 = phi i64 [ %.023.add.4, %scalar.ph90 ], [ %.023.idx.4.ph, %scalar.ph90.preheader ] ; 3 uses
  %.122.4 = phi ptr [ %i.bam, %scalar.ph90 ], [ %.122.4.ph, %scalar.ph90.preheader ] ; 3 uses
  %.023.ptr.4 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.4 ; 2 uses
  %i.azq = load i16, ptr %.122.4, align 2, !tbaa !38 ; 2 uses
  %i.azr = load i16, ptr %.023.ptr.4, align 2, !tbaa !38 ; 2 uses
  %i.azs = zext i16 %i.azq to i32
  %i.azt = zext i16 %i.azr to i32
  %i.azu = add nuw nsw i32 %i.azs, 3329
  %i.azv = sub nsw i32 %i.azu, %i.azt
  %i.azw = mul i32 %i.azv, %i.ayf                 ; 2 uses
  %i.azx = zext i32 %i.azw to i64
  %i.azy = mul nuw nsw i64 %i.azx, 5039
  %i.azz = lshr i64 %i.azy, 24
  %i.baa = trunc nuw nsw i64 %i.azz to i32
  %.neg.i.4 = mul i32 %i.baa, 62207
  %i.bab = add i32 %.neg.i.4, %i.azw
  %i.bac = trunc i32 %i.bab to i16                ; 2 uses
  %i.bad = add i16 %i.bac, -3329                  ; 2 uses
  %isneg.i.i.4 = icmp slt i16 %i.bad, 0
  %i.bae = select i1 %isneg.i.i.4, i16 %i.bac, i16 0
  %i.baf = tail call i16 @llvm.smax.i16(i16 %i.bad, i16 0)
  %i.bag = or i16 %i.bae, %i.baf
  %.023.add.4 = add nsw i64 %.023.idx.4, 2        ; 2 uses
  store i16 %i.bag, ptr %.023.ptr.4, align 2, !tbaa !38
  %i.bah = add i16 %i.azr, %i.azq                 ; 2 uses
  %i.bai = add i16 %i.bah, -3329                  ; 2 uses
  %isneg.i.4 = icmp slt i16 %i.bai, 0
  %i.baj = select i1 %isneg.i.4, i16 %i.bah, i16 0
  %i.bak = tail call i16 @llvm.smax.i16(i16 %i.bai, i16 0)
  %i.bal = or i16 %i.baj, %i.bak
  %i.bam = getelementptr inbounds nuw i8, ptr %.122.4, i64 2 ; 2 uses
  store i16 %i.bal, ptr %.122.4, align 2, !tbaa !38
  %i.ban = icmp ult ptr %i.bam, %.ptr26.4
  br i1 %i.ban, label %scalar.ph90, label %.loopexit149, !llvm.loop !212

.loopexit149:                                     ; preds = %scalar.ph90, %middle.block102
  %.023.idx.4.lcssa = phi i64 [ %ind.escape103, %middle.block102 ], [ %.023.idx.4, %scalar.ph90 ]
  %.023.add.4.lcssa = phi i64 [ %i.ayn, %middle.block102 ], [ %.023.add.4, %scalar.ph90 ]
  %i.bao = icmp slt i64 %.023.idx.4.lcssa, 510
  br i1 %i.bao, label %.preheader41, label %.preheader40, !llvm.loop !210

.preheader40:                                     ; preds = %.loopexit149, %.loopexit148
  %.021.idx.5 = phi i64 [ %.023.add.5.lcssa, %.loopexit148 ], [ 0, %.loopexit149 ] ; 4 uses
  %.1.5 = phi ptr [ %i.bap, %.loopexit148 ], [ %i.ayd, %.loopexit149 ]
  %.021.ptr.5 = getelementptr inbounds i8, ptr %0, i64 %.021.idx.5 ; 3 uses
  %.021.add.5 = add nsw i64 %.021.idx.5, 128      ; 4 uses
  %.ptr26.5 = getelementptr inbounds i8, ptr %0, i64 %.021.add.5
  %i.bap = getelementptr inbounds nuw i8, ptr %.1.5, i64 2 ; 3 uses
  %i.baq = load i16, ptr %i.bap, align 2, !tbaa !38
  %i.bar = zext i16 %i.baq to i32                 ; 2 uses
  %i.bas = add i64 %.021.idx.5, %i.avq            ; 2 uses
  %i.bat = add i64 %i.bas, 128
  %i.bau = add i64 %i.bas, 2
  %i.bav = tail call i64 @llvm.umax.i64(i64 %i.bat, i64 %i.bau)
  %7 = add i64 %.021.idx.5, %i.avq
  %8 = xor i64 %7, -1
  %9 = add i64 %i.bav, %8                         ; 2 uses
  %i.baw = lshr i64 %9, 1
  %i.bax = add nuw i64 %i.baw, 1                  ; 2 uses
  %min.iters.check108 = icmp ult i64 %9, 14
  br i1 %min.iters.check108, label %scalar.ph107.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %.preheader40
  %n.vec110 = and i64 %i.bax, -8                  ; 3 uses
  %i.bay = shl i64 %n.vec110, 1                   ; 2 uses
  %i.baz = add i64 %.021.add.5, %i.bay            ; 3 uses
  %i.bba = getelementptr i8, ptr %.021.ptr.5, i64 %i.bay
  %broadcast.splatinsert111 = insertelement <8 x i32> poison, i32 %i.bar, i64 0
  %broadcast.splat112 = shufflevector <8 x i32> %broadcast.splatinsert111, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bbb = getelementptr i8, ptr %0, i64 %.021.add.5
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph109
  %index114 = phi i64 [ 0, %vector.ph109 ], [ %index.next118, %vector.body113 ] ; 2 uses
  %i.bbc = shl i64 %index114, 1                   ; 2 uses
  %next.gep115 = getelementptr i8, ptr %.021.ptr.5, i64 %i.bbc ; 2 uses
  %i.bbd = getelementptr i8, ptr %i.bbb, i64 %i.bbc ; 2 uses
  %wide.load116 = load <8 x i16>, ptr %next.gep115, align 2, !tbaa !38 ; 2 uses
  %wide.load117 = load <8 x i16>, ptr %i.bbd, align 2, !tbaa !38 ; 2 uses
  %i.bbe = zext <8 x i16> %wide.load116 to <8 x i32>
  %i.bbf = zext <8 x i16> %wide.load117 to <8 x i32>
  %i.bbg = add nuw nsw <8 x i32> %i.bbe, splat (i32 3329)
  %i.bbh = sub nsw <8 x i32> %i.bbg, %i.bbf
  %i.bbi = mul <8 x i32> %i.bbh, %broadcast.splat112 ; 2 uses
  %i.bbj = zext <8 x i32> %i.bbi to <8 x i64>
  %i.bbk = mul nuw nsw <8 x i64> %i.bbj, splat (i64 5039)
  %i.bbl = lshr <8 x i64> %i.bbk, splat (i64 24)
  %i.bbm = trunc nuw nsw <8 x i64> %i.bbl to <8 x i32>
  %i.bbn = mul <8 x i32> %i.bbm, splat (i32 62207)
  %i.bbo = add <8 x i32> %i.bbn, %i.bbi
  %i.bbp = trunc <8 x i32> %i.bbo to <8 x i16>    ; 2 uses
  %i.bbq = add <8 x i16> %i.bbp, splat (i16 -3329) ; 2 uses
  %i.bbr = icmp slt <8 x i16> %i.bbq, zeroinitializer
  %i.bbs = select <8 x i1> %i.bbr, <8 x i16> %i.bbp, <8 x i16> zeroinitializer
  %i.bbt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bbq, <8 x i16> zeroinitializer)
  %i.bbu = or <8 x i16> %i.bbs, %i.bbt
  store <8 x i16> %i.bbu, ptr %i.bbd, align 2, !tbaa !38
  %i.bbv = add <8 x i16> %wide.load117, %wide.load116 ; 2 uses
  %i.bbw = add <8 x i16> %i.bbv, splat (i16 -3329) ; 2 uses
  %i.bbx = icmp slt <8 x i16> %i.bbw, zeroinitializer
  %i.bby = select <8 x i1> %i.bbx, <8 x i16> %i.bbv, <8 x i16> zeroinitializer
  %i.bbz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bbw, <8 x i16> zeroinitializer)
  %i.bca = or <8 x i16> %i.bby, %i.bbz
  store <8 x i16> %i.bca, ptr %next.gep115, align 2, !tbaa !38
  %index.next118 = add nuw i64 %index114, 8       ; 2 uses
  %i.bcb = icmp eq i64 %index.next118, %n.vec110
  br i1 %i.bcb, label %middle.block119, label %vector.body113, !llvm.loop !213

middle.block119:                                  ; preds = %vector.body113
  %ind.escape120 = add i64 %i.baz, -2
  %cmp.n121 = icmp eq i64 %i.bax, %n.vec110
  br i1 %cmp.n121, label %.loopexit148, label %scalar.ph107.preheader

scalar.ph107.preheader:                           ; preds = %.preheader40, %middle.block119
  %.023.idx.5.ph = phi i64 [ %.021.add.5, %.preheader40 ], [ %i.baz, %middle.block119 ]
  %.122.5.ph = phi ptr [ %.021.ptr.5, %.preheader40 ], [ %i.bba, %middle.block119 ]
  br label %scalar.ph107

scalar.ph107:                                     ; preds = %scalar.ph107.preheader, %scalar.ph107
  %.023.idx.5 = phi i64 [ %.023.add.5, %scalar.ph107 ], [ %.023.idx.5.ph, %scalar.ph107.preheader ] ; 3 uses
  %.122.5 = phi ptr [ %i.bcy, %scalar.ph107 ], [ %.122.5.ph, %scalar.ph107.preheader ] ; 3 uses
  %.023.ptr.5 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.5 ; 2 uses
  %i.bcc = load i16, ptr %.122.5, align 2, !tbaa !38 ; 2 uses
  %i.bcd = load i16, ptr %.023.ptr.5, align 2, !tbaa !38 ; 2 uses
  %i.bce = zext i16 %i.bcc to i32
  %i.bcf = zext i16 %i.bcd to i32
  %i.bcg = add nuw nsw i32 %i.bce, 3329
  %i.bch = sub nsw i32 %i.bcg, %i.bcf
  %i.bci = mul i32 %i.bch, %i.bar                 ; 2 uses
  %i.bcj = zext i32 %i.bci to i64
  %i.bck = mul nuw nsw i64 %i.bcj, 5039
  %i.bcl = lshr i64 %i.bck, 24
  %i.bcm = trunc nuw nsw i64 %i.bcl to i32
  %.neg.i.5 = mul i32 %i.bcm, 62207
  %i.bcn = add i32 %.neg.i.5, %i.bci
  %i.bco = trunc i32 %i.bcn to i16                ; 2 uses
  %i.bcp = add i16 %i.bco, -3329                  ; 2 uses
  %isneg.i.i.5 = icmp slt i16 %i.bcp, 0
  %i.bcq = select i1 %isneg.i.i.5, i16 %i.bco, i16 0
  %i.bcr = tail call i16 @llvm.smax.i16(i16 %i.bcp, i16 0)
  %i.bcs = or i16 %i.bcq, %i.bcr
  %.023.add.5 = add nsw i64 %.023.idx.5, 2        ; 2 uses
  store i16 %i.bcs, ptr %.023.ptr.5, align 2, !tbaa !38
  %i.bct = add i16 %i.bcd, %i.bcc                 ; 2 uses
  %i.bcu = add i16 %i.bct, -3329                  ; 2 uses
  %isneg.i.5 = icmp slt i16 %i.bcu, 0
  %i.bcv = select i1 %isneg.i.5, i16 %i.bct, i16 0
  %i.bcw = tail call i16 @llvm.smax.i16(i16 %i.bcu, i16 0)
  %i.bcx = or i16 %i.bcv, %i.bcw
  %i.bcy = getelementptr inbounds nuw i8, ptr %.122.5, i64 2 ; 2 uses
  store i16 %i.bcx, ptr %.122.5, align 2, !tbaa !38
  %i.bcz = icmp ult ptr %i.bcy, %.ptr26.5
  br i1 %i.bcz, label %scalar.ph107, label %.loopexit148, !llvm.loop !214

.loopexit148:                                     ; preds = %scalar.ph107, %middle.block119
  %.023.idx.5.lcssa = phi i64 [ %ind.escape120, %middle.block119 ], [ %.023.idx.5, %scalar.ph107 ]
  %.023.add.5.lcssa = phi i64 [ %i.baz, %middle.block119 ], [ %.023.add.5, %scalar.ph107 ]
  %i.bda = icmp slt i64 %.023.idx.5.lcssa, 510
  br i1 %i.bda, label %.preheader40, label %.preheader39, !llvm.loop !210

.preheader39:                                     ; preds = %.loopexit148, %.loopexit
  %.021.idx.6 = phi i64 [ %.023.add.6.lcssa, %.loopexit ], [ 0, %.loopexit148 ] ; 4 uses
  %.1.6 = phi ptr [ %i.bdb, %.loopexit ], [ %i.bap, %.loopexit148 ]
  %.021.ptr.6 = getelementptr inbounds i8, ptr %0, i64 %.021.idx.6 ; 3 uses
  %.021.add.6 = add nsw i64 %.021.idx.6, 256      ; 4 uses
  %.ptr26.6 = getelementptr inbounds i8, ptr %0, i64 %.021.add.6
  %i.bdb = getelementptr inbounds nuw i8, ptr %.1.6, i64 2 ; 2 uses
  %i.bdc = load i16, ptr %i.bdb, align 2, !tbaa !38
  %i.bdd = zext i16 %i.bdc to i32                 ; 2 uses
  %i.bde = add i64 %.021.idx.6, %i.avq            ; 2 uses
  %i.bdf = add i64 %i.bde, 256
  %i.bdg = add i64 %i.bde, 2
  %i.bdh = tail call i64 @llvm.umax.i64(i64 %i.bdf, i64 %i.bdg)
  %10 = add i64 %.021.idx.6, %i.avq
  %11 = xor i64 %10, -1
  %12 = add i64 %i.bdh, %11                       ; 2 uses
  %i.bdi = lshr i64 %12, 1
  %i.bdj = add nuw i64 %i.bdi, 1                  ; 2 uses
  %min.iters.check125 = icmp ult i64 %12, 14
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %.preheader39
  %n.vec127 = and i64 %i.bdj, -8                  ; 3 uses
  %i.bdk = shl i64 %n.vec127, 1                   ; 2 uses
  %i.bdl = add i64 %.021.add.6, %i.bdk            ; 3 uses
  %i.bdm = getelementptr i8, ptr %.021.ptr.6, i64 %i.bdk
  %broadcast.splatinsert128 = insertelement <8 x i32> poison, i32 %i.bdd, i64 0
  %broadcast.splat129 = shufflevector <8 x i32> %broadcast.splatinsert128, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bdn = getelementptr i8, ptr %0, i64 %.021.add.6
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph126
  %index131 = phi i64 [ 0, %vector.ph126 ], [ %index.next135, %vector.body130 ] ; 2 uses
  %i.bdo = shl i64 %index131, 1                   ; 2 uses
  %next.gep132 = getelementptr i8, ptr %.021.ptr.6, i64 %i.bdo ; 2 uses
  %i.bdp = getelementptr i8, ptr %i.bdn, i64 %i.bdo ; 2 uses
  %wide.load133 = load <8 x i16>, ptr %next.gep132, align 2, !tbaa !38 ; 2 uses
  %wide.load134 = load <8 x i16>, ptr %i.bdp, align 2, !tbaa !38 ; 2 uses
  %i.bdq = zext <8 x i16> %wide.load133 to <8 x i32>
  %i.bdr = zext <8 x i16> %wide.load134 to <8 x i32>
  %i.bds = add nuw nsw <8 x i32> %i.bdq, splat (i32 3329)
  %i.bdt = sub nsw <8 x i32> %i.bds, %i.bdr
  %i.bdu = mul <8 x i32> %i.bdt, %broadcast.splat129 ; 2 uses
  %i.bdv = zext <8 x i32> %i.bdu to <8 x i64>
  %i.bdw = mul nuw nsw <8 x i64> %i.bdv, splat (i64 5039)
  %i.bdx = lshr <8 x i64> %i.bdw, splat (i64 24)
  %i.bdy = trunc nuw nsw <8 x i64> %i.bdx to <8 x i32>
  %i.bdz = mul <8 x i32> %i.bdy, splat (i32 62207)
  %i.bea = add <8 x i32> %i.bdz, %i.bdu
  %i.beb = trunc <8 x i32> %i.bea to <8 x i16>    ; 2 uses
  %i.bec = add <8 x i16> %i.beb, splat (i16 -3329) ; 2 uses
  %i.bed = icmp slt <8 x i16> %i.bec, zeroinitializer
  %i.bee = select <8 x i1> %i.bed, <8 x i16> %i.beb, <8 x i16> zeroinitializer
  %i.bef = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bec, <8 x i16> zeroinitializer)
  %i.beg = or <8 x i16> %i.bee, %i.bef
  store <8 x i16> %i.beg, ptr %i.bdp, align 2, !tbaa !38
  %i.beh = add <8 x i16> %wide.load134, %wide.load133 ; 2 uses
  %i.bei = add <8 x i16> %i.beh, splat (i16 -3329) ; 2 uses
  %i.bej = icmp slt <8 x i16> %i.bei, zeroinitializer
  %i.bek = select <8 x i1> %i.bej, <8 x i16> %i.beh, <8 x i16> zeroinitializer
  %i.bel = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bei, <8 x i16> zeroinitializer)
  %i.bem = or <8 x i16> %i.bek, %i.bel
  store <8 x i16> %i.bem, ptr %next.gep132, align 2, !tbaa !38
  %index.next135 = add nuw i64 %index131, 8       ; 2 uses
  %i.ben = icmp eq i64 %index.next135, %n.vec127
  br i1 %i.ben, label %middle.block136, label %vector.body130, !llvm.loop !215

middle.block136:                                  ; preds = %vector.body130
  %ind.escape137 = add i64 %i.bdl, -2
  %cmp.n138 = icmp eq i64 %i.bdj, %n.vec127
  br i1 %cmp.n138, label %.loopexit, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %.preheader39, %middle.block136
  %.023.idx.6.ph = phi i64 [ %.021.add.6, %.preheader39 ], [ %i.bdl, %middle.block136 ]
  %.122.6.ph = phi ptr [ %.021.ptr.6, %.preheader39 ], [ %i.bdm, %middle.block136 ]
  br label %scalar.ph124

scalar.ph124:                                     ; preds = %scalar.ph124.preheader, %scalar.ph124
  %.023.idx.6 = phi i64 [ %.023.add.6, %scalar.ph124 ], [ %.023.idx.6.ph, %scalar.ph124.preheader ] ; 3 uses
  %.122.6 = phi ptr [ %i.bfk, %scalar.ph124 ], [ %.122.6.ph, %scalar.ph124.preheader ] ; 3 uses
  %.023.ptr.6 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.6 ; 2 uses
  %i.beo = load i16, ptr %.122.6, align 2, !tbaa !38 ; 2 uses
  %i.bep = load i16, ptr %.023.ptr.6, align 2, !tbaa !38 ; 2 uses
  %i.beq = zext i16 %i.beo to i32
  %i.ber = zext i16 %i.bep to i32
  %i.bes = add nuw nsw i32 %i.beq, 3329
  %i.bet = sub nsw i32 %i.bes, %i.ber
  %i.beu = mul i32 %i.bet, %i.bdd                 ; 2 uses
  %i.bev = zext i32 %i.beu to i64
  %i.bew = mul nuw nsw i64 %i.bev, 5039
  %i.bex = lshr i64 %i.bew, 24
  %i.bey = trunc nuw nsw i64 %i.bex to i32
  %.neg.i.6 = mul i32 %i.bey, 62207
  %i.bez = add i32 %.neg.i.6, %i.beu
  %i.bfa = trunc i32 %i.bez to i16                ; 2 uses
  %i.bfb = add i16 %i.bfa, -3329                  ; 2 uses
  %isneg.i.i.6 = icmp slt i16 %i.bfb, 0
  %i.bfc = select i1 %isneg.i.i.6, i16 %i.bfa, i16 0
  %i.bfd = tail call i16 @llvm.smax.i16(i16 %i.bfb, i16 0)
  %i.bfe = or i16 %i.bfc, %i.bfd
  %.023.add.6 = add nsw i64 %.023.idx.6, 2        ; 2 uses
  store i16 %i.bfe, ptr %.023.ptr.6, align 2, !tbaa !38
  %i.bff = add i16 %i.bep, %i.beo                 ; 2 uses
  %i.bfg = add i16 %i.bff, -3329                  ; 2 uses
  %isneg.i.6 = icmp slt i16 %i.bfg, 0
  %i.bfh = select i1 %isneg.i.6, i16 %i.bff, i16 0
  %i.bfi = tail call i16 @llvm.smax.i16(i16 %i.bfg, i16 0)
  %i.bfj = or i16 %i.bfh, %i.bfi
  %i.bfk = getelementptr inbounds nuw i8, ptr %.122.6, i64 2 ; 2 uses
  store i16 %i.bfj, ptr %.122.6, align 2, !tbaa !38
  %i.bfl = icmp ult ptr %i.bfk, %.ptr26.6
  br i1 %i.bfl, label %scalar.ph124, label %.loopexit, !llvm.loop !216

.loopexit:                                        ; preds = %scalar.ph124, %middle.block136
  %.023.idx.6.lcssa = phi i64 [ %ind.escape137, %middle.block136 ], [ %.023.idx.6, %scalar.ph124 ]
  %.023.add.6.lcssa = phi i64 [ %i.bdl, %middle.block136 ], [ %.023.add.6, %scalar.ph124 ]
  %i.bfm = icmp slt i64 %.023.idx.6.lcssa, 510
  br i1 %i.bfm, label %.preheader39, label %vector.body143, !llvm.loop !210

vector.body143:                                   ; preds = %.loopexit, %vector.body143
  %index144 = phi i64 [ %index.next146, %vector.body143 ], [ 0, %.loopexit ] ; 2 uses
  %i.bfn = shl nuw i64 %index144, 1
  %i.bfo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bfn ; 2 uses
  %wide.load145 = load <8 x i16>, ptr %i.bfo, align 2, !tbaa !38
  %i.bfp = zext <8 x i16> %wide.load145 to <8 x i32>
  %i.bfq = mul nuw nsw <8 x i32> %i.bfp, splat (i32 3303) ; 2 uses
  %i.bfr = zext nneg <8 x i32> %i.bfq to <8 x i64>
  %i.bfs = mul nuw nsw <8 x i64> %i.bfr, splat (i64 5039)
  %i.bft = lshr <8 x i64> %i.bfs, splat (i64 24)
  %i.bfu = trunc nuw nsw <8 x i64> %i.bft to <8 x i32>
  %i.bfv = mul nuw <8 x i32> %i.bfu, splat (i32 62207)
  %i.bfw = add nuw <8 x i32> %i.bfv, %i.bfq
  %i.bfx = trunc <8 x i32> %i.bfw to <8 x i16>    ; 2 uses
  %i.bfy = add <8 x i16> %i.bfx, splat (i16 -3329) ; 2 uses
  %i.bfz = icmp slt <8 x i16> %i.bfy, zeroinitializer
  %i.bga = select <8 x i1> %i.bfz, <8 x i16> %i.bfx, <8 x i16> zeroinitializer
  %i.bgb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bfy, <8 x i16> zeroinitializer)
  %i.bgc = or <8 x i16> %i.bga, %i.bgb
  store <8 x i16> %i.bgc, ptr %i.bfo, align 2, !tbaa !38
  %index.next146 = add nuw i64 %index144, 8       ; 2 uses
  %i.bgd = icmp eq i64 %index.next146, 256
  br i1 %i.bgd, label %scalar_mult_const.exit, label %vector.body143, !llvm.loop !217

scalar_mult_const.exit:                           ; preds = %vector.body143
  ret void
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.smax.v32i16(<32 x i16>, <32 x i16>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !13, i64 176}
!9 = !{!"ossl_ml_kem_key_st", !10, i64 0, !11, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !13, i64 48, !13, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !13, i64 88, !13, i64 96, !5, i64 104, !6, i64 108, !13, i64 176, !13, i64 184}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS15ossl_lib_ctx_st", !10, i64 0}
!12 = !{!"p1 _ZTS9evp_md_st", !10, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"p1 _ZTS21ossl_ml_kem_scalar_st", !10, i64 0}
!15 = !{!9, !13, i64 184}
!16 = !{!9, !10, i64 0}
!17 = !{!18, !19, i64 8}
!18 = !{!"", !13, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88}
!19 = !{!"long", !6, i64 0}
!20 = !{!9, !14, i64 64}
!21 = !{!9, !14, i64 80}
!22 = !{!18, !19, i64 16}
!23 = !{!9, !11, i64 8}
!24 = !{!9, !5, i64 104}
!25 = !{!9, !12, i64 16}
!26 = !{!9, !12, i64 24}
!27 = !{!9, !12, i64 32}
end_hunk_1
