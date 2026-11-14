Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/nikon?download=true
inline.NumInlined: 29
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6LibRaw20processNikonLensDataEPhj
define void @_ZN6LibRaw20processNikonLensDataEPhj(ptr noundef nonnull align 8 dereferenceable(768512) initializes((1338, 1340), (1354, 1356), (1422, 1424)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1183 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !73    ; 7 uses
  %.not = icmp sgt i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1422
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.d, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false) #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = and i8 %i.c, 1
  %.not76 = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1422 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1423 ; 2 uses
  br i1 %.not76, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 65, ptr %i.f, align 2, !tbaa !74
  store i8 70, ptr %i.g, align 1, !tbaa !74
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 77, ptr %i.f, align 2, !tbaa !74
  store i8 70, ptr %i.g, align 1, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.h = zext i8 %i.c to i32                      ; 3 uses
  %i.i = and i32 %i.h, 64
  %.not77 = icmp eq i32 %i.i, 0
  br i1 %.not77, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.j = and i32 %i.h, 4
  %.not78 = icmp eq i32 %i.j, 0
  br i1 %.not78, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.k = and i32 %i.h, 2
  %.not79 = icmp eq i32 %i.k, 0
  br i1 %.not79, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f
  %.sink = phi i8 [ 69, %bb.f ], [ 71, %bb.g ], [ 68, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1438
  store i8 %.sink, ptr %i.l, align 2, !tbaa !74
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %i.m = and i8 %i.c, 8
  %.not80 = icmp eq i8 %i.m, 0
  br i1 %.not80, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1439
  store i8 32, ptr %i.n, align 1, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1440
  store i8 86, ptr %i.o, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1441
  store i8 82, ptr %i.p, align 1, !tbaa !74
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = and i8 %i.c, 16
  %.not81 = icmp eq i8 %i.q, 0
  br i1 %.not81, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 5, ptr %i.r, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 5, ptr %i.s, align 8, !tbaa !76
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink118 = phi i16 [ 26, %bb.l ], [ 27, %bb.k ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1354 ; 3 uses
  store i16 %.sink118, ptr %i.t, align 2, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1338 ; 4 uses
  store i16 %.sink118, ptr %i.u, align 2, !tbaa !78
  %i.v = and i8 %i.c, 32
  %.not82 = icmp eq i8 %i.v, 0
  br i1 %.not82, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.w, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false) #11
  store i16 27, ptr %i.u, align 2, !tbaa !78
  store i16 26, ptr %i.t, align 2, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 5, ptr %i.x, align 8, !tbaa !76
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.y = and i8 %i.c, -33                         ; 3 uses
  store i8 %i.y, ptr %i.b, align 1, !tbaa !73
  %i.z = icmp ult i32 %2, 20
  br i1 %i.z, label %bb.p, label %switch.early.test

switch.early.test:                                ; preds = %bb.o
  switch i32 %2, label %bb.bb [
    i32 58, label %bb.t
    i32 108, label %bb.t
    i32 590, label %bb.ay
    i32 459, label %bb.ay
    i32 509, label %bb.az
    i32 879, label %bb.ba
  ]

bb.p:                                             ; preds = %bb.o
  switch i32 %2, label %bb.ak [
    i32 9, label %bb.q
    i32 15, label %bb.r
    i32 16, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  br label %bb.ak

bb.r:                                             ; preds = %bb.p
  br label %bb.ak

bb.s:                                             ; preds = %bb.p
  br label %bb.ak

bb.t:                                             ; preds = %switch.early.test, %switch.early.test
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !74
  %i.ac = icmp eq i8 %i.ab, 90                    ; 2 uses
  br i1 %i.ac, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i16 28, ptr %i.t, align 2, !tbaa !77
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2274
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !79
  %.not83 = icmp eq i16 %i.ae, 12
  br i1 %.not83, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 2, ptr %i.af, align 8, !tbaa !76
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ag = load i8, ptr %1, align 1, !tbaa !74
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ 1, %bb.x ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !74
  %i.aj = icmp eq i8 %i.ai, %i.ag
  %i.ak = icmp samesign ult i64 %indvars.iv, 17
  %i.al = and i1 %i.ak, %i.aj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.al, label %bb.y, label %bb.z, !llvm.loop !88

bb.z:                                             ; preds = %bb.y
  %i.am = icmp eq i64 %indvars.iv, 17
  br i1 %i.am, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i16 28, ptr %i.u, align 2, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ap = tail call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.ao) ; 2 uses
  %i.aq = zext i16 %i.ap to i64
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !89
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1336
  switch i16 %i.ap, label %bb.ab [
    i16 11, label %bb.ac
    i16 12, label %bb.ac
    i16 26, label %bb.ac
    i16 41, label %bb.ac
    i16 43, label %bb.ac
    i16 -12285, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.ab
  %.sink127 = phi i16 [ 2, %bb.ab ], [ 1, %bb.aa ], [ 1, %bb.aa ], [ 1, %bb.aa ], [ 1, %bb.aa ], [ 1, %bb.aa ], [ 1, %bb.aa ]
  store i16 %.sink127, ptr %i.ar, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  %i.at = load float, ptr %i.as, align 8, !tbaa !90
  %i.au = fcmp reassoc nsz arcp contract afn olt float %i.at, f0x3F333333
  br i1 %i.au, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.aw = tail call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.av)
  %i.ax = uitofp reassoc nsz arcp contract afn i16 %i.aw to float
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, f0x3B2AAAAB
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, -1.000000e+00 ; 2 uses
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.az)
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.ba, 6.400000e+01
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.az)
  %i.bb = select reassoc nsz arcp contract afn i1 %or.cond.i.i, float 0.000000e+00, float %exp2
  store float %i.bb, ptr %i.as, align 8, !tbaa !90
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1492 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !91
  %i.be = fcmp reassoc nsz arcp contract afn olt float %i.bd, f0x3F333333
  br i1 %i.be, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bg = tail call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.bf)
  %i.bh = uitofp reassoc nsz arcp contract afn i16 %i.bg to float
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, f0x3B2AAAAB
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, -1.000000e+00 ; 2 uses
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bj)
  %or.cond.i.i95 = fcmp reassoc nsz arcp contract afn ogt float %i.bk, 6.400000e+01
  %exp2108.a = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bj)
  %i.bl = select reassoc nsz arcp contract afn i1 %or.cond.i.i95, float 0.000000e+00, float %exp2108.a
  store float %i.bl, ptr %i.bc, align 4, !tbaa !91
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !92
  %i.bo = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bn)
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %i.bo, 1.100000e+00
  br i1 %i.bp, label %bb.ah, label %bb.bb

bb.ah:                                            ; preds = %bb.ag
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = tail call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.bq)
  %i.bs = uitofp reassoc nsz arcp contract afn i16 %i.br to float
  store float %i.bs, ptr %i.bm, align 8, !tbaa !92
  br label %bb.bb

bb.ai:                                            ; preds = %bb.z
  store i16 27, ptr %i.u, align 2, !tbaa !78
  br i1 %i.ac, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store i32 5919814, ptr %i.bt, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.s, %bb.r, %bb.q, %bb.p
  %.not92 = phi i1 [ false, %bb.p ], [ true, %bb.q ], [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.aj ], [ false, %bb.ai ]
  %.1 = phi i64 [ 0, %bb.p ], [ 2, %bb.q ], [ 7, %bb.r ], [ 8, %bb.s ], [ 9, %bb.aj ], [ 9, %bb.ai ]
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %.1 ; 14 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !74
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1180
  store i8 %i.bv, ptr %i.bw, align 4, !tbaa !93
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !74  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1181
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !81
  %i.ca = uitofp reassoc nsz arcp contract afn i8 %i.by to float
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, f0x3DAAAAAB
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1512
  store float %i.cb, ptr %i.cd, align 8, !tbaa !82
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 3 uses
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !83
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cf)
  %i.ch = fcmp reassoc nsz arcp contract afn olt float %i.cg, 1.100000e+00
  br i1 %i.ch, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %.not84 = icmp eq i8 %i.y, 1                    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !74  ; 3 uses
  br i1 %.not84, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %.not85 = icmp eq i8 %i.cj, 0
  br i1 %.not85, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ck = uitofp reassoc nsz arcp contract afn i8 %i.cj to float
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, f0x3D2AAAAB ; 2 uses
  %3 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cl)
  %or.cond.i.i96 = fcmp reassoc nsz arcp contract afn ogt float %3, 6.400000e+01
  %exp2110.a = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cl)
  %i.cm = fmul reassoc nsz arcp contract afn float %exp2110.a, 5.000000e+00
  %i.cn = select i1 %or.cond.i.i96, float 0.000000e+00, float %i.cm
  store float %i.cn, ptr %i.ce, align 8, !tbaa !83
  br label %.thread

.thread:                                          ; preds = %bb.an, %bb.am
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !74  ; 2 uses
  %.not87 = icmp eq i8 %i.cp, 0
  br i1 %.not87, label %.thread102, label %bb.ao

.critedge:                                        ; preds = %bb.al
  %i.cq = uitofp reassoc nsz arcp contract afn i8 %i.cj to float
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, f0x3D2AAAAB ; 2 uses
  %4 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cr)
  %or.cond.i.i96.c = fcmp reassoc nsz arcp contract afn ogt float %4, 6.400000e+01
  %exp2109.a = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cr)
  %i.cs = fmul reassoc nsz arcp contract afn float %exp2109.a, 5.000000e+00
  %i.ct = select i1 %or.cond.i.i96.c, float 0.000000e+00, float %i.cs
  store float %i.ct, ptr %i.ce, align 8, !tbaa !83
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !74
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge, %.thread
  %i.cu = phi i8 [ %.pre, %.critedge ], [ %i.cp, %.thread ]
  %i.cv = uitofp reassoc nsz arcp contract afn i8 %i.cu to float
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, f0x3D2AAAAB ; 2 uses
  %5 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cw)
  %or.cond.i.i97 = fcmp reassoc nsz arcp contract afn ogt float %5, 6.400000e+01
  %exp2111.a = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cw)
  %i.cx = fmul reassoc nsz arcp contract afn float %exp2111.a, 5.000000e+00
  %i.cy = select i1 %or.cond.i.i97, float 0.000000e+00, float %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store float %i.cy, ptr %i.cz, align 4, !tbaa !84
  br i1 %.not84, label %.thread102, label %.critedge107

.thread102:                                       ; preds = %.thread, %bb.ao
  %i.da = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.db = load i8, ptr %i.da, align 1, !tbaa !74  ; 2 uses
  %.not89 = icmp eq i8 %i.db, 0
  br i1 %.not89, label %.thread103, label %bb.ap

bb.ap:                                            ; preds = %.thread102
  %i.dc = uitofp reassoc nsz arcp contract afn i8 %i.db to float
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, f0x3D2AAAAB ; 2 uses
  %6 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dd)
  %or.cond.i.i98 = fcmp reassoc nsz arcp contract afn ogt float %6, 6.400000e+01
  %exp2113.a = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.dd)
  %i.de = select reassoc nsz arcp contract afn i1 %or.cond.i.i98, float 0.000000e+00, float %exp2113.a
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store float %i.de, ptr %i.df, align 8, !tbaa !85
  br label %.thread103

.thread103:                                       ; preds = %bb.ap, %.thread102
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bu, i64 5
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !74
  %.not91 = icmp eq i8 %i.dh, 0
  br i1 %.not91, label %bb.ar, label %bb.aq

.critedge107:                                     ; preds = %bb.ao
  %i.di = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !74
  %i.dk = uitofp reassoc nsz arcp contract afn i8 %i.dj to float
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, f0x3D2AAAAB ; 2 uses
  %7 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dl)
  %or.cond.i.i98.c = fcmp reassoc nsz arcp contract afn ogt float %7, 6.400000e+01
  %exp2112.a = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.dl)
  %i.dm = select reassoc nsz arcp contract afn i1 %or.cond.i.i98.c, float 0.000000e+00, float %exp2112.a
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store float %i.dm, ptr %i.dn, align 8, !tbaa !85
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge107, %.thread103
  %i.do = getelementptr inbounds nuw i8, ptr %i.bu, i64 5
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !74
  %i.dq = uitofp reassoc nsz arcp contract afn i8 %i.dp to float
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, f0x3D2AAAAB ; 2 uses
  %8 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dr)
  %or.cond.i.i99 = fcmp reassoc nsz arcp contract afn ogt float %8, 6.400000e+01
  %exp2114.a = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.dr)
  %i.ds = select reassoc nsz arcp contract afn i1 %or.cond.i.i99, float 0.000000e+00, float %exp2114.a
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1468
  store float %i.ds, ptr %i.dt, align 4, !tbaa !86
  br label %bb.ar

bb.ar:                                            ; preds = %.thread103, %bb.aq, %bb.ak
  %i.du = getelementptr inbounds nuw i8, ptr %i.bu, i64 6
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !74
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1182
  store i8 %i.dv, ptr %i.dw, align 2, !tbaa !94
  br i1 %.not92, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dx = getelementptr i8, ptr %i.bu, i64 -1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !74  ; 2 uses
  %.not93 = icmp eq i8 %i.dy, 0
  br i1 %.not93, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 2 uses
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !92
  %i.eb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ea)
  %i.ec = fcmp reassoc nsz arcp contract afn olt float %i.eb, 1.100000e+00
  br i1 %i.ec, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ed = uitofp reassoc nsz arcp contract afn i8 %i.dy to float
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, f0x3D2AAAAB ; 2 uses
  %9 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ee)
  %or.cond.i.i100 = fcmp reassoc nsz arcp contract afn ogt float %9, 6.400000e+01
  %exp2115 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ee)
  %i.ef = fmul reassoc nsz arcp contract afn float %exp2115, 5.000000e+00
  %i.eg = select i1 %or.cond.i.i100, float 0.000000e+00, float %i.ef
  store float %i.eg, ptr %i.dz, align 8, !tbaa !92
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bu, i64 7
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !74  ; 2 uses
  %.not94 = icmp eq i8 %i.ei, 0
  br i1 %.not94, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ej = uitofp reassoc nsz arcp contract afn i8 %i.ei to float
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, f0x3D2AAAAB ; 2 uses
  %10 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ek)
  %or.cond.i.i101 = fcmp reassoc nsz arcp contract afn ogt float %10, 6.400000e+01
  %exp2116 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ek)
  %i.el = select reassoc nsz arcp contract afn i1 %or.cond.i.i101, float 0.000000e+00, float %exp2116
  store float %i.el, ptr %i.a, align 8, !tbaa !95
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.en = load <4 x i8>, ptr %i.bu, align 1, !tbaa !74
  %i.eo = load <3 x i8>, ptr %i.em, align 1, !tbaa !74
  %i.ep = shufflevector <3 x i8> %i.eo, <3 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.eq = shufflevector <4 x i8> %i.ep, <4 x i8> %i.en, <8 x i32> <i32 poison, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.y, i64 0
  %i.es = zext <8 x i8> %i.er to <8 x i64>
  %i.et = shl nuw <8 x i64> %i.es, <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56>
  %i.eu = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.et)
  store i64 %i.eu, ptr %i.cc, align 8, !tbaa !89
  br label %bb.bb

