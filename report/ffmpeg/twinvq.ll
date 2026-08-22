Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/twinvq?download=true
inline.NumInlined: 30
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@init_mdct_win:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next108, 3
  br i1 %exitcond110.not, label %bb.j, label %bb.h, !llvm.loop !132

bb.j:                                             ; preds = %._crit_edge
  %.not11.i83 = icmp ult i16 %i.k, 256            ; 2 uses
  %i.bz = lshr i32 %.zext, 8
  %.110.i84 = select i1 %.not11.i83, i32 %.zext, i32 %i.bz
  %.1.i85 = select i1 %.not11.i83, i32 0, i32 8
  %i.ca = zext nneg i32 %.110.i84 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !62
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nuw nsw i32 %.1.i85, %i.cd
  call void @ff_init_ff_sine_windows(i32 noundef %i.ce) #9
  %i.cf = shl nuw nsw i32 %i.h, 1
  %i.cg = udiv i32 %i.f, %i.cf                    ; 3 uses
  %.not11.i77 = icmp samesign ult i32 %i.cg, 256  ; 2 uses
  %i.ch = lshr i32 %i.cg, 8
  %.110.i78 = select i1 %.not11.i77, i32 %i.cg, i32 %i.ch
  %.1.i79 = select i1 %.not11.i77, i32 0, i32 8
  %i.ci = zext nneg i32 %.110.i78 to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !62
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nuw nsw i32 %.1.i79, %i.cl
  call void @ff_init_ff_sine_windows(i32 noundef %i.cm) #9
  %i.cn = load i16, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.co = zext i16 %i.cn to i32                   ; 2 uses
  %.not11.i = icmp ult i16 %i.cn, 256             ; 2 uses
  %i.cp = lshr i32 %i.co, 8
  %.110.i = select i1 %.not11.i, i32 %i.co, i32 %i.cp
  %.1.i = select i1 %.not11.i, i32 0, i32 8
  %i.cq = zext nneg i32 %.110.i to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !62
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %.1.i, %i.ct
  call void @ff_init_ff_sine_windows(i32 noundef %i.cu) #9
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.h, %bb.d, %bb.e, %bb.f, %bb.g, %bb.j
  %.4 = phi i32 [ -12, %bb.h ], [ -12, %bb.d ], [ 0, %bb.j ], [ -12, %bb.g ], [ -12, %bb.f ], [ -12, %bb.e ], [ %i.ai, %bb.c ]
  ret i32 %.4
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_bitstream_params(ptr nofree noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 12 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 356
  %i.g = load i32, ptr %i.f, align 4, !tbaa !56   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !133
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  %i.m = load i32, ptr %i.l, align 8, !tbaa !134
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.o = load i8, ptr %i.n, align 8, !tbaa !135
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 209
  %i.q = load i8, ptr %i.p, align 1, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 211
  %i.s = load i8, ptr %i.r, align 1, !tbaa !87
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 210
  %i.u = load i8, ptr %i.t, align 2, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 227
  %i.w = load i8, ptr %i.v, align 1, !tbaa !136
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 225 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !137
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !139
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 33
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !140
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, %i.ae
  %i.aj = add nuw nsw i32 %i.ai, 1
  %i.ak = mul nsw i32 %i.aj, %i.g
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !141

.critedge:                                        ; preds = %bb.b
  %i.am = zext i8 %i.o to i32
  %i.an = zext i8 %i.q to i32
  %i.ao = add nuw nsw i32 %i.an, %i.am
  %i.ap = zext i8 %i.s to i32
  %i.aq = zext i8 %i.u to i32
  %i.ar = mul nuw nsw i32 %i.aq, %i.ap
  %i.as = add nuw nsw i32 %i.ao, %i.ar
  %i.at = mul nsw i32 %i.as, %i.g
  %i.au = zext i8 %i.w to i32
  %i.av = zext i8 %i.y to i32
  %i.aw = add nuw nsw i32 %i.av, %i.au
  %i.ax = zext i8 %i.aa to i32
  %i.ay = add nuw nsw i32 %i.aw, %i.ax
  %i.az = mul nsw i32 %i.ay, %i.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !72
  %i.bc = shl nsw i32 %i.g, 3
  %i.bd = or disjoint i32 %i.bc, 4
  %i.be = add i32 %i.bd, %i.at                    ; 3 uses
  %i.bf = add i32 %i.be, %i.az
  %i.bg = add i32 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !72
  %i.bi = mul nsw i32 %i.g, 5                     ; 2 uses
  %i.bj = load i8, ptr %i.d, align 8, !tbaa !57
  %i.bk = zext i8 %i.bj to i32
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !72
  %i.bm = add nsw i32 %i.bl, %i.bi
  %i.bn = mul nsw i32 %i.bm, %i.bk
  %i.bo = add nsw i32 %i.be, %i.bn
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !72
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !57
  %i.br = zext i8 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !72
  %i.bu = add nsw i32 %i.bt, %i.bi
  %i.bv = mul nsw i32 %i.bu, %i.br
  %i.bw = add nsw i32 %i.be, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !72
  %i.by = zext i16 %i.k to i64
  %i.bz = mul nsw i64 %i.i, %i.by
  %i.ca = sext i32 %i.m to i64
  %i.cb = sdiv i64 %i.bz, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 36740
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !142
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !143
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.cj = load <2 x i32>, ptr %i.ci, align 4, !tbaa !72
  %i.ck = add nsw <2 x i32> %i.cj, splat (i32 2)
  store <2 x i32> %i.ck, ptr %i.ci, align 4, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.critedge
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 34008
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 33976
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 33984
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 33992
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 33964
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 33972
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 226
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.i
  %indvars.iv121 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next122, %bb.i ] ; 9 uses
  %i.cs = icmp eq i64 %indvars.iv121, 3
  br i1 %i.cs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ct = load i8, ptr %i.x, align 1, !tbaa !137
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul nsw i32 %i.g, %i.cu
  %i.cw = load i8, ptr %i.cr, align 2, !tbaa !73
  %i.cx = zext i8 %i.cw to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv121
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !72
  %i.da = sub nsw i32 %i.cc, %i.cz
  %i.db = load i16, ptr %i.j, align 8, !tbaa !39
  %i.dc = zext i16 %i.db to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0107 = phi i32 [ %i.cv, %bb.g ], [ %i.da, %bb.h ] ; 4 uses
  %.pn = phi i32 [ %i.cx, %bb.g ], [ %i.dc, %bb.h ]
  %.0 = mul nsw i32 %.pn, %i.g                    ; 3 uses
  %i.dd = add nsw i32 %.0107, 13
  %i.de = sdiv i32 %i.dd, 14                      ; 9 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv121
  store i32 %i.de, ptr %i.df, align 4, !tbaa !72
  %1 = add nsw i32 %i.de, -1                      ; 2 uses
  %i.dg = add i32 %1, %.0107
  %i.dh = add i32 %i.de, %.0107
  %2 = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv121 ; 2 uses
  %3 = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv121 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %5 = insertelement <2 x i32> poison, i32 %i.dg, i64 0
  %6 = insertelement <2 x i32> %5, i32 %.0107, i64 1
  %7 = insertelement <2 x i32> poison, i32 %i.de, i64 0
  %8 = shufflevector <2 x i32> %6, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %9 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> zeroinitializer
  %10 = sdiv <4 x i32> %8, %9                     ; 2 uses
  %11 = extractelement <4 x i32> %10, i64 0
  %12 = mul nsw i32 %11, %i.de
  %13 = sub i32 %i.dh, %12
  %14 = add nsw <4 x i32> %10, <i32 1, i32 1, i32 0, i32 0>
  %15 = sdiv <4 x i32> %14, splat (i32 2)
  %16 = trunc <4 x i32> %15 to <4 x i8>           ; 4 uses
  %17 = extractelement <4 x i8> %16, i64 0
  store i8 %17, ptr %2, align 2, !tbaa !62
  %18 = extractelement <4 x i8> %16, i64 2
  store i8 %18, ptr %3, align 2, !tbaa !62
  %19 = extractelement <4 x i8> %16, i64 1
  store i8 %19, ptr %4, align 1, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 1
  %20 = extractelement <4 x i8> %16, i64 3
  store i8 %20, ptr %i.di, align 1, !tbaa !62
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv121
  store i32 %13, ptr %i.dj, align 4, !tbaa !72
  %i.dk = add i32 %1, %.0
  %i.dl = sdiv i32 %i.dk, %i.de                   ; 2 uses
  %i.dm = sdiv i32 %.0, %i.de
  %i.dn = mul nsw i32 %i.dl, %i.de
  %.neg110 = add i32 %i.de, %.0
  %i.do = sub i32 %.neg110, %i.dn
  %i.dp = trunc i32 %i.dl to i8
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv121 ; 2 uses
  store i8 %i.dp, ptr %i.dq, align 2, !tbaa !62
  %i.dr = trunc i32 %i.dm to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !62
  %i.dt = trunc i32 %i.do to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv121
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !62
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next122, 4
  br i1 %exitcond124.not, label %.preheader, label %bb.f, !llvm.loop !144

