Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.15?download=true
inline.NumInlined: 729
inline.NumDeleted: 289
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCslkzCjlEuW1f_5xtask7release9changelog13get_changelog:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %.body280, %bb.ib, %bb.hq, %bb.ai
  %common.resume.op = phi { ptr, i32 } [ %i.ss, %bb.hq ], [ %i.gf, %bb.ai ], [ %.pn244, %.body280 ], [ %i.tb, %bb.ib ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit286: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit283
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit481, %bb.ia, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  ret void

_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit: ; preds = %.noexc257, %.noexc256
  %.merged.i = phi { ptr, i64 } [ %..i, %.noexc257 ], [ %i.fe, %.noexc256 ] ; 2 uses
  %i.gh = extractvalue { ptr, i64 } %.merged.i, 0
  %i.gi = extractvalue { ptr, i64 } %.merged.i, 1
  %i.gj = invoke { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gh, i64 noundef %i.gi)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.al:                                            ; preds = %_RNvXs3_NtCshzWfHUSfYae_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit
  %i.gk = extractvalue { ptr, i64 } %i.gj, 0      ; 4 uses
  %i.gl = extractvalue { ptr, i64 } %i.gj, 1      ; 4 uses
  %i.gm = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gk, i64 noundef %i.gl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 20)
          to label %.noexc289 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc289:                                        ; preds = %bb.al
  br i1 %i.gm, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.noexc289
  %i.gn = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gk, i64 noundef %i.gl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 15)
          to label %.noexc290 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc290:                                        ; preds = %bb.am
  br i1 %i.gn, label %bb.at, label %.backedge

bb.an:                                            ; preds = %.noexc289
  %i.go = add i64 %i.gl, -20                      ; 6 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 20 ; 5 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.backedge, %bb.an
  %i.gq = phi i64 [ 0, %bb.an ], [ %i.hf, %.lr.ph.split.i.i.i.backedge ] ; 4 uses
  %i.gr = sub nuw i64 %i.go, %i.gq                ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gq ; 2 uses
  %i.gt = icmp samesign ult i64 %i.gr, 16
  br i1 %i.gt, label %.preheader.i.i.i.i, label %bb.ao

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ao:                                            ; preds = %.lr.ph.split.i.i.i
  %i.gu = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gs, i64 noundef range(i64 0, -9223372036854775808) %i.gr)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i unwind label %.loopexit

._crit_edge.i.i.i.i:                              ; preds = %bb.ap, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.gr, %bb.ap ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.ap ]
  %i.gv = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.gw = insertvalue { i64, i64 } %i.gv, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.ap
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ha, %bb.ap ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sroa.01.05.i.i.i.i
  %i.gy = load i8, ptr %i.gx, align 1, !alias.scope !933, !noalias !940, !noundef !5
  %i.gz = icmp eq i8 %i.gy, 32
  br i1 %i.gz, label %._crit_edge.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ha = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ha, %i.gr
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %bb.ao, %._crit_edge.i.i.i.i
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.gw, %._crit_edge.i.i.i.i ], [ %i.gu, %bb.ao ] ; 2 uses
  %i.hb = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.hc = trunc nuw i64 %i.hb to i1
  br i1 %i.hc, label %bb.aq, label %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.thread.i

bb.aq:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i
  %i.hd = extractvalue { i64, i64 } %.merged.i.i.i.i, 1 ; 2 uses
  %i.he = add i64 %i.gq, 1
  %i.hf = add i64 %i.he, %i.hd                    ; 2 uses
  %.not12.i.i.i = icmp ugt i64 %i.hf, %i.go       ; 2 uses
  %i.hg = add i64 %i.hd, %i.gq                    ; 4 uses
  %or.cond.i.not.i.i = icmp ult i64 %i.hg, %i.go
  br i1 %or.cond.i.not.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not12.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.thread.i, label %.lr.ph.split.i.i.i.backedge

bb.as:                                            ; preds = %bb.aq
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.hg
  %lhsc.i.i = load i8, ptr %i.hh, align 1, !alias.scope !944
  %i.hi = icmp eq i8 %lhsc.i.i, 32                ; 2 uses
  %brmerge.i.i = or i1 %.not12.i.i.i, %i.hi
  br i1 %brmerge.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.i, label %.lr.ph.split.i.i.i.backedge

.lr.ph.split.i.i.i.backedge:                      ; preds = %bb.as, %bb.ar
  br label %.lr.ph.split.i.i.i

_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.i: ; preds = %bb.as
  br i1 %i.hi, label %bb.bf, label %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.thread.i

bb.at:                                            ; preds = %.noexc290
  %i.hj = add i64 %i.gl, -15                      ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gk, i64 15 ; 5 uses
  br label %.lr.ph.split.i.i38.i