bb.ay:                                            ; preds = %switch.early.test, %switch.early.test
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 390
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ev, ptr noundef nonnull align 1 dereferenceable(64) %i.ew, i64 64, i1 false)
  br label %bb.bb

bb.az:                                            ; preds = %switch.early.test
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 391
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ex, ptr noundef nonnull align 1 dereferenceable(64) %i.ey, i64 64, i1 false)
  br label %bb.bb

bb.ba:                                            ; preds = %switch.early.test
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ez, ptr noundef nonnull align 1 dereferenceable(64) %i.fa, i64 64, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %switch.early.test, %bb.ax, %bb.az, %bb.ba, %bb.ay, %bb.ag, %bb.ah
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15Nikon_NRW_WBtagEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.c = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.d = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.e = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.f = icmp ne i32 %i.b, 0
  %i.g = icmp ne i32 %i.c, 0
  %or.cond = and i1 %i.f, %i.g
  %i.h = icmp ne i32 %i.d, 0
  %or.cond3 = and i1 %or.cond, %i.h
  %i.i = icmp ne i32 %i.e, 0
  %or.cond5 = and i1 %or.cond3, %i.i
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl i32 %i.b, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 187224
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.l ; 4 uses
  store i32 %i.j, ptr %i.m, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.c, ptr %i.n, align 4, !tbaa !87
  %i.o = shl i32 %i.e, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %i.d, ptr %i.q, align 4, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19parseNikonMakernoteExij(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 14 uses
  %i.c = alloca i32, align 4                      ; 15 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca [324 x i8], align 16              ; 10 uses
  %i.f = alloca [10 x i8], align 1                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 84 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 381728 ; 10 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.f, i8 0, i64 10, i1 false)
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !106  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !call_target !116
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !106  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 10), !call_target !124 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 9 ; 2 uses
  store i8 0, ptr %i.t, align 1, !tbaa !74
  %i.u = load i32, ptr %i.f, align 1
  %i.v = xor i32 %i.u, 1869310286
  %i.w = getelementptr i8, ptr %i.f, i64 4
  %i.x = load i16, ptr %i.w, align 1
  %i.y = zext i16 %i.x to i32
  %i.z = xor i32 %i.y, 110
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !74
  %.not283 = icmp eq i8 %i.ae, 2
  br i1 %.not283, label %bb.c, label %bb.fe

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af), !call_target !125
  %i.ak = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.ak, ptr %i.h, align 8, !tbaa !105
  %i.al = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.not284 = icmp eq i16 %i.al, 42
  br i1 %.not284, label %bb.d, label %.loopexit390

bb.d:                                             ; preds = %bb.c
  %i.am = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.ao = zext i32 %i.am to i64
  %i.ap = add nsw i64 %i.ao, -8
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !108
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef %i.ap, i32 noundef 1), !call_target !128 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !108
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i64 noundef -10, i32 noundef 1), !call_target !128 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0213 = phi i64 [ %1, %bb.e ], [ %i.aj, %bb.d ] ; 4 uses
  %i.az = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.ba = icmp ugt i16 %i.az, 1000
  br i1 %i.ba, label %bb.fe, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load i16, ptr %i.h, align 8, !tbaa !105 ; 8 uses
  %.not285432 = icmp eq i16 %i.az, 0
  br i1 %.not285432, label %.loopexit390, label %.lr.ph447

.lr.ph447:                                        ; preds = %bb.g
  %i.bc = zext nneg i16 %i.az to i32
  %i.bd = shl i32 %2, 16                          ; 2 uses
  %i.be = shl nsw i64 %i.n, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 768288 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 768304
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1354 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1338 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1420 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192688 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6LibRaw19parseNikonMakernoteExij:bb.a
  br label %.thread372

bb.p:                                             ; preds = %bb.m
  store i16 43, ptr %i.bh, align 2, !tbaa !77
  store i16 43, ptr %i.bi, align 2, !tbaa !78
  store i16 2, ptr %i.bj, align 4, !tbaa !132
  br label %.thread372

bb.q:                                             ; preds = %bb.m
  %i.id = icmp eq i32 %i.hx, 12
  %i.ie = load i32, ptr %i.c, align 4             ; 13 uses
  %i.if = icmp eq i32 %i.ie, 4
  %or.cond = select i1 %i.id, i1 %i.if, i1 false
  %i.ig = load i32, ptr %i.b, align 4             ; 5 uses
  %i.ih = icmp eq i32 %i.ig, 5
  %or.cond3 = select i1 %or.cond, i1 %i.ih, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ii = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 5)
  %i.ij = fptrunc reassoc nsz arcp contract afn double %i.ii to float
  store float %i.ij, ptr %i.dh, align 4, !tbaa !133
  %i.ik = load i32, ptr %i.b, align 4, !tbaa !87
  %i.il = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ik)
  %i.im = fptrunc reassoc nsz arcp contract afn double %i.il to float
  store float %i.im, ptr %i.dj, align 4, !tbaa !133
  %i.in = load i32, ptr %i.b, align 4, !tbaa !87
  %i.io = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.in)
  %i.ip = fptrunc reassoc nsz arcp contract afn double %i.io to float
  store float %i.ip, ptr %i.dk, align 8, !tbaa !133
  %i.iq = load i32, ptr %i.b, align 4, !tbaa !87
  %i.ir = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.iq)
  %i.is = fptrunc reassoc nsz arcp contract afn double %i.ir to float
  store float %i.is, ptr %i.di, align 8, !tbaa !133
  br label %.thread372

bb.s:                                             ; preds = %bb.q
  switch i32 %i.hx, label %bb.cb [
    i32 17, label %bb.t
    i32 18, label %bb.v
    i32 20, label %bb.x
    i32 27, label %bb.al
    i32 29, label %bb.at
    i32 30, label %bb.bd
    i32 37, label %bb.bi
    i32 34, label %bb.bk
    i32 35, label %.preheader387.preheader
    i32 59, label %bb.bo
    i32 61, label %.preheader389.preheader
    i32 69, label %bb.bp
    i32 81, label %bb.bq
    i32 86, label %sub_0375
    i32 130, label %bb.bt
    i32 131, label %bb.bu
    i32 132, label %bb.bv
    i32 136, label %bb.bw
    i32 139, label %bb.by
    i32 150, label %bb.ca
    i32 140, label %bb.ca
  ]

.preheader389.preheader:                          ; preds = %bb.s
  %i.it = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.iu = zext i16 %i.it to i32
  store i32 %i.iu, ptr %i.ci, align 8, !tbaa !87
  %i.iv = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.iw = zext i16 %i.iv to i32
  store i32 %i.iw, ptr %i.fx, align 4, !tbaa !87
  %i.ix = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.iy = zext i16 %i.ix to i32
  store i32 %i.iy, ptr %i.fy, align 4, !tbaa !87
  %i.iz = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ja = zext i16 %i.iz to i32                   ; 2 uses
  %i.jb = load i32, ptr %i.cj, align 4, !tbaa !87 ; 2 uses
  %i.jc = load i32, ptr %i.ci, align 8, !tbaa !87 ; 2 uses
  %spec.select = call i32 @llvm.umin.i32(i32 %i.jb, i32 %i.jc)
  %i.jd = load i32, ptr %i.fx, align 4, !tbaa !87 ; 2 uses
  %spec.select.1 = call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.jd)
  %spec.select.2 = call i32 @llvm.umin.i32(i32 %spec.select.1, i32 %i.ja) ; 5 uses
  %i.je = sub i32 %i.jc, %spec.select.2
  store i32 %i.je, ptr %i.ci, align 8, !tbaa !87
  %i.jf = sub i32 %i.jd, %spec.select.2
  store i32 %i.jf, ptr %i.fx, align 4, !tbaa !87
  %i.jg = sub nsw i32 %i.ja, %spec.select.2
  store i32 %i.jg, ptr %i.fz, align 8, !tbaa !87
  %i.jh = sub i32 %i.jb, %spec.select.2
  store i32 %i.jh, ptr %i.fy, align 4, !tbaa !87
  %i.ji = load i32, ptr %i.ck, align 8, !tbaa !134
  %i.jj = add i32 %i.ji, %spec.select.2
  store i32 %i.jj, ptr %i.ck, align 8, !tbaa !134
  br label %.thread372

.preheader387.preheader:                          ; preds = %bb.s
  %i.jk = load i32, ptr %i.cp, align 4, !tbaa !135
  %i.jl = mul i32 %i.jk, 10
  %i.jm = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !108
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = call noundef i32 %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jm), !call_target !138
  %i.jr = add i32 %i.jl, -48
  %i.js = add i32 %i.jr, %i.jq                    ; 2 uses
  store i32 %i.js, ptr %i.cp, align 4, !tbaa !135
  %i.jt = mul i32 %i.js, 10
  %i.ju = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !108
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 56
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = call noundef i32 %i.jx(ptr noundef nonnull align 8 dereferenceable(8) %i.ju), !call_target !138
  %i.jz = add i32 %i.jt, -48
  %i.ka = add i32 %i.jz, %i.jy                    ; 2 uses
  store i32 %i.ka, ptr %i.cp, align 4, !tbaa !135
  %i.kb = mul i32 %i.ka, 10
  %i.kc = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !108
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 56
  %i.kf = load ptr, ptr %i.ke, align 8
  %i.kg = call noundef i32 %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.kc), !call_target !138
  %i.kh = add i32 %i.kb, -48
  %i.ki = add i32 %i.kh, %i.kg                    ; 2 uses
  store i32 %i.ki, ptr %i.cp, align 4, !tbaa !135
  %i.kj = mul i32 %i.ki, 10
  %i.kk = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !108
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 56
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = call noundef i32 %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %i.kk), !call_target !138
  %i.kp = add i32 %i.kj, -48
  %i.kq = add i32 %i.kp, %i.ko                    ; 2 uses
  store i32 %i.kq, ptr %i.cp, align 4, !tbaa !135
  %i.kr = add i32 %i.kq, -300
  %or.cond318 = icmp ult i32 %i.kr, 100
  br i1 %or.cond318, label %bb.bl, label %bb.bm

bb.t:                                             ; preds = %bb.s
  %i.ks = load i32, ptr %i.ex, align 8, !tbaa !139
  %.not315 = icmp eq i32 %i.ks, 0
  br i1 %.not315, label %.thread372, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.kt = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.ku = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.kv = zext i32 %i.ku to i64
  %i.kw = add nsw i64 %.0213, %i.kv
  %i.kx = load ptr, ptr %i.kt, align 8, !tbaa !108
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = call noundef i32 %i.kz(ptr noundef nonnull align 8 dereferenceable(8) %i.kt, i64 noundef %i.kw, i32 noundef 0), !call_target !128 ; 0 uses
  %i.lb = call noundef i32 @_ZN6LibRaw14parse_tiff_ifdEx(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %.0213) ; 0 uses
  br label %.thread372

bb.v:                                             ; preds = %bb.s
  %i.lc = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !108
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 56
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = call noundef i32 %i.lf(ptr noundef nonnull align 8 dereferenceable(8) %i.lc), !call_target !138
  %i.lh = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !108
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 56
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = call noundef i32 %i.lk(ptr noundef nonnull align 8 dereferenceable(8) %i.lh), !call_target !138
  %i.lm = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !108
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 56
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = call noundef i32 %i.lp(ptr noundef nonnull align 8 dereferenceable(8) %i.lm), !call_target !138
  %i.lr = trunc i32 %i.lq to i8                   ; 2 uses
  %.not314 = icmp eq i8 %i.lr, 0
  br i1 %.not314, label %.thread372, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ls = and i32 %i.lg, 255
  %i.lt = and i32 %i.ll, 255
  %i.lu = mul nuw nsw i32 %i.lt, %i.ls
  %i.lv = uitofp nneg i32 %i.lu to float
  %i.lw = uitofp reassoc nsz arcp contract afn i8 %i.lr to float
  %i.lx = fdiv reassoc nsz arcp contract afn float %i.lv, %i.lw
  store float %i.lx, ptr %i.ew, align 8, !tbaa !140
  br label %.thread372

bb.x:                                             ; preds = %bb.s
  %i.ly = icmp eq i32 %i.ig, 7
  br i1 %i.ly, label %bb.y, label %.thread372

