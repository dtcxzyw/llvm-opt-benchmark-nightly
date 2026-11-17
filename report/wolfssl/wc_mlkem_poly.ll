Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/wc_mlkem_poly?download=true
inline.NumInlined: 49
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mlkem_vec_decompress_11:bb.a
  %i.bm = trunc nuw nsw i32 %i.bl to i16
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %.idx.i ; 8 uses
  store i16 %i.bm, ptr %gep.i, align 2, !tbaa !10
  %.masked56.i = and i32 %i.l, 2016
  %i.bn = or disjoint i32 %.masked56.i, %i.h
  %i.bo = mul nuw nsw i32 %i.bn, 3329
  %i.bp = add nuw nsw i32 %i.bo, 1024
  %i.bq = lshr i32 %i.bp, 11
  %i.br = trunc nuw nsw i32 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %gep.i, i64 2
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !10
  %.masked58.i = and i32 %i.w, 1024
  %i.bt = or disjoint i32 %.masked58.i, %i.s
  %i.bu = mul nuw nsw i32 %i.bt, 3329
  %i.bv = add nuw nsw i32 %i.bu, 1024
  %i.bw = lshr i32 %i.bv, 11
  %i.bx = trunc nuw nsw i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !10
  %.masked59.i = and i32 %i.ac, 1920
  %i.bz = or disjoint i32 %.masked59.i, %i.y
  %i.ca = mul nuw nsw i32 %i.bz, 3329
  %i.cb = add nuw nsw i32 %i.ca, 1024
  %i.cc = lshr i32 %i.cb, 11
  %i.cd = trunc nuw nsw i32 %i.cc to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %gep.i, i64 6
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !10
  %.masked60.i = and i32 %i.ai, 2032
  %i.cf = or disjoint i32 %.masked60.i, %i.ae
  %i.cg = mul nuw nsw i32 %i.cf, 3329
  %i.ch = add nuw nsw i32 %i.cg, 1024
  %i.ci = lshr i32 %i.ch, 11
  %i.cj = trunc nuw nsw i32 %i.ci to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !10
  %.masked62.i = and i32 %i.at, 1536
  %i.cl = or disjoint i32 %.masked62.i, %i.ap
  %i.cm = mul nuw nsw i32 %i.cl, 3329
  %i.cn = add nuw nsw i32 %i.cm, 1024
  %i.co = lshr i32 %i.cn, 11
  %i.cp = trunc nuw nsw i32 %i.co to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %gep.i, i64 10
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !10
  %.masked63.i = and i32 %i.az, 1984
  %i.cr = or disjoint i32 %.masked63.i, %i.av
  %i.cs = mul nuw nsw i32 %i.cr, 3329
  %i.ct = add nuw nsw i32 %i.cs, 1024
  %i.cu = lshr i32 %i.ct, 11
  %i.cv = trunc nuw nsw i32 %i.cu to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %gep.i, i64 12
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !10
  %i.cx = mul nuw nsw i32 %i.bg, 3329
  %i.cy = add nuw nsw i32 %i.cx, 1024
  %i.cz = lshr i32 %i.cy, 11
  %i.da = trunc nuw nsw i32 %i.cz to i16
  %i.db = getelementptr inbounds nuw i8, ptr %gep.i, i64 14
  store i16 %i.da, ptr %i.db, align 2, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %bb.c, label %bb.b, !llvm.loop !73

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next70.i, 4
  br i1 %exitcond72.not.i, label %mlkem_vec_decompress_11_c.exit, label %.preheader.i, !llvm.loop !74

