Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RINvNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB5_7Content8traverse10walk_valueNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build19progress_tree_start0uEB1F_:bb.a
  %i.g = icmp ne i64 %i.f, 30
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -2
  %i.i = icmp samesign ugt i64 %i.f, 1
  %i.j = select i1 %i.i, i64 %i.h, i64 28
  switch i64 %i.j, label %bb.g [
    i64 21, label %bb.b
    i64 23, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = invoke fastcc noundef zeroext i1 @_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8traverseNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build19progress_tree_start0uEB1r_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !10, !noundef !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations5arrayNtB5_5ArrayNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noundef nonnull %i.n, i64 noundef %i.p)
          to label %bb.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.h

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit5 unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.d, %bb.cf, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.phi, %bb.cf ], [ %i.q, %bb.d ]
  %i.r = load i64, ptr %0, align 8, !range !56, !noundef !10 ; 3 uses
  %i.s = icmp ne i64 %i.r, 30
  call void @llvm.assume(i1 %i.s)
  %i.t = add nsw i64 %i.r, -2
  %i.u = icmp samesign ugt i64 %i.r, 1
  %i.v = select i1 %i.u, i64 %i.t, i64 28
  switch i64 %i.v, label %bb.ck [
    i64 21, label %bb.cl
    i64 23, label %bb.cl
  ]

bb.f:                                             ; preds = %bb.e, %.split.us, %._crit_edge, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit5: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit5
  %.sroa.0.0 = phi i1 [ false, %bb.l ], [ %i.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit5 ], [ false, %bb.a ] ; 3 uses
  %i.x = load i64, ptr %0, align 8, !range !56, !noundef !10 ; 3 uses
  %i.y = icmp ne i64 %i.x, 30
  call void @llvm.assume(i1 %i.y)
  %i.z = add nsw i64 %i.x, -2
  %i.aa = icmp samesign ugt i64 %i.x, 1
  %i.ab = select i1 %i.aa, i64 %i.z, i64 28
  switch i64 %i.ab, label %.sink.split279 [
    i64 21, label %bb.cj
    i64 23, label %bb.cj
  ]

bb.h:                                             ; preds = %bb.d, %bb.ck, %bb.cf
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !10 ; 5 uses
  %.promoted = load i64, ptr %i.ad, align 8       ; 4 uses
  %i.ag = icmp ult i64 %.promoted, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ai = load i8, ptr %i.ah, align 8, !range !11, !noundef !10
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load ptr, ptr %i.c, align 8, !nonnull !10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %.sroa.63.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.77.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br i1 %i.aj, label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.us, label %.lr.ph.split

_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.us: ; preds = %.lr.ph, %bb.k
  %i.an = phi i64 [ %i.ao, %bb.k ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.an ; 2 uses
  %.sroa.63.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aq = load <2 x i64>, ptr %i.ap, align 8
  store <2 x i64> %i.aq, ptr %i.b, align 16
  %i.ar = load <2 x i64>, ptr %.sroa.63.0..sroa_idx.us, align 8
  store <2 x i64> %i.ar, ptr %.sroa.7.0..sroa_idx, align 16
  %i.as = invoke fastcc noundef zeroext i1 @_RINvNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB5_7Content8traverse10walk_valueNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build19progress_tree_start0uEB1F_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.j unwind label %.loopexit.split.us

bb.j:                                             ; preds = %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.us
  br i1 %i.as, label %.split.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond247.not = icmp eq i64 %i.ao, %i.af
  br i1 %exitcond247.not, label %._crit_edge, label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.us

.loopexit.split.us:                               ; preds = %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.ch, %bb.k, %bb.i
  %.lcssa = phi i64 [ %.promoted, %bb.i ], [ %i.af, %bb.k ], [ %i.af, %bb.ch ]
  store i64 %.lcssa, ptr %i.ad, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c)
          to label %bb.l unwind label %bb.f

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ch
  %i.at = phi i64 [ %i.au, %bb.ch ], [ %.promoted, %.lr.ph ] ; 3 uses
  %i.au = add nuw i64 %i.at, 1                    ; 9 uses
  %i.av = icmp ult i64 %i.at, %i.am
  call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.at ; 56 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8957)
  call void @llvm.experimental.noalias.scope.decl(metadata !8958)
  %i.ax = load i64, ptr %i.aw, align 8, !range !56, !alias.scope !8958, !noalias !8957, !noundef !10 ; 4 uses
  %i.ay = icmp ne i64 %i.ax, 30
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nsw i64 %i.ax, -2
  %i.ba = icmp samesign ugt i64 %i.ax, 1
  %i.bb = select i1 %i.ba, i64 %i.az, i64 28      ; 3 uses
  switch i64 %i.bb, label %bb.m [
    i64 0, label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
    i64 1, label %bb.n
    i64 2, label %bb.o
    i64 3, label %bb.p
    i64 4, label %bb.q
    i64 5, label %bb.r
    i64 6, label %bb.s
    i64 7, label %bb.t
    i64 8, label %bb.u
    i64 9, label %bb.v
    i64 10, label %bb.w
    i64 11, label %bb.x
    i64 12, label %bb.ae
    i64 13, label %bb.af
    i64 14, label %bb.ag
    i64 15, label %bb.aj
    i64 16, label %bb.ak
    i64 17, label %bb.al
    i64 18, label %bb.am
    i64 19, label %bb.an
    i64 20, label %bb.ao
    i64 21, label %bb.ap
    i64 22, label %bb.aq
    i64 23, label %bb.at
    i64 24, label %bb.aw
    i64 25, label %bb.ax
    i64 26, label %bb.be
    i64 27, label %bb.bh
    i64 28, label %bb.bi
    i64 29, label %bb.bn
  ]

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.m:                                             ; preds = %.lr.ph.split
  unreachable

