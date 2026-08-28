Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.01?download=true
inline.NumInlined: 432
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE6formatBb_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  %i.et = icmp samesign ult i64 %i.ed, 549755813888
  br i1 %i.et, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eu = icmp samesign ult i64 %i.ed, 8796093022208
  br i1 %i.eu, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ev = icmp samesign ult i64 %i.ed, 281474976710656
  %..i = select i1 %i.ev, i64 3, i64 4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %.sroa.04.0.i = phi i64 [ 2, %bb.bd ], [ %..i, %bb.be ], [ 1, %bb.bc ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  %i.ew = load ptr, ptr %i.es, align 8, !alias.scope !2397, !nonnull !5, !align !89, !noundef !5 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i16, ptr %i.ex, align 8, !noalias !2397, !noundef !5
  %i.ez = zext i16 %i.ey to i64
  %i.fa = add nuw nsw i64 %.sroa.04.0.i, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !2397, !noundef !5 ; 2 uses
  %i.fd = icmp ugt i64 %i.fa, %i.fc
  br i1 %i.fd, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i.thread, !prof !240

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit.i: ; preds = %bb.bf
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

.loopexit:                                        ; preds = %.backedge, %bb.ai, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53, %.loopexit.split.loop.exit168, %bb.a, %bb.bh, %bb.bb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73.a, %bb.ad
  %.sroa.9.1 = phi ptr [ %i.er, %bb.bb ], [ %.sroa.9.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73.a ], [ undef, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53 ], [ %i.bu, %bb.ad ], [ %i.fu, %bb.bh ], [ %i.gg, %.loopexit.split.loop.exit168 ], [ undef, %bb.a ], [ %i.cn, %bb.ai ], [ undef, %.backedge ]
  %.sroa.0.1 = phi i64 [ 1, %bb.bb ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit73.a ], [ 0, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit53 ], [ 1, %bb.ad ], [ 1, %bb.bh ], [ 1, %.loopexit.split.loop.exit168 ], [ 0, %bb.a ], [ 1, %bb.ai ], [ 0, %.backedge ]
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
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.az ], [ %i.bt, %bb.as ], [ %i.aa, %bb.e ], [ %i.aa, %bb.g ], [ %i.aa, %bb.f ], [ %i.bt, %bb.au ], [ %i.bt, %bb.at ], [ %i.ca, %bb.bb ], [ %i.ca, %bb.ba ], [ %i.ef, %bb.bj ], [ %i.ef, %bb.bi ], [ %i.ef, %bb.bh ]
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
  %i.ay = trunc nuw i32 %i.ax to i1
  br i1 %i.ay, label %bb.q, label %bb.u

bb.p:                                             ; preds = %bb.m
  %.not70.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not70.i.i, label %bb.ab, label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !2429, !noalias !2430, !noundef !5 ; 2 uses
  %or.cond.i.i.i = icmp ult i8 %i.al, 24
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %or.cond1.i.i.i = icmp ult i8 %i.aq, 60
  br i1 %or.cond1.i.i.i, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %or.cond2.i.i.i = icmp ult i8 %i.av, 60
  br i1 %or.cond2.i.i.i, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %or.cond3.i.i.i = icmp ult i32 %i.ba, 1000000000
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
  %i.bb = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.5115.0..sroa.5115.0..sroa.5115.2..sroa.055.0.copyload.i.i) #20, !noalias !2432
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
  %i.bc = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.5108.0..sroa.5108.0..sroa.5108.2..sroa.042.0.copyload.i.i) #20, !noalias !2432
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
  %i.bd = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h) #20, !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2433
  br label %bb.ar

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %storemerge125.i.i = phi i32 [ 1791, %bb.ab ], [ 3071, %bb.ac ]
  %i.be = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %storemerge125.i.i) #20, !noalias !2432
  br label %bb.ar