bb.y:                                             ; preds = %bb.x
  switch i32 %i.ie, label %bb.ac [
    i32 2560, label %bb.z
    i32 1280, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.lz = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !108
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = call noundef i32 %i.mc(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, i64 noundef 1248, i32 noundef 1), !call_target !128 ; 0 uses
  store i16 19789, ptr %i.h, align 8, !tbaa !105
  %i.me = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mf = uitofp reassoc nsz arcp contract afn i16 %i.me to float
  %i.mg = fmul reassoc nsz arcp contract afn float %i.mf, 3.906250e-03
  store float %i.mg, ptr %i.dh, align 4, !tbaa !133
  %i.mh = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mi = uitofp reassoc nsz arcp contract afn i16 %i.mh to float
  %i.mj = fmul reassoc nsz arcp contract afn float %i.mi, 3.906250e-03
  store float %i.mj, ptr %i.dj, align 4, !tbaa !133
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 1.000000e+00, float poison, float 1.000000e+00>, ptr align 8 %i.dk, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !133
  %i.mk = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ml = zext i16 %i.mk to i32
  store i32 %i.ml, ptr %i.dl, align 8, !tbaa !87
  %i.mm = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mn = zext i16 %i.mm to i32
  store i32 %i.mn, ptr %i.dm, align 8, !tbaa !87
  %i.mo = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mp = zext i16 %i.mo to i32
  store i32 %i.mp, ptr %i.dn, align 8, !tbaa !87
  %i.mq = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mr = zext i16 %i.mq to i32
  store i32 %i.mr, ptr %i.do, align 8, !tbaa !87
  %i.ms = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !108
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = call noundef i32 %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, i64 noundef 24, i32 noundef 1), !call_target !128 ; 0 uses
  %i.mx = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.my = zext i16 %i.mx to i32
  store i32 %i.my, ptr %i.dp, align 8, !tbaa !87
  %i.mz = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.na = zext i16 %i.mz to i32
  store i32 %i.na, ptr %i.dq, align 8, !tbaa !87
  %i.nb = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !108
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = call noundef i32 %i.ne(ptr noundef nonnull align 8 dereferenceable(8) %i.nb, i64 noundef 24, i32 noundef 1), !call_target !128 ; 0 uses
  %i.ng = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nh = zext i16 %i.ng to i32
  store i32 %i.nh, ptr %i.dr, align 8, !tbaa !87
  %i.ni = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nj = zext i16 %i.ni to i32
  store i32 %i.nj, ptr %i.ds, align 8, !tbaa !87
  %i.nk = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nl = zext i16 %i.nk to i32
  store i32 %i.nl, ptr %i.dt, align 8, !tbaa !87
  %i.nm = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nn = zext i16 %i.nm to i32
  store i32 %i.nn, ptr %i.du, align 8, !tbaa !87
  %i.no = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.np = zext i16 %i.no to i32
  store i32 %i.np, ptr %i.dv, align 8, !tbaa !87
  %i.nq = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nr = zext i16 %i.nq to i32
  store i32 %i.nr, ptr %i.dw, align 8, !tbaa !87
  %i.ns = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nt = zext i16 %i.ns to i32
  store i32 %i.nt, ptr %i.dx, align 8, !tbaa !87
  %i.nu = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nv = zext i16 %i.nu to i32
  store i32 %i.nv, ptr %i.dy, align 8, !tbaa !87
  %i.nw = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !108
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  %i.nz = load ptr, ptr %i.ny, align 8
  %i.oa = call noundef i32 %i.nz(ptr noundef nonnull align 8 dereferenceable(8) %i.nw, i64 noundef 24, i32 noundef 1), !call_target !128 ; 0 uses
  %i.ob = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.oc = zext i16 %i.ob to i32
  store i32 %i.oc, ptr %i.dz, align 8, !tbaa !87
  %i.od = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.oe = zext i16 %i.od to i32
  store i32 %i.oe, ptr %i.ea, align 8, !tbaa !87
  store i32 256, ptr %i.eb, align 4, !tbaa !87
  store i32 256, ptr %i.ec, align 4, !tbaa !87
  store i32 256, ptr %i.ed, align 4, !tbaa !87
  store i32 256, ptr %i.ee, align 4, !tbaa !87
  store i32 256, ptr %i.ef, align 4, !tbaa !87
  store i32 256, ptr %i.eg, align 4, !tbaa !87
  store i32 256, ptr %i.eh, align 4, !tbaa !87
  store i32 256, ptr %i.ei, align 4, !tbaa !87
  store i32 256, ptr %i.ej, align 4, !tbaa !87
  store i32 256, ptr %i.ek, align 4, !tbaa !87
  store i32 256, ptr %i.el, align 4, !tbaa !87
  store i32 256, ptr %i.em, align 4, !tbaa !87
  store i32 256, ptr %i.en, align 4, !tbaa !87
  store i32 256, ptr %i.eo, align 4, !tbaa !87
  store i32 256, ptr %i.ep, align 4, !tbaa !87
  store i32 256, ptr %i.eq, align 4, !tbaa !87
  %i.of = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.cw, ptr noundef nonnull dereferenceable(6) @.str.4, i64 noundef 5) #12
  %.not313 = icmp eq i32 %i.of, 0
  br i1 %.not313, label %.thread372, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.og = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !108
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = call noundef i32 %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %i.og, i64 noundef 24, i32 noundef 1), !call_target !128 ; 0 uses
  %i.ol = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.om = zext i16 %i.ol to i32
  store i32 %i.om, ptr %i.er, align 8, !tbaa !87
  %i.on = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.oo = zext i16 %i.on to i32
  store i32 %i.oo, ptr %i.es, align 8, !tbaa !87
  store i32 256, ptr %i.et, align 4, !tbaa !87
  store i32 256, ptr %i.eu, align 4, !tbaa !87
  br label %.thread372

bb.ab:                                            ; preds = %bb.y
  store <4 x float> splat (float 1.000000e+00), ptr %i.dh, align 4, !tbaa !133
  br label %.thread372

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.f, i8 0, i64 10, i1 false)
  %i.op = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !108
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = call noundef i32 %i.os(ptr noundef nonnull align 8 dereferenceable(8) %i.op, ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 10), !call_target !124 ; 0 uses
  store i8 0, ptr %i.t, align 1, !tbaa !74
  %i.ou = load i32, ptr %i.f, align 1
  %i.ov = icmp ne i32 %i.ou, 542593614
  %i.ow = zext i1 %i.ov to i32
  %.not309 = icmp eq i32 %i.ow, 0
  br i1 %.not309, label %bb.ad, label %.thread372

bb.ad:                                            ; preds = %bb.ac
  %i.ox = load i32, ptr %i.ev, align 1
  %i.oy = xor i32 %i.ox, 808464688
  %i.oz = getelementptr i8, ptr %i.ev, i64 4
  %i.pa = load i8, ptr %i.oz, align 1
  %i.pb = zext i8 %i.pa to i32
  %i.pc = or i32 %i.oy, %i.pb
  %i.pd = icmp ne i32 %i.pc, 0
  %i.pe = zext i1 %i.pd to i32
  %.not311 = icmp eq i32 %i.pe, 0
  %i.pf = load ptr, ptr %i.g, align 8, !tbaa !106 ; 3 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !108
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 32
  %i.pi = load ptr, ptr %i.ph, align 8            ; 2 uses
  br i1 %.not311, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.pj = call noundef i32 %i.pi(ptr noundef nonnull align 8 dereferenceable(8) %i.pf, i64 noundef 5086, i32 noundef 1), !call_target !128 ; 0 uses
  %i.pk = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.pl = shl i32 %i.pk, 1
  %i.pm = uitofp reassoc nsz arcp contract afn i32 %i.pl to float
  store float %i.pm, ptr %i.dh, align 4, !tbaa !133
  %i.pn = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.po = uitofp reassoc nsz arcp contract afn i32 %i.pn to float
  store float %i.po, ptr %i.dk, align 8, !tbaa !133
  %i.pp = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.pq = uitofp reassoc nsz arcp contract afn i32 %i.pp to float
  store float %i.pq, ptr %i.di, align 8, !tbaa !133
  %i.pr = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ps = shl i32 %i.pr, 1
  %i.pt = uitofp reassoc nsz arcp contract afn i32 %i.ps to float
  store float %i.pt, ptr %i.dj, align 4, !tbaa !133
  call void @_ZN6LibRaw15Nikon_NRW_WBtagEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, i32 noundef 0)
  call void @_ZN6LibRaw15Nikon_NRW_WBtagEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 10, i32 noundef 0)
  %i.pu = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !108
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  %i.px = load ptr, ptr %i.pw, align 8
  %i.py = call noundef i32 %i.px(ptr noundef nonnull align 8 dereferenceable(8) %i.pu, i64 noundef 16, i32 noundef 1), !call_target !128 ; 0 uses
  call void @_ZN6LibRaw15Nikon_NRW_WBtagEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 3, i32 noundef 0)
  call void @_ZN6LibRaw15Nikon_NRW_WBtagEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 14, i32 noundef 0)
  call void @_ZN6LibRaw15Nikon_NRW_WBtagEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, i32 noundef 0)
  %i.pz = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !108
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  %i.qc = load ptr, ptr %i.qb, align 8
  %i.qd = call noundef i32 %i.qc(ptr noundef nonnull align 8 dereferenceable(8) %i.pz, i64 noundef 16, i32 noundef 1), !call_target !128 ; 0 uses
  call void @_ZN6LibRaw15Nikon_NRW_WBtagEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 83, i32 noundef 0)
  call void @_ZN6LibRaw15Nikon_NRW_WBtagEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 82, i32 noundef 0)
  br label %.thread372

bb.af:                                            ; preds = %bb.ad
  %i.qe = call noundef i32 %i.pi(ptr noundef nonnull align 8 dereferenceable(8) %i.pf, i64 noundef 22, i32 noundef 1), !call_target !128 ; 0 uses
  %i.qf = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.qg = zext i16 %i.qf to i32
  store i32 %i.qg, ptr %i.ck, align 8, !tbaa !134
  %i.qh = load float, ptr %i.dh, align 4, !tbaa !133
  %i.qi = fcmp reassoc nsz arcp contract afn olt float %i.qh, 1.000000e-01
  %i.qj = load ptr, ptr %i.g, align 8, !tbaa !106 ; 3 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !108
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  %i.qm = load ptr, ptr %i.ql, align 8            ; 2 uses
  br i1 %i.qi, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.qn = call noundef i32 %i.qm(ptr noundef nonnull align 8 dereferenceable(8) %i.qj, i64 noundef 22, i32 noundef 1), !call_target !128 ; 0 uses
  %i.qo = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.qp = shl i32 %i.qo, 1
  %i.qq = uitofp reassoc nsz arcp contract afn i32 %i.qp to float
  store float %i.qq, ptr %i.dh, align 4, !tbaa !133
  %i.qr = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.qs = uitofp reassoc nsz arcp contract afn i32 %i.qr to float
  store float %i.qs, ptr %i.dk, align 8, !tbaa !133
  %i.qt = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.qu = uitofp reassoc nsz arcp contract afn i32 %i.qt to float
  store float %i.qu, ptr %i.di, align 8, !tbaa !133
  %i.qv = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.qw = shl i32 %i.qv, 1
  %i.qx = uitofp reassoc nsz arcp contract afn i32 %i.qw to float
  store float %i.qx, ptr %i.dj, align 4, !tbaa !133
  br label %bb.ai
end_hunk_1
begin_hunk_2_@_ZN6LibRaw19parseNikonMakernoteExij:bb.a
    i16 2, label %bb.am
    i16 4, label %bb.am
    i16 11, label %bb.an
    i16 12, label %bb.ao
    i16 3, label %bb.ap
    i16 6, label %bb.aq
    i16 17, label %bb.ar
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al
  store i16 1500, ptr %i.df, align 4, !tbaa !147
  br label %.thread372

bb.an:                                            ; preds = %bb.al
  store i16 2, ptr %i.dg, align 8, !tbaa !76
  store i16 1500, ptr %i.df, align 4, !tbaa !147
  br label %.thread372

bb.ao:                                            ; preds = %bb.al
  store i16 1, ptr %i.dg, align 8, !tbaa !76
  store i16 1500, ptr %i.df, align 4, !tbaa !147
  br label %.thread372

bb.ap:                                            ; preds = %bb.al
  store i16 1250, ptr %i.df, align 4, !tbaa !147
  br label %.thread372

bb.aq:                                            ; preds = %bb.al
  store i16 1777, ptr %i.df, align 4, !tbaa !147
  br label %.thread372

bb.ar:                                            ; preds = %bb.al
  store i16 1000, ptr %i.df, align 4, !tbaa !147
  br label %.thread372

bb.as:                                            ; preds = %bb.al
  store i16 1, ptr %i.df, align 4, !tbaa !147
  br label %.thread372

bb.at:                                            ; preds = %bb.s
  %.not299 = icmp eq i32 %i.ie, 0
  br i1 %.not299, label %.thread372, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rs = call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.cw, i64 noundef 63) ; 3 uses
  %i.rt = trunc i64 %i.rs to i32                  ; 2 uses
  %i.ru = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !108
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 56
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = call noundef i32 %i.rx(ptr noundef nonnull align 8 dereferenceable(8) %i.ru), !call_target !138 ; 3 uses
  %.not300399 = icmp eq i32 %i.ry, 0
  br i1 %.not300399, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au
  %.not301.not = icmp eq i32 %.0219438, 0
  br i1 %.not301.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.av
  %i.rz = phi i32 [ %i.sm, %bb.av ], [ %i.ry, %.lr.ph ] ; 3 uses
  %.1223400.us = phi i32 [ %i.sh, %bb.av ], [ %.0222437, %.lr.ph ] ; 2 uses
  %i.sa = load i32, ptr %i.c, align 4, !tbaa !87  ; 2 uses
  %i.sb = add i32 %i.sa, -1
  store i32 %i.sb, ptr %i.c, align 4, !tbaa !87
  %i.sc = icmp ne i32 %i.sa, 0
  %i.sd = icmp ne i32 %i.rz, -1
  %or.cond21.us = and i1 %i.sd, %i.sc
  br i1 %or.cond21.us, label %bb.av, label %.critedge

bb.av:                                            ; preds = %.lr.ph.split.us
  %isdigittmp.us = add i32 %i.rz, -48             ; 2 uses
  %isdigit.us = icmp ult i32 %isdigittmp.us, 10
  %i.se = mul i32 %.1223400.us, 10
  %i.sf = urem i32 %i.rz, 10
  %i.sg = select i1 %isdigit.us, i32 %isdigittmp.us, i32 %i.sf
  %i.sh = add i32 %i.sg, %i.se                    ; 2 uses
  %i.si = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !108
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 56
  %i.sl = load ptr, ptr %i.sk, align 8
  %i.sm = call noundef i32 %i.sl(ptr noundef nonnull align 8 dereferenceable(8) %i.si), !call_target !138 ; 2 uses
  %.not300.us = icmp eq i32 %i.sm, 0
  br i1 %.not300.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !98

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.bb
  %i.sn = phi i32 [ %i.tq, %bb.bb ], [ %i.ry, %.lr.ph ] ; 2 uses
  %.1223400 = phi i32 [ %i.tl, %bb.bb ], [ %.0222437, %.lr.ph ] ; 5 uses
  %i.so = load i32, ptr %i.c, align 4, !tbaa !87  ; 2 uses
  %i.sp = add i32 %i.so, -1
  store i32 %i.sp, ptr %i.c, align 4, !tbaa !87
  %i.sq = icmp ne i32 %i.so, 0
  %i.sr = icmp ne i32 %i.sn, -1
  %or.cond21 = and i1 %i.sr, %i.sq
  br i1 %or.cond21, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %.lr.ph.split
  %isdigittmp = add i32 %i.sn, -48                ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ss = icmp eq i32 %i.rt, 3
  br i1 %i.ss, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.st = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cw, ptr noundef nonnull dereferenceable(4) @.str.7) #12
  %.not302 = icmp eq i32 %i.st, 0
  br i1 %.not302, label %.critedge, label %.thread335

bb.az:                                            ; preds = %bb.ax
  %i.su = icmp sgt i32 %i.rt, 3
  br i1 %i.su, label %bb.ba, label %.thread335

bb.ba:                                            ; preds = %bb.az
  %i.sv = add i64 %i.rs, 4294967292
  %i.sw = and i64 %i.sv, 4294967295
  %i.sx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !74
  %i.sz = sext i8 %i.sy to i32
  %i.ta = call i32 @isalnum(i32 noundef %i.sz) #12
  %.not303 = icmp eq i32 %i.ta, 0
  br i1 %.not303, label %sub_0, label %.thread335

sub_0:                                            ; preds = %bb.ba
  %i.tb = add i64 %i.rs, 4294967293
  %i.tc = and i64 %i.tb, 4294967295
  %i.td = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.tc ; 3 uses
  %i.te = load i8, ptr %i.td, align 1
  %.not449 = icmp eq i8 %i.te, 68
  br i1 %.not449, label %sub_1, label %.thread335

