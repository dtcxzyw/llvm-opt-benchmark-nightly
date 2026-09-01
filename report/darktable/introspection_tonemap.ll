Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_tonemap?download=true
inline.NumInlined: 80
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN20PermutohedralLatticeILi3ELi2EEC2Emmm:._crit_edge.3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.bh, align 8, !tbaa !61
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.be, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 160
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 216
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 184
  store i64 0, ptr %i.bl, align 8, !tbaa !60
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.bm, align 8, !tbaa !61
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 240
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 296
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 264
  store i64 0, ptr %i.bq, align 8, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.br, align 8, !tbaa !61
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bo, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 376
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 344
  store i64 0, ptr %i.bv, align 8, !tbaa !60
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.bw, align 8, !tbaa !61
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.az, i64 400
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 456
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 424
  store i64 0, ptr %i.ca, align 8, !tbaa !60
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.cb, align 8, !tbaa !61
  %i.cc = getelementptr inbounds nuw i8, ptr %i.az, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.by, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 480
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 536
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 504
  store i64 0, ptr %i.cf, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.cg, align 8, !tbaa !61
  %i.ch = getelementptr inbounds nuw i8, ptr %i.az, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cd, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 560
  %i.cj = getelementptr inbounds nuw i8, ptr %i.az, i64 616
  %i.ck = getelementptr inbounds nuw i8, ptr %i.az, i64 584
  store i64 0, ptr %i.ck, align 8, !tbaa !60
  %i.cl = getelementptr inbounds nuw i8, ptr %i.az, i64 608
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.cl, align 8, !tbaa !61
  %i.cm = getelementptr inbounds nuw i8, ptr %i.az, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.az, i64 640 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.an
  br i1 %i.co, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.al, ptr %i.cp, align 8, !tbaa !64
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %.not52 = icmp eq i64 %i.cq, 0
  br i1 %.not52, label %._crit_edge51, label %.lr.ph50

._crit_edge51:                                    ; preds = %.lr.ph50, %.loopexit
  ret void

