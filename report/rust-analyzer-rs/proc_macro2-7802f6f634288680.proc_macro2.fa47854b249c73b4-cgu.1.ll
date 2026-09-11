Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/proc_macro2-7802f6f634288680.proc_macro2.fa47854b249c73b4-cgu.1?download=true
inline.NumInlined: 292
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCsluekWoTk8SK_11proc_macro25parse10punct_char:bb.a

bb.am:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.ju = add i64 %.sink.i9.i36.i.i, %i.fm
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sink.i9.i.i.i = phi i64 [ %i.ju, %bb.am ], [ %i.jt, %bb.al ] ; 2 uses
  %i.jv = add i64 %.sink.i9.i.i.i, %i.fo          ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.fi
  br i1 %i.jw, label %.lr.ph.split.us.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %bb.ac, %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i, %bb.an, %bb.ak, %.preheader.i10.us.us.i.i.i.preheader, %.preheader.i10.us.us.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i.i.i.i, %bb.y, %.preheader.i10.i.i.i, %bb.ah, %bb.z, %bb.x, %bb.p, %bb.m, %.preheader.i.i.i
  %storemerge.i.sink.i.i.i = phi i8 [ 0, %bb.ah ], [ 0, %bb.z ], [ 1, %bb.p ], [ 0, %bb.ak ], [ 0, %.preheader.i.i.i ], [ 1, %bb.x ], [ 1, %.preheader.i10.i.i.i ], [ %.promoted52.i.i.i, %bb.m ], [ 0, %bb.an ], [ 1, %.preheader.i10.us.us.i.i.i ], [ 1, %.preheader36.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.i.i ], [ 1, %bb.y ], [ 1, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.i.i ], [ 1, %.preheader.i10.us.us.i.i.i.preheader ], [ 0, %bb.ac ], [ 1, %.preheader36.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !272
  br label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit

.split:                                           ; preds = %.thread, %bb.d
  %.sroa.4.0.i.ph17 = phi i32 [ %i.s, %.thread ], [ %.sroa.4.0.i.ph, %bb.d ] ; 2 uses
  %i.jx = trunc nuw nsw i32 %.sroa.4.0.i.ph17 to i8
  %i.jy = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %i.jx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 22)
  %i.jz = extractvalue { i64, i64 } %i.jy, 0
  %i.ka = icmp eq i64 %i.jz, 1
  br i1 %i.ka, label %.thread66, label %bb.ao

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %.sroa.0.0.i.i = phi i8 [ %storemerge.i.sink.i.i.i, %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], [ %.sroa.014.5.i.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i ]
  %i.kb = trunc nuw i8 %.sroa.0.0.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.kb, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.b, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, %.split, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit
  %.sink = phi i32 [ -1, %bb.a ], [ %.sroa.4.0.i141868, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit ], [ -1, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit ], [ -1, %.split ], [ -1, %bb.b ]
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.kc, align 8
  ret void

bb.ap:                                            ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  %i.kd = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.kd, label %.thread66, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ke = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.ke, i64 3, i64 4
  br label %.thread66

.thread66:                                        ; preds = %.split, %bb.ap, %bb.aq
  %.sroa.4.0.i141868 = phi i32 [ %.sroa.4.0.i.ph, %bb.ap ], [ %.sroa.4.0.i.ph, %bb.aq ], [ %.sroa.4.0.i.ph17, %.split ]
  %.sroa.02.0 = phi i64 [ 2, %bb.ap ], [ %., %bb.aq ], [ 1, %.split ] ; 6 uses
  %.not.i.i = icmp ult i64 %.sroa.02.0, %2
  br i1 %.not.i.i, label %bb.ar, label %.split3.i.i

.split3.i.i:                                      ; preds = %.thread66
  %i.kf = icmp eq i64 %.sroa.02.0, %2
  br i1 %i.kf, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit, label %bb.as

bb.ar:                                            ; preds = %.thread66
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.02.0
  %i.kh = load i8, ptr %i.kg, align 1, !alias.scope !304, !noalias !305, !noundef !5
  %i.ki = icmp sgt i8 %i.kh, -65
  br i1 %i.ki, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar, %.split3.i.i
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %.sroa.02.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19, !noalias !306
  unreachable

