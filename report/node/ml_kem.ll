inline.NumInlined: 100
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cbd_3:bb.a
  %i.dn = zext <8 x i8> %i.by to <8 x i32>        ; 8 uses
  %i.do = and <8 x i32> %i.dn, splat (i32 1)
  %i.dp = shl <8 x i32> %i.dn, splat (i32 30)
  %i.dq = ashr <8 x i32> %i.dp, splat (i32 31)
  %i.dr = sub nsw <8 x i32> %i.dj, %i.dm
  %i.ds = add nsw <8 x i32> %i.dr, %i.dh
  %i.dt = add nsw <8 x i32> %i.ds, %i.dl
  %i.du = sub nsw <8 x i32> %i.dt, %i.do
  %i.dv = add nsw <8 x i32> %i.du, %i.dq          ; 2 uses
  %i.dw = lshr <8 x i32> %i.dn, splat (i32 2)
  %i.dx = and <8 x i32> %i.dw, splat (i32 1)
  %i.dy = lshr <8 x i32> %i.dn, splat (i32 3)
  %i.dz = and <8 x i32> %i.dy, splat (i32 1)
  %i.ea = lshr <8 x i32> %i.dn, splat (i32 4)
  %i.eb = and <8 x i32> %i.ea, splat (i32 1)
  %i.ec = shl <8 x i32> %i.dn, splat (i32 26)
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
  br i1 %i.ex, label %.loopexit, label %vector.body, !llvm.loop !97

.loopexit:                                        ; preds = %vector.body, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %vector.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @cbd_2(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr i8, ptr %3, i64 24
  %.val = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.c = call fastcc i32 @prf(ptr noundef %i.a, i64 noundef 128, ptr noundef %1, ptr noundef %2, ptr %.val)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 3 uses
  %i.d = shl i64 %index, 2
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
  br i1 %i.ai, label %.loopexit, label %vector.body, !llvm.loop !98

.loopexit:                                        ; preds = %vector.body, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %vector.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hash_g(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 33, 65) %2, ptr noundef nonnull %3, ptr %.40.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %3, ptr noundef %.40.val, ptr noundef null) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 64, ptr %i.a, align 4, !tbaa !5
  %i.c = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef %2) #12
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %single_keccak.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @EVP_MD_CTX_get0_md(ptr noundef nonnull %3) #12
  %i.e = tail call i32 @EVP_MD_xof(ptr noundef %i.d) #12
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @EVP_DigestFinalXOF(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef 64) #12
  %i.g = icmp ne i32 %i.f, 0
  br label %single_keccak.exit

bb.e:                                             ; preds = %bb.c
  %i.h = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %.not12.i = icmp ne i32 %i.h, 0
  %i.i = load i32, ptr %i.a, align 4
  %i.j = icmp eq i32 %i.i, 64
  %narrow.i = select i1 %.not12.i, i1 %i.j, i1 false
  br label %single_keccak.exit

single_keccak.exit:                               ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.g, %bb.d ], [ %narrow.i, %bb.e ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
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
  %i.b = tail call i32 @EVP_DigestInit_ex(ptr noundef %3, ptr noundef %.24.val, ptr noundef null) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = trunc nuw nsw i64 %1 to i32
  store i32 %i.c, ptr %i.a, align 4, !tbaa !5
  %i.d = tail call i32 @EVP_DigestUpdate(ptr noundef %3, ptr noundef %2, i64 noundef 33) #12
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %single_keccak.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @EVP_MD_CTX_get0_md(ptr noundef %3) #12
  %i.f = tail call i32 @EVP_MD_xof(ptr noundef %i.e) #12
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @EVP_DigestFinalXOF(ptr noundef %3, ptr noundef nonnull %0, i64 noundef range(i64 32, 193) %1) #12
  %i.h = icmp ne i32 %i.g, 0
  br label %single_keccak.exit

bb.e:                                             ; preds = %bb.c
  %i.i = call i32 @EVP_DigestFinal_ex(ptr noundef %3, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %.not12.i = icmp ne i32 %i.i, 0
  %i.j = load i32, ptr %i.a, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = icmp eq i64 %1, %i.k
  %narrow.i = select i1 %.not12.i, i1 %i.l, i1 false
  br label %single_keccak.exit

single_keccak.exit:                               ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.h, %bb.d ], [ %narrow.i, %bb.e ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.m = zext i1 %.0.i to i32
  br label %bb.f

bb.f:                                             ; preds = %single_keccak.exit, %bb.a
  %i.n = phi i32 [ 0, %bb.a ], [ %i.m, %single_keccak.exit ]
  ret i32 %i.n
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @scalar_ntt(ptr nofree noundef captures(address) %0) unnamed_addr #9 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit144, %bb.a
  %.020.idx = phi i64 [ 0, %bb.a ], [ %.022.add.lcssa, %.loopexit144 ] ; 4 uses
  %.1 = phi ptr [ @kNTTRoots, %bb.a ], [ %i.b, %.loopexit144 ]
  %.020.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx ; 3 uses
  %.020.add = add nuw nsw i64 %.020.idx, 256      ; 4 uses
  %.ptr25 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add
  %i.b = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 3 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !38
  %i.d = zext i16 %i.c to i32                     ; 2 uses
  %1 = add i64 %.020.idx, %i.a                    ; 2 uses
  %i.e = add i64 %1, 256
  %i.f = add i64 %1, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.g = add i64 %.020.idx, %i.a
  %2 = xor i64 %i.g, -1
  %3 = add i64 %umax, %2                          ; 2 uses
  %i.h = lshr i64 %3, 1
  %i.i = add nuw i64 %i.h, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %3, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.i, -8                       ; 3 uses
  %i.j = shl i64 %n.vec, 1                        ; 2 uses
  %i.k = add i64 %.020.add, %i.j                  ; 3 uses
  %i.l = getelementptr i8, ptr %.020.ptr, i64 %i.j
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.m = getelementptr i8, ptr %0, i64 %.020.add
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.020.ptr, i64 %i.n ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 %i.n     ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !38 ; 2 uses
  %wide.load44 = load <8 x i16>, ptr %i.o, align 2, !tbaa !38
  %i.p = zext <8 x i16> %wide.load44 to <8 x i32>
  %i.q = mul nuw <8 x i32> %broadcast.splat, %i.p ; 2 uses
  %i.r = zext <8 x i32> %i.q to <8 x i64>
  %i.s = mul nuw nsw <8 x i64> %i.r, splat (i64 5039)
  %i.t = lshr <8 x i64> %i.s, splat (i64 24)
  %i.u = trunc nuw nsw <8 x i64> %i.t to <8 x i32>
  %i.v = mul <8 x i32> %i.u, splat (i32 62207)
  %i.w = add <8 x i32> %i.v, %i.q
  %i.x = trunc <8 x i32> %i.w to <8 x i16>        ; 2 uses
  %i.y = add <8 x i16> %i.x, splat (i16 -3329)    ; 2 uses
  %i.z = icmp slt <8 x i16> %i.y, zeroinitializer
  %i.aa = select <8 x i1> %i.z, <8 x i16> %i.x, <8 x i16> zeroinitializer
  %i.ab = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.y, <8 x i16> zeroinitializer)
  %i.ac = or <8 x i16> %i.aa, %i.ab               ; 2 uses
  %i.ad = sub <8 x i16> %wide.load, %i.ac         ; 3 uses
  %i.ae = add <8 x i16> %i.ad, splat (i16 3329)
  %i.af = icmp slt <8 x i16> %i.ad, zeroinitializer
  %i.ag = select <8 x i1> %i.af, <8 x i16> %i.ae, <8 x i16> zeroinitializer
  %i.ah = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ad, <8 x i16> zeroinitializer)
  %i.ai = or <8 x i16> %i.ag, %i.ah
  store <8 x i16> %i.ai, ptr %i.o, align 2, !tbaa !38
  %i.aj = add <8 x i16> %i.ac, %wide.load         ; 2 uses
  %i.ak = add <8 x i16> %i.aj, splat (i16 -3329)  ; 2 uses
  %i.al = icmp slt <8 x i16> %i.ak, zeroinitializer
  %i.am = select <8 x i1> %i.al, <8 x i16> %i.aj, <8 x i16> zeroinitializer
  %i.an = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ak, <8 x i16> zeroinitializer)
  %i.ao = or <8 x i16> %i.am, %i.an
  store <8 x i16> %i.ao, ptr %next.gep, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.k, -2
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit144, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.022.idx.ph = phi i64 [ %.020.add, %bb.b ], [ %i.k, %middle.block ]
  %.121.ph = phi ptr [ %.020.ptr, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.022.idx = phi i64 [ %.022.add, %scalar.ph ], [ %.022.idx.ph, %scalar.ph.preheader ] ; 3 uses
  %.121 = phi ptr [ %i.bo, %scalar.ph ], [ %.121.ph, %scalar.ph.preheader ] ; 3 uses
  %.022.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.022.idx ; 2 uses
  %i.aq = load i16, ptr %.121, align 2, !tbaa !38 ; 2 uses
  %i.ar = load i16, ptr %.022.ptr, align 2, !tbaa !38
  %i.as = zext i16 %i.ar to i32
  %i.at = mul nuw i32 %i.as, %i.d                 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw nsw i64 %i.au, 5039
  %i.aw = lshr i64 %i.av, 24
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %.neg.i = mul i32 %i.ax, 62207
  %i.ay = add i32 %.neg.i, %i.at
  %i.az = trunc i32 %i.ay to i16                  ; 2 uses
  %i.ba = add i16 %i.az, -3329                    ; 2 uses
  %isneg.i.i = icmp slt i16 %i.ba, 0
  %i.bb = select i1 %isneg.i.i, i16 %i.az, i16 0
  %i.bc = tail call i16 @llvm.smax.i16(i16 %i.ba, i16 0)
  %i.bd = or i16 %i.bb, %i.bc                     ; 2 uses
  %i.be = sub i16 %i.aq, %i.bd                    ; 3 uses
  %i.bf = add i16 %i.be, 3329
  %isneg.i = icmp slt i16 %i.be, 0
  %i.bg = select i1 %isneg.i, i16 %i.bf, i16 0
  %i.bh = tail call i16 @llvm.smax.i16(i16 %i.be, i16 0)
  %i.bi = or i16 %i.bg, %i.bh
  %.022.add = add nuw nsw i64 %.022.idx, 2        ; 2 uses
  store i16 %i.bi, ptr %.022.ptr, align 2, !tbaa !38
  %i.bj = add i16 %i.bd, %i.aq                    ; 2 uses
  %i.bk = add i16 %i.bj, -3329                    ; 2 uses
  %isneg.i26 = icmp slt i16 %i.bk, 0
  %i.bl = select i1 %isneg.i26, i16 %i.bj, i16 0
  %i.bm = tail call i16 @llvm.smax.i16(i16 %i.bk, i16 0)
  %i.bn = or i16 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %.121, i64 2 ; 2 uses
  store i16 %i.bn, ptr %.121, align 2, !tbaa !38
  %i.bp = icmp ult ptr %i.bo, %.ptr25
  br i1 %i.bp, label %scalar.ph, label %.loopexit144, !llvm.loop !100

.loopexit144:                                     ; preds = %scalar.ph, %middle.block
  %.022.idx.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.022.idx, %scalar.ph ]
  %.022.add.lcssa = phi i64 [ %i.k, %middle.block ], [ %.022.add, %scalar.ph ]
  %i.bq = icmp slt i64 %.022.idx.lcssa, 510
  br i1 %i.bq, label %bb.b, label %.preheader38.a, !llvm.loop !101

.preheader38.a:                                   ; preds = %.loopexit144
  %4 = ptrtoint ptr %0 to i64                     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.a, %.loopexit143
  %.020.idx.1 = phi i64 [ %.022.add.1.lcssa, %.loopexit143 ], [ 0, %.preheader38.a ] ; 4 uses
  %.1.1 = phi ptr [ %i.br, %.loopexit143 ], [ %i.b, %.preheader38.a ]
  %.020.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.1 ; 3 uses
  %.020.add.1 = add nuw nsw i64 %.020.idx.1, 128  ; 4 uses
  %.ptr25.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.1
  %i.br = getelementptr inbounds nuw i8, ptr %.1.1, i64 2 ; 3 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !38
  %i.bt = zext i16 %i.bs to i32                   ; 2 uses
  %5 = add i64 %.020.idx.1, %4                    ; 2 uses
  %i.bu = add i64 %5, 128
  %i.bv = add i64 %5, 2
  %umax46 = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.bv)
  %i.bw = add i64 %.020.idx.1, %4
  %6 = xor i64 %i.bw, -1
  %7 = add i64 %umax46, %6                        ; 2 uses
  %i.bx = lshr i64 %7, 1
  %i.by = add nuw i64 %i.bx, 1                    ; 2 uses
  %min.iters.check48 = icmp ult i64 %7, 14
  br i1 %min.iters.check48, label %scalar.ph47.preheader, label %vector.ph49

vector.ph49:                                      ; preds = %bb.c
  %n.vec51 = and i64 %i.by, -8                    ; 3 uses
  %i.bz = shl i64 %n.vec51, 1                     ; 2 uses
  %i.ca = add i64 %.020.add.1, %i.bz              ; 3 uses
  %i.cb = getelementptr i8, ptr %.020.ptr.1, i64 %i.bz
  %broadcast.splatinsert52 = insertelement <8 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat53 = shufflevector <8 x i32> %broadcast.splatinsert52, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cc = getelementptr i8, ptr %0, i64 %.020.add.1
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph49
  %index55 = phi i64 [ 0, %vector.ph49 ], [ %index.next59, %vector.body54 ] ; 2 uses
  %i.cd = shl i64 %index55, 1                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %.020.ptr.1, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd  ; 2 uses
  %wide.load57.a = load <8 x i16>, ptr %next.gep56, align 2, !tbaa !38 ; 2 uses
  %wide.load58 = load <8 x i16>, ptr %i.ce, align 2, !tbaa !38
  %i.cf = zext <8 x i16> %wide.load58 to <8 x i32>
  %i.cg = mul nuw <8 x i32> %broadcast.splat53, %i.cf ; 2 uses
  %i.ch = zext <8 x i32> %i.cg to <8 x i64>
  %i.ci = mul nuw nsw <8 x i64> %i.ch, splat (i64 5039)
  %i.cj = lshr <8 x i64> %i.ci, splat (i64 24)
  %i.ck = trunc nuw nsw <8 x i64> %i.cj to <8 x i32>
  %i.cl = mul <8 x i32> %i.ck, splat (i32 62207)
  %i.cm = add <8 x i32> %i.cl, %i.cg
  %i.cn = trunc <8 x i32> %i.cm to <8 x i16>      ; 2 uses
  %i.co = add <8 x i16> %i.cn, splat (i16 -3329)  ; 2 uses
  %i.cp = icmp slt <8 x i16> %i.co, zeroinitializer
  %i.cq = select <8 x i1> %i.cp, <8 x i16> %i.cn, <8 x i16> zeroinitializer
  %i.cr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.co, <8 x i16> zeroinitializer)
  %i.cs = or <8 x i16> %i.cq, %i.cr               ; 2 uses
  %i.ct = sub <8 x i16> %wide.load57.a, %i.cs     ; 3 uses
  %i.cu = add <8 x i16> %i.ct, splat (i16 3329)
  %i.cv = icmp slt <8 x i16> %i.ct, zeroinitializer
  %i.cw = select <8 x i1> %i.cv, <8 x i16> %i.cu, <8 x i16> zeroinitializer
  %i.cx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ct, <8 x i16> zeroinitializer)
  %i.cy = or <8 x i16> %i.cw, %i.cx
  store <8 x i16> %i.cy, ptr %i.ce, align 2, !tbaa !38
  %i.cz = add <8 x i16> %i.cs, %wide.load57.a     ; 2 uses
  %i.da = add <8 x i16> %i.cz, splat (i16 -3329)  ; 2 uses
  %i.db = icmp slt <8 x i16> %i.da, zeroinitializer
  %i.dc = select <8 x i1> %i.db, <8 x i16> %i.cz, <8 x i16> zeroinitializer
  %i.dd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.da, <8 x i16> zeroinitializer)
  %i.de = or <8 x i16> %i.dc, %i.dd
  store <8 x i16> %i.de, ptr %next.gep56, align 2, !tbaa !38
  %index.next59 = add nuw i64 %index55, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next59, %n.vec51
  br i1 %i.df, label %middle.block60, label %vector.body54, !llvm.loop !102