.lr.ph50:                                         ; preds = %.loopexit, %.lr.ph50
  %i.cr = phi i64 [ %i.cw, %.lr.ph50 ], [ %i.cq, %.loopexit ]
  %.048 = phi i64 [ %i.cv, %.lr.ph50 ], [ 0, %.loopexit ] ; 2 uses
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !64
  %i.ct = getelementptr inbounds nuw [80 x i8], ptr %i.cs, i64 %.048
  %i.cu = udiv i64 %i.ad, %i.cr
  tail call void @_ZN22HashTablePermutohedralILi3ELi2EE7setSizeEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ct, i64 noundef %i.cu)
  %i.cv = add nuw i64 %.048, 1                    ; 2 uses
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.cx = icmp ult i64 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph50, label %._crit_edge51, !llvm.loop !65
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK20PermutohedralLatticeILi3ELi2EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 {
.lr.ph:
  %i.a = alloca [5 x float], align 16             ; 15 uses
  %5 = alloca %"struct.HashTablePermutohedral<3, 2>::Key", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !41 ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 2.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !41 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %i.j
  %i.n = load float, ptr %1, align 4, !tbaa !41   ; 2 uses
  %i.o = load float, ptr %i.e, align 4, !tbaa !41 ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, %i.n
  %i.q = fmul reassoc nsz arcp contract afn float %i.i, 3.000000e+00
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.l
  %i.s = fmul reassoc nsz arcp contract afn float %i.n, 2.000000e+00
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.o
  %i.u = insertelement <2 x float> poison, float %i.c, i64 0
  %i.v = insertelement <2 x float> poison, float %i.g, i64 0
  %i.w = fmul reassoc nsz arcp contract afn <2 x float> %i.v, %i.u
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.x, <float 4.000000e+00, float -3.000000e+00> ; 4 uses
  %i.z = extractelement <2 x float> %i.y, i64 1
  %i.aa = fsub reassoc nsz arcp contract afn float %i.z, %i.m
  %i.ab = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.aa, i64 0
  %i.ac = fadd reassoc nsz arcp contract afn <2 x float> %i.y, %i.ab ; 7 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.ae = extractelement <2 x float> %i.ac, i64 0
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %i.p
  %i.ag = fadd reassoc nsz arcp contract afn float %i.r, %i.af ; 4 uses
  %i.ah = fadd reassoc nsz arcp contract afn float %i.t, %i.ag ; 2 uses
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ag, i64 1 ; 5 uses
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float 2.500000e-01) ; 2 uses
  %i.al = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ak)
  %i.am = fmul reassoc nsz arcp contract afn <2 x float> %i.ac, splat (float 2.500000e-01) ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn <2 x float> %i.al, splat (float 4.000000e+00) ; 2 uses
  %i.ao = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.ak)
  %i.ap = fmul reassoc nsz arcp contract afn <2 x float> %i.ao, splat (float 4.000000e+00) ; 2 uses
  %i.aq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.am)
  %i.ar = fsub reassoc nsz arcp contract afn <2 x float> %i.an, %i.aj
  %i.as = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.am)
  %i.at = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.ap
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.aq, splat (float 4.000000e+00) ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn <2 x float> %i.as, splat (float 4.000000e+00) ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ar, %i.at
  %i.ax = fsub reassoc nsz arcp contract afn <2 x float> %i.au, %i.ac
  %i.ay = fsub reassoc nsz arcp contract afn <2 x float> %i.ac, %i.av
  %i.az = select <2 x i1> %i.aw, <2 x float> %i.an, <2 x float> %i.ap
  %i.ba = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ax, %i.ay
  %i.bb = fptosi <2 x float> %i.az to <2 x i32>   ; 3 uses
  %i.bc = select <2 x i1> %i.ba, <2 x float> %i.au, <2 x float> %i.av
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.be = fptosi <4 x float> %i.bd to <4 x i32>   ; 6 uses
  %i.bf = extractelement <2 x i32> %i.bb, i64 1
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nsz arcp contract afn float %i.ag, %i.bg
  %i.bi = extractelement <4 x i32> %i.be, i64 1
  %i.bj = sitofp reassoc nsz arcp contract afn i32 %i.bi to float
  %i.bk = sitofp <2 x i32> %i.bb to <2 x float>   ; 2 uses
  %i.bl = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.bk ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.bn = shufflevector <2 x float> %i.ac, <2 x float> %i.aj, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.bo = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bp = insertelement <4 x float> poison, float %i.bj, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.bo, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bs = fsub reassoc nsz arcp contract afn <4 x float> %i.bn, %i.br
  %i.bt = extractelement <2 x float> %i.bl, i64 0
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, %i.bh ; 2 uses
  %i.bv = sitofp <4 x i32> %i.be to <4 x float>
  %i.bw = sitofp <4 x i32> %i.be to <4 x float>
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = fsub reassoc nsz arcp contract afn <4 x float> %i.ad, %i.bv ; 2 uses
  %i.bz = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ca = fsub reassoc nsz arcp contract afn <4 x float> %i.bz, %i.bx
  %i.cb = fcmp reassoc nsz arcp contract afn uge <4 x float> %i.bm, %i.by ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bm, %i.by
  %i.cd = shufflevector <4 x i1> %i.cc, <4 x i1> %i.cb, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ce = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bs, %i.ca ; 2 uses
  %not. = xor i1 %i.bu, true
  %i.cf = shufflevector <4 x i1> %i.ce, <4 x i1> %i.cb, <4 x i32> <i32 1, i32 poison, i32 poison, i32 5>
  %i.cg = insertelement <4 x i1> %i.cf, i1 %i.bu, i64 1 ; 2 uses
  %i.ch = xor <4 x i1> %i.cg, <i1 true, i1 false, i1 poison, i1 false>
  %i.ci = shufflevector <4 x i1> %i.ch, <4 x i1> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.cj = select <4 x i1> %i.ci, <4 x i32> splat (i32 1), <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.ck = insertelement <4 x i1> %i.cg, i1 %not., i64 2
  %i.cl = select <4 x i1> %i.ck, <4 x i32> <i32 1, i32 2, i32 1, i32 2>, <4 x i32> <i32 2, i32 1, i32 0, i32 1>
  %i.cm = select <4 x i1> %i.cd, <4 x i32> %i.cj, <4 x i32> %i.cl
  %i.cn = xor <4 x i1> %i.ce, <i1 true, i1 false, i1 false, i1 false>
  %i.co = zext <4 x i1> %i.cn to <4 x i32>
  %i.cp = add nuw nsw <4 x i32> %i.cm, %i.co      ; 5 uses
  %i.cq = shufflevector <2 x i32> %i.bb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cr = shufflevector <4 x i32> %i.be, <4 x i32> %i.cq, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cr) ; 3 uses
  %i.ct = sdiv i32 %i.cs, 4                       ; 6 uses
  %i.cu = icmp sgt i32 %i.cs, 3
  br i1 %i.cu, label %.preheader107, label %bb.a

