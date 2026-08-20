inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 134
begin_hunk_0_@deflate_optimize_and_flush_block:bb.a
  br i1 %exitcond52.not.i174.1, label %deflate_set_costs_from_codes.exit175, label %.preheader.i168, !llvm.loop !302

deflate_set_costs_from_codes.exit175:             ; preds = %.preheader.i168, %bb.x, %deflate_set_costs_from_codes.exit137, %deflate_set_costs_from_codes.exit156
  %.077 = phi ptr [ %8, %deflate_set_costs_from_codes.exit137 ], [ null, %deflate_set_costs_from_codes.exit156 ], [ null, %bb.x ], [ null, %.preheader.i168 ]
  call fastcc void @deflate_flush_block(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %.077, i1 noundef zeroext %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @deflate_compute_true_cost(ptr noundef initializes((6060, 6068)) %0) unnamed_addr #15 {
.preheader44:
  tail call fastcc void @deflate_precompute_huffman_header(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6060
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = sub i32 288, %i.c
  %i.g = zext i32 %i.f to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4778
  %i.j = load i8, ptr %i.i, align 2, !tbaa !31
  %i.k = zext i8 %i.j to i32
  %i.l = add nuw nsw i32 %i.k, 7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4680
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31
  %i.o = mul i32 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4777
  %i.q = load i8, ptr %i.p, align 1, !tbaa !31
  %i.r = zext i8 %i.q to i32
  %i.s = add nuw nsw i32 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4676
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31
  %i.v = mul i32 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.x = load i8, ptr %i.w, align 4, !tbaa !31
  %i.y = zext i8 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4672
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !31
  %i.ac = mul i32 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4760
  %i.af = load <16 x i32>, ptr %i.ad, align 4, !tbaa !31
  %i.ag = load <16 x i8>, ptr %i.ae, align 4, !tbaa !31
  %i.ah = zext <16 x i8> %i.ag to <16 x i32>
  %i.ai = mul <16 x i32> %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6068
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !31
  %i.al = mul i32 %i.ak, 3
  %i.am = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ai)
  %op.rdx74 = add i32 %i.am, %i.al
  %op.rdx75 = add i32 %i.ac, %i.v
  %op.rdx76 = add i32 %i.o, 14
  %op.rdx77 = add i32 %op.rdx74, %op.rdx75
  %op.rdx78 = add i32 %op.rdx77, %op.rdx76
  %i.an = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %op.rdx78, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader44
  %index = phi i64 [ 0, %.preheader44 ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.an, %.preheader44 ], [ %i.aw, %vector.body ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %.preheader44 ], [ %i.ax, %vector.body ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !9
  %wide.load68 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %wide.load69 = load <4 x i8>, ptr %i.aq, align 1, !tbaa !31
  %wide.load70 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !31
  %i.as = zext <4 x i8> %wide.load69 to <4 x i32>
  %i.at = zext <4 x i8> %wide.load70 to <4 x i32>
  %i.au = mul <4 x i32> %wide.load, %i.as
  %i.av = mul <4 x i32> %wide.load68, %i.at
  %i.aw = add <4 x i32> %i.au, %vec.phi           ; 2 uses
  %i.ax = add <4 x i32> %i.av, %vec.phi67         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, 256
  br i1 %i.ay, label %.preheader, label %vector.body, !llvm.loop !303

.preheader:                                       ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ax, %i.aw
  %i.az = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !31
  %i.be = zext i8 %i.bd to i32
  %i.bf = mul i32 %i.bb, %i.be
  %i.bg = add i32 %i.bf, %i.az
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2970
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2962
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2946
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2945
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !31
  %i.bp = zext i8 %i.bo to i32
  %i.bq = mul i32 %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.bt = load <4 x i8>, ptr %i.bh, align 2, !tbaa !31
  %i.bu = load <8 x i8>, ptr %i.bi, align 2, !tbaa !31
  %i.bv = load <28 x i32>, ptr %i.bj, align 4, !tbaa !9
  %i.bw = load <16 x i8>, ptr %i.bk, align 2, !tbaa !31
  %i.bx = load <4 x i32>, ptr %i.br, align 4, !tbaa !9
  %i.by = load <4 x i8>, ptr %i.bs, align 4, !tbaa !31
  %i.bz = shufflevector <4 x i8> %i.bt, <4 x i8> %i.by, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ca = shufflevector <16 x i8> %i.bw, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cb = shufflevector <32 x i8> %i.ca, <32 x i8> %i.bz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.cc = shufflevector <8 x i8> %i.bu, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cd = shufflevector <32 x i8> %i.cb, <32 x i8> %i.cc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ce = zext <32 x i8> %i.cd to <32 x i32>
  %i.cf = add nuw nsw <32 x i32> %i.ce, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.cg = shufflevector <28 x i32> %i.bv, <28 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ci = shufflevector <32 x i32> %i.cg, <32 x i32> %i.ch, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35>
  %i.cj = mul <32 x i32> %i.ci, %i.cf             ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2980
  %i.cm = load <24 x i32>, ptr %i.ck, align 4, !tbaa !9
  %i.cn = load <24 x i8>, ptr %i.cl, align 4, !tbaa !31
  %i.co = zext <24 x i8> %i.cn to <24 x i32>
  %i.cp = add nuw nsw <24 x i32> %i.co, <i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12>
  %i.cq = mul <24 x i32> %i.cp, %i.cm
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !9
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 3004
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !31
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add nuw nsw i32 %i.cv, 13
  %i.cx = mul i32 %i.cw, %i.cs
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 3005
  %i.db = load i8, ptr %i.da, align 1, !tbaa !31
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nuw nsw i32 %i.dc, 13
  %i.de = mul i32 %i.dd, %i.cz
  %i.df = shufflevector <24 x i32> %i.cq, <24 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dg = add <32 x i32> %i.cj, %i.df
  %i.dh = shufflevector <32 x i32> %i.dg, <32 x i32> %i.cj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.di = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.dh)
  %op.rdx = add i32 %i.di, %i.bq
  %op.rdx71 = add i32 %i.cx, %i.de
  %op.rdx72 = add i32 %op.rdx, %op.rdx71
  %op.rdx73 = add i32 %op.rdx72, %i.bg
  ret i32 %op.rdx73
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @deflate_find_min_cost_path(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %.idx = shl nuw nsw i64 %i.a, 3
  %.add63 = add nuw nsw i64 %.idx, 6532420        ; 2 uses
  %.ptr65 = getelementptr inbounds nuw i8, ptr %0, i64 %.add63
  store i32 0, ptr %.ptr65, align 4, !tbaa !304
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8972420
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8976796 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8974480
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8973444
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.f = phi i32 [ 0, %bb.a ], [ %.3, %.loopexit ]
  %.050 = phi ptr [ %2, %bb.a ], [ %.151, %.loopexit ] ; 4 uses
  %.049.idx = phi i64 [ %.add63, %bb.a ], [ %.049.add, %.loopexit ] ; 2 uses
  %.049.ptr = getelementptr inbounds i8, ptr %0, i64 %.049.idx
  %.049.add = add nsw i64 %.049.idx, -8           ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %0, i64 %.049.add ; 2 uses
  %.ptr60 = getelementptr inbounds i8, ptr %.050, i64 -4 ; 2 uses
  %i.g = load i16, ptr %.ptr60, align 2, !tbaa !91 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.050, i64 -2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !93   ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = zext i16 %i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31
  %i.n = add i32 %i.f, %i.m                       ; 2 uses
  %i.o = shl nuw nsw i32 %i.j, 9
  %i.p = or disjoint i32 %i.o, 1
  %i.q = getelementptr inbounds i8, ptr %.049.ptr, i64 -4 ; 2 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !182
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = zext i16 %i.g to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %.add = sub nuw nsw i64 -4, %i.s                ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.047 = phi i32 [ %i.n, %bb.c ], [ %.2, %bb.h ]
  %.046.idx = phi i64 [ %.add, %bb.c ], [ %.046.add, %bb.h ] ; 2 uses
  %.0 = phi i32 [ 3, %bb.c ], [ %umax, %bb.h ]    ; 2 uses
  %.046.ptr = getelementptr inbounds i8, ptr %.050, i64 %.046.idx ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.046.ptr, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !93   ; 2 uses
  %i.v = zext i16 %i.u to i32
  %i.w = zext i16 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !31
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !31
  %i.ac = load i16, ptr %.046.ptr, align 2, !tbaa !91
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = shl nuw nsw i32 %i.v, 9
  %3 = zext i32 %.0 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ %3, %bb.d ] ; 4 uses
  %.1 = phi i32 [ %.2, %bb.g ], [ %.047, %bb.d ]  ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31
  %i.ah = add i32 %i.ag, %i.ab
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !304
  %i.ak = add i32 %i.ah, %i.aj                    ; 2 uses
  %i.al = icmp ult i32 %i.ak, %.1
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %4 = trunc nuw i64 %indvars.iv to i32
  %i.am = or i32 %i.ae, %4
  store i32 %i.am, ptr %i.q, align 4, !tbaa !182
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.2 = phi i32 [ %i.ak, %bb.f ], [ %.1, %bb.e ]  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %.not58 = icmp ugt i32 %indvars, %i.ad
  br i1 %.not58, label %bb.h, label %bb.e, !llvm.loop !305

bb.h:                                             ; preds = %bb.g
  %5 = add i32 %.0, 1
  %6 = add nuw nsw i32 %i.ad, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %5, i32 %6)
  %.046.add = add nsw i64 %.046.idx, 4            ; 2 uses
  %.not59 = icmp eq i64 %.046.add, -4
  br i1 %.not59, label %.loopexit.loopexit, label %bb.d, !llvm.loop !306

