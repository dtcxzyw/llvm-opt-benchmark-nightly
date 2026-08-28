Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.01?download=true
inline.NumInlined: 432
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE6formatBb_:bb.a
  %i.fe = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.es) #20 ; 2 uses
  %i.ff = extractvalue { i64, ptr } %i.fe, 0
  %i.fg = trunc nuw i64 %i.ff to i1
  br i1 %i.fg, label %.loopexit.split.loop.exit168, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i
  %.pre = load ptr, ptr %i.es, align 8, !alias.scope !2391 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre192 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !2398, !noalias !2401
  br label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge, %bb.bf
  %i.fh = phi i64 [ %.pre192, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge ], [ %i.fc, %bb.bf ]
  %i.fi = phi ptr [ %.pre, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i._RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread_crit_edge ], [ %i.ew, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2391
  store i32 0, ptr %i.g, align 4, !noalias !2391
  %i.fj = call fastcc { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw(i32 noundef range(i32 0, 1114112) %.sroa.638.0.extract.trunc, ptr noalias nofree noundef nonnull %i.g) #25 ; 2 uses
  %i.fk = extractvalue { ptr, i64 } %i.fj, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2398)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fm = load i16, ptr %i.fl, align 8, !alias.scope !2398, !noalias !2401, !noundef !5 ; 2 uses
  %i.fn = zext i16 %i.fm to i64                   ; 2 uses
  %i.fo = sub nuw i64 %i.fh, %i.fn
  %.not.i.i = icmp ugt i64 %i.fk, %i.fo
  br i1 %.not.i.i, label %bb.bg, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit, !prof !2055

bb.bg:                                            ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #24, !noalias !2403
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter10write_char.exit: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread
  %i.fp = extractvalue { ptr, i64 } %i.fj, 0
  %i.fq = load ptr, ptr %i.fi, align 8, !alias.scope !2398, !noalias !2401, !nonnull !5, !noundef !5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fn
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.fr, i64 noundef %i.fk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fp, i64 noundef %i.fk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !2398
  %i.fs = trunc i64 %i.fk to i16
  %i.ft = add i16 %i.fm, %i.fs
  store i16 %i.ft, ptr %i.fl, align 8, !alias.scope !2398, !noalias !2401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2391
  br label %.backedgethread-pre-split

bb.bh:                                            ; preds = %bb.ay
  %i.fu = extractvalue { i64, ptr } %i.en, 1
  br label %.loopexit

.thread253:                                       ; preds = %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit76, %bb.az
  %i.fv = phi ptr [ %.pre194, %bb.az ], [ %i.eg, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit76 ] ; 2 uses
  %i.fw = phi i16 [ %.pre198, %bb.az ], [ %i.ek, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit76 ]
  %.pre-phi214256 = phi i64 [ %.pre213, %bb.az ], [ %i.el, %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE1fBb_.exit76 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fy = load ptr, ptr %i.fv, align 8, !alias.scope !2388, !nonnull !5, !noundef !5
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.pre-phi214256
  store i8 %i.q, ptr %i.fz, align 1, !noalias !2388
  %i.ga = add i16 %i.fw, 1
  store i16 %i.ga, ptr %i.fx, align 8, !alias.scope !2388
  call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  %i.gb = load i64, ptr %i.k, align 8, !alias.scope !2404, !noundef !5 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %bb.bi, label %_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit77, !prof !240

bb.bi:                                            ; preds = %.thread253
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #24, !noalias !2404
  unreachable

_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE8bump_fmtBb_.exit77: ; preds = %.thread253
  %i.gd = load ptr, ptr %i.j, align 8, !alias.scope !2404, !nonnull !5, !noundef !5
  %i.ge = add i64 %i.gb, -1                       ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  store ptr %i.gf, ptr %i.j, align 8, !alias.scope !2404, !captures !1057
  store i64 %i.ge, ptr %i.k, align 8, !alias.scope !2404
  br label %.backedge

.loopexit.split.loop.exit168:                     ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i
  %i.gg = extractvalue { i64, ptr } %i.fe, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.ai, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53, %.loopexit.split.loop.exit168, %bb.a, %bb.bh, %bb.bb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73, %bb.ad
  %.sroa.9.1 = phi ptr [ %i.er, %bb.bb ], [ %.sroa.9.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73 ], [ undef, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53 ], [ %i.bu, %bb.ad ], [ %i.fu, %bb.bh ], [ %i.gg, %.loopexit.split.loop.exit168 ], [ undef, %bb.a ], [ %i.cn, %bb.ai ], [ undef, %.backedge ]
  %.sroa.0.1 = phi i64 [ 1, %bb.bb ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73 ], [ 0, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53 ], [ 1, %bb.ad ], [ 1, %bb.bh ], [ 1, %.loopexit.split.loop.exit168 ], [ 0, %bb.a ], [ 1, %bb.ai ], [ 0, %.backedge ]
  %i.gh = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.gi = insertvalue { i64, ptr } %i.gh, ptr %.sroa.9.1, 1
  ret { i64, ptr } %i.gi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime12to_timestamp(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [12 x i8], align 8                ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %i.s = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.copyload, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.0.copyload, ptr %i.u, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) #25, !noalias !2410
  %i.v = load i16, ptr %i.p, align 8, !range !99, !noalias !2412, !noundef !5
  %i.w = trunc nuw i16 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2412, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2413
  store ptr %i.y, ptr %i.o, align 8, !noalias !2413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2413
  store i8 23, ptr %i.n, align 8, !noalias !2412
  %i.z = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.i unwind label %bb.e, !noalias !2416

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ab = icmp eq ptr %i.y, null
  br i1 %i.ab, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !2417
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #20
          to label %common.resume unwind label %bb.h, !noalias !2416

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2416
  unreachable

common.resume:                                    ; preds = %bb.bh, %bb.bi, %bb.bj, %bb.az, %bb.ba, %bb.bb, %bb.e, %bb.f, %bb.g, %bb.as, %bb.at, %bb.au
  %common.resume.op = phi { ptr, i32 } [ %i.bz, %bb.az ], [ %i.bs, %bb.as ], [ %i.aa, %bb.e ], [ %i.aa, %bb.g ], [ %i.aa, %bb.f ], [ %i.bs, %bb.au ], [ %i.bs, %bb.at ], [ %i.bz, %bb.bb ], [ %i.bz, %bb.ba ], [ %i.ee, %bb.bj ], [ %i.ee, %bb.bi ], [ %i.ee, %bb.bh ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2413
  %i.af = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.y, ptr noundef %i.z), !noalias !2416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2413
  br label %bb.ay

bb.j:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %.sroa.016.0.copyload.i = load i32, ptr %i.ag, align 2, !noalias !2412 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 102
  %i.ai = load i8, ptr %i.ah, align 2, !range !151, !alias.scope !2429, !noalias !2430, !noundef !5
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 103
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !2429, !noalias !2430 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load i8, ptr %i.am, align 8, !range !151, !alias.scope !2429, !noalias !2430, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1                ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !2429, !noalias !2430 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.as = load i8, ptr %i.ar, align 2, !range !151, !alias.scope !2429, !noalias !2430, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1                ; 2 uses
  br i1 %i.ao, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %i.ao, label %bb.an, label %bb.am

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 107
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !2429, !noalias !2430 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !range !521, !alias.scope !2429, !noalias !2430, !noundef !5 ; 2 uses
  br i1 %i.at, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.k
  br i1 %i.at, label %bb.ah, label %bb.ag

bb.o:                                             ; preds = %bb.m
  %2 = trunc nuw i32 %i.ax to i1
  br i1 %2, label %bb.q, label %bb.u

bb.p:                                             ; preds = %bb.m
  %.not70.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not70.i.i, label %bb.ab, label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.az = load i32, ptr %i.ay, align 4, !alias.scope !2429, !noalias !2430, !noundef !5 ; 2 uses
  %or.cond.i.i.i = icmp ult i8 %i.al, 24
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %or.cond1.i.i.i = icmp ult i8 %i.aq, 60
  br i1 %or.cond1.i.i.i, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %or.cond2.i.i.i = icmp ult i8 %i.av, 60
  br i1 %or.cond2.i.i.i, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %or.cond3.i.i.i = icmp ult i32 %i.az, 1000000000
  br i1 %or.cond3.i.i.i, label %bb.y, label %bb.x

bb.u:                                             ; preds = %bb.o
  %or.cond.i74.i.i = icmp ult i8 %i.al, 24
  br i1 %or.cond.i74.i.i, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %or.cond1.i76.i.i = icmp ult i8 %i.aq, 60
  br i1 %or.cond1.i76.i.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %or.cond2.i77.i.i = icmp ult i8 %i.av, 60
  br i1 %or.cond2.i77.i.i, label %bb.aa, label %bb.z

bb.x:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.5115.0..sroa.5115.0..sroa.5115.2..sroa.055.0.copyload.i.i = phi i32 [ 3071, %bb.r ], [ 5375, %bb.s ], [ 1791, %bb.q ], [ 5631, %bb.t ]
  %i.ba = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.5115.0..sroa.5115.0..sroa.5115.2..sroa.055.0.copyload.i.i) #20, !noalias !2432
  br label %bb.ar

bb.y:                                             ; preds = %bb.t
  %.sroa.5115.i.sroa.5.6.insert.ext.i = zext nneg i8 %i.al to i64
  %.sroa.5115.i.sroa.5.7.insert.ext.i = zext nneg i8 %i.aq to i64
  %.sroa.5115.i.sroa.5.7.insert.shift.i = shl nuw nsw i64 %.sroa.5115.i.sroa.5.7.insert.ext.i, 8
  %.sroa.5115.i.sroa.5.7.insert.insert.i = or disjoint i64 %.sroa.5115.i.sroa.5.7.insert.shift.i, %.sroa.5115.i.sroa.5.6.insert.ext.i
  %.sroa.5115.i.sroa.5.8.insert.ext.i = zext nneg i8 %i.av to i64
  %.sroa.5115.i.sroa.5.8.insert.shift.i = shl nuw nsw i64 %.sroa.5115.i.sroa.5.8.insert.ext.i, 16
  %.sroa.5115.i.sroa.5.8.insert.insert.i = or disjoint i64 %.sroa.5115.i.sroa.5.7.insert.insert.i, %.sroa.5115.i.sroa.5.8.insert.shift.i
  br label %bb.be

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.5108.0..sroa.5108.0..sroa.5108.2..sroa.042.0.copyload.i.i = phi i32 [ 3071, %bb.v ], [ 1791, %bb.u ], [ 5375, %bb.w ]
  %i.bb = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.5108.0..sroa.5108.0..sroa.5108.2..sroa.042.0.copyload.i.i) #20, !noalias !2432
  br label %bb.ar