.lr.ph.split.i.i38.i:                             ; preds = %.lr.ph.split.i.i38.i.backedge, %bb.at
  %i.hl = phi i64 [ 0, %bb.at ], [ %i.ia, %.lr.ph.split.i.i38.i.backedge ] ; 4 uses
  %i.hm = sub nuw i64 %i.hj, %i.hl                ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hl ; 2 uses
  %i.ho = icmp samesign ult i64 %i.hm, 16
  br i1 %i.ho, label %.preheader.i.i.i50.i, label %bb.au

.preheader.i.i.i50.i:                             ; preds = %.lr.ph.split.i.i38.i
  %.not.i.i.i51.i = icmp eq i64 %i.hm, 0
  br i1 %.not.i.i.i51.i, label %._crit_edge.i.i.i55.i, label %.lr.ph.i.i.i52.i

bb.au:                                            ; preds = %.lr.ph.split.i.i38.i
  %i.hp = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hn, i64 noundef range(i64 0, -9223372036854775808) %i.hm)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i39.i unwind label %.loopexit.split-lp.loopexit

._crit_edge.i.i.i55.i:                            ; preds = %bb.av, %.lr.ph.i.i.i52.i, %.preheader.i.i.i50.i
  %.sroa.01.0.lcssa.i.i.i56.i = phi i64 [ 0, %.preheader.i.i.i50.i ], [ %.sroa.01.05.i.i.i53.i, %.lr.ph.i.i.i52.i ], [ %i.hm, %bb.av ]
  %.sroa.0.1.i.i.i57.i = phi i64 [ 0, %.preheader.i.i.i50.i ], [ 1, %.lr.ph.i.i.i52.i ], [ 0, %bb.av ]
  %i.hq = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i57.i, 0
  %i.hr = insertvalue { i64, i64 } %i.hq, i64 %.sroa.01.0.lcssa.i.i.i56.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i39.i

.lr.ph.i.i.i52.i:                                 ; preds = %.preheader.i.i.i50.i, %bb.av
  %.sroa.01.05.i.i.i53.i = phi i64 [ %i.hv, %bb.av ], [ 0, %.preheader.i.i.i50.i ] ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.sroa.01.05.i.i.i53.i
  %i.ht = load i8, ptr %i.hs, align 1, !alias.scope !945, !noalias !950, !noundef !5
  %i.hu = icmp eq i8 %i.ht, 32
  br i1 %i.hu, label %._crit_edge.i.i.i55.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i52.i
  %i.hv = add nuw nsw i64 %.sroa.01.05.i.i.i53.i, 1 ; 2 uses
  %exitcond.not.i.i.i54.i = icmp eq i64 %i.hv, %i.hm
  br i1 %exitcond.not.i.i.i54.i, label %._crit_edge.i.i.i55.i, label %.lr.ph.i.i.i52.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i39.i: ; preds = %bb.au, %._crit_edge.i.i.i55.i
  %.merged.i.i.i40.i = phi { i64, i64 } [ %i.hr, %._crit_edge.i.i.i55.i ], [ %i.hp, %bb.au ] ; 2 uses
  %i.hw = extractvalue { i64, i64 } %.merged.i.i.i40.i, 0
  %i.hx = trunc nuw i64 %i.hw to i1
  br i1 %i.hx, label %bb.aw, label %.backedge

bb.aw:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i39.i
  %i.hy = extractvalue { i64, i64 } %.merged.i.i.i40.i, 1 ; 2 uses
  %i.hz = add i64 %i.hl, 1
  %i.ia = add i64 %i.hz, %i.hy                    ; 2 uses
  %.not12.i.i43.i = icmp ugt i64 %i.ia, %i.hj     ; 2 uses
  %i.ib = add i64 %i.hy, %i.hl                    ; 4 uses
  %or.cond.i.not.i44.i = icmp ult i64 %i.ib, %i.hj
  br i1 %or.cond.i.not.i44.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not12.i.i43.i, label %.backedge, label %.lr.ph.split.i.i38.i.backedge

bb.ay:                                            ; preds = %bb.aw
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.ib
  %lhsc.i48.i = load i8, ptr %i.ic, align 1, !alias.scope !954
  %i.id = icmp eq i8 %lhsc.i48.i, 32              ; 2 uses
  %brmerge.i49.i = or i1 %.not12.i.i43.i, %i.id
  br i1 %brmerge.i49.i, label %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit58.i, label %.lr.ph.split.i.i38.i.backedge

.lr.ph.split.i.i38.i.backedge:                    ; preds = %bb.ay, %bb.ax
  br label %.lr.ph.split.i.i38.i

_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit58.i: ; preds = %bb.ay
  br i1 %i.id, label %bb.az, label %.backedge

