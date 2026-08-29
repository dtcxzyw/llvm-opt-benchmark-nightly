Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/takehiro?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 22
begin_hunk_0_@count_bits:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !24
  %i.bs = icmp sgt i64 %indvars.iv.i36.lcssa, 3
  br i1 %i.bs, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 784), align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph.i
  %.093112.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cu, %bb.v ] ; 2 uses
  %.197111.i = phi i32 [ %i.bq, %.lr.ph.i ], [ %i.cc, %bb.v ] ; 4 uses
  %storemerge107110.i = phi i32 [ 0, %.lr.ph.i ], [ %storemerge108.i, %bb.v ] ; 2 uses
  %i.bu = zext nneg i32 %.197111.i to i64
  %i.bv = getelementptr [4 x i8], ptr %1, i64 %i.bu ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4  ; 4 uses
  %i.by = getelementptr i8, ptr %i.bv, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bv, i64 -12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4  ; 2 uses
  %i.cc = add nsw i32 %.197111.i, -4              ; 3 uses
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4  ; 3 uses
  %i.cg = or i32 %i.bz, %i.bx
  %i.ch = or i32 %i.cg, %i.cb
  %i.ci = or i32 %i.ch, %i.cf
  %i.cj = icmp ugt i32 %i.ci, 1
  br i1 %i.cj, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = add nsw i32 %i.bx, %storemerge107110.i
  %.not101.i = icmp ne i32 %i.bz, 0               ; 2 uses
  %i.cl = or disjoint i32 %i.bx, 2
  %i.cm = zext i1 %.not101.i to i32
  %storemerge.i = add nsw i32 %i.ck, %i.cm
  %.090.i = select i1 %.not101.i, i32 %i.cl, i32 %i.bx ; 2 uses
  %.not102.i = icmp ne i32 %i.cb, 0               ; 2 uses
  %i.cn = add nuw nsw i32 %.090.i, 4
  %i.co = zext i1 %.not102.i to i32
  %.191.i = select i1 %.not102.i, i32 %i.cn, i32 %.090.i ; 2 uses
  %.not103.not.i = icmp eq i32 %i.cf, 0
  %i.cp = add nuw nsw i32 %.191.i, 8
  %storemerge109.i = add i32 %storemerge.i, %i.cf
  %storemerge108.i = add i32 %storemerge109.i, %i.co ; 2 uses
  %.2.i = select i1 %.not103.not.i, i32 %.191.i, i32 %i.cp
  %i.cq = zext nneg i32 %.2.i to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !25
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %.093112.i, %i.ct       ; 2 uses
  %i.cv = icmp samesign ugt i32 %.197111.i, 7
  br i1 %i.cv, label %bb.u, label %.thread.i, !llvm.loop !26

.thread.i:                                        ; preds = %bb.v, %bb.u, %bb.t, %.thread130.i
  %.096.lcssa132.i = phi i32 [ %i.bq, %bb.t ], [ 0, %.thread130.i ], [ %i.bq, %bb.u ], [ %i.bq, %bb.v ] ; 2 uses
  %i.cw = phi i32 [ 0, %bb.t ], [ 0, %.thread130.i ], [ %storemerge108.i, %bb.v ], [ %storemerge107110.i, %bb.u ]
  %.197.lcssa.i = phi i32 [ %i.bq, %bb.t ], [ 0, %.thread130.i ], [ %i.cc, %bb.v ], [ %.197111.i, %bb.u ] ; 9 uses
  %.093.lcssa.i = phi i32 [ 0, %bb.t ], [ 0, %.thread130.i ], [ %i.cu, %bb.v ], [ %.093112.i, %bb.u ] ; 2 uses
  %i.cx = sub i32 %.096.lcssa132.i, %.197.lcssa.i ; 2 uses
  %i.cy = icmp sge i32 %.093.lcssa.i, %i.cx
  %spec.select134.i = tail call i32 @llvm.smin.i32(i32 %.093.lcssa.i, i32 %i.cx)
  %spec.select135.i = zext i1 %i.cy to i32
  %.sink127.i = add nsw i32 %spec.select134.i, %i.cw ; 3 uses
  store i32 %.sink127.i, ptr %i.a, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 %spec.select135.i, ptr %i.cz, align 8, !tbaa !27
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 %.sink127.i, ptr %i.da, align 8, !tbaa !28
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 %.197.lcssa.i, ptr %i.db, align 4, !tbaa !22
  %i.dc = icmp eq i32 %.197.lcssa.i, 0
  br i1 %i.dc, label %count_bits_long.exit, label %bb.w

bb.w:                                             ; preds = %.thread.i
  %i.dd = icmp eq i32 %i.ai, 0
  br i1 %i.dd, label %.preheader.i, label %bb.ac

.preheader.i:                                     ; preds = %bb.w, %.preheader.i
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i, %.preheader.i ], [ 0, %bb.w ]
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv.next122.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = icmp slt i32 %i.df, %.197.lcssa.i
  br i1 %i.dg, label %.preheader.i, label %bb.x, !llvm.loop !29

bb.x:                                             ; preds = %.preheader.i
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @subdv_table, i64 %indvars.iv.next122.i ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !30
  %i.dj = sext i32 %i.di to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %bb.y ], [ %i.dj, %bb.x ] ; 4 uses
  %i.dk = getelementptr [4 x i8], ptr @scalefac_band, i64 %indvars.iv124.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = icmp sgt i32 %i.dm, %.197.lcssa.i
  %indvars.iv.next125.i = add nsw i64 %indvars.iv124.i, -1
  br i1 %i.dn, label %bb.y, label %bb.z, !llvm.loop !32