middle.block60:                                   ; preds = %vector.body54
  %ind.escape61 = add i64 %i.ca, -2
  %cmp.n62 = icmp eq i64 %i.by, %n.vec51
  br i1 %cmp.n62, label %.loopexit143, label %scalar.ph47.preheader

scalar.ph47.preheader:                            ; preds = %bb.c, %middle.block60
  %.022.idx.1.ph = phi i64 [ %.020.add.1, %bb.c ], [ %i.ca, %middle.block60 ]
  %.121.1.ph = phi ptr [ %.020.ptr.1, %bb.c ], [ %i.cb, %middle.block60 ]
  br label %scalar.ph47

scalar.ph47:                                      ; preds = %scalar.ph47.preheader, %scalar.ph47
  %.022.idx.1 = phi i64 [ %.022.add.1, %scalar.ph47 ], [ %.022.idx.1.ph, %scalar.ph47.preheader ] ; 3 uses
  %.121.1 = phi ptr [ %i.ee, %scalar.ph47 ], [ %.121.1.ph, %scalar.ph47.preheader ] ; 3 uses
  %.022.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.022.idx.1 ; 2 uses
  %i.dg = load i16, ptr %.121.1, align 2, !tbaa !38 ; 2 uses
  %i.dh = load i16, ptr %.022.ptr.1, align 2, !tbaa !38
  %i.di = zext i16 %i.dh to i32
  %i.dj = mul nuw i32 %i.di, %i.bt                ; 2 uses
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw nsw i64 %i.dk, 5039
  %i.dm = lshr i64 %i.dl, 24
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %.neg.i.1 = mul i32 %i.dn, 62207
  %i.do = add i32 %.neg.i.1, %i.dj
  %i.dp = trunc i32 %i.do to i16                  ; 2 uses
  %i.dq = add i16 %i.dp, -3329                    ; 2 uses
  %isneg.i.i.1 = icmp slt i16 %i.dq, 0
  %i.dr = select i1 %isneg.i.i.1, i16 %i.dp, i16 0
  %i.ds = tail call i16 @llvm.smax.i16(i16 %i.dq, i16 0)
  %i.dt = or i16 %i.dr, %i.ds                     ; 2 uses
  %i.du = sub i16 %i.dg, %i.dt                    ; 3 uses
  %i.dv = add i16 %i.du, 3329
  %isneg.i.1 = icmp slt i16 %i.du, 0
  %i.dw = select i1 %isneg.i.1, i16 %i.dv, i16 0
  %i.dx = tail call i16 @llvm.smax.i16(i16 %i.du, i16 0)
  %i.dy = or i16 %i.dw, %i.dx
  %.022.add.1 = add nuw nsw i64 %.022.idx.1, 2    ; 2 uses
  store i16 %i.dy, ptr %.022.ptr.1, align 2, !tbaa !38
  %i.dz = add i16 %i.dt, %i.dg                    ; 2 uses
  %i.ea = add i16 %i.dz, -3329                    ; 2 uses
  %isneg.i26.1 = icmp slt i16 %i.ea, 0
  %i.eb = select i1 %isneg.i26.1, i16 %i.dz, i16 0
  %i.ec = tail call i16 @llvm.smax.i16(i16 %i.ea, i16 0)
  %i.ed = or i16 %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %.121.1, i64 2 ; 2 uses
  store i16 %i.ed, ptr %.121.1, align 2, !tbaa !38
  %i.ef = icmp ult ptr %i.ee, %.ptr25.1
  br i1 %i.ef, label %scalar.ph47, label %.loopexit143, !llvm.loop !103

.loopexit143:                                     ; preds = %scalar.ph47, %middle.block60
  %.022.idx.1.lcssa = phi i64 [ %ind.escape61, %middle.block60 ], [ %.022.idx.1, %scalar.ph47 ]
  %.022.add.1.lcssa = phi i64 [ %i.ca, %middle.block60 ], [ %.022.add.1, %scalar.ph47 ]
  %i.eg = icmp slt i64 %.022.idx.1.lcssa, 510
  br i1 %i.eg, label %bb.c, label %.preheader37.a, !llvm.loop !101

.preheader37.a:                                   ; preds = %.loopexit143
  %8 = ptrtoint ptr %0 to i64                     ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader37.a, %.loopexit142
  %.020.idx.2 = phi i64 [ %.022.add.2.lcssa, %.loopexit142 ], [ 0, %.preheader37.a ] ; 4 uses
  %.1.2 = phi ptr [ %i.eh, %.loopexit142 ], [ %i.br, %.preheader37.a ]
  %.020.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.2 ; 3 uses
  %.020.add.2 = add nuw nsw i64 %.020.idx.2, 64   ; 4 uses
  %.ptr25.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.2
  %i.eh = getelementptr inbounds nuw i8, ptr %.1.2, i64 2 ; 3 uses
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !38
  %i.ej = zext i16 %i.ei to i32                   ; 2 uses
  %9 = add i64 %.020.idx.2, %8                    ; 2 uses
  %i.ek = add i64 %9, 64
  %i.el = add i64 %9, 2
  %umax65 = tail call i64 @llvm.umax.i64(i64 %i.ek, i64 %i.el)
  %i.em = add i64 %.020.idx.2, %8
  %10 = xor i64 %i.em, -1
  %11 = add i64 %umax65, %10                      ; 2 uses
  %i.en = lshr i64 %11, 1
  %i.eo = add nuw i64 %i.en, 1                    ; 2 uses
  %min.iters.check67 = icmp ult i64 %11, 14
  br i1 %min.iters.check67, label %scalar.ph66.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %bb.d
  %n.vec70 = and i64 %i.eo, -8                    ; 3 uses
  %i.ep = shl i64 %n.vec70, 1                     ; 2 uses
  %i.eq = add i64 %.020.add.2, %i.ep              ; 3 uses
  %i.er = getelementptr i8, ptr %.020.ptr.2, i64 %i.ep
  %broadcast.splatinsert71 = insertelement <8 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat72 = shufflevector <8 x i32> %broadcast.splatinsert71, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.es = getelementptr i8, ptr %0, i64 %.020.add.2
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph68
  %index74 = phi i64 [ 0, %vector.ph68 ], [ %index.next78, %vector.body73 ] ; 2 uses
  %i.et = shl i64 %index74, 1                     ; 2 uses
  %next.gep75 = getelementptr i8, ptr %.020.ptr.2, i64 %i.et ; 2 uses
  %i.eu = getelementptr i8, ptr %i.es, i64 %i.et  ; 2 uses
  %wide.load76 = load <8 x i16>, ptr %next.gep75, align 2, !tbaa !38 ; 2 uses
  %wide.load77 = load <8 x i16>, ptr %i.eu, align 2, !tbaa !38
  %i.ev = zext <8 x i16> %wide.load77 to <8 x i32>
  %i.ew = mul nuw <8 x i32> %broadcast.splat72, %i.ev ; 2 uses
  %i.ex = zext <8 x i32> %i.ew to <8 x i64>
  %i.ey = mul nuw nsw <8 x i64> %i.ex, splat (i64 5039)
  %i.ez = lshr <8 x i64> %i.ey, splat (i64 24)
  %i.fa = trunc nuw nsw <8 x i64> %i.ez to <8 x i32>
  %i.fb = mul <8 x i32> %i.fa, splat (i32 62207)
  %i.fc = add <8 x i32> %i.fb, %i.ew
  %i.fd = trunc <8 x i32> %i.fc to <8 x i16>      ; 2 uses
  %i.fe = add <8 x i16> %i.fd, splat (i16 -3329)  ; 2 uses
  %i.ff = icmp slt <8 x i16> %i.fe, zeroinitializer
  %i.fg = select <8 x i1> %i.ff, <8 x i16> %i.fd, <8 x i16> zeroinitializer
  %i.fh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fe, <8 x i16> zeroinitializer)
  %i.fi = or <8 x i16> %i.fg, %i.fh               ; 2 uses
  %i.fj = sub <8 x i16> %wide.load76, %i.fi       ; 3 uses
  %i.fk = add <8 x i16> %i.fj, splat (i16 3329)
  %i.fl = icmp slt <8 x i16> %i.fj, zeroinitializer
  %i.fm = select <8 x i1> %i.fl, <8 x i16> %i.fk, <8 x i16> zeroinitializer
  %i.fn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fj, <8 x i16> zeroinitializer)
  %i.fo = or <8 x i16> %i.fm, %i.fn
  store <8 x i16> %i.fo, ptr %i.eu, align 2, !tbaa !38
  %i.fp = add <8 x i16> %i.fi, %wide.load76       ; 2 uses
  %i.fq = add <8 x i16> %i.fp, splat (i16 -3329)  ; 2 uses
  %i.fr = icmp slt <8 x i16> %i.fq, zeroinitializer
  %i.fs = select <8 x i1> %i.fr, <8 x i16> %i.fp, <8 x i16> zeroinitializer
  %i.ft = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fq, <8 x i16> zeroinitializer)
  %i.fu = or <8 x i16> %i.fs, %i.ft
  store <8 x i16> %i.fu, ptr %next.gep75, align 2, !tbaa !38
  %index.next78 = add nuw i64 %index74, 8         ; 2 uses
  %i.fv = icmp eq i64 %index.next78, %n.vec70
  br i1 %i.fv, label %middle.block79, label %vector.body73, !llvm.loop !104

middle.block79:                                   ; preds = %vector.body73
  %ind.escape80 = add i64 %i.eq, -2
  %cmp.n81 = icmp eq i64 %i.eo, %n.vec70
  br i1 %cmp.n81, label %.loopexit142, label %scalar.ph66.preheader

scalar.ph66.preheader:                            ; preds = %bb.d, %middle.block79
  %.022.idx.2.ph = phi i64 [ %.020.add.2, %bb.d ], [ %i.eq, %middle.block79 ]
  %.121.2.ph = phi ptr [ %.020.ptr.2, %bb.d ], [ %i.er, %middle.block79 ]
  br label %scalar.ph66

scalar.ph66:                                      ; preds = %scalar.ph66.preheader, %scalar.ph66
  %.022.idx.2 = phi i64 [ %.022.add.2, %scalar.ph66 ], [ %.022.idx.2.ph, %scalar.ph66.preheader ] ; 3 uses
  %.121.2 = phi ptr [ %i.gu, %scalar.ph66 ], [ %.121.2.ph, %scalar.ph66.preheader ] ; 3 uses
  %.022.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.022.idx.2 ; 2 uses
  %i.fw = load i16, ptr %.121.2, align 2, !tbaa !38 ; 2 uses
  %i.fx = load i16, ptr %.022.ptr.2, align 2, !tbaa !38
  %i.fy = zext i16 %i.fx to i32
  %i.fz = mul nuw i32 %i.fy, %i.ej                ; 2 uses
  %i.ga = zext i32 %i.fz to i64
  %i.gb = mul nuw nsw i64 %i.ga, 5039
  %i.gc = lshr i64 %i.gb, 24
  %i.gd = trunc nuw nsw i64 %i.gc to i32
  %.neg.i.2 = mul i32 %i.gd, 62207
  %i.ge = add i32 %.neg.i.2, %i.fz
  %i.gf = trunc i32 %i.ge to i16                  ; 2 uses
  %i.gg = add i16 %i.gf, -3329                    ; 2 uses
  %isneg.i.i.2 = icmp slt i16 %i.gg, 0
  %i.gh = select i1 %isneg.i.i.2, i16 %i.gf, i16 0
  %i.gi = tail call i16 @llvm.smax.i16(i16 %i.gg, i16 0)
  %i.gj = or i16 %i.gh, %i.gi                     ; 2 uses
  %i.gk = sub i16 %i.fw, %i.gj                    ; 3 uses
  %i.gl = add i16 %i.gk, 3329
  %isneg.i.2 = icmp slt i16 %i.gk, 0
  %i.gm = select i1 %isneg.i.2, i16 %i.gl, i16 0
  %i.gn = tail call i16 @llvm.smax.i16(i16 %i.gk, i16 0)
  %i.go = or i16 %i.gm, %i.gn
  %.022.add.2 = add nuw nsw i64 %.022.idx.2, 2    ; 2 uses
  store i16 %i.go, ptr %.022.ptr.2, align 2, !tbaa !38
  %i.gp = add i16 %i.gj, %i.fw                    ; 2 uses
  %i.gq = add i16 %i.gp, -3329                    ; 2 uses
  %isneg.i26.2 = icmp slt i16 %i.gq, 0
  %i.gr = select i1 %isneg.i26.2, i16 %i.gp, i16 0
  %i.gs = tail call i16 @llvm.smax.i16(i16 %i.gq, i16 0)
  %i.gt = or i16 %i.gr, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %.121.2, i64 2 ; 2 uses
  store i16 %i.gt, ptr %.121.2, align 2, !tbaa !38
  %i.gv = icmp ult ptr %i.gu, %.ptr25.2
  br i1 %i.gv, label %scalar.ph66, label %.loopexit142, !llvm.loop !105

.loopexit142:                                     ; preds = %scalar.ph66, %middle.block79
  %.022.idx.2.lcssa = phi i64 [ %ind.escape80, %middle.block79 ], [ %.022.idx.2, %scalar.ph66 ]
  %.022.add.2.lcssa = phi i64 [ %i.eq, %middle.block79 ], [ %.022.add.2, %scalar.ph66 ]
  %i.gw = icmp slt i64 %.022.idx.2.lcssa, 510
  br i1 %i.gw, label %bb.d, label %.preheader36.a, !llvm.loop !101

