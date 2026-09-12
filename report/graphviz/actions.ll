Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/actions?download=true
inline.NumInlined: 62
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@colorx:bb.a
  %i.fp = zext i32 %i.fo to i64
  %i.fq = bitcast i64 %i.fp to double             ; 2 uses
  %i.fr = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.fq, i64 0
  br label %bb.am

bb.am:                                            ; preds = %bb.ad, %hsv2rgb.exit.i
  %.sroa.0.0 = phi double [ %i.fq, %hsv2rgb.exit.i ], [ %i.ej, %bb.ad ]
  %i.fs = phi <4 x double> [ %i.fr, %hsv2rgb.exit.i ], [ %i.ei, %bb.ad ]
  br i1 %i.dy, label %bb.an, label %bb.be

bb.an:                                            ; preds = %bb.am
  %.val124.i = load ptr, ptr %3, align 8
  call void @free(ptr noundef %.val124.i) #19
  br label %bb.be

bb.ao:                                            ; preds = %agxbuse.exit.i
  call void @free(ptr noundef %i.ds) #19
  br label %agxbfree.exit.thread.i

agxbfree.exit.thread.i:                           ; preds = %bb.ao, %agxbuse.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ap

bb.ap:                                            ; preds = %agxbfree.exit.thread.i, %.thread.i
  %i.ft = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0113.i, ptr noundef nonnull dereferenceable(6) @.str.51) #20
  %.not.i128.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i128.i, label %resolveColor.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0113.i, ptr noundef nonnull dereferenceable(6) @.str.52) #20
  %.not26.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not26.i.i, label %resolveColor.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0113.i, ptr noundef nonnull dereferenceable(10) @.str.53) #20
  %.not27.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not27.i.i, label %resolveColor.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fw = load i8, ptr %.0113.i, align 1, !tbaa !8
  %i.fx = icmp eq i8 %i.fw, 47
  br i1 %i.fx, label %bb.at, label %resolveColor.exit.i

bb.at:                                            ; preds = %bb.as
  %i.fy = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.p, i32 noundef 47) #20 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.fy, null
  br i1 %.not28.i.i, label %resolveColor.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fz = load i8, ptr %i.p, align 1, !tbaa !8
  %i.ga = icmp eq i8 %i.fz, 47
  br i1 %i.ga, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gb = getelementptr inbounds nuw i8, ptr %.0113.i, i64 2
  br label %resolveColor.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.gc = call i32 @strncasecmp(ptr noundef nonnull @.str.54, ptr noundef nonnull readonly %i.p, i64 noundef 4) #20
  %.not29.i.i = icmp eq i32 %i.gc, 0
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  %spec.select.i.i = select i1 %.not29.i.i, ptr %i.gd, ptr %.0113.i
  br label %resolveColor.exit.i

resolveColor.exit.i:                              ; preds = %bb.aw, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.1.sink.i.i = phi ptr [ %.0113.i, %bb.ar ], [ %.0113.i, %bb.aq ], [ %.0113.i, %bb.ap ], [ %i.p, %bb.at ], [ %spec.select.i.i, %bb.aw ], [ %i.gb, %bb.av ], [ %.0113.i, %bb.as ]
  %i.ge = call noalias ptr @strdup(ptr noundef nonnull %.1.sink.i.i) #19 ; 4 uses
  %.not118.i = icmp eq ptr %i.ge, null
  br i1 %.not118.i, label %colorxlate.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %resolveColor.exit.i, %bb.az
  %.021.i.i = phi i64 [ %.1.i130.i, %bb.az ], [ 2515, %resolveColor.exit.i ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %bb.az ], [ 0, %resolveColor.exit.i ] ; 2 uses
  %i.gf = add i64 %.01620.i.i, %.021.i.i
  %i.gg = lshr i64 %i.gf, 1                       ; 3 uses
  %i.gh = shl i64 %i.gg, 4                        ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr @color_lib, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 16, !tbaa !75
  %i.gk = call i32 @strcasecmp(ptr noundef nonnull readonly %i.ge, ptr noundef %i.gj) #20 ; 2 uses
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i
  %.not.i129.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i129.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gm = add nuw i64 %i.gg, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i
  %.117.i.i = phi i64 [ %i.gm, %bb.ay ], [ %.01620.i.i, %.lr.ph.i.i ] ; 2 uses
  %.1.i130.i = phi i64 [ %.021.i.i, %bb.ay ], [ %i.gg, %.lr.ph.i.i ] ; 2 uses
  %i.gn = icmp ult i64 %.117.i.i, %.1.i130.i
  br i1 %i.gn, label %.lr.ph.i.i, label %bb.bd, !llvm.loop !71

