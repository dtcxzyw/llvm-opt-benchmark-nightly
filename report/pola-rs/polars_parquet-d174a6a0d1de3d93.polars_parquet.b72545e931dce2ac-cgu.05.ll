Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.05?download=true
inline.NumInlined: 2523
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_RNvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded9predicate15decode_multiple:bb.a

_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap3get.exit: ; preds = %bb.h
  %i.ak = load ptr, ptr %2, align 8, !dbg !39835, !nonnull !1032, !noundef !1032 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40, !dbg !39836
  %i.am = load i64, ptr %i.al, align 8, !dbg !39836, !noundef !1032
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32, !dbg !39837
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !39837, !noundef !1032
  %i.ap = load i64, ptr %i.u, align 8, !dbg !39838, !noundef !1032
  %i.aq = add i64 %i.ap, %i.ah, !dbg !39838       ; 2 uses
  %i.ar = lshr i64 %i.aq, 3, !dbg !39839          ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.am, !dbg !39840
  call void @llvm.assume(i1 %i.as), !dbg !39841
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar, !dbg !39842
  %i.au = load i8, ptr %i.at, align 1, !dbg !39843, !noundef !1032
  %i.av = trunc i64 %i.aq to i8, !dbg !39844
  %i.aw = and i8 %i.av, 7, !dbg !39844
  %i.ax = lshr i8 %i.au, %i.aw, !dbg !39844       ; 2 uses
  %i.ay = load i64, ptr %i.l, align 8, !dbg !39845, !noundef !1032 ; 2 uses
  %i.az = and i64 %i.ay, 63, !dbg !39845          ; 2 uses
  %i.ba = add i64 %i.az, %.sroa.667.0.copyload, !dbg !39846
  %i.bb = icmp ult i64 %i.ba, 64, !dbg !39846
  br i1 %i.bb, label %bb.j, label %bb.i, !dbg !39846, !prof !1184

_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap3get.exit.thread: ; preds = %bb.h
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c), !dbg !39847
  %.sroa.030.0.copyload = load i64, ptr %i.c, align 8, !dbg !39848
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !39848
  %.sroa.632.0.copyload = load i8, ptr %.sroa.632.0..sroa_idx, align 8, !dbg !39848
  store i64 %.sroa.030.0.copyload, ptr %0, align 8, !dbg !39849
  %.sroa.290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39849
  store i8 %.sroa.632.0.copyload, ptr %.sroa.290.0..sroa_idx, align 8, !dbg !39849
  %.sroa.391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !39849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.391.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %i.d, i64 23, i1 false), !dbg !39849
  br label %bb.w, !dbg !39820

bb.i:                                             ; preds = %_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap3get.exit
  %i.bc = trunc i8 %i.ax to i1, !dbg !39850
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %3, i64 noundef %.sroa.667.0.copyload, i1 noundef zeroext %i.bc), !dbg !39851
  br label %bb.k, !dbg !39851

bb.j:                                             ; preds = %_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap3get.exit
  %i.bd = and i8 %i.ax, 1, !dbg !39852
  %i.be = zext nneg i8 %i.bd to i64, !dbg !39853  ; 2 uses
  %i.bf = and i64 %.sroa.667.0.copyload, 63, !dbg !39854
  %i.bg = shl nuw i64 %i.be, %i.bf, !dbg !39854
  %i.bh = sub i64 %i.bg, %i.be, !dbg !39854
  %i.bi = shl i64 %i.bh, %i.az, !dbg !39855
  %i.bj = load i64, ptr %i.v, align 8, !dbg !39856, !noundef !1032
  %i.bk = or i64 %i.bj, %i.bi, !dbg !39856
  store i64 %i.bk, ptr %i.v, align 8, !dbg !39856
  %i.bl = add i64 %i.ay, %.sroa.667.0.copyload, !dbg !39857
  store i64 %i.bl, ptr %i.l, align 8, !dbg !39857
  br label %bb.k, !dbg !39858

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !39765
  call void @_RNvMs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rleNtB5_16HybridRleDecoder10next_chunk(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !39814
  %i.bm = load i64, ptr %i.i, align 8, !dbg !39815, !range !1036, !noundef !1032 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 2, !dbg !39815
  br i1 %i.bn, label %._crit_edge178, label %bb.d, !dbg !39816

._crit_edge:                                      ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked.exit111, %bb.g
  %i.bo = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.j), !dbg !39859 ; 2 uses
  %i.bp = extractvalue { i64, i64 } %i.bo, 0, !dbg !39859
  %i.bq = extractvalue { i64, i64 } %i.bo, 1, !dbg !39859 ; 6 uses
  %i.br = trunc nuw i64 %i.bp to i1, !dbg !39860
  br i1 %i.br, label %bb.l, label %bb.m, !dbg !39860

.lr.ph:                                           ; preds = %bb.g, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked.exit111
  %.sroa.092.0163 = phi i64 [ %i.bs, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked.exit111 ], [ 0, %bb.g ]
  %i.bs = add nuw nsw i64 %.sroa.092.0163, 1, !dbg !39861 ; 2 uses
  %i.bt = call { i64, i64 } @_RNvMs2_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_14ChunkedDecodermE9next_intoBd_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull align 4 dereferenceable(128) %i.j), !dbg !39862
  %i.bu = extractvalue { i64, i64 } %i.bt, 0, !dbg !39862
  %i.bv = trunc nuw i64 %i.bu to i1, !dbg !39863
  br i1 %i.bv, label %bb.r, label %bb.s, !dbg !39863, !prof !1184

bb.l:                                             ; preds = %._crit_edge
  %i.bw = icmp ult i64 %i.bq, 33
  br i1 %i.bw, label %bb.o, label %bb.n, !dbg !39864, !prof !1072

bb.m:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !39865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !39866
  br label %bb.k, !dbg !39866

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bq, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #43, !dbg !39867
  unreachable, !dbg !39867

bb.o:                                             ; preds = %bb.l
  %i.bx = load i64, ptr %i.t, align 8, !dbg !39868, !noundef !1032
  %i.by = trunc i64 %i.bx to i32, !dbg !39869     ; 2 uses
  %.idx = shl nuw nsw i64 %i.bq, 2, !dbg !39870   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx, !dbg !39870
  %i.ca = icmp eq i64 %i.bq, 0, !dbg !39871
  br i1 %i.ca, label %._crit_edge174, label %.lr.ph167.preheader, !dbg !39872

.lr.ph167.preheader:                              ; preds = %bb.o
  %i.cb = add nsw i64 %.idx, -4, !dbg !39872      ; 4 uses
  %i.cc = lshr exact i64 %i.cb, 2, !dbg !39872
  %i.cd = add nuw nsw i64 %i.cc, 1, !dbg !39872   ; 4 uses
  %min.iters.check = icmp ult i64 %i.cb, 28, !dbg !39872
  br i1 %min.iters.check, label %.lr.ph167.preheader202, label %vector.ph, !dbg !39872

vector.ph:                                        ; preds = %.lr.ph167.preheader
  %n.vec = and i64 %i.cd, 9223372036854775800     ; 5 uses
  %i.ce = shl i64 %n.vec, 2
  %i.cf = getelementptr i8, ptr %i.j, i64 %i.ce
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x i32>, ptr %i.j, align 16, !dbg !39873, !alias.scope !39787
  %wide.load201 = load <4 x i32>, ptr %i.z, align 16, !dbg !39873, !alias.scope !39787
  %i.cg = icmp ult <4 x i32> %wide.load, %broadcast.splat, !dbg !39874 ; 2 uses
  %i.ch = icmp ult <4 x i32> %wide.load201, %broadcast.splat, !dbg !39874 ; 2 uses
  %i.ci = icmp eq i64 %n.vec, 8, !dbg !39872
  br i1 %i.ci, label %middle.block, label %vector.body.1, !dbg !39872

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <4 x i32>, ptr %next.gep.1, align 16, !dbg !39873, !alias.scope !39787
  %wide.load201.1 = load <4 x i32>, ptr %i.aa, align 16, !dbg !39873, !alias.scope !39787
  %i.cj = icmp ult <4 x i32> %wide.load.1, %broadcast.splat, !dbg !39874
  %i.ck = icmp ult <4 x i32> %wide.load201.1, %broadcast.splat, !dbg !39874
  %i.cl = and <4 x i1> %i.cg, %i.cj, !dbg !39875  ; 2 uses
  %i.cm = and <4 x i1> %i.ch, %i.ck, !dbg !39875  ; 2 uses
  %i.cn = icmp eq i64 %n.vec, 16, !dbg !39872
  br i1 %i.cn, label %middle.block, label %vector.body.2, !dbg !39872

vector.body.2:                                    ; preds = %vector.body.1
  %wide.load.2 = load <4 x i32>, ptr %next.gep.2, align 16, !dbg !39873, !alias.scope !39787
  %wide.load201.2 = load <4 x i32>, ptr %i.ab, align 16, !dbg !39873, !alias.scope !39787
  %i.co = icmp ult <4 x i32> %wide.load.2, %broadcast.splat, !dbg !39874
  %i.cp = icmp ult <4 x i32> %wide.load201.2, %broadcast.splat, !dbg !39874
  %i.cq = and <4 x i1> %i.cl, %i.co, !dbg !39875  ; 2 uses
  %i.cr = and <4 x i1> %i.cm, %i.cp, !dbg !39875  ; 2 uses
  %i.cs = icmp eq i64 %n.vec, 24, !dbg !39872
  br i1 %i.cs, label %middle.block, label %vector.body.3, !dbg !39872