bb.z:                                             ; preds = %bb.y
  %i.do = trunc nsw i64 %indvars.iv124.i to i32   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.do, ptr %i.dp, align 8, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !34
  %i.ds = add i32 %i.do, 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.1.i = phi i32 [ %i.dr, %bb.z ], [ %i.dy, %bb.aa ] ; 3 uses
  %i.dt = add i32 %i.ds, %.1.i
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !4
  %i.dx = icmp sgt i32 %i.dw, %.197.lcssa.i
  %i.dy = add nsw i32 %.1.i, -1
  br i1 %i.dx, label %bb.aa, label %bb.ab, !llvm.loop !35

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %.1.i, ptr %i.dz, align 4, !tbaa !36
  %i.ea = add i64 %indvars.iv124.i, 1
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4
  %i.ee = load i32, ptr %i.dv, align 4, !tbaa !4
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ef
  %i.eh = sext i32 %.197.lcssa.i to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eh
  %i.ej = call fastcc i32 @choose_table(ptr noundef readonly %i.eg, ptr noundef nonnull readonly %i.ei, ptr noundef %i.a)
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.ej, ptr %i.ek, align 8, !tbaa !4
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 7, ptr %i.el, align 8, !tbaa !33
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 13, ptr %i.em, align 4, !tbaa !36
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 32), align 4, !tbaa !4
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.en, i32 %.197.lcssa.i)
  %.pre.i = sext i32 %.197.lcssa.i to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.ac ], [ %i.ef, %bb.ab ]
  %.3.i = phi i32 [ %spec.select.i, %bb.ac ], [ %i.ed, %bb.ab ]
  %i.eo = sext i32 %.3.i to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eo ; 2 uses
  %i.eq = call fastcc i32 @choose_table(ptr noundef readonly %1, ptr noundef readonly %i.ep, ptr noundef %i.a)
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.eq, ptr %i.er, align 8, !tbaa !4
  %i.es = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre-phi.i
  %i.et = call fastcc i32 @choose_table(ptr noundef readonly %i.ep, ptr noundef readonly %i.es, ptr noundef %i.a)
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !4
  %.098.pre.i = load i32, ptr %i.a, align 4, !tbaa !4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !24
  %.pre32 = load i32, ptr %i.db, align 4, !tbaa !22
  br label %count_bits_long.exit

count_bits_long.exit:                             ; preds = %.thread.i, %bb.ad
  %i.ev = phi i32 [ 0, %.thread.i ], [ %.pre32, %bb.ad ] ; 2 uses
  %i.ew = phi i32 [ %.096.lcssa132.i, %.thread.i ], [ %.pre, %bb.ad ]
  %.098.i = phi i32 [ %.sink127.i, %.thread.i ], [ %.098.pre.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ey = sub i32 %i.ew, %i.ev
  %i.ez = lshr i32 %i.ey, 2
  store i32 %i.ez, ptr %i.ex, align 8, !tbaa !24
  %i.fa = lshr i32 %i.ev, 1
  store i32 %i.fa, ptr %i.db, align 4, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.m, %count_bits_long.exit
  %.027 = phi i32 [ %.pre33, %bb.m ], [ %.098.i, %count_bits_long.exit ], [ 100000, %bb.f ], [ 100000, %bb.e ], [ 100000, %bb.d ], [ 100000, %bb.c ], [ 100000, %bb.b ], [ 100000, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @quantize_xrpow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quantize_xrpow_ISO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @choose_table_short(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %.thread87

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %3 = add i64 %i.c, 8
  %4 = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %3)
  %i.d = xor i64 %i.c, -1
  %i.e = add i64 %4, %i.d                         ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 56
  br i1 %min.iters.check, label %.lr.ph.i.preheader148, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.g, 4611686018427387896      ; 3 uses
  %i.h = shl i64 %n.vec, 3
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi135 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.j = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.j
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %next.gep136 = getelementptr i8, ptr %i.k, i64 32
  %wide.vec = load <8 x i32>, ptr %next.gep, align 4, !tbaa !4 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec137 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec138 = load <8 x i32>, ptr %next.gep136, align 4, !tbaa !4 ; 2 uses
  %strided.vec139 = shufflevector <8 x i32> %wide.vec138, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec140 = shufflevector <8 x i32> %wide.vec138, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.l = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %strided.vec)
  %i.m = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi135, <4 x i32> %strided.vec139)
  %i.n = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.l, <4 x i32> %strided.vec137) ; 2 uses
  %i.o = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.m, <4 x i32> %strided.vec140) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %i.o)
  %i.q = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %ix_max.exit, label %.lr.ph.i.preheader148

.lr.ph.i.preheader148:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.014.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  %.01013.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader148, %.lr.ph.i
  %.014.i = phi i32 [ %.2.i, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader148 ]
  %.01013.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.01013.i.ph, %.lr.ph.i.preheader148 ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01013.i, i64 4
  %i.s = load i32, ptr %.01013.i, align 4, !tbaa !4
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.014.i, i32 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.01013.i, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.r, align 4, !tbaa !4
  %.2.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.u) ; 2 uses
  %i.v = icmp ult ptr %i.t, %1
  br i1 %i.v, label %.lr.ph.i, label %ix_max.exit, !llvm.loop !40

ix_max.exit:                                      ; preds = %.lr.ph.i, %middle.block
  %.2.i.lcssa = phi i32 [ %i.q, %middle.block ], [ %.2.i, %.lr.ph.i ] ; 5 uses
  %i.w = icmp samesign ugt i32 %.2.i.lcssa, 8206
  br i1 %i.w, label %.thread87.sink.split, label %bb.b