.preheader36.a:                                   ; preds = %.loopexit142
  %12 = ptrtoint ptr %0 to i64                    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader36.a, %.loopexit141
  %.020.idx.3 = phi i64 [ %.022.add.3.lcssa, %.loopexit141 ], [ 0, %.preheader36.a ] ; 4 uses
  %.1.3 = phi ptr [ %i.gx, %.loopexit141 ], [ %i.eh, %.preheader36.a ] ; 4 uses
  %.020.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.3 ; 3 uses
  %.020.add.3 = add nuw nsw i64 %.020.idx.3, 32   ; 4 uses
  %.ptr25.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.add.3
  %i.gx = getelementptr inbounds nuw i8, ptr %.1.3, i64 2 ; 4 uses
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !38
  %i.gz = zext i16 %i.gy to i32                   ; 2 uses
  %13 = add i64 %.020.idx.3, %12                  ; 2 uses
  %i.ha = add i64 %13, 32
  %i.hb = add i64 %13, 2
  %umax84 = tail call i64 @llvm.umax.i64(i64 %i.ha, i64 %i.hb)
  %i.hc = add i64 %.020.idx.3, %12
  %14 = xor i64 %i.hc, -1
  %15 = add i64 %umax84, %14                      ; 2 uses
  %i.hd = lshr i64 %15, 1
  %i.he = add nuw i64 %i.hd, 1                    ; 2 uses
  %min.iters.check86 = icmp ult i64 %15, 14
  br i1 %min.iters.check86, label %scalar.ph85.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %bb.e
  %n.vec89 = and i64 %i.he, -8                    ; 3 uses
  %i.hf = shl i64 %n.vec89, 1                     ; 2 uses
  %i.hg = add i64 %.020.add.3, %i.hf              ; 3 uses
  %i.hh = getelementptr i8, ptr %.020.ptr.3, i64 %i.hf
  %broadcast.splatinsert90 = insertelement <8 x i32> poison, i32 %i.gz, i64 0
  %broadcast.splat91 = shufflevector <8 x i32> %broadcast.splatinsert90, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.hi = getelementptr i8, ptr %0, i64 %.020.add.3
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph87
  %index93 = phi i64 [ 0, %vector.ph87 ], [ %index.next97, %vector.body92 ] ; 2 uses
  %i.hj = shl i64 %index93, 1                     ; 2 uses
  %next.gep94 = getelementptr i8, ptr %.020.ptr.3, i64 %i.hj ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hi, i64 %i.hj  ; 2 uses
  %wide.load95 = load <8 x i16>, ptr %next.gep94, align 2, !tbaa !38 ; 2 uses
  %wide.load96 = load <8 x i16>, ptr %i.hk, align 2, !tbaa !38
  %i.hl = zext <8 x i16> %wide.load96 to <8 x i32>
  %i.hm = mul nuw <8 x i32> %broadcast.splat91, %i.hl ; 2 uses
  %i.hn = zext <8 x i32> %i.hm to <8 x i64>
  %i.ho = mul nuw nsw <8 x i64> %i.hn, splat (i64 5039)
  %i.hp = lshr <8 x i64> %i.ho, splat (i64 24)
  %i.hq = trunc nuw nsw <8 x i64> %i.hp to <8 x i32>
  %i.hr = mul <8 x i32> %i.hq, splat (i32 62207)
  %i.hs = add <8 x i32> %i.hr, %i.hm
  %i.ht = trunc <8 x i32> %i.hs to <8 x i16>      ; 2 uses
  %i.hu = add <8 x i16> %i.ht, splat (i16 -3329)  ; 2 uses
  %i.hv = icmp slt <8 x i16> %i.hu, zeroinitializer
  %i.hw = select <8 x i1> %i.hv, <8 x i16> %i.ht, <8 x i16> zeroinitializer
  %i.hx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hu, <8 x i16> zeroinitializer)
  %i.hy = or <8 x i16> %i.hw, %i.hx               ; 2 uses
  %i.hz = sub <8 x i16> %wide.load95, %i.hy       ; 3 uses
  %i.ia = add <8 x i16> %i.hz, splat (i16 3329)
  %i.ib = icmp slt <8 x i16> %i.hz, zeroinitializer
  %i.ic = select <8 x i1> %i.ib, <8 x i16> %i.ia, <8 x i16> zeroinitializer
  %i.id = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.hz, <8 x i16> zeroinitializer)
  %i.ie = or <8 x i16> %i.ic, %i.id
  store <8 x i16> %i.ie, ptr %i.hk, align 2, !tbaa !38
  %i.if = add <8 x i16> %i.hy, %wide.load95       ; 2 uses
  %i.ig = add <8 x i16> %i.if, splat (i16 -3329)  ; 2 uses
  %i.ih = icmp slt <8 x i16> %i.ig, zeroinitializer
  %i.ii = select <8 x i1> %i.ih, <8 x i16> %i.if, <8 x i16> zeroinitializer
  %i.ij = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ig, <8 x i16> zeroinitializer)
  %i.ik = or <8 x i16> %i.ii, %i.ij
  store <8 x i16> %i.ik, ptr %next.gep94, align 2, !tbaa !38
  %index.next97 = add nuw i64 %index93, 8         ; 2 uses
  %i.il = icmp eq i64 %index.next97, %n.vec89
  br i1 %i.il, label %middle.block98, label %vector.body92, !llvm.loop !106

middle.block98:                                   ; preds = %vector.body92
  %ind.escape99 = add i64 %i.hg, -2
  %cmp.n100 = icmp eq i64 %i.he, %n.vec89
  br i1 %cmp.n100, label %.loopexit141, label %scalar.ph85.preheader

scalar.ph85.preheader:                            ; preds = %bb.e, %middle.block98
  %.022.idx.3.ph = phi i64 [ %.020.add.3, %bb.e ], [ %i.hg, %middle.block98 ]
  %.121.3.ph = phi ptr [ %.020.ptr.3, %bb.e ], [ %i.hh, %middle.block98 ]
  br label %scalar.ph85

scalar.ph85:                                      ; preds = %scalar.ph85.preheader, %scalar.ph85
  %.022.idx.3 = phi i64 [ %.022.add.3, %scalar.ph85 ], [ %.022.idx.3.ph, %scalar.ph85.preheader ] ; 3 uses
  %.121.3 = phi ptr [ %i.jk, %scalar.ph85 ], [ %.121.3.ph, %scalar.ph85.preheader ] ; 3 uses
  %.022.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 %.022.idx.3 ; 2 uses
  %i.im = load i16, ptr %.121.3, align 2, !tbaa !38 ; 2 uses
  %i.in = load i16, ptr %.022.ptr.3, align 2, !tbaa !38
  %i.io = zext i16 %i.in to i32
  %i.ip = mul nuw i32 %i.io, %i.gz                ; 2 uses
  %i.iq = zext i32 %i.ip to i64
  %i.ir = mul nuw nsw i64 %i.iq, 5039
  %i.is = lshr i64 %i.ir, 24
  %i.it = trunc nuw nsw i64 %i.is to i32
  %.neg.i.3 = mul i32 %i.it, 62207
  %i.iu = add i32 %.neg.i.3, %i.ip
  %i.iv = trunc i32 %i.iu to i16                  ; 2 uses
  %i.iw = add i16 %i.iv, -3329                    ; 2 uses
  %isneg.i.i.3 = icmp slt i16 %i.iw, 0
  %i.ix = select i1 %isneg.i.i.3, i16 %i.iv, i16 0
  %i.iy = tail call i16 @llvm.smax.i16(i16 %i.iw, i16 0)
  %i.iz = or i16 %i.ix, %i.iy                     ; 2 uses
  %i.ja = sub i16 %i.im, %i.iz                    ; 3 uses
  %i.jb = add i16 %i.ja, 3329
  %isneg.i.3 = icmp slt i16 %i.ja, 0
  %i.jc = select i1 %isneg.i.3, i16 %i.jb, i16 0
  %i.jd = tail call i16 @llvm.smax.i16(i16 %i.ja, i16 0)
  %i.je = or i16 %i.jc, %i.jd
  %.022.add.3 = add nuw nsw i64 %.022.idx.3, 2    ; 2 uses
  store i16 %i.je, ptr %.022.ptr.3, align 2, !tbaa !38
  %i.jf = add i16 %i.iz, %i.im                    ; 2 uses
  %i.jg = add i16 %i.jf, -3329                    ; 2 uses
  %isneg.i26.3 = icmp slt i16 %i.jg, 0
  %i.jh = select i1 %isneg.i26.3, i16 %i.jf, i16 0
  %i.ji = tail call i16 @llvm.smax.i16(i16 %i.jg, i16 0)
  %i.jj = or i16 %i.jh, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %.121.3, i64 2 ; 2 uses
  store i16 %i.jj, ptr %.121.3, align 2, !tbaa !38
  %i.jl = icmp ult ptr %i.jk, %.ptr25.3
  br i1 %i.jl, label %scalar.ph85, label %.loopexit141, !llvm.loop !107

.loopexit141:                                     ; preds = %scalar.ph85, %middle.block98
  %.022.idx.3.lcssa = phi i64 [ %ind.escape99, %middle.block98 ], [ %.022.idx.3, %scalar.ph85 ]
  %.022.add.3.lcssa = phi i64 [ %i.hg, %middle.block98 ], [ %.022.add.3, %scalar.ph85 ]
  %i.jm = icmp slt i64 %.022.idx.3.lcssa, 510
  br i1 %i.jm, label %bb.e, label %vector.memcheck, !llvm.loop !101

vector.memcheck:                                  ; preds = %.loopexit141
  %scevgep = getelementptr i8, ptr %0, i64 512    ; 2 uses
  %i.jn = getelementptr i8, ptr %.1.3, i64 4
  %i.jo = getelementptr i8, ptr %.1.3, i64 36
  %bound0 = icmp ult ptr %0, %i.jo
  %bound1 = icmp ult ptr %i.jn, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph103, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck
  %i.jp = getelementptr i8, ptr %.1.3, i64 34
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph104
  %index106 = phi i64 [ 0, %vector.ph104 ], [ %index.next109, %vector.body105 ] ; 3 uses
  %i.jq = shl i64 %index106, 5                    ; 8 uses
  %i.jr = shl i64 %index106, 1
  %next.gep107 = getelementptr i8, ptr %i.gx, i64 %i.jr
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 %i.jq ; 17 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 %i.jq ; 16 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 %i.jq ; 16 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 64 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 %i.jq ; 16 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 96 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 %i.jq ; 16 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 128 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 %i.jq ; 16 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 160 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 %i.jq ; 16 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 192 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 %i.jq ; 16 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 224 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jt, i64 48 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jv, i64 80 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jx, i64 112 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jz, i64 144 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 176 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 208 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kf, i64 240 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %next.gep107, i64 2
  %wide.load108 = load <8 x i16>, ptr %i.kp, align 2, !tbaa !38, !alias.scope !108
  %i.kq = zext <8 x i16> %wide.load108 to <8 x i32> ; 8 uses
  %i.kr = load i16, ptr %i.js, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ks = load i16, ptr %i.ju, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.kt = load i16, ptr %i.jw, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ku = load i16, ptr %i.jy, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.kv = load i16, ptr %i.ka, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.kw = load i16, ptr %i.kc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.kx = load i16, ptr %i.ke, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ky = load i16, ptr %i.kg, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.kz = insertelement <8 x i16> poison, i16 %i.kr, i64 0
  %i.la = insertelement <8 x i16> %i.kz, i16 %i.ks, i64 1
  %i.lb = insertelement <8 x i16> %i.la, i16 %i.kt, i64 2
  %i.lc = insertelement <8 x i16> %i.lb, i16 %i.ku, i64 3
  %i.ld = insertelement <8 x i16> %i.lc, i16 %i.kv, i64 4
  %i.le = insertelement <8 x i16> %i.ld, i16 %i.kw, i64 5
  %i.lf = insertelement <8 x i16> %i.le, i16 %i.kx, i64 6
  %i.lg = insertelement <8 x i16> %i.lf, i16 %i.ky, i64 7 ; 2 uses
  %i.lh = load i16, ptr %i.kh, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.li = load i16, ptr %i.ki, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.lj = load i16, ptr %i.kj, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.lk = load i16, ptr %i.kk, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ll = load i16, ptr %i.kl, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.lm = load i16, ptr %i.km, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ln = load i16, ptr %i.kn, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.lo = load i16, ptr %i.ko, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.lp = insertelement <8 x i16> poison, i16 %i.lh, i64 0
  %i.lq = insertelement <8 x i16> %i.lp, i16 %i.li, i64 1
  %i.lr = insertelement <8 x i16> %i.lq, i16 %i.lj, i64 2
  %i.ls = insertelement <8 x i16> %i.lr, i16 %i.lk, i64 3
  %i.lt = insertelement <8 x i16> %i.ls, i16 %i.ll, i64 4
  %i.lu = insertelement <8 x i16> %i.lt, i16 %i.lm, i64 5
  %i.lv = insertelement <8 x i16> %i.lu, i16 %i.ln, i64 6
  %i.lw = insertelement <8 x i16> %i.lv, i16 %i.lo, i64 7
  %i.lx = zext <8 x i16> %i.lw to <8 x i32>
  %i.ly = mul nuw <8 x i32> %i.lx, %i.kq          ; 2 uses
  %i.lz = zext <8 x i32> %i.ly to <8 x i64>
  %i.ma = mul nuw nsw <8 x i64> %i.lz, splat (i64 5039)
  %i.mb = lshr <8 x i64> %i.ma, splat (i64 24)
  %i.mc = trunc nuw nsw <8 x i64> %i.mb to <8 x i32>
  %i.md = mul <8 x i32> %i.mc, splat (i32 62207)
  %i.me = add <8 x i32> %i.md, %i.ly
  %i.mf = trunc <8 x i32> %i.me to <8 x i16>      ; 2 uses
  %i.mg = add <8 x i16> %i.mf, splat (i16 -3329)  ; 2 uses
  %i.mh = icmp slt <8 x i16> %i.mg, zeroinitializer
  %i.mi = select <8 x i1> %i.mh, <8 x i16> %i.mf, <8 x i16> zeroinitializer
  %i.mj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mg, <8 x i16> zeroinitializer)
  %i.mk = or <8 x i16> %i.mi, %i.mj               ; 2 uses
  %i.ml = sub <8 x i16> %i.lg, %i.mk              ; 3 uses
  %i.mm = add <8 x i16> %i.ml, splat (i16 3329)
  %i.mn = icmp slt <8 x i16> %i.ml, zeroinitializer
  %i.mo = select <8 x i1> %i.mn, <8 x i16> %i.mm, <8 x i16> zeroinitializer
end_hunk_0
begin_hunk_1_@inner_product:vector.memcheck
  %i.di = icmp sgt i32 %3, 1
  br i1 %i.di, label %.lr.ph.preheader, label %scalar_mult.exit._crit_edge