bb.ba:                                            ; preds = %bb.ax
  %i.go = getelementptr inbounds nuw i8, ptr @color_lib, i64 %i.gh ; 4 uses
  call void @free(ptr noundef nonnull %i.ge) #19
  br i1 %.015, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load <2 x i8>, ptr %i.gp, align 8, !tbaa !8
  %i.gr = uitofp <2 x i8> %i.gq to <2 x double>
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 10
  %i.gt = load i8, ptr %i.gs, align 2, !tbaa !76
  %i.gu = uitofp i8 %i.gt to double
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 14
  %i.gw = load i8, ptr %i.gv, align 2, !tbaa !77
  %i.gx = fdiv <2 x double> %i.gr, splat (double 2.550000e+02)
  %i.gy = fdiv double %i.gu, 2.550000e+02
  %i.gz = uitofp i8 %i.gw to double
  br label %.thread

bb.bc:                                            ; preds = %bb.ba
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 11
  %i.hb = load i32, ptr %i.ha, align 1
  br label %.thread114

bb.bd:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.ge) #19
  br label %colorxlate.exit

colorxlate.exit:                                  ; preds = %bb.bd, %resolveColor.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bp

.thread:                                          ; preds = %rgb2hsv.exit.i, %bb.bb
  %.sroa.32.1.ph.ph = phi double [ %i.aw, %rgb2hsv.exit.i ], [ %i.gy, %bb.bb ]
  %.sroa.36.1.ph.ph.in = phi double [ %i.aq, %rgb2hsv.exit.i ], [ %i.gz, %bb.bb ]
  %i.hc = phi <2 x double> [ %i.bx, %rgb2hsv.exit.i ], [ %i.gx, %bb.bb ]
  %.sroa.36.1.ph.ph = fdiv double %.sroa.36.1.ph.ph.in, 2.550000e+02
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.he = insertelement <4 x double> %i.hd, double %.sroa.32.1.ph.ph, i64 1
  %i.hf = insertelement <4 x double> %i.he, double %.sroa.36.1.ph.ph, i64 3
  br label %bb.bf

.thread114:                                       ; preds = %bb.u, %bb.bc
  %.sroa.0.1.ph.ph113.in.in = phi i32 [ %i.hb, %bb.bc ], [ %.sroa.0.3.insert.insert92123, %bb.u ]
  %.sroa.0.1.ph.ph113.in = zext i32 %.sroa.0.1.ph.ph113.in.in to i64
  %.sroa.0.1.ph.ph113 = bitcast i64 %.sroa.0.1.ph.ph113.in to double
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  br label %bb.bh

bb.be:                                            ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  br i1 %.015, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.thread, %bb.be
  %i.hg = phi <4 x double> [ %i.hf, %.thread ], [ %i.fs, %bb.be ] ; 4 uses
  %i.hh = extractelement <4 x double> %i.hg, i64 0
  %i.hi = extractelement <4 x double> %i.hg, i64 1
  %i.hj = extractelement <4 x double> %i.hg, i64 2
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %4, ptr noundef nonnull @.str.30, double noundef %i.hh, double noundef %i.hj, double noundef %i.hi)
  br i1 %.not19.not, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.hk = extractelement <4 x double> %i.hg, i64 3
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %4, ptr noundef nonnull @.str.31, double noundef %i.hk)
  br label %bb.bj