bb.az:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit58.i
  switch i64 %i.ib, label %thread-pre-split.i.i [
    i64 0, label %.backedge
    i64 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.ie = load i8, ptr %i.hk, align 1, !alias.scope !955, !noundef !5 ; 2 uses
  switch i8 %i.ie, label %bb.bb [
    i8 43, label %.backedge
    i8 45, label %.backedge
  ]

thread-pre-split.i.i:                             ; preds = %bb.az
  %.pr.i.i = load i8, ptr %i.hk, align 1, !alias.scope !955
  br label %bb.bb

bb.bb:                                            ; preds = %thread-pre-split.i.i, %bb.ba
  %i.if = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.ie, %bb.ba ]
  %cond.i.i = icmp eq i8 %i.if, 43                ; 2 uses
  %i.ig = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.ib, %i.ig      ; 10 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i59.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.sroa.0.0.idx.i.i ; 9 uses
  %i.ih = icmp samesign ult i64 %.sroa.15.0.i.i, 9
  br i1 %i.ih, label %.preheader.i.i, label %.preheader60.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.bb
  %.not5668.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5668.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.preheader60.i.i:                                 ; preds = %bb.bc
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i1463, i64 1
  %i.ij = add nsw i64 %.sroa.15.1.i.i1462, -1     ; 2 uses
  %.not55.i.i = icmp eq i64 %i.ij, 0
  br i1 %.not55.i.i, label %.loopexit.i.i, label %.preheader60.i.i.preheader

.loopexit.i.i:                                    ; preds = %.preheader60.i.i, %13, %19, %27, %35, %43, %51, %55, %62, %.preheader.i.i
  %.sroa.045.1.i.i = phi i32 [ %64, %62 ], [ 0, %.preheader.i.i ], [ %11, %13 ], [ %21, %19 ], [ %29, %27 ], [ %37, %35 ], [ %45, %43 ], [ %53, %51 ], [ %57, %55 ], [ %i.it, %.preheader60.i.i ]
  %i.ik = zext i32 %.sroa.045.1.i.i to i64
  %i.il = shl nuw i64 %i.ik, 32
  br label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.i

.preheader60.i.i.preheader:                       ; preds = %bb.bb, %.preheader60.i.i
  %.sroa.0.1.i.i1463 = phi ptr [ %i.ii, %.preheader60.i.i ], [ %.sroa.0.0.i59.i, %bb.bb ] ; 3 uses
  %.sroa.15.1.i.i1462 = phi i64 [ %i.ij, %.preheader60.i.i ], [ %.sroa.15.0.i.i, %bb.bb ]
  %.sroa.045.0.i.i1461 = phi i32 [ %i.it, %.preheader60.i.i ], [ 0, %bb.bb ]
  %i.im = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i1461, i32 10) ; 2 uses
  %i.in = extractvalue { i32, i1 } %i.im, 1
  br i1 %i.in, label %bb.bd, label %bb.bc, !prof !12

bb.bc:                                            ; preds = %.preheader60.i.i.preheader
  %i.io = extractvalue { i32, i1 } %i.im, 0       ; 2 uses
  %i.ip = load i8, ptr %.sroa.0.1.i.i1463, align 1, !alias.scope !955, !noundef !5
  %i.iq = zext i8 %i.ip to i32
  %i.ir = add nsw i32 %i.iq, -48                  ; 2 uses
  %i.is = icmp ugt i32 %i.ir, 9
  %i.it = add i32 %i.ir, %i.io                    ; 3 uses
  %i.iu = icmp ult i32 %i.it, %i.io
  %or.cond = select i1 %i.is, i1 true, i1 %i.iu, !prof !958
  br i1 %or.cond, label %.backedge, label %.preheader60.i.i, !prof !958

bb.bd:                                            ; preds = %.preheader60.i.i.preheader
  %i.iv = load i8, ptr %.sroa.0.1.i.i1463, align 1, !alias.scope !955, !noundef !5
  %i.iw = add i8 %i.iv, -48
  %i.ix = icmp ult i8 %i.iw, 10
  %spec.select.i.i = select i1 %i.ix, i64 513, i64 257
  br label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %9 = load i8, ptr %.sroa.0.0.i59.i, align 1, !alias.scope !955, !noundef !5
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %10, -48                      ; 3 uses
  %12 = icmp ult i32 %11, 10
  br i1 %12, label %13, label %.backedge

13:                                               ; preds = %.lr.ph.i.i
  %.not56.i.i = icmp eq i64 %.sroa.15.0.i.i, 1
  br i1 %.not56.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %13
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i59.i, i64 1
  %15 = load i8, ptr %14, align 1, !alias.scope !955, !noundef !5
  %16 = zext i8 %15 to i32
  %17 = add nsw i32 %16, -48                      ; 2 uses
  %18 = icmp ult i32 %17, 10
  br i1 %18, label %19, label %.backedge

19:                                               ; preds = %.lr.ph.i.i.1
  %20 = mul nuw nsw i32 %11, 10
  %21 = add nuw nsw i32 %17, %20                  ; 2 uses
  %.not56.i.i.1 = icmp eq i64 %.sroa.15.0.i.i, 2
  br i1 %.not56.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %19
  %22 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i59.i, i64 2
  %23 = load i8, ptr %22, align 1, !alias.scope !955, !noundef !5
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %24, -48                      ; 2 uses
  %26 = icmp ult i32 %25, 10
  br i1 %26, label %27, label %.backedge