vector.body.3:                                    ; preds = %vector.body.2
  %wide.load.3 = load <4 x i32>, ptr %next.gep.3, align 16, !dbg !39873, !alias.scope !39787
  %wide.load201.3 = load <4 x i32>, ptr %i.ac, align 16, !dbg !39873, !alias.scope !39787
  %i.ct = icmp ult <4 x i32> %wide.load.3, %broadcast.splat, !dbg !39874
  %i.cu = icmp ult <4 x i32> %wide.load201.3, %broadcast.splat, !dbg !39874
  %i.cv = and <4 x i1> %i.cq, %i.ct, !dbg !39875
  %i.cw = and <4 x i1> %i.cr, %i.cu, !dbg !39875
  br label %middle.block, !dbg !39872

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa205 = phi <4 x i1> [ %i.cg, %vector.ph ], [ %i.cl, %vector.body.1 ], [ %i.cq, %vector.body.2 ], [ %i.cv, %vector.body.3 ], !dbg !39875
  %.lcssa204 = phi <4 x i1> [ %i.ch, %vector.ph ], [ %i.cm, %vector.body.1 ], [ %i.cr, %vector.body.2 ], [ %i.cw, %vector.body.3 ], !dbg !39875
  %bin.rdx = and <4 x i1> %.lcssa204, %.lcssa205, !dbg !39872
  %i.cx = bitcast <4 x i1> %bin.rdx to i4, !dbg !39872
  %i.cy = icmp eq i4 %i.cx, -1, !dbg !39872       ; 2 uses
  %cmp.n = icmp eq i64 %i.cd, %n.vec, !dbg !39872
  br i1 %cmp.n, label %._crit_edge168, label %.lr.ph167.preheader202, !dbg !39872

.lr.ph167.preheader202:                           ; preds = %.lr.ph167.preheader, %middle.block
  %.sroa.0.0.i100165.ph = phi i1 [ true, %.lr.ph167.preheader ], [ %i.cy, %middle.block ]
  %.sroa.02.0.i99164.ph = phi ptr [ %i.j, %.lr.ph167.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph167, !dbg !39872

.lr.ph167:                                        ; preds = %.lr.ph167.preheader202, %.lr.ph167
  %.sroa.0.0.i100165 = phi i1 [ %i.dc, %.lr.ph167 ], [ %.sroa.0.0.i100165.ph, %.lr.ph167.preheader202 ]
  %.sroa.02.0.i99164 = phi ptr [ %i.cz, %.lr.ph167 ], [ %.sroa.02.0.i99164.ph, %.lr.ph167.preheader202 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i99164, i64 4, !dbg !39876 ; 2 uses
  %i.da = load i32, ptr %.sroa.02.0.i99164, align 4, !dbg !39873, !alias.scope !39787, !noundef !1032
  %i.db = icmp ult i32 %i.da, %i.by, !dbg !39874
  %i.dc = and i1 %.sroa.0.0.i100165, %i.db, !dbg !39875 ; 2 uses
  %i.dd = icmp eq ptr %i.cz, %i.bz, !dbg !39871
  br i1 %i.dd, label %._crit_edge168, label %.lr.ph167, !dbg !39872, !llvm.loop !39706

._crit_edge168:                                   ; preds = %.lr.ph167, %middle.block
  %.lcssa196 = phi i1 [ %i.cy, %middle.block ], [ %i.dc, %.lr.ph167 ], !dbg !39875
  br i1 %.lcssa196, label %.lr.ph173, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit101, !dbg !39877, !prof !1184

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit101: ; preds = %._crit_edge168
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a), !dbg !39878
  %.sroa.0116.0.copyload117 = load i64, ptr %i.a, align 8, !dbg !39879 ; 2 uses
  %.not95 = icmp eq i64 %.sroa.0116.0.copyload117, -9223372036854775803, !dbg !39880
  br i1 %.not95, label %.lr.ph173, label %.loopexit, !dbg !39881

.lr.ph173:                                        ; preds = %._crit_edge168, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit101
  %i.de = load ptr, ptr %2, align 8, !nonnull !1032, !noundef !1032 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load i64, ptr %i.df, align 8, !noundef !1032 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !noundef !1032 ; 3 uses
  %i.dj = load i64, ptr %i.u, align 8, !noundef !1032 ; 3 uses
  %i.dk = icmp eq i64 %i.cb, 0, !dbg !39882
  br i1 %i.dk, label %.epil.preheader, label %.lr.ph173.new, !dbg !39882

.lr.ph173.new:                                    ; preds = %.lr.ph173
  %unroll_iter = and i64 %i.cd, 9223372036854775806, !dbg !39882
  br label %bb.p, !dbg !39882

bb.p:                                             ; preds = %bb.p, %.lr.ph173.new
  %.sroa.057.0171 = phi i64 [ 0, %.lr.ph173.new ], [ %i.ep, %bb.p ]
  %.sroa.0120.0170 = phi ptr [ %i.j, %.lr.ph173.new ], [ %i.ea, %bb.p ] ; 3 uses
  %.sroa.7122.0169 = phi i64 [ 0, %.lr.ph173.new ], [ %i.eb, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph173.new ], [ %niter.next.1, %bb.p ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0120.0170, i64 4, !dbg !39883
  %4 = or disjoint i64 %.sroa.7122.0169, 1, !dbg !39884
  %i.dm = load i32, ptr %.sroa.0120.0170, align 4, !dbg !39885, !noundef !1032
  %i.dn = zext i32 %i.dm to i64, !dbg !39886
  %i.do = add i64 %i.dj, %i.dn, !dbg !39887       ; 2 uses
  %i.dp = lshr i64 %i.do, 3, !dbg !39888          ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.dg, !dbg !39889
  call void @llvm.assume(i1 %i.dq), !dbg !39890
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dp, !dbg !39891
  %i.ds = load i8, ptr %i.dr, align 1, !dbg !39892, !noundef !1032
  %i.dt = trunc i64 %i.do to i8, !dbg !39893
  %i.du = and i8 %i.dt, 7, !dbg !39893
  %i.dv = lshr i8 %i.ds, %i.du, !dbg !39893
  %i.dw = and i8 %i.dv, 1, !dbg !39894
  %i.dx = zext nneg i8 %i.dw to i64, !dbg !39894
  %i.dy = shl nuw i64 %i.dx, %.sroa.7122.0169, !dbg !39796
  %i.dz = or i64 %i.dy, %.sroa.057.0171, !dbg !39895
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0120.0170, i64 8, !dbg !39883 ; 2 uses
  %i.eb = add nuw nsw i64 %.sroa.7122.0169, 2, !dbg !39884 ; 2 uses
  %i.ec = load i32, ptr %i.dl, align 4, !dbg !39885, !noundef !1032
  %i.ed = zext i32 %i.ec to i64, !dbg !39886
  %i.ee = add i64 %i.dj, %i.ed, !dbg !39887       ; 2 uses
  %i.ef = lshr i64 %i.ee, 3, !dbg !39888          ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.dg, !dbg !39889
  call void @llvm.assume(i1 %i.eg), !dbg !39890
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ef, !dbg !39891
  %i.ei = load i8, ptr %i.eh, align 1, !dbg !39892, !noundef !1032
  %i.ej = trunc i64 %i.ee to i8, !dbg !39893
  %i.ek = and i8 %i.ej, 7, !dbg !39893
  %i.el = lshr i8 %i.ei, %i.ek, !dbg !39893
  %i.em = and i8 %i.el, 1, !dbg !39894
  %i.en = zext nneg i8 %i.em to i64, !dbg !39894
  %i.eo = shl nuw i64 %i.en, %4, !dbg !39796
  %i.ep = or i64 %i.eo, %i.dz, !dbg !39895        ; 3 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !39882  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !39882
  br i1 %niter.ncmp.1, label %._crit_edge174.loopexit.unr-lcssa, label %bb.p, !dbg !39882

._crit_edge174.loopexit.unr-lcssa:                ; preds = %bb.p
  %i.eq = and i64 %i.cb, 4, !dbg !39882
  %lcmp.mod.not.not = icmp eq i64 %i.eq, 0, !dbg !39882
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge174, !dbg !39882

.epil.preheader:                                  ; preds = %._crit_edge174.loopexit.unr-lcssa, %.lr.ph173
  %.sroa.057.0171.epil.init = phi i64 [ 0, %.lr.ph173 ], [ %i.ep, %._crit_edge174.loopexit.unr-lcssa ]
  %.sroa.0120.0170.epil.init = phi ptr [ %i.j, %.lr.ph173 ], [ %i.ea, %._crit_edge174.loopexit.unr-lcssa ]
  %.sroa.7122.0169.epil.init = phi i64 [ 0, %.lr.ph173 ], [ %i.eb, %._crit_edge174.loopexit.unr-lcssa ]
  %lcmp.mod211 = trunc i64 %i.cd to i1, !dbg !39882
  call void @llvm.assume(i1 %lcmp.mod211), !dbg !39882
  %i.er = load i32, ptr %.sroa.0120.0170.epil.init, align 4, !dbg !39885, !noundef !1032
  %i.es = zext i32 %i.er to i64, !dbg !39886
  %i.et = add i64 %i.dj, %i.es, !dbg !39887       ; 2 uses
  %i.eu = lshr i64 %i.et, 3, !dbg !39888          ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.dg, !dbg !39889
  call void @llvm.assume(i1 %i.ev), !dbg !39890
  %i.ew = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eu, !dbg !39891
  %i.ex = load i8, ptr %i.ew, align 1, !dbg !39892, !noundef !1032
  %i.ey = trunc i64 %i.et to i8, !dbg !39893
  %i.ez = and i8 %i.ey, 7, !dbg !39893
  %i.fa = lshr i8 %i.ex, %i.ez, !dbg !39893
  %i.fb = and i8 %i.fa, 1, !dbg !39894
  %i.fc = zext nneg i8 %i.fb to i64, !dbg !39894
  %i.fd = shl nuw i64 %i.fc, %.sroa.7122.0169.epil.init, !dbg !39796
  %i.fe = or i64 %i.fd, %.sroa.057.0171.epil.init, !dbg !39895
  br label %._crit_edge174, !dbg !39896

._crit_edge174:                                   ; preds = %.epil.preheader, %._crit_edge174.loopexit.unr-lcssa, %bb.o
  %.sroa.057.0.lcssa = phi i64 [ 0, %bb.o ], [ %i.ep, %._crit_edge174.loopexit.unr-lcssa ], [ %i.fe, %.epil.preheader ], !dbg !39897 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39797), !dbg !39896
  %i.ff = load i64, ptr %i.l, align 8, !dbg !39898, !alias.scope !39797, !noundef !1032 ; 2 uses
  %i.fg = and i64 %i.ff, 63, !dbg !39898          ; 3 uses
  %i.fh = shl i64 %.sroa.057.0.lcssa, %i.fg, !dbg !39899
  %i.fi = load i64, ptr %i.v, align 8, !dbg !39900, !alias.scope !39797, !noundef !1032
  %i.fj = or i64 %i.fh, %i.fi, !dbg !39900        ; 3 uses
  store i64 %i.fj, ptr %i.v, align 8, !dbg !39900, !alias.scope !39797
  %i.fk = add nuw nsw i64 %i.fg, %i.bq, !dbg !39901
  %i.fl = icmp samesign ugt i64 %i.fk, 63, !dbg !39901
  br i1 %i.fl, label %bb.q, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked.exit, !dbg !39901

bb.q:                                             ; preds = %._crit_edge174
  %i.fm = load i64, ptr %i.w, align 8, !dbg !39902, !alias.scope !39797, !noundef !1032 ; 3 uses
  %i.fn = icmp sgt i64 %i.fm, -1, !dbg !39903
  call void @llvm.assume(i1 %i.fn), !dbg !39904
  %i.fo = load ptr, ptr %i.x, align 8, !dbg !39905, !alias.scope !39797, !nonnull !1032, !noundef !1032
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fm, !dbg !39906
  store i64 %i.fj, ptr %i.fp, align 1, !dbg !39907, !noalias !39797
  %i.fq = add nuw i64 %i.fm, 8, !dbg !39908
  store i64 %i.fq, ptr %i.w, align 8, !dbg !39909, !alias.scope !39797
  %i.fr = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fj), !dbg !39910
  %i.fs = load i64, ptr %i.y, align 8, !dbg !39911, !alias.scope !39797, !noundef !1032
  %i.ft = add i64 %i.fs, %i.fr, !dbg !39911
  store i64 %i.ft, ptr %i.y, align 8, !dbg !39911, !alias.scope !39797
  %i.fu = sub nuw nsw i64 64, %i.fg, !dbg !39912
  %i.fv = lshr i64 %.sroa.057.0.lcssa, %i.fu, !dbg !39912
  store i64 %i.fv, ptr %i.v, align 8, !dbg !39913, !alias.scope !39797
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked.exit, !dbg !39914

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked.exit: ; preds = %._crit_edge174, %bb.q
  %i.fw = add i64 %i.ff, %i.bq, !dbg !39915
  store i64 %i.fw, ptr %i.l, align 8, !dbg !39915, !alias.scope !39797
  br label %bb.m, !dbg !39916

