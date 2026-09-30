Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.04?download=true
inline.NumInlined: 2047
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins8function8function:bb.a
  %i.vp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit174: ; preds = %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.experimental.noalias.scope.decl(metadata !4849)
  call void @llvm.experimental.noalias.scope.decl(metadata !4850)
  call void @llvm.experimental.noalias.scope.decl(metadata !4851)
  call void @llvm.experimental.noalias.scope.decl(metadata !4852)
  %i.vq = load ptr, ptr %i.ce, align 8, !alias.scope !4853, !nonnull !8, !noundef !8
  %i.vr = atomicrmw sub ptr %i.vq, i64 1 release, align 8, !noalias !4853
  %i.vs = icmp eq i64 %i.vr, 1
  br i1 %i.vs, label %bb.kq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit175

bb.kq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit174
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ce) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit175

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit177: ; preds = %bb.iu, %.body141.thread, %bb.kr, %.body141
  %.pn86237 = phi { ptr, i32 } [ %.pn86238, %.body141.thread ], [ %.pn86238, %bb.kr ], [ %.pn84, %.body141 ], [ %i.uc, %bb.iu ]
  resume { ptr, i32 } %.pn86237

.body141.thread:                                  ; preds = %.split.thread, %bb.kn, %.body141
  %.pn86238 = phi { ptr, i32 } [ %.pn84, %.body141 ], [ %i.vo, %bb.kn ], [ %lpad.thr_comm, %.split.thread ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4854)
  call void @llvm.experimental.noalias.scope.decl(metadata !4855)
  call void @llvm.experimental.noalias.scope.decl(metadata !4856)
  call void @llvm.experimental.noalias.scope.decl(metadata !4857)
  %i.vt = load ptr, ptr %i.ce, align 8, !alias.scope !4858, !nonnull !8, !noundef !8
  %i.vu = atomicrmw sub ptr %i.vt, i64 1 release, align 8, !noalias !4858
  %i.vv = icmp eq i64 %i.vu, 1
  br i1 %i.vv, label %bb.kr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit177

