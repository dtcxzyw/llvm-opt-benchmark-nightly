Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/url-0ea03bfcb986b98b.url.1d492e49ee020898-cgu.0?download=true
inline.NumInlined: 292
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCs2vT3jxLudSK_3url28file_url_segments_to_pathbuf:bb.a
._crit_edge.i.i.i:                                ; preds = %bb.m, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.al, %bb.m ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.m ], [ 1, %.lr.ph.i.i.i ]
  %i.ap = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.aq = insertvalue { i64, i64 } %i.ap, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.m
  %.sroa.01.05.i.i.i = phi i64 [ %i.au, %bb.m ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.05.i.i.i
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !108, !noalias !109, !noundef !5
  %i.at = icmp eq i8 %i.as, %.pre.i.i
  br i1 %i.at, label %._crit_edge.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.au = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.au, %i.al
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.l, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.aq, %._crit_edge.i.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %i.av = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.n, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i

bb.n:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i
  %i.ax = extractvalue { i64, i64 } %.merged.i.i.i, 1
  %i.ay = add i64 %i.ak, 1
  %i.az = add i64 %i.ay, %i.ax                    ; 8 uses
  %.not11.i.i = icmp ult i64 %i.az, %i.r
  %.not12.i.i = icmp ugt i64 %i.az, %.val1.i
  %or.cond.i.i = or i1 %.not11.i.i, %.not12.i.i
  br i1 %or.cond.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.ba = icmp ult i64 %i.n, %i.az
  br i1 %i.ba, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i, label %.lr.ph.split.i.i

bb.p:                                             ; preds = %bb.n
  %i.bb = sub nuw i64 %i.az, %i.r                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bb
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.bc, ptr nonnull %i.o, i64 %i.r), !noalias !107
  %i.bd = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bd, label %select.unfold, label %bb.o

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i: ; preds = %bb.o, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i, %bb.k
  %.lcssa4654 = phi i64 [ %.lcssa4655, %bb.k ], [ %i.n, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i ], [ %i.az, %bb.o ]
  store i8 1, ptr %i.j, align 1, !alias.scope !110
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.lcssa4050
  %or.cond.not.i.i = select i1 %i.x, i1 true, i1 %.not.i3.i
  br i1 %or.cond.not.i.i, label %select.unfold, label %.split58

select.unfold:                                    ; preds = %bb.p, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i
  %.lcssa4653 = phi i64 [ %.lcssa4654, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.az, %bb.p ]
  %.lcssa4049 = phi i64 [ %.lcssa4050, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.az, %bb.p ]
  %i.be = phi i8 [ 1, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ 0, %bb.p ]
  %.pn = phi i64 [ %.pre2.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i ], [ %i.bb, %bb.p ]
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.lcssa4050
  %i.bf = load i64, ptr %i.e, align 8, !alias.scope !104, !noundef !5 ; 3 uses
  %i.bg = load i64, ptr %i.c, align 8, !range !105, !alias.scope !104, !noundef !5
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.q, label %bb.ae

bb.q:                                             ; preds = %select.unfold
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split