bb.n:                                             ; preds = %.lr.ph.split
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.o:                                             ; preds = %.lr.ph.split
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = load i8, ptr %i.bc, align 8, !range !11, !alias.scope !8958, !noalias !8957, !noundef !10
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %.lr.ph.split
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !8958, !noalias !8957, !noundef !10 ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc128 = trunc i64 %i.bf to i8
  %.sroa.34.sroa.32.0.extract.shift96 = lshr i64 %i.bf, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %.lr.ph.split
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !8958, !noalias !8957, !noundef !10 ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc122 = trunc i64 %i.bh to i8
  %.sroa.34.sroa.32.0.extract.shift84 = lshr i64 %i.bh, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.r:                                             ; preds = %.lr.ph.split
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !8958, !noalias !8957, !noundef !10 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !8958, !noalias !8957, !noundef !10
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc121 = trunc i64 %i.bj to i8
  %.sroa.34.sroa.32.0.extract.shift82 = lshr i64 %i.bj, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.s:                                             ; preds = %.lr.ph.split
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !8958, !noalias !8957, !noundef !10 ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc120 = trunc i64 %i.bn to i8
  %.sroa.34.sroa.32.0.extract.shift80 = lshr i64 %i.bn, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.t:                                             ; preds = %.lr.ph.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !8958, !noalias !8957, !noundef !10 ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc119 = trunc i64 %i.bp to i8
  %.sroa.34.sroa.32.0.extract.shift78 = lshr i64 %i.bp, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.u:                                             ; preds = %.lr.ph.split
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !8958, !noalias !8957, !noundef !10
  %i.bt = load i64, ptr %i.bq, align 8, !alias.scope !8958, !noalias !8957, !noundef !10 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !8958, !noalias !8957, !noundef !10
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc118 = trunc i64 %i.bt to i8
  %.sroa.34.sroa.32.0.extract.shift76 = lshr i64 %i.bt, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.v:                                             ; preds = %.lr.ph.split
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !8958, !noalias !8957, !noundef !10 ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc117 = trunc i64 %i.bx to i8
  %.sroa.34.sroa.32.0.extract.shift74 = lshr i64 %i.bx, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.w:                                             ; preds = %.lr.ph.split
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !range !14, !alias.scope !8958, !noalias !8957, !noundef !10
  %i.ca = trunc nuw i32 %i.bz to i1
  br i1 %i.ca, label %bb.bo, label %bb.bp

bb.x:                                             ; preds = %.lr.ph.split
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val.i = load i64, ptr %i.cb, align 8, !range !29, !alias.scope !8958, !noalias !8957, !noundef !10 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val42.i = load ptr, ptr %i.cc, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !noundef !10 ; 2 uses
  %i.cd = atomicrmw add ptr %.val42.i, i64 1 monotonic, align 8
  %i.ce = icmp slt i64 %i.cd, 0                   ; 3 uses
  switch i64 %.val.i, label %default.unreachable [
    i64 0, label %bb.y
    i64 1, label %bb.z
    i64 2, label %bb.aa
  ]

default.unreachable:                              ; preds = %bb.ax, %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  br i1 %i.ce, label %bb.ab, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.z:                                             ; preds = %bb.x
  br i1 %i.ce, label %bb.ac, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.aa:                                            ; preds = %bb.x
  br i1 %i.ce, label %bb.ad, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.ab:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc127 = trunc nuw nsw i64 %.val.i to i8
  %i.cf = ptrtoint ptr %.val42.i to i64
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ae:                                            ; preds = %.lr.ph.split
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !noundef !10 ; 2 uses
  %i.ci = atomicrmw add ptr %i.ch, i64 1 monotonic, align 8
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %bb.bt, label %bb.bs

bb.af:                                            ; preds = %.lr.ph.split
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !range !29, !alias.scope !8958, !noalias !8957, !noundef !10 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.cn = icmp eq i64 %i.cl, 2
  br i1 %i.cn, label %bb.bu, label %.sink.split

bb.ag:                                            ; preds = %.lr.ph.split
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val43.i = load ptr, ptr %i.co, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !noundef !10 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val44.i = load i64, ptr %i.cp, align 8, !alias.scope !8958, !noalias !8957
  %.not.i.i.i = icmp eq ptr %.val43.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = getelementptr inbounds i8, ptr %.val43.i, i64 -16
  %i.cr = atomicrmw add ptr %i.cq, i64 1 monotonic, align 8
  %i.cs = icmp slt i64 %i.cr, 0
  br i1 %i.cs, label %bb.ai, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