bb.aa:                                            ; preds = %bb.w
  %.sroa.5108.i.sroa.5.6.insert.ext.i = zext nneg i8 %i.al to i64
  %.sroa.5108.i.sroa.5.7.insert.ext.i = zext nneg i8 %i.aq to i64
  %.sroa.5108.i.sroa.5.7.insert.shift.i = shl nuw nsw i64 %.sroa.5108.i.sroa.5.7.insert.ext.i, 8
  %.sroa.5108.i.sroa.5.7.insert.insert.i = or disjoint i64 %.sroa.5108.i.sroa.5.7.insert.shift.i, %.sroa.5108.i.sroa.5.6.insert.ext.i
  %.sroa.5108.i.sroa.5.8.insert.ext.i = zext nneg i8 %i.av to i64
  %.sroa.5108.i.sroa.5.8.insert.shift.i = shl nuw nsw i64 %.sroa.5108.i.sroa.5.8.insert.ext.i, 16
  %.sroa.5108.i.sroa.5.8.insert.insert.i = or disjoint i64 %.sroa.5108.i.sroa.5.7.insert.insert.i, %.sroa.5108.i.sroa.5.8.insert.shift.i
  br label %bb.be

bb.ab:                                            ; preds = %bb.p
  %or.cond.i82.i.i = icmp ult i8 %i.al, 24
  br i1 %or.cond.i82.i.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %or.cond1.i84.i.i = icmp ult i8 %i.aq, 60
  br i1 %or.cond1.i84.i.i, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2433
  store i8 20, ptr %i.h, align 8, !noalias !2433
  %i.bc = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h) #20, !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2433
  br label %bb.ar

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %storemerge125.i.i = phi i32 [ 1791, %bb.ab ], [ 3071, %bb.ac ]
  %i.bd = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %storemerge125.i.i) #20, !noalias !2432
  br label %bb.ar