27:                                               ; preds = %.lr.ph.i.i.2
  %28 = mul nuw nsw i32 %21, 10
  %29 = add nuw nsw i32 %25, %28                  ; 2 uses
  %.not56.i.i.2 = icmp eq i64 %.sroa.15.0.i.i, 3
  br i1 %.not56.i.i.2, label %.loopexit.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i59.i, i64 3
  %31 = load i8, ptr %30, align 1, !alias.scope !955, !noundef !5
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %32, -48                      ; 2 uses
  %34 = icmp ult i32 %33, 10
  br i1 %34, label %35, label %.backedge

35:                                               ; preds = %.lr.ph.i.i.3
  %36 = mul nuw nsw i32 %29, 10
  %37 = add nuw nsw i32 %33, %36                  ; 2 uses
  %.not56.i.i.3 = icmp eq i64 %.sroa.15.0.i.i, 4
  br i1 %.not56.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %35
  %38 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i59.i, i64 4
  %39 = load i8, ptr %38, align 1, !alias.scope !955, !noundef !5
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, -48                      ; 2 uses
  %42 = icmp ult i32 %41, 10
  br i1 %42, label %43, label %.backedge

43:                                               ; preds = %.lr.ph.i.i.4
  %44 = mul i32 %37, 10
  %45 = add i32 %41, %44                          ; 2 uses
  %.not56.i.i.4 = icmp eq i64 %.sroa.15.0.i.i, 5
  br i1 %.not56.i.i.4, label %.loopexit.i.i, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %43
  %46 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i59.i, i64 5
  %47 = load i8, ptr %46, align 1, !alias.scope !955, !noundef !5
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %48, -48                      ; 2 uses
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %.backedge

51:                                               ; preds = %.lr.ph.i.i.5
  %52 = mul i32 %45, 10
  %53 = add i32 %49, %52                          ; 2 uses
  %.not56.i.i.5 = icmp eq i64 %.sroa.15.0.i.i, 6
  br i1 %.not56.i.i.5, label %.loopexit.i.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %51
  %54 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i59.i, i64 6
  %i.iy = load i8, ptr %54, align 1, !alias.scope !955, !noundef !5
  %i.iz = zext i8 %i.iy to i32
  %i.ja = add nsw i32 %i.iz, -48                  ; 2 uses
  %i.jb = icmp ult i32 %i.ja, 10
  br i1 %i.jb, label %55, label %.backedge

55:                                               ; preds = %.lr.ph.i.i.a
  %56 = mul i32 %53, 10
  %57 = add i32 %i.ja, %56                        ; 2 uses
  %.not56.i.i.6 = icmp eq i64 %.sroa.15.0.i.i, 7
  br i1 %.not56.i.i.6, label %.loopexit.i.i, label %bb.be

bb.be:                                            ; preds = %55
  %58 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i59.i, i64 7
  %59 = load i8, ptr %58, align 1, !alias.scope !955, !noundef !5
  %60 = zext i8 %59 to i32
  %i.jc = add nsw i32 %60, -48                    ; 2 uses
  %61 = icmp ult i32 %i.jc, 10
  br i1 %61, label %62, label %.backedge

62:                                               ; preds = %bb.be
  %63 = mul i32 %57, 10
  %64 = add i32 %i.jc, %63
  br label %.loopexit.i.i

bb.bf:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.i
  %i.jd = icmp eq i64 %i.hg, 0
  br i1 %i.jd, label %.backedge, label %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.thread.i

_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.thread.i: ; preds = %bb.ar, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i, %bb.bf, %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.i
  %.sroa.6.0.i = phi i64 [ %i.hg, %bb.bf ], [ %i.go, %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.i ], [ %i.go, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i ], [ %i.go, %bb.ar ] ; 2 uses
  switch i64 %.sroa.6.0.i, label %thread-pre-split.i84.i [
    i64 0, label %.backedge
    i64 1, label %bb.bg
  ]

bb.bg:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.thread.i
  %i.je = load i8, ptr %i.gp, align 1, !alias.scope !959, !noundef !5 ; 2 uses
  switch i8 %i.je, label %bb.bh [
    i8 43, label %.backedge
    i8 45, label %.backedge
  ]

thread-pre-split.i84.i:                           ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.thread.i
  %.pr.i85.i = load i8, ptr %i.gp, align 1, !alias.scope !959
  br label %bb.bh