bb.ai:                                            ; preds = %bb.ah
  store i64 %i.au, ptr %i.ad, align 8
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowmECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val43.i) #39
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.ai
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.ah, %bb.ag
  %i.ct = ptrtoint ptr %.val43.i to i64           ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc115 = trunc i64 %i.ct to i8
  %.sroa.34.sroa.32.0.extract.shift70 = lshr i64 %i.ct, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.aj:                                            ; preds = %.lr.ph.split
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aw, i64 23
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !8958, !noalias !8957, !noundef !10
  %.not.i = icmp sgt i8 %i.cw, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val53.i = load ptr, ptr %i.cu, align 8, !alias.scope !8958, !noalias !8957 ; 5 uses
  %.val54.i = load i64, ptr %i.cx, align 8, !alias.scope !8958, !noalias !8957
  br i1 %.not.i, label %bb.bx, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i

bb.ak:                                            ; preds = %.lr.ph.split
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !noundef !10 ; 2 uses
  %i.da = atomicrmw add ptr %i.cz, i64 1 monotonic, align 8
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %bb.ca, label %bb.bz

bb.al:                                            ; preds = %.lr.ph.split
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !range !25, !alias.scope !8958, !noalias !8957, !noundef !10 ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc125 = trunc i64 %i.dd to i8
  %.sroa.34.sroa.32.0.extract.shift90 = lshr i64 %i.dd, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.am:                                            ; preds = %.lr.ph.split
  %i.de = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.34.8.copyload17 = load i64, ptr %i.de, align 8, !alias.scope !8959 ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc132 = trunc i64 %.sroa.34.8.copyload17 to i8
  %.sroa.34.sroa.32.0.extract.shift104 = lshr i64 %.sroa.34.8.copyload17, 32
  %.sroa.63.8..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.63.0.copyload27 = load i32, ptr %.sroa.63.8..sroa_idx24, align 8, !alias.scope !8959
  %.sroa.63.0.insert.ext = zext i32 %.sroa.63.0.copyload27 to i64
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.an:                                            ; preds = %.lr.ph.split
  %i.df = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.34.8.copyload16 = load i64, ptr %i.df, align 8, !alias.scope !8959 ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc131 = trunc i64 %.sroa.34.8.copyload16 to i8
  %.sroa.34.sroa.32.0.extract.shift102 = lshr i64 %.sroa.34.8.copyload16, 32
  %.sroa.63.8..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.63.8.copyload23 = load i64, ptr %.sroa.63.8..sroa_idx22, align 8, !alias.scope !8959
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ao:                                            ; preds = %.lr.ph.split
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.34.8.copyload15 = load i64, ptr %i.dg, align 8, !alias.scope !8959 ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc130 = trunc i64 %.sroa.34.8.copyload15 to i8
  %.sroa.34.sroa.32.0.extract.shift100 = lshr i64 %.sroa.34.8.copyload15, 32
  %.sroa.63.8..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.63.8.copyload21 = load i64, ptr %.sroa.63.8..sroa_idx20, align 8, !alias.scope !8959
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ap:                                            ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8959
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh)
          to label %.noexc6 unwind label %.loopexit.split

.noexc6:                                          ; preds = %bb.ap
  %.sroa.34.8.copyload = load i64, ptr %i.a, align 8, !noalias !8958 ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc129 = trunc i64 %.sroa.34.8.copyload to i8
  %.sroa.34.sroa.32.0.extract.shift98 = lshr i64 %.sroa.34.8.copyload, 32
  %.sroa.63.8.copyload = load i64, ptr %.sroa.63.8..sroa_idx, align 8, !noalias !8958
  %.sroa.77.8.copyload = load i64, ptr %.sroa.77.8..sroa_idx, align 8, !noalias !8958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8959
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.aq:                                            ; preds = %.lr.ph.split
  %i.di = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val45.i = load ptr, ptr %i.di, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !noundef !10 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val46.i = load i64, ptr %i.dj, align 8, !alias.scope !8958, !noalias !8957 ; 2 uses
  %.not.i.i55.i = icmp eq ptr %.val45.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i55.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dk = getelementptr inbounds i8, ptr %.val45.i, i64 -16
  %i.dl = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %bb.as, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

bb.as:                                            ; preds = %bb.ar
  store i64 %i.au, ptr %i.ad, align 8
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val45.i, i64 noundef %.val46.i) #39
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %bb.as
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.ar, %bb.aq
  %i.dn = ptrtoint ptr %.val45.i to i64           ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc112 = trunc i64 %i.dn to i8
  %.sroa.34.sroa.32.0.extract.shift64 = lshr i64 %i.dn, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.at:                                            ; preds = %.lr.ph.split
  %i.do = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val47.i = load ptr, ptr %i.do, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !noundef !10 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val48.i = load i64, ptr %i.dp, align 8, !alias.scope !8958, !noalias !8957 ; 2 uses
  %.not.i.i56.i = icmp eq ptr %.val47.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i56.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dq = getelementptr inbounds i8, ptr %.val47.i, i64 -16
  %i.dr = atomicrmw add ptr %i.dq, i64 1 monotonic, align 8
  %i.ds = icmp slt i64 %i.dr, 0
  br i1 %i.ds, label %bb.av, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