.split58:                                         ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i, %.split, %.split.us, %bb.j, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCs2vT3jxLudSK_3url.exit.i.us.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bi = load i64, ptr %i.e, align 8, !noundef !5 ; 9 uses
  %i.bj = icmp sgt i64 %i.bi, -1
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp samesign ugt i64 %i.bi, 2
  %.pre83 = load ptr, ptr %i.d, align 8           ; 5 uses
  br i1 %i.bk, label %bb.r, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.t, %bb.r, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE8push_mutCs2vT3jxLudSK_3url.exit30, %.split58
  %i.bl = phi ptr [ %.pre83, %.split58 ], [ %.pre82, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE8push_mutCs2vT3jxLudSK_3url.exit30 ], [ %.pre83, %bb.r ], [ %.pre83, %bb.t ]
  %i.bm = phi i64 [ %i.bi, %.split58 ], [ %i.by, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE8push_mutCs2vT3jxLudSK_3url.exit30 ], [ %i.bi, %bb.r ], [ %i.bi, %bb.t ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.split58
  %i.bn = getelementptr i8, ptr %.pre83, i64 %i.bi ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -2
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !5
  %i.bq = and i8 %i.bp, -33
  %i.br = add i8 %i.bq, -65
  %or.cond36 = icmp ult i8 %i.br, 26
  br i1 %or.cond36, label %bb.t, label %thread-pre-split

bb.s:                                             ; preds = %bb.x
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bs = getelementptr i8, ptr %i.bn, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !5
  switch i8 %i.bt, label %thread-pre-split [
    i8 58, label %bb.u
    i8 124, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.bu = load i64, ptr %i.c, align 8, !range !105, !alias.scope !111, !noundef !5
  %i.bv = icmp eq i64 %i.bi, %i.bu
  br i1 %i.bv, label %bb.v, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE8push_mutCs2vT3jxLudSK_3url.exit30

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %._RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE8push_mutCs2vT3jxLudSK_3url.exit30_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp

._RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE8push_mutCs2vT3jxLudSK_3url.exit30_crit_edge: ; preds = %bb.v
  %.pre = load ptr, ptr %i.d, align 8, !alias.scope !111
  br label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE8push_mutCs2vT3jxLudSK_3url.exit30

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE8push_mutCs2vT3jxLudSK_3url.exit30: ; preds = %._RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE8push_mutCs2vT3jxLudSK_3url.exit30_crit_edge, %bb.u
  %i.bw = phi ptr [ %.pre, %._RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechE8push_mutCs2vT3jxLudSK_3url.exit30_crit_edge ], [ %.pre83, %bb.u ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bi
  store i8 47, ptr %i.bx, align 1
  %i.by = add nuw i64 %i.bi, 1                    ; 2 uses
  store i64 %i.by, ptr %i.e, align 8, !alias.scope !111
  %.pre82 = load ptr, ptr %i.d, align 8
  br label %thread-pre-split

bb.w:                                             ; preds = %thread-pre-split
  %i.bz = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.ca = trunc nuw i64 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !12, !noundef !5 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ca, label %bb.x, label %bb.y, !prof !10

bb.x:                                             ; preds = %bb.w
  %i.ce = load i64, ptr %i.cd, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.cc, i64 %i.ce) #20
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.w
  %i.cf = load ptr, ptr %i.cd, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cg = icmp ule i64 %i.bm, %i.cc
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not26 = icmp eq i64 %i.bm, 0
  br i1 %.not26, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.ac, %bb.y
  store i64 %i.cc, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bm, ptr %.sroa.512.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs2vT3jxLudSK_3url.exit32 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs2vT3jxLudSK_3url.exit32: ; preds = %bb.z
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull align 1 %i.bl, i64 %i.bm, i1 false)
  br label %bb.z

bb.ad:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs2vT3jxLudSK_3url.exit32, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs2vT3jxLudSK_3url.exit, %bb.c
  ret void

bb.ae:                                            ; preds = %select.unfold, %bb.q
  %i.cj = load ptr, ptr %i.d, align 8, !alias.scope !104, !nonnull !5, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.bf
  store i8 47, ptr %i.ck, align 1
  %i.cl = add i64 %i.bf, 1
  store i64 %i.cl, ptr %i.e, align 8, !alias.scope !104
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.pn
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VechE16extend_desugaredNtCslj2VLHWbzoG_16percent_encoding13PercentDecodeECs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %.sroa.0.1.i, ptr noundef nonnull %i.cm)
          to label %.split unwind label %.loopexit.split-lp.loopexit.split