bb.bh:                                            ; preds = %thread-pre-split.i84.i, %bb.bg
  %i.jf = phi i8 [ %.pr.i85.i, %thread-pre-split.i84.i ], [ %i.je, %bb.bg ]
  %cond.i65.i = icmp eq i8 %i.jf, 43              ; 2 uses
  %i.jg = sext i1 %cond.i65.i to i64
  %.sroa.15.0.i66.i = add nsw i64 %.sroa.6.0.i, %i.jg ; 10 uses
  %.sroa.0.0.idx.i67.i = zext i1 %cond.i65.i to i64
  %.sroa.0.0.i68.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.sroa.0.0.idx.i67.i ; 9 uses
  %i.jh = icmp samesign ult i64 %.sroa.15.0.i66.i, 9
  br i1 %i.jh, label %.preheader.i77.i, label %.preheader60.i69.i.preheader

.preheader.i77.i:                                 ; preds = %bb.bh
  %.not5668.i78.i = icmp eq i64 %.sroa.15.0.i66.i, 0
  br i1 %.not5668.i78.i, label %.loopexit.i75.i, label %.lr.ph.i79.i

.preheader60.i69.i:                               ; preds = %bb.bi
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i72.i1466, i64 1
  %i.jj = add nsw i64 %.sroa.15.1.i71.i1465, -1   ; 2 uses
  %.not55.i73.i = icmp eq i64 %i.jj, 0
  br i1 %.not55.i73.i, label %.loopexit.i75.i, label %.preheader60.i69.i.preheader

.loopexit.i75.i:                                  ; preds = %.preheader60.i69.i, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %.preheader.i77.i
  %.sroa.045.1.i76.i = phi i32 [ %i.ly, %bb.br ], [ 0, %.preheader.i77.i ], [ %i.ka, %bb.bk ], [ %i.ki, %bb.bl ], [ %i.kp, %bb.bm ], [ %i.kw, %bb.bn ], [ %i.ld, %bb.bo ], [ %i.lk, %bb.bp ], [ %i.lr, %bb.bq ], [ %i.jt, %.preheader60.i69.i ]
  %i.jk = zext i32 %.sroa.045.1.i76.i to i64
  %i.jl = shl nuw i64 %i.jk, 32
  br label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.i

.preheader60.i69.i.preheader:                     ; preds = %bb.bh, %.preheader60.i69.i
  %.sroa.0.1.i72.i1466 = phi ptr [ %i.ji, %.preheader60.i69.i ], [ %.sroa.0.0.i68.i, %bb.bh ] ; 3 uses
  %.sroa.15.1.i71.i1465 = phi i64 [ %i.jj, %.preheader60.i69.i ], [ %.sroa.15.0.i66.i, %bb.bh ]
  %.sroa.045.0.i70.i1464 = phi i32 [ %i.jt, %.preheader60.i69.i ], [ 0, %bb.bh ]
  %i.jm = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i70.i1464, i32 10) ; 2 uses
  %i.jn = extractvalue { i32, i1 } %i.jm, 1
  br i1 %i.jn, label %bb.bj, label %bb.bi, !prof !12

bb.bi:                                            ; preds = %.preheader60.i69.i.preheader
  %i.jo = extractvalue { i32, i1 } %i.jm, 0       ; 2 uses
  %i.jp = load i8, ptr %.sroa.0.1.i72.i1466, align 1, !alias.scope !959, !noundef !5
  %i.jq = zext i8 %i.jp to i32
  %i.jr = add nsw i32 %i.jq, -48                  ; 2 uses
  %i.js = icmp ugt i32 %i.jr, 9
  %i.jt = add i32 %i.jr, %i.jo                    ; 3 uses
  %i.ju = icmp ult i32 %i.jt, %i.jo
  %or.cond1179 = select i1 %i.js, i1 true, i1 %i.ju, !prof !958
  br i1 %or.cond1179, label %.backedge, label %.preheader60.i69.i, !prof !958

bb.bj:                                            ; preds = %.preheader60.i69.i.preheader
  %i.jv = load i8, ptr %.sroa.0.1.i72.i1466, align 1, !alias.scope !959, !noundef !5
  %i.jw = add i8 %i.jv, -48
  %i.jx = icmp ult i8 %i.jw, 10
  %spec.select.i74.i = select i1 %i.jx, i64 513, i64 257
  br label %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.i

.lr.ph.i79.i:                                     ; preds = %.preheader.i77.i
  %i.jy = load i8, ptr %.sroa.0.0.i68.i, align 1, !alias.scope !959, !noundef !5
  %i.jz = zext i8 %i.jy to i32
  %i.ka = add nsw i32 %i.jz, -48                  ; 3 uses
  %i.kb = icmp ult i32 %i.ka, 10
  br i1 %i.kb, label %bb.bk, label %.backedge

bb.bk:                                            ; preds = %.lr.ph.i79.i
  %.not56.i83.i = icmp eq i64 %.sroa.15.0.i66.i, 1
  br i1 %.not56.i83.i, label %.loopexit.i75.i, label %.lr.ph.i79.i.1