_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit: ; preds = %.split3.i.i, %bb.ar
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.02.0
  %i.kk = sub i64 %2, %.sroa.02.0
  store ptr %i.kj, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.kk, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.ao
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvNtCsluekWoTk8SK_11proc_macro25parse12token_stream(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [12 x i8], align 4               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 5 uses
  %i.ad = alloca [12 x i8], align 4               ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 5 uses
  %i.af = alloca [12 x i8], align 4               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 10 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.5 = alloca [31 x i8], align 1            ; 5 uses
  %i.am = alloca [32 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 16 uses
  %i.ap = alloca [24 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 0, ptr %i.ap, align 8
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.318.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.421.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 0, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 6 uses
  store i64 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.645.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.433.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.635.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.sroa.649.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.42.i.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.42.i.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.518.sroa.4.0..sroa.518.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.23.20..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.415.i.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.bu = phi i64 [ %1, %bb.a ], [ %.be, %.backedge.backedge ] ; 2 uses
  %i.bv = phi ptr [ %0, %bb.a ], [ %.be708, %.backedge.backedge ] ; 2 uses
  %i.bw = icmp eq i64 %i.bu, 0
  br i1 %i.bw, label %.noexc56.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.backedge, %bb.x
  %.sroa.0.069.i = phi ptr [ %.sroa.0.1.i, %bb.x ], [ %i.bv, %.backedge ] ; 39 uses
  %.sroa.21.067.i = phi i64 [ %.sroa.21.1.i, %bb.x ], [ %i.bu, %.backedge ] ; 42 uses
  %i.bx = load i8, ptr %.sroa.0.069.i, align 1, !noundef !5 ; 6 uses
  switch i8 %i.bx, label %bb.aa [
    i8 47, label %bb.b
    i8 32, label %bb.y
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.by = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.b
  br i1 %i.by, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.bz = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 3)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc46:                                         ; preds = %bb.c
  br i1 %i.bz, label %bb.e, label %bb.f

bb.d:                                             ; preds = %.noexc49, %.noexc48, %.noexc
  %i.ca = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc47:                                         ; preds = %bb.d
  br i1 %i.ca, label %bb.i, label %bb.h

bb.e:                                             ; preds = %.noexc46
  %i.cb = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc48:                                         ; preds = %bb.e
  br i1 %i.cb, label %bb.f, label %bb.d

bb.f:                                             ; preds = %.noexc48, %.noexc46
  %i.cc = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 3)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc49:                                         ; preds = %bb.f
  br i1 %i.cc, label %bb.d, label %bb.g

bb.g:                                             ; preds = %.noexc49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !407
  invoke fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro25parse25take_until_newline_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc50:                                         ; preds = %bb.g
  %i.cd = load ptr, ptr %i.ag, align 8, !noalias !407, !nonnull !5, !noundef !5
  %i.ce = load i64, ptr %i.as, align 8, !noalias !407, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !407
  br label %bb.x

bb.h:                                             ; preds = %.noexc47
  %i.cf = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc51:                                         ; preds = %bb.h
  br i1 %i.cf, label %bb.k, label %.noexc56.thread

bb.i:                                             ; preds = %.noexc47
  %.not.i.i.i = icmp ugt i64 %.sroa.21.067.i, 4
  br i1 %.not.i.i.i, label %bb.j, label %.split3.i.i.i

.split3.i.i.i:                                    ; preds = %bb.i
  %i.cg = icmp eq i64 %.sroa.21.067.i, 4
  br i1 %i.cg, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i, label %.loopexit230.invoke

bb.j:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 4
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !408, !noalias !409, !noundef !5
  %i.cj = icmp sgt i8 %i.ci, -65
  br i1 %i.cj, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i, label %.loopexit230.invoke

_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i: ; preds = %bb.j, %.split3.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 4
  %i.cl = add i64 %.sroa.21.067.i, -4
  br label %bb.x

bb.k:                                             ; preds = %.noexc51
  %i.cm = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 3)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %bb.k
  br i1 %i.cm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc53
  %i.cn = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 4)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc54:                                         ; preds = %bb.l
  br i1 %i.cn, label %bb.m, label %.noexc56.thread

bb.m:                                             ; preds = %.noexc54, %.noexc53
  %i.co = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 3)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc55:                                         ; preds = %bb.m
  br i1 %i.co, label %.noexc56.thread, label %bb.n

bb.n:                                             ; preds = %.noexc55
  %i.cp = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.069.i, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2)
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc148:                                        ; preds = %bb.n
  br i1 %i.cp, label %bb.o, label %.noexc56.thread

bb.o:                                             ; preds = %.noexc148
  %i.cq = add i64 %.sroa.21.067.i, -1             ; 2 uses
  %.not.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i, label %.noexc56.thread, label %.lr.ph.i141

.lr.ph.i141:                                      ; preds = %bb.o, %.thread.i142
  %.sroa.0.034.i = phi i64 [ %.sroa.0.1.i143, %.thread.i142 ], [ 0, %bb.o ] ; 4 uses
  %.sroa.03.033.i = phi i64 [ %i.da, %.thread.i142 ], [ 0, %bb.o ] ; 9 uses
  %i.cr = icmp ult i64 %.sroa.03.033.i, %.sroa.21.067.i
  br i1 %i.cr, label %bb.p, label %.invoke