bb.av:                                            ; preds = %bb.au
  store i64 %i.au, ptr %i.ad, align 8
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val47.i, i64 noundef %.val48.i) #39
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.av
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.au, %bb.at
  %i.dt = ptrtoint ptr %.val47.i to i64           ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc111 = trunc i64 %i.dt to i8
  %.sroa.34.sroa.32.0.extract.shift62 = lshr i64 %i.dt, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.aw:                                            ; preds = %.lr.ph.split
  %i.du = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !noundef !10 ; 2 uses
  %i.dw = atomicrmw add ptr %i.dv, i64 1 monotonic, align 8
  %i.dx = icmp slt i64 %i.dw, 0
  br i1 %i.dx, label %bb.cc, label %bb.cb

bb.ax:                                            ; preds = %.lr.ph.split
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val49.i = load i64, ptr %i.dy, align 8, !range !46, !alias.scope !8958, !noalias !8957, !noundef !10 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val50.i = load ptr, ptr %i.dz, align 8, !alias.scope !8958, !noalias !8957 ; 8 uses
  switch i64 %.val49.i, label %default.unreachable [
    i64 0, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
    i64 1, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
    i64 2, label %bb.ay
    i64 3, label %bb.az
    i64 4, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50.i) ]
  %i.ea = atomicrmw add ptr %.val50.i, i64 1 monotonic, align 8
  %i.eb = icmp slt i64 %i.ea, 0
  br i1 %i.eb, label %bb.bb, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50.i) ]
  %i.ec = atomicrmw add ptr %.val50.i, i64 1 monotonic, align 8
  %i.ed = icmp slt i64 %i.ec, 0
  br i1 %i.ed, label %bb.bc, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50.i) ]
  %i.ee = atomicrmw add ptr %.val50.i, i64 1 monotonic, align 8
  %i.ef = icmp slt i64 %i.ee, 0
  br i1 %i.ef, label %bb.bd, label %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.trap()
  unreachable

bb.bc:                                            ; preds = %bb.az
  call void @llvm.trap()
  unreachable

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.trap()
  unreachable

_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50.i) ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !range !25, !alias.scope !8958, !noalias !8957, !noundef !10
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc124 = trunc nuw nsw i64 %.val49.i to i8
  %i.ei = ptrtoint ptr %.val50.i to i64
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.be:                                            ; preds = %.lr.ph.split
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !range !25, !alias.scope !8958, !noalias !8957, !noundef !10 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val51.i = load ptr, ptr %i.el, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !noundef !10 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val52.i = load i64, ptr %i.em, align 8, !alias.scope !8958, !noalias !8957 ; 2 uses
  %.not.i.i58.i = icmp eq ptr %.val51.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i58.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.en = getelementptr inbounds i8, ptr %.val51.i, i64 -16
  %i.eo = atomicrmw add ptr %i.en, i64 1 monotonic, align 8
  %i.ep = icmp slt i64 %i.eo, 0
  br i1 %i.ep, label %bb.bg, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

bb.bg:                                            ; preds = %bb.bf
  store i64 %i.au, ptr %i.ad, align 8
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val51.i, i64 noundef %.val52.i) #39
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %bb.bg
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.bf, %bb.be
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc123 = trunc i64 %i.ek to i8
  %.sroa.34.sroa.32.0.extract.shift86 = lshr i64 %i.ek, 32
  %i.eq = ptrtoint ptr %.val51.i to i64
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bh:                                            ; preds = %.lr.ph.split
  %i.er = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !align !21, !noundef !10
  %i.et = ptrtoint ptr %i.es to i64               ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc109 = trunc i64 %i.et to i8
  %.sroa.34.sroa.32.0.extract.shift58 = lshr i64 %i.et, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bi:                                            ; preds = %.lr.ph.split
  call void @llvm.experimental.noalias.scope.decl(metadata !8960)
  %i.eu = trunc nuw i64 %i.ax to i1
  br i1 %i.eu, label %bb.bj, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aw, i64 23
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !8961, !noalias !8962, !noundef !10
  %.not.i.i = icmp sgt i8 %i.ex, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val.i.i = load ptr, ptr %i.ev, align 8, !alias.scope !8961, !noalias !8962 ; 5 uses
  %.val23.i.i = load i64, ptr %i.ey, align 8, !alias.scope !8961, !noalias !8962 ; 3 uses
  br i1 %.not.i.i, label %bb.bk, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.bj, %bb.bl, %bb.bk, %bb.bi
  %.sroa.5.sroa.0.0.i.i = phi ptr [ undef, %bb.bi ], [ %.val.i.i, %bb.bl ], [ inttoptr (i64 16 to ptr), %bb.bk ], [ %.val.i.i, %bb.bj ]
  %.sroa.5.sroa.4.0.i.i = phi i64 [ undef, %bb.bi ], [ %.val23.i.i, %bb.bl ], [ %.val23.i.i, %bb.bk ], [ %.val23.i.i, %bb.bj ]
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.bi ], [ 1, %bb.bl ], [ 1, %bb.bk ], [ 1, %bb.bj ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !8961, !noalias !8962, !nonnull !10, !noundef !10 ; 2 uses
  %i.fb = atomicrmw add ptr %i.fa, i64 1 monotonic, align 8, !noalias !8963
  %i.fc = icmp slt i64 %i.fb, 0
  br i1 %i.fc, label %bb.bm, label %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.bk:                                            ; preds = %bb.bj
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fd = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.fe = atomicrmw add ptr %i.fd, i64 1 monotonic, align 8, !noalias !8963
  %i.ff = icmp slt i64 %i.fe, 0
  br i1 %i.ff, label %.invoke, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i, !prof !13

.invoke:                                          ; preds = %bb.bl, %bb.by
  %i.fg = phi ptr [ %.val53.i, %bb.by ], [ %.val.i.i, %bb.bl ]
  store i64 %i.au, ptr %i.ad, align 8
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %i.fg) #39
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bm:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  call void @llvm.trap()
  unreachable