.lr.ph.i79.i.1:                                   ; preds = %bb.bk
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i, i64 1
  %i.kd = load i8, ptr %i.kc, align 1, !alias.scope !959, !noundef !5
  %i.ke = zext i8 %i.kd to i32
  %i.kf = add nsw i32 %i.ke, -48                  ; 2 uses
  %i.kg = icmp ult i32 %i.kf, 10
  br i1 %i.kg, label %bb.bl, label %.backedge

bb.bl:                                            ; preds = %.lr.ph.i79.i.1
  %i.kh = mul nuw nsw i32 %i.ka, 10
  %i.ki = add nuw nsw i32 %i.kf, %i.kh            ; 2 uses
  %.not56.i83.i.1 = icmp eq i64 %.sroa.15.0.i66.i, 2
  br i1 %.not56.i83.i.1, label %.loopexit.i75.i, label %.lr.ph.i79.i.2

.lr.ph.i79.i.2:                                   ; preds = %bb.bl
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i, i64 2
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !959, !noundef !5
  %i.kl = zext i8 %i.kk to i32
  %i.km = add nsw i32 %i.kl, -48                  ; 2 uses
  %i.kn = icmp ult i32 %i.km, 10
  br i1 %i.kn, label %bb.bm, label %.backedge

bb.bm:                                            ; preds = %.lr.ph.i79.i.2
  %i.ko = mul nuw nsw i32 %i.ki, 10
  %i.kp = add nuw nsw i32 %i.km, %i.ko            ; 2 uses
  %.not56.i83.i.2 = icmp eq i64 %.sroa.15.0.i66.i, 3
  br i1 %.not56.i83.i.2, label %.loopexit.i75.i, label %.lr.ph.i79.i.3

.lr.ph.i79.i.3:                                   ; preds = %bb.bm
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i, i64 3
  %i.kr = load i8, ptr %i.kq, align 1, !alias.scope !959, !noundef !5
  %i.ks = zext i8 %i.kr to i32
  %i.kt = add nsw i32 %i.ks, -48                  ; 2 uses
  %i.ku = icmp ult i32 %i.kt, 10
  br i1 %i.ku, label %bb.bn, label %.backedge

bb.bn:                                            ; preds = %.lr.ph.i79.i.3
  %i.kv = mul nuw nsw i32 %i.kp, 10
  %i.kw = add nuw nsw i32 %i.kt, %i.kv            ; 2 uses
  %.not56.i83.i.3 = icmp eq i64 %.sroa.15.0.i66.i, 4
  br i1 %.not56.i83.i.3, label %.loopexit.i75.i, label %.lr.ph.i79.i.4

.lr.ph.i79.i.4:                                   ; preds = %bb.bn
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i, i64 4
  %i.ky = load i8, ptr %i.kx, align 1, !alias.scope !959, !noundef !5
  %i.kz = zext i8 %i.ky to i32
  %i.la = add nsw i32 %i.kz, -48                  ; 2 uses
  %i.lb = icmp ult i32 %i.la, 10
  br i1 %i.lb, label %bb.bo, label %.backedge

bb.bo:                                            ; preds = %.lr.ph.i79.i.4
  %i.lc = mul i32 %i.kw, 10
  %i.ld = add i32 %i.la, %i.lc                    ; 2 uses
  %.not56.i83.i.4 = icmp eq i64 %.sroa.15.0.i66.i, 5
  br i1 %.not56.i83.i.4, label %.loopexit.i75.i, label %.lr.ph.i79.i.5

.lr.ph.i79.i.5:                                   ; preds = %bb.bo
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i, i64 5
  %i.lf = load i8, ptr %i.le, align 1, !alias.scope !959, !noundef !5
  %i.lg = zext i8 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, -48                  ; 2 uses
  %i.li = icmp ult i32 %i.lh, 10
  br i1 %i.li, label %bb.bp, label %.backedge

bb.bp:                                            ; preds = %.lr.ph.i79.i.5
  %i.lj = mul i32 %i.ld, 10
  %i.lk = add i32 %i.lh, %i.lj                    ; 2 uses
  %.not56.i83.i.5 = icmp eq i64 %.sroa.15.0.i66.i, 6
  br i1 %.not56.i83.i.5, label %.loopexit.i75.i, label %.lr.ph.i79.i.6

.lr.ph.i79.i.6:                                   ; preds = %bb.bp
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i, i64 6
  %i.lm = load i8, ptr %i.ll, align 1, !alias.scope !959, !noundef !5
  %i.ln = zext i8 %i.lm to i32
  %i.lo = add nsw i32 %i.ln, -48                  ; 2 uses
  %i.lp = icmp ult i32 %i.lo, 10
  br i1 %i.lp, label %bb.bq, label %.backedge

bb.bq:                                            ; preds = %.lr.ph.i79.i.6
  %i.lq = mul i32 %i.lk, 10
  %i.lr = add i32 %i.lo, %i.lq                    ; 2 uses
  %.not56.i83.i.6 = icmp eq i64 %.sroa.15.0.i66.i, 7
  br i1 %.not56.i83.i.6, label %.loopexit.i75.i, label %.lr.ph.i79.i.7