sub_1:                                            ; preds = %sub_0
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 1
  %i.tg = load i8, ptr %i.tf, align 1
  %.not450 = icmp eq i8 %i.tg, 53
  br i1 %.not450, label %.tail, label %.thread335

.tail:                                            ; preds = %sub_1
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 2
  %i.ti = load i8, ptr %i.th, align 1
  %i.tj = icmp eq i8 %i.ti, 48
  br i1 %i.tj, label %.critedge, label %.thread335

.thread335:                                       ; preds = %sub_1, %sub_0, %bb.ay, %.tail, %bb.ba, %bb.az
  br label %.critedge

bb.bb:                                            ; preds = %bb.aw
  %i.tk = mul i32 %.1223400, 10
  %i.tl = add i32 %isdigittmp, %i.tk              ; 2 uses
  %i.tm = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !108
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 56
  %i.tp = load ptr, ptr %i.to, align 8
  %i.tq = call noundef i32 %i.tp(ptr noundef nonnull align 8 dereferenceable(8) %i.tm), !call_target !138 ; 2 uses
  %.not300 = icmp eq i32 %i.tq, 0
  br i1 %.not300, label %.critedge, label %.lr.ph.split, !llvm.loop !98

.critedge:                                        ; preds = %bb.av, %.lr.ph.split.us, %bb.bb, %.lr.ph.split, %bb.au, %bb.ay, %.tail, %.thread335
  %.1223392 = phi i32 [ %.1223400, %.thread335 ], [ %.1223400, %.tail ], [ %.1223400, %bb.ay ], [ %.0222437, %bb.au ], [ %i.tl, %bb.bb ], [ %.1223400, %.lr.ph.split ], [ %.1223400.us, %.lr.ph.split.us ], [ %i.sh, %bb.av ] ; 3 uses
  %.1220 = phi i32 [ 96, %.thread335 ], [ 34, %.tail ], [ 34, %bb.ay ], [ %.0219438, %bb.au ], [ 0, %bb.bb ], [ 0, %.lr.ph.split ], [ %.0219438, %.lr.ph.split.us ], [ %.0219438, %bb.av ] ; 2 uses
  %i.tr = load i8, ptr %i.cx, align 2, !tbaa !74
  %.not305 = icmp eq i8 %i.tr, 0
  br i1 %.not305, label %bb.bc, label %.thread372

bb.bc:                                            ; preds = %.critedge
  %i.ts = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cx, ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.1223392) #11 ; 0 uses
  br label %.thread372

bb.bd:                                            ; preds = %bb.s
  %i.tt = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  switch i16 %i.tt, label %bb.bh [
    i16 1, label %bb.be
    i16 2, label %bb.bf
    i16 4, label %bb.bg
  ]

bb.be:                                            ; preds = %bb.bd
  store i16 1, ptr %i.cv, align 8, !tbaa !148
  br label %.thread372

bb.bf:                                            ; preds = %bb.bd
  store i16 2, ptr %i.cv, align 8, !tbaa !148
  br label %.thread372

bb.bg:                                            ; preds = %bb.bd
  store i16 13, ptr %i.cv, align 8, !tbaa !148
  br label %.thread372

bb.bh:                                            ; preds = %bb.bd
  store i16 255, ptr %i.cv, align 8, !tbaa !148
  br label %.thread372

bb.bi:                                            ; preds = %bb.s
  %i.tu = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !108
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 56
  %i.tx = load ptr, ptr %i.tw, align 8
  %i.ty = call noundef i32 %i.tx(ptr noundef nonnull align 8 dereferenceable(8) %i.tu), !call_target !138
  %i.tz = trunc i32 %i.ty to i8
  %i.ua = uitofp reassoc nsz arcp contract afn i8 %i.tz to float
  %i.ub = fmul reassoc nsz arcp contract afn float %i.ua, f0x3DAAAAAB
  %i.uc = fadd reassoc nsz arcp contract afn float %i.ub, -5.000000e+00 ; 2 uses
  %i.ud = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.uc)
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.ud, 6.400000e+01
  %exp2 = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.uc)
  %i.ue = fmul reassoc nsz arcp contract afn float %exp2, 1.000000e+02
  %i.uf = select i1 %or.cond.i.i, float 0.000000e+00, float %i.ue ; 2 uses
  store float %i.uf, ptr %i.cu, align 8, !tbaa !149
  %i.ug = load float, ptr %i.bk, align 8, !tbaa !131 ; 2 uses
  %i.uh = fcmp reassoc nsz arcp contract afn oeq float %i.ug, 0.000000e+00
  %i.ui = fcmp reassoc nsz arcp contract afn oeq float %i.ug, 6.553500e+04
  %or.cond317 = or i1 %i.uh, %i.ui
  br i1 %or.cond317, label %bb.bj, label %.thread372

bb.bj:                                            ; preds = %bb.bi
  store float %i.uf, ptr %i.bk, align 8, !tbaa !131
  br label %.thread372

bb.bk:                                            ; preds = %bb.s
  %i.uj = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.uj, ptr %i.ct, align 8, !tbaa !150
  br label %.thread372

bb.bl:                                            ; preds = %.preheader387.preheader
  %i.uk = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !108
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 32
  %i.un = load ptr, ptr %i.um, align 8
  %i.uo = call noundef i32 %i.un(ptr noundef nonnull align 8 dereferenceable(8) %i.uk, i64 noundef 4, i32 noundef 1), !call_target !128 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.preheader387.preheader
  %i.up = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.uq = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.cq, i64 noundef 20, ptr noundef %i.up) ; 0 uses
  %i.ur = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.us = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.cr, i64 noundef 20, ptr noundef %i.ur) ; 0 uses
  %i.ut = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.cr, ptr noundef nonnull dereferenceable(14) @.str.9, i64 noundef 13) #12
  %.not298 = icmp eq i32 %i.ut, 0
  br i1 %.not298, label %bb.bn, label %.thread372

bb.bn:                                            ; preds = %bb.bm
  %i.uu = load float, ptr %i.cs, align 4, !tbaa !151
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, -2.000000e+00
  store float %i.uv, ptr %i.cs, align 4, !tbaa !151
  br label %.thread372

bb.bo:                                            ; preds = %bb.s
  %i.uw = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ig)
  store double %i.uw, ptr %i.cl, align 8, !tbaa !152
  %i.ux = load i32, ptr %i.b, align 4, !tbaa !87
  %i.uy = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ux)
  store double %i.uy, ptr %i.cm, align 8, !tbaa !152
  %i.uz = load i32, ptr %i.b, align 4, !tbaa !87
  %i.va = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.uz)
  store double %i.va, ptr %i.cn, align 8, !tbaa !152
  %i.vb = load i32, ptr %i.b, align 4, !tbaa !87
  %i.vc = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.vb)
  store double %i.vc, ptr %i.co, align 8, !tbaa !152
  br label %.thread372

bb.bp:                                            ; preds = %bb.s
  %i.vd = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.vd, ptr %i.ce, align 2, !tbaa !154
  %i.ve = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.ve, ptr %i.cf, align 8, !tbaa !155
  %i.vf = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.vf, ptr %i.cg, align 2, !tbaa !156
  %i.vg = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.vg, ptr %i.ch, align 4, !tbaa !157
  br label %.thread372

bb.bq:                                            ; preds = %bb.s
  %i.vh = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !108
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 32
  %i.vk = load ptr, ptr %i.vj, align 8
  %i.vl = call noundef i32 %i.vk(ptr noundef nonnull align 8 dereferenceable(8) %i.vh, i64 noundef 10, i32 noundef 1), !call_target !128 ; 0 uses
  %i.vm = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.vm, ptr %i.cd, align 8, !tbaa !158
  br label %.thread372

sub_0375:                                         ; preds = %bb.s
  %i.vn = load i8, ptr %i.bw, align 2
  %.not448 = icmp eq i8 %i.vn, 90
  br i1 %.not448, label %.tail374, label %.thread372

.tail374:                                         ; preds = %sub_0375
  %i.vo = load i8, ptr %i.bx, align 1
  %i.vp = icmp eq i8 %i.vo, 32
  br i1 %i.vp, label %bb.br, label %.thread372

bb.br:                                            ; preds = %.tail374
  store i32 %i.ie, ptr %i.by, align 8, !tbaa !159
  %i.vq = icmp eq i32 %i.ie, 16
  br i1 %i.vq, label %bb.bs, label %.thread372

bb.bs:                                            ; preds = %bb.br
  %i.vr = call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef 17, i64 noundef 1) ; 2 uses
  store ptr %i.vr, ptr %i.bz, align 8, !tbaa !160
  %i.vs = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.vt = load i32, ptr %i.by, align 8, !tbaa !159
  %i.vu = zext i32 %i.vt to i64
  %i.vv = load ptr, ptr %i.vs, align 8, !tbaa !108
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  %i.vx = load ptr, ptr %i.vw, align 8
  %i.vy = call noundef i32 %i.vx(ptr noundef nonnull align 8 dereferenceable(8) %i.vs, ptr noundef %i.vr, i64 noundef %i.vu, i64 noundef 1), !call_target !124 ; 0 uses
  %i.vz = load ptr, ptr %i.bz, align 8, !tbaa !160 ; 6 uses
  %.promoted = load i16, ptr %i.ca, align 8, !tbaa !161
  %i.wa = mul i16 %.promoted, 10
  %i.wb = load i8, ptr %i.vz, align 1, !tbaa !74
  %i.wc = zext i8 %i.wb to i16
  %i.wd = add i16 %i.wa, -48
  %i.we = add i16 %i.wd, %i.wc                    ; 2 uses
  store i16 %i.we, ptr %i.ca, align 8, !tbaa !161
  %i.wf = mul i16 %i.we, 10
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vz, i64 1
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !74
  %i.wi = zext i8 %i.wh to i16
  %i.wj = add i16 %i.wf, -48
  %i.wk = add i16 %i.wj, %i.wi                    ; 2 uses
  store i16 %i.wk, ptr %i.ca, align 8, !tbaa !161
  %i.wl = mul i16 %i.wk, 10
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vz, i64 2
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !74
  %i.wo = zext i8 %i.wn to i16
  %i.wp = add i16 %i.wl, -48
  %i.wq = add i16 %i.wp, %i.wo                    ; 2 uses
  store i16 %i.wq, ptr %i.ca, align 8, !tbaa !161
  %i.wr = mul i16 %i.wq, 10
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vz, i64 3
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !74
  %i.wu = zext i8 %i.wt to i16
  %i.wv = add i16 %i.wr, -48
  %i.ww = add i16 %i.wv, %i.wu
  store i16 %i.ww, ptr %i.ca, align 8, !tbaa !161
  %i.wx = getelementptr i8, ptr %i.vz, i64 4
  %i.wy = load i16, ptr %i.wx, align 1
  store i16 %i.wy, ptr %i.cb, align 2, !tbaa !162
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !74
  store i8 %i.xa, ptr %i.cc, align 4, !tbaa !163
  br label %.thread372

bb.bt:                                            ; preds = %bb.s
  %i.xb = call i32 @llvm.umin.i32(i32 %i.ie, i32 128)
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.xe = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.bv, i64 noundef %i.xc, ptr noundef %i.xd) ; 0 uses
  br label %.thread372

bb.bu:                                            ; preds = %bb.s
  %i.xf = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !108
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 56
  %i.xi = load ptr, ptr %i.xh, align 8
  %i.xj = call noundef i32 %i.xi(ptr noundef nonnull align 8 dereferenceable(8) %i.xf), !call_target !138
  %i.xk = trunc i32 %i.xj to i8
  store i8 %i.xk, ptr %i.bu, align 1, !tbaa !73
  br label %.thread372

bb.bv:                                            ; preds = %bb.s
  %i.xl = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ig)
  %i.xm = fptrunc reassoc nsz arcp contract afn double %i.xl to float
  store float %i.xm, ptr %i.bq, align 8, !tbaa !83
  %i.xn = load i32, ptr %i.b, align 4, !tbaa !87
  %i.xo = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.xn)
  %i.xp = fptrunc reassoc nsz arcp contract afn double %i.xo to float
  store float %i.xp, ptr %i.br, align 4, !tbaa !84
  %i.xq = load i32, ptr %i.b, align 4, !tbaa !87
  %i.xr = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.xq)
  %i.xs = fptrunc reassoc nsz arcp contract afn double %i.xr to float
  store float %i.xs, ptr %i.bs, align 8, !tbaa !85
  %i.xt = load i32, ptr %i.b, align 4, !tbaa !87
  %i.xu = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.xt)
  %i.xv = fptrunc reassoc nsz arcp contract afn double %i.xu to float
  store float %i.xv, ptr %i.bt, align 4, !tbaa !86
  br label %.thread372

bb.bw:                                            ; preds = %bb.s
  %i.xw = load i32, ptr %i.bo, align 8, !tbaa !164
  %.not297 = icmp eq i32 %i.xw, 0
  br i1 %.not297, label %bb.bx, label %.thread372

bb.bx:                                            ; preds = %bb.bw
  store i32 136, ptr %i.bp, align 8, !tbaa !166
  %i.xx = load i16, ptr %i.h, align 8, !tbaa !105
  store i16 %i.xx, ptr %i.fv, align 4, !tbaa !167
  store i32 %i.ie, ptr %i.fw, align 4, !tbaa !168
  %i.xy = add i32 %i.ie, 1
  %i.xz = zext i32 %i.xy to i64
  %i.ya = call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.xz, i64 noundef 1) ; 2 uses
  %i.yb = load i32, ptr %i.bo, align 8, !tbaa !164
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds [24 x i8], ptr %i.bp, i64 %i.yc ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  store ptr %i.ya, ptr %i.ye, align 8, !tbaa !169
  %i.yf = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 12
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !168
  %i.yi = zext i32 %i.yh to i64
  %i.yj = load ptr, ptr %i.yf, align 8, !tbaa !108
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 24
  %i.yl = load ptr, ptr %i.yk, align 8
  %i.ym = call noundef i32 %i.yl(ptr noundef nonnull align 8 dereferenceable(8) %i.yf, ptr noundef %i.ya, i64 noundef %i.yi, i64 noundef 1), !call_target !124 ; 0 uses
  store i32 1, ptr %i.bo, align 8, !tbaa !164
  br label %.thread372