bb.p:                                             ; preds = %.lr.ph.i141
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %.sroa.03.033.i
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !410, !noalias !411, !noundef !5
  switch i8 %i.ct, label %.thread.i142 [
    i8 47, label %bb.q
    i8 42, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.cu = add nuw i64 %.sroa.03.033.i, 1          ; 4 uses
  %i.cv = icmp ult i64 %i.cu, %.sroa.21.067.i
  br i1 %i.cv, label %bb.r, label %.invoke

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %i.cu
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !410, !noalias !411, !noundef !5
  %i.cy = icmp eq i8 %i.cx, 42                    ; 2 uses
  %spec.select.i = select i1 %i.cy, i64 %i.cu, i64 %.sroa.03.033.i
  %i.cz = zext i1 %i.cy to i64
  %spec.select26.i = add i64 %.sroa.0.034.i, %i.cz
  br label %.thread.i142

.thread.i142:                                     ; preds = %bb.u, %bb.t, %bb.r, %bb.p
  %.sroa.03.1.i = phi i64 [ %spec.select.i, %bb.r ], [ %.sroa.03.033.i, %bb.p ], [ %.sroa.03.033.i, %bb.t ], [ %i.dc, %bb.u ]
  %.sroa.0.1.i143 = phi i64 [ %spec.select26.i, %bb.r ], [ %.sroa.0.034.i, %bb.p ], [ %.sroa.0.034.i, %bb.t ], [ %i.dj, %bb.u ]
  %i.da = add i64 %.sroa.03.1.i, 1                ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cq
  br i1 %i.db, label %.lr.ph.i141, label %.noexc56.thread

bb.s:                                             ; preds = %bb.p
  %i.dc = add nuw i64 %.sroa.03.033.i, 1          ; 4 uses
  %i.dd = icmp ult i64 %i.dc, %.sroa.21.067.i
  br i1 %i.dd, label %bb.t, label %.invoke

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !410, !noalias !411, !noundef !5
  %i.dg = icmp eq i8 %i.df, 47
  br i1 %i.dg, label %bb.u, label %.thread.i142

.invoke:                                          ; preds = %bb.s, %bb.q, %.lr.ph.i141
  %i.dh = phi i64 [ %i.cu, %bb.q ], [ %.sroa.03.033.i, %.lr.ph.i141 ], [ %i.dc, %bb.s ]
  %i.di = phi ptr [ @16, %bb.q ], [ @15, %.lr.ph.i141 ], [ @17, %bb.s ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.dh, i64 noundef %.sroa.21.067.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di) #19
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.dj = add i64 %.sroa.0.034.i, -1              ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %bb.v, label %.thread.i142

bb.v:                                             ; preds = %bb.u
  %i.dl = add nuw i64 %.sroa.03.033.i, 2          ; 4 uses
  %.not.i.i.i144 = icmp ult i64 %i.dl, %.sroa.21.067.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %i.dl ; 3 uses
  br i1 %.not.i.i.i144, label %bb.w, label %.noexc56.thread

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !412, !noalias !413, !noundef !5
  %i.do = icmp sgt i8 %i.dn, -65
  br i1 %i.do, label %.noexc56.thread171, label %.loopexit230.invoke

.loopexit230.invoke:                              ; preds = %.split3.i.i.i95, %bb.dw, %bb.cm, %bb.bd, %bb.be, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i, %bb.ay, %bb.az, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i, %.split.i.i.i, %bb.au, %.split3.i.i52.i.i, %bb.as, %.split3.i.i.i.i, %bb.an, %.thread53.i, %bb.ak, %bb.z, %bb.w, %.split3.i.i.i, %bb.j, %bb.bn
  %i.dp = phi ptr [ %.sroa.0.069.i, %.thread53.i ], [ %.sroa.05.0.i, %bb.bn ], [ %.sroa.0.069.i, %bb.j ], [ %.sroa.0.069.i, %.split3.i.i.i ], [ %.sroa.0.069.i, %bb.w ], [ %.sroa.0.069.i, %bb.z ], [ %.sroa.0.069.i, %bb.ak ], [ %.sroa.0.061.i, %.split3.i.i52.i.i ], [ %.sroa.0.061.i, %.split3.i.i.i.i ], [ %.sroa.0.061.i, %.split3.i.i.i95 ], [ %.sroa.0.061.i, %bb.dw ], [ %.sroa.0.061.i, %bb.an ], [ %.sroa.0.061.i, %bb.as ], [ %.sroa.0.061.i, %bb.au ], [ %.sroa.544.0.copyload.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i ], [ %.sroa.544.0.copyload.i.i, %bb.az ], [ %.sroa.0.061.i, %bb.cm ], [ %.sroa.534.0.copyload.i.i, %bb.be ], [ %.sroa.534.0.copyload.i.i, %bb.bd ], [ %.sroa.544.0.copyload.i.i, %bb.ay ], [ %.sroa.534.0.copyload.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ %.sroa.0.061.i, %.split.i.i.i ]
  %i.dq = phi i64 [ %.sroa.21.067.i, %.thread53.i ], [ %.sroa.710.0.i, %bb.bn ], [ %.sroa.21.067.i, %bb.j ], [ %.sroa.21.067.i, %.split3.i.i.i ], [ %.sroa.21.067.i, %bb.w ], [ %.sroa.21.067.i, %bb.z ], [ %.sroa.21.067.i, %bb.ak ], [ %.sroa.21.066.i, %.split3.i.i52.i.i ], [ %.sroa.21.066.i, %.split3.i.i.i.i ], [ %.sroa.21.066.i, %.split3.i.i.i95 ], [ %.sroa.21.066.i, %bb.dw ], [ %.sroa.21.066.i, %bb.an ], [ %.sroa.21.066.i, %bb.as ], [ %.sroa.21.066.i, %bb.au ], [ %.sroa.645.0.copyload.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i ], [ %.sroa.645.0.copyload.i.i, %bb.az ], [ %.sroa.21.066.i, %bb.cm ], [ %.sroa.635.0.copyload.i.i, %bb.be ], [ %.sroa.635.0.copyload.i.i, %bb.bd ], [ %.sroa.645.0.copyload.i.i, %bb.ay ], [ %.sroa.635.0.copyload.i.i, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ %.sroa.21.066.i, %.split.i.i.i ]
  %i.dr = phi i64 [ 0, %.thread53.i ], [ %i.ja, %bb.bn ], [ 0, %bb.j ], [ 0, %.split3.i.i.i ], [ 0, %bb.w ], [ 0, %bb.z ], [ 0, %bb.ak ], [ 0, %.split3.i.i52.i.i ], [ 0, %.split3.i.i.i.i ], [ 0, %.split3.i.i.i95 ], [ 0, %bb.dw ], [ 0, %bb.an ], [ 0, %bb.as ], [ 3, %bb.au ], [ 3, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i ], [ 3, %bb.az ], [ 0, %bb.cm ], [ 3, %bb.be ], [ 3, %bb.bd ], [ 3, %bb.ay ], [ 3, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ 3, %.split.i.i.i ]
  %i.ds = phi i64 [ %.sroa.02.0.i, %.thread53.i ], [ %.sroa.710.0.i, %bb.bn ], [ %.sroa.02.0.i, %bb.ak ], [ 1, %bb.z ], [ %i.dl, %bb.w ], [ 4, %.split3.i.i.i ], [ 4, %bb.j ], [ 3, %.split3.i.i52.i.i ], [ 3, %.split3.i.i.i.i ], [ 11, %.split3.i.i.i95 ], [ 11, %bb.dw ], [ 3, %bb.an ], [ 3, %bb.as ], [ %.sroa.21.066.i, %bb.au ], [ %i.hn, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i ], [ %i.hn, %bb.az ], [ 1, %bb.cm ], [ %i.hz, %bb.be ], [ %i.hz, %bb.bd ], [ %i.hn, %bb.ay ], [ %i.hz, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ %.sroa.21.066.i, %.split.i.i.i ]
  %i.dt = phi ptr [ @3, %.thread53.i ], [ @12, %bb.bn ], [ @3, %bb.j ], [ @3, %.split3.i.i.i ], [ @3, %bb.w ], [ @3, %bb.z ], [ @3, %bb.ak ], [ @3, %.split3.i.i52.i.i ], [ @3, %.split3.i.i.i.i ], [ @3, %.split3.i.i.i95 ], [ @3, %bb.dw ], [ @3, %bb.an ], [ @3, %bb.as ], [ @28, %bb.au ], [ @29, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i ], [ @29, %bb.az ], [ @3, %bb.cm ], [ @30, %bb.be ], [ @30, %bb.bd ], [ @29, %bb.ay ], [ @30, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i.i ], [ @28, %.split.i.i.i ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dp, i64 noundef %i.dq, i64 noundef %i.dr, i64 noundef %i.ds, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt) #19
          to label %.loopexit230.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit230.cont:                                ; preds = %.loopexit230.invoke
  unreachable

.noexc56.thread171:                               ; preds = %bb.w
  %i.du = sub nuw i64 %.sroa.21.067.i, %i.dl
  br label %bb.x

bb.x:                                             ; preds = %.noexc56.thread171, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit13.i, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit9.i, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i, %.noexc50
  %.sroa.21.1.i = phi i64 [ %i.ea, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit9.i ], [ %i.gg, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit13.i ], [ %i.cl, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i ], [ %i.ce, %.noexc50 ], [ %i.du, %.noexc56.thread171 ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %i.dz, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit9.i ], [ %i.gd, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit13.i ], [ %i.ck, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i ], [ %i.cd, %.noexc50 ], [ %i.dm, %.noexc56.thread171 ] ; 2 uses
  %i.dv = icmp eq i64 %.sroa.21.1.i, 0
  br i1 %i.dv, label %.noexc56.thread, label %.lr.ph.i

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i
  %.not.i.i7.i = icmp ugt i64 %.sroa.21.067.i, 1
  br i1 %.not.i.i7.i, label %bb.z, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit9.i

bb.z:                                             ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !414, !noalias !415, !noundef !5
  %i.dy = icmp sgt i8 %i.dx, -65
  br i1 %i.dy, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit9.i, label %.loopexit230.invoke

_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit9.i: ; preds = %bb.z, %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 1
  %i.ea = add i64 %.sroa.21.067.i, -1
  br label %bb.x

bb.aa:                                            ; preds = %.lr.ph.i
  %i.eb = add i8 %i.bx, -9
  %or.cond.i = icmp ult i8 %i.eb, 5
  br i1 %or.cond.i, label %bb.y, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ec = icmp sgt i8 %i.bx, -1
  br i1 %i.ec, label %.noexc56.thread, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i: ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 1
  %i.ee = and i8 %i.bx, 31
  %i.ef = zext nneg i8 %i.ee to i32               ; 3 uses
  %i.eg = icmp samesign ne i64 %.sroa.21.067.i, 1
  call void @llvm.assume(i1 %i.eg)
  %i.eh = load i8, ptr %i.ed, align 1, !noalias !416, !noundef !5
  %i.ei = shl nuw nsw i32 %i.ef, 6
  %i.ej = and i8 %i.eh, 63
  %i.ek = zext nneg i8 %i.ej to i32               ; 2 uses
  %i.el = or disjoint i32 %i.ei, %i.ek
  %i.em = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.em, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i, label %bb.ac

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 2
  %i.eo = icmp samesign ne i64 %.sroa.21.067.i, 2
  call void @llvm.assume(i1 %i.eo)
  %i.ep = load i8, ptr %i.en, align 1, !noalias !416, !noundef !5
  %i.eq = shl nuw nsw i32 %i.ek, 6
  %i.er = and i8 %i.ep, 63
  %i.es = zext nneg i8 %i.er to i32
  %i.et = or disjoint i32 %i.eq, %i.es            ; 2 uses
  %i.eu = shl nuw nsw i32 %i.ef, 12
  %i.ev = or disjoint i32 %i.et, %i.eu
  %i.ew = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.ew, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i, label %bb.ac

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 3
  %i.ey = icmp samesign ne i64 %.sroa.21.067.i, 3
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load i8, ptr %i.ex, align 1, !noalias !416, !noundef !5
  %i.fa = shl nuw nsw i32 %i.ef, 18
  %i.fb = and i32 %i.fa, 1835008
  %i.fc = shl nuw nsw i32 %i.et, 6
  %i.fd = and i8 %i.ez, 63
  %i.fe = zext nneg i8 %i.fd to i32
  %i.ff = or disjoint i32 %i.fc, %i.fe
  %i.fg = or disjoint i32 %i.ff, %i.fb
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ev, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i ], [ %i.fg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i ], [ %i.el, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i ] ; 12 uses
  %i.fh = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.fh)
  %switch.tableidx = add nsw i32 %.sroa.4.0.i.ph.i, -9 ; 2 uses
  %i.fi = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.fi, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %.thread53.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fj = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 133
  br i1 %i.fj, label %.noexc56.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fk = lshr i32 %.sroa.4.0.i.ph.i, 8
  switch i32 %i.fk, label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i [
    i32 0, label %bb.ah
    i32 22, label %bb.af
    i32 32, label %bb.ai
    i32 48, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.fl = icmp eq i32 %.sroa.4.0.i.ph.i, 5760
  %i.fm = zext i1 %i.fl to i8
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.fn = icmp eq i32 %.sroa.4.0.i.ph.i, 12288
  %i.fo = zext i1 %i.fn to i8
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i

bb.ah:                                            ; preds = %bb.ae
  %i.fp = and i32 %.sroa.4.0.i.ph.i, 255
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !noalias !407, !noundef !5
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.ft = and i32 %.sroa.4.0.i.ph.i, 255
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !noalias !407, !noundef !5
  %i.fx = lshr i8 %i.fw, 1
  br label %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i

_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.sroa.0.0.i.i.i = phi i8 [ %i.fo, %bb.ag ], [ %i.fs, %bb.ah ], [ %i.fm, %bb.af ], [ %i.fx, %bb.ai ], [ 0, %bb.ae ]
  %i.fy = trunc i8 %.sroa.0.0.i.i.i to i1
  %i.fz = icmp eq i32 %.sroa.4.0.i.ph.i, 8206
  %or.cond2.i.i = or i1 %i.fz, %i.fy
  br i1 %or.cond2.i.i, label %bb.aj, label %_RNvNtCsluekWoTk8SK_11proc_macro25parse13is_whitespace.exit.i

_RNvNtCsluekWoTk8SK_11proc_macro25parse13is_whitespace.exit.i: ; preds = %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i
  %i.ga = icmp eq i32 %.sroa.4.0.i.ph.i, 8207
  br i1 %i.ga, label %.thread54.thread.i, label %.noexc56.thread

bb.aj:                                            ; preds = %_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space6lookup.exit.i.i
  %i.gb = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 2048
  br i1 %i.gb, label %.thread53.i, label %.thread54.i

.thread54.i:                                      ; preds = %bb.aj
  %i.gc = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 65536
  br i1 %i.gc, label %.thread54.thread.i, label %.thread53.i

.thread54.thread.i:                               ; preds = %.thread54.i, %_RNvNtCsluekWoTk8SK_11proc_macro25parse13is_whitespace.exit.i
  br label %.thread53.i

.thread53.i:                                      ; preds = %bb.ac, %.thread54.thread.i, %.thread54.i, %bb.aj
  %.sroa.02.0.i = phi i64 [ 2, %bb.aj ], [ 3, %.thread54.thread.i ], [ 4, %.thread54.i ], [ 1, %bb.ac ] ; 5 uses
  %.not.i.i11.i = icmp ult i64 %.sroa.02.0.i, %.sroa.21.067.i
  br i1 %.not.i.i11.i, label %bb.ak, label %.loopexit230.invoke

bb.ak:                                            ; preds = %.thread53.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i, i64 %.sroa.02.0.i ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !417, !noalias !418, !noundef !5
  %i.gf = icmp sgt i8 %i.ge, -65
  br i1 %i.gf, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit13.i, label %.loopexit230.invoke

_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit13.i: ; preds = %bb.ak
  %i.gg = sub nuw i64 %.sroa.21.067.i, %.sroa.02.0.i
  br label %bb.x

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.eq, %bb.ej, %bb.eh, %bb.cz, %bb.da, %bb.co, %bb.bq, %bb.bt, %bb.ca, %bb.ce, %bb.cf, %bb.et, %bb.em
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ej ], [ %i.mv, %bb.et ], [ %i.mu, %bb.eq ], [ %lpad.phi238, %bb.em ], [ %i.kp, %bb.cz ], [ %lpad.thr_comm.i, %bb.bt ], [ %i.ka, %bb.co ], [ %i.mn, %bb.eh ], [ %.pn.pn75.i, %bb.bq ], [ %.pn.pn.pn70.i, %bb.ce ], [ %i.jk, %bb.ca ], [ %.pn.pn.pn70.i, %bb.cf ], [ %i.kp, %bb.da ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit224, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit227, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit232, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp233, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.011.1 = phi i1 [ true, %bb.ej ], [ true, %bb.et ], [ true, %bb.eq ], [ %.sroa.011.4.ph, %bb.em ], [ true, %bb.cz ], [ true, %bb.bt ], [ false, %bb.co ], [ true, %bb.eh ], [ true, %bb.bq ], [ true, %bb.ce ], [ true, %bb.ca ], [ true, %bb.cf ], [ true, %bb.da ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.011.2.ph.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtCsluekWoTk8SK_11proc_macro29DelimiterNtNtB1b_8fallback18TokenStreamBuilderEEEB1b_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #21
          to label %bb.fb unwind label %bb.en

.loopexit:                                        ; preds = %bb.bh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i
  %lpad.loopexit224 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.k, %bb.l, %bb.m, %bb.n
  %lpad.loopexit227 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i96, %_RNvNtCsluekWoTk8SK_11proc_macro25parse5ident.exit.thread.i, %_RNvNtCsluekWoTk8SK_11proc_macro25parse5ident.exit.i, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %_RNvNtCsluekWoTk8SK_11proc_macro25parse5punct.exit.i.thread, %.noexc100, %bb.cw, %bb.cv, %bb.cs, %bb.cr, %bb.cj, %bb.bz, %bb.by, %.noexc82, %bb.bp, %bb.bo, %.noexc78, %_RINvMNtCshzWfHUSfYae_4core3stre4findcECsluekWoTk8SK_11proc_macro2.exit.thread.i, %bb.bb, %bb.aw, %bb.av, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit53.i.i, %bb.aq, %bb.ap, %bb.ao, %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i.i, %bb.al, %.noexc56.thread
  %lpad.loopexit232 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %.loopexit230.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec12RcVecBuilderNtBG_9TokenTreeEEBG_.exit.i, %bb.dx, %bb.ex
  %.sroa.011.2.ph.ph.ph.ph = phi i1 [ false, %bb.ex ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec12RcVecBuilderNtBG_9TokenTreeEEBG_.exit.i ], [ true, %.loopexit230.invoke ], [ true, %bb.dx ], [ true, %.invoke ]
  %lpad.loopexit.split-lp233 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc56.thread:                                  ; preds = %bb.o, %.noexc148, %_RNvNtCsluekWoTk8SK_11proc_macro25parse13is_whitespace.exit.i, %bb.ad, %bb.ab, %bb.x, %.noexc55, %.noexc54, %.noexc51, %bb.v, %.thread.i142, %.backedge
  %.sroa.21.066.i = phi i64 [ %.sroa.21.067.i, %.thread.i142 ], [ 0, %.backedge ], [ %.sroa.21.067.i, %.noexc148 ], [ 1, %bb.o ], [ %.sroa.21.067.i, %.noexc51 ], [ %.sroa.21.067.i, %.noexc54 ], [ %.sroa.21.067.i, %.noexc55 ], [ %.sroa.21.067.i, %_RNvNtCsluekWoTk8SK_11proc_macro25parse13is_whitespace.exit.i ], [ %.sroa.21.067.i, %bb.ab ], [ 0, %bb.x ], [ %.sroa.21.067.i, %bb.ad ], [ 0, %bb.v ] ; 50 uses
  %.sroa.0.061.i = phi ptr [ %.sroa.0.069.i, %.thread.i142 ], [ %i.bv, %.backedge ], [ %.sroa.0.069.i, %.noexc148 ], [ %.sroa.0.069.i, %bb.o ], [ %.sroa.0.069.i, %.noexc51 ], [ %.sroa.0.069.i, %.noexc54 ], [ %.sroa.0.069.i, %.noexc55 ], [ %.sroa.0.069.i, %_RNvNtCsluekWoTk8SK_11proc_macro25parse13is_whitespace.exit.i ], [ %.sroa.0.069.i, %bb.ab ], [ %.sroa.0.1.i, %bb.x ], [ %.sroa.0.069.i, %bb.ad ], [ %i.dm, %bb.v ] ; 45 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.061.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.gh = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.061.i, i64 noundef %.sroa.21.066.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 3)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc61:                                         ; preds = %.noexc56.thread
  br i1 %i.gh, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc61
  %i.gi = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.061.i, i64 noundef %.sroa.21.066.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 3)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %bb.al
  br i1 %i.gi, label %bb.ap, label %bb.ao