_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.fh = ptrtoint ptr %.sroa.5.sroa.0.0.i.i to i64 ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc108 = trunc i64 %i.fh to i8
  %.sroa.34.sroa.32.0.extract.shift56 = lshr i64 %i.fh, 32
  %i.fi = ptrtoint ptr %i.fa to i64
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bn:                                            ; preds = %.lr.ph.split
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !noundef !10 ; 2 uses
  %i.fl = atomicrmw add ptr %i.fk, i64 1 monotonic, align 8
  %i.fm = icmp slt i64 %i.fl, 0
  br i1 %i.fm, label %bb.ce, label %bb.cd

bb.bo:                                            ; preds = %bb.w
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !noundef !10
  %i.fp = atomicrmw add ptr %i.fo, i64 1 monotonic, align 8
  %i.fq = icmp slt i64 %i.fp, 0
  br i1 %i.fq, label %bb.br, label %bb.bq

bb.bp:                                            ; preds = %bb.w
  %i.fr = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %.sroa.039.0.copyload.i = load i32, ptr %i.fr, align 4, !alias.scope !8958, !noalias !8957
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.fs = zext i32 %.sroa.039.0.copyload.i to i64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sroa.6.0.in.i = phi ptr [ %.sroa.440.0..sroa_idx.i, %bb.bp ], [ %i.fn, %bb.bo ]
  %.sroa.52.0.i = phi i64 [ %i.fs, %bb.bp ], [ 0, %bb.bo ]
  %.sroa.01.0.i = phi i8 [ 0, %bb.bp ], [ 1, %bb.bo ]
  %.sroa.6.0.i = load ptr, ptr %.sroa.6.0.in.i, align 4, !alias.scope !8958, !noalias !8957
  %.sroa.7.0.in.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.7.0.i190 = load i64, ptr %.sroa.7.0.in.i, align 8, !alias.scope !8958, !noalias !8957
  %i.ft = ptrtoint ptr %.sroa.6.0.i to i64
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.br:                                            ; preds = %bb.bo
  call void @llvm.trap()
  unreachable

bb.bs:                                            ; preds = %bb.ae
  %i.fu = ptrtoint ptr %i.ch to i64               ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc116 = trunc i64 %i.fu to i8
  %.sroa.34.sroa.32.0.extract.shift72 = lshr i64 %i.fu, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bt:                                            ; preds = %bb.ae
  call void @llvm.trap()
  unreachable

bb.bu:                                            ; preds = %bb.af
  %i.fv = load ptr, ptr %i.cm, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !noundef !10
  %i.fw = atomicrmw add ptr %i.fv, i64 1 monotonic, align 8
  %i.fx = icmp slt i64 %i.fw, 0
  br i1 %i.fx, label %bb.bw, label %bb.bv

.sink.split:                                      ; preds = %bb.af
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !8958, !noalias !8957, !noundef !10
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split, %bb.bu
  %.sroa.9.0.i = phi i64 [ undef, %bb.bu ], [ %i.fz, %.sink.split ]
  %.sroa.635.0.i = load ptr, ptr %i.cm, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !noundef !10
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc126 = trunc nuw nsw i64 %i.cl to i8
  %i.ga = ptrtoint ptr %.sroa.635.0.i to i64
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.trap()
  unreachable

bb.bx:                                            ; preds = %bb.aj
  %.not.i.i59.i = icmp eq ptr %.val53.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i59.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gb = getelementptr inbounds i8, ptr %.val53.i, i64 -16
  %i.gc = atomicrmw add ptr %i.gb, i64 1 monotonic, align 8
  %i.gd = icmp slt i64 %i.gc, 0
  br i1 %i.gd, label %.invoke, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.aj, %bb.by, %bb.bx
  %.sroa.017.0.i = phi ptr [ %.val53.i, %bb.by ], [ inttoptr (i64 16 to ptr), %bb.bx ], [ %.val53.i, %bb.aj ]
  %i.ge = ptrtoint ptr %.sroa.017.0.i to i64      ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc114 = trunc i64 %i.ge to i8
  %.sroa.34.sroa.32.0.extract.shift68 = lshr i64 %i.ge, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.bz:                                            ; preds = %bb.ak
  %i.gf = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !align !21, !noundef !10
  %i.gh = ptrtoint ptr %i.cz to i64               ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc113 = trunc i64 %i.gh to i8
  %.sroa.34.sroa.32.0.extract.shift66 = lshr i64 %i.gh, 32
  %i.gi = ptrtoint ptr %i.gg to i64
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ca:                                            ; preds = %bb.ak
  call void @llvm.trap()
  unreachable