bb.by:                                            ; preds = %bb.s
  %i.yn = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !108
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 56
  %i.yq = load ptr, ptr %i.yp, align 8
  %i.yr = call noundef i32 %i.yq(ptr noundef nonnull align 8 dereferenceable(8) %i.yn), !call_target !138
  %i.ys = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !108
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 56
  %i.yv = load ptr, ptr %i.yu, align 8
  %i.yw = call noundef i32 %i.yv(ptr noundef nonnull align 8 dereferenceable(8) %i.ys), !call_target !138
  %i.yx = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !108
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 56
  %i.za = load ptr, ptr %i.yz, align 8
  %i.zb = call noundef i32 %i.za(ptr noundef nonnull align 8 dereferenceable(8) %i.yx), !call_target !138 ; 2 uses
  %i.zc = and i32 %i.zb, 255
  %.not296 = icmp eq i32 %i.zc, 0
  br i1 %.not296, label %.thread372, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.zd = mul i32 %i.yw, %i.yr
  %.rhs.trunc = trunc i32 %i.zb to i8
  %i.ze = udiv i8 12, %.rhs.trunc
  %i.zf = trunc i32 %i.zd to i8
  %i.zg = mul i8 %i.ze, %i.zf                     ; 2 uses
  store i8 %i.zg, ptr %i.bm, align 1, !tbaa !81
  %i.zh = uitofp reassoc nsz arcp contract afn i8 %i.zg to float
  %i.zi = fmul reassoc nsz arcp contract afn float %i.zh, f0x3DAAAAAB
  store float %i.zi, ptr %i.bn, align 8, !tbaa !82
  br label %.thread372

bb.ca:                                            ; preds = %bb.s, %bb.s
  %i.zj = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !108
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 40
  %i.zm = load ptr, ptr %i.zl, align 8
  %i.zn = call noundef i64 %i.zm(ptr noundef nonnull align 8 dereferenceable(8) %i.zj), !call_target !125
  store i64 %i.zn, ptr %i.bl, align 8, !tbaa !170
  br label %.thread372

bb.cb:                                            ; preds = %bb.s
  %i.zo = icmp eq i32 %i.hx, 145
  %i.zp = icmp ugt i32 %i.ie, 4                   ; 2 uses
  %or.cond7 = select i1 %i.zo, i1 %i.zp, i1 false
  br i1 %or.cond7, label %.thread372.loopexit, label %bb.cc

.thread372.loopexit:                              ; preds = %bb.cb
  %i.zq = add i32 %i.ie, 1
  %i.zr = zext i32 %i.zq to i64
  %i.zs = call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.zr, i64 noundef 1) ; 6 uses
  %i.zt = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.zu = zext i32 %i.ie to i64
  %i.zv = load ptr, ptr %i.zt, align 8, !tbaa !108
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 24
  %i.zx = load ptr, ptr %i.zw, align 8
  %i.zy = call noundef i32 %i.zx(ptr noundef nonnull align 8 dereferenceable(8) %i.zt, ptr noundef %i.zs, i64 noundef %i.zu, i64 noundef 1), !call_target !124 ; 0 uses
  %.promoted430 = load i32, ptr %i.fi, align 8, !tbaa !171
  %i.zz = mul i32 %.promoted430, 10
  %i.aaa = load i8, ptr %i.zs, align 1, !tbaa !74
  %i.aab = zext i8 %i.aaa to i32
  %i.aac = add i32 %i.zz, -48
  %i.aad = add i32 %i.aac, %i.aab                 ; 2 uses
  store i32 %i.aad, ptr %i.fi, align 8, !tbaa !171
  %i.aae = mul i32 %i.aad, 10
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zs, i64 1
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !74
  %i.aah = zext i8 %i.aag to i32
  %i.aai = add i32 %i.aae, -48
  %i.aaj = add i32 %i.aai, %i.aah                 ; 2 uses
  store i32 %i.aaj, ptr %i.fi, align 8, !tbaa !171
  %i.aak = mul i32 %i.aaj, 10
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zs, i64 2
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !74
  %i.aan = zext i8 %i.aam to i32
  %i.aao = add i32 %i.aak, -48
  %i.aap = add i32 %i.aao, %i.aan                 ; 2 uses
  store i32 %i.aap, ptr %i.fi, align 8, !tbaa !171
  %i.aaq = mul i32 %i.aap, 10
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zs, i64 3
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !74
  %i.aat = zext i8 %i.aas to i32
  %i.aau = add i32 %i.aaq, -48
  %i.aav = add i32 %i.aau, %i.aat
  store i32 %i.aav, ptr %i.fi, align 8, !tbaa !171
  br label %.thread372

bb.cc:                                            ; preds = %bb.cb
  switch i32 %i.hx, label %bb.eq [
    i32 147, label %bb.cd
    i32 151, label %.preheader382.preheader
    i32 152, label %.preheader383.preheader
    i32 160, label %bb.cy
    i32 167, label %bb.cz
    i32 168, label %.preheader385.preheader
    i32 176, label %bb.em
    i32 183, label %bb.en
    i32 185, label %bb.ep
  ]

.preheader385.preheader:                          ; preds = %bb.cc
  %i.aaw = load i32, ptr %i.fe, align 8, !tbaa !172
  %i.aax = mul i32 %i.aaw, 10
  %i.aay = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !108
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 56
  %i.abb = load ptr, ptr %i.aba, align 8
  %i.abc = call noundef i32 %i.abb(ptr noundef nonnull align 8 dereferenceable(8) %i.aay), !call_target !138
  %i.abd = add i32 %i.aax, -48
  %i.abe = add i32 %i.abd, %i.abc                 ; 2 uses
  store i32 %i.abe, ptr %i.fe, align 8, !tbaa !172
  %i.abf = mul i32 %i.abe, 10
  %i.abg = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !108
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 56
  %i.abj = load ptr, ptr %i.abi, align 8
  %i.abk = call noundef i32 %i.abj(ptr noundef nonnull align 8 dereferenceable(8) %i.abg), !call_target !138
  %i.abl = add i32 %i.abf, -48
  %i.abm = add i32 %i.abl, %i.abk                 ; 2 uses
  store i32 %i.abm, ptr %i.fe, align 8, !tbaa !172
  %i.abn = mul i32 %i.abm, 10
  %i.abo = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !108
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 56
  %i.abr = load ptr, ptr %i.abq, align 8
  %i.abs = call noundef i32 %i.abr(ptr noundef nonnull align 8 dereferenceable(8) %i.abo), !call_target !138
  %i.abt = add i32 %i.abn, -48
  %i.abu = add i32 %i.abt, %i.abs                 ; 2 uses
  store i32 %i.abu, ptr %i.fe, align 8, !tbaa !172
  %i.abv = mul i32 %i.abu, 10
  %i.abw = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !108
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 56
  %i.abz = load ptr, ptr %i.aby, align 8
  %i.aca = call noundef i32 %i.abz(ptr noundef nonnull align 8 dereferenceable(8) %i.abw), !call_target !138
  %i.acb = add i32 %i.abv, -48
  %i.acc = add i32 %i.acb, %i.aca
  store i32 %i.acc, ptr %i.fe, align 8, !tbaa !172
  br label %.thread372

.preheader383.preheader:                          ; preds = %bb.cc
  %i.acd = load i32, ptr %i.fh, align 4, !tbaa !173
  %i.ace = mul i32 %i.acd, 10
  %i.acf = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !108
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 56
  %i.aci = load ptr, ptr %i.ach, align 8
  %i.acj = call noundef i32 %i.aci(ptr noundef nonnull align 8 dereferenceable(8) %i.acf), !call_target !138
  %i.ack = add i32 %i.ace, -48
  %i.acl = add i32 %i.ack, %i.acj                 ; 2 uses
  store i32 %i.acl, ptr %i.fh, align 4, !tbaa !173
  %i.acm = mul i32 %i.acl, 10
  %i.acn = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !108
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 56
  %i.acq = load ptr, ptr %i.acp, align 8
  %i.acr = call noundef i32 %i.acq(ptr noundef nonnull align 8 dereferenceable(8) %i.acn), !call_target !138
  %i.acs = add i32 %i.acm, -48
  %i.act = add i32 %i.acs, %i.acr                 ; 2 uses
  store i32 %i.act, ptr %i.fh, align 4, !tbaa !173
  %i.acu = mul i32 %i.act, 10
  %i.acv = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !108
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 56
  %i.acy = load ptr, ptr %i.acx, align 8
  %i.acz = call noundef i32 %i.acy(ptr noundef nonnull align 8 dereferenceable(8) %i.acv), !call_target !138
  %i.ada = add i32 %i.acu, -48
  %i.adb = add i32 %i.ada, %i.acz                 ; 2 uses
  store i32 %i.adb, ptr %i.fh, align 4, !tbaa !173
  %i.adc = mul i32 %i.adb, 10
  %i.add = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !108
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 56
  %i.adg = load ptr, ptr %i.adf, align 8
  %i.adh = call noundef i32 %i.adg(ptr noundef nonnull align 8 dereferenceable(8) %i.add), !call_target !138
  %i.adi = add i32 %i.adc, -48
  %i.adj = add i32 %i.adi, %i.adh                 ; 2 uses
  store i32 %i.adj, ptr %i.fh, align 4, !tbaa !173
  switch i32 %i.adj, label %bb.cx [
    i32 100, label %.thread340
    i32 101, label %bb.cp
    i32 201, label %bb.cp
    i32 202, label %bb.cp
    i32 203, label %bb.cp
    i32 204, label %bb.cq
    i32 400, label %bb.cr
    i32 401, label %bb.cs
    i32 402, label %bb.ct
    i32 403, label %bb.cu
    i32 800, label %bb.cv
    i32 801, label %bb.cv
    i32 802, label %bb.cw
  ]

.preheader382.preheader:                          ; preds = %bb.cc
  %i.adk = load i32, ptr %i.fg, align 4, !tbaa !174
  %i.adl = mul i32 %i.adk, 10
  %i.adm = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !108
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 56
  %i.adp = load ptr, ptr %i.ado, align 8
  %i.adq = call noundef i32 %i.adp(ptr noundef nonnull align 8 dereferenceable(8) %i.adm), !call_target !138
  %i.adr = add i32 %i.adl, -48
  %i.ads = add i32 %i.adr, %i.adq                 ; 2 uses
  store i32 %i.ads, ptr %i.fg, align 4, !tbaa !174
  %i.adt = mul i32 %i.ads, 10
  %i.adu = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !108
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 56
  %i.adx = load ptr, ptr %i.adw, align 8
  %i.ady = call noundef i32 %i.adx(ptr noundef nonnull align 8 dereferenceable(8) %i.adu), !call_target !138
  %i.adz = add i32 %i.adt, -48
  %i.aea = add i32 %i.adz, %i.ady                 ; 2 uses
  store i32 %i.aea, ptr %i.fg, align 4, !tbaa !174
  %i.aeb = mul i32 %i.aea, 10
  %i.aec = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !108
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 56
  %i.aef = load ptr, ptr %i.aee, align 8
  %i.aeg = call noundef i32 %i.aef(ptr noundef nonnull align 8 dereferenceable(8) %i.aec), !call_target !138
  %i.aeh = add i32 %i.aeb, -48
  %i.aei = add i32 %i.aeh, %i.aeg                 ; 2 uses
  store i32 %i.aei, ptr %i.fg, align 4, !tbaa !174
  %i.aej = mul i32 %i.aei, 10
  %i.aek = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !108
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 56
  %i.aen = load ptr, ptr %i.aem, align 8
  %i.aeo = call noundef i32 %i.aen(ptr noundef nonnull align 8 dereferenceable(8) %i.aek), !call_target !138
end_hunk_2
begin_hunk_3_@_ZN6LibRaw19parseNikonMakernoteExij:bb.a
  %i.avk = add nuw nsw i32 %i.avm, 1
  %exitcond484 = icmp eq i32 %i.avm, 1025
  br i1 %exitcond484, label %bb.eu, label %.lr.ph429.preheader, !llvm.loop !104

bb.eu:                                            ; preds = %.lr.ph429
  %i.avl = call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 5, ptr %i.avl, align 16, !tbaa !192
  call void @__cxa_throw(ptr nonnull %i.avl, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
  unreachable

.lr.ph429.preheader:                              ; preds = %bb.et, %.lr.ph429
  %i.avm = phi i32 [ %i.avk, %.lr.ph429 ], [ 1, %bb.et ] ; 2 uses
  %.0258425523 = phi i32 [ %i.awx, %.lr.ph429 ], [ 22, %bb.et ]
  %.0427522 = phi i32 [ %.1, %.lr.ph429 ], [ 0, %bb.et ] ; 4 uses
  %i.avn = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.avn, ptr %i.a, align 4, !tbaa !87
  %i.avo = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.avp = load ptr, ptr %i.avo, align 8, !tbaa !108
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 32
  %i.avr = load ptr, ptr %i.avq, align 8
  %i.avs = call noundef i32 %i.avr(ptr noundef nonnull align 8 dereferenceable(8) %i.avo, i64 noundef 14, i32 noundef 1), !call_target !128 ; 0 uses
  %i.avt = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.avu = add i32 %i.avt, -4                     ; 5 uses
  %i.avv = load i32, ptr %i.a, align 4, !tbaa !87
  switch i32 %i.avv, label %bb.fc [
    i32 1990472196, label %bb.ev
    i32 -1086559200, label %bb.ew
    i32 1990472199, label %bb.fb
  ]

bb.ev:                                            ; preds = %.lr.ph429.preheader
  %i.avw = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !108
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 56
  %i.avz = load ptr, ptr %i.avy, align 8
  %i.awa = call noundef i32 %i.avz(ptr noundef nonnull align 8 dereferenceable(8) %i.avw), !call_target !138
  br label %bb.fd

bb.ew:                                            ; preds = %.lr.ph429.preheader
  %.not288 = icmp eq i32 %.0427522, 0
  br i1 %.not288, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.awb = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 12) ; 2 uses
  %i.awc = bitcast double %i.awb to i64
  switch i64 %i.awc, label %bb.ey [
    i64 4607182418800017408, label %bb.ez
    i64 61503, label %bb.ez
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.awd = fptrunc reassoc nsz arcp contract afn double %i.awb to float
  store float %i.awd, ptr %i.dh, align 4, !tbaa !133
  %i.awe = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 12)
  %i.awf = fptrunc reassoc nsz arcp contract afn double %i.awe to float
  store float %i.awf, ptr %i.dj, align 4, !tbaa !133
  store float 1.000000e+00, ptr %i.di, align 8, !tbaa !133
  store float 1.000000e+00, ptr %i.dk, align 8, !tbaa !133
  %i.awg = add i32 %i.avt, -20
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex, %bb.ex
  %i.awh = add i32 %i.avt, -12
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ey, %bb.ez, %bb.ew
  %.6 = phi i32 [ %i.avu, %bb.ew ], [ %i.awg, %bb.ey ], [ %i.awh, %bb.ez ] ; 2 uses
  %i.awi = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.awj = zext i32 %.6 to i64
  %i.awk = load ptr, ptr %i.awi, align 8, !tbaa !108
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 32
  %i.awm = load ptr, ptr %i.awl, align 8
  %i.awn = call noundef i32 %i.awm(ptr noundef nonnull align 8 dereferenceable(8) %i.awi, i64 noundef %i.awj, i32 noundef 1), !call_target !128 ; 0 uses
  br label %bb.fd