bb.am:                                            ; preds = %.noexc61
  %.not.i.i.i.i = icmp ugt i64 %.sroa.21.066.i, 3
  br i1 %.not.i.i.i.i, label %bb.an, label %.split3.i.i.i.i

.split3.i.i.i.i:                                  ; preds = %bb.am
  %i.gj = icmp eq i64 %.sroa.21.066.i, 3
  br i1 %i.gj, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i.i, label %.loopexit230.invoke

bb.an:                                            ; preds = %bb.am
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.061.i, i64 3
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !421, !noalias !422, !noundef !5
  %i.gm = icmp sgt i8 %i.gl, -65
  br i1 %i.gm, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i.i, label %.loopexit230.invoke

_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i.i: ; preds = %bb.an, %.split3.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.061.i, i64 3
  %i.go = add i64 %.sroa.21.066.i, -3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !423
  invoke fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro25parse25take_until_newline_or_eof(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gn, i64 noundef %i.go)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc64:                                         ; preds = %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit.i.i
  %i.gp = load ptr, ptr %i.p, align 8, !noalias !423, !nonnull !5, !noundef !5
  %i.gq = load i64, ptr %i.ax, align 8, !noalias !423, !noundef !5
  %i.gr = load ptr, ptr %i.ay, align 8, !noalias !423, !nonnull !5, !noundef !5
  %i.gs = load i64, ptr %i.az, align 8, !noalias !423, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !423
  br label %_RNvNtCsluekWoTk8SK_11proc_macro25parse20doc_comment_contents.exit.i