bb.kr:                                            ; preds = %.body141.thread
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ce) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtBG_3ast14BlockStatementEEBG_.exit177 unwind label %bb.hs
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, 8589934594) i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins9set_color9set_color(ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [18 x i8], align 8                ; 17 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [56 x i8], align 8                ; 28 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %i.i = alloca [1 x i8], align 1                 ; 3 uses
  %i.j = alloca [1 x i8], align 1                 ; 3 uses
  %i.k = alloca [1 x i8], align 1                 ; 3 uses
  %i.l = alloca [1 x i8], align 1                 ; 3 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [18 x i8], align 8                ; 6 uses
  %i.o = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 8 uses
  %i.p = alloca [72 x i8], align 8                ; 9 uses
  %i.q = alloca [64 x i8], align 8                ; 12 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 11 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 11 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [64 x i8], align 8               ; 12 uses
  %i.aj = alloca [24 x i8], align 8               ; 11 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [40 x i8], align 8               ; 16 uses
  %i.aq = icmp samesign ult i64 %3, 2
  br i1 %i.aq, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @_RNvNtCs8frGy5WneL6_4fish9text_face27parse_text_face_and_options(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ap, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true)
  %i.ar = load i64, ptr %i.ap, align 8, !range !4897, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.ar, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4.0.copyload = load i64, ptr %i.as, align 8 ; 9 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8
  switch i64 %i.ar, label %default.unreachable [
    i64 0, label %bb.bq
    i64 1, label %bb.br
    i64 2, label %bb.bs
    i64 3, label %bb.bt
    i64 4, label %bb.bu
    i64 5, label %bb.bv
    i64 6, label %bb.bw
    i64 7, label %bb.bx
  ]

bb.d:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !range !35, !noundef !8 ; 2 uses
  %i.av = add nsw i8 %i.au, -2
  %.inv = icmp samesign ult i8 %i.au, 2
  %narrow = select i1 %.inv, i8 2, i8 %i.av
  switch i8 %narrow, label %bb.e [
    i8 0, label %bb.ax
    i8 1, label %bb.bp
    i8 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.as, align 8, !nonnull !8, !align !17, !noundef !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.02.0.copyload = load i32, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %.sroa.04.0.copyload = load i32, ptr %i.ba, align 4
  %.sroa.0101.0.copyload = load i48, ptr %i.at, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4898)
  %.fr88.i = freeze i32 %.sroa.04.0.copyload      ; 2 uses
  %.fr.i = freeze i32 %.sroa.02.0.copyload        ; 2 uses
  %.sroa.012.0.extract.trunc.i = trunc i32 %.fr.i to i8 ; 2 uses
  %.sroa.413.0.extract.shift.i = lshr i32 %.fr.i, 8
  %.sroa.413.0.extract.trunc.i = trunc nuw i32 %.sroa.413.0.extract.shift.i to i24 ; 2 uses
  %.sroa.017.0.extract.trunc.i = trunc i32 %.fr88.i to i8 ; 2 uses
  %.sroa.418.0.extract.shift.i = lshr i32 %.fr88.i, 8
  %.sroa.418.0.extract.trunc.i = trunc nuw i32 %.sroa.418.0.extract.shift.i to i24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4899
  store i64 0, ptr %i.e, align 8, !noalias !4899
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !4899
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.537.0..sroa_idx.i, align 8, !noalias !4899
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 0, ptr %i.bb, align 8, !noalias !4899
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 -1, ptr %i.bc, align 4, !noalias !4899
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %i.bd, align 8, !noalias !4899
  %.sroa.043.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i8 1, ptr %.sroa.043.sroa.7.0..sroa_idx.i, align 4, !noalias !4899
  %.sroa.043.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 37
  store i8 6, ptr %.sroa.043.sroa.8.0..sroa_idx.i, align 1, !noalias !4899
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 38
  store i8 3, ptr %.sroa.444.0..sroa_idx.i, align 2, !noalias !4899
  %.sroa.646.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 42
  store i8 3, ptr %.sroa.646.0..sroa_idx.i, align 2, !noalias !4899
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 46
  store i8 3, ptr %.sroa.8.0..sroa_idx.i, align 2, !noalias !4899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4899
  %i.be = icmp eq i64 %i.ay, 0
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4899
  invoke void @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color17named_color_names(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.y unwind label %.loopexit.split-lp.i, !noalias !4900

bb.h:                                             ; preds = %bb.y, %bb.f
  %.sroa.033.0.i = phi i8 [ 1, %bb.y ], [ 0, %bb.f ] ; 8 uses
  %.sroa.5.0.i = phi i64 [ %i.cm, %bb.y ], [ %i.ay, %bb.f ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ck, %bb.y ], [ %i.aw, %bb.f ] ; 4 uses
  %.idx = shl nuw nsw i64 %.sroa.5.0.i, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.idx ; 3 uses
  %.not57.i = icmp eq i8 %.sroa.012.0.extract.trunc.i, -1 ; 2 uses
  %.sroa.031.0.i = select i1 %.not57.i, i8 0, i8 %.sroa.012.0.extract.trunc.i ; 3 uses
  %.not58.i = icmp eq i8 %.sroa.017.0.extract.trunc.i, -1 ; 3 uses
  %.sroa.026.0.i = select i1 %.not58.i, i8 0, i8 %.sroa.017.0.extract.trunc.i ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 3 uses
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %.sroa.528.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.b, i64 15 ; 2 uses
  %i.bj = icmp eq i64 %.sroa.5.0.i, 0
  br i1 %i.bj, label %.split67.us.i, label %.split.us.i.preheader

.split.us.i.preheader:                            ; preds = %bb.h
  br i1 %.not57.i, label %.lr.ph326, label %.split.split.split.us.i.preheader

.split.us.i:                                      ; preds = %bb.o
  %i.bk = icmp eq ptr %i.bl, %i.bf
  br i1 %i.bk, label %.split67.us.i, label %.lr.ph326

.lr.ph326:                                        ; preds = %.split.us.i.preheader, %.split.us.i
  %.sroa.528.0.us.i325 = phi i24 [ %.sroa.528.1.us.i, %.split.us.i ], [ undef, %.split.us.i.preheader ] ; 4 uses
  %.sroa.019.0.us.i324 = phi ptr [ %i.bl, %.split.us.i ], [ %.sroa.0.0.i, %.split.us.i.preheader ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.019.0.us.i324, i64 16 ; 2 uses
  %i.bm = invoke noundef zeroext i1 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams15out_is_terminal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.i unwind label %.loopexit.split.us.i, !noalias !4900

bb.i:                                             ; preds = %.lr.ph326
  br i1 %i.bm, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr %.sroa.019.0.us.i324, align 8, !nonnull !8, !align !12, !noundef !8
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.019.0.us.i324, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !8
  %i.bq = invoke i32 @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color9from_wstr(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bn, i64 noundef %i.bp)
          to label %bb.k unwind label %.loopexit.split.us.i, !noalias !4900 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.br = and i32 %i.bq, 255
  %.not.us.i = icmp eq i32 %i.br, 255
  %.sroa.528.0.insert.ext.us.i = zext i24 %.sroa.528.0.us.i325 to i32
  %.sroa.528.0.insert.shift.us.i = shl nuw i32 %.sroa.528.0.insert.ext.us.i, 8
  %.sroa.021.0.us.i = select i1 %.not.us.i, i32 %.sroa.528.0.insert.shift.us.i, i32 %i.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4899
  %.sroa.528.2.us.i = select i1 %.not58.i, i24 %.sroa.528.0.us.i325, i24 %.sroa.418.0.extract.trunc.i ; 2 uses
  store i32 %.sroa.021.0.us.i, ptr %i.bg, align 2, !noalias !4899
  store i8 %.sroa.031.0.i, ptr %i.bh, align 2, !noalias !4899
  store i24 %.sroa.528.0.us.i325, ptr %.sroa.532.0..sroa_idx.i, align 1, !noalias !4899
  store i8 %.sroa.026.0.i, ptr %i.bi, align 2, !noalias !4899
  store i24 %.sroa.528.2.us.i, ptr %.sroa.528.0..sroa_idx29.i, align 1, !noalias !4899
  store i48 %.sroa.0101.0.copyload, ptr %i.b, align 8, !noalias !4899
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13set_text_face(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(18) %i.b)
          to label %bb.l unwind label %.loopexit.split.us.i, !noalias !4900

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4899
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.sroa.528.1.us.i = phi i24 [ %.sroa.528.2.us.i, %bb.l ], [ %.sroa.528.0.us.i325, %bb.i ]
  %i.bs = load ptr, ptr %.sroa.019.0.us.i324, align 8, !nonnull !8, !align !12, !noundef !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.019.0.us.i324, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !8
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter10write_wstr(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bs, i64 noundef %i.bu)
          to label %bb.n unwind label %.loopexit.split.us.i, !noalias !4900

bb.n:                                             ; preds = %bb.m
  %i.bv = invoke noundef zeroext i1 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams15out_is_terminal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.o unwind label %.loopexit.split.us.i, !noalias !4900 ; 0 uses

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter7writech(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e, i32 noundef 10)
          to label %.split.us.i unwind label %.loopexit.split.us.i, !noalias !4900

.loopexit.split.us.i:                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %.lr.ph326
  %lpad.loopexit.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.split.split.split.us.i.preheader:                ; preds = %.split.us.i.preheader
  br i1 %.not58.i, label %.lr.ph323, label %.lr.ph

.split.split.split.us.i:                          ; preds = %bb.x
  %i.bw = icmp eq ptr %i.bx, %i.bf
  br i1 %i.bw, label %.split67.us.i, label %.lr.ph323

.lr.ph323:                                        ; preds = %.split.split.split.us.i.preheader, %.split.split.split.us.i
  %.sroa.019.0.us78.i322 = phi ptr [ %i.bx, %.split.split.split.us.i ], [ %.sroa.0.0.i, %.split.split.split.us.i.preheader ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.019.0.us78.i322, i64 16 ; 2 uses
  %i.by = invoke noundef zeroext i1 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams15out_is_terminal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.p unwind label %.loopexit.split.split.split.us.i, !noalias !4900

bb.p:                                             ; preds = %.lr.ph323
  br i1 %i.by, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %.sroa.019.0.us78.i322, align 8, !nonnull !8, !align !12, !noundef !8
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.019.0.us78.i322, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !8
  %i.cc = invoke i32 @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color9from_wstr(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bz, i64 noundef %i.cb)
          to label %bb.r unwind label %.loopexit.split.split.split.us.i, !noalias !4900 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.cd = and i32 %i.cc, 255
  %.not.us80.i = icmp eq i32 %i.cd, 255
  %.sroa.021.0.us83.i = select i1 %.not.us80.i, i32 0, i32 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4899
  store i32 %.sroa.021.0.us83.i, ptr %i.bg, align 2, !noalias !4899
  store i8 %.sroa.031.0.i, ptr %i.bh, align 2, !noalias !4899
  store i24 %.sroa.413.0.extract.trunc.i, ptr %.sroa.532.0..sroa_idx.i, align 1, !noalias !4899
  store i8 %.sroa.026.0.i, ptr %i.bi, align 2, !noalias !4899
  store i48 %.sroa.0101.0.copyload, ptr %i.b, align 8, !noalias !4899
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13set_text_face(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(18) %i.b)
          to label %bb.s unwind label %.loopexit.split.split.split.us.i, !noalias !4900

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4899
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.ce = load ptr, ptr %.sroa.019.0.us78.i322, align 8, !nonnull !8, !align !12, !noundef !8
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.019.0.us78.i322, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !8
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter10write_wstr(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ce, i64 noundef %i.cg)
          to label %bb.u unwind label %.loopexit.split.split.split.us.i, !noalias !4900

bb.u:                                             ; preds = %bb.t
  %i.ch = invoke noundef zeroext i1 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams15out_is_terminal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.v unwind label %.loopexit.split.split.split.us.i, !noalias !4900

bb.v:                                             ; preds = %bb.u
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter15reset_text_face(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.x unwind label %.loopexit.split.split.split.us.i, !noalias !4900

bb.x:                                             ; preds = %bb.w, %bb.v
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter7writech(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e, i32 noundef 10)
          to label %.split.split.split.us.i unwind label %.loopexit.split.split.split.us.i, !noalias !4900

.loopexit.split.split.split.us.i:                 ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.q, %.lr.ph323
  %lpad.loopexit.us86.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.al, %bb.aj, %.loopexit.split-lp.i, %.loopexit.split.split.split.i, %.loopexit.split.split.split.us.i, %.loopexit.split.us.i
  %.sroa.033.1.i = phi i8 [ %.sroa.033.0.i, %bb.aj ], [ %.sroa.033.0.i, %bb.al ], [ %.sroa.033.2.ph.i, %.loopexit.split-lp.i ], [ %.sroa.033.0.i, %.loopexit.split.us.i ], [ %.sroa.033.0.i, %.loopexit.split.split.split.us.i ], [ %.sroa.033.0.i, %.loopexit.split.split.split.i ]
  %.pn.i = phi { ptr, i32 } [ %i.de, %bb.aj ], [ %i.df, %bb.al ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.us.i, %.loopexit.split.us.i ], [ %lpad.loopexit.us86.i, %.loopexit.split.split.split.us.i ], [ %lpad.loopexit.i, %.loopexit.split.split.split.i ] ; 2 uses
  %i.ci = trunc nuw i8 %.sroa.033.1.i to i1
  br i1 %i.ci, label %bb.av, label %.body64.i

.loopexit.split.split.split.i:                    ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %.lr.ph
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i, %.split67.us.i, %bb.g
  %.sroa.033.2.ph.i = phi i8 [ 0, %bb.g ], [ %.sroa.033.0.i, %.split67.us.i ], [ %.sroa.033.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.y:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4899
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !4899, !nonnull !8, !noundef !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !4899, !noundef !8
  br label %bb.h

.split.split.split.i:                             ; preds = %bb.ag
  %i.cn = icmp eq ptr %i.co, %i.bf
  br i1 %i.cn, label %.split67.us.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split.split.split.us.i.preheader, %.split.split.split.i
  %.sroa.528.0.i321 = phi i24 [ %.sroa.528.1.i, %.split.split.split.i ], [ undef, %.split.split.split.us.i.preheader ] ; 2 uses
  %.sroa.019.0.i320 = phi ptr [ %i.co, %.split.split.split.i ], [ %.sroa.0.0.i, %.split.split.split.us.i.preheader ] ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i320, i64 16 ; 2 uses
  %i.cp = invoke noundef zeroext i1 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams15out_is_terminal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.z unwind label %.loopexit.split.split.split.i, !noalias !4900

.split67.us.i:                                    ; preds = %.split.split.split.i, %.split.split.split.us.i, %.split.us.i, %bb.h
  %i.cq = load ptr, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !4899, !nonnull !8, !noundef !8
  %i.cr = load i64, ptr %.sroa.537.0..sroa_idx.i, align 8, !noalias !4899, !noundef !8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !4898, !noalias !4900, !nonnull !8, !align !17, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4899
  invoke void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cr)
          to label %bb.ai unwind label %.loopexit.split-lp.i, !noalias !4900

bb.z:                                             ; preds = %.lr.ph
  br i1 %i.cp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cu = load ptr, ptr %.sroa.019.0.i320, align 8, !nonnull !8, !align !12, !noundef !8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i320, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !8
  %i.cx = invoke i32 @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color9from_wstr(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cu, i64 noundef %i.cw)
          to label %bb.ac unwind label %.loopexit.split.split.split.i, !noalias !4900 ; 2 uses

bb.ab:                                            ; preds = %bb.ad, %bb.z
  %.sroa.528.1.i = phi i24 [ %.sroa.418.0.extract.trunc.i, %bb.ad ], [ %.sroa.528.0.i321, %bb.z ]
  %i.cy = load ptr, ptr %.sroa.019.0.i320, align 8, !nonnull !8, !align !12, !noundef !8
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i320, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !noundef !8
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter10write_wstr(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cy, i64 noundef %i.da)
          to label %bb.ae unwind label %.loopexit.split.split.split.i, !noalias !4900

bb.ac:                                            ; preds = %bb.aa
  %i.db = and i32 %i.cx, 255
  %.not.i = icmp eq i32 %i.db, 255
  %.sroa.528.0.insert.ext.i = zext i24 %.sroa.528.0.i321 to i32
  %.sroa.528.0.insert.shift.i = shl nuw i32 %.sroa.528.0.insert.ext.i, 8
  %.sroa.021.0.i = select i1 %.not.i, i32 %.sroa.528.0.insert.shift.i, i32 %i.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4899
  store i32 %.sroa.021.0.i, ptr %i.bg, align 2, !noalias !4899
  store i8 %.sroa.031.0.i, ptr %i.bh, align 2, !noalias !4899
  store i24 %.sroa.413.0.extract.trunc.i, ptr %.sroa.532.0..sroa_idx.i, align 1, !noalias !4899
  store i8 %.sroa.026.0.i, ptr %i.bi, align 2, !noalias !4899
  store i24 %.sroa.418.0.extract.trunc.i, ptr %.sroa.528.0..sroa_idx29.i, align 1, !noalias !4899
  store i48 %.sroa.0101.0.copyload, ptr %i.b, align 8, !noalias !4899
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter13set_text_face(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(18) %i.b)
          to label %bb.ad unwind label %.loopexit.split.split.split.i, !noalias !4900

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4899
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ab
  %i.dc = invoke noundef zeroext i1 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams15out_is_terminal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.af unwind label %.loopexit.split.split.split.i, !noalias !4900

bb.af:                                            ; preds = %bb.ae
  br i1 %i.dc, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %bb.af
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter7writech(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e, i32 noundef 10)
          to label %.split.split.split.i unwind label %.loopexit.split.split.split.i, !noalias !4900

bb.ah:                                            ; preds = %bb.af
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter15reset_text_face(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.ag unwind label %.loopexit.split.split.split.i, !noalias !4900

bb.ai:                                            ; preds = %.split67.us.i
  %i.dd = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.ak unwind label %bb.aj, !noalias !4900 ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #34
          to label %.body.i unwind label %bb.au, !noalias !4900

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.al, !noalias !4900

bb.al:                                            ; preds = %bb.ak
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.am, !noalias !4900

bb.am:                                            ; preds = %bb.al
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4900
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.i, !noalias !4900

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4899
  %i.dh = trunc nuw i8 %.sroa.033.0.i to i1
  br i1 %i.dh, label %bb.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ar, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4899
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_RNvNtNtCs8frGy5WneL6_4fish8builtins9set_color12print_colors.exit unwind label %bb.an, !noalias !4900

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %common.resume unwind label %bb.ao, !noalias !4900

bb.ao:                                            ; preds = %bb.an
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4900
  unreachable

common.resume:                                    ; preds = %.body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body153, %.body162, %.body172, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit177, %.body186, %.body192, %bb.bm, %bb.an, %.body64.i
  %common.resume.op = phi { ptr, i32 } [ %i.em, %bb.bm ], [ %.pn61.i, %.body64.i ], [ %i.di, %bb.an ], [ %.pn, %.body ], [ %.pn108, %.body192 ], [ %.pn128, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %.pn126, %.body153 ], [ %.pn122, %.body162 ], [ %.pn118, %.body172 ], [ %.pn114, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit177 ], [ %.pn112, %.body186 ]
  resume { ptr, i32 } %common.resume.op

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.ar unwind label %bb.aq, !noalias !4900

bb.aq:                                            ; preds = %bb.ap
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body64.i unwind label %bb.as, !noalias !4900

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i unwind label %bb.at, !noalias !4900

bb.as:                                            ; preds = %bb.aq
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4900
  unreachable

.body64.i:                                        ; preds = %bb.av, %bb.at, %bb.aq, %.body.i
  %.pn61.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %.pn.i, %bb.av ], [ %i.dm, %bb.at ], [ %i.dk, %bb.aq ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #34
          to label %common.resume unwind label %bb.au, !noalias !4900

bb.at:                                            ; preds = %bb.ar
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i

bb.au:                                            ; preds = %bb.av, %.body64.i, %bb.aj
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4900
  unreachable

bb.av:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #34
          to label %.body64.i unwind label %bb.au, !noalias !4900

_RNvNtNtCs8frGy5WneL6_4fish8builtins9set_color12print_colors.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e), !noalias !4900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4899
  br label %bb.bq

.body:                                            ; preds = %bb.bk, %bb.aw, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.ej, %bb.bi ], [ %i.do, %bb.aw ], [ %i.ek, %bb.bk ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8terminal9OutputterEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.o) #34
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.bg, %bb.be, %bb.bc, %bb.bb, %bb.az, %bb.ax
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %bb.d
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ap, i64 15
  %.sroa.085.0.copyload = load i32, ptr %i.dp, align 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ap, i64 19
  %.sroa.097.0.copyload = load i48, ptr %i.as, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ap, i64 14
  %i.ds = load i8, ptr %i.dr, align 2, !range !18, !noundef !8
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = and i32 %.sroa.085.0.copyload, 255
  %.not106 = icmp ne i32 %i.du, 255               ; 2 uses
  %.sroa.047.0 = select i1 %.not106, i32 %.sroa.085.0.copyload, i32 0
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %i.dx = load <2 x i32>, ptr %i.dq, align 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter30new_buffering_no_assume_normal(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dy = and <2 x i32> %i.dx, splat (i32 255)
  %i.dz = icmp eq <2 x i32> %i.dy, splat (i32 255)
  %i.ea = select <2 x i1> %i.dz, <2 x i32> zeroinitializer, <2 x i32> %i.dx
  store i32 %.sroa.047.0, ptr %i.dv, align 2, !alias.scope !4901
  store <2 x i32> %i.ea, ptr %i.dw, align 2, !alias.scope !4901
  store i48 %.sroa.097.0.copyload, ptr %i.n, align 8, !alias.scope !4901
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish8terminalNtB4_9Outputter22set_text_face_no_magic(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(18) %i.n, i1 noundef zeroext %i.dt)
          to label %bb.ay unwind label %bb.aw

bb.ay:                                            ; preds = %bb.ax
end_hunk_0