bb.fb:                                            ; preds = %.lr.ph429.preheader
  %i.awo = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.awp = zext i16 %i.awo to i32
  store i32 %i.awp, ptr %i.fs, align 8, !tbaa !193
  br label %bb.fd

bb.fc:                                            ; preds = %.lr.ph429.preheader
  %i.awq = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.awr = zext i32 %i.avu to i64
  %i.aws = load ptr, ptr %i.awq, align 8, !tbaa !108
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 32
  %i.awu = load ptr, ptr %i.awt, align 8
  %i.awv = call noundef i32 %i.awu(ptr noundef nonnull align 8 dereferenceable(8) %i.awq, i64 noundef %i.awr, i32 noundef 1), !call_target !128 ; 0 uses
  br label %bb.fd

bb.fd:                                            ; preds = %bb.ev, %bb.fb, %bb.fc, %bb.fa
  %.7 = phi i32 [ %i.avu, %bb.ev ], [ %.6, %bb.fa ], [ %i.avu, %bb.fb ], [ %i.avu, %bb.fc ]
  %.1 = phi i32 [ %i.awa, %bb.ev ], [ %.0427522, %bb.fa ], [ %.0427522, %bb.fb ], [ %.0427522, %bb.fc ]
  %i.aww = add i32 %.0258425523, 22
  %i.awx = add i32 %i.aww, %.7                    ; 2 uses
  %i.awy = add i32 %i.awx, 22
  %i.awz = load i32, ptr %i.c, align 4, !tbaa !87
  %i.axa = icmp ult i32 %i.awy, %i.awz
  br i1 %i.axa, label %.lr.ph429, label %.thread372, !llvm.loop !104

.thread372:                                       ; preds = %bb.fd, %bb.j, %bb.p, %bb.u, %bb.t, %bb.aa, %bb.z, %bb.ac, %bb.aj, %bb.ak, %bb.ae, %bb.ab, %bb.x, %bb.at, %bb.bj, %bb.bn, %bb.bm, %.preheader389.preheader, %bb.bq, %bb.bt, %bb.bv, %bb.cm, %bb.co, %bb.cn, %bb.ck, %bb.cy, %bb.eo, %bb.en, %bb.er, %bb.ep, %bb.em, %bb.dd, %bb.de, %_Z11sget4_ordersPh.exit.thread.thread, %bb.cx, %.thread340, %bb.ce, %bb.ca, %bb.bw, %bb.bx, %bb.bu, %bb.br, %bb.bs, %bb.bp, %bb.bo, %bb.bk, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.r, %bb.n, %bb.o, %bb.w, %bb.v, %bb.bc, %.critedge, %bb.bi, %bb.bz, %bb.by, %bb.cd, %bb.es, %.tail374, %bb.et, %.thread372.loopexit, %.preheader.preheader, %.preheader385.preheader, %sub_0375, %bb.i
  %.4 = phi i32 [ %.0240433, %bb.i ], [ %.0240433, %bb.j ], [ %.0240433, %bb.n ], [ %.0240433, %bb.o ], [ %.0240433, %bb.p ], [ %.0240433, %bb.r ], [ %.0240433, %bb.u ], [ %.0240433, %bb.t ], [ %.0240433, %bb.br ], [ %.0240433, %bb.aa ], [ %.0240433, %bb.z ], [ %.0240433, %bb.ab ], [ %.0240433, %bb.ac ], [ %.0240433, %bb.aj ], [ %.0240433, %bb.ak ], [ %.0240433, %bb.ae ], [ %.0240433, %bb.x ], [ %.0240433, %bb.as ], [ %.0240433, %bb.am ], [ %.0240433, %bb.an ], [ %.0240433, %bb.ao ], [ %.0240433, %bb.ap ], [ %.0240433, %bb.aq ], [ %.0240433, %bb.ar ], [ %.0240433, %bb.v ], [ %.0240433, %bb.at ], [ %.0240433, %bb.bh ], [ %.0240433, %bb.be ], [ %.0240433, %bb.bf ], [ %.0240433, %bb.bg ], [ %.0240433, %bb.bj ], [ %.0240433, %bb.bi ], [ %.0240433, %bb.bk ], [ %.0240433, %bb.bm ], [ %.0240433, %bb.bn ], [ %.0240433, %bb.bo ], [ %.0240433, %.preheader389.preheader ], [ %.0240433, %bb.bp ], [ %.0240433, %bb.bq ], [ %.0240433, %bb.bt ], [ %.0240433, %bb.bu ], [ %.0240433, %bb.bv ], [ %.0240433, %bb.bw ], [ %.0240433, %bb.bx ], [ %.0240433, %.critedge ], [ %.0240433, %bb.ca ], [ %.0240433, %.tail374 ], [ %.0240433, %bb.ce ], [ %.0240433, %bb.cd ], [ %.0240433, %bb.ck ], [ %.0240433, %bb.cm ], [ %.0240433, %bb.co ], [ %.0240433, %bb.cn ], [ %.1241343, %.thread340 ], [ 0, %bb.cx ], [ %.0240433, %bb.cy ], [ 0, %_Z11sget4_ordersPh.exit.thread.thread ], [ 0, %bb.de ], [ 0, %bb.dd ], [ %.0240433, %bb.et ], [ %.0240433, %bb.em ], [ %.0240433, %bb.eo ], [ %.0240433, %bb.en ], [ %.0240433, %bb.ep ], [ %.0240433, %bb.er ], [ %.0240433, %bb.by ], [ %.0240433, %.preheader.preheader ], [ %.0240433, %bb.es ], [ %.0240433, %bb.bs ], [ %.0240433, %bb.w ], [ %.0240433, %bb.bc ], [ %.0240433, %bb.bz ], [ %.0240433, %sub_0375 ], [ %.0240433, %.thread372.loopexit ], [ %.0240433, %.preheader385.preheader ], [ %.0240433, %bb.fd ]
  %.2239 = phi ptr [ %.0237435, %bb.i ], [ %.0237435, %bb.j ], [ %.0237435, %bb.n ], [ %.0237435, %bb.o ], [ %.0237435, %bb.p ], [ %.0237435, %bb.r ], [ %.0237435, %bb.u ], [ %.0237435, %bb.t ], [ %.0237435, %bb.br ], [ %.0237435, %bb.aa ], [ %.0237435, %bb.z ], [ %.0237435, %bb.ab ], [ %.0237435, %bb.ac ], [ %.0237435, %bb.aj ], [ %.0237435, %bb.ak ], [ %.0237435, %bb.ae ], [ %.0237435, %bb.x ], [ %.0237435, %bb.as ], [ %.0237435, %bb.am ], [ %.0237435, %bb.an ], [ %.0237435, %bb.ao ], [ %.0237435, %bb.ap ], [ %.0237435, %bb.aq ], [ %.0237435, %bb.ar ], [ %.0237435, %bb.v ], [ %.0237435, %bb.at ], [ %.0237435, %bb.bh ], [ %.0237435, %bb.be ], [ %.0237435, %bb.bf ], [ %.0237435, %bb.bg ], [ %.0237435, %bb.bj ], [ %.0237435, %bb.bi ], [ %.0237435, %bb.bk ], [ %.0237435, %bb.bm ], [ %.0237435, %bb.bn ], [ %.0237435, %bb.bo ], [ %.0237435, %.preheader389.preheader ], [ %.0237435, %bb.bp ], [ %.0237435, %bb.bq ], [ %.0237435, %bb.bt ], [ %.0237435, %bb.bu ], [ %.0237435, %bb.bv ], [ %.0237435, %bb.bw ], [ %.0237435, %bb.bx ], [ %.0237435, %.critedge ], [ %.0237435, %bb.ca ], [ %.0237435, %.tail374 ], [ %.0237435, %bb.ce ], [ %.0237435, %bb.cd ], [ %.0237435, %bb.ck ], [ %.0237435, %bb.cm ], [ %.0237435, %bb.co ], [ %.0237435, %bb.cn ], [ %i.agz, %.thread340 ], [ %.0237435, %bb.cx ], [ %.0237435, %bb.cy ], [ %.0237435, %_Z11sget4_ordersPh.exit.thread.thread ], [ %.0237435, %bb.de ], [ %.0237435, %bb.dd ], [ %.0237435, %bb.et ], [ %.0237435, %bb.em ], [ %.0237435, %bb.eo ], [ %.0237435, %bb.en ], [ %.0237435, %bb.ep ], [ %.0237435, %bb.er ], [ %.0237435, %bb.by ], [ %.0237435, %.preheader.preheader ], [ %.0237435, %bb.es ], [ %.0237435, %bb.bs ], [ %.0237435, %bb.w ], [ %.0237435, %bb.bc ], [ %.0237435, %bb.bz ], [ %.0237435, %sub_0375 ], [ %.0237435, %.thread372.loopexit ], [ %.0237435, %.preheader385.preheader ], [ %.0237435, %bb.fd ]
  %.3236 = phi i32 [ %.0233436, %bb.i ], [ %.0233436, %bb.j ], [ %.0233436, %bb.n ], [ %.0233436, %bb.o ], [ %.0233436, %bb.p ], [ %.0233436, %bb.r ], [ %.0233436, %bb.u ], [ %.0233436, %bb.t ], [ %.0233436, %bb.br ], [ %.0233436, %bb.aa ], [ %.0233436, %bb.z ], [ %.0233436, %bb.ab ], [ %.0233436, %bb.ac ], [ %.0233436, %bb.aj ], [ %.0233436, %bb.ak ], [ %.0233436, %bb.ae ], [ %.0233436, %bb.x ], [ %.0233436, %bb.as ], [ %.0233436, %bb.am ], [ %.0233436, %bb.an ], [ %.0233436, %bb.ao ], [ %.0233436, %bb.ap ], [ %.0233436, %bb.aq ], [ %.0233436, %bb.ar ], [ %.0233436, %bb.v ], [ %.0233436, %bb.at ], [ %.0233436, %bb.bh ], [ %.0233436, %bb.be ], [ %.0233436, %bb.bf ], [ %.0233436, %bb.bg ], [ %.0233436, %bb.bj ], [ %.0233436, %bb.bi ], [ %.0233436, %bb.bk ], [ %.0233436, %bb.bm ], [ %.0233436, %bb.bn ], [ %.0233436, %bb.bo ], [ %.0233436, %.preheader389.preheader ], [ %.0233436, %bb.bp ], [ %.0233436, %bb.bq ], [ %.0233436, %bb.bt ], [ %.0233436, %bb.bu ], [ %.0233436, %bb.bv ], [ %.0233436, %bb.bw ], [ %.0233436, %bb.bx ], [ %.0233436, %.critedge ], [ %.0233436, %bb.ca ], [ %.0233436, %.tail374 ], [ %.0233436, %bb.ce ], [ %.0233436, %bb.cd ], [ %.1234, %bb.ck ], [ %.1234, %bb.cm ], [ %.1234, %bb.co ], [ %.1234, %bb.cn ], [ %.0233436, %.thread340 ], [ %.0233436, %bb.cx ], [ %.0233436, %bb.cy ], [ %.0233436, %_Z11sget4_ordersPh.exit.thread.thread ], [ %.0233436, %bb.de ], [ %.0233436, %bb.dd ], [ %.0233436, %bb.et ], [ %.0233436, %bb.em ], [ %.0233436, %bb.eo ], [ %.0233436, %bb.en ], [ %.0233436, %bb.ep ], [ %.0233436, %bb.er ], [ %.0233436, %bb.by ], [ %.0233436, %.preheader.preheader ], [ %.0233436, %bb.es ], [ %.0233436, %bb.bs ], [ %.0233436, %bb.w ], [ %.0233436, %bb.bc ], [ %.0233436, %bb.bz ], [ %.0233436, %sub_0375 ], [ %.0233436, %.thread372.loopexit ], [ %.0233436, %.preheader385.preheader ], [ %.0233436, %bb.fd ]
  %.3225 = phi i32 [ %.0222437, %bb.i ], [ %.0222437, %bb.j ], [ %.0222437, %bb.n ], [ %.0222437, %bb.o ], [ %.0222437, %bb.p ], [ %.0222437, %bb.r ], [ %.0222437, %bb.u ], [ %.0222437, %bb.t ], [ %.0222437, %bb.br ], [ %.0222437, %bb.aa ], [ %.0222437, %bb.z ], [ %.0222437, %bb.ab ], [ %.0222437, %bb.ac ], [ %.0222437, %bb.aj ], [ %.0222437, %bb.ak ], [ %.0222437, %bb.ae ], [ %.0222437, %bb.x ], [ %.0222437, %bb.as ], [ %.0222437, %bb.am ], [ %.0222437, %bb.an ], [ %.0222437, %bb.ao ], [ %.0222437, %bb.ap ], [ %.0222437, %bb.aq ], [ %.0222437, %bb.ar ], [ %.0222437, %bb.v ], [ %.0222437, %bb.at ], [ %.0222437, %bb.bh ], [ %.0222437, %bb.be ], [ %.0222437, %bb.bf ], [ %.0222437, %bb.bg ], [ %.0222437, %bb.bj ], [ %.0222437, %bb.bi ], [ %.0222437, %bb.bk ], [ %.0222437, %bb.bm ], [ %.0222437, %bb.bn ], [ %.0222437, %bb.bo ], [ %.0222437, %.preheader389.preheader ], [ %.0222437, %bb.bp ], [ %.0222437, %bb.bq ], [ %.0222437, %bb.bt ], [ %.0222437, %bb.bu ], [ %.0222437, %bb.bv ], [ %.0222437, %bb.bw ], [ %.0222437, %bb.bx ], [ %.1223392, %.critedge ], [ %.0222437, %bb.ca ], [ %.0222437, %.tail374 ], [ %.0222437, %bb.ce ], [ %.0222437, %bb.cd ], [ %.0222437, %bb.ck ], [ %.0222437, %bb.cm ], [ %.0222437, %bb.co ], [ %.0222437, %bb.cn ], [ %.0222437, %.thread340 ], [ %.0222437, %bb.cx ], [ %.0222437, %bb.cy ], [ %.0222437, %_Z11sget4_ordersPh.exit.thread.thread ], [ %.0222437, %bb.de ], [ %.0222437, %bb.dd ], [ %.0222437, %bb.et ], [ %.0222437, %bb.em ], [ %.0222437, %bb.eo ], [ %.0222437, %bb.en ], [ %.0222437, %bb.ep ], [ %.0222437, %bb.er ], [ %.0222437, %bb.by ], [ %.0222437, %.preheader.preheader ], [ %.0222437, %bb.es ], [ %.0222437, %bb.bs ], [ %.0222437, %bb.w ], [ %.1223392, %bb.bc ], [ %.0222437, %bb.bz ], [ %.0222437, %sub_0375 ], [ %.0222437, %.thread372.loopexit ], [ %.0222437, %.preheader385.preheader ], [ %.0222437, %bb.fd ]
  %.3 = phi i32 [ %.0219438, %bb.i ], [ %.0219438, %bb.j ], [ %.0219438, %bb.n ], [ %.0219438, %bb.o ], [ %.0219438, %bb.p ], [ %.0219438, %bb.r ], [ %.0219438, %bb.u ], [ %.0219438, %bb.t ], [ %.0219438, %bb.br ], [ %.0219438, %bb.aa ], [ %.0219438, %bb.z ], [ %.0219438, %bb.ab ], [ %.0219438, %bb.ac ], [ %.0219438, %bb.aj ], [ %.0219438, %bb.ak ], [ %.0219438, %bb.ae ], [ %.0219438, %bb.x ], [ %.0219438, %bb.as ], [ %.0219438, %bb.am ], [ %.0219438, %bb.an ], [ %.0219438, %bb.ao ], [ %.0219438, %bb.ap ], [ %.0219438, %bb.aq ], [ %.0219438, %bb.ar ], [ %.0219438, %bb.v ], [ %.0219438, %bb.at ], [ %.0219438, %bb.bh ], [ %.0219438, %bb.be ], [ %.0219438, %bb.bf ], [ %.0219438, %bb.bg ], [ %.0219438, %bb.bj ], [ %.0219438, %bb.bi ], [ %.0219438, %bb.bk ], [ %.0219438, %bb.bm ], [ %.0219438, %bb.bn ], [ %.0219438, %bb.bo ], [ %.0219438, %.preheader389.preheader ], [ %.0219438, %bb.bp ], [ %.0219438, %bb.bq ], [ %.0219438, %bb.bt ], [ %.0219438, %bb.bu ], [ %.0219438, %bb.bv ], [ %.0219438, %bb.bw ], [ %.0219438, %bb.bx ], [ %.1220, %.critedge ], [ %.0219438, %bb.ca ], [ %.0219438, %.tail374 ], [ %.0219438, %bb.ce ], [ %.0219438, %bb.cd ], [ %.0219438, %bb.ck ], [ %.0219438, %bb.cm ], [ %.0219438, %bb.co ], [ %.0219438, %bb.cn ], [ %.0219438, %.thread340 ], [ %.0219438, %bb.cx ], [ %.0219438, %bb.cy ], [ %.0219438, %_Z11sget4_ordersPh.exit.thread.thread ], [ %.0219438, %bb.de ], [ %.0219438, %bb.dd ], [ %.0219438, %bb.et ], [ %.0219438, %bb.em ], [ %.0219438, %bb.eo ], [ %.0219438, %bb.en ], [ %.0219438, %bb.ep ], [ %.0219438, %bb.er ], [ %.0219438, %bb.by ], [ %.0219438, %.preheader.preheader ], [ %.0219438, %bb.es ], [ %.0219438, %bb.bs ], [ %.0219438, %bb.w ], [ %.1220, %bb.bc ], [ %.0219438, %bb.bz ], [ %.0219438, %sub_0375 ], [ %.0219438, %.thread372.loopexit ], [ %.0219438, %.preheader385.preheader ], [ %.0219438, %bb.fd ]
  %.2218 = phi i32 [ %.0216439, %bb.i ], [ %.0216439, %bb.j ], [ %.0216439, %bb.n ], [ %.0216439, %bb.o ], [ %.0216439, %bb.p ], [ %.0216439, %bb.r ], [ %.0216439, %bb.u ], [ %.0216439, %bb.t ], [ %.0216439, %bb.br ], [ %.0216439, %bb.aa ], [ %.0216439, %bb.z ], [ %.0216439, %bb.ab ], [ %.0216439, %bb.ac ], [ %.0216439, %bb.aj ], [ %.0216439, %bb.ak ], [ %.0216439, %bb.ae ], [ %.0216439, %bb.x ], [ %.0216439, %bb.as ], [ %.0216439, %bb.am ], [ %.0216439, %bb.an ], [ %.0216439, %bb.ao ], [ %.0216439, %bb.ap ], [ %.0216439, %bb.aq ], [ %.0216439, %bb.ar ], [ %.0216439, %bb.v ], [ %.0216439, %bb.at ], [ %.0216439, %bb.bh ], [ %.0216439, %bb.be ], [ %.0216439, %bb.bf ], [ %.0216439, %bb.bg ], [ %.0216439, %bb.bj ], [ %.0216439, %bb.bi ], [ %.0216439, %bb.bk ], [ %.0216439, %bb.bm ], [ %.0216439, %bb.bn ], [ %.0216439, %bb.bo ], [ %.0216439, %.preheader389.preheader ], [ %.0216439, %bb.bp ], [ %.0216439, %bb.bq ], [ %.0216439, %bb.bt ], [ %.0216439, %bb.bu ], [ %.0216439, %bb.bv ], [ %.0216439, %bb.bw ], [ %.0216439, %bb.bx ], [ %.0216439, %.critedge ], [ %.0216439, %bb.ca ], [ %.0216439, %.tail374 ], [ %.0216439, %bb.ce ], [ %.0216439, %bb.cd ], [ %.0216439, %bb.ck ], [ %.0216439, %bb.cm ], [ %.0216439, %bb.co ], [ %.0216439, %bb.cn ], [ %.0216439, %.thread340 ], [ %.0216439, %bb.cx ], [ %.0216439, %bb.cy ], [ 0, %_Z11sget4_ordersPh.exit.thread.thread ], [ %.0216439, %bb.de ], [ 0, %bb.dd ], [ %.0216439, %bb.et ], [ %.0216439, %bb.em ], [ %.0216439, %bb.eo ], [ %.0216439, %bb.en ], [ %.0216439, %bb.ep ], [ %.0216439, %bb.er ], [ %.0216439, %bb.by ], [ %.0216439, %.preheader.preheader ], [ %.0216439, %bb.es ], [ %.0216439, %bb.bs ], [ %.0216439, %bb.w ], [ %.0216439, %bb.bc ], [ %.0216439, %bb.bz ], [ %.0216439, %sub_0375 ], [ %i.ie, %.thread372.loopexit ], [ %.0216439, %.preheader385.preheader ], [ %.0216439, %bb.fd ]
  %.2 = phi ptr [ %.0214440, %bb.i ], [ %.0214440, %bb.j ], [ %.0214440, %bb.n ], [ %.0214440, %bb.o ], [ %.0214440, %bb.p ], [ %.0214440, %bb.r ], [ %.0214440, %bb.u ], [ %.0214440, %bb.t ], [ %.0214440, %bb.br ], [ %.0214440, %bb.aa ], [ %.0214440, %bb.z ], [ %.0214440, %bb.ab ], [ %.0214440, %bb.ac ], [ %.0214440, %bb.aj ], [ %.0214440, %bb.ak ], [ %.0214440, %bb.ae ], [ %.0214440, %bb.x ], [ %.0214440, %bb.as ], [ %.0214440, %bb.am ], [ %.0214440, %bb.an ], [ %.0214440, %bb.ao ], [ %.0214440, %bb.ap ], [ %.0214440, %bb.aq ], [ %.0214440, %bb.ar ], [ %.0214440, %bb.v ], [ %.0214440, %bb.at ], [ %.0214440, %bb.bh ], [ %.0214440, %bb.be ], [ %.0214440, %bb.bf ], [ %.0214440, %bb.bg ], [ %.0214440, %bb.bj ], [ %.0214440, %bb.bi ], [ %.0214440, %bb.bk ], [ %.0214440, %bb.bm ], [ %.0214440, %bb.bn ], [ %.0214440, %bb.bo ], [ %.0214440, %.preheader389.preheader ], [ %.0214440, %bb.bp ], [ %.0214440, %bb.bq ], [ %.0214440, %bb.bt ], [ %.0214440, %bb.bu ], [ %.0214440, %bb.bv ], [ %.0214440, %bb.bw ], [ %.0214440, %bb.bx ], [ %.0214440, %.critedge ], [ %.0214440, %bb.ca ], [ %.0214440, %.tail374 ], [ %.0214440, %bb.ce ], [ %.0214440, %bb.cd ], [ %.0214440, %bb.ck ], [ %.0214440, %bb.cm ], [ %.0214440, %bb.co ], [ %.0214440, %bb.cn ], [ %.0214440, %.thread340 ], [ %.0214440, %bb.cx ], [ %.0214440, %bb.cy ], [ %.0214440, %_Z11sget4_ordersPh.exit.thread.thread ], [ %.0214440, %bb.de ], [ %.0214440, %bb.dd ], [ %.0214440, %bb.et ], [ %.0214440, %bb.em ], [ %.0214440, %bb.eo ], [ %.0214440, %bb.en ], [ %.0214440, %bb.ep ], [ %.0214440, %bb.er ], [ %.0214440, %bb.by ], [ %.0214440, %.preheader.preheader ], [ %.0214440, %bb.es ], [ %.0214440, %bb.bs ], [ %.0214440, %bb.w ], [ %.0214440, %bb.bc ], [ %.0214440, %bb.bz ], [ %.0214440, %sub_0375 ], [ %i.zs, %.thread372.loopexit ], [ %.0214440, %.preheader385.preheader ], [ %.0214440, %bb.fd ]
  %i.axb = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %i.axc = load i64, ptr %i.d, align 8, !tbaa !194
  %i.axd = load ptr, ptr %i.axb, align 8, !tbaa !108
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.axf = load ptr, ptr %i.axe, align 8
  %i.axg = call noundef i32 %i.axf(ptr noundef nonnull align 8 dereferenceable(8) %i.axb, i64 noundef %i.axc, i32 noundef 0) ; 0 uses
  %.not285 = icmp eq i32 %i.gn, 0
  br i1 %.not285, label %.loopexit390, label %bb.h