.loopexit:                                        ; preds = %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit101, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %.sink = phi ptr [ %i.f, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit ], [ %i.e, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit101 ]
  %storemerge = phi i64 [ %.sroa.0.0.copyload112, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit ], [ %.sroa.0116.0.copyload117, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit101 ], !dbg !39917
  %.sroa.2130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2130.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false), !dbg !39918
  store i64 %storemerge, ptr %0, align 8, !dbg !39917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !39865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !39866
  br label %bb.w, !dbg !39820

bb.r:                                             ; preds = %.lr.ph
  %i.fx = load i64, ptr %i.t, align 8, !dbg !39919, !noundef !1032
  %i.fy = trunc i64 %i.fx to i32, !dbg !39920
  %i.fz = load <32 x i32>, ptr %i.j, align 16, !dbg !39921, !alias.scope !39800
  %i.ga = insertelement <32 x i32> poison, i32 %i.fy, i64 0, !dbg !39922
  %i.gb = shufflevector <32 x i32> %i.ga, <32 x i32> poison, <32 x i32> zeroinitializer, !dbg !39922
  %i.gc = icmp uge <32 x i32> %i.fz, %i.gb, !dbg !39923
  %i.gd = bitcast <32 x i1> %i.gc to i32, !dbg !39923
  %i.ge = icmp eq i32 %i.gd, 0, !dbg !39923
  br i1 %i.ge, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit, !dbg !39924, !prof !1184

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit: ; preds = %bb.r
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded12oob_dict_idx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !39925
  %.sroa.0.0.copyload112 = load i64, ptr %i.b, align 8, !dbg !39926 ; 2 uses
  %.not97 = icmp eq i64 %.sroa.0.0.copyload112, -9223372036854775803, !dbg !39927
  br i1 %.not97, label %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread, label %.loopexit, !dbg !39928

bb.s:                                             ; preds = %.lr.ph
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #43, !dbg !39929
  unreachable, !dbg !39929

_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread: ; preds = %bb.r, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit
  %i.gf = load ptr, ptr %2, align 8, !nonnull !1032, !noundef !1032 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.gh = load i64, ptr %i.gg, align 8, !noundef !1032 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !noundef !1032 ; 2 uses
  %i.gk = load i64, ptr %i.u, align 8, !noundef !1032 ; 2 uses
  br label %bb.t, !dbg !39930

bb.t:                                             ; preds = %bb.t, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread
  %.sroa.045.0162 = phi i64 [ 0, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread ], [ %i.hp, %bb.t ]
  %.sroa.0114.0.idx161 = phi i64 [ 0, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread ], [ %.sroa.0114.0.add.1, %bb.t ] ; 3 uses
  %.sroa.7115.0160 = phi i64 [ 0, %_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices.exit.thread ], [ %i.hb, %bb.t ] ; 3 uses
  %.sroa.0114.0.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0114.0.idx161, !dbg !39931
  %i.gl = or disjoint i64 %.sroa.7115.0160, 1, !dbg !39932
  %i.gm = load i32, ptr %.sroa.0114.0.ptr, align 8, !dbg !39933, !noundef !1032
  %i.gn = zext i32 %i.gm to i64, !dbg !39934
  %i.go = add i64 %i.gk, %i.gn, !dbg !39935       ; 2 uses
  %i.gp = lshr i64 %i.go, 3, !dbg !39936          ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.gh, !dbg !39937
  call void @llvm.assume(i1 %i.gq), !dbg !39938
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gp, !dbg !39939
  %i.gs = load i8, ptr %i.gr, align 1, !dbg !39940, !noundef !1032
  %i.gt = trunc i64 %i.go to i8, !dbg !39941
  %i.gu = and i8 %i.gt, 7, !dbg !39941
  %i.gv = lshr i8 %i.gs, %i.gu, !dbg !39941
  %i.gw = and i8 %i.gv, 1, !dbg !39942
  %i.gx = zext nneg i8 %i.gw to i64, !dbg !39942
  %i.gy = shl nuw i64 %i.gx, %.sroa.7115.0160, !dbg !39806
  %i.gz = or i64 %i.gy, %.sroa.045.0162, !dbg !39943
  %i.ha = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0114.0.idx161, !dbg !39931
  %.sroa.0114.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ha, i64 4, !dbg !39931
  %.sroa.0114.0.add.1 = add nuw nsw i64 %.sroa.0114.0.idx161, 8, !dbg !39944 ; 2 uses
  %i.hb = add nuw nsw i64 %.sroa.7115.0160, 2, !dbg !39932
  %i.hc = load i32, ptr %.sroa.0114.0.ptr.1, align 4, !dbg !39933, !noundef !1032
  %i.hd = zext i32 %i.hc to i64, !dbg !39934
  %i.he = add i64 %i.gk, %i.hd, !dbg !39935       ; 2 uses
  %i.hf = lshr i64 %i.he, 3, !dbg !39936          ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %i.gh, !dbg !39937
  call void @llvm.assume(i1 %i.hg), !dbg !39938
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.hf, !dbg !39939
  %i.hi = load i8, ptr %i.hh, align 1, !dbg !39940, !noundef !1032
  %i.hj = trunc i64 %i.he to i8, !dbg !39941
  %i.hk = and i8 %i.hj, 7, !dbg !39941
  %i.hl = lshr i8 %i.hi, %i.hk, !dbg !39941
  %i.hm = and i8 %i.hl, 1, !dbg !39942
  %i.hn = zext nneg i8 %i.hm to i64, !dbg !39942
  %i.ho = shl nuw i64 %i.hn, %i.gl, !dbg !39806
  %i.hp = or i64 %i.ho, %i.gz, !dbg !39943        ; 3 uses
  %i.hq = icmp eq i64 %.sroa.0114.0.add.1, 128, !dbg !39931
  br i1 %i.hq, label %bb.u, label %bb.t, !dbg !39930

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !39807), !dbg !39945
  %i.hr = load i64, ptr %i.l, align 8, !dbg !39946, !alias.scope !39807, !noundef !1032 ; 2 uses
  %i.hs = and i64 %i.hr, 63, !dbg !39946          ; 3 uses
  %i.ht = shl i64 %i.hp, %i.hs, !dbg !39947
  %i.hu = load i64, ptr %i.v, align 8, !dbg !39948, !alias.scope !39807, !noundef !1032
  %i.hv = or i64 %i.ht, %i.hu, !dbg !39948        ; 3 uses
  store i64 %i.hv, ptr %i.v, align 8, !dbg !39948, !alias.scope !39807
  %i.hw = icmp samesign ugt i64 %i.hs, 31, !dbg !39949
  br i1 %i.hw, label %bb.v, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked.exit111, !dbg !39949