.lr.ph.i79.i.7:                                   ; preds = %bb.bq
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i68.i, i64 7
  %i.lt = load i8, ptr %i.ls, align 1, !alias.scope !959, !noundef !5
  %i.lu = zext i8 %i.lt to i32
  %i.lv = add nsw i32 %i.lu, -48                  ; 2 uses
  %i.lw = icmp ult i32 %i.lv, 10
  br i1 %i.lw, label %bb.br, label %.backedge

bb.br:                                            ; preds = %.lr.ph.i79.i.7
  %i.lx = mul i32 %i.lr, 10
  %i.ly = add i32 %i.lv, %i.lx
  br label %.loopexit.i75.i

_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.i: ; preds = %.loopexit.i75.i, %bb.bj, %.loopexit.i.i, %bb.bd
  %.sroa.7.0.i.in.in = phi i64 [ %i.jl, %.loopexit.i75.i ], [ %spec.select.i74.i, %bb.bj ], [ %i.il, %.loopexit.i.i ], [ %spec.select.i.i, %bb.bd ] ; 2 uses
  %.sroa.0.0.i287.in.in = trunc i64 %.sroa.7.0.i.in.in to i1
  br i1 %.sroa.0.0.i287.in.in, label %.backedge, label %bb.bs

bb.bs:                                            ; preds = %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.i
  %.sroa.7.0.i.in = lshr i64 %.sroa.7.0.i.in.in, 32
  %.sroa.7.0.i = trunc nuw i64 %.sroa.7.0.i.in to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store i32 %.sroa.7.0.i, ptr %i.bt, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store ptr @80, ptr %i.bs, align 8, !captures !593
  store i64 38, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr %i.ci, ptr %i.bp, align 8
end_hunk_0
begin_hunk_1_@_RNvNtNtCslkzCjlEuW1f_5xtask7release9changelog13get_changelog:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %bb.fv
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCslkzCjlEuW1f_5xtask7release9changelog6PrInfoEBH_.exit unwind label %.loopexit614

bb.fy:                                            ; preds = %bb.fq, %bb.ft, %bb.fs, %bb.fr
  %.sroa.052.0 = phi ptr [ %i.bv, %bb.ft ], [ %i.bx, %bb.fr ], [ %i.bw, %bb.fs ], [ %i.by, %bb.fq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.qw = load i64, ptr %i.o, align 8, !range !210, !noundef !5
  %.not222 = icmp eq i64 %i.qw, -1                ; 2 uses
  %i.qx = load ptr, ptr %.sroa.435.0..sroa_idx36, align 8, !nonnull !5
  %i.qy = load i64, ptr %.sroa.527.0..sroa_idx.i, align 8
  %i.qz = load ptr, ptr %i.dk, align 8, !nonnull !5
  %i.ra = load i64, ptr %i.dl, align 8
  %storemerge1013 = select i1 %.not222, ptr %i.qz, ptr %i.qx
  %storemerge = select i1 %.not222, i64 %i.ra, i64 %i.qy
  store ptr %storemerge1013, ptr %i.n, align 8
  store i64 %storemerge, ptr %i.dt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.bt, ptr %i.m, align 8
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4173.0..sroa_idx, align 8
  store ptr %i.n, ptr %i.du, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCslkzCjlEuW1f_5xtask, ptr %.sroa.4177.0..sroa_idx, align 8
  %i.rb = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %.sroa.052.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @97, ptr noundef nonnull @96, ptr noundef nonnull %i.m)
          to label %bb.ga unwind label %.loopexit638

.loopexit638:                                     ; preds = %bb.fy
  %lpad.loopexit640 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

.loopexit.split-lp639:                            ; preds = %bb.gb
  %lpad.loopexit.split-lp641 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.fz:                                            ; preds = %.loopexit.split-lp639, %.loopexit638
  %lpad.phi642 = phi { ptr, i32 } [ %lpad.loopexit640, %.loopexit638 ], [ %lpad.loopexit.split-lp641, %.loopexit.split-lp639 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCslkzCjlEuW1f_5xtask7release9changelog6PrInfoEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #28
          to label %.body345 unwind label %bb.ef

bb.ga:                                            ; preds = %bb.fy
  br i1 %i.rb, label %bb.gb, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCslkzCjlEuW1f_5xtask.exit, !prof !12

bb.gb:                                            ; preds = %bb.ga
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #26
          to label %.noexc unwind label %.loopexit.split-lp639

.noexc:                                           ; preds = %bb.gb
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCslkzCjlEuW1f_5xtask.exit: ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.rc = load i64, ptr %i.o, align 8, !range !210, !alias.scope !1003, !noundef !5
  %i.rd = icmp eq i64 %i.rc, -1
  br i1 %i.rd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCslkzCjlEuW1f_5xtask7release9changelog6PrInfoEBH_.exit356, label %bb.gc

bb.gc:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCslkzCjlEuW1f_5xtask.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i352 unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.re = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %.body345 unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i352: ; preds = %bb.gc
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCslkzCjlEuW1f_5xtask7release9changelog6PrInfoEBH_.exit356 unwind label %.loopexit614

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCslkzCjlEuW1f_5xtask7release9changelog6PrInfoEBH_.exit356: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCslkzCjlEuW1f_5xtask.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell7CmdDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.al)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit358 unwind label %.loopexit609

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit358: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCslkzCjlEuW1f_5xtask7release9changelog6PrInfoEBH_.exit356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i360 unwind label %bb.gf