bb.cb:                                            ; preds = %bb.aw
  %i.gj = ptrtoint ptr %i.dv to i64               ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc110 = trunc i64 %i.gj to i8
  %.sroa.34.sroa.32.0.extract.shift60 = lshr i64 %i.gj, 32
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.cc:                                            ; preds = %bb.aw
  call void @llvm.trap()
  unreachable

bb.cd:                                            ; preds = %bb.bn
  %i.gk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !8958, !noalias !8957, !nonnull !10, !align !21, !noundef !10
  %i.gm = ptrtoint ptr %i.fk to i64               ; 3 uses
  %.sroa.34.sroa.0.sroa.0.0.extract.trunc107 = trunc i64 %i.gm to i8
  %.sroa.34.sroa.32.0.extract.shift54 = lshr i64 %i.gm, 32
  %i.gn = ptrtoint ptr %i.gl to i64
  br label %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ce:                                            ; preds = %bb.bn
  call void @llvm.trap()
  unreachable

.loopexit.split:                                  ; preds = %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split.us, %.loopexit.split
  %.us-phi = phi i64 [ %i.au, %.loopexit.split ], [ %i.ao, %.loopexit.split.us ]
  %.us-phi214 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  store i64 %.us-phi, ptr %i.ad, align 8
  br label %bb.cf

.loopexit.split-lp:                               ; preds = %bb.ai, %.invoke, %bb.as, %bb.av, %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %.us-phi214, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #44
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.h