.lr.ph.preheader:                                 ; preds = %scalar_mult.exit.preheader
  %scevgep33 = getelementptr i8, ptr %0, i64 512  ; 3 uses
  %scevgep34 = getelementptr i8, ptr %1, i64 512
  %i.dj = add nsw i32 %3, -2
  %i.dk = zext i32 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 9
  %i.dm = add nuw nsw i64 %i.dl, 1024             ; 2 uses
  %scevgep35 = getelementptr i8, ptr %1, i64 %i.dm
  %scevgep36 = getelementptr i8, ptr %2, i64 512
  %scevgep37 = getelementptr i8, ptr %2, i64 %i.dm
  %bound038 = icmp ult ptr %0, %scevgep35
  %bound139 = icmp ult ptr %scevgep34, %scevgep33
  %found.conflict40 = and i1 %bound038, %bound139
  %bound041 = icmp ult ptr %0, %scevgep37
  %bound142 = icmp ult ptr %scevgep36, %scevgep33
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %found.conflict40, %found.conflict43
  %bound045 = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound146 = icmp ugt ptr %scevgep33, @kModRoots
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %scalar_mult_add.exit
  %.016 = phi i32 [ %i.il, %scalar_mult_add.exit ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.0615 = phi ptr [ %i.do, %scalar_mult_add.exit ], [ %2, %.lr.ph.preheader ]
  %.0714 = phi ptr [ %i.dn, %scalar_mult_add.exit ], [ %1, %.lr.ph.preheader ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0714, i64 512 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0615, i64 512 ; 3 uses
  br i1 %conflict.rdx48, label %scalar.ph49, label %vector.body51

vector.body51:                                    ; preds = %.lr.ph, %vector.body51
  %index52 = phi i64 [ %index.next67, %vector.body51 ], [ 0, %.lr.ph ] ; 3 uses
  %i.dp = shl i64 %index52, 1
  %next.gep53 = getelementptr i8, ptr @kModRoots, i64 %i.dp
  %i.dq = shl i64 %index52, 2                     ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.do, i64 %i.dq
  %next.gep55 = getelementptr i8, ptr %i.dn, i64 %i.dq
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %i.dq ; 2 uses
  %wide.vec56 = load <8 x i16>, ptr %next.gep55, align 2, !tbaa !38, !alias.scope !173
  %i.ds = freeze <8 x i16> %wide.vec56            ; 2 uses
  %i.dt = bitcast <8 x i16> %i.ds to <4 x i32>
  %i.du = bitcast <8 x i16> %i.ds to <4 x i32>
  %i.dv = and <4 x i32> %i.du, splat (i32 65535)  ; 2 uses
  %i.dw = lshr <4 x i32> %i.dt, splat (i32 16)    ; 2 uses
  %wide.vec59 = load <8 x i16>, ptr %next.gep54, align 2, !tbaa !38, !alias.scope !176
  %i.dx = freeze <8 x i16> %wide.vec59            ; 2 uses
  %i.dy = bitcast <8 x i16> %i.dx to <4 x i32>
  %i.dz = bitcast <8 x i16> %i.dx to <4 x i32>
  %i.ea = and <4 x i32> %i.dz, splat (i32 65535)  ; 2 uses
  %i.eb = lshr <4 x i32> %i.dy, splat (i32 16)    ; 2 uses
  %wide.load62 = load <4 x i16>, ptr %next.gep53, align 8, !tbaa !38, !alias.scope !178
  %i.ec = zext <4 x i16> %wide.load62 to <4 x i32>
  %wide.vec63 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !38, !alias.scope !180, !noalias !182
  %i.ed = freeze <8 x i16> %wide.vec63            ; 2 uses
  %i.ee = bitcast <8 x i16> %i.ed to <4 x i32>
  %i.ef = bitcast <8 x i16> %i.ed to <4 x i32>
  %i.eg = and <4 x i32> %i.ef, splat (i32 65535)
  %i.eh = lshr <4 x i32> %i.ee, splat (i32 16)
  %i.ei = mul nuw <4 x i32> %i.ea, %i.dv
  %i.ej = add nuw <4 x i32> %i.ei, %i.eg
  %i.ek = mul nuw <4 x i32> %i.eb, %i.dw          ; 2 uses
  %i.el = zext <4 x i32> %i.ek to <4 x i64>
  %i.em = mul nuw nsw <4 x i64> %i.el, splat (i64 5039)
  %i.en = lshr <4 x i64> %i.em, splat (i64 24)
  %i.eo = trunc nuw nsw <4 x i64> %i.en to <4 x i32>
  %i.ep = mul <4 x i32> %i.eo, splat (i32 62207)
  %i.eq = add <4 x i32> %i.ep, %i.ek
  %i.er = trunc <4 x i32> %i.eq to <4 x i16>      ; 2 uses
  %i.es = add <4 x i16> %i.er, splat (i16 -3329)  ; 2 uses
  %i.et = icmp slt <4 x i16> %i.es, zeroinitializer
  %i.eu = select <4 x i1> %i.et, <4 x i16> %i.er, <4 x i16> zeroinitializer
  %i.ev = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.es, <4 x i16> zeroinitializer)
  %i.ew = or <4 x i16> %i.eu, %i.ev
  %i.ex = zext <4 x i16> %i.ew to <4 x i32>
  %i.ey = mul nuw <4 x i32> %i.ex, %i.ec
  %i.ez = add <4 x i32> %i.ej, %i.ey              ; 2 uses
  %i.fa = zext <4 x i32> %i.ez to <4 x i64>
  %i.fb = mul nuw nsw <4 x i64> %i.fa, splat (i64 5039)
  %i.fc = lshr <4 x i64> %i.fb, splat (i64 24)
  %i.fd = trunc nuw nsw <4 x i64> %i.fc to <4 x i32>
  %i.fe = mul <4 x i32> %i.fd, splat (i32 62207)
  %i.ff = add <4 x i32> %i.fe, %i.ez
  %i.fg = trunc <4 x i32> %i.ff to <4 x i16>      ; 2 uses
  %i.fh = add <4 x i16> %i.fg, splat (i16 -3329)  ; 2 uses
  %i.fi = icmp slt <4 x i16> %i.fh, zeroinitializer
  %i.fj = select <4 x i1> %i.fi, <4 x i16> %i.fg, <4 x i16> zeroinitializer
  %i.fk = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.fh, <4 x i16> zeroinitializer)
  %i.fl = or <4 x i16> %i.fj, %i.fk
  %i.fm = mul nuw <4 x i32> %i.eb, %i.dv
  %i.fn = mul nuw <4 x i32> %i.dw, %i.ea
  %i.fo = add <4 x i32> %i.fm, %i.fn
  %i.fp = add <4 x i32> %i.fo, %i.eh              ; 2 uses
  %i.fq = zext <4 x i32> %i.fp to <4 x i64>
  %i.fr = mul nuw nsw <4 x i64> %i.fq, splat (i64 5039)
  %i.fs = lshr <4 x i64> %i.fr, splat (i64 24)
  %i.ft = trunc nuw nsw <4 x i64> %i.fs to <4 x i32>
  %i.fu = mul <4 x i32> %i.ft, splat (i32 62207)
  %i.fv = add <4 x i32> %i.fu, %i.fp
  %i.fw = trunc <4 x i32> %i.fv to <4 x i16>      ; 2 uses
  %i.fx = add <4 x i16> %i.fw, splat (i16 -3329)  ; 2 uses
  %i.fy = icmp slt <4 x i16> %i.fx, zeroinitializer
  %i.fz = select <4 x i1> %i.fy, <4 x i16> %i.fw, <4 x i16> zeroinitializer
  %i.ga = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.fx, <4 x i16> zeroinitializer)
  %i.gb = or <4 x i16> %i.fz, %i.ga
  %interleaved.vec66 = shufflevector <4 x i16> %i.fl, <4 x i16> %i.gb, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec66, ptr %i.dr, align 2, !tbaa !38, !alias.scope !180, !noalias !182
  %index.next67 = add nuw i64 %index52, 4         ; 2 uses
  %i.gc = icmp eq i64 %index.next67, 128
  br i1 %i.gc, label %scalar_mult_add.exit, label %vector.body51, !llvm.loop !183

scalar.ph49:                                      ; preds = %.lr.ph, %scalar.ph49
  %.027.i = phi ptr [ %i.gm, %scalar.ph49 ], [ @kModRoots, %.lr.ph ] ; 2 uses
  %.026.i = phi ptr [ %i.gi, %scalar.ph49 ], [ %i.do, %.lr.ph ] ; 3 uses
  %.025.i = phi ptr [ %i.gh, %scalar.ph49 ], [ %i.dn, %.lr.ph ] ; 3 uses
  %.0.idx.i9 = phi i64 [ %.0.add.i11, %scalar.ph49 ], [ 0, %.lr.ph ] ; 3 uses
  %.0.ptr.i10 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx.i9 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.025.i, i64 2
  %i.ge = getelementptr inbounds nuw i8, ptr %.026.i, i64 2
  %i.gf = load i16, ptr %.026.i, align 2, !tbaa !38
  %i.gg = zext i16 %i.gf to i32                   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  %i.gj = load i16, ptr %i.ge, align 2, !tbaa !38
  %i.gk = zext i16 %i.gj to i32                   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.ptr.i10, i64 2
  %.0.add.i11 = add nuw nsw i64 %.0.idx.i9, 4
  %i.gm = getelementptr inbounds nuw i8, ptr %.027.i, i64 2
  %i.gn = load i16, ptr %.027.i, align 2, !tbaa !38
  %i.go = zext i16 %i.gn to i32
  %i.gp = load i16, ptr %.0.ptr.i10, align 2, !tbaa !38
  %i.gq = zext i16 %i.gp to i32
  %i.gr = load i16, ptr %i.gl, align 2, !tbaa !38
  %i.gs = zext i16 %i.gr to i32
  %i.gt = load i16, ptr %i.gd, align 2, !tbaa !38
  %i.gu = load i16, ptr %.025.i, align 2, !tbaa !38
  %i.gv = zext i16 %i.gt to i32                   ; 2 uses
  %i.gw = zext i16 %i.gu to i32                   ; 2 uses
  %i.gx = mul nuw i32 %i.gk, %i.gv                ; 2 uses
  %i.gy = zext i32 %i.gx to i64
  %i.gz = mul nuw nsw i64 %i.gy, 5039
  %i.ha = lshr i64 %i.gz, 24
  %i.hb = trunc nuw nsw i64 %i.ha to i32
  %.neg.i.i12 = mul i32 %i.hb, 62207
  %i.hc = add i32 %.neg.i.i12, %i.gx
  %i.hd = trunc i32 %i.hc to i16                  ; 2 uses
  %i.he = add i16 %i.hd, -3329                    ; 2 uses
  %isneg.i.i.i13 = icmp slt i16 %i.he, 0
  %i.hf = select i1 %isneg.i.i.i13, i16 %i.hd, i16 0
  %i.hg = tail call i16 @llvm.smax.i16(i16 %i.he, i16 0)
  %i.hh = or i16 %i.hf, %i.hg
  %i.hi = zext i16 %i.hh to i32
  %i.hj = mul nuw i32 %i.hi, %i.go
  %i.hk = mul nuw i32 %i.gk, %i.gw
  %i.hl = mul nuw i32 %i.gv, %i.gg
  %i.hm = mul nuw i32 %i.gg, %i.gw
  %i.hn = add i32 %i.hk, %i.hl
  %i.ho = add nuw i32 %i.hm, %i.gq
  %i.hp = add i32 %i.hn, %i.gs                    ; 2 uses
  %i.hq = add i32 %i.ho, %i.hj                    ; 2 uses
  %i.hr = zext i32 %i.hp to i64
  %i.hs = zext i32 %i.hq to i64
  %i.ht = mul nuw nsw i64 %i.hr, 5039
  %i.hu = mul nuw nsw i64 %i.hs, 5039
  %i.hv = lshr i64 %i.ht, 24
  %i.hw = lshr i64 %i.hu, 24
  %i.hx = trunc nuw nsw i64 %i.hv to i32
  %i.hy = trunc nuw nsw i64 %i.hw to i32
  %.neg.i30.i = mul i32 %i.hx, 62207
  %.neg.i28.i = mul i32 %i.hy, 62207
  %i.hz = insertelement <2 x i32> poison, i32 %.neg.i28.i, i64 0
  %i.ia = insertelement <2 x i32> %i.hz, i32 %.neg.i30.i, i64 1
  %i.ib = insertelement <2 x i32> poison, i32 %i.hq, i64 0
  %i.ic = insertelement <2 x i32> %i.ib, i32 %i.hp, i64 1
  %i.id = add <2 x i32> %i.ia, %i.ic
  %i.ie = trunc <2 x i32> %i.id to <2 x i16>      ; 2 uses
  %i.if = add <2 x i16> %i.ie, splat (i16 -3329)  ; 2 uses
  %i.ig = icmp slt <2 x i16> %i.if, zeroinitializer
  %i.ih = select <2 x i1> %i.ig, <2 x i16> %i.ie, <2 x i16> zeroinitializer
  %i.ii = tail call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.if, <2 x i16> zeroinitializer)
  %i.ij = or <2 x i16> %i.ih, %i.ii
  store <2 x i16> %i.ij, ptr %.0.ptr.i10, align 2, !tbaa !38
  %i.ik = icmp samesign ult i64 %.0.idx.i9, 508
  br i1 %i.ik, label %scalar.ph49, label %scalar_mult_add.exit, !llvm.loop !184

scalar_mult_add.exit:                             ; preds = %vector.body51, %scalar.ph49
  %i.il = add nsw i32 %.016, -1
  %i.im = icmp sgt i32 %.016, 2
  br i1 %i.im, label %.lr.ph, label %scalar_mult.exit._crit_edge, !llvm.loop !185