bb.af:                                            ; preds = %bb.ac
  %.sroa.5101.i.sroa.5.6.insert.ext.i = zext nneg i8 %i.al to i64
  %.sroa.5101.i.sroa.5.7.insert.ext.i = zext nneg i8 %i.aq to i64
  %.sroa.5101.i.sroa.5.7.insert.shift.i = shl nuw nsw i64 %.sroa.5101.i.sroa.5.7.insert.ext.i, 8
  %.sroa.5101.i.sroa.5.7.insert.insert.i = or disjoint i64 %.sroa.5101.i.sroa.5.7.insert.shift.i, %.sroa.5101.i.sroa.5.6.insert.ext.i
  br label %bb.be

bb.ag:                                            ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !range !521, !alias.scope !2429, !noalias !2430, !noundef !5
  %.not69.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not69.i.i, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2433
  store i8 19, ptr %i.j, align 8, !noalias !2433
  %i.bg = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #20, !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2433
  br label %bb.ar

bb.ai:                                            ; preds = %bb.ag
  %or.cond.i89.i.i = icmp ult i8 %i.al, 24
  br i1 %or.cond.i89.i.i, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2433
  store i8 18, ptr %i.i, align 8, !noalias !2433
  %i.bh = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i) #20, !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2433
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.bi = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 1791) #20, !noalias !2432
  br label %bb.ar