bb.af:                                            ; preds = %.loopexit.split-lp
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCs2vT3jxLudSK_3urlNtB2_12ParseOptions5parse(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !12, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.j = icmp ule i64 %3, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %4 = load ptr, ptr %i.k, align 8, !align !7, !noundef !5
  %i.l = load ptr, ptr %1, align 8, !noundef !5
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load ptr, ptr %i.m, align 8
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %7 = load <2 x ptr>, ptr %5, align 8
  %8 = insertelement <4 x ptr> poison, ptr %4, i64 0
  %9 = insertelement <4 x ptr> %8, ptr %i.l, i64 1
  %10 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = shufflevector <4 x ptr> %9, <4 x ptr> %10, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %11, ptr %i.n, align 8
  %12 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %6, ptr %12, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.o, align 8
  call void @_RNvMs8_NtCs2vT3jxLudSK_3url6parserNtB5_6Parser9parse_url(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i64 -1, -9223372036854775808) i64 @_RNvMs2_NtCs2vT3jxLudSK_3url7slicingNtB7_3Url5index(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i8 noundef range(i8 0, 16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  switch i8 %1, label %default.unreachable42 [
    i8 0, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit28._crit_edge
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.l
    i8 6, label %bb.p
    i8 7, label %bb.q
    i8 8, label %bb.r
    i8 9, label %bb.s
    i8 10, label %bb.t
    i8 11, label %bb.u
    i8 12, label %bb.v
    i8 13, label %bb.w
    i8 14, label %bb.x
    i8 15, label %bb.y
  ]

default.unreachable42:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !noundef !5
  %i.c = zext i32 %i.b to i64
  br label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit28._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val24 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val25 = load i64, ptr %i.g, align 8, !noundef !5 ; 5 uses
  %i.h = zext i32 %i.e to i64                     ; 8 uses
  %i.i = icmp eq i32 %i.e, 0
  br i1 %i.i, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp ugt i64 %.val25, %i.h
  br i1 %.not.i.i.i.i, label %bb.e, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.d
  %i.j = icmp eq i64 %.val25, %i.h
  br i1 %i.j, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.h
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !130, !noundef !5
  %i.m = icmp sgt i8 %i.l, -65
  br i1 %i.m, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val24, i64 noundef %.val25, i64 noundef range(i64 0, 4294967296) %i.h, i64 noundef %.val25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #15
  unreachable

_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit: ; preds = %bb.c, %.split.i.i.i.i, %bb.e
  %i.n = sub nuw i64 %.val25, %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.h
  %i.p = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 3)
  br i1 %i.p, label %bb.aa, label %bb.z

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8, !noundef !5
  %i.s = zext i32 %i.r to i64
  br label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit28._crit_edge

bb.h:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val22 = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val23 = load i64, ptr %i.w, align 8, !noundef !5 ; 7 uses
  %i.x = zext i32 %i.u to i64                     ; 6 uses
  %i.y = icmp eq i32 %i.u, 0
  br i1 %i.y, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit28, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i26 = icmp ugt i64 %.val23, %i.x
  br i1 %.not.i.i.i.i26, label %bb.j, label %.split.i.i.i.i27

.split.i.i.i.i27:                                 ; preds = %bb.i
  %i.z = icmp eq i64 %.val23, %i.x
  br i1 %i.z, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit28, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.val22, i64 %i.x
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !131, !noundef !5
  %i.ac = icmp sgt i8 %i.ab, -65
  br i1 %i.ac, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit28, label %bb.k

bb.k:                                             ; preds = %bb.j, %.split.i.i.i.i27
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val22, i64 noundef %.val23, i64 noundef range(i64 0, 4294967296) %i.x, i64 noundef %.val23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #15
  unreachable

_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit28: ; preds = %bb.h, %.split.i.i.i.i27, %bb.j
  %i.ad = sub nuw i64 %.val23, %i.x
  %i.ae = getelementptr inbounds nuw i8, ptr %.val22, i64 %i.x
  %i.af = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 3)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = zext i32 %i.ah to i64                   ; 5 uses
  br i1 %i.af, label %bb.ab, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit28._crit_edge

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !5 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val21 = load i64, ptr %i.am, align 8, !noundef !5 ; 7 uses
  %i.an = zext i32 %i.ak to i64                   ; 6 uses
  %i.ao = icmp eq i32 %i.ak, 0
  br i1 %i.ao, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit31, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i29 = icmp ugt i64 %.val21, %i.an
  br i1 %.not.i.i.i.i29, label %bb.n, label %.split.i.i.i.i30

.split.i.i.i.i30:                                 ; preds = %bb.m
  %i.ap = icmp eq i64 %.val21, %i.an
  br i1 %i.ap, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit31, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.an
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !132, !noundef !5
  %i.as = icmp sgt i8 %i.ar, -65
  br i1 %i.as, label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit31, label %bb.o

bb.o:                                             ; preds = %bb.n, %.split.i.i.i.i30
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val21, i64 noundef range(i64 0, 4294967296) %i.an, i64 noundef %.val21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #15
  unreachable

_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit31: ; preds = %bb.l, %.split.i.i.i.i30, %bb.n
  %i.at = sub nuw i64 %.val21, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 %i.an
  %i.av = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs2vT3jxLudSK_3url(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 3)
  br i1 %i.av, label %bb.af, label %bb.ae

bb.p:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !5
  %i.ay = zext i32 %i.ax to i64
  br label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit28._crit_edge

bb.q:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load i32, ptr %i.az, align 8, !noundef !5
  %i.bb = zext i32 %i.ba to i64
  br label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit28._crit_edge

bb.r:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load i16, ptr %i.bc, align 8, !range !13, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load i32, ptr %i.be, align 8, !noundef !5
  %i.bg = zext i32 %i.bf to i64
  %i.bh = zext nneg i16 %i.bd to i64
  %spec.select43 = add nuw nsw i64 %i.bg, %i.bh
  br label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit28._crit_edge

bb.s:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load i16, ptr %i.bi, align 8, !range !13, !noundef !5
  %i.bk = trunc nuw i16 %i.bj to i1
  br i1 %i.bk, label %bb.aj, label %bb.an

bb.t:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bm = load i32, ptr %i.bl, align 4, !noundef !5
  %i.bn = zext i32 %i.bm to i64
  br label %_RINvMs_Cs2vT3jxLudSK_3urlNtB5_3Url5sliceINtNtNtCshzWfHUSfYae_4core3ops5range9RangeFrommEEB5_.exit28._crit_edge

bb.u:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !range !14, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = trunc nuw i32 %i.bp to i1
  br i1 %i.bs, label %bb.ao, label %bb.ap

bb.v:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !range !14, !noundef !5
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = trunc nuw i32 %i.bu to i1
end_hunk_0