bb.b:                                             ; preds = %ix_max.exit
  %i.x = icmp samesign ult i32 %.2.i.lcssa, 16
  br i1 %i.x, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %.2.i.lcssa, 0
  br i1 %i.y, label %.thread87, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %.2.i.lcssa to i64
  %i.aa = getelementptr [4 x i8], ptr @huf_tbl_noESC, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 9 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.030.i = phi ptr [ %0, %bb.d ], [ %i.bw, %bb.e ] ; 7 uses
  %.028.i = phi i32 [ 0, %bb.d ], [ %i.bv, %bb.e ]
  %.026.i = phi i32 [ 0, %bb.d ], [ %.3.2.i, %bb.e ]
  %.024.i = phi ptr [ @cb_esc_buf, %bb.d ], [ %i.bq, %bb.e ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.030.i, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.030.i, i64 4
  %i.ak = load i32, ptr %.030.i, align 4, !tbaa !4 ; 2 uses
  %.not.i = icmp ne i32 %i.ak, 0
  %i.al = shl i32 %i.ak, 4
  %i.am = zext i1 %.not.i to i32
  %.not36.i = icmp ne i32 %i.ai, 0
  %i.an = add nsw i32 %i.al, %i.ai                ; 2 uses
  %i.ao = zext i1 %.not36.i to i32
  %.2.i66 = add i32 %.026.i, %i.ao
  %.3.i = add i32 %.2.i66, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %.024.i, i64 4
  store i32 %i.an, ptr %.024.i, align 4, !tbaa !4
  %i.aq = sext i32 %i.an to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ag, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !25
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %.028.i, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  %i.ay = load i32, ptr %i.aj, align 4, !tbaa !4  ; 2 uses
  %.not.1.i = icmp ne i32 %i.ay, 0
  %i.az = shl i32 %i.ay, 4
  %i.ba = zext i1 %.not.1.i to i32
  %.not36.1.i = icmp ne i32 %i.aw, 0
  %i.bb = add nsw i32 %i.az, %i.aw                ; 2 uses
  %i.bc = zext i1 %.not36.1.i to i32
  %.2.1.i = add i32 %.3.i, %i.bc
  %.3.1.i = add i32 %.2.1.i, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  store i32 %i.bb, ptr %i.ap, align 4, !tbaa !4
  %i.be = sext i32 %i.bb to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ag, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !25
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.au, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.030.i, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4  ; 2 uses
  %i.bl = load i32, ptr %i.ax, align 4, !tbaa !4  ; 2 uses
  %.not.2.i = icmp ne i32 %i.bl, 0
  %i.bm = shl i32 %i.bl, 4
  %i.bn = zext i1 %.not.2.i to i32
  %.not36.2.i = icmp ne i32 %i.bk, 0
  %i.bo = add nsw i32 %i.bm, %i.bk                ; 2 uses
  %i.bp = zext i1 %.not36.2.i to i32
  %.2.2.i = add i32 %.3.1.i, %i.bp
  %.3.2.i = add i32 %.2.2.i, %i.bn                ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.024.i, i64 12 ; 5 uses
  store i32 %i.bo, ptr %i.bd, align 4, !tbaa !4
  %i.br = sext i32 %i.bo to i64
  %i.bs = getelementptr inbounds i8, ptr %i.ag, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !25
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bi, %i.bu                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.030.i, i64 24 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %1
  br i1 %i.bx, label %bb.e, label %count_bit_short_noESC.exit, !llvm.loop !44

count_bit_short_noESC.exit:                       ; preds = %bb.e
  store ptr %i.bq, ptr @cb_esc_end, align 8, !tbaa !45
  %i.by = add nsw i32 %i.bv, %.3.2.i              ; 7 uses
  switch i32 %i.ac, label %bb.l [
    i32 7, label %bb.f
    i32 10, label %bb.f
    i32 2, label %bb.h
    i32 5, label %bb.h
    i32 13, label %bb.j
  ]

bb.f:                                             ; preds = %count_bit_short_noESC.exit, %count_bit_short_noESC.exit
  %i.bz = add nuw nsw i32 %i.ac, 1                ; 3 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.04.i = phi i32 [ %.3.2.i, %bb.f ], [ %i.ck, %bb.g ]
  %.0.i = phi ptr [ @cb_esc_buf, %bb.f ], [ %i.ce, %bb.g ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.cf = load i32, ptr %.0.i, align 4, !tbaa !4
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !25
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nsw i32 %.04.i, %i.cj               ; 3 uses
  %i.cl = icmp ult ptr %i.ce, %i.bq
  br i1 %i.cl, label %bb.g, label %count_bit_noESC2.exit, !llvm.loop !46

count_bit_noESC2.exit:                            ; preds = %bb.g
  %i.cm = icmp sgt i32 %i.by, %i.ck
  %spec.select = select i1 %i.cm, i32 %i.bz, i32 %i.ac
  %spec.select61 = tail call i32 @llvm.smin.i32(i32 %i.by, i32 %i.ck)
  br label %bb.h

bb.h:                                             ; preds = %count_bit_noESC2.exit, %count_bit_short_noESC.exit, %count_bit_short_noESC.exit
  %.050 = phi i32 [ %i.ac, %count_bit_short_noESC.exit ], [ %spec.select, %count_bit_noESC2.exit ], [ %i.ac, %count_bit_short_noESC.exit ]
  %.048 = phi i32 [ %i.by, %count_bit_short_noESC.exit ], [ %spec.select61, %count_bit_noESC2.exit ], [ %i.by, %count_bit_short_noESC.exit ] ; 2 uses
  %.0 = phi i32 [ %i.ac, %count_bit_short_noESC.exit ], [ %i.bz, %count_bit_noESC2.exit ], [ %i.ac, %count_bit_short_noESC.exit ]
  %i.cn = add nuw nsw i32 %.0, 1                  ; 2 uses
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.04.i67 = phi i32 [ %.3.2.i, %bb.h ], [ %i.cy, %bb.i ]
  %.0.i68 = phi ptr [ @cb_esc_buf, %bb.h ], [ %i.cs, %bb.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i68, i64 4 ; 2 uses
  %i.ct = load i32, ptr %.0.i68, align 4, !tbaa !4
  %i.cu = sext i32 %i.ct to i64
end_hunk_0
begin_hunk_1_@best_huffman_divide:bb.a
  br i1 %i.hk, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.hg
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !4
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hn
  %i.hp = call fastcc i32 @choose_table(ptr noundef %i.fv, ptr noundef %i.ho, ptr noundef %4)
  store i32 %i.hp, ptr %i.fm, align 4, !tbaa !4
  %i.hq = load i32, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.hr = load i32, ptr %4, align 8, !tbaa !4
  %i.hs = icmp slt i32 %i.hq, %i.hr
  br i1 %i.hs, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 2, ptr %i.fn, align 4, !tbaa !36
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hg
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !4
  store i32 %i.hu, ptr %i.fo, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre65 = load i32, ptr %2, align 8, !tbaa !51
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.hv = phi i32 [ %.pre65, %bb.af ], [ %i.hq, %bb.ae ], [ %i.hf, %bb.ad ] ; 2 uses
  %i.hw = add nuw nsw i64 %indvars.iv60, 5        ; 3 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !4
  %i.hz = add nsw i32 %i.hy, %i.fy                ; 2 uses
  store i32 %i.hz, ptr %4, align 8, !tbaa !4
  %i.ia = icmp slt i32 %i.hv, %i.hz
  br i1 %i.ia, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.hw
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !4
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %3, i64 %i.id
  %i.if = call fastcc i32 @choose_table(ptr noundef %i.fv, ptr noundef %i.ie, ptr noundef %4)
  store i32 %i.if, ptr %i.fm, align 4, !tbaa !4
  %i.ig = load i32, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ih = load i32, ptr %4, align 8, !tbaa !4
  %i.ii = icmp slt i32 %i.ig, %i.ih
  br i1 %i.ii, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 3, ptr %i.fn, align 4, !tbaa !36
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hw
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !4
  store i32 %i.ik, ptr %i.fo, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre66 = load i32, ptr %2, align 8, !tbaa !51
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.il = phi i32 [ %.pre66, %bb.ai ], [ %i.ig, %bb.ah ], [ %i.hv, %bb.ag ] ; 2 uses
  %i.im = add nuw nsw i64 %indvars.iv60, 6        ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !4
  %i.ip = add nsw i32 %i.io, %i.fy                ; 2 uses
  store i32 %i.ip, ptr %4, align 8, !tbaa !4
  %i.iq = icmp slt i32 %i.il, %i.ip
  br i1 %i.iq, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.im
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !4
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.it
  %i.iv = call fastcc i32 @choose_table(ptr noundef %i.fv, ptr noundef %i.iu, ptr noundef %4)
  store i32 %i.iv, ptr %i.fm, align 4, !tbaa !4
  %i.iw = load i32, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ix = load i32, ptr %4, align 8, !tbaa !4
  %i.iy = icmp slt i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 4, ptr %i.fn, align 4, !tbaa !36
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.im
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !4
  store i32 %i.ja, ptr %i.fo, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre67 = load i32, ptr %2, align 8, !tbaa !51
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.jb = phi i32 [ %.pre67, %bb.al ], [ %i.iw, %bb.ak ], [ %i.il, %bb.aj ] ; 2 uses
  %i.jc = add nuw nsw i64 %indvars.iv60, 7        ; 3 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !4
  %i.jf = add nsw i32 %i.je, %i.fy                ; 2 uses
  store i32 %i.jf, ptr %4, align 8, !tbaa !4
  %i.jg = icmp slt i32 %i.jb, %i.jf
  br i1 %i.jg, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.jc
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !4
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %3, i64 %i.jj
  %i.jl = call fastcc i32 @choose_table(ptr noundef %i.fv, ptr noundef %i.jk, ptr noundef %4)
  store i32 %i.jl, ptr %i.fm, align 4, !tbaa !4
  %i.jm = load i32, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.jn = load i32, ptr %4, align 8, !tbaa !4
  %i.jo = icmp slt i32 %i.jm, %i.jn
  br i1 %i.jo, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 5, ptr %i.fn, align 4, !tbaa !36
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jc
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !4
  store i32 %i.jq, ptr %i.fo, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre68 = load i32, ptr %2, align 8, !tbaa !51
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.jr = phi i32 [ %.pre68, %bb.ao ], [ %i.jm, %bb.an ], [ %i.jb, %bb.am ] ; 2 uses
  %i.js = add nuw nsw i64 %indvars.iv60, 8        ; 3 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !4
  %i.jv = add nsw i32 %i.ju, %i.fy                ; 2 uses
  store i32 %i.jv, ptr %4, align 8, !tbaa !4
  %i.jw = icmp slt i32 %i.jr, %i.jv
  br i1 %i.jw, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.js
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !4
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %3, i64 %i.jz
  %i.kb = call fastcc i32 @choose_table(ptr noundef %i.fv, ptr noundef %i.ka, ptr noundef %4)
  store i32 %i.kb, ptr %i.fm, align 4, !tbaa !4
  %i.kc = load i32, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.kd = load i32, ptr %4, align 8, !tbaa !4
  %i.ke = icmp slt i32 %i.kc, %i.kd
  br i1 %i.ke, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 6, ptr %i.fn, align 4, !tbaa !36
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.js
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !4
  store i32 %i.kg, ptr %i.fo, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre69 = load i32, ptr %2, align 8, !tbaa !51
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.kh = phi i32 [ %.pre69, %bb.ar ], [ %i.kc, %bb.aq ], [ %i.jr, %bb.ap ]
  %i.ki = add nuw nsw i64 %indvars.iv60, 9        ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !4
  %i.kl = add nsw i32 %i.kk, %i.fy                ; 2 uses
  store i32 %i.kl, ptr %4, align 8, !tbaa !4
  %i.km = icmp slt i32 %i.kh, %i.kl
  br i1 %i.km, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.ki
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !4
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.kp
  %i.kr = call fastcc i32 @choose_table(ptr noundef %i.fv, ptr noundef %i.kq, ptr noundef %4)
  store i32 %i.kr, ptr %i.fm, align 4, !tbaa !4
  %i.ks = load i32, ptr %2, align 8, !tbaa !51
  %i.kt = load i32, ptr %4, align 8, !tbaa !4
  %i.ku = icmp slt i32 %i.ks, %i.kt
  br i1 %i.ku, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 7, ptr %i.fn, align 4, !tbaa !36
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ki
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !4
  store i32 %i.kw, ptr %i.fo, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.au, %bb.at, %bb.as
  %exitcond63.not = icmp eq i64 %indvars.iv.next61, 16
  br i1 %exitcond63.not, label %bb.av, label %bb.w, !llvm.loop !52

bb.av:                                            ; preds = %bb.x, %bb.w, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @choose_table(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %.thread82

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %3 = add i64 %i.c, 8
  %4 = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %3)
  %i.d = xor i64 %i.c, -1
  %i.e = add i64 %4, %i.d                         ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 56
  br i1 %min.iters.check, label %.lr.ph.i.preheader139, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.g, 4611686018427387896      ; 3 uses
  %i.h = shl i64 %n.vec, 3
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi126 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.j = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.j
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %next.gep127 = getelementptr i8, ptr %i.k, i64 32
  %wide.vec = load <8 x i32>, ptr %next.gep, align 4, !tbaa !4 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec128 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec129 = load <8 x i32>, ptr %next.gep127, align 4, !tbaa !4 ; 2 uses
  %strided.vec130 = shufflevector <8 x i32> %wide.vec129, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec131 = shufflevector <8 x i32> %wide.vec129, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.l = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %strided.vec)
  %i.m = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi126, <4 x i32> %strided.vec130)
  %i.n = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.l, <4 x i32> %strided.vec128) ; 2 uses
  %i.o = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.m, <4 x i32> %strided.vec131) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %i.o)
  %i.q = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %ix_max.exit, label %.lr.ph.i.preheader139