bb.af:                                            ; preds = %bb.ac
  %.sroa.5101.i.sroa.5.6.insert.ext.i = zext nneg i8 %i.al to i64
  %.sroa.5101.i.sroa.5.7.insert.ext.i = zext nneg i8 %i.aq to i64
  %.sroa.5101.i.sroa.5.7.insert.shift.i = shl nuw nsw i64 %.sroa.5101.i.sroa.5.7.insert.ext.i, 8
  %.sroa.5101.i.sroa.5.7.insert.insert.i = or disjoint i64 %.sroa.5101.i.sroa.5.7.insert.shift.i, %.sroa.5101.i.sroa.5.6.insert.ext.i
  br label %bb.be

bb.ag:                                            ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bg = load i32, ptr %i.bf, align 8, !range !521, !alias.scope !2429, !noalias !2430, !noundef !5
  %.not69.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not69.i.i, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2433
  store i8 19, ptr %i.j, align 8, !noalias !2433
  %i.bh = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j) #20, !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2433
  br label %bb.ar

bb.ai:                                            ; preds = %bb.ag
  %or.cond.i89.i.i = icmp ult i8 %i.al, 24
  br i1 %or.cond.i89.i.i, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2433
  store i8 18, ptr %i.i, align 8, !noalias !2433
  %i.bi = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i) #20, !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2433
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.bj = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 1791) #20, !noalias !2432
  br label %bb.ar

bb.al:                                            ; preds = %bb.ai
  %.sroa.5.i.sroa.5.6.insert.ext.i = zext nneg i8 %i.al to i64
  br label %bb.be

bb.am:                                            ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.bl = load i8, ptr %i.bk, align 2, !range !151, !alias.scope !2429, !noalias !2430, !noundef !5
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2433
  store i8 16, ptr %i.m, align 8, !noalias !2433
  %i.bn = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m) #20, !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2433
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bp = load i32, ptr %i.bo, align 8, !range !521, !alias.scope !2429, !noalias !2430, !noundef !5
  %.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i, label %bb.be, label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2433
  store i8 17, ptr %i.l, align 8, !noalias !2433
  %i.bq = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l) #20, !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2433
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2433
  store i8 15, ptr %i.k, align 8, !noalias !2433
  %i.br = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k) #20, !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2433
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an, %bb.ak, %bb.aj, %bb.ah, %bb.ae, %bb.ad, %bb.z, %bb.x
  %.sroa.4.4..sroa.4.4..sroa.4.8..i = phi ptr [ %i.bh, %bb.ah ], [ %i.bi, %bb.aj ], [ %i.be, %bb.ae ], [ %i.bc, %bb.z ], [ %i.bd, %bb.ad ], [ %i.bj, %bb.ak ], [ %i.br, %bb.aq ], [ %i.bq, %bb.ap ], [ %i.bn, %bb.an ], [ %i.bb, %bb.x ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2434
  store ptr %.sroa.4.4..sroa.4.4..sroa.4.8..i, ptr %i.g, align 8, !noalias !2434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2434
  store i8 28, ptr %i.f, align 8, !noalias !2412
  %i.bs = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.aw unwind label %bb.as, !noalias !2437

bb.as:                                            ; preds = %bb.ar
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bu = icmp eq ptr %.sroa.4.4..sroa.4.4..sroa.4.8..i, null
  br i1 %i.bu, label %common.resume, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bv = atomicrmw sub ptr %.sroa.4.4..sroa.4.4..sroa.4.8..i, i64 1 release, align 8, !noalias !2438
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.au, label %common.resume

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #20
          to label %common.resume unwind label %bb.av, !noalias !2437

bb.av:                                            ; preds = %bb.au
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2437
  unreachable

bb.aw:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2434
  %i.by = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.4.4..sroa.4.4..sroa.4.8..i, ptr noundef %i.bs), !noalias !2437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2434
  br label %bb.ay

bb.ax:                                            ; preds = %bb.bd, %bb.bf, %bb.bl, %bb.b
  ret void