bb.gf:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit358
  %i.rg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body329 unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.rh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i360: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit358
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit365 unwind label %.loopexit599

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit365: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i367 unwind label %bb.gh

bb.gh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit365
  %i.ri = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.body335 unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i367: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit365
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit372 unwind label %.loopexit593

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit372: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i374 unwind label %bb.gj

bb.gj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit372
  %i.rk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body433 unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.rl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i374: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit372
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit378 unwind label %.body375.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit378: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell7CmdDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.bm)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit380 unwind label %.loopexit575

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit380: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i382 unwind label %bb.gl

bb.gl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit380
  %i.rm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %.body383 unwind label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.rn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i382: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit380
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit386 unwind label %.loopexit571

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit386: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i489.invoke unwind label %bb.gn

bb.gn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit386
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %.body389 unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

.backedge.sink.split:                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i489.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %.backedge

.backedge:                                        ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i39.i, %bb.ax, %bb.bc, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.a, %bb.be, %bb.bi, %.lr.ph.i79.i, %.lr.ph.i79.i.1, %.lr.ph.i79.i.2, %.lr.ph.i79.i.3, %.lr.ph.i79.i.4, %.lr.ph.i79.i.5, %.lr.ph.i79.i.6, %.lr.ph.i79.i.7, %.backedge.sink.split, %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit.thread.i, %bb.bg, %bb.bg, %bb.ba, %bb.ba, %bb.az, %bb.bf, %_RNvMsB_NtCshzWfHUSfYae_4core3numm27from_ascii_bytes_radix_impl.exit.i, %.noexc290, %_RINvMNtCshzWfHUSfYae_4core3stre4findcECslkzCjlEuW1f_5xtask.exit58.i
  %i.rq = load i8, ptr %.sroa.5100.0..sroa_idx, align 1, !range !366, !alias.scope !1008, !noundef !5
  %i.rr = trunc nuw i8 %i.rq to i1
  br i1 %i.rr, label %._crit_edge, label %bb.o

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCslkzCjlEuW1f_5xtask7release9changelog6PrInfoEBH_.exit: ; preds = %bb.fu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell7CmdDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.al)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit394 unwind label %.loopexit609

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit394: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCslkzCjlEuW1f_5xtask7release9changelog6PrInfoEBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i396 unwind label %bb.gp

bb.gp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit394
  %i.rs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body329 unwind label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.rt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i396: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit394
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit401 unwind label %.loopexit599

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit401: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i403 unwind label %bb.gr

bb.gr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit401
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.body335 unwind label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.rv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i403: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit401
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit408 unwind label %.loopexit593

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit408: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i410 unwind label %bb.gt

bb.gt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit408
  %i.rw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body433 unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.rx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i410: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit408
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit415 unwind label %.body375.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit415: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.gv

bb.gv:                                            ; preds = %bb.hu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell7CmdDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.bm)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit417 unwind label %.loopexit575

bb.gw:                                            ; preds = %bb.dc
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ne, ptr %i.ry, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell7CmdDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.ap)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit419 unwind label %.loopexit.split-lp600

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit419: ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit332

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit338: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i421 unwind label %bb.gx

bb.gx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit338
  %i.rz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body433 unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.sa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i421: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit338
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit426 unwind label %.body375.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit426: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit436

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit436: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i432, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell7CmdDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.bm)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit428 unwind label %.loopexit.split-lp576

bb.gz:                                            ; preds = %bb.cs
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mp, ptr %i.sb, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell7CmdDataECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.av)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit430 unwind label %.body375.thread533.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit430: ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i432 unwind label %bb.ha

bb.ha:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit430
  %i.sc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.body433 unwind label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.sd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i432: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit430
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit436 unwind label %.loopexit.split-lp581

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit428: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i438 unwind label %bb.hc

bb.hc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit428
  %i.se = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %.body383 unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.sf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i438: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4hDOxNozLoi_6xshell3CmdECslkzCjlEuW1f_5xtask.exit428
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit442 unwind label %.loopexit.split-lp572

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit442: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i444 unwind label %bb.he

bb.he:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit442
  %i.sg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %.body389 unwind label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.sh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i444: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit442
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit448 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit448: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
end_hunk_1