bb.ao:                                            ; preds = %.noexc62
  %i.gt = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.061.i, i64 noundef %.sroa.21.066.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 3)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc65:                                         ; preds = %bb.ao
  br i1 %i.gt, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %.noexc62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !423
  invoke fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro25parse13block_comment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.061.i, i64 noundef %.sroa.21.066.i)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc66:                                         ; preds = %bb.ap
  %i.gu = load ptr, ptr %i.o, align 8, !noalias !423, !noundef !5 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.bc, label %bb.bd

bb.aq:                                            ; preds = %.noexc65
  %i.gw = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.061.i, i64 noundef %.sroa.21.066.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 3)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc67:                                         ; preds = %bb.aq
  br i1 %i.gw, label %bb.at, label %.thread178

bb.ar:                                            ; preds = %.noexc65
  %.not.i.i51.i.i = icmp ugt i64 %.sroa.21.066.i, 3
  br i1 %.not.i.i51.i.i, label %bb.as, label %.split3.i.i52.i.i

.split3.i.i52.i.i:                                ; preds = %bb.ar
  %i.gx = icmp eq i64 %.sroa.21.066.i, 3
  br i1 %i.gx, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit53.i.i, label %.loopexit230.invoke

bb.as:                                            ; preds = %bb.ar
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.061.i, i64 3
  %i.gz = load i8, ptr %i.gy, align 1, !alias.scope !424, !noalias !425, !noundef !5
  %i.ha = icmp sgt i8 %i.gz, -65
  br i1 %i.ha, label %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit53.i.i, label %.loopexit230.invoke