bb.al:                                            ; preds = %bb.ai
  %.sroa.5.i.sroa.5.6.insert.ext.i = zext nneg i8 %i.al to i64
  br label %bb.be

bb.am:                                            ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.bk = load i8, ptr %i.bj, align 2, !range !151, !alias.scope !2429, !noalias !2430, !noundef !5
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2433
  store i8 16, ptr %i.m, align 8, !noalias !2433
  %i.bm = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m) #20, !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2433
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bo = load i32, ptr %i.bn, align 8, !range !521, !alias.scope !2429, !noalias !2430, !noundef !5
  %.not.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i, label %bb.be, label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2433
  store i8 17, ptr %i.l, align 8, !noalias !2433
  %i.bp = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l) #20, !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2433
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2433
  store i8 15, ptr %i.k, align 8, !noalias !2433
  %i.bq = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k) #20, !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2433
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an, %bb.ak, %bb.aj, %bb.ah, %bb.ae, %bb.ad, %bb.z, %bb.x
  %.sroa.4.4..sroa.4.4..sroa.4.8..i = phi ptr [ %i.bg, %bb.ah ], [ %i.bh, %bb.aj ], [ %i.bd, %bb.ae ], [ %i.bb, %bb.z ], [ %i.bc, %bb.ad ], [ %i.bi, %bb.ak ], [ %i.bq, %bb.aq ], [ %i.bp, %bb.ap ], [ %i.bm, %bb.an ], [ %i.ba, %bb.x ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2434
  store ptr %.sroa.4.4..sroa.4.4..sroa.4.8..i, ptr %i.g, align 8, !noalias !2434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2434
  store i8 28, ptr %i.f, align 8, !noalias !2412
  %i.br = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.aw unwind label %bb.as, !noalias !2437

bb.as:                                            ; preds = %bb.ar
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bt = icmp eq ptr %.sroa.4.4..sroa.4.4..sroa.4.8..i, null
  br i1 %i.bt, label %common.resume, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bu = atomicrmw sub ptr %.sroa.4.4..sroa.4.4..sroa.4.8..i, i64 1 release, align 8, !noalias !2438
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.au, label %common.resume

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #20
          to label %common.resume unwind label %bb.av, !noalias !2437

bb.av:                                            ; preds = %bb.au
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2437
  unreachable

bb.aw:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2434
  %i.bx = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.4.4..sroa.4.4..sroa.4.8..i, ptr noundef %i.br), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2434
  br label %bb.ay