.preheader107:                                    ; preds = %.lr.ph
  %6 = sub nsw i32 4, %i.ct
  %7 = add nsw i32 %i.ct, -4
  %i.cv = shufflevector <4 x i32> %i.be, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 1> ; 2 uses
  %i.cw = add nsw <4 x i32> %i.cv, splat (i32 -4)
  %8 = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.cx = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cy = icmp slt <4 x i32> %i.cp, %i.cx         ; 2 uses
  %9 = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = insertelement <4 x i32> poison, i32 %7, i64 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cz = select <4 x i1> %i.cy, <4 x i32> %10, <4 x i32> %12
  %i.da = select <4 x i1> %i.cy, <4 x i32> %i.cv, <4 x i32> %i.cw
  %i.db = add nsw <4 x i32> %i.cz, %i.cp
  br label %.loopexit

bb.a:                                             ; preds = %.lr.ph
  %i.dc = icmp slt i32 %i.cs, -3
  %i.dd = shufflevector <4 x i32> %i.be, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 1> ; 3 uses
  br i1 %i.dc, label %.preheader108, label %.loopexit

.preheader108:                                    ; preds = %bb.a
  %13 = sub nsw i32 0, %i.ct
  %14 = add nsw i32 %i.ct, 4
  %15 = add nsw <4 x i32> %i.dd, splat (i32 4)
  %16 = insertelement <4 x i32> poison, i32 %13, i64 0
  %i.de = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.df = icmp slt <4 x i32> %i.cp, %i.de         ; 2 uses
  %17 = insertelement <4 x i32> poison, i32 %14, i64 0
  %18 = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> zeroinitializer
  %19 = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %20 = shufflevector <4 x i32> %19, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dg = select <4 x i1> %i.df, <4 x i32> %18, <4 x i32> %20
  %i.dh = select <4 x i1> %i.df, <4 x i32> %15, <4 x i32> %i.dd
  %i.di = add nsw <4 x i32> %i.dg, %i.cp
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader108, %.preheader107, %bb.a
  %i.dj = phi <4 x i32> [ %i.db, %.preheader107 ], [ %i.di, %.preheader108 ], [ %i.cp, %bb.a ] ; 4 uses
  %i.dk = phi <4 x i32> [ %i.da, %.preheader107 ], [ %i.dh, %.preheader108 ], [ %i.dd, %bb.a ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.dl = extractelement <4 x i32> %i.dj, i64 1   ; 3 uses
  %i.dm = sub nsw i32 3, %i.dl
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dn ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !41
  %i.dq = sub nsw i32 4, %i.dl
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dr ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !41
  %i.du = extractelement <4 x i32> %i.dj, i64 2   ; 3 uses
  %i.dv = sub nsw i32 3, %i.du
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dw ; 2 uses
  %i.dy = sub nsw i32 4, %i.du
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dz ; 2 uses
  %i.eb = extractelement <4 x i32> %i.dj, i64 3   ; 3 uses
  %i.ec = sub nsw i32 3, %i.eb
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ed ; 2 uses
  %i.ef = sub nsw i32 4, %i.eb
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eg ; 2 uses
  %i.ei = sitofp <4 x i32> %i.dk to <4 x float>
  %i.ej = shufflevector <2 x float> %i.y, <2 x float> %i.ac, <4 x i32> <i32 1, i32 poison, i32 poison, i32 2>
  %i.ek = insertelement <4 x float> %i.ej, float %i.ah, i64 1
  %i.el = insertelement <4 x float> %i.ek, float %i.ag, i64 2
  %i.em = fsub reassoc nsz arcp contract afn <4 x float> %i.el, %i.ei ; 4 uses
  %i.en = extractelement <4 x float> %i.em, i64 1
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, 2.500000e-01 ; 2 uses
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, %i.dp
  store float %i.ep, ptr %i.do, align 4, !tbaa !41
  %i.eq = fsub reassoc nsz arcp contract afn float %i.dt, %i.eo
  store float %i.eq, ptr %i.ds, align 4, !tbaa !41
  %i.er = extractelement <4 x float> %i.em, i64 2
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, 2.500000e-01 ; 2 uses
  %i.et = load float, ptr %i.dx, align 4, !tbaa !41
  %i.eu = fadd reassoc nsz arcp contract afn float %i.es, %i.et
  store float %i.eu, ptr %i.dx, align 4, !tbaa !41
  %i.ev = load float, ptr %i.ea, align 4, !tbaa !41
  %i.ew = fsub reassoc nsz arcp contract afn float %i.ev, %i.es
  store float %i.ew, ptr %i.ea, align 4, !tbaa !41
  %i.ex = extractelement <4 x float> %i.em, i64 3
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ex, 2.500000e-01 ; 2 uses
  %i.ez = load float, ptr %i.ee, align 4, !tbaa !41
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ey, %i.ez
  store float %i.fa, ptr %i.ee, align 4, !tbaa !41
  %i.fb = load float, ptr %i.eh, align 4, !tbaa !41
  %i.fc = fsub reassoc nsz arcp contract afn float %i.fb, %i.ey
  store float %i.fc, ptr %i.eh, align 4, !tbaa !41
  %i.fd = extractelement <4 x float> %i.em, i64 0
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, 2.500000e-01 ; 2 uses
  %i.ff = extractelement <4 x i32> %i.dj, i64 0   ; 2 uses
  %i.fg = sub nsw i32 3, %i.ff
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fh ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !41
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fe, %i.fj
  store float %i.fk, ptr %i.fi, align 4, !tbaa !41
  %i.fl = sub nsw i32 4, %i.ff
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fm ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !41
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fo, %i.fe
  store float %i.fp, ptr %i.fn, align 4, !tbaa !41
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fr = load float, ptr %i.fq, align 16, !tbaa !41
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fr, 1.000000e+00
  %i.ft = load float, ptr %i.a, align 16, !tbaa !41
  %i.fu = fadd reassoc nsz arcp contract afn float %i.fs, %i.ft
  store float %i.fu, ptr %i.a, align 16, !tbaa !41
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !57 ; 2 uses
  %i.fx = getelementptr inbounds nuw [36 x i8], ptr %i.fw, i64 %3
  store i32 %4, ptr %i.fx, align 4, !tbaa !66
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gb = sext i32 %4 to i64                      ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.ga, align 8, !tbaa !64
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gf = extractelement <4 x i32> %i.dk, i64 1
  %i.gg = extractelement <4 x i32> %i.dk, i64 2
  %i.gh = extractelement <4 x i32> %i.dk, i64 3
  br label %.preheader

.preheader:                                       ; preds = %.loopexit, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i
  %i.gi = phi ptr [ %i.fw, %.loopexit ], [ %i.jj, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ]
  %i.gj = phi ptr [ %.pre, %.loopexit ], [ %i.jk, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ] ; 5 uses
  %i.gk = load ptr, ptr %i.fy, align 8, !tbaa !58 ; 3 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.gl = shl nuw nsw i32 %indvars.iv.tr, 2       ; 3 uses
  %i.gm = add nsw i32 %i.dl, %i.gl
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !36
  %i.gq = add nsw i32 %i.gp, %i.gf                ; 2 uses
  %i.gr = trunc i32 %i.gq to i16
  store i16 %i.gr, ptr %i.fz, align 4, !tbaa !68
  %i.gs = add nsw i32 %i.du, %i.gl
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !36
  %i.gw = add nsw i32 %i.gv, %i.gg                ; 2 uses
  %i.gx = trunc i32 %i.gw to i16
  store i16 %i.gx, ptr %i.gd, align 2, !tbaa !68
  %i.gy = add nsw i32 %i.eb, %i.gl
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !36
  %i.hc = add nsw i32 %i.hb, %i.gh                ; 2 uses
  %i.hd = trunc i32 %i.hc to i16
  store i16 %i.hd, ptr %i.ge, align 4, !tbaa !68
  %sext = shl i32 %i.gq, 16
  %i.he = ashr exact i32 %sext, 16
  %i.hf = mul i32 %i.he, 2531011
  %sext227 = shl i32 %i.gw, 16
  %i.hg = ashr exact i32 %sext227, 16
  %i.hh = add i32 %i.hf, %i.hg
  %i.hi = mul i32 %i.hh, 2531011
  %sext228 = shl i32 %i.hc, 16
  %i.hj = ashr exact i32 %sext228, 16
  %i.hk = add i32 %i.hi, %i.hj
  %i.hl = mul i32 %i.hk, 2531011                  ; 3 uses
  store i32 %i.hl, ptr %5, align 4, !tbaa !69
  %i.hm = getelementptr inbounds [80 x i8], ptr %i.gj, i64 %i.gb ; 10 uses
  %i.hn = zext i32 %i.hl to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !61 ; 2 uses
  %i.hq = and i64 %i.hp, %i.hn                    ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !71 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hq
  %.sroa.0.0.copyload22.i.i = load i32, ptr %i.ht, align 4, !tbaa !36 ; 2 uses
  %i.hu = icmp eq i32 %.sroa.0.0.copyload22.i.i, -1
  br i1 %i.hu, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

.lr.ph.i.i:                                       ; preds = %.preheader
  %i.hv = load ptr, ptr %i.hm, align 8, !tbaa !72
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i, %.preheader
  %.011.lcssa.i.i = phi i64 [ %i.hq, %.preheader ], [ %i.jg, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hm, i64 32 ; 4 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !73 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !74
  %.not.i.i = icmp ult i64 %i.hx, %i.hz
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 72 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !75
  %i.ic = add i64 %i.ib, 1
  store i64 %i.ic, ptr %i.ia, align 8, !tbaa !75
  %i.id = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !60
  tail call void @_ZN22HashTablePermutohedralILi3ELi2EE9growExactEm(ptr noundef nonnull align 8 dereferenceable(80) %i.hm, i64 noundef %i.ie)
  %.pre.i.i = load i64, ptr %i.hw, align 8, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %i.if = phi i64 [ %.pre.i.i, %bb.c ], [ %i.hx, %._crit_edge.i.i ]
  %i.ig = load ptr, ptr %i.hm, align 8, !tbaa !72
  %i.ih = getelementptr inbounds nuw [12 x i8], ptr %i.ig, i64 %i.if
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.ih, ptr noundef nonnull align 4 dereferenceable(10) %5, i64 10, i1 false), !tbaa.struct !76
  %i.ii = load i64, ptr %i.hw, align 8, !tbaa !73 ; 2 uses
  %i.ij = trunc i64 %i.ii to i32                  ; 2 uses
  %i.ik = load ptr, ptr %i.hr, align 8, !tbaa !71
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.011.lcssa.i.i
  store i32 %i.ij, ptr %i.il, align 4, !tbaa !78
  %i.im = add i64 %i.ii, 1
  store i64 %i.im, ptr %i.hw, align 8, !tbaa !73
  %.pre224 = load ptr, ptr %i.ga, align 8, !tbaa !64
  %.pre225 = load ptr, ptr %i.fv, align 8, !tbaa !57
  br label %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i

bb.e:                                             ; preds = %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.0.0.copyload24.i.i = phi i32 [ %.sroa.0.0.copyload22.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i ] ; 2 uses
  %.01123.i.i = phi i64 [ %i.hq, %.lr.ph.i.i ], [ %i.jg, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i ]
  %i.in = sext i32 %.sroa.0.0.copyload24.i.i to i64
  %i.io = getelementptr inbounds [12 x i8], ptr %i.hv, i64 %i.in ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !69
  %.not.i.i.i = icmp eq i32 %i.ip, %i.hl
  br i1 %.not.i.i.i, label %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i, label %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i
end_hunk_0