_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit53.i.i: ; preds = %bb.as, %.split3.i.i52.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.061.i, i64 3 ; 2 uses
  %i.hc = add i64 %.sroa.21.066.i, -3             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !426
  store i32 47, ptr %i.k, align 4, !noalias !426
  %i.hd = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hb, i64 noundef %i.hc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc69:                                         ; preds = %_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance.exit53.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !426
  br i1 %i.hd, label %.thread178.thread, label %bb.bb

bb.at:                                            ; preds = %.noexc67
  %.not.i.i.i59 = icmp ugt i64 %.sroa.21.066.i, 3
  br i1 %.not.i.i.i59, label %bb.au, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.at
  %i.he = icmp eq i64 %.sroa.21.066.i, 3
  br i1 %i.he, label %bb.av, label %.loopexit230.invoke

bb.au:                                            ; preds = %bb.at
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.061.i, i64 3
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !427, !noalias !428, !noundef !5
  %i.hh = icmp sgt i8 %i.hg, -65
  br i1 %i.hh, label %bb.av, label %.loopexit230.invoke

bb.av:                                            ; preds = %bb.au, %.split.i.i.i
  %i.hi = add i64 %.sroa.21.066.i, -3
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.061.i, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !423
  store i32 42, ptr %i.l, align 4, !noalias !423
  %i.hk = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hj, i64 noundef %i.hi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc70:                                         ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !423
  br i1 %i.hk, label %.thread178.thread, label %bb.aw