bb.ay:                                            ; preds = %bb.i, %bb.aw
  %.sroa.6.1.ph = phi ptr [ %i.by, %bb.aw ], [ %i.af, %bb.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2447
  store ptr %.sroa.6.1.ph, ptr %i.e, align 8, !noalias !2447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2447
  store i8 24, ptr %i.d, align 8
  %i.bz = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.bd unwind label %bb.az, !noalias !2447

bb.az:                                            ; preds = %bb.ay
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cb = icmp eq ptr %.sroa.6.1.ph, null
  br i1 %i.cb, label %common.resume, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cc = atomicrmw sub ptr %.sroa.6.1.ph, i64 1 release, align 8, !noalias !2450
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.bb, label %common.resume

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #20
          to label %common.resume unwind label %bb.bc, !noalias !2447

bb.bc:                                            ; preds = %bb.bb
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2447
  unreachable

bb.bd:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2447
  %i.cf = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.6.1.ph, ptr noundef %i.bz), !noalias !2447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2447
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.cg, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ax

bb.be:                                            ; preds = %bb.ao, %bb.al, %bb.af, %bb.aa, %bb.y
  %.sroa.4.4..sroa.4.4..sroa.4.8..sroa.418.0.copyload.i = phi i64 [ %.sroa.5115.i.sroa.5.8.insert.insert.i, %bb.y ], [ %.sroa.5.i.sroa.5.6.insert.ext.i, %bb.al ], [ %.sroa.5101.i.sroa.5.7.insert.insert.i, %bb.af ], [ %.sroa.5108.i.sroa.5.8.insert.insert.i, %bb.aa ], [ 0, %bb.ao ]
  %.sroa.4.0..sroa.4.0..sroa.4.4..sroa.017.0.copyload.i = phi i32 [ %i.ba, %bb.y ], [ 0, %bb.al ], [ 0, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.ao ]
  %.sroa.6.12.insert.ext = zext i32 %.sroa.016.0.copyload.i to i64
  %.sroa.6.12.insert.shift = shl nuw i64 %.sroa.6.12.insert.ext, 32
  %.sroa.6.12.insert.insert = or disjoint i64 %.sroa.4.4..sroa.4.4..sroa.4.8..sroa.418.0.copyload.i, %.sroa.6.12.insert.shift
  %i.ch = inttoptr i64 %.sroa.6.12.insert.insert to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i32 %.sroa.4.0..sroa.4.0..sroa.4.4..sroa.017.0.copyload.i, ptr %i.r, align 8
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.ch, ptr %.4..4..4..sroa_idx, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cj = load i32, ptr %i.ci, align 8, !range !521, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = trunc nuw i32 %i.cj to i1
  br i1 %i.cm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit, label %bb.bf

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit: ; preds = %bb.be
  %.0..0..0..val = load i64, ptr %i.r, align 8    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  %i.cn = shl i32 %.sroa.016.0.copyload.i, 8
  %i.co = ashr i32 %i.cn, 24                      ; 3 uses
  %i.cp = icmp ult i32 %i.co, 3                   ; 2 uses
  %i.cq = or disjoint i32 %i.co, 12
  %.sroa.02.0.i.i.i = select i1 %i.cp, i32 %i.cq, i32 %i.co
  %sext.i.i.i = shl i32 %.sroa.016.0.copyload.i, 16
  %i.cr = ashr exact i32 %sext.i.i.i, 16
  %i.cs = add nsw i32 %i.cr, 32800
  %.neg.i.i.i = sext i1 %i.cp to i32
  %i.ct = add nsw i32 %i.cs, %.neg.i.i.i          ; 3 uses
  %i.cu = ashr i32 %.sroa.016.0.copyload.i, 24
  %i.cv = udiv i32 %i.ct, 100
  %i.cw = mul nuw nsw i32 %i.ct, 1461
  %i.cx = lshr i32 %i.cw, 2
  %i.cy = udiv i32 %i.ct, 400
  %i.cz = mul nsw i32 %.sroa.02.0.i.i.i, 979
  %i.da = add nsw i32 %i.cz, -2919
  %i.db = lshr i32 %i.da, 5
  %i.dc = add nsw i32 %i.cu, -12699423
  %i.dd = sub nuw nsw i32 %i.dc, %i.cv
  %i.de = add nuw nsw i32 %i.dd, %i.cy
  %i.df = add nsw i32 %i.de, %i.cx
  %i.dg = add nsw i32 %i.df, %i.db
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i64 %i.dh, 86400
  %i.dj = shl i64 %.0..0..0..val, 24
  %i.dk = ashr i64 %i.dj, 56
  %i.dl = mul nsw i64 %i.dk, 3600
  %i.dm = shl i64 %.0..0..0..val, 16
  %i.dn = ashr i64 %i.dm, 56
  %i.do = mul nsw i64 %i.dn, 60
  %i.dp = shl i64 %.0..0..0..val, 8
  %i.dq = ashr i64 %i.dp, 56
  %.sroa.02.0.extract.trunc.i = trunc i64 %.0..0..0..val to i32 ; 3 uses
  %i.dr = sext i32 %i.cl to i64
  %i.ds = sub nsw i64 %i.dq, %i.dr
  %i.dt = add nsw i64 %i.ds, %i.dl
  %i.du = add nsw i64 %i.dt, %i.do
  %i.dv = add nsw i64 %i.du, %i.di                ; 2 uses
  %i.dw = icmp slt i64 %i.dv, 0
  %i.dx = icmp ne i32 %.sroa.02.0.extract.trunc.i, 0
  %or.cond3.not.i.i = and i1 %i.dx, %i.dw         ; 2 uses
  %i.dy = zext i1 %or.cond3.not.i.i to i64
  %.sroa.05.0.i.i = add nsw i64 %i.dv, %i.dy      ; 2 uses
  %i.dz = add nsw i64 %.sroa.05.0.i.i, 377705023201
  %or.cond.i.i = icmp ult i64 %i.dz, 631107230402
  br i1 %or.cond.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 26, ptr %i.q, align 8
  %i.ea = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #20
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.eb, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ax