bb.v:                                             ; preds = %bb.u
  %i.hx = load i64, ptr %i.w, align 8, !dbg !39950, !alias.scope !39807, !noundef !1032 ; 3 uses
  %i.hy = icmp sgt i64 %i.hx, -1, !dbg !39951
  call void @llvm.assume(i1 %i.hy), !dbg !39952
  %i.hz = load ptr, ptr %i.x, align 8, !dbg !39953, !alias.scope !39807, !nonnull !1032, !noundef !1032
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hx, !dbg !39954
  store i64 %i.hv, ptr %i.ia, align 1, !dbg !39955, !noalias !39807
  %i.ib = add nuw i64 %i.hx, 8, !dbg !39956
  store i64 %i.ib, ptr %i.w, align 8, !dbg !39957, !alias.scope !39807
  %i.ic = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hv), !dbg !39958
  %i.id = load i64, ptr %i.y, align 8, !dbg !39959, !alias.scope !39807, !noundef !1032
  %i.ie = add i64 %i.id, %i.ic, !dbg !39959
  store i64 %i.ie, ptr %i.y, align 8, !dbg !39959, !alias.scope !39807
  %i.if = sub nuw nsw i64 64, %i.hs, !dbg !39960
  %i.ig = lshr i64 %i.hp, %i.if, !dbg !39960
  store i64 %i.ig, ptr %i.v, align 8, !dbg !39961, !alias.scope !39807
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked.exit111, !dbg !39962

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked.exit111: ; preds = %bb.u, %bb.v
  %i.ih = add i64 %i.hr, 32, !dbg !39963
  store i64 %i.ih, ptr %i.l, align 8, !dbg !39963, !alias.scope !39807
  %exitcond.not = icmp eq i64 %i.bs, %i.ag, !dbg !39831
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !39772

bb.w:                                             ; preds = %._crit_edge178, %.loopexit, %_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap3get.exit.thread, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !39964
  ret void, !dbg !39826
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded9predicate6decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(56) %3) unnamed_addr #4 !dbg !39965 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !39986
  %i.h = load i64, ptr %i.g, align 8, !dbg !39986, !noundef !1032
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %2), !dbg !39987
  %i.j = sub i64 %i.h, %i.i, !dbg !39986
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !39988 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !39988, !noundef !1032 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !39989
  %.val2 = load i64, ptr %i.m, align 8, !dbg !39989, !noundef !1032 ; 3 uses
  %i.n = add i64 %.val2, %i.l, !dbg !39990        ; 3 uses
  store i64 %i.n, ptr %i.f, align 8, !dbg !39990
  switch i64 %i.j, label %bb.g [
    i64 0, label %bb.b
    i64 1, label %bb.f
  ], !dbg !39991

bb.b:                                             ; preds = %bb.a
  %i.o = and i64 %i.l, 63, !dbg !39992
  %i.p = add i64 %i.o, %.val2, !dbg !39993
  %i.q = icmp ult i64 %i.p, 64, !dbg !39993
  br i1 %i.q, label %bb.d, label %bb.c, !dbg !39993, !prof !1184

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %3, i64 noundef %.val2, i1 noundef zeroext false), !dbg !39994
  br label %bb.e, !dbg !39994

bb.d:                                             ; preds = %bb.b
  store i64 %i.n, ptr %i.k, align 8, !dbg !39995
  br label %bb.e, !dbg !39996