bb.ax:                                            ; preds = %bb.bd, %bb.bf, %bb.bl, %bb.b
  ret void

bb.ay:                                            ; preds = %bb.i, %bb.aw
  %.sroa.6.1.ph = phi ptr [ %i.bx, %bb.aw ], [ %i.af, %bb.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2447
  store ptr %.sroa.6.1.ph, ptr %i.e, align 8, !noalias !2447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2447
  store i8 24, ptr %i.d, align 8
  %i.by = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.bd unwind label %bb.az, !noalias !2447

bb.az:                                            ; preds = %bb.ay
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ca = icmp eq ptr %.sroa.6.1.ph, null
  br i1 %i.ca, label %common.resume, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cb = atomicrmw sub ptr %.sroa.6.1.ph, i64 1 release, align 8, !noalias !2450
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.bb, label %common.resume

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #20
          to label %common.resume unwind label %bb.bc, !noalias !2447

bb.bc:                                            ; preds = %bb.bb
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2447
  unreachable

bb.bd:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2447
  %i.ce = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.6.1.ph, ptr noundef %i.by), !noalias !2447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2447
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ce, ptr %i.cf, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ax

bb.be:                                            ; preds = %bb.ao, %bb.al, %bb.af, %bb.aa, %bb.y
  %.sroa.4.4..sroa.4.4..sroa.4.8..sroa.418.0.copyload.i = phi i64 [ %.sroa.5115.i.sroa.5.8.insert.insert.i, %bb.y ], [ %.sroa.5.i.sroa.5.6.insert.ext.i, %bb.al ], [ %.sroa.5101.i.sroa.5.7.insert.insert.i, %bb.af ], [ %.sroa.5108.i.sroa.5.8.insert.insert.i, %bb.aa ], [ 0, %bb.ao ]
  %.sroa.4.0..sroa.4.0..sroa.4.4..sroa.017.0.copyload.i = phi i32 [ %i.az, %bb.y ], [ 0, %bb.al ], [ 0, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.ao ]
  %.sroa.6.12.insert.ext = zext i32 %.sroa.016.0.copyload.i to i64
  %.sroa.6.12.insert.shift = shl nuw i64 %.sroa.6.12.insert.ext, 32
  %.sroa.6.12.insert.insert = or disjoint i64 %.sroa.4.4..sroa.4.4..sroa.4.8..sroa.418.0.copyload.i, %.sroa.6.12.insert.shift
  %i.cg = inttoptr i64 %.sroa.6.12.insert.insert to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i32 %.sroa.4.0..sroa.4.0..sroa.4.4..sroa.017.0.copyload.i, ptr %i.r, align 8
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.cg, ptr %.4..4..4..sroa_idx, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ci = load i32, ptr %i.ch, align 8, !range !521, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = trunc nuw i32 %i.ci to i1
  br i1 %i.cl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit, label %bb.bf

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit: ; preds = %bb.be
  %.0..0..0..val = load i64, ptr %i.r, align 8    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  %i.cm = shl i32 %.sroa.016.0.copyload.i, 8
  %i.cn = ashr i32 %i.cm, 24                      ; 3 uses
  %i.co = icmp ult i32 %i.cn, 3                   ; 2 uses
  %i.cp = or disjoint i32 %i.cn, 12
  %.sroa.02.0.i.i.i = select i1 %i.co, i32 %i.cp, i32 %i.cn
  %sext.i.i.i = shl i32 %.sroa.016.0.copyload.i, 16
  %i.cq = ashr exact i32 %sext.i.i.i, 16
  %i.cr = add nsw i32 %i.cq, 32800
  %.neg.i.i.i = sext i1 %i.co to i32
  %i.cs = add nsw i32 %i.cr, %.neg.i.i.i          ; 3 uses
  %i.ct = ashr i32 %.sroa.016.0.copyload.i, 24
  %i.cu = udiv i32 %i.cs, 100
  %i.cv = mul nuw nsw i32 %i.cs, 1461
  %i.cw = lshr i32 %i.cv, 2
  %i.cx = udiv i32 %i.cs, 400
  %i.cy = mul nsw i32 %.sroa.02.0.i.i.i, 979
  %i.cz = add nsw i32 %i.cy, -2919
  %i.da = lshr i32 %i.cz, 5
  %i.db = add nsw i32 %i.ct, -12699423
  %i.dc = sub nuw nsw i32 %i.db, %i.cu
  %i.dd = add nuw nsw i32 %i.dc, %i.cx
  %i.de = add nsw i32 %i.dd, %i.cw
  %i.df = add nsw i32 %i.de, %i.da
  %i.dg = sext i32 %i.df to i64
  %i.dh = mul nsw i64 %i.dg, 86400
  %i.di = shl i64 %.0..0..0..val, 24
  %i.dj = ashr i64 %i.di, 56
  %i.dk = mul nsw i64 %i.dj, 3600
  %i.dl = shl i64 %.0..0..0..val, 16
  %i.dm = ashr i64 %i.dl, 56
  %i.dn = mul nsw i64 %i.dm, 60
  %i.do = shl i64 %.0..0..0..val, 8
  %i.dp = ashr i64 %i.do, 56
  %.sroa.02.0.extract.trunc.i = trunc i64 %.0..0..0..val to i32 ; 3 uses
  %i.dq = sext i32 %i.ck to i64
  %i.dr = sub nsw i64 %i.dp, %i.dq
  %i.ds = add nsw i64 %i.dr, %i.dk
  %i.dt = add nsw i64 %i.ds, %i.dn
  %i.du = add nsw i64 %i.dt, %i.dh                ; 2 uses
  %i.dv = icmp slt i64 %i.du, 0
  %i.dw = icmp ne i32 %.sroa.02.0.extract.trunc.i, 0
  %or.cond3.not.i.i = and i1 %i.dw, %i.dv         ; 2 uses
  %i.dx = zext i1 %or.cond3.not.i.i to i64
  %.sroa.05.0.i.i = add nsw i64 %i.du, %i.dx      ; 2 uses
  %i.dy = add nsw i64 %.sroa.05.0.i.i, 377705023201
  %or.cond.i.i = icmp ult i64 %i.dy, 631107230402
  br i1 %or.cond.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 26, ptr %i.q, align 8
  %i.dz = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #20
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dz, ptr %i.ea, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ax