bb.bg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2459
  store i32 0, ptr %i.c, align 8, !noalias !2459
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cl, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !2459
  %i.ec = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtB1f_6bounds10RangeErrorEINtB8_12ErrorContextB1b_B1X_E7contextNtNtNtB8_2tz6offset5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, i32 7167) #25, !noalias !2459 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2459
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !2459
  store i64 1, ptr %0, align 8, !alias.scope !2459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2462
  store ptr %i.ec, ptr %i.b, align 8, !noalias !2462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2462
  store i8 21, ptr %i.a, align 8
  %i.ee = invoke noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit unwind label %bb.bh, !noalias !2462

bb.bh:                                            ; preds = %bb.bg
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.eg = icmp eq ptr %i.ec, null
  br i1 %i.eg, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eh = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !2465
  %i.ei = icmp eq i64 %i.eh, 1
  br i1 %i.ei, label %bb.bj, label %common.resume

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %common.resume unwind label %bb.bk, !noalias !2462

bb.bk:                                            ; preds = %bb.bj
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !2462
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2462
  %i.ek = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ec, ptr noundef %i.ee), !noalias !2462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2462
  store ptr %i.ek, ptr %i.ed, align 8
  br label %bb.bl

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtBM_9timestamp9TimestampNtBK_5ErrorEINtBK_12ErrorContextB1x_B1Y_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_.exit
  %i.el = add i32 %.sroa.02.0.extract.trunc.i, -1000000000
  %.sroa.021.0.i.i = select i1 %or.cond3.not.i.i, i32 %i.el, i32 %.sroa.02.0.extract.trunc.i
  %i.em = inttoptr i64 %.sroa.05.0.i.i to ptr
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.021.0.i.i, ptr %i.en, align 8, !alias.scope !2459
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.em, ptr %i.eo, align 8, !alias.scope !2459
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
  %i.q = icmp ne i8 %i.p, 0
  %.not57 = select i1 %i.m, i1 %i.q, i1 false
  br i1 %.not57, label %bb.c, label %bb.b, !prof !2474

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB7_14BrokenDownTime7to_date7to_date(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) #20
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.r = add i16 %i.f, 9999
  %or.cond.i = icmp ult i16 %i.r, 19999
  br i1 %or.cond.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.s = add i8 %i.h, -1
  %or.cond1.i = icmp ult i8 %i.s, 12
  br i1 %or.cond1.i, label %bb.e, label %bb.k, !prof !2475

bb.e:                                             ; preds = %bb.d
  %i.t = icmp slt i8 %i.l, 1
  br i1 %i.t, label %bb.k, label %bb.f, !prof !240