bb.bh:                                            ; preds = %.thread114, %bb.be
  %.sroa.0.1.ph120 = phi double [ %.sroa.0.1.ph.ph113, %.thread114 ], [ %.sroa.0.0, %bb.be ]
  %i.hl = bitcast double %.sroa.0.1.ph120 to i64  ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.hl to i32
  %i.hm = and i32 %.sroa.0.0.extract.trunc, 255
  %.sroa.0.1.extract.shift = lshr i64 %i.hl, 8
  %.sroa.0.1.extract.trunc = trunc i64 %.sroa.0.1.extract.shift to i32
  %i.hn = and i32 %.sroa.0.1.extract.trunc, 255
  %.sroa.0.2.extract.shift = lshr i64 %i.hl, 16
  %.sroa.0.2.extract.trunc = trunc i64 %.sroa.0.2.extract.shift to i32
  %i.ho = and i32 %.sroa.0.2.extract.trunc, 255
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %4, ptr noundef nonnull @.str.32, i32 noundef %i.hm, i32 noundef %i.hn, i32 noundef %i.ho)
  br i1 %.not19.not, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %.sroa.0.3.extract.shift = lshr i64 %i.hl, 24
  %.sroa.0.3.extract.trunc = trunc i64 %.sroa.0.3.extract.shift to i32
  %5 = and i32 %.sroa.0.3.extract.trunc, 255
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef %5)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bf, %bb.bg
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 31 ; 6 uses
  %.val.i23 = load i8, ptr %i.hp, align 1, !tbaa !8 ; 3 uses
  switch i8 %.val.i23, label %agxblen.exit.i.i [
    i8 -1, label %bb.bk
    i8 31, label %agxbclear.exit.thread.i
  ]

agxblen.exit.i.i:                                 ; preds = %bb.bj
  %i.hq = zext i8 %.val.i23 to i64
  br label %agxbsizeof.exit.i.i24

bb.bk:                                            ; preds = %bb.bj
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !8
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !8
  br label %agxbsizeof.exit.i.i24

agxbsizeof.exit.i.i24:                            ; preds = %bb.bk, %agxblen.exit.i.i
  %.0.i20.i.i25 = phi i64 [ %i.hs, %bb.bk ], [ %i.hq, %agxblen.exit.i.i ]
  %.0.i14.i.i26 = phi i64 [ %i.hu, %bb.bk ], [ 31, %agxblen.exit.i.i ]
  %.not.i5.i = icmp ult i64 %.0.i20.i.i25, %.0.i14.i.i26
  br i1 %.not.i5.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %agxbsizeof.exit.i.i24
  call fastcc void @agxbmore(ptr noundef nonnull %4, i64 noundef 1)
  %.val.i15.pre.i.i27 = load i8, ptr %i.hp, align 1, !tbaa !8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %agxbsizeof.exit.i.i24
  %.val.i6.pr.i = phi i8 [ %.val.i15.pre.i.i27, %bb.bl ], [ %.val.i23, %agxbsizeof.exit.i.i24 ] ; 2 uses
  %.not.i16.i.i28 = icmp eq i8 %.val.i6.pr.i, -1
  br i1 %.not.i16.i.i28, label %agxbputc.exit.i29.thread, label %agxbputc.exit.i29

agxbputc.exit.i29.thread:                         ; preds = %bb.bm
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !8
  %i.hx = load ptr, ptr %4, align 8, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hw
  store i8 0, ptr %i.hy, align 1, !tbaa !8
  br label %bb.bn

agxbputc.exit.i29:                                ; preds = %bb.bm
  %i.hz = zext i8 %.val.i6.pr.i to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 %i.hz
  store i8 0, ptr %i.ia, align 1, !tbaa !8
  %i.ib = load i8, ptr %i.hp, align 1, !tbaa !8
  %i.ic = add i8 %i.ib, 1                         ; 2 uses
  store i8 %i.ic, ptr %i.hp, align 1, !tbaa !8
  %i.id = icmp eq i8 %i.ic, -1
  br i1 %i.id, label %bb.bn, label %agxbclear.exit.thread.i

agxbclear.exit.thread.i:                          ; preds = %agxbputc.exit.i29, %bb.bj
  store i8 0, ptr %i.hp, align 1, !tbaa !8
  br label %agxbuse.exit

bb.bn:                                            ; preds = %agxbputc.exit.i29.thread, %agxbputc.exit.i29
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ie, align 8, !tbaa !8
  %i.if = load ptr, ptr %4, align 8, !tbaa !8
  br label %agxbuse.exit

agxbuse.exit:                                     ; preds = %agxbclear.exit.thread.i, %bb.bn
  %i.ig = phi ptr [ %i.if, %bb.bn ], [ %4, %agxbclear.exit.thread.i ]
  %i.ih = call ptr @exstring(ptr noundef %0, ptr noundef %i.ig) #19
  %.val22 = load i8, ptr %i.hp, align 1, !tbaa !8
  %i.ii = icmp eq i8 %.val22, -1
  br i1 %i.ii, label %bb.bo, label %agxbfree.exit