bb.e:                                             ; preds = %bb.i, %bb.k, %bb.c, %bb.d
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.or.v2i64
!39684 = distinct !DILexicalBlock(scope: !39678, file: !1516, line: 121, column: 13)
!39685 = distinct !DILexicalBlock(scope: !39651, file: !1597, line: 116, column: 67)
!39686 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1173, file: !1171, line: 886, type: !1033, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39687 = distinct !DILexicalBlock(scope: !39655, file: !1255, line: 782, column: 13)
!39688 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1259, file: !1255, line: 212, type: !1033, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39689 = distinct !DISubprogram(name: "unwrap<usize>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionjE6unwrapCsfISxE4fmY1Y_14polars_parquet", scope: !1125, file: !1123, line: 1013, type: !1033, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39690 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !1173, file: !1171, line: 971, type: !1033, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39691 = distinct !DISubprogram(name: "index<u32, core::ops::range::RangeTo<usize>, 32>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAmj20_INtNtNtB7_3ops5index5IndexINtNtBH_5range7RangeTojEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !1314, file: !1312, line: 389, type: !1033, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39692 = distinct !DISubprogram(name: "index<u32, core::ops::range::RangeTo<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSmINtNtNtB6_3ops5index5IndexINtNtBI_5range7RangeTojEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !1311, file: !1187, line: 18, type: !1033, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39693 = distinct !DISubprogram(name: "index<u32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexSmE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !1310, file: !1187, line: 528, type: !1033, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39694 = distinct !DISubprogram(name: "index<u32>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSmE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !1243, file: !1187, line: 435, type: !1033, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39695 = distinct !DISubprogram(name: "len", linkageName: "_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap3len", scope: !1183, file: !1181, line: 120, type: !1033, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39696 = distinct !DILocation(line: 119, column: 21, scope: !39685)
!39697 = distinct !DILocation(line: 219, column: 17, scope: !841, inlinedAt: !39696)
!39698 = distinct !DILocation(line: 26, column: 14, scope: !839, inlinedAt: !39697)
!39699 = distinct !DILocation(line: 1041, column: 9, scope: !838, inlinedAt: !39698)
!39700 = distinct !DILocation(line: 102, column: 78, scope: !837, inlinedAt: !39699)
!39701 = distinct !DILocation(line: 219, column: 17, scope: !1604, inlinedAt: !39696)
!39702 = distinct !DILocation(line: 180, column: 28, scope: !845, inlinedAt: !39701)
!39703 = distinct !{!39703, i1 true, !"_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices"}
!39704 = distinct !{!39704, !39703, !"_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices: argument 1"}
!39705 = distinct !DILocation(line: 185, column: 40, scope: !845, inlinedAt: !39701)
!39706 = distinct !{!39706, !1242, !1241}
!39707 = distinct !DISubprogram(name: "branch<(), polars_parquet::parquet::error::ParquetError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorENtNtNtB7_3ops9try_trait3Try6branchBR_", scope: !1303, file: !1073, line: 2172, type: !1033, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39708 = distinct !DILexicalBlock(scope: !39685, file: !1597, line: 120, column: 21)
!39709 = distinct !DILexicalBlock(scope: !39708, file: !1597, line: 121, column: 21)
!39710 = distinct !DILocation(line: 121, column: 36, scope: !39709)
!39711 = distinct !DILocation(line: 80, column: 27, scope: !813, inlinedAt: !39710)
!39712 = distinct !DILocation(line: 185, column: 40, scope: !204, inlinedAt: !39711)
!39713 = distinct !DILexicalBlock(scope: !39709, file: !1597, line: 121, column: 21)
!39714 = distinct !DISubprogram(name: "get_bit_unchecked", linkageName: "_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap17get_bit_unchecked", scope: !1183, file: !1181, line: 358, type: !1033, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39715 = distinct !DISubprogram(name: "get_bit_unchecked", linkageName: "_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils17get_bit_unchecked", scope: !1341, file: !1601, line: 42, type: !1033, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39716 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexShE13get_uncheckedCsfISxE4fmY1Y_14polars_parquet", scope: !1189, file: !1187, line: 239, type: !1033, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39717 = distinct !DISubprogram(name: "get_unchecked<u8, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh13get_uncheckedjECsfISxE4fmY1Y_14polars_parquet", scope: !1191, file: !1190, line: 639, type: !1033, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39718 = distinct !DILexicalBlock(scope: !39715, file: !1601, line: 43, column: 5)
!39719 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsR_NtNtCscgRAwXFJnXP_4core7convert3numyINtB7_4FrombE4from", scope: !1600, file: !1467, line: 60, type: !1033, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39720 = distinct !DILexicalBlock(scope: !39713, file: !1597, line: 123, column: 25)
!39721 = distinct !{!39721, i1 true, !"_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked"}
!39722 = distinct !{!39722, !39721, !"_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked: argument 0"}
!39723 = distinct !DILocation(line: 128, column: 45, scope: !39708)
!39724 = distinct !DILocation(line: 166, column: 18, scope: !817, inlinedAt: !39723)
!39725 = distinct !DILocation(line: 96, column: 34, scope: !819, inlinedAt: !39724)
!39726 = distinct !DILocation(line: 97, column: 28, scope: !825, inlinedAt: !39724)
!39727 = distinct !DILocation(line: 2026, column: 18, scope: !824, inlinedAt: !39726)
!39728 = distinct !DILocation(line: 296, column: 20, scope: !823, inlinedAt: !39727)
!39729 = distinct !DILocation(line: 609, column: 14, scope: !822, inlinedAt: !39728)
!39730 = distinct !DILocation(line: 97, column: 41, scope: !825, inlinedAt: !39724)
!39731 = distinct !DILocation(line: 98, column: 11, scope: !830, inlinedAt: !39724)
!39732 = distinct !DILocation(line: 1478, column: 18, scope: !829, inlinedAt: !39731)
!39733 = distinct !DILocation(line: 2007, column: 9, scope: !828, inlinedAt: !39732)
!39734 = distinct !DILocation(line: 99, column: 20, scope: !830, inlinedAt: !39724)
!39735 = distinct !DILocation(line: 167, column: 48, scope: !817, inlinedAt: !39723)
!39736 = distinct !DILexicalBlock(scope: !39653, file: !1597, line: 101, column: 21)
!39737 = distinct !DILocation(line: 104, column: 21, scope: !39736)
!39738 = distinct !{!39738, i1 true, !"_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices"}
!39739 = distinct !{!39739, !39738, !"_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded19verify_dict_indices: argument 1"}
!39740 = distinct !DILexicalBlock(scope: !39736, file: !1597, line: 105, column: 21)
!39741 = distinct !DILexicalBlock(scope: !39740, file: !1597, line: 106, column: 21)
!39742 = distinct !DILocation(line: 106, column: 36, scope: !39741)
!39743 = distinct !DILocation(line: 80, column: 27, scope: !813, inlinedAt: !39742)
!39744 = distinct !DILocation(line: 180, column: 28, scope: !204, inlinedAt: !39743)
!39745 = distinct !DILexicalBlock(scope: !39741, file: !1597, line: 106, column: 21)
!39746 = distinct !DILexicalBlock(scope: !39715, file: !1601, line: 43, column: 5)
!39747 = distinct !DILexicalBlock(scope: !39745, file: !1597, line: 108, column: 25)
!39748 = distinct !DILocation(line: 185, column: 40, scope: !204, inlinedAt: !39743)
!39749 = distinct !{!39749, i1 true, !"_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked"}
!39750 = distinct !{!39750, !39749, !"_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder28push_word_with_len_unchecked: argument 0"}
!39751 = distinct !DILocation(line: 113, column: 45, scope: !39740)
!39752 = distinct !DILocation(line: 166, column: 18, scope: !817, inlinedAt: !39751)
!39753 = distinct !DILocation(line: 96, column: 34, scope: !819, inlinedAt: !39752)
!39754 = distinct !DILocation(line: 97, column: 28, scope: !825, inlinedAt: !39752)
!39755 = distinct !DILocation(line: 2026, column: 18, scope: !824, inlinedAt: !39754)
!39756 = distinct !DILocation(line: 296, column: 20, scope: !823, inlinedAt: !39755)
!39757 = distinct !DILocation(line: 609, column: 14, scope: !822, inlinedAt: !39756)
!39758 = distinct !DILocation(line: 97, column: 41, scope: !825, inlinedAt: !39752)
!39759 = distinct !DILocation(line: 98, column: 11, scope: !830, inlinedAt: !39752)
!39760 = distinct !DILocation(line: 1478, column: 18, scope: !829, inlinedAt: !39759)
!39761 = distinct !DILocation(line: 2007, column: 9, scope: !828, inlinedAt: !39760)
!39762 = distinct !DILocation(line: 99, column: 20, scope: !830, inlinedAt: !39752)
!39763 = distinct !DILocation(line: 167, column: 48, scope: !817, inlinedAt: !39751)
!39764 = !DILocation(line: 87, column: 20, scope: !39640)
!39765 = !DILocation(line: 90, column: 29, scope: !39643)
!39766 = !DILexicalBlockFile(scope: !39648, file: !1597, discriminator: 2)
!39767 = !DILocation(line: 90, column: 29, scope: !39766)
!39768 = !DILexicalBlockFile(scope: !39643, file: !1260, discriminator: 0)
!39769 = !DILexicalBlockFile(scope: !39653, file: !1597, discriminator: 2)
!39770 = !DILocation(line: 100, column: 26, scope: !39769)
!39771 = !DILocation(line: 866, column: 14, scope: !39654, inlinedAt: !39770)
!39772 = !DILocation(line: 781, column: 12, scope: !39655, inlinedAt: !39771)
!39773 = !DILocation(line: 94, column: 32, scope: !39677)
!39774 = !DILocation(line: 93, column: 66, scope: !39656)
!39775 = !DILocation(line: 1369, column: 25, scope: !39680, inlinedAt: !39774)
!39776 = !DILexicalBlockFile(scope: !39683, file: !1597, discriminator: 2)
!39777 = !DILocation(line: 93, column: 36, scope: !39776)
!39778 = !DILocation(line: 784, column: 35, scope: !39687, inlinedAt: !39771)
!39779 = !DILocation(line: 214, column: 28, scope: !39688, inlinedAt: !39778)
!39780 = !DILocation(line: 101, column: 62, scope: !39653)
!39781 = !DILocation(line: 119, column: 50, scope: !39685)
!39782 = !DILocation(line: 390, column: 9, scope: !39691, inlinedAt: !39781)
!39783 = !DILocation(line: 19, column: 15, scope: !39692, inlinedAt: !39782)
!39784 = !DILocation(line: 529, column: 23, scope: !39693, inlinedAt: !39783)
!39785 = !DILocation(line: 437, column: 32, scope: !39694, inlinedAt: !39784)
!39786 = !DILocation(line: 119, column: 67, scope: !39685)
!39787 = !{!39704}
!39788 = !DILocation(line: 119, column: 21, scope: !39685)
!39789 = !DILocation(line: 123, column: 63, scope: !39713)
!39790 = !DILexicalBlockFile(scope: !39714, file: !1181, discriminator: 2)
!39791 = !DILocation(line: 360, column: 9, scope: !39790, inlinedAt: !39789)
!39792 = !DILexicalBlockFile(scope: !39717, file: !1190, discriminator: 2)
!39793 = !DILexicalBlockFile(scope: !39715, file: !1601, discriminator: 2)
!39794 = !DILocation(line: 43, column: 23, scope: !39793, inlinedAt: !39791)
!39795 = !DILocation(line: 646, column: 26, scope: !39792, inlinedAt: !39794)
!39796 = !DILocation(line: 124, column: 46, scope: !39720)
!39797 = !{!39722}
!39798 = !DILocation(line: 0, scope: !39651)
!39799 = !DILocation(line: 104, column: 62, scope: !39736)
!39800 = !{!39739}
!39801 = !DILocation(line: 104, column: 21, scope: !39736)
!39802 = !DILocation(line: 108, column: 63, scope: !39745)
!39803 = !DILocation(line: 360, column: 9, scope: !39714, inlinedAt: !39802)
!39804 = !DILocation(line: 43, column: 23, scope: !39715, inlinedAt: !39803)
!39805 = !DILocation(line: 646, column: 26, scope: !39717, inlinedAt: !39804)
!39806 = !DILocation(line: 109, column: 46, scope: !39747)
!39807 = !{!39750}
!39808 = !DILocation(line: 87, column: 35, scope: !39640)
!39809 = !DILocation(line: 64, column: 12, scope: !39641, inlinedAt: !39764)
!39810 = !DILocation(line: 64, column: 40, scope: !39641, inlinedAt: !39764)
!39811 = !DILocation(line: 65, column: 18, scope: !39641, inlinedAt: !39764)
!39812 = !DILocation(line: 89, column: 9, scope: !39640)
!39813 = !DILocation(line: 89, column: 24, scope: !39640)
!39814 = !DILocation(line: 90, column: 36, scope: !39643)
!39815 = !DILocation(line: 2173, column: 15, scope: !39644, inlinedAt: !39765)
!39816 = !DILocation(line: 2173, column: 9, scope: !39644, inlinedAt: !39765)
!39817 = !DILocation(line: 2175, column: 17, scope: !39644, inlinedAt: !39765)
!39818 = !DILocation(line: 90, column: 48, scope: !39643)
!39819 = !DILocation(line: 2189, column: 23, scope: !39646, inlinedAt: !39767)
!39820 = !DILocation(line: 0, scope: !39768)
!39821 = !DILocation(line: 2174, column: 16, scope: !39644, inlinedAt: !39765)
!39822 = !DILocation(line: 90, column: 15, scope: !39643)
!39823 = !DILocation(line: 91, column: 15, scope: !39643)
!39824 = !DILocation(line: 91, column: 9, scope: !39643)
!39825 = !DILocation(line: 134, column: 5, scope: !39642)
!39826 = !DILocation(line: 135, column: 2, scope: !39640)
!39827 = !DILocation(line: 96, column: 39, scope: !39643)
!39828 = !DILocation(line: 98, column: 21, scope: !39650)
!39829 = !DILocation(line: 98, column: 43, scope: !39650)
!39830 = !DILocation(line: 100, column: 29, scope: !39651)
!39831 = !DILocation(line: 1917, column: 50, scope: !39652, inlinedAt: !39772)
!39832 = !DILocation(line: 93, column: 50, scope: !39656)
!39833 = !DILocation(line: 121, column: 9, scope: !39657, inlinedAt: !39660)
!39834 = !DILocation(line: 476, column: 12, scope: !39658, inlinedAt: !39659)
!39835 = !DILocation(line: 411, column: 20, scope: !39661, inlinedAt: !39666)
!39836 = !DILocation(line: 461, column: 23, scope: !39667, inlinedAt: !39665)
!39837 = !DILocation(line: 462, column: 41, scope: !39668, inlinedAt: !39665)
!39838 = !DILocation(line: 360, column: 42, scope: !39663, inlinedAt: !39664)
!39839 = !DILocation(line: 43, column: 37, scope: !39669, inlinedAt: !39670)
!39840 = !DILocation(line: 252, column: 39, scope: !39671, inlinedAt: !39674)
!39841 = !DILocation(line: 252, column: 13, scope: !39671, inlinedAt: !39674)
!39842 = !DILocation(line: 253, column: 13, scope: !39671, inlinedAt: !39674)
!39843 = !DILocation(line: 43, column: 16, scope: !39669, inlinedAt: !39670)
!39844 = !DILocation(line: 44, column: 15, scope: !39675, inlinedAt: !39670)
!39845 = !DILocation(line: 119, column: 27, scope: !39676, inlinedAt: !39773)
!39846 = !DILocation(line: 120, column: 12, scope: !39678, inlinedAt: !39773)
!39847 = !DILocation(line: 250, column: 5, scope: !39679, inlinedAt: !39775)
!39848 = !DILocation(line: 1369, column: 21, scope: !39680, inlinedAt: !39774)
!39849 = !DILocation(line: 2189, column: 23, scope: !39681, inlinedAt: !39777)
!39850 = !DILocation(line: 1368, column: 18, scope: !39680, inlinedAt: !39774)
!39851 = !DILocation(line: 125, column: 18, scope: !39678, inlinedAt: !39773)
!39852 = !DILocation(line: 477, column: 13, scope: !39658, inlinedAt: !39659)
!39853 = !DILocation(line: 121, column: 30, scope: !39678, inlinedAt: !39773)
!39854 = !DILocation(line: 121, column: 29, scope: !39678, inlinedAt: !39773)
!39855 = !DILocation(line: 122, column: 25, scope: !39684, inlinedAt: !39773)
!39856 = !DILocation(line: 122, column: 13, scope: !39684, inlinedAt: !39773)
!39857 = !DILocation(line: 123, column: 13, scope: !39684, inlinedAt: !39773)
!39858 = !DILocation(line: 120, column: 9, scope: !39678, inlinedAt: !39773)
!39859 = !DILocation(line: 116, column: 42, scope: !39685)
!39860 = !DILocation(line: 116, column: 24, scope: !39685)
!39861 = !DILocation(line: 898, column: 17, scope: !39686, inlinedAt: !39779)
!39862 = !DILocation(line: 101, column: 37, scope: !39653)
!39863 = !DILocation(line: 1014, column: 9, scope: !39689, inlinedAt: !39780)
!39864 = !DILocation(line: 977, column: 16, scope: !39690, inlinedAt: !39785)
!39865 = !DILocation(line: 130, column: 13, scope: !39650)
!39866 = !DILocation(line: 130, column: 13, scope: !39643)
!39867 = !DILocation(line: 443, column: 13, scope: !39694, inlinedAt: !39784)
!39868 = !DILocation(line: 121, column: 9, scope: !39695, inlinedAt: !39786)
!39869 = !DILocation(line: 216, column: 21, scope: !833, inlinedAt: !39696)
!39870 = !DILocation(line: 961, column: 18, scope: !834, inlinedAt: !39700)
!39871 = !DILocation(line: 1717, column: 9, scope: !842, inlinedAt: !39702)
!39872 = !DILocation(line: 180, column: 28, scope: !845, inlinedAt: !39701)
!39873 = !DILocation(line: 219, column: 10, scope: !846, inlinedAt: !39696)
!39874 = !DILocation(line: 220, column: 21, scope: !847, inlinedAt: !39696)
!39875 = !DILocation(line: 220, column: 9, scope: !847, inlinedAt: !39696)
!39876 = !DILocation(line: 659, column: 28, scope: !848, inlinedAt: !39705)
!39877 = !DILocation(line: 223, column: 8, scope: !841, inlinedAt: !39696)
!39878 = !DILocation(line: 226, column: 13, scope: !841, inlinedAt: !39696)
!39879 = !DILocation(line: 226, column: 9, scope: !841, inlinedAt: !39696)
!39880 = !DILocation(line: 2173, column: 15, scope: !39707, inlinedAt: !39788)
!39881 = !DILocation(line: 2173, column: 9, scope: !39707, inlinedAt: !39788)
!39882 = !DILocation(line: 180, column: 28, scope: !204, inlinedAt: !39711)
!39883 = !DILocation(line: 659, column: 28, scope: !206, inlinedAt: !39712)
!39884 = !DILocation(line: 82, column: 9, scope: !815, inlinedAt: !39710)
!39885 = !DILocation(line: 121, column: 30, scope: !39709)
!39886 = !DILocation(line: 123, column: 81, scope: !39713)
!39887 = !DILocation(line: 360, column: 42, scope: !39714, inlinedAt: !39789)
!39888 = !DILocation(line: 43, column: 37, scope: !39715, inlinedAt: !39791)
!39889 = !DILocation(line: 252, column: 39, scope: !39716, inlinedAt: !39795)
!39890 = !DILocation(line: 252, column: 13, scope: !39716, inlinedAt: !39795)
!39891 = !DILocation(line: 253, column: 13, scope: !39716, inlinedAt: !39795)
!39892 = !DILocation(line: 43, column: 16, scope: !39715, inlinedAt: !39791)
!39893 = !DILocation(line: 44, column: 15, scope: !39718, inlinedAt: !39791)
!39894 = !DILocation(line: 61, column: 17, scope: !39719, inlinedAt: !39796)
!39895 = !DILocation(line: 124, column: 25, scope: !39720)
!39896 = !DILocation(line: 128, column: 45, scope: !39708)
!39897 = !DILocation(line: 0, scope: !39685)
!39898 = !DILocation(line: 163, column: 27, scope: !816, inlinedAt: !39723)
!39899 = !DILocation(line: 164, column: 21, scope: !817, inlinedAt: !39723)
!39900 = !DILocation(line: 164, column: 9, scope: !817, inlinedAt: !39723)
!39901 = !DILocation(line: 165, column: 12, scope: !817, inlinedAt: !39723)
!39902 = !DILocation(line: 3024, column: 19, scope: !818, inlinedAt: !39725)
!39903 = !DILocation(line: 3029, column: 37, scope: !820, inlinedAt: !39725)
!39904 = !DILocation(line: 3029, column: 18, scope: !820, inlinedAt: !39725)
!39905 = !DILocation(line: 614, column: 9, scope: !821, inlinedAt: !39729)
!39906 = !DILocation(line: 961, column: 18, scope: !826, inlinedAt: !39730)
!39907 = !DILocation(line: 552, column: 14, scope: !827, inlinedAt: !39733)
!39908 = !DILocation(line: 99, column: 28, scope: !830, inlinedAt: !39724)
!39909 = !DILocation(line: 2195, column: 9, scope: !831, inlinedAt: !39734)
!39910 = !DILocation(line: 85, column: 20, scope: !832, inlinedAt: !39735)
!39911 = !DILocation(line: 167, column: 13, scope: !817, inlinedAt: !39723)
!39912 = !DILocation(line: 168, column: 27, scope: !817, inlinedAt: !39723)
!39913 = !DILocation(line: 168, column: 13, scope: !817, inlinedAt: !39723)
!39914 = !DILocation(line: 165, column: 9, scope: !817, inlinedAt: !39723)
!39915 = !DILocation(line: 174, column: 9, scope: !817, inlinedAt: !39723)
!39916 = !DILocation(line: 116, column: 17, scope: !39651)
!39917 = !DILocation(line: 2189, column: 23, scope: !39645, inlinedAt: !39798)
!39918 = !DILocation(line: 2175, column: 17, scope: !39707, inlinedAt: !39798)
!39919 = !DILocation(line: 121, column: 9, scope: !39695, inlinedAt: !39799)
!39920 = !DILocation(line: 216, column: 21, scope: !833, inlinedAt: !39737)
!39921 = !DILocation(line: 219, column: 10, scope: !846, inlinedAt: !39737)
!39922 = !DILocation(line: 220, column: 21, scope: !847, inlinedAt: !39737)
!39923 = !DILocation(line: 220, column: 9, scope: !847, inlinedAt: !39737)
!39924 = !DILocation(line: 223, column: 8, scope: !841, inlinedAt: !39737)
!39925 = !DILocation(line: 226, column: 13, scope: !841, inlinedAt: !39737)
!39926 = !DILocation(line: 226, column: 9, scope: !841, inlinedAt: !39737)
!39927 = !DILocation(line: 2173, column: 15, scope: !39707, inlinedAt: !39801)
!39928 = !DILocation(line: 2173, column: 9, scope: !39707, inlinedAt: !39801)
!39929 = !DILocation(line: 1016, column: 21, scope: !39689, inlinedAt: !39780)
!39930 = !DILocation(line: 180, column: 28, scope: !204, inlinedAt: !39743)
!39931 = !DILocation(line: 1717, column: 9, scope: !201, inlinedAt: !39744)
!39932 = !DILocation(line: 82, column: 9, scope: !815, inlinedAt: !39742)
!39933 = !DILocation(line: 106, column: 30, scope: !39741)
!39934 = !DILocation(line: 108, column: 81, scope: !39745)
!39935 = !DILocation(line: 360, column: 42, scope: !39714, inlinedAt: !39802)
!39936 = !DILocation(line: 43, column: 37, scope: !39715, inlinedAt: !39803)
!39937 = !DILocation(line: 252, column: 39, scope: !39716, inlinedAt: !39805)
!39938 = !DILocation(line: 252, column: 13, scope: !39716, inlinedAt: !39805)
!39939 = !DILocation(line: 253, column: 13, scope: !39716, inlinedAt: !39805)
!39940 = !DILocation(line: 43, column: 16, scope: !39715, inlinedAt: !39803)
!39941 = !DILocation(line: 44, column: 15, scope: !39746, inlinedAt: !39803)
!39942 = !DILocation(line: 61, column: 17, scope: !39719, inlinedAt: !39806)
!39943 = !DILocation(line: 109, column: 25, scope: !39747)
!39944 = !DILocation(line: 659, column: 28, scope: !206, inlinedAt: !39748)
!39945 = !DILocation(line: 113, column: 45, scope: !39740)
!39946 = !DILocation(line: 163, column: 27, scope: !816, inlinedAt: !39751)
!39947 = !DILocation(line: 164, column: 21, scope: !817, inlinedAt: !39751)
!39948 = !DILocation(line: 164, column: 9, scope: !817, inlinedAt: !39751)
!39949 = !DILocation(line: 165, column: 12, scope: !817, inlinedAt: !39751)
!39950 = !DILocation(line: 3024, column: 19, scope: !818, inlinedAt: !39753)
!39951 = !DILocation(line: 3029, column: 37, scope: !820, inlinedAt: !39753)
!39952 = !DILocation(line: 3029, column: 18, scope: !820, inlinedAt: !39753)
!39953 = !DILocation(line: 614, column: 9, scope: !821, inlinedAt: !39757)
!39954 = !DILocation(line: 961, column: 18, scope: !826, inlinedAt: !39758)
!39955 = !DILocation(line: 552, column: 14, scope: !827, inlinedAt: !39761)
!39956 = !DILocation(line: 99, column: 28, scope: !830, inlinedAt: !39752)
!39957 = !DILocation(line: 2195, column: 9, scope: !831, inlinedAt: !39762)
!39958 = !DILocation(line: 85, column: 20, scope: !832, inlinedAt: !39763)
!39959 = !DILocation(line: 167, column: 13, scope: !817, inlinedAt: !39751)
!39960 = !DILocation(line: 168, column: 27, scope: !817, inlinedAt: !39751)
!39961 = !DILocation(line: 168, column: 13, scope: !817, inlinedAt: !39751)
!39962 = !DILocation(line: 165, column: 9, scope: !817, inlinedAt: !39751)
!39963 = !DILocation(line: 174, column: 9, scope: !817, inlinedAt: !39751)
!39964 = !DILocation(line: 135, column: 1, scope: !39640)
!39965 = distinct !DISubprogram(name: "decode", linkageName: "_RNvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded9predicate6decode", scope: !1599, file: !1597, line: 8, type: !1033, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39966 = distinct !DISubprogram(name: "set_bits", linkageName: "_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap8set_bits", scope: !1183, file: !1181, line: 218, type: !1033, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39967 = distinct !DISubprogram(name: "len", linkageName: "_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder3len", scope: !1518, file: !1516, line: 26, type: !1033, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39968 = distinct !DILexicalBlock(scope: !39965, file: !1597, line: 13, column: 5)
!39969 = distinct !DILexicalBlock(scope: !39968, file: !1597, line: 15, column: 5)
!39970 = distinct !DISubprogram(name: "extend_constant", linkageName: "_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder15extend_constant", scope: !1518, file: !1516, line: 117, type: !1033, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39971 = distinct !DILexicalBlock(scope: !39970, file: !1516, line: 119, column: 9)
!39972 = distinct !DILexicalBlock(scope: !39971, file: !1516, line: 121, column: 13)
!39973 = distinct !DILexicalBlock(scope: !39969, file: !1376, line: 45, column: 13)
!39974 = distinct !DILexicalBlock(scope: !39969, file: !1597, line: 21, column: 9)
!39975 = distinct !DISubprogram(name: "branch<(), polars_parquet::parquet::error::ParquetError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorENtNtNtB7_3ops9try_trait3Try6branchBR_", scope: !1303, file: !1073, line: 2172, type: !1033, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!39976 = distinct !DILexicalBlock(scope: !39973, file: !1376, line: 47, column: 21)
!39977 = !DILocation(line: 13, column: 46, scope: !39965)
!39978 = !DILocation(line: 15, column: 54, scope: !39968)
!39979 = !DILocation(line: 19, column: 24, scope: !39969)
!39980 = !DILocation(line: 27, column: 60, scope: !39969)
!39981 = !DILexicalBlockFile(scope: !39973, file: !1597, discriminator: 0)
!39982 = !DILocation(line: 22, column: 9, scope: !39974)
!39983 = !DILocation(line: 24, column: 9, scope: !39969)
!39984 = !DILexicalBlockFile(scope: !39969, file: !1260, discriminator: 0)
!39985 = !DILexicalBlockFile(scope: !39976, file: !1597, discriminator: 0)
!39986 = !DILocation(line: 219, column: 9, scope: !39966, inlinedAt: !39977)
!39987 = !DILocation(line: 219, column: 28, scope: !39966, inlinedAt: !39977)
!39988 = !DILocation(line: 27, column: 9, scope: !39967, inlinedAt: !39978)
!39989 = !DILocation(line: 15, column: 69, scope: !39968)
!39990 = !DILocation(line: 15, column: 39, scope: !39968)
!39991 = !DILocation(line: 18, column: 8, scope: !39969)
!39992 = !DILocation(line: 119, column: 27, scope: !39970, inlinedAt: !39979)
!39993 = !DILocation(line: 120, column: 12, scope: !39971, inlinedAt: !39979)
!39994 = !DILocation(line: 125, column: 18, scope: !39971, inlinedAt: !39979)
!39995 = !DILocation(line: 123, column: 13, scope: !39972, inlinedAt: !39979)
!39996 = !DILocation(line: 120, column: 9, scope: !39971, inlinedAt: !39979)
!39997 = !DILocation(line: 27, column: 9, scope: !39967, inlinedAt: !39980)
!39998 = !DILocation(line: 27, column: 5, scope: !39981)
!39999 = !DILocation(line: 21, column: 32, scope: !39969)
!40000 = !DILocation(line: 22, column: 31, scope: !39974)
!40001 = !DILocation(line: 2173, column: 15, scope: !39975, inlinedAt: !39982)
!40002 = !DILocation(line: 2173, column: 9, scope: !39975, inlinedAt: !39982)
!40003 = !DILocation(line: 2173, column: 15, scope: !39975, inlinedAt: !39983)
!40004 = !DILocation(line: 2173, column: 9, scope: !39975, inlinedAt: !39983)
!40005 = !DILocation(line: 2175, column: 17, scope: !39975, inlinedAt: !39982)
!40006 = !DILocation(line: 22, column: 61, scope: !39974)
!40007 = !DILocation(line: 0, scope: !39984)
!40008 = !DILocation(line: 20, column: 12, scope: !39969)
!40009 = !DILocation(line: 2175, column: 17, scope: !39975, inlinedAt: !39983)
!40010 = !DILocation(line: 24, column: 59, scope: !39969)
!40011 = !DILocation(line: 27, column: 5, scope: !39985)
!40012 = !DILocation(line: 29, column: 5, scope: !39969)
!40013 = !DILocation(line: 30, column: 2, scope: !39965)
!40014 = distinct !DISubprogram(name: "__clone_box<polars_arrow::array::binary::BinaryArray<i64>>", linkageName: "_RNvXCsLMQD3BJNpw_9dyn_cloneINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxENtB2_8DynClone11___clone_boxCsfISxE4fmY1Y_14polars_parquet", scope: !40059, file: !40057, line: 200, type: !1033, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1032)
!40015 = distinct !{!40015, i1 true, !"_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array6binaryINtB5_11BinaryArrayxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfISxE4fmY1Y_14polars_parquet"}
!40016 = distinct !{!40016, !40015, !"_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array6binaryINtB5_11BinaryArrayxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!40017 = distinct !DILocation(line: 201, column: 42, scope: !40014)
!40018 = distinct !DILocation(line: 61, column: 5, scope: !849, inlinedAt: !40017)
!40019 = distinct !DILocation(line: 372, column: 10, scope: !853, inlinedAt: !40018)
!40020 = distinct !DILocation(line: 53, column: 35, scope: !852, inlinedAt: !40019)
!40021 = distinct !DILocation(line: 469, column: 26, scope: !851, inlinedAt: !40020)
!40022 = distinct !DILocation(line: 62, column: 5, scope: !849, inlinedAt: !40017)
!40023 = distinct !DILocation(line: 53, column: 35, scope: !1610, inlinedAt: !40022)
!40024 = distinct !DILocation(line: 469, column: 26, scope: !1609, inlinedAt: !40023)
!40025 = distinct !DILocation(line: 472, column: 29, scope: !854, inlinedAt: !40020)
!40026 = distinct !DILocation(line: 3162, column: 42, scope: !863, inlinedAt: !40025)
!40027 = distinct !DILocation(line: 3615, column: 24, scope: !862, inlinedAt: !40026)
!40028 = distinct !DILocation(line: 3162, column: 26, scope: !863, inlinedAt: !40025)
!40029 = distinct !DILocation(line: 63, column: 5, scope: !849, inlinedAt: !40017)
!40030 = distinct !DILocation(line: 472, column: 29, scope: !1614, inlinedAt: !40023)
!40031 = distinct !DILocation(line: 3162, column: 42, scope: !1613, inlinedAt: !40030)
!40032 = distinct !DILocation(line: 3615, column: 24, scope: !1612, inlinedAt: !40031)
!40033 = distinct !DILocation(line: 3162, column: 26, scope: !1613, inlinedAt: !40030)
!40034 = distinct !{!40034, i1 true, !"_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone"}
!40035 = distinct !{!40035, !40034, !"_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone: argument 0"}
!40036 = distinct !DILocation(line: 2278, column: 31, scope: !866, inlinedAt: !40029)
!40037 = distinct !DILocation(line: 57, column: 5, scope: !676, inlinedAt: !40036)
!40038 = distinct !DILocation(line: 472, column: 29, scope: !677, inlinedAt: !40037)
!40039 = distinct !DILocation(line: 3162, column: 42, scope: !681, inlinedAt: !40038)
!40040 = distinct !DILocation(line: 3615, column: 24, scope: !680, inlinedAt: !40039)
!40041 = distinct !DILocation(line: 3162, column: 26, scope: !681, inlinedAt: !40038)
!40042 = distinct !DILocation(line: 67, column: 5, scope: !676, inlinedAt: !40036)
!40043 = distinct !DILocation(line: 54, column: 35, scope: !686, inlinedAt: !40042)
!40044 = distinct !DILocation(line: 11, column: 9, scope: !685, inlinedAt: !40043)
!40045 = distinct !DILocation(line: 90, column: 24, scope: !684, inlinedAt: !40044)
!40046 = distinct !DILocation(line: 2870, column: 43, scope: !683, inlinedAt: !40045)
!40047 = distinct !DILocation(line: 3615, column: 24, scope: !1494, inlinedAt: !40046)
!40048 = distinct !DILocation(line: 2870, column: 26, scope: !683, inlinedAt: !40045)
!40049 = distinct !{!40049, i1 true, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE3newCsfISxE4fmY1Y_14polars_parquet"}
!40050 = distinct !{!40050, !40049, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array6binary11BinaryArrayxEE3newCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!40051 = distinct !DILocation(line: 201, column: 28, scope: !40014)
!40052 = distinct !DILocation(line: 286, column: 19, scope: !867, inlinedAt: !40051)
!40053 = distinct !DILocation(line: 248, column: 18, scope: !748, inlinedAt: !40052)
!40054 = distinct !DILocation(line: 449, column: 14, scope: !753, inlinedAt: !40053)
!40055 = distinct !DILocation(line: 332, column: 9, scope: !752, inlinedAt: !40054)
!40056 = distinct !DILocation(line: 210, column: 73, scope: !751, inlinedAt: !40055)
!40057 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/dyn-clone-1.0.20", checksumkind: CSK_MD5, checksum: "a78873a1204f9a409f0b59819d61c399")
!40058 = !DINamespace(name: "dyn_clone", scope: null)
!40059 = !DINamespace(name: "{impl#0}", scope: !40058)
!40060 = !{!40016}
!40061 = !{!40035, !40016}
!40062 = !{!40050}
!40063 = !DILocation(line: 201, column: 37, scope: !40014)
!40064 = !DILocation(line: 201, column: 42, scope: !40014)
!40065 = !DILocation(line: 60, column: 5, scope: !849, inlinedAt: !40017)
!40066 = !DILocation(line: 411, column: 20, scope: !850, inlinedAt: !40021)
!40067 = !DILocation(line: 470, column: 22, scope: !1608, inlinedAt: !40020)
!40068 = !DILocation(line: 470, column: 13, scope: !1608, inlinedAt: !40020)
!40069 = !DILocation(line: 54, column: 18, scope: !852, inlinedAt: !40019)
!40070 = !DILocation(line: 55, column: 21, scope: !852, inlinedAt: !40019)
!40071 = !DILocation(line: 411, column: 20, scope: !856, inlinedAt: !40024)
!40072 = !DILocation(line: 470, column: 22, scope: !1611, inlinedAt: !40023)
!40073 = !DILocation(line: 470, column: 13, scope: !1611, inlinedAt: !40023)
!40074 = !DILocation(line: 2447, column: 9, scope: !861, inlinedAt: !40027)
!40075 = !DILocation(line: 3937, column: 24, scope: !864, inlinedAt: !40028)
!40076 = !DILocation(line: 470, column: 9, scope: !854, inlinedAt: !40020)
!40077 = !DILocation(line: 54, column: 18, scope: !858, inlinedAt: !40022)
!40078 = !DILocation(line: 55, column: 21, scope: !858, inlinedAt: !40022)
!40079 = !DILocation(line: 2277, column: 15, scope: !865, inlinedAt: !40029)
!40080 = !DILocation(line: 2277, column: 9, scope: !865, inlinedAt: !40029)
!40081 = !DILocation(line: 2447, column: 9, scope: !861, inlinedAt: !40032)
!40082 = !DILocation(line: 3937, column: 24, scope: !864, inlinedAt: !40033)
!40083 = !DILocation(line: 470, column: 9, scope: !859, inlinedAt: !40023)
!40084 = !DILocation(line: 470, column: 22, scope: !1490, inlinedAt: !40037)
!40085 = !DILocation(line: 470, column: 13, scope: !1490, inlinedAt: !40037)
!40086 = !DILocation(line: 2447, column: 9, scope: !679, inlinedAt: !40040)
!40087 = !DILocation(line: 3937, column: 24, scope: !682, inlinedAt: !40041)
!40088 = !DILocation(line: 470, column: 9, scope: !677, inlinedAt: !40037)
!40089 = !DILocation(line: 60, column: 5, scope: !676, inlinedAt: !40036)
!40090 = !DILocation(line: 2447, column: 9, scope: !679, inlinedAt: !40047)
!40091 = !DILocation(line: 3904, column: 24, scope: !687, inlinedAt: !40048)
!40092 = !DILocation(line: 2278, column: 38, scope: !865, inlinedAt: !40029)
!40093 = !DILocation(line: 63, column: 5, scope: !849, inlinedAt: !40017)
!40094 = !DILocation(line: 58, column: 10, scope: !849, inlinedAt: !40017)
!40095 = !DILocation(line: 58, column: 14, scope: !849, inlinedAt: !40017)
end_hunk_1