bb.f:                                             ; preds = %bb.e
  %i.u = icmp samesign ugt i8 %i.l, 28
  br i1 %i.u, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i8 %i.h, 2
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = srem i16 %i.f, 25
  %i.x = icmp eq i16 %i.w, 0
  %..i.i = select i1 %i.x, i16 15, i16 3
  %i.y = and i16 %..i.i, %i.f
  %i.z = icmp eq i16 %i.y, 0
  %spec.select.i.i = select i1 %i.z, i8 29, i8 28
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aa = lshr i8 %i.h, 3
  %i.ab = xor i8 %i.aa, %i.h
  %i.ac = or i8 %i.ab, 30
  br label %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i

_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i = phi i8 [ %spec.select.i.i, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = icmp samesign ugt i8 %i.l, %.sroa.0.0.i.i
  br i1 %i.ad, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit, !prof !2476

bb.j:                                             ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i
  %.sroa.530.0.insert.ext.i = zext i16 %i.f to i32
  %.sroa.530.0.insert.shift.i = shl nuw i32 %.sroa.530.0.insert.ext.i, 16
  %.sroa.429.0.insert.ext.i = zext nneg i8 %i.h to i32
  %.sroa.429.0.insert.shift.i = shl nuw nsw i32 %.sroa.429.0.insert.ext.i, 8
  %.sroa.429.0.insert.insert.i = or disjoint i32 %.sroa.429.0.insert.shift.i, %.sroa.530.0.insert.shift.i
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j, %bb.c, %bb.e
  %.sroa.6.0.i.ph = phi i32 [ 767, %bb.e ], [ 8447, %bb.c ], [ %.sroa.429.0.insert.insert.i, %bb.j ], [ 3327, %bb.d ]
  %i.ae = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.6.0.i.ph) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 9, ptr %i.a, align 8
  %i.af = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %i.ae) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  store i16 1, ptr %0, align 8
  br label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtBM_5civil4date4DateNtBK_5ErrorEINtBK_12ErrorContextB1x_B1W_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_.exit: ; preds = %_RNvNtCsb09rMIQFAXO_9jiff_core5civil13days_in_month.exit.i, %bb.f
  %.sroa.518.0.insert.ext.i = zext nneg i8 %i.l to i32 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsr_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write9write_strCsa9sSWSfjDbm_4jiff:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.o, align 1, !alias.scope !2480, !noalias !2477
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  store <16 x i8> %wide.load, ptr %gep, align 1, !alias.scope !2477, !noalias !2480
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2483