scalar_mult.exit._crit_edge:                      ; preds = %scalar_mult_add.exit, %scalar_mult.exit.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @scalar_inverse_ntt(ptr nofree noundef nonnull captures(address) %0) unnamed_addr #9 {
vector.memcheck:
  %scevgep = getelementptr i8, ptr %0, i64 512    ; 2 uses
  %bound0 = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @kInverseNTTRoots, i64 130)
  %bound1 = icmp ugt ptr %scevgep, getelementptr inbounds nuw (i8, ptr @kInverseNTTRoots, i64 2)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.a = shl i64 %index, 3                        ; 8 uses
  %i.b = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kInverseNTTRoots, i64 %i.b
  %i.c = getelementptr i8, ptr %0, i64 %i.a       ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %i.n = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 48
  %i.p = getelementptr i8, ptr %0, i64 %i.a       ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 56
  %i.r = getelementptr i8, ptr %i.c, i64 4
  %i.s = getelementptr i8, ptr %i.d, i64 12
  %i.t = getelementptr i8, ptr %i.f, i64 20
  %i.u = getelementptr i8, ptr %i.h, i64 28
  %i.v = getelementptr i8, ptr %i.j, i64 36
  %i.w = getelementptr i8, ptr %i.l, i64 44
  %i.x = getelementptr i8, ptr %i.n, i64 52
  %i.y = getelementptr i8, ptr %i.p, i64 60
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %wide.load = load <8 x i16>, ptr %i.z, align 2, !tbaa !38, !alias.scope !186
  %i.aa = zext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.ab = load i16, ptr %i.c, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ac = load i16, ptr %i.e, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ad = load i16, ptr %i.g, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ae = load i16, ptr %i.i, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.af = load i16, ptr %i.k, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ag = load i16, ptr %i.m, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ah = load i16, ptr %i.o, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ai = load i16, ptr %i.q, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.aj = insertelement <8 x i16> poison, i16 %i.ab, i64 0
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.ac, i64 1
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 2
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 3
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 4
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 5
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 6
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 7 ; 2 uses
  %i.ar = load i16, ptr %i.r, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.as = load i16, ptr %i.s, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.at = load i16, ptr %i.t, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.au = load i16, ptr %i.u, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.av = load i16, ptr %i.v, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.aw = load i16, ptr %i.w, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ax = load i16, ptr %i.x, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ay = load i16, ptr %i.y, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.az = insertelement <8 x i16> poison, i16 %i.ar, i64 0
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 1
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 2
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 3
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 4
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 5
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 6
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 7 ; 2 uses
  %i.bh = zext <8 x i16> %i.aq to <8 x i32>
  %i.bi = zext <8 x i16> %i.bg to <8 x i32>
  %i.bj = add nuw nsw <8 x i32> %i.bh, splat (i32 3329)
  %i.bk = sub nsw <8 x i32> %i.bj, %i.bi
  %i.bl = mul <8 x i32> %i.bk, %i.aa              ; 2 uses
  %i.bm = zext <8 x i32> %i.bl to <8 x i64>
  %i.bn = mul nuw nsw <8 x i64> %i.bm, splat (i64 5039)
  %i.bo = lshr <8 x i64> %i.bn, splat (i64 24)
  %i.bp = trunc nuw nsw <8 x i64> %i.bo to <8 x i32>
  %i.bq = mul <8 x i32> %i.bp, splat (i32 62207)
  %i.br = add <8 x i32> %i.bq, %i.bl
  %i.bs = trunc <8 x i32> %i.br to <8 x i16>      ; 2 uses
  %i.bt = add <8 x i16> %i.bs, splat (i16 -3329)  ; 2 uses
  %i.bu = add <8 x i16> %i.bg, %i.aq              ; 2 uses
  %i.bv = add <8 x i16> %i.bu, splat (i16 -3329)  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bx = getelementptr i8, ptr %i.d, i64 10
  %i.by = getelementptr i8, ptr %i.f, i64 18
  %i.bz = getelementptr i8, ptr %i.h, i64 26
  %i.ca = getelementptr i8, ptr %i.j, i64 34
  %i.cb = getelementptr i8, ptr %i.l, i64 42
  %i.cc = getelementptr i8, ptr %i.n, i64 50
  %i.cd = getelementptr i8, ptr %i.p, i64 58
  %i.ce = getelementptr i8, ptr %i.c, i64 6
  %i.cf = getelementptr i8, ptr %i.d, i64 14
  %i.cg = getelementptr i8, ptr %i.f, i64 22
  %i.ch = getelementptr i8, ptr %i.h, i64 30
  %i.ci = getelementptr i8, ptr %i.j, i64 38
  %i.cj = getelementptr i8, ptr %i.l, i64 46
  %i.ck = getelementptr i8, ptr %i.n, i64 54
  %i.cl = getelementptr i8, ptr %i.p, i64 62
  %i.cm = load i16, ptr %i.bw, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.cn = load i16, ptr %i.bx, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.co = load i16, ptr %i.by, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.cp = load i16, ptr %i.bz, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.cq = load i16, ptr %i.ca, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.cu = insertelement <8 x i16> poison, i16 %i.cm, i64 0
  %i.cv = insertelement <8 x i16> %i.cu, i16 %i.cn, i64 1
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.co, i64 2
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.cp, i64 3
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cq, i64 4
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 5
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 6
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 7 ; 2 uses
  %i.dc = load i16, ptr %i.ce, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.dd = load i16, ptr %i.cf, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.de = load i16, ptr %i.cg, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.df = load i16, ptr %i.ch, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.dg = load i16, ptr %i.ci, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.dk = insertelement <8 x i16> poison, i16 %i.dc, i64 0
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 1
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.de, i64 2
  %i.dn = insertelement <8 x i16> %i.dm, i16 %i.df, i64 3
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.dg, i64 4
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.dh, i64 5
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 6
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 7 ; 2 uses
  %i.ds = zext <8 x i16> %i.db to <8 x i32>
  %i.dt = zext <8 x i16> %i.dr to <8 x i32>
  %i.du = add nuw nsw <8 x i32> %i.ds, splat (i32 3329)
  %i.dv = sub nsw <8 x i32> %i.du, %i.dt
  %i.dw = mul <8 x i32> %i.dv, %i.aa              ; 2 uses
  %i.dx = zext <8 x i32> %i.dw to <8 x i64>
  %i.dy = mul nuw nsw <8 x i64> %i.dx, splat (i64 5039)
  %i.dz = lshr <8 x i64> %i.dy, splat (i64 24)
  %i.ea = trunc nuw nsw <8 x i64> %i.dz to <8 x i32>
  %i.eb = mul <8 x i32> %i.ea, splat (i32 62207)
  %i.ec = add <8 x i32> %i.eb, %i.dw
  %i.ed = trunc <8 x i32> %i.ec to <8 x i16>      ; 2 uses
  %i.ee = add <8 x i16> %i.ed, splat (i16 -3329)  ; 2 uses
  %i.ef = add <8 x i16> %i.dr, %i.db              ; 2 uses
  %i.eg = add <8 x i16> %i.ef, splat (i16 -3329)  ; 2 uses
  %i.eh = shufflevector <8 x i16> %i.bv, <8 x i16> %i.eg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ei = icmp slt <16 x i16> %i.eh, zeroinitializer
  %i.ej = shufflevector <8 x i16> %i.bu, <8 x i16> %i.ef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ek = select <16 x i1> %i.ei, <16 x i16> %i.ej, <16 x i16> zeroinitializer
  %i.el = shufflevector <8 x i16> %i.bv, <8 x i16> %i.eg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.em = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.el, <16 x i16> zeroinitializer)
  %i.en = or <16 x i16> %i.ek, %i.em
  %i.eo = shufflevector <8 x i16> %i.bt, <8 x i16> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ep = icmp slt <16 x i16> %i.eo, zeroinitializer
  %i.eq = shufflevector <8 x i16> %i.bs, <8 x i16> %i.ed, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.er = select <16 x i1> %i.ep, <16 x i16> %i.eq, <16 x i16> zeroinitializer
  %i.es = shufflevector <8 x i16> %i.bt, <8 x i16> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.et = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.es, <16 x i16> zeroinitializer)
  %i.eu = or <16 x i16> %i.er, %i.et
  %interleaved.vec = shufflevector <16 x i16> %i.en, <16 x i16> %i.eu, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.c, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ev = icmp eq i64 %index.next, 64
  br i1 %i.ev, label %vector.memcheck50, label %vector.body, !llvm.loop !191

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.021.idx = phi i64 [ %.023.add.130, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %.1 = phi ptr [ %i.ex, %scalar.ph ], [ @kInverseNTTRoots, %vector.memcheck ]
  %.021.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.021.idx ; 2 uses
  %i.ew = getelementptr i8, ptr %0, i64 %.021.idx
  %.ptr26 = getelementptr i8, ptr %i.ew, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 3 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !38
  %i.ez = zext i16 %i.ey to i32                   ; 2 uses
  %.023.add.130 = add nuw nsw i64 %.021.idx, 8
  %i.fa = load <2 x i16>, ptr %.021.ptr, align 2, !tbaa !38 ; 3 uses
  %i.fb = extractelement <2 x i16> %i.fa, i64 0
  %i.fc = zext i16 %i.fb to i32
  %i.fd = load <2 x i16>, ptr %.ptr26, align 2, !tbaa !38 ; 3 uses
  %i.fe = extractelement <2 x i16> %i.fd, i64 0
  %i.ff = zext i16 %i.fe to i32
  %i.fg = add nuw nsw i32 %i.fc, 3329
  %i.fh = sub nsw i32 %i.fg, %i.ff
  %i.fi = mul i32 %i.fh, %i.ez                    ; 2 uses
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul nuw nsw i64 %i.fj, 5039
  %i.fl = lshr i64 %i.fk, 24
  %i.fm = trunc nuw nsw i64 %i.fl to i32
  %.neg.i = mul i32 %i.fm, 62207
  %i.fn = add i32 %.neg.i, %i.fi
  %i.fo = trunc i32 %i.fn to i16
  %i.fp = extractelement <2 x i16> %i.fa, i64 1
  %i.fq = zext i16 %i.fp to i32
  %i.fr = extractelement <2 x i16> %i.fd, i64 1
  %i.fs = zext i16 %i.fr to i32
  %i.ft = add nuw nsw i32 %i.fq, 3329
  %i.fu = sub nsw i32 %i.ft, %i.fs
  %i.fv = mul i32 %i.fu, %i.ez                    ; 2 uses
end_hunk_1
begin_hunk_2_@scalar_inverse_ntt:vector.memcheck
  store i16 %i.apo, ptr %i.ann, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.app = extractelement <8 x i16> %i.apl, i64 7
  store i16 %i.app, ptr %i.ano, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.apq = add <8 x i16> %i.aou, %i.aoe           ; 2 uses
  %i.apr = add <8 x i16> %i.apq, splat (i16 -3329) ; 2 uses
  %i.aps = icmp slt <8 x i16> %i.apr, zeroinitializer
  %i.apt = select <8 x i1> %i.aps, <8 x i16> %i.apq, <8 x i16> zeroinitializer
  %i.apu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.apr, <8 x i16> zeroinitializer)
  %i.apv = or <8 x i16> %i.apt, %i.apu            ; 8 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.sw, i64 14
  %i.apx = getelementptr i8, ptr %i.sx, i64 46
  %i.apy = getelementptr i8, ptr %i.sz, i64 78
  %i.apz = getelementptr i8, ptr %i.tb, i64 110
  %i.aqa = getelementptr i8, ptr %i.td, i64 142   ; 2 uses
  %i.aqb = getelementptr i8, ptr %i.tf, i64 174   ; 2 uses
  %i.aqc = getelementptr i8, ptr %i.th, i64 206   ; 2 uses
  %i.aqd = getelementptr i8, ptr %i.tj, i64 238   ; 2 uses
  %i.aqe = extractelement <8 x i16> %i.apv, i64 4
  store i16 %i.aqe, ptr %i.amz, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqf = extractelement <8 x i16> %i.apv, i64 5
  store i16 %i.aqf, ptr %i.ana, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqg = extractelement <8 x i16> %i.apv, i64 6
  store i16 %i.aqg, ptr %i.anb, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqh = extractelement <8 x i16> %i.apv, i64 7
  store i16 %i.aqh, ptr %i.anc, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqi = getelementptr i8, ptr %i.sw, i64 30
  %i.aqj = getelementptr i8, ptr %i.sx, i64 62
  %i.aqk = getelementptr i8, ptr %i.sz, i64 94
  %i.aql = getelementptr i8, ptr %i.tb, i64 126
  %i.aqm = getelementptr i8, ptr %i.td, i64 158   ; 2 uses
  %i.aqn = getelementptr i8, ptr %i.tf, i64 190   ; 2 uses
  %i.aqo = getelementptr i8, ptr %i.th, i64 222   ; 2 uses
  %i.aqp = getelementptr i8, ptr %i.tj, i64 254   ; 2 uses
  %i.aqq = load i16, ptr %i.apw, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqr = load i16, ptr %i.apx, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqs = load i16, ptr %i.apy, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqt = load i16, ptr %i.apz, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqu = load i16, ptr %i.aqa, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqv = load i16, ptr %i.aqb, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqw = load i16, ptr %i.aqc, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqx = load i16, ptr %i.aqd, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqy = insertelement <8 x i16> poison, i16 %i.aqq, i64 0
  %i.aqz = insertelement <8 x i16> %i.aqy, i16 %i.aqr, i64 1
  %i.ara = insertelement <8 x i16> %i.aqz, i16 %i.aqs, i64 2
  %i.arb = insertelement <8 x i16> %i.ara, i16 %i.aqt, i64 3
  %i.arc = insertelement <8 x i16> %i.arb, i16 %i.aqu, i64 4
  %i.ard = insertelement <8 x i16> %i.arc, i16 %i.aqv, i64 5
  %i.are = insertelement <8 x i16> %i.ard, i16 %i.aqw, i64 6
  %i.arf = insertelement <8 x i16> %i.are, i16 %i.aqx, i64 7 ; 2 uses
  %i.arg = load i16, ptr %i.aqi, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.arh = load i16, ptr %i.aqj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ari = load i16, ptr %i.aqk, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.arj = load i16, ptr %i.aql, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ark = load i16, ptr %i.aqm, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.arl = load i16, ptr %i.aqn, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.arm = load i16, ptr %i.aqo, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.arn = load i16, ptr %i.aqp, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aro = insertelement <8 x i16> poison, i16 %i.arg, i64 0
  %i.arp = insertelement <8 x i16> %i.aro, i16 %i.arh, i64 1
  %i.arq = insertelement <8 x i16> %i.arp, i16 %i.ari, i64 2
  %i.arr = insertelement <8 x i16> %i.arq, i16 %i.arj, i64 3
  %i.ars = insertelement <8 x i16> %i.arr, i16 %i.ark, i64 4
  %i.art = insertelement <8 x i16> %i.ars, i16 %i.arl, i64 5
  %i.aru = insertelement <8 x i16> %i.art, i16 %i.arm, i64 6
  %i.arv = insertelement <8 x i16> %i.aru, i16 %i.arn, i64 7 ; 2 uses
  %i.arw = zext <8 x i16> %i.arf to <8 x i32>
  %i.arx = zext <8 x i16> %i.arv to <8 x i32>
  %i.ary = add nuw nsw <8 x i32> %i.arw, splat (i32 3329)
  %i.arz = sub nsw <8 x i32> %i.ary, %i.arx
  %i.asa = mul <8 x i32> %i.arz, %i.tu            ; 2 uses
  %i.asb = zext <8 x i32> %i.asa to <8 x i64>
  %i.asc = mul nuw nsw <8 x i64> %i.asb, splat (i64 5039)
  %i.asd = lshr <8 x i64> %i.asc, splat (i64 24)
  %i.ase = trunc nuw nsw <8 x i64> %i.asd to <8 x i32>
  %i.asf = mul <8 x i32> %i.ase, splat (i32 62207)
  %i.asg = add <8 x i32> %i.asf, %i.asa
  %i.ash = trunc <8 x i32> %i.asg to <8 x i16>    ; 2 uses
  %i.asi = add <8 x i16> %i.ash, splat (i16 -3329) ; 2 uses
  %i.asj = icmp slt <8 x i16> %i.asi, zeroinitializer
  %i.ask = select <8 x i1> %i.asj, <8 x i16> %i.ash, <8 x i16> zeroinitializer
  %i.asl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.asi, <8 x i16> zeroinitializer)
  %i.asm = or <8 x i16> %i.ask, %i.asl            ; 8 uses
  %i.asn = shufflevector <8 x i16> %i.ajj, <8 x i16> %i.amk, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.aso = shufflevector <8 x i16> %i.apl, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.asp = shufflevector <4 x i16> %i.asn, <4 x i16> %i.aso, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.asq = shufflevector <8 x i16> %i.asm, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.asr = shufflevector <4 x i16> %i.asp, <4 x i16> %i.asq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.asr, ptr %i.ahf, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ass = shufflevector <8 x i16> %i.ajj, <8 x i16> %i.amk, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.ast = shufflevector <8 x i16> %i.apl, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.asu = shufflevector <4 x i16> %i.ass, <4 x i16> %i.ast, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.asv = shufflevector <8 x i16> %i.asm, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.asw = shufflevector <4 x i16> %i.asu, <4 x i16> %i.asv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.asw, ptr %i.ahg, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.asx = shufflevector <8 x i16> %i.ajj, <8 x i16> %i.amk, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %i.asy = shufflevector <8 x i16> %i.apl, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.asz = shufflevector <4 x i16> %i.asx, <4 x i16> %i.asy, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ata = shufflevector <8 x i16> %i.asm, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.atb = shufflevector <4 x i16> %i.asz, <4 x i16> %i.ata, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.atb, ptr %i.ahh, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.atc = shufflevector <8 x i16> %i.ajj, <8 x i16> %i.amk, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.atd = shufflevector <8 x i16> %i.apl, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.ate = shufflevector <4 x i16> %i.atc, <4 x i16> %i.atd, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.atf = shufflevector <8 x i16> %i.asm, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.atg = shufflevector <4 x i16> %i.ate, <4 x i16> %i.atf, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.atg, ptr %i.ahi, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ath = extractelement <8 x i16> %i.asm, i64 4
  store i16 %i.ath, ptr %i.aqm, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ati = extractelement <8 x i16> %i.asm, i64 5
  store i16 %i.ati, ptr %i.aqn, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.atj = extractelement <8 x i16> %i.asm, i64 6
  store i16 %i.atj, ptr %i.aqo, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.atk = extractelement <8 x i16> %i.asm, i64 7
  store i16 %i.atk, ptr %i.aqp, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.atl = add <8 x i16> %i.arv, %i.arf           ; 2 uses
  %i.atm = add <8 x i16> %i.atl, splat (i16 -3329) ; 2 uses
  %i.atn = icmp slt <8 x i16> %i.atm, zeroinitializer
  %i.ato = select <8 x i1> %i.atn, <8 x i16> %i.atl, <8 x i16> zeroinitializer
  %i.atp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.atm, <8 x i16> zeroinitializer)
  %i.atq = or <8 x i16> %i.ato, %i.atp            ; 8 uses
  %i.atr = shufflevector <8 x i16> %i.ajt, <8 x i16> %i.amu, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.ats = shufflevector <8 x i16> %i.apv, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.att = shufflevector <4 x i16> %i.atr, <4 x i16> %i.ats, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.atu = shufflevector <8 x i16> %i.atq, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.atv = shufflevector <4 x i16> %i.att, <4 x i16> %i.atu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.atv, ptr %i.afz, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.atw = shufflevector <8 x i16> %i.ajt, <8 x i16> %i.amu, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.atx = shufflevector <8 x i16> %i.apv, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aty = shufflevector <4 x i16> %i.atw, <4 x i16> %i.atx, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.atz = shufflevector <8 x i16> %i.atq, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aua = shufflevector <4 x i16> %i.aty, <4 x i16> %i.atz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.aua, ptr %i.aga, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aub = shufflevector <8 x i16> %i.ajt, <8 x i16> %i.amu, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %i.auc = shufflevector <8 x i16> %i.apv, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.aud = shufflevector <4 x i16> %i.aub, <4 x i16> %i.auc, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.aue = shufflevector <8 x i16> %i.atq, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.auf = shufflevector <4 x i16> %i.aud, <4 x i16> %i.aue, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.auf, ptr %i.agb, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aug = shufflevector <8 x i16> %i.ajt, <8 x i16> %i.amu, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.auh = shufflevector <8 x i16> %i.apv, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.aui = shufflevector <4 x i16> %i.aug, <4 x i16> %i.auh, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.auj = shufflevector <8 x i16> %i.atq, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.auk = shufflevector <4 x i16> %i.aui, <4 x i16> %i.auj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.auk, ptr %i.agc, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aul = extractelement <8 x i16> %i.atq, i64 4
  store i16 %i.aul, ptr %i.aqa, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aum = extractelement <8 x i16> %i.atq, i64 5
  store i16 %i.aum, ptr %i.aqb, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aun = extractelement <8 x i16> %i.atq, i64 6
  store i16 %i.aun, ptr %i.aqc, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.auo = extractelement <8 x i16> %i.atq, i64 7
  store i16 %i.auo, ptr %i.aqd, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %index.next78 = add nuw i64 %index75, 8         ; 2 uses
  %i.aup = icmp eq i64 %index.next78, 16
  br i1 %i.aup, label %.preheader42.a, label %vector.body74, !llvm.loop !205