_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.cd, %bb.cb, %bb.bz, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, %bb.bv, %bb.bs, %bb.bq, %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %bb.bh, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, %.noexc6, %bb.ao, %bb.an, %bb.am, %bb.al, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %.lr.ph.split
  %.sroa.34.sroa.0.sroa.32.sroa.0.0 = phi i64 [ %i.bb, %.lr.ph.split ], [ %i.gm, %bb.cd ], [ 0, %bb.n ], [ 0, %bb.o ], [ %i.bf, %bb.p ], [ %i.bh, %bb.q ], [ %i.bj, %bb.r ], [ %i.bn, %bb.s ], [ %i.bp, %bb.t ], [ %i.bt, %bb.u ], [ %i.bx, %bb.v ], [ 0, %bb.bq ], [ 0, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.fu, %bb.bs ], [ 0, %bb.bv ], [ %i.ct, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.ge, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.gh, %bb.bz ], [ %i.dd, %bb.al ], [ %.sroa.34.8.copyload17, %bb.am ], [ %.sroa.34.8.copyload16, %bb.an ], [ %.sroa.34.8.copyload15, %bb.ao ], [ %.sroa.34.8.copyload, %.noexc6 ], [ %i.dn, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.dt, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.gj, %bb.cb ], [ 0, %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.ek, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.et, %bb.bh ], [ %i.fh, %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ]
  %.sroa.34.sroa.0.sroa.0.0 = phi i8 [ undef, %.lr.ph.split ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc107, %bb.cd ], [ undef, %bb.n ], [ %i.bd, %bb.o ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc128, %bb.p ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc122, %bb.q ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc121, %bb.r ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc120, %bb.s ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc119, %bb.t ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc118, %bb.u ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc117, %bb.v ], [ %.sroa.01.0.i, %bb.bq ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc127, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc116, %bb.bs ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc126, %bb.bv ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc115, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc114, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc113, %bb.bz ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc125, %bb.al ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc132, %bb.am ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc131, %bb.an ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc130, %bb.ao ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc129, %.noexc6 ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc112, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc111, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc110, %bb.cb ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc124, %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc123, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc109, %bb.bh ], [ %.sroa.34.sroa.0.sroa.0.0.extract.trunc108, %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ]
  %.sroa.34.sroa.32.0 = phi i64 [ %i.bb, %.lr.ph.split ], [ %.sroa.34.sroa.32.0.extract.shift54, %bb.cd ], [ 0, %bb.n ], [ 0, %bb.o ], [ %.sroa.34.sroa.32.0.extract.shift96, %bb.p ], [ %.sroa.34.sroa.32.0.extract.shift84, %bb.q ], [ %.sroa.34.sroa.32.0.extract.shift82, %bb.r ], [ %.sroa.34.sroa.32.0.extract.shift80, %bb.s ], [ %.sroa.34.sroa.32.0.extract.shift78, %bb.t ], [ %.sroa.34.sroa.32.0.extract.shift76, %bb.u ], [ %.sroa.34.sroa.32.0.extract.shift74, %bb.v ], [ %.sroa.52.0.i, %bb.bq ], [ 0, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.sroa.34.sroa.32.0.extract.shift72, %bb.bs ], [ 0, %bb.bv ], [ %.sroa.34.sroa.32.0.extract.shift70, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.sroa.34.sroa.32.0.extract.shift68, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.sroa.34.sroa.32.0.extract.shift66, %bb.bz ], [ %.sroa.34.sroa.32.0.extract.shift90, %bb.al ], [ %.sroa.34.sroa.32.0.extract.shift104, %bb.am ], [ %.sroa.34.sroa.32.0.extract.shift102, %bb.an ], [ %.sroa.34.sroa.32.0.extract.shift100, %bb.ao ], [ %.sroa.34.sroa.32.0.extract.shift98, %.noexc6 ], [ %.sroa.34.sroa.32.0.extract.shift64, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.sroa.34.sroa.32.0.extract.shift62, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.sroa.34.sroa.32.0.extract.shift60, %bb.cb ], [ 0, %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.sroa.34.sroa.32.0.extract.shift86, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.sroa.34.sroa.32.0.extract.shift58, %bb.bh ], [ %.sroa.34.sroa.32.0.extract.shift56, %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ]
  %.sroa.63.0 = phi i64 [ undef, %.lr.ph.split ], [ %i.gn, %bb.cd ], [ undef, %bb.n ], [ undef, %bb.o ], [ undef, %bb.p ], [ undef, %bb.q ], [ %i.bl, %bb.r ], [ undef, %bb.s ], [ undef, %bb.t ], [ %i.bv, %bb.u ], [ undef, %bb.v ], [ %i.ft, %bb.bq ], [ %i.cf, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ undef, %bb.bs ], [ %i.ga, %bb.bv ], [ %.val44.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.val54.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.gi, %bb.bz ], [ undef, %bb.al ], [ %.sroa.63.0.insert.ext, %bb.am ], [ %.sroa.63.8.copyload23, %bb.an ], [ %.sroa.63.8.copyload21, %bb.ao ], [ %.sroa.63.8.copyload, %.noexc6 ], [ %.val46.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.val48.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ undef, %bb.cb ], [ %i.ei, %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.eq, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ undef, %bb.bh ], [ %.sroa.5.sroa.4.0.i.i, %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ]
  %.sroa.77.0 = phi i64 [ undef, %.lr.ph.split ], [ undef, %bb.cd ], [ undef, %bb.n ], [ undef, %bb.o ], [ undef, %bb.p ], [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %bb.s ], [ undef, %bb.t ], [ %i.bs, %bb.u ], [ undef, %bb.v ], [ %.sroa.7.0.i190, %bb.bq ], [ undef, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ undef, %bb.bs ], [ %.sroa.9.0.i, %bb.bv ], [ undef, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ undef, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ undef, %bb.bz ], [ undef, %bb.al ], [ undef, %bb.am ], [ undef, %bb.an ], [ undef, %bb.ao ], [ %.sroa.77.8.copyload, %.noexc6 ], [ undef, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ undef, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ undef, %bb.cb ], [ %i.eh, %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.val52.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ undef, %bb.bh ], [ %i.fi, %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ]
  %.sroa.0.0188 = phi i64 [ 2, %.lr.ph.split ], [ 31, %bb.cd ], [ 3, %bb.n ], [ 4, %bb.o ], [ 5, %bb.p ], [ 6, %bb.q ], [ 7, %bb.r ], [ 8, %bb.s ], [ 9, %bb.t ], [ 10, %bb.u ], [ 11, %bb.v ], [ 12, %bb.bq ], [ 13, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 14, %bb.bs ], [ 15, %bb.bv ], [ 16, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ 17, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ 18, %bb.bz ], [ 19, %bb.al ], [ 20, %bb.am ], [ 21, %bb.an ], [ 22, %bb.ao ], [ 23, %.noexc6 ], [ 24, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ 25, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ 26, %bb.cb ], [ 27, %_RNvXsf_NtNtCsdaEETE4DqmE_13typst_library11foundations4funcNtB5_9FuncInnerNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 28, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8jFhWeO2DFb_9typst_pdf.exit.i ], [ 29, %bb.bh ], [ %.sroa.0.0.i.i, %_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB5_6ModuleNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ]
  %.sroa.34.sroa.0.sroa.0.0.insert.ext = zext i8 %.sroa.34.sroa.0.sroa.0.0 to i64
  %.sroa.34.sroa.32.0.insert.shift = shl nuw i64 %.sroa.34.sroa.32.0, 32
  %.sroa.34.sroa.0.sroa.32.sroa.0.0.masked = and i64 %.sroa.34.sroa.0.sroa.32.sroa.0.0, 4294967040
  %.sroa.34.sroa.0.0.insert.ext = or disjoint i64 %.sroa.34.sroa.0.sroa.32.sroa.0.0.masked, %.sroa.34.sroa.0.sroa.0.0.insert.ext
  %.sroa.34.sroa.0.0.insert.insert = or disjoint i64 %.sroa.34.sroa.32.0.insert.shift, %.sroa.34.sroa.0.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.0188, ptr %i.b, align 16
  store i64 %.sroa.34.sroa.0.0.insert.insert, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.63.0, ptr %.sroa.7.0..sroa_idx, align 16
  store i64 %.sroa.77.0, ptr %.sroa.8.0..sroa_idx, align 8
  %i.go = invoke fastcc noundef zeroext i1 @_RINvNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB5_7Content8traverse10walk_valueNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build19progress_tree_start0uEB1F_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.cg unwind label %.loopexit.split

bb.cg:                                            ; preds = %_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  br i1 %i.go, label %.split.us, label %bb.ch