._crit_edge.i:                                    ; preds = %bb.c, %.preheader.i
  %i.q = trunc nuw nsw i64 %i.c to i8
  store i8 %i.q, ptr %0, align 1, !alias.scope !2477, !noalias !2480
  br label %_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.sroa.02.010.i = phi i64 [ %i.w, %bb.c ], [ %.sroa.02.010.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.r = sub nuw nsw i64 %.sroa.02.010.i, %i.b    ; 3 uses
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #24, !noalias !2486
  unreachable

bb.c:                                             ; preds = %scalar.ph
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !2480, !noalias !2477, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.010.i
  store i8 %i.u, ptr %i.v, align 1, !alias.scope !2477, !noalias !2480
  %i.w = add nuw i64 %.sroa.02.010.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !2487

_RNvMsg_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.a, %._crit_edge.i
  ret i1 %or.cond.not.i.not
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RNvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB7_9Extension18write_negative_int(i8 noundef, i8 noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offsetNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs2_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtB7_9IntoError10into_error(i8 noundef range(i8 0, 3), i8) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone14to_offset_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone14to_offset_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtNtCsb09rMIQFAXO_9jiff_core5civil4date24iso_week_start_from_year(i16 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtCsb09rMIQFAXO_9jiff_core4util8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write10write_charCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef dereferenceable(10), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYINtNtCsb09rMIQFAXO_9jiff_core4util8ArrayStrKj9_ENtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef dereferenceable(10), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef range(i8 0, 9)) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RNvMs2_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerNtB7_9Extension14write_str_cold(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), i8 noundef range(i8 0, 3), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom15format_datetimeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom18format_12hour_timeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtNtCsa9sSWSfjDbm_4jiff4util4utf86decode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom11format_dateNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom11format_timeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32) unnamed_addr #4

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB7_14BrokenDownTime7to_date7to_date(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #16

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noinline }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { noinline noreturn }
attributes #25 = { inlinehint }
attributes #26 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{i8 -1, i8 8}
!5 = !{}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_: argument 0"}
!8 = distinct !{!8, !"_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtNtBa_3fmt7strtime7printer4ItemNtB8_5ErrorEINtB8_12ErrorContextB1b_B1L_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_"}
!9 = !{!10, !12, !14, !16, !7}
!10 = distinct !{!10, !11, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!11 = distinct !{!11, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!12 = distinct !{!12, !13, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!13 = distinct !{!13, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!14 = distinct !{!14, !15, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!15 = distinct !{!15, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!16 = distinct !{!16, !17, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!17 = distinct !{!17, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtNtBM_3fmt7strtime7printer4ItemNtBK_5ErrorEINtBK_12ErrorContextB1x_B27_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_: argument 0"}
!20 = distinct !{!20, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtB4_6result6ResultNtNtNtNtBM_3fmt7strtime7printer4ItemNtBK_5ErrorEINtBK_12ErrorContextB1x_B27_E7contextNtNtNtBK_3fmt7strtime5ErrorE0EBM_"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_: argument 0"}
!23 = distinct !{!23, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtime5ErrorEBJ_"}
!24 = !{i8 0, i8 36}
!25 = !{!22, !19}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff: argument 0"}
!28 = distinct !{!28, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff"}
!29 = distinct !{!29, !30, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff: argument 0"}
!30 = distinct !{!30, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff"}
!31 = !{!32, !34}
!32 = distinct !{!32, !33, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff: argument 0"}
!33 = distinct !{!33, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff"}
!34 = distinct !{!34, !35, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff: argument 0"}
!35 = distinct !{!35, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff"}
!36 = !{!37, !39}
!37 = distinct !{!37, !38, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff: argument 0"}
!38 = distinct !{!38, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff"}
!39 = distinct !{!39, !40, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff: argument 0"}
!40 = distinct !{!40, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff"}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff: argument 0"}
!43 = distinct !{!43, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff"}
!44 = distinct !{!44, !45, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff: argument 0"}
!45 = distinct !{!45, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff"}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff: argument 0"}
!48 = distinct !{!48, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff"}
!49 = distinct !{!49, !50, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff: argument 0"}
!50 = distinct !{!50, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff"}
!51 = !{!52, !54}
!52 = distinct !{!52, !53, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff: argument 0"}
!53 = distinct !{!53, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff"}
!54 = distinct !{!54, !55, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff: argument 0"}
!55 = distinct !{!55, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff"}
!56 = !{!57, !59, !61, !63}
!57 = distinct !{!57, !58, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!58 = distinct !{!58, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!59 = distinct !{!59, !60, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!60 = distinct !{!60, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!61 = distinct !{!61, !62, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!62 = distinct !{!62, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!63 = distinct !{!63, !64, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!64 = distinct !{!64, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!65 = !{i32 0, i32 7}
!66 = !{!67, !69, !71, !73}
!67 = distinct !{!67, !68, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!68 = distinct !{!68, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!69 = distinct !{!69, !70, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!70 = distinct !{!70, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!71 = distinct !{!71, !72, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!72 = distinct !{!72, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!73 = distinct !{!73, !74, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!74 = distinct !{!74, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!75 = !{!76, !78, !80, !82}
!76 = distinct !{!76, !77, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!77 = distinct !{!77, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!78 = distinct !{!78, !79, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!79 = distinct !{!79, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!80 = distinct !{!80, !81, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!81 = distinct !{!81, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!82 = distinct !{!82, !83, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!83 = distinct !{!83, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE10format_oneBb_: argument 0"}
!86 = distinct !{!86, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE10format_oneBb_"}
!87 = distinct !{!87, !86, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE10format_oneBb_: argument 1"}
!88 = !{!87}
!89 = !{i64 8}
!90 = !{i8 0, i8 8}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE16fmt_weekday_fullBb_: argument 0"}
!93 = distinct !{!93, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE16fmt_weekday_fullBb_"}
!94 = !{!95, !97, !92}
!95 = distinct !{!95, !96, !"_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE16fmt_weekday_full0Bd_: argument 0"}
!96 = distinct !{!96, !"_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE16fmt_weekday_full0Bd_"}
!97 = distinct !{!97, !98, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE16fmt_weekday_full0EBO_: argument 0"}
!98 = distinct !{!98, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE16fmt_weekday_full0EBO_"}
!99 = !{i16 0, i16 2}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtB13_5error5ErrorEEB13_: argument 0"}
!102 = distinct !{!102, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtB13_5error5ErrorEEB13_"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!105 = distinct !{!105, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!108 = distinct !{!108, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!109 = !{!107, !104, !101}
!110 = !{!111, !113, !107, !104, !101, !92}
!111 = distinct !{!111, !112, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!112 = distinct !{!112, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!113 = distinct !{!113, !114, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!114 = distinct !{!114, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!115 = !{!"branch_weights", i32 1, i32 14000}
!116 = !{!117, !119}
!117 = distinct !{!117, !118, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_: argument 0"}
!118 = distinct !{!118, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_"}
!119 = distinct !{!119, !118, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_: argument 1"}
!120 = !{!121, !87}
!121 = distinct !{!121, !118, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_: argument 2"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE18fmt_weekday_abbrevBb_: argument 0"}
!124 = distinct !{!124, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE18fmt_weekday_abbrevBb_"}
!125 = !{!126, !128, !123}
!126 = distinct !{!126, !127, !"_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE18fmt_weekday_abbrev0Bd_: argument 0"}
!127 = distinct !{!127, !"_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE18fmt_weekday_abbrev0Bd_"}
!128 = distinct !{!128, !129, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE18fmt_weekday_abbrev0EBO_: argument 0"}
!129 = distinct !{!129, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsa9sSWSfjDbm_4jiff5civil7weekday7WeekdayE7or_elseNCNvMs1_NtNtNtBO_3fmt7strtime7printerINtB1K_9FormatterNtB1M_13DefaultCustomE18fmt_weekday_abbrev0EBO_"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtB13_5error5ErrorEEB13_: argument 0"}
!132 = distinct !{!132, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4date4DateNtNtB13_5error5ErrorEEB13_"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!135 = distinct !{!135, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!138 = distinct !{!138, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!139 = !{!137, !134, !131}
!140 = !{!141, !143, !137, !134, !131, !123}
!141 = distinct !{!141, !142, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!142 = distinct !{!142, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!143 = distinct !{!143, !144, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!144 = distinct !{!144, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!145 = !{!146, !148}
!146 = distinct !{!146, !147, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_: argument 0"}
!147 = distinct !{!147, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_"}
!148 = distinct !{!148, !147, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_: argument 1"}
!149 = !{!150, !87}
!150 = distinct !{!150, !147, !"_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printer4ItemNtNtBQ_5error5ErrorE7map_errB1y_NCINvXsk_B1A_Bv_INtB1A_12ErrorContextBI_B1y_E7contextNtNtNtB1A_3fmt7strtime5ErrorE0EBQ_: argument 2"}
!151 = !{i8 0, i8 2}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE14fmt_month_fullBb_: argument 0"}
!154 = distinct !{!154, !"_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB5_9FormatterNtB7_13DefaultCustomE14fmt_month_fullBb_"}
!155 = !{!156, !158, !153}
!156 = distinct !{!156, !157, !"_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE14fmt_month_full0Bd_: argument 0"}
!157 = distinct !{!157, !"_RNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB7_9FormatterNtB9_13DefaultCustomE14fmt_month_full0Bd_"}
!158 = distinct !{!158, !159, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE14fmt_month_full0EB16_: argument 0"}
!159 = distinct !{!159, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionaE7or_elseNCNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime7printerINtB10_9FormatterNtB12_13DefaultCustomE14fmt_month_full0EB16_"}
!160 = !{!161}
end_hunk_1