.lr.ph.i.preheader139:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.014.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  %.01013.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader139, %.lr.ph.i
  %.014.i = phi i32 [ %.2.i, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader139 ]
  %.01013.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.01013.i.ph, %.lr.ph.i.preheader139 ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01013.i, i64 4
  %i.s = load i32, ptr %.01013.i, align 4, !tbaa !4
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.014.i, i32 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.01013.i, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.r, align 4, !tbaa !4
  %.2.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.u) ; 2 uses
  %i.v = icmp ult ptr %i.t, %1
  br i1 %i.v, label %.lr.ph.i, label %ix_max.exit, !llvm.loop !54

ix_max.exit:                                      ; preds = %.lr.ph.i, %middle.block
  %.2.i.lcssa = phi i32 [ %i.q, %middle.block ], [ %.2.i, %.lr.ph.i ] ; 5 uses
  %i.w = icmp samesign ugt i32 %.2.i.lcssa, 8206
  br i1 %i.w, label %.thread82.sink.split, label %bb.b

bb.b:                                             ; preds = %ix_max.exit
  %i.x = icmp samesign ult i32 %.2.i.lcssa, 16
  br i1 %i.x, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %.2.i.lcssa, 0
  br i1 %i.y, label %.thread82, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %.2.i.lcssa to i64
  %i.aa = getelementptr [4 x i8], ptr @huf_tbl_noESC, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 9 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.024.i = phi ptr [ %0, %bb.d ], [ %i.aj, %bb.e ] ; 3 uses
  %.023.i = phi i32 [ 0, %bb.d ], [ %i.au, %bb.e ]
  %.021.i = phi i32 [ 0, %bb.d ], [ %.2.i66, %bb.e ]
  %.020.i = phi ptr [ @cb_esc_buf, %bb.d ], [ %i.ap, %bb.e ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.024.i, i64 4
  %i.ai = load i32, ptr %.024.i, align 4, !tbaa !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !4  ; 2 uses
  %.not.i = icmp ne i32 %i.ai, 0
  %i.al = shl i32 %i.ai, 4
  %i.am = zext i1 %.not.i to i32
  %.122.i = add nsw i32 %.021.i, %i.am
  %.not29.i = icmp ne i32 %i.ak, 0
  %i.an = add nsw i32 %i.al, %i.ak                ; 2 uses
  %i.ao = zext i1 %.not29.i to i32
  %.2.i66 = add nsw i32 %.122.i, %i.ao            ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.020.i, i64 4 ; 2 uses
  store i32 %i.an, ptr %.020.i, align 4, !tbaa !4
  %i.aq = sext i32 %i.an to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ag, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !25
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %.023.i, %i.at          ; 2 uses
  %i.av = icmp ult ptr %i.aj, %1
  br i1 %i.av, label %bb.e, label %count_bit_noESC.exit, !llvm.loop !55

count_bit_noESC.exit:                             ; preds = %bb.e
  store ptr %i.ap, ptr @cb_esc_end, align 8, !tbaa !45
  %i.aw = add nsw i32 %i.au, %.2.i66              ; 7 uses
  switch i32 %i.ac, label %bb.l [
    i32 7, label %bb.f
    i32 10, label %bb.f
    i32 2, label %bb.h
    i32 5, label %bb.h
    i32 13, label %bb.j
  ]

bb.f:                                             ; preds = %count_bit_noESC.exit, %count_bit_noESC.exit
  %i.ax = add nuw nsw i32 %i.ac, 1                ; 3 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.04.i = phi i32 [ %.2.i66, %bb.f ], [ %i.bi, %bb.g ]
  %.0.i = phi ptr [ @cb_esc_buf, %bb.f ], [ %i.bc, %bb.g ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.bd = load i32, ptr %.0.i, align 4, !tbaa !4
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !25
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %.04.i, %i.bh               ; 3 uses
  %i.bj = icmp ult ptr %.0.i, %.020.i
  br i1 %i.bj, label %bb.g, label %count_bit_noESC2.exit, !llvm.loop !46

count_bit_noESC2.exit:                            ; preds = %bb.g
  %i.bk = icmp sgt i32 %i.aw, %i.bi
  %spec.select = select i1 %i.bk, i32 %i.ax, i32 %i.ac
  %spec.select61 = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bi)
  br label %bb.h

bb.h:                                             ; preds = %count_bit_noESC2.exit, %count_bit_noESC.exit, %count_bit_noESC.exit
  %.050 = phi i32 [ %i.ac, %count_bit_noESC.exit ], [ %spec.select, %count_bit_noESC2.exit ], [ %i.ac, %count_bit_noESC.exit ]
  %.048 = phi i32 [ %i.aw, %count_bit_noESC.exit ], [ %spec.select61, %count_bit_noESC2.exit ], [ %i.aw, %count_bit_noESC.exit ] ; 2 uses
  %.0 = phi i32 [ %i.ac, %count_bit_noESC.exit ], [ %i.ax, %count_bit_noESC2.exit ], [ %i.ac, %count_bit_noESC.exit ]
  %i.bl = add nuw nsw i32 %.0, 1                  ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.04.i67 = phi i32 [ %.2.i66, %bb.h ], [ %i.bw, %bb.i ]
  %.0.i68 = phi ptr [ @cb_esc_buf, %bb.h ], [ %i.bq, %bb.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i68, i64 4
  %i.br = load i32, ptr %.0.i68, align 4, !tbaa !4
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !25
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nsw i32 %.04.i67, %i.bv             ; 3 uses
  %i.bx = icmp ult ptr %.0.i68, %.020.i
  br i1 %i.bx, label %bb.i, label %count_bit_noESC2.exit69, !llvm.loop !46

count_bit_noESC2.exit69:                          ; preds = %bb.i
  %i.by = icmp sgt i32 %.048, %i.bw
  %spec.select62 = select i1 %i.by, i32 %i.bl, i32 %.050
  %spec.select63 = tail call i32 @llvm.smin.i32(i32 %.048, i32 %i.bw)
  br label %bb.l

bb.j:                                             ; preds = %count_bit_noESC.exit
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 376), align 8, !tbaa !41
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.04.i70 = phi i32 [ %.2.i66, %bb.j ], [ %i.cg, %bb.k ]
  %.0.i71 = phi ptr [ @cb_esc_buf, %bb.j ], [ %i.ca, %bb.k ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i71, i64 4
  %i.cb = load i32, ptr %.0.i71, align 4, !tbaa !4
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !25
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nsw i32 %.04.i70, %i.cf             ; 3 uses
  %i.ch = icmp ult ptr %.0.i71, %.020.i
  br i1 %i.ch, label %bb.k, label %count_bit_noESC2.exit72, !llvm.loop !46

count_bit_noESC2.exit72:                          ; preds = %bb.k
  %i.ci = icmp sgt i32 %i.aw, %i.cg
  %spec.select64 = select i1 %i.ci, i32 15, i32 13
  %spec.select65 = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.cg)
  br label %bb.l

bb.l:                                             ; preds = %count_bit_noESC2.exit72, %count_bit_noESC2.exit69, %count_bit_noESC.exit
  %.151 = phi i32 [ %i.ac, %count_bit_noESC.exit ], [ %spec.select62, %count_bit_noESC2.exit69 ], [ %spec.select64, %count_bit_noESC2.exit72 ]
end_hunk_1
begin_hunk_2_@best_scalefac_store:bb.a
..thread162.i_crit_edge:                          ; preds = %bb.aq
  %.pre246 = load i32, ptr %i.ls, align 4, !tbaa !63
  br label %.thread162.i

.thread162.i:                                     ; preds = %..thread162.i_crit_edge, %bb.ap, %.thread158.i
  %i.mw = phi i32 [ %.pre246, %..thread162.i_crit_edge ], [ %i.mt, %bb.ap ], [ %i.mr, %.thread158.i ]
  %i.mx = mul nuw nsw i32 %.173.9.i, 3
  %i.my = add nuw nsw i32 %i.mx, %.175.10.i       ; 2 uses
  %i.mz = icmp sgt i32 %i.mw, %i.my
  br i1 %i.mz, label %bb.ar, label %.thread164.i

bb.ar:                                            ; preds = %.thread162.i
  store i32 %i.my, ptr %i.ls, align 4, !tbaa !63
  store i32 7, ptr %i.lt, align 8, !tbaa !76
  br label %.thread164.i

bb.as:                                            ; preds = %bb.ak
  %i.na = icmp samesign ult i32 %.179.10.i, 4
  br i1 %i.na, label %.thread164.i, label %.thread172.i

.thread164.i:                                     ; preds = %bb.as, %bb.ar, %.thread162.i
  %i.nb = icmp samesign ult i32 %.177.9.i, 2
  br i1 %i.nb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread164.i
  %i.nc = shl nuw nsw i32 %.175.10.i, 1
  %i.nd = add nuw nsw i32 %.173.9.i, %i.nc        ; 3 uses
  %i.ne = load i32, ptr %i.ls, align 4, !tbaa !63 ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, %i.nd
  br i1 %i.nf, label %.split.i, label %.thread169.i

.split.i:                                         ; preds = %bb.at
  store i32 %i.nd, ptr %i.ls, align 4, !tbaa !63
  store i32 8, ptr %i.lt, align 8, !tbaa !76
  br label %.thread169.i

bb.au:                                            ; preds = %.thread164.i
  %i.ng = icmp samesign ult i32 %.177.9.i, 4
  br i1 %i.ng, label %..thread169.i_crit_edge, label %bb.aw

..thread169.i_crit_edge:                          ; preds = %bb.au
  %.pre247 = load i32, ptr %i.ls, align 4, !tbaa !63
  br label %.thread169.i

.thread169.i:                                     ; preds = %..thread169.i_crit_edge, %bb.at, %.split.i
  %i.nh = phi i32 [ %.pre247, %..thread169.i_crit_edge ], [ %i.ne, %bb.at ], [ %i.nd, %.split.i ] ; 2 uses
  %i.ni = add nuw nsw i32 %.173.9.i, %.175.10.i
  %i.nj = shl nuw nsw i32 %i.ni, 1                ; 3 uses
  %i.nk = icmp sgt i32 %i.nh, %i.nj
  br i1 %i.nk, label %bb.av, label %.thread174.i

bb.av:                                            ; preds = %.thread169.i
  store i32 %i.nj, ptr %i.ls, align 4, !tbaa !63
  store i32 9, ptr %i.lt, align 8, !tbaa !76
  br label %.thread174.i

bb.aw:                                            ; preds = %bb.au
  %i.nl = icmp samesign ult i32 %.177.9.i, 8
  br i1 %i.nl, label %..thread174.i_crit_edge, label %scfsi_calc.exit

..thread174.i_crit_edge:                          ; preds = %bb.aw
  %.pre248 = load i32, ptr %i.ls, align 4, !tbaa !63
  br label %.thread174.i

.thread174.i:                                     ; preds = %..thread174.i_crit_edge, %bb.av, %.thread169.i
  %i.nm = phi i32 [ %.pre248, %..thread174.i_crit_edge ], [ %i.nj, %bb.av ], [ %i.nh, %.thread169.i ]
  %i.nn = shl nuw nsw i32 %.175.10.i, 1
  %i.no = mul nuw nsw i32 %.173.9.i, 3
  %i.np = add nuw nsw i32 %i.no, %i.nn            ; 2 uses
  %i.nq = icmp sgt i32 %i.nm, %i.np
  br i1 %i.nq, label %.split175.i, label %.thread172.i

.split175.i:                                      ; preds = %.thread174.i
  store i32 %i.np, ptr %i.ls, align 4, !tbaa !63
  store i32 10, ptr %i.lt, align 8, !tbaa !76
  br label %.thread172.i

.thread172.i:                                     ; preds = %.thread174.i, %.split175.i, %bb.as
  %i.nr = icmp samesign ult i32 %.177.9.i, 2
  br i1 %i.nr, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.thread172.i
  %i.ns = mul nuw nsw i32 %.175.10.i, 3           ; 3 uses
  %i.nt = add nuw nsw i32 %.173.9.i, %i.ns        ; 3 uses
  %i.nu = load i32, ptr %i.ls, align 4, !tbaa !63 ; 2 uses
  %i.nv = icmp sgt i32 %i.nu, %i.nt
  br i1 %i.nv, label %bb.ay, label %.thread179.i

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.nt, ptr %i.ls, align 4, !tbaa !63
  store i32 11, ptr %i.lt, align 8, !tbaa !76
  br label %.thread179.i

bb.az:                                            ; preds = %.thread172.i
  %i.nw = icmp samesign ult i32 %.177.9.i, 4
  br i1 %i.nw, label %..thread179.i_crit_edge, label %bb.bb

..thread179.i_crit_edge:                          ; preds = %bb.az
  %.pre249 = load i32, ptr %i.ls, align 4, !tbaa !63
  %.pre252 = mul nuw nsw i32 %.175.10.i, 3
  br label %.thread179.i

.thread179.i:                                     ; preds = %..thread179.i_crit_edge, %bb.ay, %bb.ax
  %.pre-phi = phi i32 [ %.pre252, %..thread179.i_crit_edge ], [ %i.ns, %bb.ay ], [ %i.ns, %bb.ax ]
  %i.nx = phi i32 [ %.pre249, %..thread179.i_crit_edge ], [ %i.nt, %bb.ay ], [ %i.nu, %bb.ax ] ; 2 uses
  %i.ny = shl nuw nsw i32 %.173.9.i, 1
  %i.nz = add nuw nsw i32 %i.ny, %.pre-phi        ; 3 uses
  %i.oa = icmp sgt i32 %i.nx, %i.nz
  br i1 %i.oa, label %bb.ba, label %.thread183.i

bb.ba:                                            ; preds = %.thread179.i
  store i32 %i.nz, ptr %i.ls, align 4, !tbaa !63
  store i32 12, ptr %i.lt, align 8, !tbaa !76
  br label %.thread183.i

bb.bb:                                            ; preds = %bb.az
  %i.ob = icmp samesign ult i32 %.177.9.i, 8
  br i1 %i.ob, label %..thread183.i_crit_edge, label %scfsi_calc.exit

..thread183.i_crit_edge:                          ; preds = %bb.bb
  %.pre250 = load i32, ptr %i.ls, align 4, !tbaa !63
  br label %.thread183.i

.thread183.i:                                     ; preds = %..thread183.i_crit_edge, %bb.ba, %.thread179.i
  %i.oc = phi i32 [ %.pre250, %..thread183.i_crit_edge ], [ %i.nz, %bb.ba ], [ %i.nx, %.thread179.i ]
  %i.od = add nuw nsw i32 %.173.9.i, %.175.10.i
  %i.oe = mul nuw nsw i32 %i.od, 3                ; 2 uses
  %i.of = icmp sgt i32 %i.oc, %i.oe
  br i1 %i.of, label %bb.bc, label %.thread185.i

bb.bc:                                            ; preds = %.thread183.i
  store i32 %i.oe, ptr %i.ls, align 4, !tbaa !63
  store i32 13, ptr %i.lt, align 8, !tbaa !76
  br label %.thread185.i

.thread172.thread.i:                              ; preds = %bb.ah
  %i.og = icmp samesign ult i32 %.179.10.i, 16
  br i1 %i.og, label %.thread185.i, label %scfsi_calc.exit

.thread185.i:                                     ; preds = %.thread183.i, %bb.bc, %.thread172.thread.i
  %i.oh = icmp samesign ult i32 %.177.9.i, 4
  br i1 %i.oh, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.thread185.i
  %i.oi = shl nuw nsw i32 %.175.10.i, 2           ; 3 uses
  %i.oj = shl nuw nsw i32 %.173.9.i, 1
  %i.ok = add nuw nsw i32 %i.oj, %i.oi            ; 3 uses
  %i.ol = load i32, ptr %i.ls, align 4, !tbaa !63 ; 2 uses
  %i.om = icmp sgt i32 %i.ol, %i.ok
  br i1 %i.om, label %.split187.i, label %.thread188.i

.split187.i:                                      ; preds = %bb.bd
  store i32 %i.ok, ptr %i.ls, align 4, !tbaa !63
  store i32 14, ptr %i.lt, align 8, !tbaa !76
  br label %.thread188.i

bb.be:                                            ; preds = %.thread185.i
  %i.on = icmp samesign ult i32 %.177.9.i, 8
  br i1 %i.on, label %..thread188.i_crit_edge, label %scfsi_calc.exit

..thread188.i_crit_edge:                          ; preds = %bb.be
  %.pre251 = load i32, ptr %i.ls, align 4, !tbaa !63
  %.pre253 = shl nuw nsw i32 %.175.10.i, 2
  br label %.thread188.i

.thread188.i:                                     ; preds = %..thread188.i_crit_edge, %bb.bd, %.split187.i
  %.pre-phi254 = phi i32 [ %.pre253, %..thread188.i_crit_edge ], [ %i.oi, %bb.bd ], [ %i.oi, %.split187.i ]
  %i.oo = phi i32 [ %.pre251, %..thread188.i_crit_edge ], [ %i.ol, %bb.bd ], [ %i.ok, %.split187.i ]
  %i.op = mul nuw nsw i32 %.173.9.i, 3
  %i.oq = add nuw nsw i32 %i.op, %.pre-phi254     ; 2 uses
  %i.or = icmp sgt i32 %i.oo, %i.oq
  br i1 %i.or, label %bb.bf, label %scfsi_calc.exit

bb.bf:                                            ; preds = %.thread188.i
  store i32 %i.oq, ptr %i.ls, align 4, !tbaa !63
  store i32 15, ptr %i.lt, align 8, !tbaa !76
  br label %scfsi_calc.exit

scfsi_calc.exit:                                  ; preds = %bb.af, %bb.aq, %bb.aw, %bb.bb, %bb.bf, %.thread188.i, %bb.be, %.thread172.thread.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.os = load i32, ptr %i.ce, align 4, !tbaa !63
  %i.ot = load i32, ptr %i.e, align 8, !tbaa !51
  %i.ou = add i32 %i.ot, %i.os
  store i32 %i.ou, ptr %i.e, align 8, !tbaa !51
  ret void
}