bb.bo:                                            ; preds = %agxbuse.exit
  %.val = load ptr, ptr %4, align 8
  call void @free(ptr noundef %.val) #19
  br label %agxbfree.exit

agxbfree.exit:                                    ; preds = %agxbuse.exit, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bp

bb.bp:                                            ; preds = %colorxlate.exit, %bb.c, %bb.a, %bb.b, %agxbfree.exit
  %.0 = phi ptr [ @.str.27, %bb.a ], [ @.str.27, %bb.c ], [ %i.ih, %agxbfree.exit ], [ @.str.27, %bb.b ], [ @.str.27, %colorxlate.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @agxbprint(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #9 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr nonnull %3)
  %i.b = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef readonly %1, ptr noundef nonnull %2) #19 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = icmp sgt i32 %i.b, -1
  %narrow.i = add nuw i32 %i.b, 1
  %i.d = zext i32 %narrow.i to i64                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %i.c, label %bb.b, label %vagxbprint.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 31         ; 5 uses
  %.val.i.i = load i8, ptr %i.e, align 1, !tbaa !8 ; 4 uses
  %.not.i.i = icmp eq i8 %.val.i.i, -1
  br i1 %.not.i.i, label %bb.c, label %agxbsizeof.exit.i

agxbsizeof.exit.i:                                ; preds = %bb.b
  %i.f = zext i8 %.val.i.i to i64
  br label %agxblen.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !8
  br label %agxblen.exit.i

agxblen.exit.i:                                   ; preds = %bb.c, %agxbsizeof.exit.i
  %.0.i51.i = phi i64 [ 31, %agxbsizeof.exit.i ], [ %i.h, %bb.c ]
  %.0.i43.i = phi i64 [ %i.f, %agxbsizeof.exit.i ], [ %i.j, %bb.c ]
  %i.k = sub i64 %.0.i51.i, %.0.i43.i             ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %agxblen.exit.i
  %i.m = sub nuw nsw i64 %i.d, %i.k               ; 2 uses
  %i.n = icmp ne i8 %.val.i.i, -1
  %i.o = icmp eq i64 %i.m, 1
  %or.cond.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @agxbmore(ptr noundef nonnull %0, i64 noundef %i.m)
  %.val.i.i.pre.i = load i8, ptr %i.e, align 1, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %agxblen.exit.i
  %.val.i.i.i = phi i8 [ %.val.i.i, %agxblen.exit.i ], [ %.val.i.i.pre.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq i8 %.val.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.h, label %agxblen.exit.thread.i.i

agxblen.exit.thread.i.i:                          ; preds = %bb.g
  %i.p = zext i8 %.val.i.i.i to i64
  br label %agxbnext.exit.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !8
  %i.s = load ptr, ptr %0, align 8, !tbaa !8
  br label %agxbnext.exit.i

agxbnext.exit.i:                                  ; preds = %bb.h, %agxblen.exit.thread.i.i
  %.0.i6.i.i = phi i64 [ %i.r, %bb.h ], [ %i.p, %agxblen.exit.thread.i.i ]
  %.pn.i.i = phi ptr [ %i.s, %bb.h ], [ %0, %agxblen.exit.thread.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i6.i.i
  br label %bb.i

bb.i:                                             ; preds = %agxbnext.exit.i, %bb.f
  %.155.i = phi i1 [ false, %agxbnext.exit.i ], [ true, %bb.f ]
  %i.u = phi ptr [ %i.t, %agxbnext.exit.i ], [ %i.a, %bb.f ]
  %i.v = call i32 @vsnprintf(ptr noundef %i.u, i64 noundef %i.d, ptr noundef readonly %1, ptr noundef nonnull %3) #19 ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !8  ; 3 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.155.i, label %agxbnext.exit49.i, label %bb.l

agxbnext.exit49.i:                                ; preds = %bb.k
  %i.x = zext i8 %.val.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = zext nneg i32 %i.v to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 16 %i.a, i64 %i.z, i1 false)
  %.pre.i = load i8, ptr %i.e, align 1, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %agxbnext.exit49.i, %bb.k
  %i.aa = phi i8 [ %.pre.i, %agxbnext.exit49.i ], [ %.val.i, %bb.k ]
  %i.ab = trunc i32 %i.v to i8
  %i.ac = add i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.e, align 1, !tbaa !8
  br label %bb.n
end_hunk_0