mlkem_vec_decompress_11_c.exit:                   ; preds = %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mlkem_compress_4(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  tail call fastcc void @mlkem_csubq_c(ptr noundef %1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.033.i = phi ptr [ %0, %bb.a ], [ %i.p, %bb.b ] ; 2 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.b = load <8 x i16>, ptr %i.a, align 2, !tbaa !10 ; 2 uses
  %i.c = shufflevector <8 x i16> %i.b, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.d = sext <4 x i16> %i.c to <4 x i32>
  %i.e = mul <4 x i32> %i.d, splat (i32 1290160)
  %i.f = add <4 x i32> %i.e, splat (i32 134257264)
  %i.g = lshr <4 x i32> %i.f, splat (i32 28)
  %i.h = shufflevector <8 x i16> %i.b, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.i = sext <4 x i16> %i.h to <4 x i32>
  %i.j = mul <4 x i32> %i.i, splat (i32 1290160)
  %i.k = add <4 x i32> %i.j, splat (i32 134257264)
  %i.l = lshr <4 x i32> %i.k, splat (i32 24)
  %i.m = and <4 x i32> %i.l, splat (i32 240)
  %i.n = or disjoint <4 x i32> %i.m, %i.g
  %i.o = trunc nuw <4 x i32> %i.n to <4 x i8>
  store <4 x i8> %i.o, ptr %.033.i, align 1, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8
  %i.q = icmp samesign ult i64 %indvars.iv.i, 248
  br i1 %i.q, label %bb.b, label %mlkem_compress_4_c.exit, !llvm.loop !75

mlkem_compress_4_c.exit:                          ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mlkem_compress_5(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  tail call fastcc void @mlkem_csubq_c(ptr noundef %1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.038.i = phi ptr [ %0, %bb.a ], [ %i.bt, %bb.b ] ; 6 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i ; 8 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !10
  %i.c = sext i16 %i.b to i32
  %i.d = mul i32 %i.c, 1290176
  %i.e = add i32 %i.d, 67089152
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !10
  %i.h = sext i16 %i.g to i32
  %i.i = mul i32 %i.h, 1290176
  %i.j = add i32 %i.i, 67089152                   ; 2 uses
  %i.k = lshr i32 %i.j, 27
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = load i16, ptr %i.l, align 2, !tbaa !10
  %i.n = sext i16 %i.m to i32
  %i.o = mul i32 %i.n, 1290176
  %i.p = add i32 %i.o, 67089152
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.r = load i16, ptr %i.q, align 2, !tbaa !10
  %i.s = sext i16 %i.r to i32
  %i.t = mul i32 %i.s, 1290176
  %i.u = add i32 %i.t, 67089152                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i16, ptr %i.v, align 2, !tbaa !10
  %i.x = sext i16 %i.w to i32
  %i.y = mul i32 %i.x, 1290176
  %i.z = add i32 %i.y, 67089152                   ; 2 uses
  %i.aa = lshr i32 %i.z, 27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !10
  %i.ad = sext i16 %i.ac to i32
  %i.ae = mul i32 %i.ad, 1290176
  %i.af = add i32 %i.ae, 67089152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !10
  %i.ai = sext i16 %i.ah to i32
  %i.aj = mul i32 %i.ai, 1290176
  %i.ak = add i32 %i.aj, 67089152                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.am = load i16, ptr %i.al, align 2, !tbaa !10
  %i.an = sext i16 %i.am to i32
  %i.ao = mul i32 %i.an, 1290176
  %i.ap = add i32 %i.ao, 67089152
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %i.k, i32 %i.e, i32 5)
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr %.038.i, align 1, !tbaa !13
  %i.as = lshr i32 %i.j, 30
  %i.at = lshr i32 %i.p, 25
  %i.au = and i32 %i.at, 124
  %i.av = or disjoint i32 %i.au, %i.as
  %i.aw = lshr i32 %i.u, 20
  %i.ax = and i32 %i.aw, 128
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = trunc nuw i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.038.i, i64 1
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !13
  %i.bb = tail call i32 @llvm.fshl.i32(i32 %i.aa, i32 %i.u, i32 4)
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.038.i, i64 2
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !13
  %i.be = lshr i32 %i.z, 31
  %i.bf = lshr i32 %i.af, 26
  %i.bg = and i32 %i.bf, 62
  %i.bh = or disjoint i32 %i.bg, %i.be
  %i.bi = lshr i32 %i.ak, 21
  %i.bj = and i32 %i.bi, 192
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = trunc nuw i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %.038.i, i64 3
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !13
  %i.bn = lshr i32 %i.ak, 29
  %i.bo = lshr i32 %i.ap, 24
  %i.bp = and i32 %i.bo, 248
  %i.bq = or disjoint i32 %i.bp, %i.bn
  %i.br = trunc nuw i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.038.i, i64 4
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.038.i, i64 5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8
  %i.bu = icmp samesign ult i64 %indvars.iv.i, 248
  br i1 %i.bu, label %bb.b, label %mlkem_compress_5_c.exit, !llvm.loop !76

mlkem_compress_5_c.exit:                          ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mlkem_decompress_4(ptr nofree noundef writeonly captures(none) initializes((0, 508)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
vector.memcheck:
  %i.a = getelementptr i8, ptr %0, i64 512
  %i.b = getelementptr i8, ptr %1, i64 128
  %bound0 = icmp ult ptr %0, %i.b
  %bound1 = icmp ult ptr %1, %i.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !13, !alias.scope !82 ; 2 uses
  %i.c = and <4 x i8> %wide.load, splat (i8 15)
  %i.d = zext nneg <4 x i8> %i.c to <4 x i32>
  %i.e = mul nuw nsw <4 x i32> %i.d, splat (i32 3329)
  %.idx = shl nuw i64 %index, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.g = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.h = zext nneg <4 x i8> %i.g to <4 x i32>
  %i.i = mul nuw nsw <4 x i32> %i.h, splat (i32 3329)
  %i.j = shufflevector <4 x i32> %i.e, <4 x i32> %i.i, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.k = add nuw nsw <8 x i32> %i.j, splat (i32 8)
  %i.l = lshr <8 x i32> %i.k, splat (i32 4)
  %interleaved.vec = trunc nuw nsw <8 x i32> %i.l to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.f, align 2, !tbaa !10, !alias.scope !83, !noalias !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, 128
  br i1 %i.m, label %mlkem_decompress_4_c.exit, label %vector.body, !llvm.loop !80

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %.089.i = phi ptr [ %i.ad, %scalar.ph ], [ %1, %vector.memcheck ] ; 3 uses
  %i.n = load i8, ptr %.089.i, align 1, !tbaa !13
  %i.o = and i8 %i.n, 15
  %i.p = zext nneg i8 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, 3329
  %i.r = add nuw nsw i32 %i.q, 8
  %i.s = lshr i32 %i.r, 4
  %i.t = trunc nuw nsw i32 %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  store i16 %i.t, ptr %i.u, align 2, !tbaa !10
  %i.v = load i8, ptr %.089.i, align 1, !tbaa !13
  %i.w = lshr i8 %i.v, 4
  %i.x = zext nneg i8 %i.w to i32
  %i.y = mul nuw nsw i32 %i.x, 3329
  %i.z = add nuw nsw i32 %i.y, 8
  %i.aa = lshr i32 %i.z, 4
  %i.ab = trunc nuw nsw i32 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %.089.i, i64 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %i.ae = icmp samesign ult i64 %indvars.iv.i, 254
  br i1 %i.ae, label %scalar.ph, label %mlkem_decompress_4_c.exit, !llvm.loop !81

mlkem_decompress_4_c.exit:                        ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mlkem_decompress_5(ptr nofree noundef writeonly captures(none) initializes((0, 496)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
vector.memcheck:
  %i.a = getelementptr i8, ptr %0, i64 512
  %i.b = getelementptr i8, ptr %1, i64 160
  %bound0 = icmp ult ptr %0, %i.b
  %bound1 = icmp ult ptr %1, %i.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.c = mul i64 %index, 5                        ; 8 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.c  ; 5 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c       ; 5 uses
  %next.gep3 = getelementptr i8, ptr %i.d, i64 5
  %i.e = getelementptr i8, ptr %1, i64 %i.c       ; 5 uses
  %next.gep4 = getelementptr i8, ptr %i.e, i64 10
  %i.f = getelementptr i8, ptr %1, i64 %i.c       ; 5 uses
  %next.gep5 = getelementptr i8, ptr %i.f, i64 15
  %i.g = getelementptr i8, ptr %1, i64 %i.c       ; 5 uses
  %next.gep6 = getelementptr i8, ptr %i.g, i64 20
  %i.h = getelementptr i8, ptr %1, i64 %i.c       ; 5 uses
  %next.gep7 = getelementptr i8, ptr %i.h, i64 25
  %i.i = getelementptr i8, ptr %1, i64 %i.c       ; 5 uses
  %next.gep8 = getelementptr i8, ptr %i.i, i64 30
  %i.j = getelementptr i8, ptr %1, i64 %i.c       ; 5 uses
  %next.gep9 = getelementptr i8, ptr %i.j, i64 35
  %i.k = load i8, ptr %next.gep, align 1, !tbaa !13, !alias.scope !89
  %i.l = load i8, ptr %next.gep3, align 1, !tbaa !13, !alias.scope !89
  %i.m = load i8, ptr %next.gep4, align 1, !tbaa !13, !alias.scope !89
  %i.n = load i8, ptr %next.gep5, align 1, !tbaa !13, !alias.scope !89
  %i.o = load i8, ptr %next.gep6, align 1, !tbaa !13, !alias.scope !89
  %i.p = load i8, ptr %next.gep7, align 1, !tbaa !13, !alias.scope !89
  %i.q = load i8, ptr %next.gep8, align 1, !tbaa !13, !alias.scope !89
  %i.r = load i8, ptr %next.gep9, align 1, !tbaa !13, !alias.scope !89
  %i.s = insertelement <8 x i8> poison, i8 %i.k, i64 0
  %i.t = insertelement <8 x i8> %i.s, i8 %i.l, i64 1
  %i.u = insertelement <8 x i8> %i.t, i8 %i.m, i64 2
  %i.v = insertelement <8 x i8> %i.u, i8 %i.n, i64 3
  %i.w = insertelement <8 x i8> %i.v, i8 %i.o, i64 4
  %i.x = insertelement <8 x i8> %i.w, i8 %i.p, i64 5
  %i.y = insertelement <8 x i8> %i.x, i8 %i.q, i64 6
  %i.z = insertelement <8 x i8> %i.y, i8 %i.r, i64 7 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ab = getelementptr i8, ptr %i.d, i64 6
  %i.ac = getelementptr i8, ptr %i.e, i64 11
  %i.ad = getelementptr i8, ptr %i.f, i64 16
  %i.ae = getelementptr i8, ptr %i.g, i64 21
  %i.af = getelementptr i8, ptr %i.h, i64 26
  %i.ag = getelementptr i8, ptr %i.i, i64 31
  %i.ah = getelementptr i8, ptr %i.j, i64 36
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !13, !alias.scope !89
  %i.aj = load i8, ptr %i.ab, align 1, !tbaa !13, !alias.scope !89
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !13, !alias.scope !89
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !13, !alias.scope !89
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !13, !alias.scope !89
  %i.an = load i8, ptr %i.af, align 1, !tbaa !13, !alias.scope !89
  %i.ao = load i8, ptr %i.ag, align 1, !tbaa !13, !alias.scope !89
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !13, !alias.scope !89
  %i.aq = insertelement <8 x i8> poison, i8 %i.ai, i64 0
  %i.ar = insertelement <8 x i8> %i.aq, i8 %i.aj, i64 1
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ak, i64 2
  %i.at = insertelement <8 x i8> %i.as, i8 %i.al, i64 3
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 4
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 5
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 6
  %i.ax = insertelement <8 x i8> %i.aw, i8 %i.ap, i64 7 ; 3 uses
  %i.ay = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.ax, <8 x i8> %i.z, <8 x i8> splat (i8 3))
  %i.az = lshr <8 x i8> %i.ax, splat (i8 2)
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.bb = getelementptr i8, ptr %i.d, i64 7
  %i.bc = getelementptr i8, ptr %i.e, i64 12
  %i.bd = getelementptr i8, ptr %i.f, i64 17
  %i.be = getelementptr i8, ptr %i.g, i64 22
  %i.bf = getelementptr i8, ptr %i.h, i64 27
  %i.bg = getelementptr i8, ptr %i.i, i64 32
  %i.bh = getelementptr i8, ptr %i.j, i64 37
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !13, !alias.scope !89
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !13, !alias.scope !89
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !13, !alias.scope !89
  %i.bl = load i8, ptr %i.bd, align 1, !tbaa !13, !alias.scope !89
  %i.bm = load i8, ptr %i.be, align 1, !tbaa !13, !alias.scope !89
  %i.bn = load i8, ptr %i.bf, align 1, !tbaa !13, !alias.scope !89
  %i.bo = load i8, ptr %i.bg, align 1, !tbaa !13, !alias.scope !89
  %i.bp = load i8, ptr %i.bh, align 1, !tbaa !13, !alias.scope !89
  %i.bq = insertelement <8 x i8> poison, i8 %i.bi, i64 0
  %i.br = insertelement <8 x i8> %i.bq, i8 %i.bj, i64 1
  %i.bs = insertelement <8 x i8> %i.br, i8 %i.bk, i64 2
  %i.bt = insertelement <8 x i8> %i.bs, i8 %i.bl, i64 3
  %i.bu = insertelement <8 x i8> %i.bt, i8 %i.bm, i64 4
  %i.bv = insertelement <8 x i8> %i.bu, i8 %i.bn, i64 5
  %i.bw = insertelement <8 x i8> %i.bv, i8 %i.bo, i64 6
  %i.bx = insertelement <8 x i8> %i.bw, i8 %i.bp, i64 7 ; 2 uses
  %i.by = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.bx, <8 x i8> %i.ax, <8 x i8> splat (i8 1))
  %i.bz = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %i.ca = getelementptr i8, ptr %i.d, i64 8
  %i.cb = getelementptr i8, ptr %i.e, i64 13
  %i.cc = getelementptr i8, ptr %i.f, i64 18
  %i.cd = getelementptr i8, ptr %i.g, i64 23
  %i.ce = getelementptr i8, ptr %i.h, i64 28
  %i.cf = getelementptr i8, ptr %i.i, i64 33
  %i.cg = getelementptr i8, ptr %i.j, i64 38
  %i.ch = load i8, ptr %i.bz, align 1, !tbaa !13, !alias.scope !89
  %i.ci = load i8, ptr %i.ca, align 1, !tbaa !13, !alias.scope !89
  %i.cj = load i8, ptr %i.cb, align 1, !tbaa !13, !alias.scope !89
  %i.ck = load i8, ptr %i.cc, align 1, !tbaa !13, !alias.scope !89
  %i.cl = load i8, ptr %i.cd, align 1, !tbaa !13, !alias.scope !89
  %i.cm = load i8, ptr %i.ce, align 1, !tbaa !13, !alias.scope !89
  %i.cn = load i8, ptr %i.cf, align 1, !tbaa !13, !alias.scope !89
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !13, !alias.scope !89
  %i.cp = insertelement <8 x i8> poison, i8 %i.ch, i64 0
  %i.cq = insertelement <8 x i8> %i.cp, i8 %i.ci, i64 1
  %i.cr = insertelement <8 x i8> %i.cq, i8 %i.cj, i64 2
  %i.cs = insertelement <8 x i8> %i.cr, i8 %i.ck, i64 3
  %i.ct = insertelement <8 x i8> %i.cs, i8 %i.cl, i64 4
  %i.cu = insertelement <8 x i8> %i.ct, i8 %i.cm, i64 5
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 6
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.co, i64 7 ; 3 uses
  %i.cx = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.cw, <8 x i8> %i.bx, <8 x i8> splat (i8 4))
  %i.cy = lshr <8 x i8> %i.cw, splat (i8 1)
  %i.cz = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.da = getelementptr i8, ptr %i.d, i64 9
  %i.db = getelementptr i8, ptr %i.e, i64 14
  %i.dc = getelementptr i8, ptr %i.f, i64 19
  %i.dd = getelementptr i8, ptr %i.g, i64 24
  %i.de = getelementptr i8, ptr %i.h, i64 29
  %i.df = getelementptr i8, ptr %i.i, i64 34
  %i.dg = getelementptr i8, ptr %i.j, i64 39
  %i.dh = load i8, ptr %i.cz, align 1, !tbaa !13, !alias.scope !89
  %i.di = load i8, ptr %i.da, align 1, !tbaa !13, !alias.scope !89
  %i.dj = load i8, ptr %i.db, align 1, !tbaa !13, !alias.scope !89
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !13, !alias.scope !89
  %i.dl = load i8, ptr %i.dd, align 1, !tbaa !13, !alias.scope !89
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !13, !alias.scope !89
  %i.dn = load i8, ptr %i.df, align 1, !tbaa !13, !alias.scope !89
  %i.do = load i8, ptr %i.dg, align 1, !tbaa !13, !alias.scope !89
  %i.dp = insertelement <8 x i8> poison, i8 %i.dh, i64 0
  %i.dq = insertelement <8 x i8> %i.dp, i8 %i.di, i64 1
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dj, i64 2
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dk, i64 3
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 4
  %i.du = insertelement <8 x i8> %i.dt, i8 %i.dm, i64 5
  %i.dv = insertelement <8 x i8> %i.du, i8 %i.dn, i64 6
  %i.dw = insertelement <8 x i8> %i.dv, i8 %i.do, i64 7 ; 2 uses
  %i.dx = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.dw, <8 x i8> %i.cw, <8 x i8> splat (i8 2))
  %i.dy = lshr <8 x i8> %i.dw, splat (i8 3)
  %i.dz = and <8 x i8> %i.z, splat (i8 31)
  %i.ea = zext nneg <8 x i8> %i.dz to <8 x i32>
  %i.eb = mul nuw nsw <8 x i32> %i.ea, splat (i32 3329)
  %.idx = shl nuw i64 %index, 4
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.ed = and <8 x i8> %i.ay, splat (i8 31)
  %i.ee = zext nneg <8 x i8> %i.ed to <8 x i32>
  %i.ef = mul nuw nsw <8 x i32> %i.ee, splat (i32 3329)
  %i.eg = and <8 x i8> %i.az, splat (i8 31)
  %i.eh = zext nneg <8 x i8> %i.eg to <8 x i32>
  %i.ei = mul nuw nsw <8 x i32> %i.eh, splat (i32 3329)
  %i.ej = and <8 x i8> %i.by, splat (i8 31)
  %i.ek = zext nneg <8 x i8> %i.ej to <8 x i32>
  %i.el = mul nuw nsw <8 x i32> %i.ek, splat (i32 3329)
  %i.em = and <8 x i8> %i.cx, splat (i8 31)
  %i.en = zext nneg <8 x i8> %i.em to <8 x i32>
  %i.eo = mul nuw nsw <8 x i32> %i.en, splat (i32 3329)
  %i.ep = and <8 x i8> %i.cy, splat (i8 31)
  %i.eq = zext nneg <8 x i8> %i.ep to <8 x i32>
  %i.er = mul nuw nsw <8 x i32> %i.eq, splat (i32 3329)
  %i.es = and <8 x i8> %i.dx, splat (i8 31)
  %i.et = zext nneg <8 x i8> %i.es to <8 x i32>
  %i.eu = mul nuw nsw <8 x i32> %i.et, splat (i32 3329)
  %i.ev = zext nneg <8 x i8> %i.dy to <8 x i32>
  %i.ew = mul nuw nsw <8 x i32> %i.ev, splat (i32 3329)
  %i.ex = shufflevector <8 x i32> %i.eb, <8 x i32> %i.ef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ey = add nuw nsw <16 x i32> %i.ex, splat (i32 16)
  %i.ez = lshr <16 x i32> %i.ey, splat (i32 5)
  %i.fa = trunc nuw nsw <16 x i32> %i.ez to <16 x i16>
  %i.fb = shufflevector <8 x i32> %i.ei, <8 x i32> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fc = add nuw nsw <16 x i32> %i.fb, splat (i32 16)
  %i.fd = lshr <16 x i32> %i.fc, splat (i32 5)
  %i.fe = trunc nuw nsw <16 x i32> %i.fd to <16 x i16>
  %i.ff = shufflevector <8 x i32> %i.eo, <8 x i32> %i.er, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fg = add nuw nsw <16 x i32> %i.ff, splat (i32 16)
  %i.fh = lshr <16 x i32> %i.fg, splat (i32 5)
  %i.fi = trunc nuw nsw <16 x i32> %i.fh to <16 x i16>
  %i.fj = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fk = add nuw nsw <16 x i32> %i.fj, splat (i32 16)
  %i.fl = lshr <16 x i32> %i.fk, splat (i32 5)
  %i.fm = trunc nuw nsw <16 x i32> %i.fl to <16 x i16>
  %i.fn = shufflevector <16 x i16> %i.fa, <16 x i16> %i.fe, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fo = shufflevector <16 x i16> %i.fi, <16 x i16> %i.fm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i16> %i.fn, <32 x i16> %i.fo, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.ec, align 2, !tbaa !10, !alias.scope !90, !noalias !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fp = icmp eq i64 %index.next, 32
  br i1 %i.fp, label %mlkem_decompress_5_c.exit, label %vector.body, !llvm.loop !87

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %.040.i = phi ptr [ %i.gf, %scalar.ph ], [ %1, %vector.memcheck ] ; 6 uses
  %i.fq = load i8, ptr %.040.i, align 1, !tbaa !13 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.040.i, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !13  ; 3 uses
  %i.ft = tail call i8 @llvm.fshl.i8(i8 %i.fs, i8 %i.fq, i8 3)
  %i.fu = lshr i8 %i.fs, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %.040.i, i64 2
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !13  ; 2 uses
  %i.fx = tail call i8 @llvm.fshl.i8(i8 %i.fw, i8 %i.fs, i8 1)
  %i.fy = getelementptr inbounds nuw i8, ptr %.040.i, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !13  ; 3 uses
  %i.ga = tail call i8 @llvm.fshl.i8(i8 %i.fz, i8 %i.fw, i8 4)
  %i.gb = lshr i8 %i.fz, 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.040.i, i64 4
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !13  ; 2 uses
  %i.ge = tail call i8 @llvm.fshl.i8(i8 %i.gd, i8 %i.fz, i8 2)
  %i.gf = getelementptr inbounds nuw i8, ptr %.040.i, i64 5
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.gh = lshr i8 %i.gd, 3
  %i.gi = insertelement <8 x i8> poison, i8 %i.fq, i64 0
  %i.gj = insertelement <8 x i8> %i.gi, i8 %i.ft, i64 1
  %i.gk = insertelement <8 x i8> %i.gj, i8 %i.fu, i64 2
  %i.gl = insertelement <8 x i8> %i.gk, i8 %i.fx, i64 3
  %i.gm = insertelement <8 x i8> %i.gl, i8 %i.ga, i64 4
  %i.gn = insertelement <8 x i8> %i.gm, i8 %i.gb, i64 5
  %i.go = insertelement <8 x i8> %i.gn, i8 %i.ge, i64 6
  %i.gp = insertelement <8 x i8> %i.go, i8 %i.gh, i64 7
  %i.gq = and <8 x i8> %i.gp, <i8 31, i8 31, i8 31, i8 31, i8 31, i8 31, i8 31, i8 -1>
  %i.gr = zext nneg <8 x i8> %i.gq to <8 x i32>
  %i.gs = mul nuw nsw <8 x i32> %i.gr, splat (i32 3329)
  %i.gt = add nuw nsw <8 x i32> %i.gs, splat (i32 16)
  %i.gu = lshr <8 x i32> %i.gt, splat (i32 5)
  %i.gv = trunc nuw nsw <8 x i32> %i.gu to <8 x i16>
  store <8 x i16> %i.gv, ptr %i.gg, align 2, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8
  %i.gw = icmp samesign ult i64 %indvars.iv.i, 248
  br i1 %i.gw, label %scalar.ph, label %mlkem_decompress_5_c.exit, !llvm.loop !88

mlkem_decompress_5_c.exit:                        ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: nounwind uwtable
define void @mlkem_from_msg(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i ; 8 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = and i8 %i.b, 1
  %i.d = zext nneg i8 %i.c to i16
  %i.e = sub nsw i16 0, %i.d
  %i.f = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.g = xor i16 %i.f, %i.e
  %i.h = and i16 %i.g, 1665
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 8 uses
  store i16 %i.h, ptr %i.i, align 2, !tbaa !10
  %i.j = load i8, ptr %i.a, align 1, !tbaa !13
  %i.k = lshr i8 %i.j, 1
  %i.l = and i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i16
  %i.n = sub nsw i16 0, %i.m
  %i.o = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.p = xor i16 %i.o, %i.n
  %i.q = and i16 %i.p, 1665
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i16 %i.q, ptr %i.r, align 2, !tbaa !10
  %i.s = load i8, ptr %i.a, align 1, !tbaa !13
  %i.t = lshr i8 %i.s, 2
  %i.u = and i8 %i.t, 1
  %i.v = zext nneg i8 %i.u to i16
  %i.w = sub nsw i16 0, %i.v
  %i.x = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.y = xor i16 %i.x, %i.w
  %i.z = and i16 %i.y, 1665
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !10
  %i.ab = load i8, ptr %i.a, align 1, !tbaa !13
  %i.ac = lshr i8 %i.ab, 3
  %i.ad = and i8 %i.ac, 1
  %i.ae = zext nneg i8 %i.ad to i16
  %i.af = sub nsw i16 0, %i.ae
  %i.ag = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.ah = xor i16 %i.ag, %i.af
  %i.ai = and i16 %i.ah, 1665
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !10
  %i.ak = load i8, ptr %i.a, align 1, !tbaa !13
  %i.al = lshr i8 %i.ak, 4
  %i.am = and i8 %i.al, 1
  %i.an = zext nneg i8 %i.am to i16
  %i.ao = sub nsw i16 0, %i.an
  %i.ap = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.aq = xor i16 %i.ap, %i.ao
  %i.ar = and i16 %i.aq, 1665
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !10
  %i.at = load i8, ptr %i.a, align 1, !tbaa !13
  %i.au = lshr i8 %i.at, 5
  %i.av = and i8 %i.au, 1
  %i.aw = zext nneg i8 %i.av to i16
  %i.ax = sub nsw i16 0, %i.aw
  %i.ay = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.az = xor i16 %i.ay, %i.ax
  %i.ba = and i16 %i.az, 1665
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !10
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !13
  %i.bd = lshr i8 %i.bc, 6
  %i.be = and i8 %i.bd, 1
  %i.bf = zext nneg i8 %i.be to i16
  %i.bg = sub nsw i16 0, %i.bf
  %i.bh = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.bi = xor i16 %i.bh, %i.bg
  %i.bj = and i16 %i.bi, 1665
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !10
  %i.bl = load i8, ptr %i.a, align 1, !tbaa !13
  %i.bm = ashr i8 %i.bl, 7
  %i.bn = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.bo = sext i8 %i.bm to i16
  %i.bp = xor i16 %i.bn, %i.bo
  %i.bq = and i16 %i.bp, 1665
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 14
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %mlkem_from_msg_c.exit, label %bb.b, !llvm.loop !91

mlkem_from_msg_c.exit:                            ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mlkem_to_msg(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
vector.memcheck:
  tail call fastcc void @mlkem_csubq_c(ptr noundef %1)
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %1, i64 512
  %bound0 = icmp ult ptr %0, %i.b
  %bound1 = icmp ult ptr %1, %i.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 9 uses
  store <8 x i8> zeroinitializer, ptr %i.c, align 1, !tbaa !13, !alias.scope !97, !noalias !98
  %i.d = shl nuw nsw i64 %index, 4
  %i.e = shl i64 %index, 4
  %i.f = shl i64 %index, 4
  %i.g = shl i64 %index, 4
  %i.h = shl i64 %index, 4
  %i.i = shl i64 %index, 4
  %i.j = shl i64 %index, 4
  %i.k = shl i64 %index, 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.aa = load i16, ptr %i.l, align 2, !tbaa !10, !alias.scope !98
  %i.ab = load i16, ptr %i.n, align 2, !tbaa !10, !alias.scope !98
  %i.ac = load i16, ptr %i.p, align 2, !tbaa !10, !alias.scope !98
  %i.ad = load i16, ptr %i.r, align 2, !tbaa !10, !alias.scope !98
  %i.ae = load i16, ptr %i.t, align 2, !tbaa !10, !alias.scope !98
  %i.af = load i16, ptr %i.v, align 2, !tbaa !10, !alias.scope !98
  %i.ag = load i16, ptr %i.x, align 2, !tbaa !10, !alias.scope !98
  %i.ah = load i16, ptr %i.z, align 2, !tbaa !10, !alias.scope !98
  %i.ai = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %i.aj = insertelement <8 x i16> %i.ai, i16 %i.ab, i64 1
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.ac, i64 2
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 3
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 4
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 5
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 6
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 7
  %i.aq = zext <8 x i16> %i.ap to <8 x i32>
  %i.ar = mul <8 x i32> %i.aq, splat (i32 1290168)
  %i.as = add <8 x i32> %i.ar, splat (i32 1073419776)
  %i.at = lshr <8 x i32> %i.as, splat (i32 31)    ; 2 uses
  %i.au = trunc nuw nsw <8 x i32> %i.at to <8 x i8>
  store <8 x i8> %i.au, ptr %i.c, align 1, !tbaa !13, !alias.scope !97, !noalias !98
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 50
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 66
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 82
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 98
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 114
  %i.bd = load i16, ptr %i.av, align 2, !tbaa !10, !alias.scope !98
  %i.be = load i16, ptr %i.aw, align 2, !tbaa !10, !alias.scope !98
  %i.bf = load i16, ptr %i.ax, align 2, !tbaa !10, !alias.scope !98
  %i.bg = load i16, ptr %i.ay, align 2, !tbaa !10, !alias.scope !98
  %i.bh = load i16, ptr %i.az, align 2, !tbaa !10, !alias.scope !98
  %i.bi = load i16, ptr %i.ba, align 2, !tbaa !10, !alias.scope !98
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !10, !alias.scope !98
  %i.bk = load i16, ptr %i.bc, align 2, !tbaa !10, !alias.scope !98
  %i.bl = insertelement <8 x i16> poison, i16 %i.bd, i64 0
  %i.bm = insertelement <8 x i16> %i.bl, i16 %i.be, i64 1
  %i.bn = insertelement <8 x i16> %i.bm, i16 %i.bf, i64 2
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.bg, i64 3
  %i.bp = insertelement <8 x i16> %i.bo, i16 %i.bh, i64 4
  %i.bq = insertelement <8 x i16> %i.bp, i16 %i.bi, i64 5
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 6
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 7
  %i.bt = zext <8 x i16> %i.bs to <8 x i32>
  %i.bu = mul <8 x i32> %i.bt, splat (i32 1290168)
  %i.bv = add <8 x i32> %i.bu, splat (i32 1073419776)
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 30)
  %i.bx = and <8 x i32> %i.bw, splat (i32 2)
  %i.by = or disjoint <8 x i32> %i.bx, %i.at      ; 2 uses
  %i.bz = trunc nuw nsw <8 x i32> %i.by to <8 x i8>
  store <8 x i8> %i.bz, ptr %i.c, align 1, !tbaa !13, !alias.scope !97, !noalias !98
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 84
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 116
  %i.ci = load i16, ptr %i.ca, align 2, !tbaa !10, !alias.scope !98
  %i.cj = load i16, ptr %i.cb, align 2, !tbaa !10, !alias.scope !98
  %i.ck = load i16, ptr %i.cc, align 2, !tbaa !10, !alias.scope !98
  %i.cl = load i16, ptr %i.cd, align 2, !tbaa !10, !alias.scope !98
  %i.cm = load i16, ptr %i.ce, align 2, !tbaa !10, !alias.scope !98
  %i.cn = load i16, ptr %i.cf, align 2, !tbaa !10, !alias.scope !98
  %i.co = load i16, ptr %i.cg, align 2, !tbaa !10, !alias.scope !98
  %i.cp = load i16, ptr %i.ch, align 2, !tbaa !10, !alias.scope !98
  %i.cq = insertelement <8 x i16> poison, i16 %i.ci, i64 0
  %i.cr = insertelement <8 x i16> %i.cq, i16 %i.cj, i64 1
  %i.cs = insertelement <8 x i16> %i.cr, i16 %i.ck, i64 2
  %i.ct = insertelement <8 x i16> %i.cs, i16 %i.cl, i64 3
  %i.cu = insertelement <8 x i16> %i.ct, i16 %i.cm, i64 4
  %i.cv = insertelement <8 x i16> %i.cu, i16 %i.cn, i64 5
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.co, i64 6
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.cp, i64 7
  %i.cy = zext <8 x i16> %i.cx to <8 x i32>
  %i.cz = mul <8 x i32> %i.cy, splat (i32 1290168)
  %i.da = add <8 x i32> %i.cz, splat (i32 1073419776)
  %i.db = lshr <8 x i32> %i.da, splat (i32 29)
  %i.dc = and <8 x i32> %i.db, splat (i32 4)
  %i.dd = or disjoint <8 x i32> %i.dc, %i.by      ; 2 uses
  %i.de = trunc nuw nsw <8 x i32> %i.dd to <8 x i8>
  store <8 x i8> %i.de, ptr %i.c, align 1, !tbaa !13, !alias.scope !97, !noalias !98
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.dg = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  %i.dh = getelementptr inbounds nuw i8, ptr %i.o, i64 38
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 54
  %i.dj = getelementptr inbounds nuw i8, ptr %i.s, i64 70
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 86
  %i.dl = getelementptr inbounds nuw i8, ptr %i.w, i64 102
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 118
  %i.dn = load i16, ptr %i.df, align 2, !tbaa !10, !alias.scope !98
  %i.do = load i16, ptr %i.dg, align 2, !tbaa !10, !alias.scope !98
  %i.dp = load i16, ptr %i.dh, align 2, !tbaa !10, !alias.scope !98
  %i.dq = load i16, ptr %i.di, align 2, !tbaa !10, !alias.scope !98
  %i.dr = load i16, ptr %i.dj, align 2, !tbaa !10, !alias.scope !98
  %i.ds = load i16, ptr %i.dk, align 2, !tbaa !10, !alias.scope !98
  %i.dt = load i16, ptr %i.dl, align 2, !tbaa !10, !alias.scope !98
  %i.du = load i16, ptr %i.dm, align 2, !tbaa !10, !alias.scope !98
  %i.dv = insertelement <8 x i16> poison, i16 %i.dn, i64 0
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 1
  %i.dx = insertelement <8 x i16> %i.dw, i16 %i.dp, i64 2
  %i.dy = insertelement <8 x i16> %i.dx, i16 %i.dq, i64 3
  %i.dz = insertelement <8 x i16> %i.dy, i16 %i.dr, i64 4
  %i.ea = insertelement <8 x i16> %i.dz, i16 %i.ds, i64 5
  %i.eb = insertelement <8 x i16> %i.ea, i16 %i.dt, i64 6
  %i.ec = insertelement <8 x i16> %i.eb, i16 %i.du, i64 7
  %i.ed = zext <8 x i16> %i.ec to <8 x i32>
  %i.ee = mul <8 x i32> %i.ed, splat (i32 1290168)
  %i.ef = add <8 x i32> %i.ee, splat (i32 1073419776)
  %i.eg = lshr <8 x i32> %i.ef, splat (i32 28)
  %i.eh = and <8 x i32> %i.eg, splat (i32 8)
  %i.ei = or disjoint <8 x i32> %i.eh, %i.dd      ; 2 uses
  %i.ej = trunc nuw nsw <8 x i32> %i.ei to <8 x i8>
  store <8 x i8> %i.ej, ptr %i.c, align 1, !tbaa !13, !alias.scope !97, !noalias !98
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.en = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ep = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.eq = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.er = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !10, !alias.scope !98
  %i.et = load i16, ptr %i.el, align 2, !tbaa !10, !alias.scope !98
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !10, !alias.scope !98
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !10, !alias.scope !98
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !10, !alias.scope !98
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !10, !alias.scope !98
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !10, !alias.scope !98
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !10, !alias.scope !98
  %i.fa = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 1
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 2
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 3
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 4
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 5
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 6
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 7
  %i.fi = zext <8 x i16> %i.fh to <8 x i32>
  %i.fj = mul <8 x i32> %i.fi, splat (i32 1290168)
  %i.fk = add <8 x i32> %i.fj, splat (i32 1073419776)
  %i.fl = lshr <8 x i32> %i.fk, splat (i32 27)
  %i.fm = and <8 x i32> %i.fl, splat (i32 16)
  %i.fn = or disjoint <8 x i32> %i.fm, %i.ei      ; 2 uses
  %i.fo = trunc nuw nsw <8 x i32> %i.fn to <8 x i8>
  store <8 x i8> %i.fo, ptr %i.c, align 1, !tbaa !13, !alias.scope !97, !noalias !98
  %i.fp = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.fq = getelementptr inbounds nuw i8, ptr %i.m, i64 26
  %i.fr = getelementptr inbounds nuw i8, ptr %i.o, i64 42
  %i.fs = getelementptr inbounds nuw i8, ptr %i.q, i64 58
  %i.ft = getelementptr inbounds nuw i8, ptr %i.s, i64 74
  %i.fu = getelementptr inbounds nuw i8, ptr %i.u, i64 90
  %i.fv = getelementptr inbounds nuw i8, ptr %i.w, i64 106
  %i.fw = getelementptr inbounds nuw i8, ptr %i.y, i64 122
  %i.fx = load i16, ptr %i.fp, align 2, !tbaa !10, !alias.scope !98
  %i.fy = load i16, ptr %i.fq, align 2, !tbaa !10, !alias.scope !98
  %i.fz = load i16, ptr %i.fr, align 2, !tbaa !10, !alias.scope !98
  %i.ga = load i16, ptr %i.fs, align 2, !tbaa !10, !alias.scope !98
  %i.gb = load i16, ptr %i.ft, align 2, !tbaa !10, !alias.scope !98
  %i.gc = load i16, ptr %i.fu, align 2, !tbaa !10, !alias.scope !98
end_hunk_0
begin_hunk_1_@mlkem_ntt:vector.ph
  %i.uo = sext <8 x i16> %i.ug to <8 x i32>
  %i.up = mul nsw <8 x i32> %i.uo, %i.uh          ; 2 uses
  %i.uq = mul <8 x i32> %i.up, splat (i32 -218038272)
  %i.ur = ashr exact <8 x i32> %i.uq, splat (i32 16)
  %i.us = mul nsw <8 x i32> %i.ur, splat (i32 -3329)
  %i.ut = add nsw <8 x i32> %i.us, %i.up
  %i.uu = sext <8 x i16> %i.lh to <8 x i32>       ; 2 uses
  %i.uv = sext <8 x i16> %i.tz to <8 x i32>
  %i.uw = mul nsw <8 x i32> %i.uv, %i.uu          ; 2 uses
  %i.ux = mul <8 x i32> %i.uw, splat (i32 -218038272)
  %i.uy = ashr exact <8 x i32> %i.ux, splat (i32 16)
  %i.uz = mul nsw <8 x i32> %i.uy, splat (i32 -3329)
  %i.va = add nsw <8 x i32> %i.uz, %i.uw
  %i.vb = sext <8 x i16> %i.uc to <8 x i32>
  %i.vc = mul nsw <8 x i32> %i.vb, %i.uu          ; 2 uses
  %i.vd = mul <8 x i32> %i.vc, splat (i32 -218038272)
  %i.ve = ashr exact <8 x i32> %i.vd, splat (i32 16)
  %i.vf = mul nsw <8 x i32> %i.ve, splat (i32 -3329)
  %i.vg = add nsw <8 x i32> %i.vf, %i.vc
  %i.vh = lshr <8 x i32> %i.un, splat (i32 16)
  %i.vi = trunc nuw <8 x i32> %i.vh to <8 x i16>  ; 2 uses
  %i.vj = sub <8 x i16> %i.ud, %i.vi              ; 2 uses
  %i.vk = lshr <8 x i32> %i.ut, splat (i32 16)
  %i.vl = trunc nuw <8 x i32> %i.vk to <8 x i16>  ; 2 uses
  %i.vm = sub <8 x i16> %i.ue, %i.vl              ; 2 uses
  %i.vn = lshr <8 x i32> %i.va, splat (i32 16)
  %i.vo = trunc nuw <8 x i32> %i.vn to <8 x i16>  ; 2 uses
  %i.vp = sub <8 x i16> %i.tt, %i.vo              ; 2 uses
  %i.vq = lshr <8 x i32> %i.vg, splat (i32 16)
  %i.vr = trunc nuw <8 x i32> %i.vq to <8 x i16>  ; 2 uses
  %i.vs = sub <8 x i16> %i.tw, %i.vr              ; 2 uses
  %i.vt = add <8 x i16> %i.ud, %i.vi              ; 2 uses
  %i.vu = add <8 x i16> %i.ue, %i.vl              ; 2 uses
  %i.vv = add <8 x i16> %i.tt, %i.vo              ; 2 uses
  %i.vw = add <8 x i16> %i.tw, %i.vr              ; 2 uses
  %i.vx = shufflevector <8 x i16> %i.vt, <8 x i16> %i.vu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vy = shufflevector <8 x i16> %i.vj, <8 x i16> %i.vm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vz = shufflevector <16 x i16> %i.vx, <16 x i16> %i.vy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.wa = sext <32 x i16> %i.vz to <32 x i32>
  %i.wb = mul nsw <32 x i32> %i.wa, splat (i32 20159)
  %i.wc = ashr <32 x i32> %i.wb, splat (i32 26)
  %i.wd = trunc nsw <32 x i32> %i.wc to <32 x i16>
  %i.we = mul <32 x i16> %i.wd, splat (i16 -3329)
  %i.wf = shufflevector <8 x i16> %i.vt, <8 x i16> %i.vu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wg = shufflevector <8 x i16> %i.vj, <8 x i16> %i.vm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wh = shufflevector <16 x i16> %i.wf, <16 x i16> %i.wg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.wi = add <32 x i16> %i.we, %i.wh
  %i.wj = shufflevector <8 x i16> %i.vv, <8 x i16> %i.vw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wk = shufflevector <8 x i16> %i.vp, <8 x i16> %i.vs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wl = shufflevector <16 x i16> %i.wj, <16 x i16> %i.wk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.wm = sext <32 x i16> %i.wl to <32 x i32>
  %i.wn = mul nsw <32 x i32> %i.wm, splat (i32 20159)
  %i.wo = ashr <32 x i32> %i.wn, splat (i32 26)
  %i.wp = trunc nsw <32 x i32> %i.wo to <32 x i16>
  %i.wq = mul <32 x i16> %i.wp, splat (i16 -3329)
  %i.wr = shufflevector <8 x i16> %i.vv, <8 x i16> %i.vw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ws = shufflevector <8 x i16> %i.vp, <8 x i16> %i.vs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wt = shufflevector <16 x i16> %i.wr, <16 x i16> %i.ws, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.wu = add <32 x i16> %i.wq, %i.wt
  %interleaved.vec = shufflevector <32 x i16> %i.wi, <32 x i16> %i.wu, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.li, align 2, !tbaa !10, !alias.scope !118, !noalias !117
  %index.next498 = add nuw i64 %index496, 8       ; 2 uses
  %i.wv = icmp eq i64 %index.next498, 32
  br i1 %i.wv, label %middle.block499, label %vector.body495, !llvm.loop !115

.preheader:                                       ; preds = %vector.memcheck, %.preheader
  %indvars.iv461 = phi i64 [ %indvars.iv.next462, %.preheader ], [ 0, %vector.memcheck ] ; 5 uses
  %i.ww = lshr exact i64 %indvars.iv461, 2
  %i.wx = getelementptr inbounds nuw i8, ptr @zetas, i64 %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 64
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !10
  %i.xa = lshr exact i64 %indvars.iv461, 1
  %i.xb = getelementptr inbounds nuw i8, ptr @zetas, i64 %i.xa ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 128
  %i.xd = load i16, ptr %i.xc, align 4, !tbaa !10
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 130
  %i.xf = load i16, ptr %i.xe, align 2, !tbaa !10
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv461 ; 9 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 2
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !10 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xg, i64 6
  %i.xl = load i16, ptr %i.xk, align 2, !tbaa !10 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xg, i64 10
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xg, i64 12
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !10
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xg, i64 14
  %i.xr = load i16, ptr %i.xq, align 2, !tbaa !10
  %i.xs = sext i16 %i.wz to i32                   ; 4 uses
  %i.xt = sext i16 %i.xp to i32
  %i.xu = mul nsw i32 %i.xt, %i.xs                ; 2 uses
  %sext388 = mul i32 %i.xu, -218038272
  %i.xv = ashr exact i32 %sext388, 16
  %.neg389 = mul nsw i32 %i.xv, -3329
  %i.xw = add nsw i32 %.neg389, %i.xu
  %i.xx = sext i16 %i.xr to i32
  %i.xy = mul nsw i32 %i.xx, %i.xs                ; 2 uses
  %sext390 = mul i32 %i.xy, -218038272
  %i.xz = ashr exact i32 %sext390, 16
  %.neg391 = mul nsw i32 %i.xz, -3329
  %i.ya = add nsw i32 %.neg391, %i.xy
  %i.yb = lshr i32 %i.xw, 16
  %i.yc = trunc nuw i32 %i.yb to i16              ; 2 uses
  %i.yd = sub i16 %i.xj, %i.yc
  %i.ye = lshr i32 %i.ya, 16
  %i.yf = trunc nuw i32 %i.ye to i16              ; 2 uses
  %i.yg = sub i16 %i.xl, %i.yf
  %i.yh = add i16 %i.xj, %i.yc
  %i.yi = add i16 %i.xl, %i.yf
  %i.yj = sext i16 %i.xd to i32                   ; 2 uses
  %i.yk = sext i16 %i.yh to i32
  %i.yl = sext i16 %i.yi to i32
  %i.ym = sext i16 %i.xf to i32                   ; 2 uses
  %i.yn = sext i16 %i.yd to i32
  %i.yo = sext i16 %i.yg to i32
  %i.yp = load i16, ptr %i.xg, align 2, !tbaa !10 ; 2 uses
  %i.yq = load i16, ptr %i.xh, align 2, !tbaa !10 ; 2 uses
  %i.yr = load i16, ptr %i.xm, align 2, !tbaa !10
  %i.ys = load i16, ptr %i.xn, align 2, !tbaa !10
  %i.yt = sext i16 %i.yr to i32
  %i.yu = mul nsw i32 %i.yt, %i.xs                ; 2 uses
  %sext = mul i32 %i.yu, -218038272
  %i.yv = ashr exact i32 %sext, 16
  %.neg = mul nsw i32 %i.yv, -3329
  %i.yw = add nsw i32 %.neg, %i.yu
  %i.yx = sext i16 %i.ys to i32
  %i.yy = mul nsw i32 %i.yx, %i.xs                ; 2 uses
  %sext386 = mul i32 %i.yy, -218038272
  %i.yz = ashr exact i32 %sext386, 16
  %.neg387 = mul nsw i32 %i.yz, -3329
  %i.za = add nsw i32 %.neg387, %i.yy
  %i.zb = lshr i32 %i.yw, 16
  %i.zc = trunc nuw i32 %i.zb to i16              ; 2 uses
  %i.zd = sub i16 %i.yp, %i.zc                    ; 2 uses
  %i.ze = lshr i32 %i.za, 16
  %i.zf = trunc nuw i32 %i.ze to i16              ; 2 uses
  %i.zg = sub i16 %i.yq, %i.zf                    ; 2 uses
  %i.zh = add i16 %i.yp, %i.zc                    ; 2 uses
  %i.zi = add i16 %i.yq, %i.zf                    ; 2 uses
  %i.zj = mul nsw i32 %i.yk, %i.yj                ; 2 uses
  %sext392 = mul i32 %i.zj, -218038272
  %i.zk = ashr exact i32 %sext392, 16
  %.neg393 = mul nsw i32 %i.zk, -3329
  %i.zl = add nsw i32 %.neg393, %i.zj
  %i.zm = mul nsw i32 %i.yl, %i.yj                ; 2 uses
  %sext394 = mul i32 %i.zm, -218038272
  %i.zn = ashr exact i32 %sext394, 16
  %.neg395 = mul nsw i32 %i.zn, -3329
  %i.zo = add nsw i32 %.neg395, %i.zm
  %i.zp = mul nsw i32 %i.yn, %i.ym                ; 2 uses
  %sext396 = mul i32 %i.zp, -218038272
  %i.zq = ashr exact i32 %sext396, 16
  %.neg397 = mul nsw i32 %i.zq, -3329
  %i.zr = add nsw i32 %.neg397, %i.zp
  %i.zs = mul nsw i32 %i.yo, %i.ym                ; 2 uses
  %sext398 = mul i32 %i.zs, -218038272
  %i.zt = ashr exact i32 %sext398, 16
  %.neg399 = mul nsw i32 %i.zt, -3329
  %i.zu = add nsw i32 %.neg399, %i.zs
  %i.zv = lshr i32 %i.zl, 16
  %i.zw = trunc nuw i32 %i.zv to i16              ; 2 uses
  %i.zx = sub i16 %i.zh, %i.zw
  %i.zy = lshr i32 %i.zo, 16
  %i.zz = trunc nuw i32 %i.zy to i16              ; 2 uses
  %i.aaa = sub i16 %i.zi, %i.zz
  %i.aab = lshr i32 %i.zr, 16
  %i.aac = trunc nuw i32 %i.aab to i16            ; 2 uses
  %i.aad = sub i16 %i.zd, %i.aac
  %i.aae = lshr i32 %i.zu, 16
  %i.aaf = trunc nuw i32 %i.aae to i16            ; 2 uses
  %i.aag = sub i16 %i.zg, %i.aaf
  %i.aah = add i16 %i.zh, %i.zw
  %i.aai = add i16 %i.zi, %i.zz
  %i.aaj = add i16 %i.zd, %i.aac
  %i.aak = add i16 %i.zg, %i.aaf
  %i.aal = insertelement <8 x i16> poison, i16 %i.aah, i64 0
  %i.aam = insertelement <8 x i16> %i.aal, i16 %i.aai, i64 1
  %i.aan = insertelement <8 x i16> %i.aam, i16 %i.zx, i64 2
  %i.aao = insertelement <8 x i16> %i.aan, i16 %i.aaa, i64 3
  %i.aap = insertelement <8 x i16> %i.aao, i16 %i.aaj, i64 4
  %i.aaq = insertelement <8 x i16> %i.aap, i16 %i.aak, i64 5
  %i.aar = insertelement <8 x i16> %i.aaq, i16 %i.aad, i64 6
  %i.aas = insertelement <8 x i16> %i.aar, i16 %i.aag, i64 7 ; 2 uses
  %i.aat = sext <8 x i16> %i.aas to <8 x i32>
  %i.aau = mul nsw <8 x i32> %i.aat, splat (i32 20159)
  %i.aav = ashr <8 x i32> %i.aau, splat (i32 26)
  %i.aaw = trunc nsw <8 x i32> %i.aav to <8 x i16>
  %i.aax = mul <8 x i16> %i.aaw, splat (i16 -3329)
  %i.aay = add <8 x i16> %i.aax, %i.aas
  store <8 x i16> %i.aay, ptr %i.xg, align 2, !tbaa !10
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 8
  %i.aaz = icmp samesign ult i64 %indvars.iv461, 248
  br i1 %i.aaz, label %.preheader, label %middle.block499, !llvm.loop !116

middle.block499:                                  ; preds = %vector.body495, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mlkem_pointwise_acc_mont(ptr nofree noundef captures(none) initializes((0, 480)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 5 uses
  %.058132.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @zetas, i64 128), %bb.a ], [ %i.ij, %bb.b ] ; 5 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i ; 16 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i ; 16 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i ; 16 uses
  %i.d = load i16, ptr %.058132.i, align 8, !tbaa !10 ; 2 uses
  %.val86.i = load i16, ptr %i.b, align 2, !tbaa !10
  %i.e = getelementptr i8, ptr %i.b, i64 2
  %.val87.i = load i16, ptr %i.e, align 2, !tbaa !10
  %.val88.i = load i16, ptr %i.c, align 2, !tbaa !10
  %i.f = getelementptr i8, ptr %i.c, i64 2
  %.val89.i = load i16, ptr %i.f, align 2, !tbaa !10
  %i.g = sext i16 %.val86.i to i32                ; 2 uses
  %i.h = sext i16 %.val88.i to i32                ; 2 uses
  %i.i = mul nsw i32 %i.h, %i.g
  %i.j = sext i16 %.val87.i to i32                ; 2 uses
  %i.k = sext i16 %.val89.i to i32                ; 2 uses
  %i.l = mul nsw i32 %i.k, %i.j                   ; 2 uses
  %sext.i.i = mul i32 %i.l, -218038272
  %i.m = ashr exact i32 %sext.i.i, 16
  %.neg.i.i = mul nsw i32 %i.m, -3329
  %i.n = add nsw i32 %.neg.i.i, %i.l
  %i.o = sext i16 %i.d to i32
  %i.p = ashr i32 %i.n, 16
  %i.q = mul nsw i32 %i.p, %i.o
  %i.r = add nsw i32 %i.q, %i.i                   ; 2 uses
  %sext25.i.i = mul i32 %i.r, -218038272
  %i.s = ashr exact i32 %sext25.i.i, 16
  %.neg26.i.i = mul nsw i32 %i.s, -3329
  %i.t = add nsw i32 %.neg26.i.i, %i.r
  %i.u = lshr i32 %i.t, 16
  %i.v = trunc nuw i32 %i.u to i16
  store i16 %i.v, ptr %i.a, align 2, !tbaa !10
  %i.w = mul nsw i32 %i.k, %i.g
  %i.x = mul nsw i32 %i.h, %i.j
  %i.y = add nsw i32 %i.w, %i.x                   ; 2 uses
  %sext27.i.i = mul i32 %i.y, -218038272
  %i.z = ashr exact i32 %sext27.i.i, 16
  %.neg28.i.i = mul nsw i32 %i.z, -3329
  %i.aa = add i32 %.neg28.i.i, %i.y
  %i.ab = lshr i32 %i.aa, 16
  %i.ac = trunc nuw i32 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ah = sub i16 0, %i.d
  %.val82.i = load i16, ptr %i.af, align 2, !tbaa !10
  %i.ai = getelementptr i8, ptr %i.b, i64 6
  %.val83.i = load i16, ptr %i.ai, align 2, !tbaa !10
  %.val84.i = load i16, ptr %i.ag, align 2, !tbaa !10
  %i.aj = getelementptr i8, ptr %i.c, i64 6
  %.val85.i = load i16, ptr %i.aj, align 2, !tbaa !10
  %i.ak = sext i16 %.val82.i to i32               ; 2 uses
  %i.al = sext i16 %.val84.i to i32               ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.ak
  %i.an = sext i16 %.val83.i to i32               ; 2 uses
  %i.ao = sext i16 %.val85.i to i32               ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %i.an                ; 2 uses
  %sext.i90.i = mul i32 %i.ap, -218038272
  %i.aq = ashr exact i32 %sext.i90.i, 16
  %.neg.i91.i = mul nsw i32 %i.aq, -3329
  %i.ar = add nsw i32 %.neg.i91.i, %i.ap
  %i.as = sext i16 %i.ah to i32
  %i.at = ashr i32 %i.ar, 16
  %i.au = mul nsw i32 %i.at, %i.as
  %i.av = add nsw i32 %i.au, %i.am                ; 2 uses
  %sext25.i92.i = mul i32 %i.av, -218038272
  %i.aw = ashr exact i32 %sext25.i92.i, 16
  %.neg26.i93.i = mul nsw i32 %i.aw, -3329
  %i.ax = add nsw i32 %.neg26.i93.i, %i.av
  %i.ay = lshr i32 %i.ax, 16
  %i.az = trunc nuw i32 %i.ay to i16
  store i16 %i.az, ptr %i.ae, align 2, !tbaa !10
  %i.ba = mul nsw i32 %i.ao, %i.ak
  %i.bb = mul nsw i32 %i.al, %i.an
  %i.bc = add nsw i32 %i.ba, %i.bb                ; 2 uses
  %sext27.i94.i = mul i32 %i.bc, -218038272
  %i.bd = ashr exact i32 %sext27.i94.i, 16
  %.neg28.i95.i = mul nsw i32 %i.bd, -3329
  %i.be = add i32 %.neg28.i95.i, %i.bc
  %i.bf = lshr i32 %i.be, 16
  %i.bg = trunc nuw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.058132.i, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !10 ; 2 uses
  %.val78.i = load i16, ptr %i.bj, align 2, !tbaa !10
  %i.bn = getelementptr i8, ptr %i.b, i64 10
  %.val79.i = load i16, ptr %i.bn, align 2, !tbaa !10
  %.val80.i = load i16, ptr %i.bk, align 2, !tbaa !10
  %i.bo = getelementptr i8, ptr %i.c, i64 10
  %.val81.i = load i16, ptr %i.bo, align 2, !tbaa !10
  %i.bp = sext i16 %.val78.i to i32               ; 2 uses
  %i.bq = sext i16 %.val80.i to i32               ; 2 uses
  %i.br = mul nsw i32 %i.bq, %i.bp
  %i.bs = sext i16 %.val79.i to i32               ; 2 uses
  %i.bt = sext i16 %.val81.i to i32               ; 2 uses
  %i.bu = mul nsw i32 %i.bt, %i.bs                ; 2 uses
  %sext.i96.i = mul i32 %i.bu, -218038272
  %i.bv = ashr exact i32 %sext.i96.i, 16
  %.neg.i97.i = mul nsw i32 %i.bv, -3329
  %i.bw = add nsw i32 %.neg.i97.i, %i.bu
  %i.bx = sext i16 %i.bm to i32
  %i.by = ashr i32 %i.bw, 16
  %i.bz = mul nsw i32 %i.by, %i.bx
  %i.ca = add nsw i32 %i.bz, %i.br                ; 2 uses
  %sext25.i98.i = mul i32 %i.ca, -218038272
  %i.cb = ashr exact i32 %sext25.i98.i, 16
  %.neg26.i99.i = mul nsw i32 %i.cb, -3329
  %i.cc = add nsw i32 %.neg26.i99.i, %i.ca
  %i.cd = lshr i32 %i.cc, 16
  %i.ce = trunc nuw i32 %i.cd to i16
  store i16 %i.ce, ptr %i.bi, align 2, !tbaa !10
  %i.cf = mul nsw i32 %i.bt, %i.bp
  %i.cg = mul nsw i32 %i.bq, %i.bs
  %i.ch = add nsw i32 %i.cf, %i.cg                ; 2 uses
  %sext27.i100.i = mul i32 %i.ch, -218038272
  %i.ci = ashr exact i32 %sext27.i100.i, 16
  %.neg28.i101.i = mul nsw i32 %i.ci, -3329
  %i.cj = add i32 %.neg28.i101.i, %i.ch
  %i.ck = lshr i32 %i.cj, 16
  %i.cl = trunc nuw i32 %i.ck to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.cq = sub i16 0, %i.bm
  %.val74.i = load i16, ptr %i.co, align 2, !tbaa !10
  %i.cr = getelementptr i8, ptr %i.b, i64 14
  %.val75.i = load i16, ptr %i.cr, align 2, !tbaa !10
  %.val76.i = load i16, ptr %i.cp, align 2, !tbaa !10
  %i.cs = getelementptr i8, ptr %i.c, i64 14
  %.val77.i = load i16, ptr %i.cs, align 2, !tbaa !10
  %i.ct = sext i16 %.val74.i to i32               ; 2 uses
  %i.cu = sext i16 %.val76.i to i32               ; 2 uses
  %i.cv = mul nsw i32 %i.cu, %i.ct
  %i.cw = sext i16 %.val75.i to i32               ; 2 uses
  %i.cx = sext i16 %.val77.i to i32               ; 2 uses
  %i.cy = mul nsw i32 %i.cx, %i.cw                ; 2 uses
  %sext.i102.i = mul i32 %i.cy, -218038272
  %i.cz = ashr exact i32 %sext.i102.i, 16
  %.neg.i103.i = mul nsw i32 %i.cz, -3329
  %i.da = add nsw i32 %.neg.i103.i, %i.cy
  %i.db = sext i16 %i.cq to i32
  %i.dc = ashr i32 %i.da, 16
  %i.dd = mul nsw i32 %i.dc, %i.db
  %i.de = add nsw i32 %i.dd, %i.cv                ; 2 uses
  %sext25.i104.i = mul i32 %i.de, -218038272
  %i.df = ashr exact i32 %sext25.i104.i, 16
  %.neg26.i105.i = mul nsw i32 %i.df, -3329
  %i.dg = add nsw i32 %.neg26.i105.i, %i.de
  %i.dh = lshr i32 %i.dg, 16
  %i.di = trunc nuw i32 %i.dh to i16
  store i16 %i.di, ptr %i.cn, align 2, !tbaa !10
  %i.dj = mul nsw i32 %i.cx, %i.ct
  %i.dk = mul nsw i32 %i.cu, %i.cw
  %i.dl = add nsw i32 %i.dj, %i.dk                ; 2 uses
  %sext27.i106.i = mul i32 %i.dl, -218038272
  %i.dm = ashr exact i32 %sext27.i106.i, 16
  %.neg28.i107.i = mul nsw i32 %i.dm, -3329
  %i.dn = add i32 %.neg28.i107.i, %i.dl
  %i.do = lshr i32 %i.dn, 16
  %i.dp = trunc nuw i32 %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %.058132.i, i64 4
  %i.dv = load i16, ptr %i.du, align 4, !tbaa !10 ; 2 uses
  %.val70.i = load i16, ptr %i.ds, align 2, !tbaa !10
  %i.dw = getelementptr i8, ptr %i.b, i64 18
  %.val71.i = load i16, ptr %i.dw, align 2, !tbaa !10
  %.val72.i = load i16, ptr %i.dt, align 2, !tbaa !10
  %i.dx = getelementptr i8, ptr %i.c, i64 18
  %.val73.i = load i16, ptr %i.dx, align 2, !tbaa !10
  %i.dy = sext i16 %.val70.i to i32               ; 2 uses
  %i.dz = sext i16 %.val72.i to i32               ; 2 uses
  %i.ea = mul nsw i32 %i.dz, %i.dy
  %i.eb = sext i16 %.val71.i to i32               ; 2 uses
  %i.ec = sext i16 %.val73.i to i32               ; 2 uses
  %i.ed = mul nsw i32 %i.ec, %i.eb                ; 2 uses
  %sext.i108.i = mul i32 %i.ed, -218038272
  %i.ee = ashr exact i32 %sext.i108.i, 16
  %.neg.i109.i = mul nsw i32 %i.ee, -3329
  %i.ef = add nsw i32 %.neg.i109.i, %i.ed
  %i.eg = sext i16 %i.dv to i32
  %i.eh = ashr i32 %i.ef, 16
  %i.ei = mul nsw i32 %i.eh, %i.eg
  %i.ej = add nsw i32 %i.ei, %i.ea                ; 2 uses
end_hunk_1
begin_hunk_2_@mlkem_get_noise_eta1_c:bb.a
  %i.dr = lshr <4 x i32> %i.bi, splat (i32 6)
  %i.ds = and <4 x i32> %i.dr, splat (i32 7)
  %i.dt = lshr <4 x i32> %i.bi, splat (i32 9)
  %i.du = and <4 x i32> %i.dt, splat (i32 7)
  %i.dv = sub nsw <4 x i32> %i.ds, %i.du
  %i.dw = trunc nsw <4 x i32> %i.dv to <4 x i16>  ; 4 uses
  %i.dx = shufflevector <4 x i16> %i.dw, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dy = shufflevector <4 x i16> %i.dw, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x i16> %i.dw, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ea = shufflevector <4 x i16> %i.dw, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eb = lshr <4 x i32> %i.bi, splat (i32 12)
  %i.ec = and <4 x i32> %i.eb, splat (i32 7)
  %i.ed = lshr <4 x i32> %i.bi, splat (i32 15)
  %i.ee = and <4 x i32> %i.ed, splat (i32 7)
  %i.ef = sub nsw <4 x i32> %i.ec, %i.ee
  %i.eg = trunc nsw <4 x i32> %i.ef to <4 x i16>  ; 4 uses
  %i.eh = shufflevector <4 x i16> %i.eg, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ei = shufflevector <4 x i16> %i.eg, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ej = shufflevector <4 x i16> %i.eg, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ek = shufflevector <4 x i16> %i.eg, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = lshr <4 x i32> %i.bi, splat (i32 18)
  %i.em = and <4 x i32> %i.el, splat (i32 7)
  %i.en = lshr <4 x i32> %i.bi, splat (i32 21)
  %i.eo = sub nsw <4 x i32> %i.em, %i.en
  %i.ep = trunc nsw <4 x i32> %i.eo to <4 x i16>  ; 4 uses
  %i.eq = shufflevector <4 x i16> %i.ep, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <4 x i16> %i.ep, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.es = shufflevector <4 x i16> %i.ep, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <4 x i16> %i.ep, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x i16> %i.cb, <4 x i16> %i.co, <8 x i32> <i32 0, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <8 x i16> %i.eu, <8 x i16> %i.cy, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ew = shufflevector <8 x i16> %i.ev, <8 x i16> %i.dh, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ex = shufflevector <8 x i16> %i.ew, <8 x i16> %i.dq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <8 x i16> %i.ex, <8 x i16> %i.ea, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.ez = shufflevector <8 x i16> %i.ey, <8 x i16> %i.ek, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %i.fa = shufflevector <8 x i16> %i.ez, <8 x i16> %i.et, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  store <8 x i16> %i.fa, ptr %i.cc, align 2, !tbaa !10
  %i.fb = shufflevector <4 x i16> %i.cb, <4 x i16> %i.co, <8 x i32> <i32 1, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x i16> %i.fb, <8 x i16> %i.cx, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i16> %i.fc, <8 x i16> %i.dg, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fe = shufflevector <8 x i16> %i.fd, <8 x i16> %i.dp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 poison, i32 poison, i32 poison>
  %i.ff = shufflevector <8 x i16> %i.fe, <8 x i16> %i.dz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 9, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i16> %i.ff, <8 x i16> %i.ej, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.fh = shufflevector <8 x i16> %i.fg, <8 x i16> %i.es, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 9>
  store <8 x i16> %i.fh, ptr %i.ce, align 2, !tbaa !10
  %i.fi = shufflevector <4 x i16> %i.cb, <4 x i16> %i.co, <8 x i32> <i32 2, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fj = shufflevector <8 x i16> %i.fi, <8 x i16> %i.cw, <8 x i32> <i32 0, i32 1, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fk = shufflevector <8 x i16> %i.fj, <8 x i16> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 10, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fl = shufflevector <8 x i16> %i.fk, <8 x i16> %i.do, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 poison, i32 poison, i32 poison>
  %i.fm = shufflevector <8 x i16> %i.fl, <8 x i16> %i.dy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 10, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x i16> %i.fm, <8 x i16> %i.ei, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 10, i32 poison>
  %i.fo = shufflevector <8 x i16> %i.fn, <8 x i16> %i.er, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10>
  store <8 x i16> %i.fo, ptr %i.cg, align 2, !tbaa !10
  %i.fp = shufflevector <4 x i16> %i.cb, <4 x i16> %i.co, <8 x i32> <i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fq = shufflevector <8 x i16> %i.fp, <8 x i16> %i.cv, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fr = shufflevector <8 x i16> %i.fq, <8 x i16> %i.de, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fs = shufflevector <8 x i16> %i.fr, <8 x i16> %i.dn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 poison, i32 poison, i32 poison>
  %i.ft = shufflevector <8 x i16> %i.fs, <8 x i16> %i.dx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 poison, i32 poison>
  %i.fu = shufflevector <8 x i16> %i.ft, <8 x i16> %i.eh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 poison>
  %i.fv = shufflevector <8 x i16> %i.fu, <8 x i16> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  store <8 x i16> %i.fv, ptr %i.ci, align 2, !tbaa !10
  %i.fw = and <4 x i32> %i.bp, splat (i32 7)
  %i.fx = lshr <4 x i32> %i.bp, splat (i32 3)
  %i.fy = and <4 x i32> %i.fx, splat (i32 7)
  %i.fz = sub nsw <4 x i32> %i.fw, %i.fy
  %i.ga = trunc nsw <4 x i32> %i.fz to <4 x i16>  ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.gf = lshr <4 x i32> %i.bp, splat (i32 6)
  %i.gg = and <4 x i32> %i.gf, splat (i32 7)
  %i.gh = lshr <4 x i32> %i.bp, splat (i32 9)
  %i.gi = and <4 x i32> %i.gh, splat (i32 7)
  %i.gj = sub nsw <4 x i32> %i.gg, %i.gi
  %i.gk = trunc nsw <4 x i32> %i.gj to <4 x i16>  ; 4 uses
  %i.gl = lshr <4 x i32> %i.bp, splat (i32 12)
  %i.gm = and <4 x i32> %i.gl, splat (i32 7)
  %i.gn = lshr <4 x i32> %i.bp, splat (i32 15)
  %i.go = and <4 x i32> %i.gn, splat (i32 7)
  %i.gp = sub nsw <4 x i32> %i.gm, %i.go
  %i.gq = trunc nsw <4 x i32> %i.gp to <4 x i16>  ; 4 uses
  %i.gr = shufflevector <4 x i16> %i.gq, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gs = shufflevector <4 x i16> %i.gq, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gt = shufflevector <4 x i16> %i.gq, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gu = shufflevector <4 x i16> %i.gq, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gv = lshr <4 x i32> %i.bp, splat (i32 18)
  %i.gw = and <4 x i32> %i.gv, splat (i32 7)
  %i.gx = lshr <4 x i32> %i.bp, splat (i32 21)
  %i.gy = sub nsw <4 x i32> %i.gw, %i.gx
  %i.gz = trunc nsw <4 x i32> %i.gy to <4 x i16>  ; 4 uses
  %i.ha = shufflevector <4 x i16> %i.gz, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hb = shufflevector <4 x i16> %i.gz, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hc = shufflevector <4 x i16> %i.gz, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hd = shufflevector <4 x i16> %i.gz, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.he = and <4 x i32> %i.bw, splat (i32 7)
  %i.hf = lshr <4 x i32> %i.bw, splat (i32 3)
  %i.hg = and <4 x i32> %i.hf, splat (i32 7)
  %i.hh = sub nsw <4 x i32> %i.he, %i.hg
  %i.hi = trunc nsw <4 x i32> %i.hh to <4 x i16>  ; 4 uses
  %i.hj = shufflevector <4 x i16> %i.hi, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hk = shufflevector <4 x i16> %i.hi, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hl = shufflevector <4 x i16> %i.hi, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hm = shufflevector <4 x i16> %i.hi, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hn = lshr <4 x i32> %i.bw, splat (i32 6)
  %i.ho = and <4 x i32> %i.hn, splat (i32 7)
  %i.hp = lshr <4 x i32> %i.bw, splat (i32 9)
  %i.hq = and <4 x i32> %i.hp, splat (i32 7)
  %i.hr = sub nsw <4 x i32> %i.ho, %i.hq
  %i.hs = trunc nsw <4 x i32> %i.hr to <4 x i16>  ; 4 uses
  %i.ht = shufflevector <4 x i16> %i.hs, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hu = shufflevector <4 x i16> %i.hs, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hv = shufflevector <4 x i16> %i.hs, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hw = shufflevector <4 x i16> %i.hs, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hx = lshr <4 x i32> %i.bw, splat (i32 12)
  %i.hy = and <4 x i32> %i.hx, splat (i32 7)
  %i.hz = lshr <4 x i32> %i.bw, splat (i32 15)
  %i.ia = and <4 x i32> %i.hz, splat (i32 7)
  %i.ib = sub nsw <4 x i32> %i.hy, %i.ia
  %i.ic = trunc nsw <4 x i32> %i.ib to <4 x i16>  ; 4 uses
  %i.id = shufflevector <4 x i16> %i.ic, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ie = shufflevector <4 x i16> %i.ic, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.if = shufflevector <4 x i16> %i.ic, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ig = shufflevector <4 x i16> %i.ic, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ih = lshr <4 x i32> %i.bw, splat (i32 18)
  %i.ii = and <4 x i32> %i.ih, splat (i32 7)
  %i.ij = lshr <4 x i32> %i.bw, splat (i32 21)
  %i.ik = sub nsw <4 x i32> %i.ii, %i.ij
  %i.il = trunc nsw <4 x i32> %i.ik to <4 x i16>  ; 4 uses
  %i.im = shufflevector <4 x i16> %i.il, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.in = shufflevector <4 x i16> %i.il, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.io = shufflevector <4 x i16> %i.il, <4 x i16> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ip = shufflevector <4 x i16> %i.il, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iq = shufflevector <4 x i16> %i.ga, <4 x i16> %i.gk, <8 x i32> <i32 0, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ir = shufflevector <8 x i16> %i.iq, <8 x i16> %i.gu, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.is = shufflevector <8 x i16> %i.ir, <8 x i16> %i.hd, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.it = shufflevector <8 x i16> %i.is, <8 x i16> %i.hm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>
  %i.iu = shufflevector <8 x i16> %i.it, <8 x i16> %i.hw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.iv = shufflevector <8 x i16> %i.iu, <8 x i16> %i.ig, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %i.iw = shufflevector <8 x i16> %i.iv, <8 x i16> %i.ip, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  store <8 x i16> %i.iw, ptr %i.gb, align 2, !tbaa !10
  %i.ix = shufflevector <4 x i16> %i.ga, <4 x i16> %i.gk, <8 x i32> <i32 1, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iy = shufflevector <8 x i16> %i.ix, <8 x i16> %i.gt, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iz = shufflevector <8 x i16> %i.iy, <8 x i16> %i.hc, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ja = shufflevector <8 x i16> %i.iz, <8 x i16> %i.hl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 poison, i32 poison, i32 poison>
  %i.jb = shufflevector <8 x i16> %i.ja, <8 x i16> %i.hv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 9, i32 poison, i32 poison>
  %i.jc = shufflevector <8 x i16> %i.jb, <8 x i16> %i.if, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.jd = shufflevector <8 x i16> %i.jc, <8 x i16> %i.io, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 9>
  store <8 x i16> %i.jd, ptr %i.gc, align 2, !tbaa !10
  %i.je = shufflevector <4 x i16> %i.ga, <4 x i16> %i.gk, <8 x i32> <i32 2, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jf = shufflevector <8 x i16> %i.je, <8 x i16> %i.gs, <8 x i32> <i32 0, i32 1, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jg = shufflevector <8 x i16> %i.jf, <8 x i16> %i.hb, <8 x i32> <i32 0, i32 1, i32 2, i32 10, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jh = shufflevector <8 x i16> %i.jg, <8 x i16> %i.hk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 poison, i32 poison, i32 poison>
  %i.ji = shufflevector <8 x i16> %i.jh, <8 x i16> %i.hu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 10, i32 poison, i32 poison>
  %i.jj = shufflevector <8 x i16> %i.ji, <8 x i16> %i.ie, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 10, i32 poison>
  %i.jk = shufflevector <8 x i16> %i.jj, <8 x i16> %i.in, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10>
  store <8 x i16> %i.jk, ptr %i.gd, align 2, !tbaa !10
  %i.jl = shufflevector <4 x i16> %i.ga, <4 x i16> %i.gk, <8 x i32> <i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jm = shufflevector <8 x i16> %i.jl, <8 x i16> %i.gr, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jn = shufflevector <8 x i16> %i.jm, <8 x i16> %i.ha, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jo = shufflevector <8 x i16> %i.jn, <8 x i16> %i.hj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 poison, i32 poison, i32 poison>
  %i.jp = shufflevector <8 x i16> %i.jo, <8 x i16> %i.ht, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 poison, i32 poison>
  %i.jq = shufflevector <8 x i16> %i.jp, <8 x i16> %i.id, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 poison>
  %i.jr = shufflevector <8 x i16> %i.jq, <8 x i16> %i.im, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  store <8 x i16> %i.jr, ptr %i.ge, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.js = icmp eq i64 %index.next, 16
  br i1 %i.js, label %mlkem_cbd_eta3.exit, label %vector.body, !llvm.loop !131

mlkem_cbd_eta3.exit:                              ; preds = %vector.body, %bb.b, %mlkem_prf.exit
  %.0.i12 = phi i32 [ %i.d, %bb.b ], [ %i.f, %mlkem_prf.exit ], [ 0, %vector.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.jt = tail call i32 @wc_Shake256_Update(ptr noundef %0, ptr noundef %2, i32 noundef 33) #8 ; 2 uses
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %mlkem_prf.exit10, label %mlkem_prf.exit10.thread

mlkem_prf.exit10:                                 ; preds = %bb.c
  %i.jv = call i32 @wc_Shake256_Final(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 128) #8 ; 2 uses
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.d, label %mlkem_prf.exit10.thread

bb.d:                                             ; preds = %mlkem_prf.exit10
  call fastcc void @mlkem_cbd_eta2(ptr noundef %1, ptr noundef %i.b)
  br label %mlkem_prf.exit10.thread

mlkem_prf.exit10.thread:                          ; preds = %bb.c, %bb.d, %mlkem_prf.exit10
  %.0.i914 = phi i32 [ %i.jv, %mlkem_prf.exit10 ], [ 0, %bb.d ], [ %i.jt, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.e

bb.e:                                             ; preds = %mlkem_prf.exit10.thread, %mlkem_cbd_eta3.exit
  %.0 = phi i32 [ %.0.i12, %mlkem_cbd_eta3.exit ], [ %.0.i914, %mlkem_prf.exit10.thread ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mlkem_cbd_eta2(ptr nofree noundef writeonly captures(none) initializes((0, 480)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.072 = phi ptr [ %1, %bb.a ], [ %i.dh, %bb.b ] ; 2 uses
  %.0.val = load i64, ptr %.072, align 1          ; 2 uses
  %i.a = and i64 %.0.val, 6148914691236517205
  %i.b = lshr i64 %.0.val, 1
  %i.c = and i64 %i.b, 6148914691236517205
  %i.d = add nuw i64 %i.c, %i.a                   ; 17 uses
  %i.e = trunc i64 %i.d to i32                    ; 16 uses
  %i.f = and i32 %i.e, 3
  %i.g = lshr i32 %i.e, 2
  %i.h = and i32 %i.g, 3
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = trunc nsw i32 %i.i to i16
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 9 uses
  store i16 %i.j, ptr %i.k, align 2, !tbaa !10
  %i.l = lshr i32 %i.e, 4
  %i.m = and i32 %i.l, 3
  %i.n = lshr i32 %i.e, 6
  %i.o = and i32 %i.n, 3
  %i.p = sub nsw i32 %i.m, %i.o
  %i.q = trunc nsw i32 %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 %i.q, ptr %i.r, align 2, !tbaa !10
  %i.s = lshr i32 %i.e, 8
  %i.t = and i32 %i.s, 3
  %i.u = lshr i32 %i.e, 10
  %i.v = and i32 %i.u, 3
  %i.w = sub nsw i32 %i.t, %i.v
  %i.x = trunc nsw i32 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i16 %i.x, ptr %i.y, align 2, !tbaa !10
  %i.z = lshr i32 %i.e, 12
  %i.aa = and i32 %i.z, 3
  %i.ab = lshr i32 %i.e, 14
  %i.ac = and i32 %i.ab, 3
  %i.ad = sub nsw i32 %i.aa, %i.ac
  %i.ae = trunc nsw i32 %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !10
  %i.ag = lshr i32 %i.e, 16
  %i.ah = and i32 %i.ag, 3
  %i.ai = lshr i32 %i.e, 18
  %i.aj = and i32 %i.ai, 3
  %i.ak = sub nsw i32 %i.ah, %i.aj
  %i.al = trunc nsw i32 %i.ak to i16
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i16 %i.al, ptr %i.am, align 2, !tbaa !10
  %i.an = lshr i32 %i.e, 20
  %i.ao = and i32 %i.an, 3
  %i.ap = lshr i32 %i.e, 22
  %i.aq = and i32 %i.ap, 3
  %i.ar = sub nsw i32 %i.ao, %i.aq
  %i.as = trunc nsw i32 %i.ar to i16
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  store i16 %i.as, ptr %i.at, align 2, !tbaa !10
  %i.au = lshr i32 %i.e, 24
  %i.av = and i32 %i.au, 3
  %i.aw = lshr i32 %i.e, 26
  %i.ax = and i32 %i.aw, 3
  %i.ay = sub nsw i32 %i.av, %i.ax
  %i.az = trunc nsw i32 %i.ay to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !10
  %i.bb = lshr i32 %i.e, 28
  %i.bc = and i32 %i.bb, 3
  %i.bd = lshr i32 %i.e, 30
  %i.be = sub nsw i32 %i.bc, %i.bd
  %i.bf = trunc nsw i32 %i.be to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 14
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bi = lshr i64 %i.d, 32
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = lshr i64 %i.d, 34
  %i.bl = trunc i64 %i.bk to i16
  %i.bm = lshr i64 %i.d, 36
  %i.bn = trunc i64 %i.bm to i16
  %i.bo = lshr i64 %i.d, 38
  %i.bp = trunc i64 %i.bo to i16
  %i.bq = lshr i64 %i.d, 40
  %i.br = trunc i64 %i.bq to i16
  %i.bs = lshr i64 %i.d, 42
  %i.bt = trunc i64 %i.bs to i16
  %i.bu = lshr i64 %i.d, 44
  %i.bv = trunc i64 %i.bu to i16
  %i.bw = lshr i64 %i.d, 46
  %i.bx = trunc i64 %i.bw to i16
  %i.by = lshr i64 %i.d, 48
  %i.bz = trunc nuw i64 %i.by to i16
  %i.ca = lshr i64 %i.d, 50
  %i.cb = trunc nuw nsw i64 %i.ca to i16
  %i.cc = lshr i64 %i.d, 52
  %i.cd = trunc nuw nsw i64 %i.cc to i16
  %i.ce = lshr i64 %i.d, 54
  %i.cf = trunc nuw nsw i64 %i.ce to i16
  %i.cg = lshr i64 %i.d, 56
  %i.ch = trunc nuw nsw i64 %i.cg to i16
  %i.ci = lshr i64 %i.d, 58
  %i.cj = trunc nuw nsw i64 %i.ci to i16
  %i.ck = lshr i64 %i.d, 60
  %i.cl = trunc nuw nsw i64 %i.ck to i16
  %i.cm = insertelement <8 x i16> poison, i16 %i.bj, i64 0
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.bn, i64 1
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.br, i64 2
  %i.cp = insertelement <8 x i16> %i.co, i16 %i.bv, i64 3
  %i.cq = insertelement <8 x i16> %i.cp, i16 %i.bz, i64 4
  %i.cr = insertelement <8 x i16> %i.cq, i16 %i.cd, i64 5
  %i.cs = insertelement <8 x i16> %i.cr, i16 %i.ch, i64 6
  %i.ct = insertelement <8 x i16> %i.cs, i16 %i.cl, i64 7
  %i.cu = and <8 x i16> %i.ct, splat (i16 3)
  %i.cv = lshr i64 %i.d, 62
  %i.cw = trunc nuw nsw i64 %i.cv to i16
  %i.cx = insertelement <8 x i16> poison, i16 %i.bl, i64 0
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.bp, i64 1
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.bt, i64 2
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.bx, i64 3
  %i.db = insertelement <8 x i16> %i.da, i16 %i.cb, i64 4
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cf, i64 5
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cj, i64 6
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 7
  %i.df = and <8 x i16> %i.de, <i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 -1>
  %i.dg = sub nsw <8 x i16> %i.cu, %i.df
  store <8 x i16> %i.dg, ptr %i.bh, align 2, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %.072, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %i.di = icmp samesign ult i64 %indvars.iv, 240
  br i1 %i.di, label %bb.b, label %bb.c, !llvm.loop !132

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mlkem_csubq_c(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %0, align 2, !tbaa !10 ; 2 uses
  %wide.load9 = load <8 x i16>, ptr %i.a, align 2, !tbaa !10 ; 2 uses
  %i.b = add <8 x i16> %wide.load, splat (i16 -3329) ; 2 uses
  %i.c = add <8 x i16> %wide.load9, splat (i16 -3329) ; 2 uses
  %i.d = icmp slt <8 x i16> %i.b, zeroinitializer
  %i.e = icmp slt <8 x i16> %i.c, zeroinitializer
  %i.f = select <8 x i1> %i.d, <8 x i16> %wide.load, <8 x i16> %i.b
  %i.g = select <8 x i1> %i.e, <8 x i16> %wide.load9, <8 x i16> %i.c
  store <8 x i16> %i.f, ptr %0, align 2, !tbaa !10
  store <8 x i16> %i.g, ptr %i.a, align 2, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.h, align 2, !tbaa !10 ; 2 uses
  %wide.load9.1 = load <8 x i16>, ptr %i.i, align 2, !tbaa !10 ; 2 uses
  %i.j = add <8 x i16> %wide.load.1, splat (i16 -3329) ; 2 uses
  %i.k = add <8 x i16> %wide.load9.1, splat (i16 -3329) ; 2 uses
  %i.l = icmp slt <8 x i16> %i.j, zeroinitializer
  %i.m = icmp slt <8 x i16> %i.k, zeroinitializer
  %i.n = select <8 x i1> %i.l, <8 x i16> %wide.load.1, <8 x i16> %i.j
  %i.o = select <8 x i1> %i.m, <8 x i16> %wide.load9.1, <8 x i16> %i.k
  store <8 x i16> %i.n, ptr %i.h, align 2, !tbaa !10
  store <8 x i16> %i.o, ptr %i.i, align 2, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.load.2 = load <8 x i16>, ptr %i.p, align 2, !tbaa !10 ; 2 uses
  %wide.load9.2 = load <8 x i16>, ptr %i.q, align 2, !tbaa !10 ; 2 uses
  %i.r = add <8 x i16> %wide.load.2, splat (i16 -3329) ; 2 uses
  %i.s = add <8 x i16> %wide.load9.2, splat (i16 -3329) ; 2 uses
  %i.t = icmp slt <8 x i16> %i.r, zeroinitializer
  %i.u = icmp slt <8 x i16> %i.s, zeroinitializer
  %i.v = select <8 x i1> %i.t, <8 x i16> %wide.load.2, <8 x i16> %i.r
  %i.w = select <8 x i1> %i.u, <8 x i16> %wide.load9.2, <8 x i16> %i.s
  store <8 x i16> %i.v, ptr %i.p, align 2, !tbaa !10
  store <8 x i16> %i.w, ptr %i.q, align 2, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %wide.load.3 = load <8 x i16>, ptr %i.x, align 2, !tbaa !10 ; 2 uses
  %wide.load9.3 = load <8 x i16>, ptr %i.y, align 2, !tbaa !10 ; 2 uses
  %i.z = add <8 x i16> %wide.load.3, splat (i16 -3329) ; 2 uses
  %i.aa = add <8 x i16> %wide.load9.3, splat (i16 -3329) ; 2 uses
  %i.ab = icmp slt <8 x i16> %i.z, zeroinitializer
  %i.ac = icmp slt <8 x i16> %i.aa, zeroinitializer
  %i.ad = select <8 x i1> %i.ab, <8 x i16> %wide.load.3, <8 x i16> %i.z
  %i.ae = select <8 x i1> %i.ac, <8 x i16> %wide.load9.3, <8 x i16> %i.aa
  store <8 x i16> %i.ad, ptr %i.x, align 2, !tbaa !10
  store <8 x i16> %i.ae, ptr %i.y, align 2, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %wide.load.4 = load <8 x i16>, ptr %i.af, align 2, !tbaa !10 ; 2 uses
  %wide.load9.4 = load <8 x i16>, ptr %i.ag, align 2, !tbaa !10 ; 2 uses
  %i.ah = add <8 x i16> %wide.load.4, splat (i16 -3329) ; 2 uses
  %i.ai = add <8 x i16> %wide.load9.4, splat (i16 -3329) ; 2 uses
  %i.aj = icmp slt <8 x i16> %i.ah, zeroinitializer
  %i.ak = icmp slt <8 x i16> %i.ai, zeroinitializer
  %i.al = select <8 x i1> %i.aj, <8 x i16> %wide.load.4, <8 x i16> %i.ah
  %i.am = select <8 x i1> %i.ak, <8 x i16> %wide.load9.4, <8 x i16> %i.ai
  store <8 x i16> %i.al, ptr %i.af, align 2, !tbaa !10
  store <8 x i16> %i.am, ptr %i.ag, align 2, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
end_hunk_2