.split.us:                                        ; preds = %bb.cg, %bb.j
  %.us-phi215 = phi i64 [ %i.ao, %bb.j ], [ %i.au, %bb.cg ]
  store i64 %.us-phi215, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c)
          to label %bb.ci unwind label %bb.f

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.au, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split

bb.ci:                                            ; preds = %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gp = load i64, ptr %0, align 8, !range !56, !noundef !10 ; 3 uses
  %i.gq = icmp ne i64 %i.gp, 30
  call void @llvm.assume(i1 %i.gq)
  %i.gr = add nsw i64 %i.gp, -2
  %i.gs = icmp samesign ugt i64 %i.gp, 1
  %i.gt = select i1 %i.gs, i64 %i.gr, i64 28
  switch i64 %i.gt, label %.sink.split279 [
    i64 21, label %bb.cj
    i64 23, label %bb.cj
  ]

.sink.split279:                                   ; preds = %bb.ci, %bb.g
  %.sroa.0.1.ph = phi i1 [ %.sroa.0.0, %bb.g ], [ true, %bb.ci ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
  br label %bb.cj

bb.cj:                                            ; preds = %.sink.split279, %bb.ci, %bb.ci, %bb.g, %bb.g
  %.sroa.0.1 = phi i1 [ true, %bb.ci ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.g ], [ true, %bb.ci ], [ %.sroa.0.1.ph, %.sink.split279 ]
  ret i1 %.sroa.0.1

bb.ck:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #44
          to label %bb.cl unwind label %bb.h

bb.cl:                                            ; preds = %bb.ck, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 1, 137) %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8966)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !17, !alias.scope !8966, !noundef !10 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8966
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !8966
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 1, 161) %4), !noalias !8966
  %i.h = load i64, ptr %i.a, align 8, !range !19, !noalias !8966, !noundef !10
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !63, !noalias !8966, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !8966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8966
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #39
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !8966, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8966
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !8966
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !8966
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs0_NtNtCsidf7BFzONoc_6krilla4text5groupINtB8_12GlyphSpannerpENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next4funcNtNtCs8jFhWeO2DFb_9typst_pdf4text8PdfGlyphEB2d_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i24 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, i1 noundef zeroext %4, ptr noundef nonnull %5, ptr nofree noundef nonnull align 8 captures(none) %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = load i16, ptr %i.e, align 4, !alias.scope !8996, !noundef !10
  %.sroa.430.0.insert.ext = zext i24 %2 to i64
  %.sroa.430.0.insert.shift = shl nuw nsw i64 %.sroa.430.0.insert.ext, 32
  %.sroa.029.0.insert.ext = zext i16 %i.f to i64
  %.sroa.029.0.insert.insert = or disjoint i64 %.sroa.430.0.insert.shift, %.sroa.029.0.insert.ext
  invoke fastcc void @_RNvMNtCsidf7BFzONoc_6krilla4textNtB2_13FontContainer9add_glyph(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(256) %5, i64 %.sroa.029.0.insert.insert)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsidf7BFzONoc_6krilla4text13CIDIdentifierECs8jFhWeO2DFb_9typst_pdf.exit.sink.split.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.04.0.copyload = load i32, ptr %i.h, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8998)
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !8998, !noalias !8997, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !8999
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !8998, !noalias !8997, !nonnull !10, !noundef !10 ; 2 uses
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !8999
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.p, align 8, !alias.scope !8997, !noalias !8998
  store ptr null, ptr %i.b, align 8, !alias.scope !8997, !noalias !8998
  br label %_RNvXsd_NtCsidf7BFzONoc_6krilla4textNtB5_14FontIdentifierNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !8998, !noalias !8997, !noundef !10
  store ptr %i.i, ptr %i.b, align 8, !alias.scope !8997, !noalias !8998
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.r, ptr %i.s, align 8, !alias.scope !8997, !noalias !8998
  br label %_RNvXsd_NtCsidf7BFzONoc_6krilla4textNtB5_14FontIdentifierNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.af, %bb.k
  %.pn = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.bs, %bb.af ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsidf7BFzONoc_6krilla4text14FontIdentifierECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #44
          to label %bb.ai unwind label %bb.ah

bb.k:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8jFhWeO2DFb_9typst_pdf.exit, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread63, %bb.m, %_RNvXsd_NtCsidf7BFzONoc_6krilla4textNtB5_14FontIdentifierNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RNvXsd_NtCsidf7BFzONoc_6krilla4textNtB5_14FontIdentifierNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.h, %bb.f
  %i.u = invoke fastcc { ptr, ptr } @_RNvMNtCsidf7BFzONoc_6krilla4textNtB2_13FontContainer23get_from_identifier_mut(ptr noalias nofree noundef align 8 dereferenceable(256) %5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.b)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.l:                                             ; preds = %_RNvXsd_NtCsidf7BFzONoc_6krilla4textNtB5_14FontIdentifierNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 3 uses
  %i.w = extractvalue { ptr, ptr } %i.u, 1        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.m, label %bb.o, !prof !13

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #39
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8jFhWeO2DFb_9typst_pdf.exit, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread63, %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
end_hunk_0