.preheader:                                       ; preds = %bb.i, %.preheader
  %.0108116 = phi i32 [ %i.dv, %.preheader ], [ 0, %bb.i ] ; 2 uses
  tail call fastcc void @construct_perm_table(ptr noundef nonnull %0, i32 noundef %.0108116) #10
  %i.dv = add nuw nsw i32 %.0108116, 1            ; 2 uses
  %exitcond125.not = icmp eq i32 %i.dv, 4
  br i1 %exitcond125.not, label %bb.j, label %.preheader, !llvm.loop !145

bb.j:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @dequant(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34008
  %i.b = zext i32 %3 to i64                       ; 7 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !72   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph69, label %._crit_edge70

.lr.ph69:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 33964
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33972
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 33992
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.b
  %i.l = load i32, ptr %i.k, align 4, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 33976
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 33984
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.r = getelementptr inbounds nuw [8192 x i8], ptr %i.q, i64 %i.b
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph69, %._crit_edge
  %.05267 = phi i32 [ 0, %.lr.ph69 ], [ %i.gk, %._crit_edge ] ; 3 uses
  %.05364 = phi i32 [ 0, %.lr.ph69 ], [ %i.gj, %._crit_edge ] ; 2 uses
  %.05463 = phi ptr [ %1, %.lr.ph69 ], [ %i.ak, %._crit_edge ] ; 3 uses
  %i.s = load i8, ptr %i.i, align 1, !tbaa !62
  %i.t = zext i8 %i.s to i32
  %i.u = icmp samesign uge i32 %.05267, %i.t
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !62    ; 11 uses
  %i.y = zext i8 %i.x to i32
  %i.z = icmp sge i32 %.05267, %i.l
  %i.aa = zext i1 %i.z to i64                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %.05463, i64 1
  %i.ae = load i8, ptr %.05463, align 1, !tbaa !62
  %i.af = zext i8 %i.ae to i32                    ; 3 uses
  %i.ag = icmp eq i8 %i.ac, 7                     ; 2 uses
  %i.ah = and i32 %i.af, 63
  %.050 = select i1 %i.ag, i32 %i.ah, i32 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aa
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %.05463, i64 2
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !62
  %i.am = zext i8 %i.al to i32                    ; 3 uses
  %i.an = icmp eq i8 %i.aj, 7                     ; 2 uses
  %i.ao = and i32 %i.am, 64
  %.not56 = icmp ne i32 %i.ao, 0
  %i.ap = and i32 %i.am, 63
  %.049 = select i1 %i.an, i32 %i.ap, i32 %i.am
  %i.aq = select i1 %i.an, i1 %.not56, i1 false
  %.fr61 = freeze i1 %i.aq                        ; 2 uses
  %i.ar = mul nsw i32 %.050, %6
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %4, i64 %i.as ; 12 uses
  %i.au = mul nsw i32 %.049, %6
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %5, i64 %i.av ; 12 uses
  %.not71 = icmp eq i8 %i.x, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ax = and i32 %i.af, 64
  %.not = icmp ne i32 %i.ax, 0
  %i.ay = select i1 %i.ag, i1 %.not, i1 false
  %.fr = freeze i1 %i.ay
  %i.az = zext nneg i32 %.05364 to i64
  %wide.trip.count89 = zext i8 %i.x to i64        ; 8 uses
  %invariant.gep100 = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.az ; 12 uses
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.fr61, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %xtraiter114 = and i64 %wide.trip.count89, 1
  %i.ba = icmp eq i8 %i.x, 1
  br i1 %i.ba, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split.preheader.new

.lr.ph.split.us.split.preheader.new:              ; preds = %.lr.ph.split.us.split.preheader
  %unroll_iter117 = and i64 %wide.trip.count89, 254
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %xtraiter119 = and i64 %wide.trip.count89, 1
  %i.bb = icmp eq i8 %i.x, 1
  br i1 %i.bb, label %.lr.ph.split.us.split.us.epil.preheader, label %.lr.ph.split.us.split.us.preheader.new

.lr.ph.split.us.split.us.preheader.new:           ; preds = %.lr.ph.split.us.split.us.preheader
  %unroll_iter122 = and i64 %wide.trip.count89, 254
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us.preheader.new
  %indvars.iv86 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader.new ], [ %indvars.iv.next87.1, %.lr.ph.split.us.split.us ] ; 5 uses
  %niter123 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader.new ], [ %niter123.next.1, %.lr.ph.split.us.split.us ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv86
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !146
  %i.be = sext i16 %i.bd to i32
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv86
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !146
  %i.bh = sext i16 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, %i.be
  %i.bj = sub nsw i32 0, %i.bi
  %i.bk = sitofp nsz i32 %i.bj to float
  %gep101 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep100, i64 %indvars.iv86
  %i.bl = load i16, ptr %gep101, align 2, !tbaa !146
  %i.bm = sext i16 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bm
  store float %i.bk, ptr %i.bn, align 4, !tbaa !63
  %indvars.iv.next87 = or disjoint i64 %indvars.iv86, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.next87
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !146
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.next87
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !146
  %i.bt = sext i16 %i.bs to i32
  %i.bu = add nsw i32 %i.bt, %i.bq
  %i.bv = sub nsw i32 0, %i.bu
  %i.bw = sitofp nsz i32 %i.bv to float
  %gep101.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep100, i64 %indvars.iv.next87
  %i.bx = load i16, ptr %gep101.1, align 2, !tbaa !146
  %i.by = sext i16 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.by
  store float %i.bw, ptr %i.bz, align 4, !tbaa !63
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %niter123.next.1 = add nuw i64 %niter123, 2     ; 2 uses
  %niter123.ncmp.1 = icmp eq i64 %niter123.next.1, %unroll_iter122
  br i1 %niter123.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us, !llvm.loop !147

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split.preheader.new
  %indvars.iv81 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %indvars.iv.next82.1, %.lr.ph.split.us.split ] ; 5 uses
  %niter118 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %niter118.next.1, %.lr.ph.split.us.split ]
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv81
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !146
  %i.cc = sext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv81
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !146
  %i.cf = sext i16 %i.ce to i32
  %i.cg = sub nsw i32 %i.cf, %i.cc
  %i.ch = sitofp nsz i32 %i.cg to float
  %gep99 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep100, i64 %indvars.iv81
  %i.ci = load i16, ptr %gep99, align 2, !tbaa !146
  %i.cj = sext i16 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cj
  store float %i.ch, ptr %i.ck, align 4, !tbaa !63
  %indvars.iv.next82 = or disjoint i64 %indvars.iv81, 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.next82
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !146
  %i.cn = sext i16 %i.cm to i32
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.next82
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !146
  %i.cq = sext i16 %i.cp to i32
  %i.cr = sub nsw i32 %i.cq, %i.cn
  %i.cs = sitofp nsz i32 %i.cr to float
  %gep99.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep100, i64 %indvars.iv.next82
  %i.ct = load i16, ptr %gep99.1, align 2, !tbaa !146
  %i.cu = sext i16 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cu
  store float %i.cs, ptr %i.cv, align 4, !tbaa !63
  %indvars.iv.next82.1 = add nuw nsw i64 %indvars.iv81, 2 ; 2 uses
  %niter118.next.1 = add nuw i64 %niter118, 2     ; 2 uses
  %niter118.ncmp.1 = icmp eq i64 %niter118.next.1, %unroll_iter117
end_hunk_0