bb.bg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2459
  store i32 0, ptr %i.c, align 8, !noalias !2459
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.ck, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !2459
  %i.eb = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtB1f_6bounds10RangeErrorEINtB8_12ErrorContextB1b_B1X_E7contextNtNtNtB8_2tz6offset5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, i32 7167) #25, !noalias !2459 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2459
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8, !alias.scope !2459
  store i64 1, ptr %0, align 8, !alias.scope !2459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2462
  store ptr %i.eb, ptr %i.b, align 8, !noalias !2462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2462
  store i8 21, ptr %i.a, align 8
  %i.ed = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit unwind label %bb.bh, !noalias !2462

bb.bh:                                            ; preds = %bb.bg
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ef = icmp eq ptr %i.eb, null
  br i1 %i.ef, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eg = atomicrmw sub ptr %i.eb, i64 1 release, align 8, !noalias !2465
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.bj, label %common.resume

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %common.resume unwind label %bb.bk, !noalias !2462

bb.bk:                                            ; preds = %bb.bj
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2462
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2462
  %i.ej = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.eb, ptr noundef %i.ed), !noalias !2462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2462
  store ptr %i.ej, ptr %i.ec, align 8
  br label %bb.bl

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit
  %i.ek = add i32 %.sroa.02.0.extract.trunc.i, -1000000000
  %.sroa.021.0.i.i = select i1 %or.cond3.not.i.i, i32 %i.ek, i32 %.sroa.02.0.extract.trunc.i
  %i.el = inttoptr i64 %.sroa.05.0.i.i to ptr
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.021.0.i.i, ptr %i.em, align 8, !alias.scope !2459
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.el, ptr %i.en, align 8, !alias.scope !2459
  br label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit
  %storemerge = phi i64 [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.ax
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB5_14BrokenDownTime7to_date(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i16, ptr %i.c, align 8, !range !99, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.f = load i16, ptr %i.e, align 2              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.h = load i8, ptr %i.g, align 1               ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 94
  %i.j = load i8, ptr %i.i, align 2, !range !151, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 95
  %i.l = load i8, ptr %i.k, align 1               ; 4 uses
  %i.m = trunc nuw i16 %i.d to i1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.o = load i8, ptr %i.n, align 4, !range !151
  %i.p = and i8 %i.o, %i.j
  %2 = icmp ne i8 %i.p, 0
  %.not57 = select i1 %i.m, i1 %2, i1 false
  br i1 %.not57, label %bb.c, label %bb.b, !prof !2474

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB7_14BrokenDownTime7to_date7to_date(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) #20
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.q = add i16 %i.f, 9999
  %or.cond.i = icmp ult i16 %i.q, 19999
  br i1 %or.cond.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.r = add i8 %i.h, -1
  %or.cond1.i = icmp ult i8 %i.r, 12
  br i1 %or.cond1.i, label %bb.e, label %bb.k, !prof !2475

bb.e:                                             ; preds = %bb.d
  %i.s = icmp slt i8 %i.l, 1
  br i1 %i.s, label %bb.k, label %bb.f, !prof !240

bb.f:                                             ; preds = %bb.e
  %i.t = icmp samesign ugt i8 %i.l, 28
  br i1 %i.t, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i8 %i.h, 2
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = srem i16 %i.f, 25
  %i.w = icmp eq i16 %i.v, 0
  %..i.i = select i1 %i.w, i16 15, i16 3
  %i.x = and i16 %..i.i, %i.f
  %i.y = icmp eq i16 %i.x, 0
  %spec.select.i.i = select i1 %i.y, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

bb.i:                                             ; preds = %bb.g
  %i.z = lshr i8 %i.h, 3
  %i.aa = xor i8 %i.z, %i.h
  %i.ab = or i8 %i.aa, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i = phi i8 [ %spec.select.i.i, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = icmp samesign ugt i8 %i.l, %.sroa.0.0.i.i
  br i1 %i.ac, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, !prof !2476

bb.j:                                             ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i
  %.sroa.530.0.insert.ext.i = zext i16 %i.f to i32
  %.sroa.530.0.insert.shift.i = shl nuw i32 %.sroa.530.0.insert.ext.i, 16
  %.sroa.429.0.insert.ext.i = zext nneg i8 %i.h to i32
  %.sroa.429.0.insert.shift.i = shl nuw nsw i32 %.sroa.429.0.insert.ext.i, 8
  %.sroa.429.0.insert.insert.i = or disjoint i32 %.sroa.429.0.insert.shift.i, %.sroa.530.0.insert.shift.i
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j, %bb.c, %bb.e
  %.sroa.6.0.i.ph = phi i32 [ 767, %bb.e ], [ 8447, %bb.c ], [ %.sroa.429.0.insert.insert.i, %bb.j ], [ 3327, %bb.d ]
  %i.ad = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 9, ptr %i.a, align 8
  %i.ae = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %i.ad) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  store i16 1, ptr %0, align 8
  br label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit: ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i, %bb.f
  %.sroa.518.0.insert.ext.i = zext nneg i8 %i.l to i32 ; 2 uses
  %.sroa.518.0.insert.shift.i = shl nuw nsw i32 %.sroa.518.0.insert.ext.i, 24
  %.sroa.417.0.insert.ext.i = zext nneg i8 %i.h to i32 ; 3 uses
  %.sroa.417.0.insert.shift.i = shl nuw nsw i32 %.sroa.417.0.insert.ext.i, 16
  %.sroa.016.0.insert.ext.i = zext i16 %i.f to i32
  %i.ag = or disjoint i32 %.sroa.518.0.insert.shift.i, %.sroa.417.0.insert.shift.i
  %.sroa.016.0.insert.insert.i = or disjoint i32 %i.ag, %.sroa.016.0.insert.ext.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.ai = load i8, ptr %i.ah, align 1, !range !90, !noundef !5 ; 3 uses
  %.not = icmp eq i8 %i.ai, 0
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  %i.aj = icmp ult i8 %i.h, 3                     ; 2 uses
  %i.ak = or disjoint i32 %.sroa.417.0.insert.ext.i, 12
  %.sroa.02.0.i.i = select i1 %i.aj, i32 %i.ak, i32 %.sroa.417.0.insert.ext.i
  %i.al = sext i16 %i.f to i32
  %i.am = add nsw i32 %i.al, 32800
  %.neg.i.i = sext i1 %i.aj to i32
  %i.an = add nsw i32 %i.am, %.neg.i.i            ; 3 uses
  %i.ao = udiv i32 %i.an, 100
  %i.ap = mul nuw nsw i32 %i.an, 1461
  %i.aq = lshr i32 %i.ap, 2
  %i.ar = udiv i32 %i.an, 400
  %i.as = mul nuw nsw i32 %.sroa.02.0.i.i, 979
  %i.at = add nsw i32 %i.as, -2919
  %i.au = lshr i32 %i.at, 5
  %i.av = add nuw nsw i32 %.sroa.518.0.insert.ext.i, -12699423
  %i.aw = sub nuw nsw i32 %i.av, %i.ao
  %i.ax = add nuw nsw i32 %i.aw, %i.ar
  %i.ay = add nsw i32 %i.ax, %i.aq
  %i.az = add nsw i32 %i.ay, %i.au
  %i.ba = mul i32 %i.az, 613566757
  %i.bb = add i32 %i.ba, -1879048192
  %i.bc = lshr i32 %i.bb, 29                      ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit, !prof !115

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @39, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #24
  unreachable

_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit: ; preds = %bb.l
  %i.be = trunc nuw nsw i32 %i.bc to i8           ; 2 uses
  %.not47 = icmp eq i8 %i.ai, %i.be
  br i1 %.not47, label %bb.n, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit54

bb.n:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.016.0.insert.insert.i, ptr %i.bf, align 2
  store i16 0, ptr %0, align 8
  br label %bb.o

_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit54: ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ai, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.be, ptr %i.bh, align 2
  store i8 14, ptr %i.b, align 8
  %i.bi = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8
  store i16 1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit54, %bb.n, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw(i32 noundef range(i32 0, 1114112) %0, ptr noalias nofree noundef nonnull initializes((0, 1)) %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ult i32 %0, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 2048
  %i.c = trunc i32 %0 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %0, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %0, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %0, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %0 to i8
  store i8 %i.q, ptr %1, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %1, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.e, ptr %i.s, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp samesign ult i32 %0, 65536
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = or disjoint i8 %i.k, -32
  store i8 %i.u, ptr %1, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.i, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.e, ptr %i.w, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %1, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.m, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.i, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.e, ptr %i.z, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods25encode_utf8_raw_unchecked.exit

end_hunk_0