scalar.ph72:                                      ; preds = %vector.memcheck66, %scalar.ph72
  %.021.idx.2 = phi i64 [ %.023.add.2.7, %scalar.ph72 ], [ 0, %vector.memcheck66 ] ; 4 uses
  %.1.2 = phi ptr [ %i.aur, %scalar.ph72 ], [ %.lcssa48, %vector.memcheck66 ]
  %.021.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.021.idx.2 ; 2 uses
  %i.auq = getelementptr i8, ptr %0, i64 %.021.idx.2
  %.ptr26.2 = getelementptr i8, ptr %i.auq, i64 16 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %.1.2, i64 2 ; 3 uses
  %i.aus = load i16, ptr %i.aur, align 2, !tbaa !38
  %i.aut = zext i16 %i.aus to i32
  %.023.add.2.7 = add nuw nsw i64 %.021.idx.2, 32
  %i.auu = load <8 x i16>, ptr %.021.ptr.2, align 2, !tbaa !38 ; 2 uses
  %i.auv = load <8 x i16>, ptr %.ptr26.2, align 2, !tbaa !38 ; 2 uses
  %i.auw = zext <8 x i16> %i.auu to <8 x i32>
  %i.aux = zext <8 x i16> %i.auv to <8 x i32>
  %i.auy = add nuw nsw <8 x i32> %i.auw, splat (i32 3329)
  %i.auz = sub nsw <8 x i32> %i.auy, %i.aux
  %i.ava = insertelement <8 x i32> poison, i32 %i.aut, i64 0
  %i.avb = shufflevector <8 x i32> %i.ava, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.avc = mul <8 x i32> %i.auz, %i.avb           ; 2 uses
  %i.avd = zext <8 x i32> %i.avc to <8 x i64>
  %i.ave = mul nuw nsw <8 x i64> %i.avd, splat (i64 5039)
  %i.avf = lshr <8 x i64> %i.ave, splat (i64 24)
  %i.avg = trunc nuw nsw <8 x i64> %i.avf to <8 x i32>
  %i.avh = mul <8 x i32> %i.avg, splat (i32 62207)
  %i.avi = add <8 x i32> %i.avh, %i.avc
  %i.avj = trunc <8 x i32> %i.avi to <8 x i16>    ; 2 uses
  %i.avk = add <8 x i16> %i.avj, splat (i16 -3329) ; 2 uses
  %i.avl = icmp slt <8 x i16> %i.avk, zeroinitializer
  %i.avm = select <8 x i1> %i.avl, <8 x i16> %i.avj, <8 x i16> zeroinitializer
  %i.avn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.avk, <8 x i16> zeroinitializer)
  %i.avo = or <8 x i16> %i.avm, %i.avn
  store <8 x i16> %i.avo, ptr %.ptr26.2, align 2, !tbaa !38
  %i.avp = add <8 x i16> %i.auv, %i.auu           ; 2 uses
  %i.avq = add <8 x i16> %i.avp, splat (i16 -3329) ; 2 uses
  %i.avr = icmp slt <8 x i16> %i.avq, zeroinitializer
  %i.avs = select <8 x i1> %i.avr, <8 x i16> %i.avp, <8 x i16> zeroinitializer
  %i.avt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.avq, <8 x i16> zeroinitializer)
  %i.avu = or <8 x i16> %i.avs, %i.avt
  store <8 x i16> %i.avu, ptr %.021.ptr.2, align 2, !tbaa !38
  %i.avv = icmp samesign ult i64 %.021.idx.2, 480
  br i1 %i.avv, label %scalar.ph72, label %.preheader42.a, !llvm.loop !206

.preheader42.a:                                   ; preds = %vector.body74, %scalar.ph72
  %.lcssa47 = phi ptr [ %i.aur, %scalar.ph72 ], [ %i.st, %vector.body74 ]
  %1 = ptrtoint ptr %0 to i64                     ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.preheader42.a, %.loopexit156
  %.021.idx.3 = phi i64 [ %.023.add.3.lcssa, %.loopexit156 ], [ 0, %.preheader42.a ] ; 4 uses
  %.1.3 = phi ptr [ %i.avw, %.loopexit156 ], [ %.lcssa47, %.preheader42.a ]
  %.021.ptr.3 = getelementptr inbounds i8, ptr %0, i64 %.021.idx.3 ; 3 uses
  %.021.add.3 = add nsw i64 %.021.idx.3, 32       ; 4 uses
  %.ptr26.3 = getelementptr inbounds i8, ptr %0, i64 %.021.add.3
  %i.avw = getelementptr inbounds nuw i8, ptr %.1.3, i64 2 ; 3 uses
  %i.avx = load i16, ptr %i.avw, align 2, !tbaa !38
  %i.avy = zext i16 %i.avx to i32                 ; 2 uses
  %2 = add i64 %.021.idx.3, %1                    ; 2 uses
  %i.avz = add i64 %2, 32
  %i.awa = add i64 %2, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.avz, i64 %i.awa)
  %i.awb = add i64 %.021.idx.3, %1
  %3 = xor i64 %i.awb, -1
  %4 = add i64 %umax, %3                          ; 2 uses
  %i.awc = lshr i64 %4, 1
  %i.awd = add nuw i64 %i.awc, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 14
  br i1 %min.iters.check, label %scalar.ph80.preheader, label %vector.ph81

vector.ph81:                                      ; preds = %bb.a
  %n.vec = and i64 %i.awd, -8                     ; 3 uses
  %i.awe = shl i64 %n.vec, 1                      ; 2 uses
  %i.awf = add i64 %.021.add.3, %i.awe            ; 3 uses
  %i.awg = getelementptr i8, ptr %.021.ptr.3, i64 %i.awe
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.avy, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.awh = getelementptr i8, ptr %0, i64 %.021.add.3
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph81
  %index83 = phi i64 [ 0, %vector.ph81 ], [ %index.next87, %vector.body82 ] ; 2 uses
  %i.awi = shl i64 %index83, 1                    ; 2 uses
  %next.gep84 = getelementptr i8, ptr %.021.ptr.3, i64 %i.awi ; 2 uses
  %i.awj = getelementptr i8, ptr %i.awh, i64 %i.awi ; 2 uses
  %wide.load85 = load <8 x i16>, ptr %next.gep84, align 2, !tbaa !38 ; 2 uses
  %wide.load86 = load <8 x i16>, ptr %i.awj, align 2, !tbaa !38 ; 2 uses
  %i.awk = zext <8 x i16> %wide.load85 to <8 x i32>
  %i.awl = zext <8 x i16> %wide.load86 to <8 x i32>
  %i.awm = add nuw nsw <8 x i32> %i.awk, splat (i32 3329)
  %i.awn = sub nsw <8 x i32> %i.awm, %i.awl
  %i.awo = mul <8 x i32> %i.awn, %broadcast.splat ; 2 uses
  %i.awp = zext <8 x i32> %i.awo to <8 x i64>
  %i.awq = mul nuw nsw <8 x i64> %i.awp, splat (i64 5039)
  %i.awr = lshr <8 x i64> %i.awq, splat (i64 24)
  %i.aws = trunc nuw nsw <8 x i64> %i.awr to <8 x i32>
  %i.awt = mul <8 x i32> %i.aws, splat (i32 62207)
  %i.awu = add <8 x i32> %i.awt, %i.awo
  %i.awv = trunc <8 x i32> %i.awu to <8 x i16>    ; 2 uses
  %i.aww = add <8 x i16> %i.awv, splat (i16 -3329) ; 2 uses
  %i.awx = icmp slt <8 x i16> %i.aww, zeroinitializer
  %i.awy = select <8 x i1> %i.awx, <8 x i16> %i.awv, <8 x i16> zeroinitializer
  %i.awz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aww, <8 x i16> zeroinitializer)
  %i.axa = or <8 x i16> %i.awy, %i.awz
  store <8 x i16> %i.axa, ptr %i.awj, align 2, !tbaa !38
  %i.axb = add <8 x i16> %wide.load86, %wide.load85 ; 2 uses
  %i.axc = add <8 x i16> %i.axb, splat (i16 -3329) ; 2 uses
  %i.axd = icmp slt <8 x i16> %i.axc, zeroinitializer
  %i.axe = select <8 x i1> %i.axd, <8 x i16> %i.axb, <8 x i16> zeroinitializer
  %i.axf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.axc, <8 x i16> zeroinitializer)
  %i.axg = or <8 x i16> %i.axe, %i.axf
  store <8 x i16> %i.axg, ptr %next.gep84, align 2, !tbaa !38
  %index.next87 = add nuw i64 %index83, 8         ; 2 uses
  %i.axh = icmp eq i64 %index.next87, %n.vec
  br i1 %i.axh, label %middle.block88, label %vector.body82, !llvm.loop !207

middle.block88:                                   ; preds = %vector.body82
  %ind.escape = add i64 %i.awf, -2
  %cmp.n = icmp eq i64 %i.awd, %n.vec
  br i1 %cmp.n, label %.loopexit156, label %scalar.ph80.preheader

scalar.ph80.preheader:                            ; preds = %bb.a, %middle.block88
  %.023.idx.3.ph = phi i64 [ %.021.add.3, %bb.a ], [ %i.awf, %middle.block88 ]
  %.122.3.ph = phi ptr [ %.021.ptr.3, %bb.a ], [ %i.awg, %middle.block88 ]
  br label %scalar.ph80

scalar.ph80:                                      ; preds = %scalar.ph80.preheader, %scalar.ph80
  %.023.idx.3 = phi i64 [ %.023.add.3, %scalar.ph80 ], [ %.023.idx.3.ph, %scalar.ph80.preheader ] ; 3 uses
  %.122.3 = phi ptr [ %i.aye, %scalar.ph80 ], [ %.122.3.ph, %scalar.ph80.preheader ] ; 3 uses
  %.023.ptr.3 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.3 ; 2 uses
  %i.axi = load i16, ptr %.122.3, align 2, !tbaa !38 ; 2 uses
  %i.axj = load i16, ptr %.023.ptr.3, align 2, !tbaa !38 ; 2 uses
  %i.axk = zext i16 %i.axi to i32
  %i.axl = zext i16 %i.axj to i32
  %i.axm = add nuw nsw i32 %i.axk, 3329
  %i.axn = sub nsw i32 %i.axm, %i.axl
  %i.axo = mul i32 %i.axn, %i.avy                 ; 2 uses
  %i.axp = zext i32 %i.axo to i64
  %i.axq = mul nuw nsw i64 %i.axp, 5039
  %i.axr = lshr i64 %i.axq, 24
  %i.axs = trunc nuw nsw i64 %i.axr to i32
  %.neg.i.3 = mul i32 %i.axs, 62207
  %i.axt = add i32 %.neg.i.3, %i.axo
  %i.axu = trunc i32 %i.axt to i16                ; 2 uses
  %i.axv = add i16 %i.axu, -3329                  ; 2 uses
  %isneg.i.i.3 = icmp slt i16 %i.axv, 0
  %i.axw = select i1 %isneg.i.i.3, i16 %i.axu, i16 0
  %i.axx = tail call i16 @llvm.smax.i16(i16 %i.axv, i16 0)
  %i.axy = or i16 %i.axw, %i.axx
  %.023.add.3 = add nsw i64 %.023.idx.3, 2        ; 2 uses
  store i16 %i.axy, ptr %.023.ptr.3, align 2, !tbaa !38
  %i.axz = add i16 %i.axj, %i.axi                 ; 2 uses
  %i.aya = add i16 %i.axz, -3329                  ; 2 uses
  %isneg.i.3 = icmp slt i16 %i.aya, 0
  %i.ayb = select i1 %isneg.i.3, i16 %i.axz, i16 0
  %i.ayc = tail call i16 @llvm.smax.i16(i16 %i.aya, i16 0)
  %i.ayd = or i16 %i.ayb, %i.ayc
  %i.aye = getelementptr inbounds nuw i8, ptr %.122.3, i64 2 ; 2 uses
  store i16 %i.ayd, ptr %.122.3, align 2, !tbaa !38
  %i.ayf = icmp ult ptr %i.aye, %.ptr26.3
  br i1 %i.ayf, label %scalar.ph80, label %.loopexit156, !llvm.loop !208

.loopexit156:                                     ; preds = %scalar.ph80, %middle.block88
  %.023.idx.3.lcssa = phi i64 [ %ind.escape, %middle.block88 ], [ %.023.idx.3, %scalar.ph80 ]
  %.023.add.3.lcssa = phi i64 [ %i.awf, %middle.block88 ], [ %.023.add.3, %scalar.ph80 ]
  %i.ayg = icmp slt i64 %.023.idx.3.lcssa, 510
  br i1 %i.ayg, label %bb.a, label %.preheader41.a, !llvm.loop !209