.loopexit.loopexit:                               ; preds = %bb.h
  %.ptr61 = getelementptr inbounds i8, ptr %.050, i64 %.add
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.151 = phi ptr [ %.ptr60, %bb.b ], [ %.ptr61, %.loopexit.loopexit ]
  %.3 = phi i32 [ %i.n, %bb.b ], [ %.2, %.loopexit.loopexit ] ; 2 uses
  store i32 %.3, ptr %.ptr, align 4, !tbaa !304
  %.not62 = icmp eq i64 %.049.add, 6532420
  br i1 %.not62, label %bb.i, label %bb.b, !llvm.loop !307

bb.i:                                             ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %i.an, i8 0, i64 1280, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 6532420 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.0.i = phi ptr [ %i.ao, %bb.i ], [ %i.bp, %bb.m ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !182 ; 2 uses
  %i.at = and i32 %i.as, 511                      ; 2 uses
  %i.au = lshr i32 %i.as, 9                       ; 2 uses
  %i.av = icmp eq i32 %i.at, 1
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !9
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ba = zext nneg i32 %i.at to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !31
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1068 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !9
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !9
  %i.bi = zext nneg i32 %i.au to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !31
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !9
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi.i = phi i64 [ %i.ba, %bb.l ], [ 1, %bb.k ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.pre-phi.i ; 2 uses
  %.not.i = icmp eq ptr %i.bp, %i.ap
  br i1 %.not.i, label %deflate_tally_item_list.exit, label %bb.j, !llvm.loop !308

deflate_tally_item_list.exit:                     ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !9
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2688
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.an, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bt)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2560
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.aq, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dispatch_decomp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !9
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %arch_select_decompress_func.exit

bb.b:                                             ; preds = %bb.a
  tail call void @libdeflate_init_x86_cpu_features()
  br label %arch_select_decompress_func.exit

arch_select_decompress_func.exit:                 ; preds = %bb.a, %bb.b
  %i.c = load volatile i32, ptr @libdeflate_x86_cpu_features, align 4, !tbaa !9
  %i.d = and i32 %i.c, 16
  %.not.i = icmp eq i32 %i.d, 0
  %spec.store.select = select i1 %.not.i, ptr @deflate_decompress_default, ptr @deflate_decompress_bmi2 ; 2 uses
  store volatile ptr %spec.store.select, ptr @decompress_impl, align 8, !tbaa !11
  %i.e = tail call i32 %spec.store.select(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #27, !callees !309
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @deflate_decompress_default(ptr noalias nofree noundef captures(address_is_null) %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.b = tail call i64 @llvm.umin.i64(i64 %4, i64 299)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 18 uses
  %i.f = tail call i64 @llvm.umin.i64(i64 %2, i64 25)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %i.e to i64                 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11552 ; 3 uses
  %i.k = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10976 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9368 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11556 ; 2 uses
  %i.q = ptrtoint ptr %3 to i64                   ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 144
  %scevgep1043 = getelementptr i8, ptr %0, i64 256
  %scevgep1045 = getelementptr i8, ptr %0, i64 280
  %scevgep1047 = getelementptr i8, ptr %0, i64 288
  br label %bb.b

bb.b:                                             ; preds = %.thread869, %bb.a
  %.0700 = phi ptr [ %3, %bb.a ], [ %.8708, %.thread869 ] ; 6 uses
  %.0673 = phi ptr [ %1, %bb.a ], [ %.26699, %.thread869 ] ; 5 uses
  %.0643 = phi i64 [ 0, %bb.a ], [ %.33, %.thread869 ] ; 3 uses
  %.0618 = phi i32 [ 0, %bb.a ], [ %.29, %.thread869 ] ; 6 uses
  %.0611 = phi i64 [ 0, %bb.a ], [ %.21, %.thread869 ] ; 3 uses
  %i.r = ptrtoint ptr %.0673 to i64
  %i.s = sub i64 %i.i, %i.r
  %i.t = icmp ugt i64 %i.s, 7
  br i1 %i.t, label %bb.c, label %.preheader915, !prof !57

.preheader915:                                    ; preds = %bb.b
  %i.u = and i32 %.0618, 255                      ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 56
  br i1 %i.v, label %.lr.ph, label %.loopexit916

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i808 = load i64, ptr %.0673, align 1
  %i.w = and i32 %.0618, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %.0.copyload.i808, %i.x
  %i.z = or i64 %i.y, %.0643
  %i.aa = getelementptr inbounds nuw i8, ptr %.0673, i64 7
  %i.ab = lshr i32 %.0618, 3
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = or i32 %.0618, 56
  br label %.loopexit916

.lr.ph:                                           ; preds = %.preheader915, %bb.f
  %i.ah = phi i32 [ %i.ar, %bb.f ], [ %i.u, %.preheader915 ]
  %.1612953 = phi i64 [ %.2613, %bb.f ], [ %.0611, %.preheader915 ] ; 2 uses
  %.1619952 = phi i32 [ %i.aq, %bb.f ], [ %.0618, %.preheader915 ]
  %.1644951 = phi i64 [ %.2645, %bb.f ], [ %.0643, %.preheader915 ] ; 2 uses
  %.1674950 = phi ptr [ %.2675, %bb.f ], [ %.0673, %.preheader915 ] ; 4 uses
  %.not = icmp eq ptr %.1674950, %i.e
  br i1 %.not, label %bb.e, label %bb.d, !prof !53

bb.d:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.1674950, i64 1
  %i.aj = load i8, ptr %.1674950, align 1, !tbaa !31
  %i.ak = zext i8 %i.aj to i64
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = shl nuw nsw i64 %i.ak, %i.al
  %i.an = or i64 %i.am, %.1644951
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ao = add i64 %.1612953, 1                    ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 8
  br i1 %i.ap, label %.thread836, label %bb.f, !prof !53

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2675 = phi ptr [ %i.ai, %bb.d ], [ %.1674950, %bb.e ] ; 2 uses
  %.2645 = phi i64 [ %i.an, %bb.d ], [ %.1644951, %bb.e ] ; 2 uses
  %.2613 = phi i64 [ %.1612953, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.aq = add i32 %.1619952, 8                    ; 3 uses
  %i.ar = and i32 %i.aq, 255                      ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 56
  br i1 %i.as, label %.lr.ph, label %.loopexit916, !llvm.loop !310

.loopexit916:                                     ; preds = %bb.f, %.preheader915, %bb.c
  %.3676 = phi ptr [ %i.af, %bb.c ], [ %.0673, %.preheader915 ], [ %.2675, %bb.f ] ; 8 uses
  %.3646 = phi i64 [ %i.z, %bb.c ], [ %.0643, %.preheader915 ], [ %.2645, %bb.f ] ; 5 uses
  %.2620 = phi i32 [ %i.ag, %bb.c ], [ %.0618, %.preheader915 ], [ %i.aq, %bb.f ] ; 3 uses
  %.3614 = phi i64 [ %.0611, %bb.c ], [ %.0611, %.preheader915 ], [ %.2613, %bb.f ] ; 7 uses
  %i.at = and i64 %.3646, 1
  %.not744 = icmp eq i64 %i.at, 0
  %i.au = trunc i64 %.3646 to i32                 ; 4 uses
  %i.av = lshr i32 %i.au, 1
  %i.aw = and i32 %i.av, 3
end_hunk_0