declare i32 @scale_bitcount(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @scale_bitcount_lsf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 12}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !6, i64 32, !6, i64 44, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !10, i64 96, !6, i64 104}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !5, i64 260}
!17 = !{!"", !18, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !19, i64 128, !19, i64 136, !5, i64 144, !5, i64 148, !20, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !18, i64 168, !18, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !20, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !20, i64 232, !20, i64 236, !20, i64 240, !20, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276}
!18 = !{!"long", !6, i64 0}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!"float", !6, i64 0}
!21 = !{!9, !5, i64 24}
!22 = !{!9, !5, i64 4}
!23 = distinct !{!23, !15}
!24 = !{!9, !5, i64 8}
!25 = !{!6, !6, i64 0}
!26 = distinct !{!26, !15}
!27 = !{!9, !5, i64 72}
!28 = !{!9, !5, i64 88}
!29 = distinct !{!29, !15}
!30 = !{!31, !5, i64 0}
!31 = !{!"", !5, i64 0, !5, i64 4}
!32 = distinct !{!32, !15}
!33 = !{!9, !5, i64 56}
!34 = !{!31, !5, i64 4}
!35 = distinct !{!35, !15}
!36 = !{!9, !5, i64 60}
!37 = distinct !{!37, !15, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !15, !39, !38}
!41 = !{!42, !19, i64 16}
!42 = !{!"huffcodetab", !5, i64 0, !5, i64 4, !43, i64 8, !19, i64 16}
!43 = !{!"p1 long", !11, i64 0}
!44 = distinct !{!44, !15}
!45 = !{!10, !10, i64 0}
!46 = distinct !{!46, !15}
!47 = !{!42, !5, i64 4}
!48 = !{!42, !5, i64 0}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15, !39, !38}
!51 = !{!9, !5, i64 0}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15, !38, !39}
!54 = distinct !{!54, !15, !39, !38}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = !{!9, !5, i64 80}
!58 = !{!9, !5, i64 84}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = !{!9, !5, i64 76}
!64 = !{!9, !5, i64 68}
!65 = !{!9, !5, i64 64}
!66 = distinct !{!66, !15, !38, !39}
!67 = distinct !{!67, !15, !39, !38}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = !{!17, !5, i64 200}
!72 = !{!73, !5, i64 24}
!73 = !{!"gr_info_ss", !9, i64 0}
!74 = !{!73, !5, i64 68}
!75 = !{!73, !5, i64 64}
!76 = !{!9, !5, i64 16}
end_hunk_2