.preheader41.a:                                   ; preds = %.loopexit156
  %5 = ptrtoint ptr %0 to i64                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader41.a, %.loopexit155
  %.021.idx.4 = phi i64 [ %.023.add.4.lcssa, %.loopexit155 ], [ 0, %.preheader41.a ] ; 4 uses
  %.1.4 = phi ptr [ %i.ayh, %.loopexit155 ], [ %i.avw, %.preheader41.a ]
  %.021.ptr.4 = getelementptr inbounds i8, ptr %0, i64 %.021.idx.4 ; 3 uses
  %.021.add.4 = add nsw i64 %.021.idx.4, 64       ; 4 uses
  %.ptr26.4 = getelementptr inbounds i8, ptr %0, i64 %.021.add.4
  %i.ayh = getelementptr inbounds nuw i8, ptr %.1.4, i64 2 ; 3 uses
  %i.ayi = load i16, ptr %i.ayh, align 2, !tbaa !38
  %i.ayj = zext i16 %i.ayi to i32                 ; 2 uses
  %6 = add i64 %.021.idx.4, %5                    ; 2 uses
  %i.ayk = add i64 %6, 64
  %i.ayl = add i64 %6, 2
  %umax90 = tail call i64 @llvm.umax.i64(i64 %i.ayk, i64 %i.ayl)
  %i.aym = add i64 %.021.idx.4, %5
  %7 = xor i64 %i.aym, -1
  %8 = add i64 %umax90, %7                        ; 2 uses
  %i.ayn = lshr i64 %8, 1
  %i.ayo = add nuw i64 %i.ayn, 1                  ; 2 uses
  %min.iters.check92 = icmp ult i64 %8, 14
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %bb.b
  %n.vec95 = and i64 %i.ayo, -8                   ; 3 uses
  %i.ayp = shl i64 %n.vec95, 1                    ; 2 uses
  %i.ayq = add i64 %.021.add.4, %i.ayp            ; 3 uses
  %i.ayr = getelementptr i8, ptr %.021.ptr.4, i64 %i.ayp
  %broadcast.splatinsert96 = insertelement <8 x i32> poison, i32 %i.ayj, i64 0
  %broadcast.splat97 = shufflevector <8 x i32> %broadcast.splatinsert96, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ays = getelementptr i8, ptr %0, i64 %.021.add.4
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph93
  %index99 = phi i64 [ 0, %vector.ph93 ], [ %index.next103, %vector.body98 ] ; 2 uses
  %i.ayt = shl i64 %index99, 1                    ; 2 uses
  %next.gep100 = getelementptr i8, ptr %.021.ptr.4, i64 %i.ayt ; 2 uses
  %i.ayu = getelementptr i8, ptr %i.ays, i64 %i.ayt ; 2 uses
  %wide.load101.a = load <8 x i16>, ptr %next.gep100, align 2, !tbaa !38 ; 2 uses
  %wide.load102 = load <8 x i16>, ptr %i.ayu, align 2, !tbaa !38 ; 2 uses
  %i.ayv = zext <8 x i16> %wide.load101.a to <8 x i32>
  %i.ayw = zext <8 x i16> %wide.load102 to <8 x i32>
  %i.ayx = add nuw nsw <8 x i32> %i.ayv, splat (i32 3329)
  %i.ayy = sub nsw <8 x i32> %i.ayx, %i.ayw
  %i.ayz = mul <8 x i32> %i.ayy, %broadcast.splat97 ; 2 uses
  %i.aza = zext <8 x i32> %i.ayz to <8 x i64>
  %i.azb = mul nuw nsw <8 x i64> %i.aza, splat (i64 5039)
  %i.azc = lshr <8 x i64> %i.azb, splat (i64 24)
  %i.azd = trunc nuw nsw <8 x i64> %i.azc to <8 x i32>
  %i.aze = mul <8 x i32> %i.azd, splat (i32 62207)
  %i.azf = add <8 x i32> %i.aze, %i.ayz
  %i.azg = trunc <8 x i32> %i.azf to <8 x i16>    ; 2 uses
  %i.azh = add <8 x i16> %i.azg, splat (i16 -3329) ; 2 uses
  %i.azi = icmp slt <8 x i16> %i.azh, zeroinitializer
  %i.azj = select <8 x i1> %i.azi, <8 x i16> %i.azg, <8 x i16> zeroinitializer
  %i.azk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.azh, <8 x i16> zeroinitializer)
  %i.azl = or <8 x i16> %i.azj, %i.azk
  store <8 x i16> %i.azl, ptr %i.ayu, align 2, !tbaa !38
  %i.azm = add <8 x i16> %wide.load102, %wide.load101.a ; 2 uses
  %i.azn = add <8 x i16> %i.azm, splat (i16 -3329) ; 2 uses
  %i.azo = icmp slt <8 x i16> %i.azn, zeroinitializer
  %i.azp = select <8 x i1> %i.azo, <8 x i16> %i.azm, <8 x i16> zeroinitializer
  %i.azq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.azn, <8 x i16> zeroinitializer)
  %i.azr = or <8 x i16> %i.azp, %i.azq
  store <8 x i16> %i.azr, ptr %next.gep100, align 2, !tbaa !38
  %index.next103 = add nuw i64 %index99, 8        ; 2 uses
  %i.azs = icmp eq i64 %index.next103, %n.vec95
  br i1 %i.azs, label %middle.block104, label %vector.body98, !llvm.loop !210

middle.block104:                                  ; preds = %vector.body98
  %ind.escape105 = add i64 %i.ayq, -2
  %cmp.n106 = icmp eq i64 %i.ayo, %n.vec95
  br i1 %cmp.n106, label %.loopexit155, label %scalar.ph91.preheader

scalar.ph91.preheader:                            ; preds = %bb.b, %middle.block104
  %.023.idx.4.ph = phi i64 [ %.021.add.4, %bb.b ], [ %i.ayq, %middle.block104 ]
  %.122.4.ph = phi ptr [ %.021.ptr.4, %bb.b ], [ %i.ayr, %middle.block104 ]
  br label %scalar.ph91

scalar.ph91:                                      ; preds = %scalar.ph91.preheader, %scalar.ph91
  %.023.idx.4 = phi i64 [ %.023.add.4, %scalar.ph91 ], [ %.023.idx.4.ph, %scalar.ph91.preheader ] ; 3 uses
  %.122.4 = phi ptr [ %i.bap, %scalar.ph91 ], [ %.122.4.ph, %scalar.ph91.preheader ] ; 3 uses
  %.023.ptr.4 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.4 ; 2 uses
  %i.azt = load i16, ptr %.122.4, align 2, !tbaa !38 ; 2 uses
  %i.azu = load i16, ptr %.023.ptr.4, align 2, !tbaa !38 ; 2 uses
  %i.azv = zext i16 %i.azt to i32
  %i.azw = zext i16 %i.azu to i32
  %i.azx = add nuw nsw i32 %i.azv, 3329
  %i.azy = sub nsw i32 %i.azx, %i.azw
  %i.azz = mul i32 %i.azy, %i.ayj                 ; 2 uses
  %i.baa = zext i32 %i.azz to i64
  %i.bab = mul nuw nsw i64 %i.baa, 5039
  %i.bac = lshr i64 %i.bab, 24
  %i.bad = trunc nuw nsw i64 %i.bac to i32
  %.neg.i.4 = mul i32 %i.bad, 62207
  %i.bae = add i32 %.neg.i.4, %i.azz
  %i.baf = trunc i32 %i.bae to i16                ; 2 uses
  %i.bag = add i16 %i.baf, -3329                  ; 2 uses
  %isneg.i.i.4 = icmp slt i16 %i.bag, 0
  %i.bah = select i1 %isneg.i.i.4, i16 %i.baf, i16 0
  %i.bai = tail call i16 @llvm.smax.i16(i16 %i.bag, i16 0)
  %i.baj = or i16 %i.bah, %i.bai
  %.023.add.4 = add nsw i64 %.023.idx.4, 2        ; 2 uses
  store i16 %i.baj, ptr %.023.ptr.4, align 2, !tbaa !38
  %i.bak = add i16 %i.azu, %i.azt                 ; 2 uses
  %i.bal = add i16 %i.bak, -3329                  ; 2 uses
  %isneg.i.4 = icmp slt i16 %i.bal, 0
  %i.bam = select i1 %isneg.i.4, i16 %i.bak, i16 0
  %i.ban = tail call i16 @llvm.smax.i16(i16 %i.bal, i16 0)
  %i.bao = or i16 %i.bam, %i.ban
  %i.bap = getelementptr inbounds nuw i8, ptr %.122.4, i64 2 ; 2 uses
  store i16 %i.bao, ptr %.122.4, align 2, !tbaa !38
  %i.baq = icmp ult ptr %i.bap, %.ptr26.4
  br i1 %i.baq, label %scalar.ph91, label %.loopexit155, !llvm.loop !211

.loopexit155:                                     ; preds = %scalar.ph91, %middle.block104
  %.023.idx.4.lcssa = phi i64 [ %ind.escape105, %middle.block104 ], [ %.023.idx.4, %scalar.ph91 ]
  %.023.add.4.lcssa = phi i64 [ %i.ayq, %middle.block104 ], [ %.023.add.4, %scalar.ph91 ]
  %i.bar = icmp slt i64 %.023.idx.4.lcssa, 510
  br i1 %i.bar, label %bb.b, label %.preheader40.a, !llvm.loop !209

.preheader40.a:                                   ; preds = %.loopexit155
  %9 = ptrtoint ptr %0 to i64                     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader40.a, %.loopexit154
  %.021.idx.5 = phi i64 [ %.023.add.5.lcssa, %.loopexit154 ], [ 0, %.preheader40.a ] ; 4 uses
  %.1.5 = phi ptr [ %i.bas, %.loopexit154 ], [ %i.ayh, %.preheader40.a ]
  %.021.ptr.5 = getelementptr inbounds i8, ptr %0, i64 %.021.idx.5 ; 3 uses
  %.021.add.5 = add nsw i64 %.021.idx.5, 128      ; 4 uses
  %.ptr26.5 = getelementptr inbounds i8, ptr %0, i64 %.021.add.5
  %i.bas = getelementptr inbounds nuw i8, ptr %.1.5, i64 2 ; 3 uses
  %i.bat = load i16, ptr %i.bas, align 2, !tbaa !38
  %i.bau = zext i16 %i.bat to i32                 ; 2 uses
  %10 = add i64 %.021.idx.5, %9                   ; 2 uses
  %i.bav = add i64 %10, 128
  %i.baw = add i64 %10, 2
  %umax109 = tail call i64 @llvm.umax.i64(i64 %i.bav, i64 %i.baw)
  %i.bax = add i64 %.021.idx.5, %9
  %11 = xor i64 %i.bax, -1
  %12 = add i64 %umax109, %11                     ; 2 uses
  %i.bay = lshr i64 %12, 1
  %i.baz = add nuw i64 %i.bay, 1                  ; 2 uses
  %min.iters.check111 = icmp ult i64 %12, 14
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %bb.c
  %n.vec114 = and i64 %i.baz, -8                  ; 3 uses
  %i.bba = shl i64 %n.vec114, 1                   ; 2 uses
  %i.bbb = add i64 %.021.add.5, %i.bba            ; 3 uses
  %i.bbc = getelementptr i8, ptr %.021.ptr.5, i64 %i.bba
  %broadcast.splatinsert115 = insertelement <8 x i32> poison, i32 %i.bau, i64 0
  %broadcast.splat116 = shufflevector <8 x i32> %broadcast.splatinsert115, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bbd = getelementptr i8, ptr %0, i64 %.021.add.5
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph112
  %index118 = phi i64 [ 0, %vector.ph112 ], [ %index.next122, %vector.body117 ] ; 2 uses
  %i.bbe = shl i64 %index118, 1                   ; 2 uses
  %next.gep119 = getelementptr i8, ptr %.021.ptr.5, i64 %i.bbe ; 2 uses
  %i.bbf = getelementptr i8, ptr %i.bbd, i64 %i.bbe ; 2 uses
  %wide.load120 = load <8 x i16>, ptr %next.gep119, align 2, !tbaa !38 ; 2 uses
  %wide.load121 = load <8 x i16>, ptr %i.bbf, align 2, !tbaa !38 ; 2 uses
  %i.bbg = zext <8 x i16> %wide.load120 to <8 x i32>
  %i.bbh = zext <8 x i16> %wide.load121 to <8 x i32>
  %i.bbi = add nuw nsw <8 x i32> %i.bbg, splat (i32 3329)
  %i.bbj = sub nsw <8 x i32> %i.bbi, %i.bbh
  %i.bbk = mul <8 x i32> %i.bbj, %broadcast.splat116 ; 2 uses
  %i.bbl = zext <8 x i32> %i.bbk to <8 x i64>
  %i.bbm = mul nuw nsw <8 x i64> %i.bbl, splat (i64 5039)
  %i.bbn = lshr <8 x i64> %i.bbm, splat (i64 24)
  %i.bbo = trunc nuw nsw <8 x i64> %i.bbn to <8 x i32>
  %i.bbp = mul <8 x i32> %i.bbo, splat (i32 62207)
  %i.bbq = add <8 x i32> %i.bbp, %i.bbk
  %i.bbr = trunc <8 x i32> %i.bbq to <8 x i16>    ; 2 uses
  %i.bbs = add <8 x i16> %i.bbr, splat (i16 -3329) ; 2 uses
  %i.bbt = icmp slt <8 x i16> %i.bbs, zeroinitializer
  %i.bbu = select <8 x i1> %i.bbt, <8 x i16> %i.bbr, <8 x i16> zeroinitializer
  %i.bbv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bbs, <8 x i16> zeroinitializer)
  %i.bbw = or <8 x i16> %i.bbu, %i.bbv
  store <8 x i16> %i.bbw, ptr %i.bbf, align 2, !tbaa !38
  %i.bbx = add <8 x i16> %wide.load121, %wide.load120 ; 2 uses
  %i.bby = add <8 x i16> %i.bbx, splat (i16 -3329) ; 2 uses
  %i.bbz = icmp slt <8 x i16> %i.bby, zeroinitializer
  %i.bca = select <8 x i1> %i.bbz, <8 x i16> %i.bbx, <8 x i16> zeroinitializer
  %i.bcb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bby, <8 x i16> zeroinitializer)
  %i.bcc = or <8 x i16> %i.bca, %i.bcb
  store <8 x i16> %i.bcc, ptr %next.gep119, align 2, !tbaa !38
  %index.next122 = add nuw i64 %index118, 8       ; 2 uses
  %i.bcd = icmp eq i64 %index.next122, %n.vec114
  br i1 %i.bcd, label %middle.block123, label %vector.body117, !llvm.loop !212