bb.aw:                                            ; preds = %.noexc70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !423
  invoke fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro25parse13block_comment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.061.i, i64 noundef %.sroa.21.066.i)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc72:                                         ; preds = %bb.aw
  %i.hl = load ptr, ptr %i.m, align 8, !noalias !423, !noundef !5 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.noexc72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !423
  br label %.thread178.thread

bb.ay:                                            ; preds = %.noexc72
  %.sroa.443.0.copyload.i.i = load i64, ptr %.sroa.443.0..sroa_idx.i.i, align 8, !noalias !423
  %.sroa.544.0.copyload.i.i = load ptr, ptr %.sroa.544.0..sroa_idx.i.i, align 8, !noalias !423, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.645.0.copyload.i.i = load i64, ptr %.sroa.645.0..sroa_idx.i.i, align 8, !noalias !423 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !423
  %i.hn = add i64 %.sroa.645.0.copyload.i.i, -2   ; 4 uses
  %or.cond.i48.i.i = icmp ult i64 %.sroa.645.0.copyload.i.i, 5
  br i1 %or.cond.i48.i.i, label %.loopexit230.invoke, label %bb.az, !prof !429

bb.az:                                            ; preds = %bb.ay
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.544.0.copyload.i.i, i64 3 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 1, !alias.scope !430, !noalias !428, !noundef !5
  %i.hq = icmp sgt i8 %i.hp, -65
  br i1 %i.hq, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i, label %.loopexit230.invoke, !prof !431

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i: ; preds = %bb.az
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.544.0.copyload.i.i, i64 %i.hn
  %i.hs = load i8, ptr %i.hr, align 1, !alias.scope !430, !noalias !428, !noundef !5
  %i.ht = icmp sgt i8 %i.hs, -65
  br i1 %i.ht, label %bb.ba, label %.loopexit230.invoke, !prof !432

bb.ba:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit50.i.i
  %i.hu = add i64 %.sroa.645.0.copyload.i.i, -5
  br label %_RNvNtCsluekWoTk8SK_11proc_macro25parse20doc_comment_contents.exit.i
end_hunk_0