.loopexit390:                                     ; preds = %.thread372, %bb.g, %bb.c
  store i16 %i.i, ptr %i.h, align 8, !tbaa !105
  br label %bb.fe

bb.fe:                                            ; preds = %bb.f, %bb.b, %.loopexit390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

declare void @_ZN6LibRaw8tiff_getExPjS0_S0_Px(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6LibRaw14parse_tiff_ifdEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z11sget4_ordersPh(i16 noundef signext %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i16 %0, 18761
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_Z17AngleConversion_asPh(i16 noundef signext %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i16 %0, 18761
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  br label %_Z13sget_fixed32usPh.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  br label %_Z13sget_fixed32usPh.exit

_Z13sget_fixed32usPh.exit:                        ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  %i.e = uitofp reassoc nsz arcp contract afn i32 %.0.i.i to double
  %i.f = fmul reassoc nsz arcp contract afn double %i.e, f0x3EF0000000000000 ; 2 uses
  %i.g = fadd reassoc nsz arcp contract afn double %i.f, 5.000000e-05 ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn olt double %i.g, 1.800000e+02
  %i.i = fneg reassoc nsz arcp contract afn double %i.g
  %i.j = fsub reassoc nsz arcp contract afn double f0x40767FFFCB923A2A, %i.f
  %.0 = select nsz i1 %i.h, double %i.i, double %i.j
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_Z15AngleConversionsPh(i16 noundef signext %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i16 %0, 18761
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  br label %_Z13sget_fixed32usPh.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  br label %_Z13sget_fixed32usPh.exit

_Z13sget_fixed32usPh.exit:                        ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  %i.e = uitofp reassoc nsz arcp contract afn i32 %.0.i.i to double
  %i.f = fmul reassoc nsz arcp contract afn double %i.e, f0x3EF0000000000000 ; 2 uses
  %i.g = fadd reassoc nsz arcp contract afn double %i.f, 5.000000e-05 ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn ugt double %i.g, 1.800000e+02
  %i.i = fadd reassoc nsz arcp contract afn double %i.f, f0xC0767FFFCB923A2A
  %.0 = select nsz i1 %i.h, double %i.i, double %i.g
  ret double %.0
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_Z13sget_fixed32usPh(i16 noundef signext %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i16 %0, 18761
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  br label %_Z11sget4_ordersPh.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  br label %_Z11sget4_ordersPh.exit

_Z11sget4_ordersPh.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  %i.e = uitofp reassoc nsz arcp contract afn i32 %.0.i to double
  %i.f = fmul reassoc nsz arcp contract afn double %i.e, f0x3EF0000000000000
  %i.g = fadd reassoc nsz arcp contract afn double %i.f, 5.000000e-05
  ret double %i.g
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3f32.p0(<3 x float>, ptr captures(none), <3 x i1>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { cold noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 short", !11, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!"double", !7, i64 0}
!15 = !{!"_ZTS20libraw_image_sizes_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !8, i64 16, !14, i64 24, !8, i64 32, !7, i64 36, !13, i64 164, !7, i64 166}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"_ZTS16libraw_iparams_t", !7, i64 0, !7, i64 4, !7, i64 68, !7, i64 132, !7, i64 196, !7, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !7, i64 348, !7, i64 384, !7, i64 420, !8, i64 428, !16, i64 432}
!18 = !{!"float", !7, i64 0}
!19 = !{!"_ZTS18libraw_nikonlens_t", !18, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7}
!20 = !{!"_ZTS16libraw_dnglens_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!21 = !{!"long long", !7, i64 0}
!22 = !{!"_ZTS24libraw_makernotes_lens_t", !21, i64 0, !7, i64 8, !13, i64 136, !13, i64 138, !21, i64 144, !13, i64 152, !13, i64 154, !7, i64 156, !13, i64 220, !7, i64 222, !7, i64 238, !18, i64 256, !18, i64 260, !18, i64 264, !18, i64 268, !18, i64 272, !18, i64 276, !18, i64 280, !18, i64 284, !18, i64 288, !18, i64 292, !18, i64 296, !18, i64 300, !18, i64 304, !18, i64 308, !18, i64 312, !21, i64 320, !7, i64 328, !21, i64 456, !7, i64 464, !21, i64 592, !7, i64 600, !13, i64 728, !18, i64 732}
!23 = !{!"_ZTS17libraw_lensinfo_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !7, i64 20, !7, i64 148, !7, i64 276, !7, i64 404, !13, i64 532, !19, i64 536, !20, i64 544, !22, i64 560}
!24 = !{!"_ZTS13libraw_area_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!25 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16, !8, i64 32, !7, i64 36, !13, i64 52, !13, i64 54, !7, i64 56, !13, i64 58, !13, i64 60, !13, i64 62, !13, i64 64, !13, i64 66, !13, i64 68, !13, i64 70, !13, i64 72, !13, i64 74, !13, i64 76, !13, i64 78, !13, i64 80, !13, i64 82, !8, i64 84, !18, i64 88, !13, i64 92, !13, i64 94, !13, i64 96, !13, i64 98, !8, i64 100, !13, i64 104, !8, i64 108, !8, i64 112, !13, i64 116, !8, i64 120, !24, i64 124, !24, i64 132, !24, i64 140, !24, i64 148, !24, i64 156, !7, i64 164}
!26 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!27 = !{!"_ZTS25libraw_nikon_makernotes_t", !14, i64 0, !13, i64 8, !13, i64 10, !7, i64 12, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 34, !7, i64 54, !7, i64 58, !7, i64 62, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 69, !7, i64 70, !7, i64 71, !7, i64 73, !7, i64 74, !7, i64 75, !7, i64 76, !7, i64 77, !7, i64 78, !7, i64 82, !7, i64 86, !13, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !7, i64 112, !7, i64 144, !7, i64 145, !7, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !7, i64 160, !7, i64 162, !13, i64 170, !26, i64 172, !13, i64 180, !13, i64 182, !13, i64 184, !8, i64 188, !7, i64 192, !7, i64 212, !8, i64 232, !7, i64 236, !8, i64 248, !16, i64 256, !13, i64 264, !13, i64 266, !7, i64 268, !13, i64 270, !14, i64 272, !14, i64 280, !14, i64 288}
!28 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !14, i64 8, !7, i64 16, !7, i64 24, !7, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 200, !8, i64 264, !7, i64 268, !7, i64 276, !7, i64 288}
!29 = !{!"_ZTS18libraw_fuji_info_t", !18, i64 0, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !13, i64 16, !13, i64 18, !7, i64 20, !7, i64 53, !18, i64 88, !13, i64 92, !13, i64 94, !7, i64 96, !13, i64 100, !8, i64 104, !8, i64 108, !13, i64 112, !7, i64 114, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !13, i64 128, !8, i64 132, !13, i64 136, !7, i64 138, !7, i64 151, !7, i64 156, !8, i64 164, !13, i64 168, !8, i64 172, !13, i64 176, !7, i64 178, !7, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !7, i64 336, !8, i64 344}
!30 = !{!"_ZTS27libraw_olympus_makernotes_t", !7, i64 0, !13, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !7, i64 64, !7, i64 72, !13, i64 82, !7, i64 84, !13, i64 88, !13, i64 90, !7, i64 92, !7, i64 352, !13, i64 392, !7, i64 394, !7, i64 396, !7, i64 404, !13, i64 416, !13, i64 418, !13, i64 420, !13, i64 422, !14, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !8, i64 452, !13, i64 456, !13, i64 458}
!31 = !{!"_ZTS18libraw_sony_info_t", !13, i64 0, !7, i64 2, !7, i64 3, !8, i64 4, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 17, !13, i64 18, !7, i64 20, !7, i64 24, !7, i64 25, !13, i64 26, !7, i64 28, !7, i64 38, !7, i64 39, !7, i64 40, !13, i64 48, !7, i64 50, !7, i64 51, !7, i64 52, !13, i64 54, !8, i64 56, !13, i64 60, !7, i64 62, !13, i64 66, !13, i64 68, !13, i64 70, !13, i64 72, !13, i64 74, !13, i64 76, !13, i64 78, !8, i64 80, !18, i64 84, !13, i64 88, !8, i64 92, !8, i64 96, !13, i64 100, !7, i64 102, !8, i64 124, !13, i64 128, !8, i64 132, !7, i64 136, !7, i64 137, !13, i64 138, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !8, i64 156, !13, i64 160, !7, i64 162, !18, i64 180}
!32 = !{!"_ZTS25libraw_kodak_makernotes_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !7, i64 12, !7, i64 48, !7, i64 84, !7, i64 120, !7, i64 156, !7, i64 192, !13, i64 228, !13, i64 230, !13, i64 232, !13, i64 234, !18, i64 236, !18, i64 240}
!33 = !{!"_ZTS29libraw_panasonic_makernotes_t", !13, i64 0, !13, i64 2, !7, i64 4, !8, i64 36, !18, i64 40, !7, i64 44, !13, i64 56, !13, i64 58, !8, i64 60, !8, i64 64}
!34 = !{!"_ZTS26libraw_pentax_makernotes_t", !7, i64 0, !7, i64 4, !7, i64 8, !13, i64 12, !8, i64 16, !8, i64 20, !13, i64 24, !7, i64 26, !13, i64 30, !7, i64 32, !7, i64 33, !13, i64 34}
!35 = !{!"_ZTS22libraw_p1_makernotes_t", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 384}
!36 = !{!"_ZTS25libraw_ricoh_makernotes_t", !13, i64 0, !7, i64 4, !7, i64 12, !13, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !13, i64 40, !13, i64 42, !13, i64 44, !13, i64 46, !13, i64 48, !13, i64 50, !14, i64 56, !14, i64 64}
!37 = !{!"_ZTS27libraw_samsung_makernotes_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 40, !14, i64 88, !8, i64 96, !7, i64 100}
!38 = !{!"_ZTS24libraw_metadata_common_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !18, i64 56, !18, i64 60, !13, i64 64, !7, i64 66, !18, i64 196, !7, i64 200, !8, i64 296}
!39 = !{!"_ZTS19libraw_makernotes_t", !25, i64 0, !27, i64 168, !28, i64 464, !29, i64 848, !30, i64 1200, !31, i64 1664, !32, i64 1848, !33, i64 2092, !34, i64 2160, !35, i64 2196, !36, i64 2648, !37, i64 2720, !38, i64 2856}
!40 = !{!"_ZTS21libraw_shootinginfo_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !7, i64 14, !7, i64 78}
!41 = !{!"_ZTS22libraw_output_params_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 64, !7, i64 112, !18, i64 128, !18, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !7, i64 224, !8, i64 240, !8, i64 244, !18, i64 248, !18, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !18, i64 288, !18, i64 292, !8, i64 296, !8, i64 300}
!42 = !{!"any p2 pointer", !11, i64 0}
!43 = !{!"p2 omnipotent char", !42, i64 0}
!44 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !18, i64 28, !7, i64 32, !43, i64 40}
!45 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !18, i64 32}
!46 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !7, i64 4, !8, i64 16420, !7, i64 16424, !18, i64 32840, !7, i64 32844, !7, i64 32860, !7, i64 32868, !8, i64 32884, !7, i64 32888, !7, i64 32904, !18, i64 32920, !18, i64 32924, !7, i64 32928}
!47 = !{!"_ZTS18libraw_colordata_t", !7, i64 0, !7, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !7, i64 147500, !18, i64 147516, !18, i64 147520, !7, i64 147524, !7, i64 147652, !7, i64 147668, !7, i64 147684, !7, i64 147732, !7, i64 147780, !7, i64 147828, !45, i64 147876, !18, i64 147912, !18, i64 147916, !7, i64 147920, !7, i64 147984, !7, i64 148048, !7, i64 148112, !7, i64 148176, !7, i64 148193, !11, i64 148264, !8, i64 148272, !7, i64 148276, !7, i64 148308, !46, i64 148648, !7, i64 181624, !7, i64 185720, !8, i64 187000, !7, i64 187004, !8, i64 187076, !8, i64 187080}
!48 = !{!"long", !7, i64 0}
!49 = !{!"_ZTS17libraw_gps_info_t", !7, i64 0, !7, i64 12, !7, i64 24, !18, i64 36, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44}
!50 = !{!"_ZTS17libraw_imgother_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !48, i64 16, !8, i64 24, !7, i64 28, !49, i64 156, !7, i64 204, !7, i64 716, !7, i64 780}
!51 = !{!"_ZTS24LibRaw_thumbnail_formats", !7, i64 0}
!52 = !{!"_ZTS18libraw_thumbnail_t", !51, i64 0, !13, i64 4, !13, i64 6, !8, i64 8, !8, i64 12, !16, i64 16}
!53 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !7, i64 8}
!54 = !{!"p1 float", !11, i64 0}
!55 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 12, !13, i64 14}
!56 = !{!"_ZTS16libraw_rawdata_t", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !12, i64 56, !12, i64 64, !17, i64 72, !15, i64 512, !55, i64 696, !47, i64 712}
!57 = !{!"_ZTS13libraw_data_t", !12, i64 0, !15, i64 8, !17, i64 192, !23, i64 632, !39, i64 1928, !40, i64 5088, !41, i64 5232, !44, i64 5536, !8, i64 5584, !8, i64 5588, !47, i64 5592, !50, i64 192680, !52, i64 193480, !53, i64 193504, !56, i64 193768, !11, i64 381568}
!58 = !{!"p1 _ZTS10LibRaw_TLS", !11, i64 0}
!59 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !11, i64 0}
!60 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!61 = !{!"_ZTS15internal_data_t", !59, i64 0, !60, i64 8, !8, i64 16, !16, i64 24, !21, i64 32, !21, i64 40, !7, i64 48}
!62 = !{!"p1 int", !11, i64 0}
!63 = !{!"_ZTS13output_data_t", !62, i64 0, !62, i64 8}
!64 = !{!"_ZTS15identify_data_t", !8, i64 0, !21, i64 8, !21, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!65 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !7, i64 0}
!66 = !{!"_ZTS12pana8_tags_t", !7, i64 0, !7, i64 24, !13, i64 36, !7, i64 38, !7, i64 46, !7, i64 80, !7, i64 114, !13, i64 148, !13, i64 150, !7, i64 152, !7, i64 192, !7, i64 204, !7, i64 224, !7, i64 234}
!67 = !{!"_ZTS15unpacker_data_t", !13, i64 0, !7, i64 2, !7, i64 10, !8, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !65, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !21, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !66, i64 192, !7, i64 440, !8, i64 2488, !8, i64 2492, !13, i64 2496, !13, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !7, i64 2528, !13, i64 2608}
!68 = !{!"_ZTS22libraw_internal_data_t", !61, i64 0, !55, i64 64, !63, i64 80, !64, i64 96, !67, i64 136}
!69 = !{!"p1 _ZTS6decode", !11, i64 0}
!70 = !{!"_ZTS13libraw_memmgr", !42, i64 0, !8, i64 8}
!71 = !{!"_ZTS18libraw_callbacks_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144}
!72 = !{!"_ZTS6LibRaw", !57, i64 8, !58, i64 381584, !68, i64 381592, !7, i64 384344, !69, i64 433496, !69, i64 433504, !7, i64 433512, !70, i64 768232, !71, i64 768248, !7, i64 768400, !7, i64 768416, !7, i64 768432, !11, i64 768448, !11, i64 768456, !11, i64 768464, !48, i64 768472, !11, i64 768480, !11, i64 768488, !11, i64 768496, !11, i64 768504}
!73 = !{!72, !7, i64 1183}
!74 = !{!7, !7, i64 0}
!75 = !{!72, !13, i64 1336}
!76 = !{!72, !13, i64 1352}
!77 = !{!72, !13, i64 1354}
!78 = !{!72, !13, i64 1338}
!79 = !{!72, !13, i64 2274}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!72, !7, i64 1181}
!82 = !{!72, !18, i64 1512}
!83 = !{!72, !18, i64 1456}
!84 = !{!72, !18, i64 1460}
!85 = !{!72, !18, i64 1464}
!86 = !{!72, !18, i64 1468}
!87 = !{!8, !8, i64 0}
!88 = distinct !{!88, !80}
!89 = !{!72, !21, i64 1200}
!90 = !{!72, !18, i64 1496}
!91 = !{!72, !18, i64 1492}
!92 = !{!72, !18, i64 1488}
!93 = !{!72, !7, i64 1180}
!94 = !{!72, !7, i64 1182}
!95 = !{!72, !18, i64 1176}
!96 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !109, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!97 = distinct !{!97, !80}
!98 = distinct !{!98, !80}
!99 = distinct !{!99, !80}
!100 = distinct !{!100, !80}
!101 = distinct !{!101, !176}
!102 = distinct !{!102, !80}
!103 = distinct !{!103, !176}
!104 = distinct !{!104, !80}
!105 = !{!72, !13, i64 381728}
!106 = !{!72, !59, i64 381592}
!107 = !{!"vtable pointer", !6, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!110 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!111 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !110, line: 109, baseType: !111)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!114 = !{!112, !113}
!115 = !DISubroutineType(types: !114)
!116 = !DISubprogram(name: "size", linkageName: "_ZN26LibRaw_abstract_datastream4sizeEv", scope: !96, file: !109, line: 104, type: !115, scopeLine: 104, containingType: !96, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!119 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!120 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 18, baseType: !120)
!122 = !{!117, !113, !118, !121, !121}
!123 = !DISubroutineType(types: !122)
!124 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !96, file: !109, line: 101, type: !123, scopeLine: 101, containingType: !96, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!125 = !DISubprogram(name: "tell", linkageName: "_ZN26LibRaw_abstract_datastream4tellEv", scope: !96, file: !109, line: 103, type: !115, scopeLine: 103, containingType: !96, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!126 = !{!117, !113, !112, !117}
!127 = !DISubroutineType(types: !126)
!128 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !96, file: !109, line: 102, type: !127, scopeLine: 102, containingType: !96, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!129 = !{!72, !11, i64 768288}
!130 = !{!72, !11, i64 768304}
!131 = !{!72, !18, i64 192688}
!132 = !{!72, !13, i64 1420}
!133 = !{!18, !18, i64 0}
!134 = !{!72, !8, i64 153088}
!135 = !{!72, !8, i64 2292}
!136 = !{!117, !113}
!137 = !DISubroutineType(types: !136)
!138 = !DISubprogram(name: "get_char", linkageName: "_ZN26LibRaw_abstract_datastream8get_charEv", scope: !96, file: !109, line: 105, type: !137, scopeLine: 105, containingType: !96, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!139 = !{!72, !8, i64 528}
!140 = !{!72, !18, i64 4792}
!141 = !{!72, !13, i64 2280}
!142 = !{!72, !13, i64 2282}
!143 = !{!72, !13, i64 2284}
!144 = !{!72, !13, i64 2286}
!145 = !{!72, !13, i64 2276}
!146 = !{!72, !13, i64 2278}
!147 = !{!72, !13, i64 180}
!148 = !{!72, !13, i64 4856}
!149 = !{!72, !18, i64 4848}
!150 = !{!72, !13, i64 2288}
!151 = !{!72, !18, i64 4988}
!152 = !{!14, !14, i64 0}
!153 = !{!"_ZTS23libraw_raw_inset_crop_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!154 = !{!153, !13, i64 0}
!155 = !{!153, !13, i64 2}
!156 = !{!153, !13, i64 4}
!157 = !{!153, !13, i64 6}
!158 = !{!72, !13, i64 2192}
end_hunk_3