middle.block123:                                  ; preds = %vector.body117
  %ind.escape124 = add i64 %i.bbb, -2
  %cmp.n125 = icmp eq i64 %i.baz, %n.vec114
  br i1 %cmp.n125, label %.loopexit154, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %bb.c, %middle.block123
  %.023.idx.5.ph = phi i64 [ %.021.add.5, %bb.c ], [ %i.bbb, %middle.block123 ]
  %.122.5.ph = phi ptr [ %.021.ptr.5, %bb.c ], [ %i.bbc, %middle.block123 ]
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %.023.idx.5 = phi i64 [ %.023.add.5, %scalar.ph110 ], [ %.023.idx.5.ph, %scalar.ph110.preheader ] ; 3 uses
  %.122.5 = phi ptr [ %i.bda, %scalar.ph110 ], [ %.122.5.ph, %scalar.ph110.preheader ] ; 3 uses
  %.023.ptr.5 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.5 ; 2 uses
  %i.bce = load i16, ptr %.122.5, align 2, !tbaa !38 ; 2 uses
  %i.bcf = load i16, ptr %.023.ptr.5, align 2, !tbaa !38 ; 2 uses
  %i.bcg = zext i16 %i.bce to i32
  %i.bch = zext i16 %i.bcf to i32
  %i.bci = add nuw nsw i32 %i.bcg, 3329
  %i.bcj = sub nsw i32 %i.bci, %i.bch
  %i.bck = mul i32 %i.bcj, %i.bau                 ; 2 uses
  %i.bcl = zext i32 %i.bck to i64
  %i.bcm = mul nuw nsw i64 %i.bcl, 5039
  %i.bcn = lshr i64 %i.bcm, 24
  %i.bco = trunc nuw nsw i64 %i.bcn to i32
  %.neg.i.5 = mul i32 %i.bco, 62207
  %i.bcp = add i32 %.neg.i.5, %i.bck
  %i.bcq = trunc i32 %i.bcp to i16                ; 2 uses
  %i.bcr = add i16 %i.bcq, -3329                  ; 2 uses
  %isneg.i.i.5 = icmp slt i16 %i.bcr, 0
  %i.bcs = select i1 %isneg.i.i.5, i16 %i.bcq, i16 0
  %i.bct = tail call i16 @llvm.smax.i16(i16 %i.bcr, i16 0)
  %i.bcu = or i16 %i.bcs, %i.bct
  %.023.add.5 = add nsw i64 %.023.idx.5, 2        ; 2 uses
  store i16 %i.bcu, ptr %.023.ptr.5, align 2, !tbaa !38
  %i.bcv = add i16 %i.bcf, %i.bce                 ; 2 uses
  %i.bcw = add i16 %i.bcv, -3329                  ; 2 uses
  %isneg.i.5 = icmp slt i16 %i.bcw, 0
  %i.bcx = select i1 %isneg.i.5, i16 %i.bcv, i16 0
  %i.bcy = tail call i16 @llvm.smax.i16(i16 %i.bcw, i16 0)
  %i.bcz = or i16 %i.bcx, %i.bcy
  %i.bda = getelementptr inbounds nuw i8, ptr %.122.5, i64 2 ; 2 uses
  store i16 %i.bcz, ptr %.122.5, align 2, !tbaa !38
  %i.bdb = icmp ult ptr %i.bda, %.ptr26.5
  br i1 %i.bdb, label %scalar.ph110, label %.loopexit154, !llvm.loop !213

.loopexit154:                                     ; preds = %scalar.ph110, %middle.block123
  %.023.idx.5.lcssa = phi i64 [ %ind.escape124, %middle.block123 ], [ %.023.idx.5, %scalar.ph110 ]
  %.023.add.5.lcssa = phi i64 [ %i.bbb, %middle.block123 ], [ %.023.add.5, %scalar.ph110 ]
  %i.bdc = icmp slt i64 %.023.idx.5.lcssa, 510
  br i1 %i.bdc, label %bb.c, label %.preheader39.a, !llvm.loop !209

.preheader39.a:                                   ; preds = %.loopexit154
  %13 = ptrtoint ptr %0 to i64                    ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader39.a, %.loopexit
  %.021.idx.6 = phi i64 [ %.023.add.6.lcssa, %.loopexit ], [ 0, %.preheader39.a ] ; 4 uses
  %.1.6 = phi ptr [ %i.bdd, %.loopexit ], [ %i.bas, %.preheader39.a ]
  %.021.ptr.6 = getelementptr inbounds i8, ptr %0, i64 %.021.idx.6 ; 3 uses
  %.021.add.6 = add nsw i64 %.021.idx.6, 256      ; 4 uses
  %.ptr26.6 = getelementptr inbounds i8, ptr %0, i64 %.021.add.6
  %i.bdd = getelementptr inbounds nuw i8, ptr %.1.6, i64 2 ; 2 uses
  %i.bde = load i16, ptr %i.bdd, align 2, !tbaa !38
  %i.bdf = zext i16 %i.bde to i32                 ; 2 uses
  %14 = add i64 %.021.idx.6, %13                  ; 2 uses
  %i.bdg = add i64 %14, 256
  %i.bdh = add i64 %14, 2
  %umax128 = tail call i64 @llvm.umax.i64(i64 %i.bdg, i64 %i.bdh)
  %i.bdi = add i64 %.021.idx.6, %13
  %15 = xor i64 %i.bdi, -1
  %16 = add i64 %umax128, %15                     ; 2 uses
  %i.bdj = lshr i64 %16, 1
  %i.bdk = add nuw i64 %i.bdj, 1                  ; 2 uses
  %min.iters.check130 = icmp ult i64 %16, 14
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %bb.d
  %n.vec133 = and i64 %i.bdk, -8                  ; 3 uses
  %i.bdl = shl i64 %n.vec133, 1                   ; 2 uses
  %i.bdm = add i64 %.021.add.6, %i.bdl            ; 3 uses
  %i.bdn = getelementptr i8, ptr %.021.ptr.6, i64 %i.bdl
  %broadcast.splatinsert134 = insertelement <8 x i32> poison, i32 %i.bdf, i64 0
  %broadcast.splat135 = shufflevector <8 x i32> %broadcast.splatinsert134, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bdo = getelementptr i8, ptr %0, i64 %.021.add.6
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph131
  %index137 = phi i64 [ 0, %vector.ph131 ], [ %index.next141, %vector.body136 ] ; 2 uses
  %i.bdp = shl i64 %index137, 1                   ; 2 uses
  %next.gep138 = getelementptr i8, ptr %.021.ptr.6, i64 %i.bdp ; 2 uses
  %i.bdq = getelementptr i8, ptr %i.bdo, i64 %i.bdp ; 2 uses
  %wide.load139 = load <8 x i16>, ptr %next.gep138, align 2, !tbaa !38 ; 2 uses
  %wide.load140 = load <8 x i16>, ptr %i.bdq, align 2, !tbaa !38 ; 2 uses
  %i.bdr = zext <8 x i16> %wide.load139 to <8 x i32>
  %i.bds = zext <8 x i16> %wide.load140 to <8 x i32>
  %i.bdt = add nuw nsw <8 x i32> %i.bdr, splat (i32 3329)
  %i.bdu = sub nsw <8 x i32> %i.bdt, %i.bds
  %i.bdv = mul <8 x i32> %i.bdu, %broadcast.splat135 ; 2 uses
  %i.bdw = zext <8 x i32> %i.bdv to <8 x i64>
  %i.bdx = mul nuw nsw <8 x i64> %i.bdw, splat (i64 5039)
  %i.bdy = lshr <8 x i64> %i.bdx, splat (i64 24)
  %i.bdz = trunc nuw nsw <8 x i64> %i.bdy to <8 x i32>
  %i.bea = mul <8 x i32> %i.bdz, splat (i32 62207)
  %i.beb = add <8 x i32> %i.bea, %i.bdv
  %i.bec = trunc <8 x i32> %i.beb to <8 x i16>    ; 2 uses
  %i.bed = add <8 x i16> %i.bec, splat (i16 -3329) ; 2 uses
  %i.bee = icmp slt <8 x i16> %i.bed, zeroinitializer
  %i.bef = select <8 x i1> %i.bee, <8 x i16> %i.bec, <8 x i16> zeroinitializer
  %i.beg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bed, <8 x i16> zeroinitializer)
  %i.beh = or <8 x i16> %i.bef, %i.beg
  store <8 x i16> %i.beh, ptr %i.bdq, align 2, !tbaa !38
  %i.bei = add <8 x i16> %wide.load140, %wide.load139 ; 2 uses
  %i.bej = add <8 x i16> %i.bei, splat (i16 -3329) ; 2 uses
  %i.bek = icmp slt <8 x i16> %i.bej, zeroinitializer
  %i.bel = select <8 x i1> %i.bek, <8 x i16> %i.bei, <8 x i16> zeroinitializer
  %i.bem = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bej, <8 x i16> zeroinitializer)
  %i.ben = or <8 x i16> %i.bel, %i.bem
  store <8 x i16> %i.ben, ptr %next.gep138, align 2, !tbaa !38
  %index.next141 = add nuw i64 %index137, 8       ; 2 uses
  %i.beo = icmp eq i64 %index.next141, %n.vec133
  br i1 %i.beo, label %middle.block142, label %vector.body136, !llvm.loop !214

middle.block142:                                  ; preds = %vector.body136
  %ind.escape143 = add i64 %i.bdm, -2
  %cmp.n144 = icmp eq i64 %i.bdk, %n.vec133
  br i1 %cmp.n144, label %.loopexit, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %bb.d, %middle.block142
  %.023.idx.6.ph = phi i64 [ %.021.add.6, %bb.d ], [ %i.bdm, %middle.block142 ]
  %.122.6.ph = phi ptr [ %.021.ptr.6, %bb.d ], [ %i.bdn, %middle.block142 ]
  br label %scalar.ph129

scalar.ph129:                                     ; preds = %scalar.ph129.preheader, %scalar.ph129
  %.023.idx.6 = phi i64 [ %.023.add.6, %scalar.ph129 ], [ %.023.idx.6.ph, %scalar.ph129.preheader ] ; 3 uses
  %.122.6 = phi ptr [ %i.bfl, %scalar.ph129 ], [ %.122.6.ph, %scalar.ph129.preheader ] ; 3 uses
  %.023.ptr.6 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.6 ; 2 uses
  %i.bep = load i16, ptr %.122.6, align 2, !tbaa !38 ; 2 uses
  %i.beq = load i16, ptr %.023.ptr.6, align 2, !tbaa !38 ; 2 uses
  %i.ber = zext i16 %i.bep to i32
  %i.bes = zext i16 %i.beq to i32
  %i.bet = add nuw nsw i32 %i.ber, 3329
  %i.beu = sub nsw i32 %i.bet, %i.bes
  %i.bev = mul i32 %i.beu, %i.bdf                 ; 2 uses
  %i.bew = zext i32 %i.bev to i64
  %i.bex = mul nuw nsw i64 %i.bew, 5039
  %i.bey = lshr i64 %i.bex, 24
  %i.bez = trunc nuw nsw i64 %i.bey to i32
  %.neg.i.6 = mul i32 %i.bez, 62207
  %i.bfa = add i32 %.neg.i.6, %i.bev
  %i.bfb = trunc i32 %i.bfa to i16                ; 2 uses
  %i.bfc = add i16 %i.bfb, -3329                  ; 2 uses
  %isneg.i.i.6 = icmp slt i16 %i.bfc, 0
  %i.bfd = select i1 %isneg.i.i.6, i16 %i.bfb, i16 0
  %i.bfe = tail call i16 @llvm.smax.i16(i16 %i.bfc, i16 0)
  %i.bff = or i16 %i.bfd, %i.bfe
  %.023.add.6 = add nsw i64 %.023.idx.6, 2        ; 2 uses
  store i16 %i.bff, ptr %.023.ptr.6, align 2, !tbaa !38
  %i.bfg = add i16 %i.beq, %i.bep                 ; 2 uses
  %i.bfh = add i16 %i.bfg, -3329                  ; 2 uses
  %isneg.i.6 = icmp slt i16 %i.bfh, 0
  %i.bfi = select i1 %isneg.i.6, i16 %i.bfg, i16 0
  %i.bfj = tail call i16 @llvm.smax.i16(i16 %i.bfh, i16 0)
  %i.bfk = or i16 %i.bfi, %i.bfj
  %i.bfl = getelementptr inbounds nuw i8, ptr %.122.6, i64 2 ; 2 uses
  store i16 %i.bfk, ptr %.122.6, align 2, !tbaa !38
  %i.bfm = icmp ult ptr %i.bfl, %.ptr26.6
  br i1 %i.bfm, label %scalar.ph129, label %.loopexit, !llvm.loop !215

.loopexit:                                        ; preds = %scalar.ph129, %middle.block142
  %.023.idx.6.lcssa = phi i64 [ %ind.escape143, %middle.block142 ], [ %.023.idx.6, %scalar.ph129 ]
  %.023.add.6.lcssa = phi i64 [ %i.bdm, %middle.block142 ], [ %.023.add.6, %scalar.ph129 ]
  %i.bfn = icmp slt i64 %.023.idx.6.lcssa, 510
  br i1 %i.bfn, label %bb.d, label %vector.body149, !llvm.loop !209

vector.body149:                                   ; preds = %.loopexit, %vector.body149
  %index150 = phi i64 [ %index.next152, %vector.body149 ], [ 0, %.loopexit ] ; 2 uses
  %i.bfo = shl i64 %index150, 1
  %i.bfp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bfo ; 2 uses
  %wide.load151 = load <8 x i16>, ptr %i.bfp, align 2, !tbaa !38
  %i.bfq = zext <8 x i16> %wide.load151 to <8 x i32>
  %i.bfr = mul nuw nsw <8 x i32> %i.bfq, splat (i32 3303) ; 2 uses
  %i.bfs = zext nneg <8 x i32> %i.bfr to <8 x i64>
  %i.bft = mul nuw nsw <8 x i64> %i.bfs, splat (i64 5039)
  %i.bfu = lshr <8 x i64> %i.bft, splat (i64 24)
  %i.bfv = trunc nuw nsw <8 x i64> %i.bfu to <8 x i32>
  %i.bfw = mul nuw <8 x i32> %i.bfv, splat (i32 62207)
  %i.bfx = add nuw <8 x i32> %i.bfw, %i.bfr
  %i.bfy = trunc <8 x i32> %i.bfx to <8 x i16>    ; 2 uses
  %i.bfz = add <8 x i16> %i.bfy, splat (i16 -3329) ; 2 uses
  %i.bga = icmp slt <8 x i16> %i.bfz, zeroinitializer
  %i.bgb = select <8 x i1> %i.bga, <8 x i16> %i.bfy, <8 x i16> zeroinitializer
  %i.bgc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bfz, <8 x i16> zeroinitializer)
  %i.bgd = or <8 x i16> %i.bgb, %i.bgc
  store <8 x i16> %i.bgd, ptr %i.bfp, align 2, !tbaa !38
  %index.next152 = add nuw i64 %index150, 8       ; 2 uses
  %i.bge = icmp eq i64 %index.next152, 256
  br i1 %i.bge, label %scalar_mult_const.exit, label %vector.body149, !llvm.loop !216

scalar_mult_const.exit:                           ; preds = %vector.body149
  ret void
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smax.v2i16(<2 x i16>, <2 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.smax.v32i16(<32 x i16>, <32 x i16>) #11

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !15, i64 64}
!10 = !{!"ossl_ml_kem_key_st", !11, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !14, i64 48, !14, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !14, i64 88, !14, i64 96, !6, i64 104, !7, i64 108, !14, i64 176}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS15ossl_lib_ctx_st", !11, i64 0}
!13 = !{!"p1 _ZTS9evp_md_st", !11, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"p1 _ZTS21ossl_ml_kem_scalar_st", !11, i64 0}
!16 = !{!10, !15, i64 80}
!17 = !{!10, !11, i64 0}
!18 = !{!19, !6, i64 72}
!19 = !{!"", !14, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84}
!20 = !{!"long", !7, i64 0}
!21 = !{!10, !12, i64 8}
!22 = !{!10, !6, i64 104}
!23 = !{!10, !13, i64 16}
!24 = !{!10, !13, i64 24}
!25 = !{!10, !13, i64 32}
!26 = !{!10, !13, i64 40}
end_hunk_2
