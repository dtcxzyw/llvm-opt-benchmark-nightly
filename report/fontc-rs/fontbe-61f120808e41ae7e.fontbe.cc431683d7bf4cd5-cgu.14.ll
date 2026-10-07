Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.14?download=true
inline.NumInlined: 2070
inline.NumDeleted: 814
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvNtNtCscScJTt9VrQp_6fea_rs7compile11glyph_range11alpha_rangeNCNvMNtB4_8validateINtB14_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_ranges_0EB1I_:bb.a
bb.r:                                             ; preds = %bb.p, %.thread7.i
  %i.av = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aw = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.av, ptr %i.c, align 8, !noalias !2734
  store i64 %i.aw, ptr %i.ab, align 8, !noalias !2734
  %i.ax = load ptr, ptr %i.ac, align 8, !noalias !2734, !nonnull !5, !align !9, !noundef !5
  %i.ay = invoke { i16, i16 } @_RINvMNtNtCscScJTt9VrQp_6fea_rs6common9glyph_mapNtB3_8GlyphMap3geteECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.aw)
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %bb.r
  %i.az = extractvalue { i16, i16 } %i.ay, 0
  %.not.i18 = icmp eq i16 %i.az, 1
  br i1 %.not.i18, label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_ranges_0B19_.exit, label %.split.i

.split.i:                                         ; preds = %.noexc19
  %i.ba = load i32, ptr %i.ad, align 8, !noalias !2734, !noundef !5
  %i.bb = load i32, ptr %i.ae, align 4, !noalias !2734, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2734
  store ptr %i.c, ptr %i.a, align 8, !noalias !2734
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCshxhuDJfZv4T_6fontbe, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2734
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @45, ptr noundef nonnull %i.a)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %.split.i
  %i.bc = zext i32 %i.bb to i64
  %i.bd = zext i32 %i.ba to i64                   ; 2 uses
  %i.be = add nuw nsw i64 %i.bc, %i.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2734
  invoke fastcc void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB3_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE7warningNtNtCsgCecv3eZDcN_5alloc6string6StringEB18_(ptr noalias nofree noundef align 8 dereferenceable(568) %6, i64 noundef %i.bd, i64 noundef %i.be, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_ranges_0B19_.exit unwind label %.loopexit

_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_ranges_0B19_.exit: ; preds = %.noexc20, %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond.not = icmp eq i32 %.sroa.022.035, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.h, %bb.s
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscScJTt9VrQp_6fea_rs7compile11glyph_range3cidNCNvMNtB4_11compile_ctxINtBV_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_range0EB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = load i8, ptr %1, align 8, !range !8, !noundef !5 ; 2 uses
  %i.h = icmp samesign ugt i8 %i.g, 23
  %i.i = zext nneg i8 %i.g to i64                 ; 2 uses
  %i.j = add nsw i64 %i.i, -23
  %i.k = select i1 %i.h, i64 %i.j, i64 0
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.4.0 = phi i64 [ %i.i, %bb.c ], [ %i.p, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.02.0 = phi ptr [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.u, %bb.e ] ; 3 uses
  switch i64 %.sroa.4.0, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %.sroa.02.0, align 1, !alias.scope !2747, !noundef !5 ; 2 uses
  switch i8 %i.v, label %bb.h [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.f
  %.pr.i = load i8, ptr %.sroa.02.0, align 1, !alias.scope !2747
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.w = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.v, %bb.g ]
  %cond.i = icmp eq i8 %i.w, 43                   ; 2 uses
  %i.x = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.0, %i.x    ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.y = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.y, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.h
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.k
  %.not53.i = icmp eq i64 %i.ac, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.l, %bb.m, %bb.n, %bb.o, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.br, %bb.o ], [ 0, %.preheader.i ], [ %i.at, %bb.l ], [ %i.bb, %bb.m ], [ %i.bj, %bb.n ], [ %i.an, %.preheader58.i ]
  %i.z = zext i16 %.sroa.043.1.i to i32
  %i.aa = shl nuw i32 %i.z, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader58.i.preheader:                         ; preds = %bb.h, %.preheader58.i
  %.sroa.0.1.i122 = phi ptr [ %i.ab, %.preheader58.i ], [ %.sroa.0.0.i, %bb.h ] ; 2 uses
  %.sroa.15.1.i121 = phi i64 [ %i.ac, %.preheader58.i ], [ %.sroa.15.0.i, %bb.h ]
  %.sroa.043.0.i120 = phi i16 [ %i.an, %.preheader58.i ], [ 0, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i122, i64 1
  %i.ac = add nsw i64 %.sroa.15.1.i121, -1        ; 2 uses
  %i.ad = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i120, i16 10) ; 2 uses
  %i.ae = extractvalue { i16, i1 } %i.ad, 0       ; 2 uses
  %i.af = extractvalue { i16, i1 } %i.ad, 1
  %i.ag = load i8, ptr %.sroa.0.1.i122, align 1, !alias.scope !2747, !noundef !5 ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.i, !prof !12

bb.i:                                             ; preds = %.preheader58.i.preheader
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -48                  ; 2 uses
  %i.aj = icmp ult i32 %i.ai, 10
  br i1 %i.aj, label %bb.k, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.j:                                             ; preds = %.preheader58.i.preheader
  %i.ak = add i8 %i.ag, -48
  %i.al = icmp ult i8 %i.ak, 10
  %spec.select.i = select i1 %i.al, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.k:                                             ; preds = %bb.i
  %i.am = trunc nuw nsw i32 %i.ai to i16
  %i.an = add i16 %i.ae, %i.am                    ; 3 uses
  %i.ao = icmp ult i16 %i.an, %i.ae
  br i1 %i.ao, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %.preheader58.i, !prof !12

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ap = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !2747, !noundef !5
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.l, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.l:                                             ; preds = %.lr.ph.i
  %i.at = trunc nuw nsw i32 %i.ar to i16          ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !2747, !noundef !5
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -48                  ; 2 uses
  %i.ay = icmp ult i32 %i.ax, 10
  br i1 %i.ay, label %bb.m, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.az = mul nuw nsw i16 %i.at, 10
  %i.ba = trunc nuw nsw i32 %i.ax to i16
  %i.bb = add nuw nsw i16 %i.az, %i.ba            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !2747, !noundef !5
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -48                  ; 2 uses
  %i.bg = icmp ult i32 %i.bf, 10
  br i1 %i.bg, label %bb.n, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.2
  %i.bh = mul nuw i16 %i.bb, 10
  %i.bi = trunc nuw nsw i32 %i.bf to i16
  %i.bj = add nuw nsw i16 %i.bh, %i.bi            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !2747, !noundef !5
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -48                  ; 2 uses
  %i.bo = icmp ult i32 %i.bn, 10
  br i1 %i.bo, label %bb.o, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.o:                                             ; preds = %.lr.ph.i.3
  %i.bp = mul i16 %i.bj, 10
  %i.bq = trunc nuw nsw i32 %i.bn to i16
  %i.br = add i16 %i.bp, %i.bq
  br label %.loopexit.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %bb.j
  %.sroa.8.0.insert.insert.i = phi i32 [ %spec.select.i, %bb.j ], [ %i.aa, %.loopexit.i ] ; 3 uses
  %i.bs = trunc i32 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.bs, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25, !prof !30

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.k, %bb.i, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.f, %bb.g, %bb.g, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i51 = phi i32 [ %.sroa.8.0.insert.insert.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 257, %bb.g ], [ 257, %.lr.ph.i ], [ 257, %bb.g ], [ 1, %bb.f ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.i ], [ 513, %bb.k ]
  %.sroa.4.0.extract.shift.i23 = lshr i32 %.sroa.8.0.insert.insert.i51, 8
  %.sroa.4.0.extract.trunc.i24 = trunc i32 %.sroa.4.0.extract.shift.i23 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2748
  store i8 %.sroa.4.0.extract.trunc.i24, ptr %i.d, align 1, !noalias !2748
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #30
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.5.0.extract.shift.i21 = lshr i32 %.sroa.8.0.insert.insert.i, 16 ; 2 uses
  %.sroa.5.0.extract.trunc.i22 = trunc nuw i32 %.sroa.5.0.extract.shift.i21 to i16
  %i.bt = load i8, ptr %2, align 8, !range !8, !noundef !5 ; 2 uses
  %i.bu = icmp samesign ugt i8 %i.bt, 23
  %i.bv = zext nneg i8 %i.bt to i64               ; 2 uses
  %i.bw = add nsw i64 %i.bv, -23
  %i.bx = select i1 %i.bu, i64 %i.bw, i64 0
  switch i64 %i.bx, label %bb.b [
    i64 0, label %bb.p
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

bb.p:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.s

bb.q:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !5
  br label %bb.s

bb.r:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !5, !noundef !5
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !5
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.46.0 = phi i64 [ %i.bv, %bb.p ], [ %i.cc, %bb.q ], [ %i.cg, %bb.r ] ; 2 uses
  %.sroa.05.0 = phi ptr [ %i.by, %bb.p ], [ %i.ca, %bb.q ], [ %i.ch, %bb.r ] ; 3 uses
  switch i64 %.sroa.46.0, label %thread-pre-split.i46 [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.ci = load i8, ptr %.sroa.05.0, align 1, !alias.scope !2749, !noundef !5 ; 2 uses
  switch i8 %i.ci, label %bb.u [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread
  ]

thread-pre-split.i46:                             ; preds = %bb.s
  %.pr.i47 = load i8, ptr %.sroa.05.0, align 1, !alias.scope !2749
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i46, %bb.t
  %i.cj = phi i8 [ %.pr.i47, %thread-pre-split.i46 ], [ %i.ci, %bb.t ]
  %cond.i27 = icmp eq i8 %i.cj, 43                ; 2 uses
  %i.ck = sext i1 %cond.i27 to i64
  %.sroa.15.0.i28 = add nsw i64 %.sroa.46.0, %i.ck ; 6 uses
  %.sroa.0.0.idx.i29 = zext i1 %cond.i27 to i64
  %.sroa.0.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 %.sroa.0.0.idx.i29 ; 5 uses
  %i.cl = icmp samesign ult i64 %.sroa.15.0.i28, 5
  br i1 %i.cl, label %.preheader.i39, label %.preheader58.i31.preheader

.preheader.i39:                                   ; preds = %bb.u
  %.not5466.i40 = icmp eq i64 %.sroa.15.0.i28, 0
  br i1 %.not5466.i40, label %.loopexit.i37, label %.lr.ph.i41

.preheader58.i31:                                 ; preds = %bb.x
  %.not53.i35 = icmp eq i64 %i.cp, 0
  br i1 %.not53.i35, label %.loopexit.i37, label %.preheader58.i31.preheader

.loopexit.i37:                                    ; preds = %.preheader58.i31, %bb.y, %bb.z, %bb.aa, %bb.ab, %.preheader.i39
  %.sroa.043.1.i38 = phi i16 [ %i.ee, %bb.ab ], [ 0, %.preheader.i39 ], [ %i.dg, %bb.y ], [ %i.do, %bb.z ], [ %i.dw, %bb.aa ], [ %i.da, %.preheader58.i31 ]
  %.sroa.043.1.i38.fr = freeze i16 %.sroa.043.1.i38
  %i.cm = zext i16 %.sroa.043.1.i38.fr to i32
  %i.cn = shl nuw i32 %i.cm, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48

.preheader58.i31.preheader:                       ; preds = %bb.u, %.preheader58.i31
  %.sroa.0.1.i34125 = phi ptr [ %i.co, %.preheader58.i31 ], [ %.sroa.0.0.i30, %bb.u ] ; 2 uses
  %.sroa.15.1.i33124 = phi i64 [ %i.cp, %.preheader58.i31 ], [ %.sroa.15.0.i28, %bb.u ]
  %.sroa.043.0.i32123 = phi i16 [ %i.da, %.preheader58.i31 ], [ 0, %bb.u ]
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i34125, i64 1
  %i.cp = add nsw i64 %.sroa.15.1.i33124, -1      ; 2 uses
  %i.cq = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i32123, i16 10) ; 2 uses
  %i.cr = extractvalue { i16, i1 } %i.cq, 0       ; 2 uses
  %i.cs = extractvalue { i16, i1 } %i.cq, 1
  %i.ct = load i8, ptr %.sroa.0.1.i34125, align 1, !alias.scope !2749, !noundef !5 ; 2 uses
  br i1 %i.cs, label %bb.w, label %bb.v, !prof !12

bb.v:                                             ; preds = %.preheader58.i31.preheader
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nsw i32 %i.cu, -48                  ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 10
  br i1 %i.cw, label %bb.x, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread

bb.w:                                             ; preds = %.preheader58.i31.preheader
  %i.cx = add i8 %i.ct, -48
  %i.cy = icmp ult i8 %i.cx, 10
  %spec.select.i36 = select i1 %i.cy, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48

bb.x:                                             ; preds = %bb.v
  %i.cz = trunc nuw nsw i32 %i.cv to i16
  %i.da = add i16 %i.cr, %i.cz                    ; 3 uses
  %i.db = icmp ult i16 %i.da, %i.cr
  br i1 %i.db, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread, label %.preheader58.i31, !prof !12

.lr.ph.i41:                                       ; preds = %.preheader.i39
  %i.dc = load i8, ptr %.sroa.0.0.i30, align 1, !alias.scope !2749, !noundef !5
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nsw i32 %i.dd, -48                  ; 2 uses
  %i.df = icmp ult i32 %i.de, 10
  br i1 %i.df, label %bb.y, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread

bb.y:                                             ; preds = %.lr.ph.i41
  %i.dg = trunc nuw nsw i32 %i.de to i16          ; 2 uses
  %.not54.i45 = icmp eq i64 %.sroa.15.0.i28, 1
  br i1 %.not54.i45, label %.loopexit.i37, label %.lr.ph.i41.1

.lr.ph.i41.1:                                     ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !2749, !noundef !5
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.z, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread

bb.z:                                             ; preds = %.lr.ph.i41.1
  %i.dm = mul nuw nsw i16 %i.dg, 10
  %i.dn = trunc nuw nsw i32 %i.dk to i16
  %i.do = add nuw nsw i16 %i.dm, %i.dn            ; 2 uses
  %.not54.i45.1 = icmp eq i64 %.sroa.15.0.i28, 2
  br i1 %.not54.i45.1, label %.loopexit.i37, label %.lr.ph.i41.2

.lr.ph.i41.2:                                     ; preds = %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !2749, !noundef !5
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -48                  ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.aa, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread

bb.aa:                                            ; preds = %.lr.ph.i41.2
  %i.du = mul nuw i16 %i.do, 10
  %i.dv = trunc nuw nsw i32 %i.ds to i16
  %i.dw = add nuw nsw i16 %i.du, %i.dv            ; 2 uses
  %.not54.i45.2 = icmp eq i64 %.sroa.15.0.i28, 3
  br i1 %.not54.i45.2, label %.loopexit.i37, label %.lr.ph.i41.3

.lr.ph.i41.3:                                     ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30, i64 3
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !2749, !noundef !5
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add nsw i32 %i.dz, -48                  ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 10
  br i1 %i.eb, label %bb.ab, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread

bb.ab:                                            ; preds = %.lr.ph.i41.3
  %i.ec = mul i16 %i.dw, 10
  %i.ed = trunc nuw nsw i32 %i.ea to i16
  %i.ee = add i16 %i.ec, %i.ed
  br label %.loopexit.i37

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48: ; preds = %.loopexit.i37, %bb.w
  %.sroa.8.0.insert.insert.i26 = phi i32 [ %spec.select.i36, %bb.w ], [ %i.cn, %.loopexit.i37 ] ; 3 uses
  %i.ef = trunc i32 %.sroa.8.0.insert.insert.i26 to i1
  br i1 %i.ef, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit, !prof !30

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread: ; preds = %bb.x, %bb.v, %.lr.ph.i41, %.lr.ph.i41.1, %.lr.ph.i41.2, %.lr.ph.i41.3, %bb.s, %bb.t, %bb.t, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48
  %.sroa.8.0.insert.insert.i2653 = phi i32 [ %.sroa.8.0.insert.insert.i26, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48 ], [ 257, %bb.t ], [ 257, %.lr.ph.i41 ], [ 257, %bb.t ], [ 1, %bb.s ], [ 257, %.lr.ph.i41.3 ], [ 257, %.lr.ph.i41.2 ], [ 257, %.lr.ph.i41.1 ], [ 257, %bb.v ], [ 513, %bb.x ]
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i2653, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2750
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.e, align 1, !noalias !2750
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #30
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i26, 16 ; 2 uses
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
  %.not = icmp samesign ult i32 %.sroa.5.0.extract.shift.i21, %.sroa.5.0.extract.shift.i
  br i1 %.not, label %.lr.ph, label %bb.ac

.lr.ph:                                           ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit
  %i.eg = load ptr, ptr %3, align 8, !alias.scope !2751, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1648
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !nonnull !5, !align !9 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !5, !align !9 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  br label %bb.ad

bb.ac:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 36, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.eq = load i64, ptr %i.f, align 8, !range !24, !noundef !5
  %i.er = trunc nuw i64 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.et = load i64, ptr %i.es, align 8, !range !29, !noundef !5 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.er, label %bb.ah, label %bb.ai, !prof !12

bb.ad:                                            ; preds = %.lr.ph, %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtB6_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_range0B1V_.exit
  %.sroa.0.072 = phi i16 [ %.sroa.5.0.extract.trunc.i22, %.lr.ph ], [ %i.ev, %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtB6_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_range0B1V_.exit ] ; 3 uses
  %i.ev = add i16 %.sroa.0.072, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %.sroa.0.072, ptr %i.c, align 2, !noalias !2751
  %i.ew = load ptr, ptr %i.eh, align 8, !noalias !2751, !nonnull !5, !align !9, !noundef !5
  %i.ex = call { i16, i16 } @_RINvMNtNtCscScJTt9VrQp_6fea_rs6common9glyph_mapNtB3_8GlyphMap3gettECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ew, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.c), !noalias !2751 ; 2 uses
  %i.ey = extractvalue { i16, i16 } %i.ex, 0
  %i.ez = trunc i16 %i.ey to i1
  br i1 %i.ez, label %bb.ae, label %.split.i

bb.ae:                                            ; preds = %bb.ad
  %i.fa = extractvalue { i16, i16 } %i.ex, 1
  %i.fb = load i64, ptr %i.eo, align 8, !alias.scope !2752, !noalias !2751, !noundef !5 ; 3 uses
  %i.fc = load i64, ptr %i.en, align 8, !range !11, !alias.scope !2752, !noalias !2751, !noundef !5
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.af, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i

bb.af:                                            ; preds = %bb.ae
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8grow_oneCs6WnK4nVnpEz_11write_fonts(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.en) #28, !noalias !2751
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.af, %bb.ae
  %i.fe = load ptr, ptr %i.ep, align 8, !alias.scope !2752, !noalias !2751, !nonnull !5, !noundef !5
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.fb
  store i16 %i.fa, ptr %i.ff, align 2, !noalias !2751
  %i.fg = add i64 %i.fb, 1
  store i64 %i.fg, ptr %i.eo, align 8, !alias.scope !2752, !noalias !2751
  br label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtB6_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_range0B1V_.exit

.split.i:                                         ; preds = %bb.ad
  %i.fh = load i32, ptr %i.ek, align 8, !noalias !2751, !noundef !5
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = load i32, ptr %i.el, align 4, !noalias !2751, !noundef !5
  %i.fk = zext i32 %i.fj to i64
  %i.fl = add nuw nsw i64 %i.fk, %i.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2751
  store ptr %i.c, ptr %i.a, align 8, !noalias !2751
  store ptr @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !2751
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @45, ptr noundef nonnull %i.a), !noalias !2751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2751
  call void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB3_14CompilationCtxNtNtB5_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE5errorNtNtCsgCecv3eZDcN_5alloc6string6StringEB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %i.eg, i64 noundef %i.fi, i64 noundef %i.fl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2751
  br label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtB6_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_range0B1V_.exit

_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtB6_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_range0B1V_.exit: ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond.not = icmp eq i16 %.sroa.0.072, %.sroa.5.0.extract.trunc.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtB6_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_range0B1V_.exit
  store i64 -1, ptr %0, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %._crit_edge
  ret void

bb.ah:                                            ; preds = %bb.ac
  %i.fm = load i64, ptr %i.eu, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.et, i64 %i.fm) #29
  unreachable

bb.ai:                                            ; preds = %bb.ac
  %i.fn = load ptr, ptr %i.eu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fo = icmp samesign ugt i64 %i.et, 35
  tail call void @llvm.assume(i1 %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.fn, ptr noundef nonnull align 1 dereferenceable(36) @24, i64 36, i1 false)
  store i64 %i.et, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fn, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 36, ptr %.sroa.515.0..sroa_idx, align 8
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscScJTt9VrQp_6fea_rs7compile11glyph_range3cidNCNvMNtB4_11compile_ctxINtBV_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1B_16FeaVariationInfoE21add_glyphs_from_range0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [2 x i8], align 2                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = load i8, ptr %1, align 8, !range !8, !noundef !5 ; 2 uses
  %i.h = icmp samesign ugt i8 %i.g, 23
  %i.i = zext nneg i8 %i.g to i64                 ; 2 uses
  %i.j = add nsw i64 %i.i, -23
  %i.k = select i1 %i.h, i64 %i.j, i64 0
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.4.0 = phi i64 [ %i.i, %bb.c ], [ %i.p, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.02.0 = phi ptr [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.u, %bb.e ] ; 3 uses
  switch i64 %.sroa.4.0, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %.sroa.02.0, align 1, !alias.scope !2765, !noundef !5 ; 2 uses
  switch i8 %i.v, label %bb.h [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.f
  %.pr.i = load i8, ptr %.sroa.02.0, align 1, !alias.scope !2765
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.w = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.v, %bb.g ]
  %cond.i = icmp eq i8 %i.w, 43                   ; 2 uses
  %i.x = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.0, %i.x    ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.y = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.y, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.h
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.k
  %.not53.i = icmp eq i64 %i.ac, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.l, %bb.m, %bb.n, %bb.o, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.br, %bb.o ], [ 0, %.preheader.i ], [ %i.at, %bb.l ], [ %i.bb, %bb.m ], [ %i.bj, %bb.n ], [ %i.an, %.preheader58.i ]
  %i.z = zext i16 %.sroa.043.1.i to i32
  %i.aa = shl nuw i32 %i.z, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader58.i.preheader:                         ; preds = %bb.h, %.preheader58.i
  %.sroa.0.1.i122 = phi ptr [ %i.ab, %.preheader58.i ], [ %.sroa.0.0.i, %bb.h ] ; 2 uses
  %.sroa.15.1.i121 = phi i64 [ %i.ac, %.preheader58.i ], [ %.sroa.15.0.i, %bb.h ]
  %.sroa.043.0.i120 = phi i16 [ %i.an, %.preheader58.i ], [ 0, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i122, i64 1
  %i.ac = add nsw i64 %.sroa.15.1.i121, -1        ; 2 uses
  %i.ad = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i120, i16 10) ; 2 uses
  %i.ae = extractvalue { i16, i1 } %i.ad, 0       ; 2 uses
  %i.af = extractvalue { i16, i1 } %i.ad, 1
  %i.ag = load i8, ptr %.sroa.0.1.i122, align 1, !alias.scope !2765, !noundef !5 ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.i, !prof !12

bb.i:                                             ; preds = %.preheader58.i.preheader
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -48                  ; 2 uses
  %i.aj = icmp ult i32 %i.ai, 10
  br i1 %i.aj, label %bb.k, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.j:                                             ; preds = %.preheader58.i.preheader
  %i.ak = add i8 %i.ag, -48
  %i.al = icmp ult i8 %i.ak, 10
  %spec.select.i = select i1 %i.al, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.k:                                             ; preds = %bb.i
  %i.am = trunc nuw nsw i32 %i.ai to i16
  %i.an = add i16 %i.ae, %i.am                    ; 3 uses
  %i.ao = icmp ult i16 %i.an, %i.ae
  br i1 %i.ao, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %.preheader58.i, !prof !12

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ap = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !2765, !noundef !5
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.l, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.l:                                             ; preds = %.lr.ph.i
  %i.at = trunc nuw nsw i32 %i.ar to i16          ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !2765, !noundef !5
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -48                  ; 2 uses
  %i.ay = icmp ult i32 %i.ax, 10
  br i1 %i.ay, label %bb.m, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.az = mul nuw nsw i16 %i.at, 10
  %i.ba = trunc nuw nsw i32 %i.ax to i16
  %i.bb = add nuw nsw i16 %i.az, %i.ba            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !2765, !noundef !5
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -48                  ; 2 uses
  %i.bg = icmp ult i32 %i.bf, 10
  br i1 %i.bg, label %bb.n, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.2
  %i.bh = mul nuw i16 %i.bb, 10
  %i.bi = trunc nuw nsw i32 %i.bf to i16
  %i.bj = add nuw nsw i16 %i.bh, %i.bi            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !2765, !noundef !5
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -48                  ; 2 uses
  %i.bo = icmp ult i32 %i.bn, 10
  br i1 %i.bo, label %bb.o, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.o:                                             ; preds = %.lr.ph.i.3
  %i.bp = mul i16 %i.bj, 10
  %i.bq = trunc nuw nsw i32 %i.bn to i16
  %i.br = add i16 %i.bp, %i.bq
  br label %.loopexit.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %bb.j
  %.sroa.8.0.insert.insert.i = phi i32 [ %spec.select.i, %bb.j ], [ %i.aa, %.loopexit.i ] ; 3 uses
  %i.bs = trunc i32 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.bs, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25, !prof !30

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.k, %bb.i, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.f, %bb.g, %bb.g, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.8.0.insert.insert.i51 = phi i32 [ %.sroa.8.0.insert.insert.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 257, %bb.g ], [ 257, %.lr.ph.i ], [ 257, %bb.g ], [ 1, %bb.f ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.i ], [ 513, %bb.k ]
  %.sroa.4.0.extract.shift.i23 = lshr i32 %.sroa.8.0.insert.insert.i51, 8
  %.sroa.4.0.extract.trunc.i24 = trunc i32 %.sroa.4.0.extract.shift.i23 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2766
  store i8 %.sroa.4.0.extract.trunc.i24, ptr %i.d, align 1, !noalias !2766
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #30
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.5.0.extract.shift.i21 = lshr i32 %.sroa.8.0.insert.insert.i, 16 ; 2 uses
  %.sroa.5.0.extract.trunc.i22 = trunc nuw i32 %.sroa.5.0.extract.shift.i21 to i16
  %i.bt = load i8, ptr %2, align 8, !range !8, !noundef !5 ; 2 uses
  %i.bu = icmp samesign ugt i8 %i.bt, 23
  %i.bv = zext nneg i8 %i.bt to i64               ; 2 uses
  %i.bw = add nsw i64 %i.bv, -23
  %i.bx = select i1 %i.bu, i64 %i.bw, i64 0
  switch i64 %i.bx, label %bb.b [
    i64 0, label %bb.p
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

bb.p:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.s

bb.q:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !5
  br label %bb.s

bb.r:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !5, !noundef !5
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !5
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.46.0 = phi i64 [ %i.bv, %bb.p ], [ %i.cc, %bb.q ], [ %i.cg, %bb.r ] ; 2 uses
  %.sroa.05.0 = phi ptr [ %i.by, %bb.p ], [ %i.ca, %bb.q ], [ %i.ch, %bb.r ] ; 3 uses
  switch i64 %.sroa.46.0, label %thread-pre-split.i46 [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.ci = load i8, ptr %.sroa.05.0, align 1, !alias.scope !2767, !noundef !5 ; 2 uses
  switch i8 %i.ci, label %bb.u [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread
  ]

thread-pre-split.i46:                             ; preds = %bb.s
  %.pr.i47 = load i8, ptr %.sroa.05.0, align 1, !alias.scope !2767
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i46, %bb.t
  %i.cj = phi i8 [ %.pr.i47, %thread-pre-split.i46 ], [ %i.ci, %bb.t ]
  %cond.i27 = icmp eq i8 %i.cj, 43                ; 2 uses
  %i.ck = sext i1 %cond.i27 to i64
  %.sroa.15.0.i28 = add nsw i64 %.sroa.46.0, %i.ck ; 6 uses
  %.sroa.0.0.idx.i29 = zext i1 %cond.i27 to i64
  %.sroa.0.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 %.sroa.0.0.idx.i29 ; 5 uses
  %i.cl = icmp samesign ult i64 %.sroa.15.0.i28, 5
  br i1 %i.cl, label %.preheader.i39, label %.preheader58.i31.preheader

.preheader.i39:                                   ; preds = %bb.u
  %.not5466.i40 = icmp eq i64 %.sroa.15.0.i28, 0
  br i1 %.not5466.i40, label %.loopexit.i37, label %.lr.ph.i41

.preheader58.i31:                                 ; preds = %bb.x
  %.not53.i35 = icmp eq i64 %i.cp, 0
  br i1 %.not53.i35, label %.loopexit.i37, label %.preheader58.i31.preheader

.loopexit.i37:                                    ; preds = %.preheader58.i31, %bb.y, %bb.z, %bb.aa, %bb.ab, %.preheader.i39
  %.sroa.043.1.i38 = phi i16 [ %i.ee, %bb.ab ], [ 0, %.preheader.i39 ], [ %i.dg, %bb.y ], [ %i.do, %bb.z ], [ %i.dw, %bb.aa ], [ %i.da, %.preheader58.i31 ]
  %.sroa.043.1.i38.fr = freeze i16 %.sroa.043.1.i38
  %i.cm = zext i16 %.sroa.043.1.i38.fr to i32
  %i.cn = shl nuw i32 %i.cm, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48

.preheader58.i31.preheader:                       ; preds = %bb.u, %.preheader58.i31
  %.sroa.0.1.i34125 = phi ptr [ %i.co, %.preheader58.i31 ], [ %.sroa.0.0.i30, %bb.u ] ; 2 uses
  %.sroa.15.1.i33124 = phi i64 [ %i.cp, %.preheader58.i31 ], [ %.sroa.15.0.i28, %bb.u ]
  %.sroa.043.0.i32123 = phi i16 [ %i.da, %.preheader58.i31 ], [ 0, %bb.u ]
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i34125, i64 1
  %i.cp = add nsw i64 %.sroa.15.1.i33124, -1      ; 2 uses
  %i.cq = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i32123, i16 10) ; 2 uses
  %i.cr = extractvalue { i16, i1 } %i.cq, 0       ; 2 uses
  %i.cs = extractvalue { i16, i1 } %i.cq, 1
  %i.ct = load i8, ptr %.sroa.0.1.i34125, align 1, !alias.scope !2767, !noundef !5 ; 2 uses
  br i1 %i.cs, label %bb.w, label %bb.v, !prof !12

bb.v:                                             ; preds = %.preheader58.i31.preheader
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nsw i32 %i.cu, -48                  ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 10
  br i1 %i.cw, label %bb.x, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread

bb.w:                                             ; preds = %.preheader58.i31.preheader
  %i.cx = add i8 %i.ct, -48
  %i.cy = icmp ult i8 %i.cx, 10
  %spec.select.i36 = select i1 %i.cy, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48

bb.x:                                             ; preds = %bb.v
  %i.cz = trunc nuw nsw i32 %i.cv to i16
  %i.da = add i16 %i.cr, %i.cz                    ; 3 uses
  %i.db = icmp ult i16 %i.da, %i.cr
  br i1 %i.db, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread, label %.preheader58.i31, !prof !12

.lr.ph.i41:                                       ; preds = %.preheader.i39
  %i.dc = load i8, ptr %.sroa.0.0.i30, align 1, !alias.scope !2767, !noundef !5
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nsw i32 %i.dd, -48                  ; 2 uses
  %i.df = icmp ult i32 %i.de, 10
  br i1 %i.df, label %bb.y, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread

bb.y:                                             ; preds = %.lr.ph.i41
  %i.dg = trunc nuw nsw i32 %i.de to i16          ; 2 uses
  %.not54.i45 = icmp eq i64 %.sroa.15.0.i28, 1
  br i1 %.not54.i45, label %.loopexit.i37, label %.lr.ph.i41.1

.lr.ph.i41.1:                                     ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !2767, !noundef !5
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.z, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread

bb.z:                                             ; preds = %.lr.ph.i41.1
  %i.dm = mul nuw nsw i16 %i.dg, 10
  %i.dn = trunc nuw nsw i32 %i.dk to i16
  %i.do = add nuw nsw i16 %i.dm, %i.dn            ; 2 uses
  %.not54.i45.1 = icmp eq i64 %.sroa.15.0.i28, 2
  br i1 %.not54.i45.1, label %.loopexit.i37, label %.lr.ph.i41.2

.lr.ph.i41.2:                                     ; preds = %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !2767, !noundef !5
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -48                  ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.aa, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread

bb.aa:                                            ; preds = %.lr.ph.i41.2
  %i.du = mul nuw i16 %i.do, 10
  %i.dv = trunc nuw nsw i32 %i.ds to i16
  %i.dw = add nuw nsw i16 %i.du, %i.dv            ; 2 uses
  %.not54.i45.2 = icmp eq i64 %.sroa.15.0.i28, 3
  br i1 %.not54.i45.2, label %.loopexit.i37, label %.lr.ph.i41.3

.lr.ph.i41.3:                                     ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30, i64 3
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !2767, !noundef !5
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add nsw i32 %i.dz, -48                  ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 10
  br i1 %i.eb, label %bb.ab, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread

bb.ab:                                            ; preds = %.lr.ph.i41.3
  %i.ec = mul i16 %i.dw, 10
  %i.ed = trunc nuw nsw i32 %i.ea to i16
  %i.ee = add i16 %i.ec, %i.ed
  br label %.loopexit.i37

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48: ; preds = %.loopexit.i37, %bb.w
  %.sroa.8.0.insert.insert.i26 = phi i32 [ %spec.select.i36, %bb.w ], [ %i.cn, %.loopexit.i37 ] ; 3 uses
  %i.ef = trunc i32 %.sroa.8.0.insert.insert.i26 to i1
  br i1 %i.ef, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit, !prof !30

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48.thread: ; preds = %bb.x, %bb.v, %.lr.ph.i41, %.lr.ph.i41.1, %.lr.ph.i41.2, %.lr.ph.i41.3, %bb.s, %bb.t, %bb.t, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48
  %.sroa.8.0.insert.insert.i2653 = phi i32 [ %.sroa.8.0.insert.insert.i26, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48 ], [ 257, %bb.t ], [ 257, %.lr.ph.i41 ], [ 257, %bb.t ], [ 1, %bb.s ], [ 257, %.lr.ph.i41.3 ], [ 257, %.lr.ph.i41.2 ], [ 257, %.lr.ph.i41.1 ], [ 257, %bb.v ], [ 513, %bb.x ]
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i2653, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2768
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.e, align 1, !noalias !2768
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #30
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit48
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i26, 16 ; 2 uses
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
  %.not = icmp samesign ult i32 %.sroa.5.0.extract.shift.i21, %.sroa.5.0.extract.shift.i
  br i1 %.not, label %.lr.ph, label %bb.ac

.lr.ph:                                           ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit
  %i.eg = load ptr, ptr %3, align 8, !alias.scope !2769, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1648
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !nonnull !5, !align !9 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !5, !align !9 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  br label %bb.ad

bb.ac:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 36, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.eq = load i64, ptr %i.f, align 8, !range !24, !noundef !5
  %i.er = trunc nuw i64 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.et = load i64, ptr %i.es, align 8, !range !29, !noundef !5 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.er, label %bb.ah, label %bb.ai, !prof !12

bb.ad:                                            ; preds = %.lr.ph, %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1c_16FeaVariationInfoE21add_glyphs_from_range0B1e_.exit
  %.sroa.0.072 = phi i16 [ %.sroa.5.0.extract.trunc.i22, %.lr.ph ], [ %i.ev, %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1c_16FeaVariationInfoE21add_glyphs_from_range0B1e_.exit ] ; 3 uses
  %i.ev = add i16 %.sroa.0.072, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %.sroa.0.072, ptr %i.c, align 2, !noalias !2769
  %i.ew = load ptr, ptr %i.eh, align 8, !noalias !2769, !nonnull !5, !align !9, !noundef !5
  %i.ex = call { i16, i16 } @_RINvMNtNtCscScJTt9VrQp_6fea_rs6common9glyph_mapNtB3_8GlyphMap3gettECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ew, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.c), !noalias !2769 ; 2 uses
  %i.ey = extractvalue { i16, i16 } %i.ex, 0
  %i.ez = trunc i16 %i.ey to i1
  br i1 %i.ez, label %bb.ae, label %.split.i

bb.ae:                                            ; preds = %bb.ad
  %i.fa = extractvalue { i16, i16 } %i.ex, 1
  %i.fb = load i64, ptr %i.eo, align 8, !alias.scope !2770, !noalias !2769, !noundef !5 ; 3 uses
  %i.fc = load i64, ptr %i.en, align 8, !range !11, !alias.scope !2770, !noalias !2769, !noundef !5
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.af, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i

bb.af:                                            ; preds = %bb.ae
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8grow_oneCs6WnK4nVnpEz_11write_fonts(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.en) #28, !noalias !2769
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.af, %bb.ae
  %i.fe = load ptr, ptr %i.ep, align 8, !alias.scope !2770, !noalias !2769, !nonnull !5, !noundef !5
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.fb
  store i16 %i.fa, ptr %i.ff, align 2, !noalias !2769
  %i.fg = add i64 %i.fb, 1
  store i64 %i.fg, ptr %i.eo, align 8, !alias.scope !2770, !noalias !2769
  br label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1c_16FeaVariationInfoE21add_glyphs_from_range0B1e_.exit

.split.i:                                         ; preds = %bb.ad
  %i.fh = load i32, ptr %i.ek, align 8, !noalias !2769, !noundef !5
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = load i32, ptr %i.el, align 4, !noalias !2769, !noundef !5
  %i.fk = zext i32 %i.fj to i64
  %i.fl = add nuw nsw i64 %i.fk, %i.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2769
  store ptr %i.c, ptr %i.a, align 8, !noalias !2769
  store ptr @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !2769
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @45, ptr noundef nonnull %i.a), !noalias !2769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2769
  call void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB3_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1b_16FeaVariationInfoE5errorNtNtCsgCecv3eZDcN_5alloc6string6StringEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2152) %i.eg, i64 noundef %i.fi, i64 noundef %i.fl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2769
  br label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1c_16FeaVariationInfoE21add_glyphs_from_range0B1e_.exit

_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1c_16FeaVariationInfoE21add_glyphs_from_range0B1e_.exit: ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E8push_mutCshxhuDJfZv4T_6fontbe.exit.i, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond.not = icmp eq i16 %.sroa.0.072, %.sroa.5.0.extract.trunc.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile11compile_ctxINtB4_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1c_16FeaVariationInfoE21add_glyphs_from_range0B1e_.exit
  store i64 -1, ptr %0, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %._crit_edge
  ret void

bb.ah:                                            ; preds = %bb.ac
  %i.fm = load i64, ptr %i.eu, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.et, i64 %i.fm) #29
  unreachable

bb.ai:                                            ; preds = %bb.ac
  %i.fn = load ptr, ptr %i.eu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fo = icmp samesign ugt i64 %i.et, 35
  tail call void @llvm.assume(i1 %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.fn, ptr noundef nonnull align 1 dereferenceable(36) @24, i64 36, i1 false)
  store i64 %i.et, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fn, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 36, ptr %.sroa.515.0..sroa_idx, align 8
  br label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscScJTt9VrQp_6fea_rs7compile11glyph_range5namedNCNvMNtB4_11compile_ctxINtBX_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_ranges_0EB2m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [2 x i8], align 2                 ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = load i8, ptr %1, align 8, !range !8, !noundef !5 ; 2 uses
  %i.n = icmp samesign ugt i8 %i.m, 23
  %i.o = zext nneg i8 %i.m to i64                 ; 7 uses
  %i.p = add nsw i64 %i.o, -23
  %i.q = select i1 %i.n, i64 %i.p, i64 0          ; 6 uses
  switch i64 %i.q, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.da, %bb.br, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread, %bb.ak, %bb.y, %bb.t, %bb.s, %bb.n, %bb.i, %bb.e, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.0.0 = phi i64 [ %i.u, %bb.d ], [ %i.s, %bb.c ], [ %i.o, %bb.a ]
  %i.v = load i8, ptr %2, align 8, !range !8, !noundef !5 ; 2 uses
  %i.w = icmp samesign ugt i8 %i.v, 23
  %i.x = zext nneg i8 %i.v to i64                 ; 6 uses
  %i.y = add nsw i64 %i.x, -23
  %i.z = select i1 %i.w, i64 %i.y, i64 0          ; 5 uses
  switch i64 %i.z, label %bb.b [
    i64 0, label %bb.h
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_0
begin_hunk_1_@_RINvNtNtCscScJTt9VrQp_6fea_rs7compile11glyph_range5namedNCNvMNtB4_11compile_ctxINtBX_14CompilationCtxNtNtB4_14feature_writer18NopFeatureProviderNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE21add_glyphs_from_ranges_0EB2m_:bb.a
  %or.cond.i90 = or i1 %i.df, %i.dg
  br i1 %or.cond.i90, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread128, label %bb.ap, !prof !31

bb.ap:                                            ; preds = %bb.ao
  %i.dh = icmp eq i64 %i.be, %.sroa.6.0
  br i1 %i.dh, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.di = icmp eq i64 %i.be, 0
  br i1 %i.di, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %i.dj = icmp eq i64 %i.bf, %.sroa.6.0
  br i1 %i.dj, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92

bb.as:                                            ; preds = %bb.aq
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.be
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !2787, !noundef !5
  %i.dm = icmp sgt i8 %i.dl, -65
  br i1 %i.dm, label %bb.ar, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread128, !prof !32

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92: ; preds = %bb.ar
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.bf
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !2787, !noundef !5
  %i.dp = icmp sgt i8 %i.do, -65
  br i1 %i.dp, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread128, !prof !33

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread128: ; preds = %bb.as, %bb.ao, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.016.0, i64 noundef %.sroa.6.0, i64 noundef %i.be, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #30
  unreachable

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread: ; preds = %bb.ar, %bb.ap, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.be ; 3 uses
  switch i64 %i.z, label %bb.b [
    i64 0, label %bb.at
    i64 1, label %bb.au
    i64 2, label %bb.av
  ]

bb.at:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.aw

bb.au:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !5, !noundef !5
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !noundef !5
  br label %bb.aw

bb.av:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !5, !noundef !5
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !5
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.sroa.624.0 = phi i64 [ %i.x, %bb.at ], [ %i.dv, %bb.au ], [ %i.dz, %bb.av ] ; 4 uses
  %.sroa.021.0 = phi ptr [ %i.dr, %bb.at ], [ %i.dt, %bb.au ], [ %i.ea, %bb.av ] ; 4 uses
  %i.eb = icmp ugt i64 %i.bf, %.sroa.624.0
  br i1 %i.eb, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread132, label %bb.ax, !prof !31

bb.ax:                                            ; preds = %bb.aw
  %i.ec = icmp eq i64 %i.be, %.sroa.624.0
  br i1 %i.ec, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ed = icmp eq i64 %i.be, 0
  br i1 %i.ed, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.ee = icmp eq i64 %i.bf, %.sroa.624.0
  br i1 %i.ee, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit

bb.ba:                                            ; preds = %bb.ay
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.021.0, i64 %i.be
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !2788, !noundef !5
  %i.eh = icmp sgt i8 %i.eg, -65
  br i1 %i.eh, label %bb.az, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread132, !prof !32

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit: ; preds = %bb.az
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.021.0, i64 %i.bf
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !2788, !noundef !5
  %i.ek = icmp sgt i8 %i.ej, -65
  br i1 %i.ek, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread132, !prof !33

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread132: ; preds = %bb.ba, %bb.aw, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.021.0, i64 noundef %.sroa.624.0, i64 noundef %i.be, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #30
  unreachable

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread: ; preds = %bb.az, %bb.ax, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.021.0, i64 %i.be ; 3 uses
  switch i64 %i.bh, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread
    i64 1, label %bb.bb
  ]

bb.bb:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread
  %i.em = load i8, ptr %i.dq, align 1, !alias.scope !2789, !noundef !5 ; 2 uses
  switch i8 %i.em, label %bb.bc [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140
  ]

thread-pre-split.i:                               ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread
  %.pr.i = load i8, ptr %i.dq, align 1, !alias.scope !2789
  br label %bb.bc

bb.bc:                                            ; preds = %thread-pre-split.i, %bb.bb
  %i.en = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.em, %bb.bb ]
  %cond.i = icmp eq i8 %i.en, 43                  ; 2 uses
  %i.eo = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.bh, %i.eo        ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i96 = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.ep = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.ep, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.bc
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.bf
  %.not53.i = icmp eq i64 %i.et, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.gi, %bb.bj ], [ 0, %.preheader.i ], [ %i.fk, %bb.bg ], [ %i.fs, %bb.bh ], [ %i.ga, %bb.bi ], [ %i.fe, %.preheader58.i ]
  %i.eq = zext i16 %.sroa.043.1.i to i32
  %i.er = shl nuw i32 %i.eq, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader58.i.preheader:                         ; preds = %bb.bc, %.preheader58.i
  %.sroa.0.1.i229 = phi ptr [ %i.es, %.preheader58.i ], [ %.sroa.0.0.i96, %bb.bc ] ; 2 uses
  %.sroa.15.1.i228 = phi i64 [ %i.et, %.preheader58.i ], [ %.sroa.15.0.i, %bb.bc ]
  %.sroa.043.0.i227 = phi i16 [ %i.fe, %.preheader58.i ], [ 0, %bb.bc ]
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i229, i64 1
  %i.et = add nsw i64 %.sroa.15.1.i228, -1        ; 2 uses
  %i.eu = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i227, i16 10) ; 2 uses
  %i.ev = extractvalue { i16, i1 } %i.eu, 0       ; 2 uses
  %i.ew = extractvalue { i16, i1 } %i.eu, 1
  %i.ex = load i8, ptr %.sroa.0.1.i229, align 1, !alias.scope !2789, !noundef !5 ; 2 uses
  br i1 %i.ew, label %bb.be, label %bb.bd, !prof !12

bb.bd:                                            ; preds = %.preheader58.i.preheader
  %i.ey = zext i8 %i.ex to i32
  %i.ez = add nsw i32 %i.ey, -48                  ; 2 uses
  %i.fa = icmp ult i32 %i.ez, 10
  br i1 %i.fa, label %bb.bf, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.be:                                            ; preds = %.preheader58.i.preheader
  %i.fb = add i8 %i.ex, -48
  %i.fc = icmp ult i8 %i.fb, 10
  %spec.select.i = select i1 %i.fc, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.bf:                                            ; preds = %bb.bd
  %i.fd = trunc nuw nsw i32 %i.ez to i16
  %i.fe = add i16 %i.ev, %i.fd                    ; 3 uses
  %i.ff = icmp ult i16 %i.fe, %i.ev
  br i1 %i.ff, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit, label %.preheader58.i, !prof !12

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.fg = load i8, ptr %.sroa.0.0.i96, align 1, !alias.scope !2789, !noundef !5
  %i.fh = zext i8 %i.fg to i32
  %i.fi = add nsw i32 %i.fh, -48                  ; 2 uses
  %i.fj = icmp ult i32 %i.fi, 10
  br i1 %i.fj, label %bb.bg, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.bg:                                            ; preds = %.lr.ph.i
  %i.fk = trunc nuw nsw i32 %i.fi to i16          ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.bg
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i96, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !2789, !noundef !5
  %i.fn = zext i8 %i.fm to i32
  %i.fo = add nsw i32 %i.fn, -48                  ; 2 uses
  %i.fp = icmp ult i32 %i.fo, 10
  br i1 %i.fp, label %bb.bh, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.bh:                                            ; preds = %.lr.ph.i.1
  %i.fq = mul nuw nsw i16 %i.fk, 10
  %i.fr = trunc nuw nsw i32 %i.fo to i16
  %i.fs = add nuw nsw i16 %i.fq, %i.fr            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.bh
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i96, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !2789, !noundef !5
  %i.fv = zext i8 %i.fu to i32
  %i.fw = add nsw i32 %i.fv, -48                  ; 2 uses
  %i.fx = icmp ult i32 %i.fw, 10
  br i1 %i.fx, label %bb.bi, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.bi:                                            ; preds = %.lr.ph.i.2
  %i.fy = mul nuw i16 %i.fs, 10
  %i.fz = trunc nuw nsw i32 %i.fw to i16
  %i.ga = add nuw nsw i16 %i.fy, %i.fz            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.bi
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i96, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !2789, !noundef !5
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add nsw i32 %i.gd, -48                  ; 2 uses
  %i.gf = icmp ult i32 %i.ge, 10
  br i1 %i.gf, label %bb.bj, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.bj:                                            ; preds = %.lr.ph.i.3
  %i.gg = mul i16 %i.ga, 10
  %i.gh = trunc nuw nsw i32 %i.ge to i16
  %i.gi = add i16 %i.gg, %i.gh
  br label %.loopexit.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %bb.bd, %bb.bf, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.loopexit.i, %bb.be
  %.sroa.8.0.insert.insert.i = phi i32 [ 257, %.lr.ph.i ], [ %i.er, %.loopexit.i ], [ %spec.select.i, %bb.be ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 513, %bb.bf ], [ 257, %bb.bd ] ; 3 uses
  %.sroa.576.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i, 16 ; 3 uses
  %.sroa.576.0.extract.trunc = trunc nuw i32 %.sroa.576.0.extract.shift to i16 ; 2 uses
  switch i64 %i.bh, label %thread-pre-split.i117 [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread
    i64 1, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140
  ]

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140: ; preds = %bb.bb, %bb.bb, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.576.0.extract.trunc149 = phi i16 [ %.sroa.576.0.extract.trunc, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 0, %bb.bb ], [ 0, %bb.bb ]
  %.sroa.576.0.extract.shift147 = phi i32 [ %.sroa.576.0.extract.shift, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 0, %bb.bb ], [ 0, %bb.bb ]
  %.sroa.8.0.insert.insert.i145 = phi i32 [ %.sroa.8.0.insert.insert.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 257, %bb.bb ], [ 257, %bb.bb ]
  %i.gj = load i8, ptr %i.el, align 1, !alias.scope !2790, !noundef !5 ; 2 uses
  switch i8 %i.gj, label %bb.bk [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread
  ]

thread-pre-split.i117:                            ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.pr.i118 = load i8, ptr %i.el, align 1, !alias.scope !2790
  br label %bb.bk

bb.bk:                                            ; preds = %thread-pre-split.i117, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140
  %.sroa.576.0.extract.trunc148 = phi i16 [ %.sroa.576.0.extract.trunc, %thread-pre-split.i117 ], [ %.sroa.576.0.extract.trunc149, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140 ] ; 3 uses
  %.sroa.576.0.extract.shift146 = phi i32 [ %.sroa.576.0.extract.shift, %thread-pre-split.i117 ], [ %.sroa.576.0.extract.shift147, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140 ]
  %.sroa.8.0.insert.insert.i144 = phi i32 [ %.sroa.8.0.insert.insert.i, %thread-pre-split.i117 ], [ %.sroa.8.0.insert.insert.i145, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140 ]
  %i.gk = phi i8 [ %.pr.i118, %thread-pre-split.i117 ], [ %i.gj, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140 ]
  %cond.i98 = icmp eq i8 %i.gk, 43                ; 2 uses
  %i.gl = sext i1 %cond.i98 to i64
  %.sroa.15.0.i99 = add nsw i64 %i.bh, %i.gl      ; 6 uses
  %.sroa.0.0.idx.i100 = zext i1 %cond.i98 to i64
  %.sroa.0.0.i101 = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.0.0.idx.i100 ; 5 uses
  %i.gm = icmp samesign ult i64 %.sroa.15.0.i99, 5
  br i1 %i.gm, label %.preheader.i110, label %.preheader58.i102.preheader

.preheader.i110:                                  ; preds = %bb.bk
  %.not5466.i111 = icmp eq i64 %.sroa.15.0.i99, 0
  br i1 %.not5466.i111, label %.loopexit.i108, label %.lr.ph.i112

.preheader58.i102:                                ; preds = %bb.bl
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i105232, i64 1
  %i.go = add nsw i64 %.sroa.15.1.i104231, -1     ; 2 uses
  %.not53.i106 = icmp eq i64 %i.go, 0
  br i1 %.not53.i106, label %.loopexit.i108, label %.preheader58.i102.preheader

.loopexit.i108:                                   ; preds = %.preheader58.i102, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %.preheader.i110
  %.sroa.043.1.i109 = phi i16 [ %i.ig, %bb.bq ], [ 0, %.preheader.i110 ], [ %i.hi, %bb.bn ], [ %i.hq, %bb.bo ], [ %i.hy, %bb.bp ], [ %i.gz, %.preheader58.i102 ]
  %i.gp = zext i16 %.sroa.043.1.i109 to i32
  %i.gq = shl nuw i32 %i.gp, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119

.preheader58.i102.preheader:                      ; preds = %bb.bk, %.preheader58.i102
  %.sroa.0.1.i105232 = phi ptr [ %i.gn, %.preheader58.i102 ], [ %.sroa.0.0.i101, %bb.bk ] ; 3 uses
  %.sroa.15.1.i104231 = phi i64 [ %i.go, %.preheader58.i102 ], [ %.sroa.15.0.i99, %bb.bk ]
  %.sroa.043.0.i103230 = phi i16 [ %i.gz, %.preheader58.i102 ], [ 0, %bb.bk ]
  %i.gr = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i103230, i16 10) ; 2 uses
  %i.gs = extractvalue { i16, i1 } %i.gr, 1
  br i1 %i.gs, label %bb.bm, label %bb.bl, !prof !12

bb.bl:                                            ; preds = %.preheader58.i102.preheader
  %i.gt = extractvalue { i16, i1 } %i.gr, 0       ; 2 uses
  %i.gu = load i8, ptr %.sroa.0.1.i105232, align 1, !alias.scope !2790, !noundef !5
  %i.gv = zext i8 %i.gu to i32
  %i.gw = add nsw i32 %i.gv, -48                  ; 2 uses
  %i.gx = icmp ugt i32 %i.gw, 9
  %i.gy = trunc nuw nsw i32 %i.gw to i16
  %i.gz = add i16 %i.gt, %i.gy                    ; 3 uses
  %i.ha = icmp ult i16 %i.gz, %i.gt
  %or.cond161 = select i1 %i.gx, i1 true, i1 %i.ha, !prof !34
  br i1 %or.cond161, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread, label %.preheader58.i102, !prof !34

bb.bm:                                            ; preds = %.preheader58.i102.preheader
  %i.hb = load i8, ptr %.sroa.0.1.i105232, align 1, !alias.scope !2790, !noundef !5
  %i.hc = add i8 %i.hb, -48
  %i.hd = icmp ult i8 %i.hc, 10
  %spec.select.i107 = select i1 %i.hd, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119

.lr.ph.i112:                                      ; preds = %.preheader.i110
  %i.he = load i8, ptr %.sroa.0.0.i101, align 1, !alias.scope !2790, !noundef !5
  %i.hf = zext i8 %i.he to i32
  %i.hg = add nsw i32 %i.hf, -48                  ; 2 uses
  %i.hh = icmp ult i32 %i.hg, 10
  br i1 %i.hh, label %bb.bn, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread

bb.bn:                                            ; preds = %.lr.ph.i112
  %i.hi = trunc nuw nsw i32 %i.hg to i16          ; 2 uses
  %.not54.i116 = icmp eq i64 %.sroa.15.0.i99, 1
  br i1 %.not54.i116, label %.loopexit.i108, label %.lr.ph.i112.1

.lr.ph.i112.1:                                    ; preds = %bb.bn
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i101, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !2790, !noundef !5
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -48                  ; 2 uses
  %i.hn = icmp ult i32 %i.hm, 10
  br i1 %i.hn, label %bb.bo, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread

bb.bo:                                            ; preds = %.lr.ph.i112.1
  %i.ho = mul nuw nsw i16 %i.hi, 10
  %i.hp = trunc nuw nsw i32 %i.hm to i16
  %i.hq = add nuw nsw i16 %i.ho, %i.hp            ; 2 uses
  %.not54.i116.1 = icmp eq i64 %.sroa.15.0.i99, 2
  br i1 %.not54.i116.1, label %.loopexit.i108, label %.lr.ph.i112.2

.lr.ph.i112.2:                                    ; preds = %bb.bo
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i101, i64 2
  %i.hs = load i8, ptr %i.hr, align 1, !alias.scope !2790, !noundef !5
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nsw i32 %i.ht, -48                  ; 2 uses
  %i.hv = icmp ult i32 %i.hu, 10
  br i1 %i.hv, label %bb.bp, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread

bb.bp:                                            ; preds = %.lr.ph.i112.2
  %i.hw = mul nuw i16 %i.hq, 10
  %i.hx = trunc nuw nsw i32 %i.hu to i16
  %i.hy = add nuw nsw i16 %i.hw, %i.hx            ; 2 uses
  %.not54.i116.2 = icmp eq i64 %.sroa.15.0.i99, 3
  br i1 %.not54.i116.2, label %.loopexit.i108, label %.lr.ph.i112.3

.lr.ph.i112.3:                                    ; preds = %bb.bp
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i101, i64 3
  %i.ia = load i8, ptr %i.hz, align 1, !alias.scope !2790, !noundef !5
  %i.ib = zext i8 %i.ia to i32
  %i.ic = add nsw i32 %i.ib, -48                  ; 2 uses
  %i.id = icmp ult i32 %i.ic, 10
  br i1 %i.id, label %bb.bq, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread

bb.bq:                                            ; preds = %.lr.ph.i112.3
  %i.ie = mul i16 %i.hy, 10
  %i.if = trunc nuw nsw i32 %i.ic to i16
  %i.ig = add i16 %i.ie, %i.if
  br label %.loopexit.i108

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119: ; preds = %.loopexit.i108, %bb.bm
  %.sroa.8.0.insert.insert.i97 = phi i32 [ %spec.select.i107, %bb.bm ], [ %i.gq, %.loopexit.i108 ] ; 2 uses
  %.sroa.579.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i97, 16 ; 2 uses
  %.sroa.579.0.extract.trunc = trunc nuw i32 %.sroa.579.0.extract.shift to i16 ; 2 uses
  %i.ih = trunc i32 %.sroa.8.0.insert.insert.i144 to i1
  %i.ii = trunc i32 %.sroa.8.0.insert.insert.i97 to i1
  %or.cond86 = select i1 %i.ih, i1 true, i1 %i.ii
  %i.ij = icmp samesign uge i32 %.sroa.576.0.extract.shift146, %.sroa.579.0.extract.shift
  %or.cond87.not = select i1 %or.cond86, i1 true, i1 %i.ij
  br i1 %or.cond87.not, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread, label %bb.br

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread: ; preds = %bb.bl, %.lr.ph.i112, %.lr.ph.i112.1, %.lr.ph.i112.2, %.lr.ph.i112.3, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 97, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ik = load i64, ptr %i.j, align 8, !range !24, !noundef !5
  %i.il = trunc nuw i64 %i.ik to i1
  %i.im = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.in = load i64, ptr %i.im, align 8, !range !29, !noundef !5 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.il, label %bb.cv, label %bb.cw, !prof !12

bb.br:                                            ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119
  switch i64 %i.q, label %bb.b [
    i64 0, label %bb.bs
    i64 1, label %bb.bt
    i64 2, label %bb.bu
  ]

bb.bs:                                            ; preds = %bb.br
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !nonnull !5, !noundef !5
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.it = load i64, ptr %i.is, align 8, !noundef !5
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !nonnull !5, !noundef !5
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !noundef !5
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %.sroa.433.0 = phi i64 [ %i.o, %bb.bs ], [ %i.it, %bb.bt ], [ %i.ix, %bb.bu ] ; 5 uses
  %.sroa.032.0 = phi ptr [ %i.ip, %bb.bs ], [ %i.ir, %bb.bt ], [ %i.iy, %bb.bu ]
  %.sroa.0124.0.copyload = load ptr, ptr %3, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx125, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2791
  store i64 0, ptr %i.i, align 8, !noalias !2791
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !2791
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2791
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.sroa.433.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bz unwind label %bb.by, !noalias !2791

.body50.i:                                        ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i43.i, %bb.by
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i43.i ], [ %i.jb, %bb.by ], [ %i.jw, %bb.ci ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i.i unwind label %bb.bw, !noalias !2791

bb.bw:                                            ; preds = %.body50.i
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.bx, !noalias !2791

bb.bx:                                            ; preds = %bb.bw
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !2791
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %.body50.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.ct, !noalias !2791

bb.by:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i49.i, %bb.ca, %bb.bv
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body50.i

bb.bz:                                            ; preds = %bb.bv
  %i.jc = load i64, ptr %i.e, align 8, !range !24, !noalias !2791, !noundef !5
  %i.jd = trunc nuw i64 %i.jc to i1
  %i.je = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !range !29, !noalias !2791, !noundef !5 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.jd, label %bb.ca, label %bb.cb, !prof !12

bb.ca:                                            ; preds = %bb.bz
  %i.jh = load i64, ptr %i.jg, align 8, !noalias !2791
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.jf, i64 %i.jh) #29
          to label %bb.ch unwind label %bb.by, !noalias !2791

bb.cb:                                            ; preds = %bb.bz
  %i.ji = load ptr, ptr %i.jg, align 8, !noalias !2791, !nonnull !5, !noundef !5 ; 2 uses
  %i.jj = icmp ule i64 %.sroa.433.0, %i.jf
  tail call void @llvm.assume(i1 %i.jj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2791
  %.not.i = icmp eq i64 %.sroa.433.0, 0
  br i1 %.not.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cd, %bb.cb
  store i64 %i.jf, ptr %i.h, align 8, !noalias !2791
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.ji, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !2791
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %.sroa.433.0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2791
  %i.jk = icmp ult i16 %.sroa.576.0.extract.trunc148, %.sroa.579.0.extract.trunc
  br i1 %i.jk, label %.lr.ph.i120, label %._crit_edge.i

.lr.ph.i120:                                      ; preds = %bb.cc
  %i.jl = icmp ugt i64 %i.bh, 65535
  %i.jm = trunc nuw i64 %i.bh to i16
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0124.0.copyload, i64 1648
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 12
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  br i1 %i.jl, label %.lr.ph.split.us.i, label %.lr.ph.split.i, !prof !12

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2791
  store i16 %.sroa.576.0.extract.trunc148, ptr %i.g, align 2, !noalias !2791
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2791
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #29
          to label %bb.ch unwind label %.loopexit.split-lp.i, !noalias !2791

bb.cd:                                            ; preds = %bb.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ji, ptr nonnull readonly align 1 %.sroa.032.0, i64 %.sroa.433.0, i1 false), !noalias !2792
  br label %bb.cc

.loopexit.i121:                                   ; preds = %.noexc59.i, %.split.i.i, %bb.cr, %bb.cp, %bb.co, %.lr.ph.split.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp.i:                             ; preds = %bb.cn, %.lr.ph.split.us.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i121
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i121 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i43.i unwind label %bb.cf, !noalias !2791

bb.cf:                                            ; preds = %bb.ce
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.cg, !noalias !2791

bb.cg:                                            ; preds = %bb.cf
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !2791
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i43.i: ; preds = %bb.ce
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body50.i unwind label %bb.ct, !noalias !2791

bb.ch:                                            ; preds = %.lr.ph.split.us.i, %bb.ca
end_hunk_1
begin_hunk_2_@_RINvNtNtCscScJTt9VrQp_6fea_rs7compile11glyph_range5namedNCNvMNtB4_11compile_ctxINtBX_14CompilationCtxNtNtCshxhuDJfZv4T_6fontbe8features13FeatureWriterNtB1D_16FeaVariationInfoE21add_glyphs_from_ranges_0EB1F_:bb.a
  %or.cond.i90 = or i1 %i.df, %i.dg
  br i1 %or.cond.i90, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread128, label %bb.ap, !prof !31

bb.ap:                                            ; preds = %bb.ao
  %i.dh = icmp eq i64 %i.be, %.sroa.6.0
  br i1 %i.dh, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.di = icmp eq i64 %i.be, 0
  br i1 %i.di, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %i.dj = icmp eq i64 %i.bf, %.sroa.6.0
  br i1 %i.dj, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92

bb.as:                                            ; preds = %bb.aq
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.be
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !2812, !noundef !5
  %i.dm = icmp sgt i8 %i.dl, -65
  br i1 %i.dm, label %bb.ar, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread128, !prof !32

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92: ; preds = %bb.ar
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.bf
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !2812, !noundef !5
  %i.dp = icmp sgt i8 %i.do, -65
  br i1 %i.dp, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread128, !prof !33

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread128: ; preds = %bb.as, %bb.ao, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.016.0, i64 noundef %.sroa.6.0, i64 noundef %i.be, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #30
  unreachable

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread: ; preds = %bb.ar, %bb.ap, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %i.be ; 3 uses
  switch i64 %i.z, label %bb.b [
    i64 0, label %bb.at
    i64 1, label %bb.au
    i64 2, label %bb.av
  ]

bb.at:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.aw

bb.au:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !5, !noundef !5
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !noundef !5
  br label %bb.aw

bb.av:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !5, !noundef !5
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !5
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.sroa.624.0 = phi i64 [ %i.x, %bb.at ], [ %i.dv, %bb.au ], [ %i.dz, %bb.av ] ; 4 uses
  %.sroa.021.0 = phi ptr [ %i.dr, %bb.at ], [ %i.dt, %bb.au ], [ %i.ea, %bb.av ] ; 4 uses
  %i.eb = icmp ugt i64 %i.bf, %.sroa.624.0
  br i1 %i.eb, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread132, label %bb.ax, !prof !31

bb.ax:                                            ; preds = %bb.aw
  %i.ec = icmp eq i64 %i.be, %.sroa.624.0
  br i1 %i.ec, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ed = icmp eq i64 %i.be, 0
  br i1 %i.ed, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.ee = icmp eq i64 %i.bf, %.sroa.624.0
  br i1 %i.ee, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit

bb.ba:                                            ; preds = %bb.ay
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.021.0, i64 %i.be
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !2813, !noundef !5
  %i.eh = icmp sgt i8 %i.eg, -65
  br i1 %i.eh, label %bb.az, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread132, !prof !32

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit: ; preds = %bb.az
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.021.0, i64 %i.bf
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !2813, !noundef !5
  %i.ek = icmp sgt i8 %i.ej, -65
  br i1 %i.ek, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread132, !prof !33

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread132: ; preds = %bb.ba, %bb.aw, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.021.0, i64 noundef %.sroa.624.0, i64 noundef %i.be, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #30
  unreachable

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread: ; preds = %bb.az, %bb.ax, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.021.0, i64 %i.be ; 3 uses
  switch i64 %i.bh, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread
    i64 1, label %bb.bb
  ]

bb.bb:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread
  %i.em = load i8, ptr %i.dq, align 1, !alias.scope !2814, !noundef !5 ; 2 uses
  switch i8 %i.em, label %bb.bc [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140
  ]

thread-pre-split.i:                               ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread
  %.pr.i = load i8, ptr %i.dq, align 1, !alias.scope !2814
  br label %bb.bc

bb.bc:                                            ; preds = %thread-pre-split.i, %bb.bb
  %i.en = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.em, %bb.bb ]
  %cond.i = icmp eq i8 %i.en, 43                  ; 2 uses
  %i.eo = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.bh, %i.eo        ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i96 = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.ep = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.ep, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.bc
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.bf
  %.not53.i = icmp eq i64 %i.et, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.gi, %bb.bj ], [ 0, %.preheader.i ], [ %i.fk, %bb.bg ], [ %i.fs, %bb.bh ], [ %i.ga, %bb.bi ], [ %i.fe, %.preheader58.i ]
  %i.eq = zext i16 %.sroa.043.1.i to i32
  %i.er = shl nuw i32 %i.eq, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader58.i.preheader:                         ; preds = %bb.bc, %.preheader58.i
  %.sroa.0.1.i229 = phi ptr [ %i.es, %.preheader58.i ], [ %.sroa.0.0.i96, %bb.bc ] ; 2 uses
  %.sroa.15.1.i228 = phi i64 [ %i.et, %.preheader58.i ], [ %.sroa.15.0.i, %bb.bc ]
  %.sroa.043.0.i227 = phi i16 [ %i.fe, %.preheader58.i ], [ 0, %bb.bc ]
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i229, i64 1
  %i.et = add nsw i64 %.sroa.15.1.i228, -1        ; 2 uses
  %i.eu = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i227, i16 10) ; 2 uses
  %i.ev = extractvalue { i16, i1 } %i.eu, 0       ; 2 uses
  %i.ew = extractvalue { i16, i1 } %i.eu, 1
  %i.ex = load i8, ptr %.sroa.0.1.i229, align 1, !alias.scope !2814, !noundef !5 ; 2 uses
  br i1 %i.ew, label %bb.be, label %bb.bd, !prof !12

bb.bd:                                            ; preds = %.preheader58.i.preheader
  %i.ey = zext i8 %i.ex to i32
  %i.ez = add nsw i32 %i.ey, -48                  ; 2 uses
  %i.fa = icmp ult i32 %i.ez, 10
  br i1 %i.fa, label %bb.bf, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.be:                                            ; preds = %.preheader58.i.preheader
  %i.fb = add i8 %i.ex, -48
  %i.fc = icmp ult i8 %i.fb, 10
  %spec.select.i = select i1 %i.fc, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.bf:                                            ; preds = %bb.bd
  %i.fd = trunc nuw nsw i32 %i.ez to i16
  %i.fe = add i16 %i.ev, %i.fd                    ; 3 uses
  %i.ff = icmp ult i16 %i.fe, %i.ev
  br i1 %i.ff, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit, label %.preheader58.i, !prof !12

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.fg = load i8, ptr %.sroa.0.0.i96, align 1, !alias.scope !2814, !noundef !5
  %i.fh = zext i8 %i.fg to i32
  %i.fi = add nsw i32 %i.fh, -48                  ; 2 uses
  %i.fj = icmp ult i32 %i.fi, 10
  br i1 %i.fj, label %bb.bg, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.bg:                                            ; preds = %.lr.ph.i
  %i.fk = trunc nuw nsw i32 %i.fi to i16          ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.bg
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i96, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !2814, !noundef !5
  %i.fn = zext i8 %i.fm to i32
  %i.fo = add nsw i32 %i.fn, -48                  ; 2 uses
  %i.fp = icmp ult i32 %i.fo, 10
  br i1 %i.fp, label %bb.bh, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.bh:                                            ; preds = %.lr.ph.i.1
  %i.fq = mul nuw nsw i16 %i.fk, 10
  %i.fr = trunc nuw nsw i32 %i.fo to i16
  %i.fs = add nuw nsw i16 %i.fq, %i.fr            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.bh
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i96, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !2814, !noundef !5
  %i.fv = zext i8 %i.fu to i32
  %i.fw = add nsw i32 %i.fv, -48                  ; 2 uses
  %i.fx = icmp ult i32 %i.fw, 10
  br i1 %i.fx, label %bb.bi, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.bi:                                            ; preds = %.lr.ph.i.2
  %i.fy = mul nuw i16 %i.fs, 10
  %i.fz = trunc nuw nsw i32 %i.fw to i16
  %i.ga = add nuw nsw i16 %i.fy, %i.fz            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.bi
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i96, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !2814, !noundef !5
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add nsw i32 %i.gd, -48                  ; 2 uses
  %i.gf = icmp ult i32 %i.ge, 10
  br i1 %i.gf, label %bb.bj, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

bb.bj:                                            ; preds = %.lr.ph.i.3
  %i.gg = mul i16 %i.ga, 10
  %i.gh = trunc nuw nsw i32 %i.ge to i16
  %i.gi = add i16 %i.gg, %i.gh
  br label %.loopexit.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %bb.bd, %bb.bf, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.loopexit.i, %bb.be
  %.sroa.8.0.insert.insert.i = phi i32 [ 257, %.lr.ph.i ], [ %i.er, %.loopexit.i ], [ %spec.select.i, %bb.be ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 513, %bb.bf ], [ 257, %bb.bd ] ; 3 uses
  %.sroa.576.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i, 16 ; 3 uses
  %.sroa.576.0.extract.trunc = trunc nuw i32 %.sroa.576.0.extract.shift to i16 ; 2 uses
  switch i64 %i.bh, label %thread-pre-split.i117 [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread
    i64 1, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140
  ]

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140: ; preds = %bb.bb, %bb.bb, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.576.0.extract.trunc149 = phi i16 [ %.sroa.576.0.extract.trunc, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 0, %bb.bb ], [ 0, %bb.bb ]
  %.sroa.576.0.extract.shift147 = phi i32 [ %.sroa.576.0.extract.shift, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 0, %bb.bb ], [ 0, %bb.bb ]
  %.sroa.8.0.insert.insert.i145 = phi i32 [ %.sroa.8.0.insert.insert.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit ], [ 257, %bb.bb ], [ 257, %bb.bb ]
  %i.gj = load i8, ptr %i.el, align 1, !alias.scope !2815, !noundef !5 ; 2 uses
  switch i8 %i.gj, label %bb.bk [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread
  ]

thread-pre-split.i117:                            ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.pr.i118 = load i8, ptr %i.el, align 1, !alias.scope !2815
  br label %bb.bk

bb.bk:                                            ; preds = %thread-pre-split.i117, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140
  %.sroa.576.0.extract.trunc148 = phi i16 [ %.sroa.576.0.extract.trunc, %thread-pre-split.i117 ], [ %.sroa.576.0.extract.trunc149, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140 ] ; 3 uses
  %.sroa.576.0.extract.shift146 = phi i32 [ %.sroa.576.0.extract.shift, %thread-pre-split.i117 ], [ %.sroa.576.0.extract.shift147, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140 ]
  %.sroa.8.0.insert.insert.i144 = phi i32 [ %.sroa.8.0.insert.insert.i, %thread-pre-split.i117 ], [ %.sroa.8.0.insert.insert.i145, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140 ]
  %i.gk = phi i8 [ %.pr.i118, %thread-pre-split.i117 ], [ %i.gj, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140 ]
  %cond.i98 = icmp eq i8 %i.gk, 43                ; 2 uses
  %i.gl = sext i1 %cond.i98 to i64
  %.sroa.15.0.i99 = add nsw i64 %i.bh, %i.gl      ; 6 uses
  %.sroa.0.0.idx.i100 = zext i1 %cond.i98 to i64
  %.sroa.0.0.i101 = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.0.0.idx.i100 ; 5 uses
  %i.gm = icmp samesign ult i64 %.sroa.15.0.i99, 5
  br i1 %i.gm, label %.preheader.i110, label %.preheader58.i102.preheader

.preheader.i110:                                  ; preds = %bb.bk
  %.not5466.i111 = icmp eq i64 %.sroa.15.0.i99, 0
  br i1 %.not5466.i111, label %.loopexit.i108, label %.lr.ph.i112

.preheader58.i102:                                ; preds = %bb.bl
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i105232, i64 1
  %i.go = add nsw i64 %.sroa.15.1.i104231, -1     ; 2 uses
  %.not53.i106 = icmp eq i64 %i.go, 0
  br i1 %.not53.i106, label %.loopexit.i108, label %.preheader58.i102.preheader

.loopexit.i108:                                   ; preds = %.preheader58.i102, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %.preheader.i110
  %.sroa.043.1.i109 = phi i16 [ %i.ig, %bb.bq ], [ 0, %.preheader.i110 ], [ %i.hi, %bb.bn ], [ %i.hq, %bb.bo ], [ %i.hy, %bb.bp ], [ %i.gz, %.preheader58.i102 ]
  %i.gp = zext i16 %.sroa.043.1.i109 to i32
  %i.gq = shl nuw i32 %i.gp, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119

.preheader58.i102.preheader:                      ; preds = %bb.bk, %.preheader58.i102
  %.sroa.0.1.i105232 = phi ptr [ %i.gn, %.preheader58.i102 ], [ %.sroa.0.0.i101, %bb.bk ] ; 3 uses
  %.sroa.15.1.i104231 = phi i64 [ %i.go, %.preheader58.i102 ], [ %.sroa.15.0.i99, %bb.bk ]
  %.sroa.043.0.i103230 = phi i16 [ %i.gz, %.preheader58.i102 ], [ 0, %bb.bk ]
  %i.gr = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i103230, i16 10) ; 2 uses
  %i.gs = extractvalue { i16, i1 } %i.gr, 1
  br i1 %i.gs, label %bb.bm, label %bb.bl, !prof !12

bb.bl:                                            ; preds = %.preheader58.i102.preheader
  %i.gt = extractvalue { i16, i1 } %i.gr, 0       ; 2 uses
  %i.gu = load i8, ptr %.sroa.0.1.i105232, align 1, !alias.scope !2815, !noundef !5
  %i.gv = zext i8 %i.gu to i32
  %i.gw = add nsw i32 %i.gv, -48                  ; 2 uses
  %i.gx = icmp ugt i32 %i.gw, 9
  %i.gy = trunc nuw nsw i32 %i.gw to i16
  %i.gz = add i16 %i.gt, %i.gy                    ; 3 uses
  %i.ha = icmp ult i16 %i.gz, %i.gt
  %or.cond161 = select i1 %i.gx, i1 true, i1 %i.ha, !prof !34
  br i1 %or.cond161, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread, label %.preheader58.i102, !prof !34

bb.bm:                                            ; preds = %.preheader58.i102.preheader
  %i.hb = load i8, ptr %.sroa.0.1.i105232, align 1, !alias.scope !2815, !noundef !5
  %i.hc = add i8 %i.hb, -48
  %i.hd = icmp ult i8 %i.hc, 10
  %spec.select.i107 = select i1 %i.hd, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119

.lr.ph.i112:                                      ; preds = %.preheader.i110
  %i.he = load i8, ptr %.sroa.0.0.i101, align 1, !alias.scope !2815, !noundef !5
  %i.hf = zext i8 %i.he to i32
  %i.hg = add nsw i32 %i.hf, -48                  ; 2 uses
  %i.hh = icmp ult i32 %i.hg, 10
  br i1 %i.hh, label %bb.bn, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread

bb.bn:                                            ; preds = %.lr.ph.i112
  %i.hi = trunc nuw nsw i32 %i.hg to i16          ; 2 uses
  %.not54.i116 = icmp eq i64 %.sroa.15.0.i99, 1
  br i1 %.not54.i116, label %.loopexit.i108, label %.lr.ph.i112.1

.lr.ph.i112.1:                                    ; preds = %bb.bn
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i101, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !2815, !noundef !5
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -48                  ; 2 uses
  %i.hn = icmp ult i32 %i.hm, 10
  br i1 %i.hn, label %bb.bo, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread

bb.bo:                                            ; preds = %.lr.ph.i112.1
  %i.ho = mul nuw nsw i16 %i.hi, 10
  %i.hp = trunc nuw nsw i32 %i.hm to i16
  %i.hq = add nuw nsw i16 %i.ho, %i.hp            ; 2 uses
  %.not54.i116.1 = icmp eq i64 %.sroa.15.0.i99, 2
  br i1 %.not54.i116.1, label %.loopexit.i108, label %.lr.ph.i112.2

.lr.ph.i112.2:                                    ; preds = %bb.bo
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i101, i64 2
  %i.hs = load i8, ptr %i.hr, align 1, !alias.scope !2815, !noundef !5
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nsw i32 %i.ht, -48                  ; 2 uses
  %i.hv = icmp ult i32 %i.hu, 10
  br i1 %i.hv, label %bb.bp, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread

bb.bp:                                            ; preds = %.lr.ph.i112.2
  %i.hw = mul nuw i16 %i.hq, 10
  %i.hx = trunc nuw nsw i32 %i.hu to i16
  %i.hy = add nuw nsw i16 %i.hw, %i.hx            ; 2 uses
  %.not54.i116.2 = icmp eq i64 %.sroa.15.0.i99, 3
  br i1 %.not54.i116.2, label %.loopexit.i108, label %.lr.ph.i112.3

.lr.ph.i112.3:                                    ; preds = %bb.bp
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i101, i64 3
  %i.ia = load i8, ptr %i.hz, align 1, !alias.scope !2815, !noundef !5
  %i.ib = zext i8 %i.ia to i32
  %i.ic = add nsw i32 %i.ib, -48                  ; 2 uses
  %i.id = icmp ult i32 %i.ic, 10
  br i1 %i.id, label %bb.bq, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread

bb.bq:                                            ; preds = %.lr.ph.i112.3
  %i.ie = mul i16 %i.hy, 10
  %i.if = trunc nuw nsw i32 %i.ic to i16
  %i.ig = add i16 %i.ie, %i.if
  br label %.loopexit.i108

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119: ; preds = %.loopexit.i108, %bb.bm
  %.sroa.8.0.insert.insert.i97 = phi i32 [ %spec.select.i107, %bb.bm ], [ %i.gq, %.loopexit.i108 ] ; 2 uses
  %.sroa.579.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i97, 16 ; 2 uses
  %.sroa.579.0.extract.trunc = trunc nuw i32 %.sroa.579.0.extract.shift to i16 ; 2 uses
  %i.ih = trunc i32 %.sroa.8.0.insert.insert.i144 to i1
  %i.ii = trunc i32 %.sroa.8.0.insert.insert.i97 to i1
  %or.cond86 = select i1 %i.ih, i1 true, i1 %i.ii
  %i.ij = icmp samesign uge i32 %.sroa.576.0.extract.shift146, %.sroa.579.0.extract.shift
  %or.cond87.not = select i1 %or.cond86, i1 true, i1 %i.ij
  br i1 %or.cond87.not, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread, label %bb.br

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread: ; preds = %bb.bl, %.lr.ph.i112, %.lr.ph.i112.1, %.lr.ph.i112.2, %.lr.ph.i112.3, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread140, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 97, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ik = load i64, ptr %i.j, align 8, !range !24, !noundef !5
  %i.il = trunc nuw i64 %i.ik to i1
  %i.im = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.in = load i64, ptr %i.im, align 8, !range !29, !noundef !5 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.il, label %bb.cv, label %bb.cw, !prof !12

bb.br:                                            ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119
  switch i64 %i.q, label %bb.b [
    i64 0, label %bb.bs
    i64 1, label %bb.bt
    i64 2, label %bb.bu
  ]

bb.bs:                                            ; preds = %bb.br
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !nonnull !5, !noundef !5
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.it = load i64, ptr %i.is, align 8, !noundef !5
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !nonnull !5, !noundef !5
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !noundef !5
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %.sroa.433.0 = phi i64 [ %i.o, %bb.bs ], [ %i.it, %bb.bt ], [ %i.ix, %bb.bu ] ; 5 uses
  %.sroa.032.0 = phi ptr [ %i.ip, %bb.bs ], [ %i.ir, %bb.bt ], [ %i.iy, %bb.bu ]
  %.sroa.0124.0.copyload = load ptr, ptr %3, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx125, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2816
  store i64 0, ptr %i.i, align 8, !noalias !2816
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !2816
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2816
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.sroa.433.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bz unwind label %bb.by, !noalias !2816

.body50.i:                                        ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i43.i, %bb.by
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i43.i ], [ %i.jb, %bb.by ], [ %i.jw, %bb.ci ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i.i unwind label %bb.bw, !noalias !2816

bb.bw:                                            ; preds = %.body50.i
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.bx, !noalias !2816

bb.bx:                                            ; preds = %bb.bw
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !2816
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %.body50.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i unwind label %bb.ct, !noalias !2816

bb.by:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i49.i, %bb.ca, %bb.bv
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body50.i

bb.bz:                                            ; preds = %bb.bv
  %i.jc = load i64, ptr %i.e, align 8, !range !24, !noalias !2816, !noundef !5
  %i.jd = trunc nuw i64 %i.jc to i1
  %i.je = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !range !29, !noalias !2816, !noundef !5 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.jd, label %bb.ca, label %bb.cb, !prof !12

bb.ca:                                            ; preds = %bb.bz
  %i.jh = load i64, ptr %i.jg, align 8, !noalias !2816
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.jf, i64 %i.jh) #29
          to label %bb.ch unwind label %bb.by, !noalias !2816

bb.cb:                                            ; preds = %bb.bz
  %i.ji = load ptr, ptr %i.jg, align 8, !noalias !2816, !nonnull !5, !noundef !5 ; 2 uses
  %i.jj = icmp ule i64 %.sroa.433.0, %i.jf
  tail call void @llvm.assume(i1 %i.jj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2816
  %.not.i = icmp eq i64 %.sroa.433.0, 0
  br i1 %.not.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cd, %bb.cb
  store i64 %i.jf, ptr %i.h, align 8, !noalias !2816
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.ji, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !2816
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %.sroa.433.0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2816
  %i.jk = icmp ult i16 %.sroa.576.0.extract.trunc148, %.sroa.579.0.extract.trunc
  br i1 %i.jk, label %.lr.ph.i120, label %._crit_edge.i

.lr.ph.i120:                                      ; preds = %bb.cc
  %i.jl = icmp ugt i64 %i.bh, 65535
  %i.jm = trunc nuw i64 %i.bh to i16
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0124.0.copyload, i64 1648
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 12
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  br i1 %i.jl, label %.lr.ph.split.us.i, label %.lr.ph.split.i, !prof !12

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2816
  store i16 %.sroa.576.0.extract.trunc148, ptr %i.g, align 2, !noalias !2816
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2816
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #29
          to label %bb.ch unwind label %.loopexit.split-lp.i, !noalias !2816

bb.cd:                                            ; preds = %bb.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ji, ptr nonnull readonly align 1 %.sroa.032.0, i64 %.sroa.433.0, i1 false), !noalias !2817
  br label %bb.cc

.loopexit.i121:                                   ; preds = %.noexc59.i, %.split.i.i, %bb.cr, %bb.cp, %bb.co, %.lr.ph.split.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp.i:                             ; preds = %bb.cn, %.lr.ph.split.us.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i121
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i121 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i43.i unwind label %bb.cf, !noalias !2816

bb.cf:                                            ; preds = %bb.ce
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.cg, !noalias !2816

bb.cg:                                            ; preds = %bb.cf
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !2816
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i43.i: ; preds = %bb.ce
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body50.i unwind label %bb.ct, !noalias !2816

bb.ch:                                            ; preds = %.lr.ph.split.us.i, %bb.ca
end_hunk_2
begin_hunk_3_@_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB2_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE19validate_lookupflagB17_:bb.a
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [176 x i8], align 8               ; 28 uses
  %i.l = alloca [32 x i8], align 8                ; 15 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMsp_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB5_10LookupFlag6number(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.o = load i16, ptr %i.n, align 4, !range !4, !noundef !5
  %.not = icmp eq i16 %i.o, -1
  br i1 %.not, label %.lr.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.p = load i8, ptr %i.l, align 8, !range !8, !noundef !5 ; 2 uses
  %i.q = icmp samesign ugt i8 %i.p, 23
  %i.r = zext nneg i8 %i.p to i64                 ; 2 uses
  %i.s = add nsw i64 %i.r, -23
  %i.t = select i1 %i.q, i64 %i.s, i64 0
  switch i64 %i.t, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !noundef !5
  %i.w = zext i32 %i.v to i64
  store i64 0, ptr %i.k, align 8
  %.sroa.014.sroa.0.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.014.sroa.0.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.014.sroa.0.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.014.sroa.0.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.014.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store i64 0, ptr %.sroa.014.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.014.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store ptr %1, ptr %.sroa.014.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.014.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i64 0, ptr %.sroa.014.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.014.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store i8 1, ptr %.sroa.014.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.014.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  store i64 %i.w, ptr %.sroa.014.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.014.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 7 uses
  store i64 1, ptr %.sroa.014.sroa.4.0..sroa_idx, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 168 ; 7 uses
  store i8 0, ptr %.sroa.415.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 176 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 169 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.ab

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.43.0 = phi i64 [ %i.r, %bb.d ], [ %i.al, %bb.e ], [ %i.ap, %bb.f ] ; 2 uses
  %.sroa.02.0 = phi ptr [ %i.ah, %bb.d ], [ %i.aj, %bb.e ], [ %i.aq, %bb.f ] ; 6 uses
  switch i64 %.sroa.43.0, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = load i8, ptr %.sroa.02.0, align 1, !alias.scope !8591, !noundef !5 ; 2 uses
  switch i8 %i.ar, label %bb.i [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.g
  %.pr.i = load i8, ptr %.sroa.02.0, align 1, !alias.scope !8591
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split.i, %bb.h
  %i.as = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ar, %bb.h ]
  %cond.i = icmp eq i8 %i.as, 43                  ; 5 uses
  %i.at = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.43.0, %i.at  ; 6 uses
  %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %cond.i to i64
  %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.au = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.au, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.i
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i250, i64 1
  %i.aw = add nsw i64 %.sroa.15.1.i249, -1        ; 2 uses
  %.not53.i = icmp eq i64 %i.aw, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.l, %bb.m, %bb.n, %bb.o, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.cl, %bb.o ], [ 0, %.preheader.i ], [ %i.bq, %bb.l ], [ %i.bx, %bb.m ], [ %i.ce, %bb.n ], [ %i.bh, %.preheader58.i ]
  %i.ax = zext i16 %.sroa.043.1.i to i32
  %i.ay = shl nuw i32 %i.ax, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader58.i.preheader:                         ; preds = %bb.i, %.preheader58.i
  %.sroa.0.1.i250 = phi ptr [ %i.av, %.preheader58.i ], [ %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %bb.i ] ; 3 uses
  %.sroa.15.1.i249 = phi i64 [ %i.aw, %.preheader58.i ], [ %.sroa.15.0.i, %bb.i ]
  %.sroa.043.0.i248 = phi i16 [ %i.bh, %.preheader58.i ], [ 0, %bb.i ]
  %i.az = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i248, i16 10) ; 2 uses
  %i.ba = extractvalue { i16, i1 } %i.az, 1
  br i1 %i.ba, label %bb.k, label %bb.j, !prof !12

bb.j:                                             ; preds = %.preheader58.i.preheader
  %i.bb = extractvalue { i16, i1 } %i.az, 0       ; 2 uses
  %i.bc = load i8, ptr %.sroa.0.1.i250, align 1, !alias.scope !8591, !noundef !5
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48                  ; 2 uses
  %i.bf = icmp ugt i32 %i.be, 9
  %i.bg = trunc nuw nsw i32 %i.be to i16
  %i.bh = add i16 %i.bb, %i.bg                    ; 3 uses
  %i.bi = icmp ult i16 %i.bh, %i.bb
  %or.cond = select i1 %i.bf, i1 true, i1 %i.bi, !prof !34
  br i1 %or.cond, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %.preheader58.i, !prof !34

bb.k:                                             ; preds = %.preheader58.i.preheader
  %i.bj = load i8, ptr %.sroa.0.1.i250, align 1, !alias.scope !8591, !noundef !5
  %i.bk = add i8 %i.bj, -48
  %i.bl = icmp ult i8 %i.bk, 10
  %spec.select.i = select i1 %i.bl, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bm = load i8, ptr %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !alias.scope !8591, !noundef !5
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %i.bp = icmp ult i32 %i.bo, 10
  br i1 %i.bp, label %bb.l, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.l:                                             ; preds = %.lr.ph.i
  %i.bq = trunc nuw nsw i32 %i.bo to i16          ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.l
  %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.sroa.sel.v = select i1 %cond.i, i64 2, i64 1
  %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.sroa.sel.v
  %i.br = load i8, ptr %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.sroa.sel, align 1, !alias.scope !8591, !noundef !5
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nsw i32 %i.bs, -48                  ; 2 uses
  %i.bu = icmp ult i32 %i.bt, 10
  br i1 %i.bu, label %bb.m, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.bv = mul nuw nsw i16 %i.bq, 10
  %i.bw = trunc nuw nsw i32 %i.bt to i16
  %i.bx = add nuw nsw i16 %i.bv, %i.bw            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.m
  %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.sroa.sel.sroa.sel.v = select i1 %cond.i, i64 3, i64 2
  %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.sroa.sel.sroa.sel.v
  %i.by = load i8, ptr %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.sroa.sel.sroa.sel, align 1, !alias.scope !8591, !noundef !5
  %i.bz = zext i8 %i.by to i32
  %i.ca = add nsw i32 %i.bz, -48                  ; 2 uses
  %i.cb = icmp ult i32 %i.ca, 10
  br i1 %i.cb, label %bb.n, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.2
  %i.cc = mul nuw i16 %i.bx, 10
  %i.cd = trunc nuw nsw i32 %i.ca to i16
  %i.ce = add nuw nsw i16 %i.cc, %i.cd            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.n
  %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.sroa.sel.sroa.sel.sroa.sel.v = select i1 %cond.i, i64 4, i64 3
  %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.sroa.sel.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.sroa.sel.sroa.sel.sroa.sel.v
  %i.cf = load i8, ptr %.sroa.0.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.sroa.sel.sroa.sel.sroa.sel, align 1, !alias.scope !8591, !noundef !5
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add nsw i32 %i.cg, -48                  ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 10
  br i1 %i.ci, label %bb.o, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.o:                                             ; preds = %.lr.ph.i.3
  %i.cj = mul i16 %i.ce, 10
  %i.ck = trunc nuw nsw i32 %i.ch to i16
  %i.cl = add i16 %i.cj, %i.ck
  br label %.loopexit.i

bb.p:                                             ; preds = %bb.y, %bb.u, %bb.t, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8592)
  call void @llvm.experimental.noalias.scope.decl(metadata !8593)
  call void @llvm.experimental.noalias.scope.decl(metadata !8594)
  call void @llvm.experimental.noalias.scope.decl(metadata !8595)
  %i.cn = load i8, ptr %i.l, align 8, !range !8, !alias.scope !8596, !noundef !5
  %switch.i.i.i.i = icmp samesign ult i8 %i.cn, 25
  br i1 %switch.i.i.i.i, label %common.resume, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8597)
  call void @llvm.experimental.noalias.scope.decl(metadata !8598)
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !8599, !nonnull !5, !noundef !5
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !8599
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.r, label %common.resume

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.co) #28
          to label %common.resume unwind label %bb.aa

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %bb.k, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i32 [ %spec.select.i, %bb.k ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.cs = trunc i32 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.cs, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %bb.s

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.j, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.g, %bb.h, %bb.h, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %i.ct = invoke { i64, i64 } @_RNvXs1V_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_6NumberNtB6_7AstNode5range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.y unwind label %bb.p       ; 2 uses

bb.s:                                             ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit
  %i.cu = icmp ugt i32 %.sroa.8.0.insert.insert.i, 16777215
  br i1 %i.cu, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cv = invoke { i64, i64 } @_RNvXs1V_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_6NumberNtB6_7AstNode5range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.u unwind label %bb.p       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.cw = extractvalue { i64, i64 } %i.cv, 0
  %i.cx = extractvalue { i64, i64 } %i.cv, 1
  invoke fastcc void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB3_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE7warningReEB18_(ptr noalias nofree noundef align 8 dereferenceable(568) %0, i64 noundef %i.cw, i64 noundef %i.cx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 73)
          to label %bb.v unwind label %bb.p

bb.v:                                             ; preds = %bb.y, %bb.u, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !8600)
  call void @llvm.experimental.noalias.scope.decl(metadata !8601)
  call void @llvm.experimental.noalias.scope.decl(metadata !8602)
  call void @llvm.experimental.noalias.scope.decl(metadata !8603)
  %i.cy = load i8, ptr %i.l, align 8, !range !8, !alias.scope !8604, !noundef !5
  %switch.i.i.i.i51 = icmp samesign ult i8 %i.cy, 25
  br i1 %switch.i.i.i.i51, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed6NumberECshxhuDJfZv4T_6fontbe.exit52, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8605)
  call void @llvm.experimental.noalias.scope.decl(metadata !8606)
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !8607, !nonnull !5, !noundef !5
  %i.db = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !8607
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.x, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed6NumberECshxhuDJfZv4T_6fontbe.exit52

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cz) #28
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed6NumberECshxhuDJfZv4T_6fontbe.exit52

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed6NumberECshxhuDJfZv4T_6fontbe.exit52: ; preds = %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.z

bb.y:                                             ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  %i.dd = extractvalue { i64, i64 } %i.ct, 0
  %i.de = extractvalue { i64, i64 } %i.ct, 1
  invoke fastcc void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB3_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE5errorReEB18_(ptr noalias nofree noundef align 8 dereferenceable(568) %0, i64 noundef %i.dd, i64 noundef %i.de, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 39)
          to label %bb.v unwind label %bb.p

bb.z:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_10take_while9TakeWhileINtNtBG_4skip4SkipNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterENCNvMsp_NtB23_5typedNtB2V_10LookupFlag6values0ENCB2P_s_0EECshxhuDJfZv4T_6fontbe.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed6NumberECshxhuDJfZv4T_6fontbe.exit52
  ret void

bb.aa:                                            ; preds = %bb.r, %bb.cl, %bb.bo, %.loopexit.split-lp
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.ak, %.loopexit.split-lp, %bb.r, %bb.p, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.cm, %bb.q ], [ %.pn, %.loopexit.split-lp ], [ %i.cm, %bb.r ], [ %i.cm, %bb.p ], [ %i.dx, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

bb.ab:                                            ; preds = %.lr.ph, %bb.av
  %.sroa.04.0185 = phi i1 [ false, %.lr.ph ], [ %.sroa.04.1, %bb.av ] ; 7 uses
  %.sroa.05.0184 = phi i1 [ false, %.lr.ph ], [ %.sroa.05.1, %bb.av ] ; 7 uses
  %.sroa.06.0183 = phi i1 [ false, %.lr.ph ], [ %.sroa.06.1, %bb.av ] ; 7 uses
  %.sroa.07.0182 = phi i1 [ false, %.lr.ph ], [ %.sroa.07.1, %bb.av ] ; 7 uses
  %.sroa.08.0181 = phi i1 [ false, %.lr.ph ], [ %.sroa.08.1, %bb.av ] ; 7 uses
  %.sroa.09.0180 = phi i1 [ false, %.lr.ph ], [ %.sroa.09.1, %bb.av ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8608)
  call void @llvm.experimental.noalias.scope.decl(metadata !8609)
  %i.dg = load i64, ptr %.sroa.014.sroa.4.0..sroa_idx, align 8, !alias.scope !8610, !noalias !8611, !noundef !5 ; 2 uses
  store i64 0, ptr %.sroa.014.sroa.4.0..sroa_idx, align 8, !alias.scope !8610, !noalias !8611
  %.not.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %.noexc57, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8612
  store ptr %i.y, ptr %i.f, align 8, !noalias !8610
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8610
  store ptr %.sroa.415.0..sroa_idx, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !8610
  call void @llvm.experimental.noalias.scope.decl(metadata !8613)
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc55, %bb.ac
  %i.dh = invoke noundef align 8 ptr @_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.k)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 10 uses

.noexc54:                                         ; preds = %bb.ad
  %.not.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterENCNvMsp_NtB1v_5typedNtB2n_10LookupFlag6values0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB30_4find5checkRNtB1v_11NodeOrTokenQNCB2h_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB44_EECshxhuDJfZv4T_6fontbe.exit.thread129, label %bb.ae

bb.ae:                                            ; preds = %.noexc54
  call void @llvm.experimental.noalias.scope.decl(metadata !8614)
  call void @llvm.experimental.noalias.scope.decl(metadata !8615)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = load i16, ptr %i.di, align 4, !range !4, !alias.scope !8615, !noalias !8616, !noundef !5 ; 2 uses
  switch i16 %i.dj, label %_RNCNvMsp_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10LookupFlag6values0CshxhuDJfZv4T_6fontbe.exit.i.i.i.i [
    i16 -1, label %bb.af
    i16 4, label %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenuINtNtNtBg_3ops12control_flow11ControlFlowB25_ENCNvMsp_NtB28_5typedNtB3N_10LookupFlag6values0NCINvNvB1i_4find5checkB25_QNCB3H_s_0E0E0CshxhuDJfZv4T_6fontbe.exit.thread.i.i.i
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dl = load i16, ptr %i.dk, align 8, !range !40, !alias.scope !8615, !noalias !8616, !noundef !5 ; 2 uses
  %.not3.i.i.i.i.i = icmp eq i16 %i.dl, 4
  br i1 %.not3.i.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenuINtNtNtBg_3ops12control_flow11ControlFlowB25_ENCNvMsp_NtB28_5typedNtB3N_10LookupFlag6values0NCINvNvB1i_4find5checkB25_QNCB3H_s_0E0E0CshxhuDJfZv4T_6fontbe.exit.thread.i.i.i, label %_RNCNvMsp_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10LookupFlag6values0CshxhuDJfZv4T_6fontbe.exit.i.i.i.i

_RNCNvMsp_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10LookupFlag6values0CshxhuDJfZv4T_6fontbe.exit.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.sroa.02.0.i.i.i.i.i = phi i16 [ %i.dj, %bb.ae ], [ %i.dl, %bb.af ]
  %.not6.i.i.i.i = icmp eq i16 %.sroa.02.0.i.i.i.i.i, 12
  br i1 %.not6.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenuINtNtNtBg_3ops12control_flow11ControlFlowB25_ENCNvMsp_NtB28_5typedNtB3N_10LookupFlag6values0NCINvNvB1i_4find5checkB25_QNCB3H_s_0E0E0CshxhuDJfZv4T_6fontbe.exit.thread.i.i.i, label %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenuINtNtNtBg_3ops12control_flow11ControlFlowB25_ENCNvMsp_NtB28_5typedNtB3N_10LookupFlag6values0NCINvNvB1i_4find5checkB25_QNCB3H_s_0E0E0CshxhuDJfZv4T_6fontbe.exit.i.i.i

_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenuINtNtNtBg_3ops12control_flow11ControlFlowB25_ENCNvMsp_NtB28_5typedNtB3N_10LookupFlag6values0NCINvNvB1i_4find5checkB25_QNCB3H_s_0E0E0CshxhuDJfZv4T_6fontbe.exit.thread.i.i.i: ; preds = %_RNCNvMsp_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10LookupFlag6values0CshxhuDJfZv4T_6fontbe.exit.i.i.i.i, %bb.af, %bb.ae
  %i.dm = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8617, !noalias !8618, !nonnull !5, !noundef !5
  store i8 1, ptr %i.dm, align 1, !noalias !8619
  br label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterENCNvMsp_NtB1v_5typedNtB2n_10LookupFlag6values0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB30_4find5checkRNtB1v_11NodeOrTokenQNCB2h_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB44_EECshxhuDJfZv4T_6fontbe.exit.thread129

_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenuINtNtNtBg_3ops12control_flow11ControlFlowB25_ENCNvMsp_NtB28_5typedNtB3N_10LookupFlag6values0NCINvNvB1i_4find5checkB25_QNCB3H_s_0E0E0CshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %_RNCNvMsp_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB7_10LookupFlag6values0CshxhuDJfZv4T_6fontbe.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8620
  store ptr %i.dh, ptr %i.e, align 8, !noalias !8621
  %i.dn = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMsp_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtBW_10LookupFlag6valuess_0INtB7_5FnMutTRRNtBY_11NodeOrTokenEE8call_mutCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc55:                                         ; preds = %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenuINtNtNtBg_3ops12control_flow11ControlFlowB25_ENCNvMsp_NtB28_5typedNtB3N_10LookupFlag6values0NCINvNvB1i_4find5checkB25_QNCB3H_s_0E0E0CshxhuDJfZv4T_6fontbe.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8620
  br i1 %i.dn, label %bb.ai, label %bb.ad

bb.ag:                                            ; preds = %bb.ab
  %i.do = add i64 %i.dg, -1                       ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.i.i, label %_RNvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3nthCshxhuDJfZv4T_6fontbe.exit.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ag, %bb.ah
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.dq, %bb.ah ], [ %i.do, %bb.ag ]
  %i.dp = invoke noundef align 8 ptr @_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.k)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc56:                                         ; preds = %.preheader.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterENCNvMsp_NtB1v_5typedNtB2n_10LookupFlag6values0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB30_4find5checkRNtB1v_11NodeOrTokenQNCB2h_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB44_EECshxhuDJfZv4T_6fontbe.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %.noexc56
  %i.dq = add i64 %.sroa.01.0.i.i.i.i.i.i, -1     ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_RNvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3nthCshxhuDJfZv4T_6fontbe.exit.i.i, label %.preheader.i.i.i.i.i

end_hunk_3
begin_hunk_4_@_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB2_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE28validate_glyph_class_literalB17_:.lr.ph
bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bn) #28
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed3CidECshxhuDJfZv4T_6fontbe.exit65 unwind label %.loopexit.split-lp144.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5typed3CidECshxhuDJfZv4T_6fontbe.exit65: ; preds = %bb.aj, %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB2_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE12validate_cidB17_.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.aa

bb.al:                                            ; preds = %bb.af
  %i.fs = load i16, ptr %i.bo, align 8, !range !4, !noundef !5
  %.not36 = icmp eq i16 %i.fs, -1
  br i1 %.not36, label %bb.fw, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !13711)
  call void @llvm.experimental.noalias.scope.decl(metadata !13712)
  %i.ft = invoke noundef nonnull align 8 ptr @_RNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB5_10GlyphRange5start(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit ; 34 uses

.noexc68:                                         ; preds = %bb.am
  %i.fu = invoke noundef nonnull align 8 ptr @_RNvMs9_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB5_10GlyphRange3end(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit ; 29 uses

.noexc69:                                         ; preds = %.noexc68
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 28
  %i.fw = load i16, ptr %i.fv, align 4, !range !40, !noalias !13711, !noundef !5
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 28
  %i.fy = load i16, ptr %i.fx, align 4, !range !40, !noalias !13711, !noundef !5 ; 2 uses
  %trunc.i = trunc nuw i16 %i.fw to i8
  switch i8 %trunc.i, label %bb.an [
    i8 28, label %bb.ao
    i8 126, label %bb.ap
  ]

bb.an:                                            ; preds = %bb.ap, %bb.ao, %.noexc69
  %i.fz = load i32, ptr %i.bx, align 8, !alias.scope !13712, !noalias !13711, !noundef !5
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %i.gb = load i32, ptr %i.bw, align 4, !alias.scope !13712, !noalias !13711, !noundef !5
  %i.gc = zext i32 %i.gb to i64
  %i.gd = add nuw nsw i64 %i.gc, %i.ga
  invoke fastcc void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB3_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE5errorReEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(568) %0, i64 noundef %i.ga, i64 noundef %i.gd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 28)
          to label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB2_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_rangeB17_.exit unwind label %.loopexit.split-lp.loopexit

bb.ao:                                            ; preds = %.noexc69
  %i.ge = icmp eq i16 %i.fy, 28
  br i1 %i.ge, label %bb.aq, label %bb.an

bb.ap:                                            ; preds = %.noexc69
  %i.gf = icmp eq i16 %i.fy, 126
  br i1 %i.gf, label %bb.bw, label %bb.an

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !13713)
  call void @llvm.experimental.noalias.scope.decl(metadata !13714)
  %i.gg = load i8, ptr %i.ft, align 8, !range !8, !alias.scope !13713, !noalias !13715, !noundef !5 ; 2 uses
  %i.gh = icmp samesign ugt i8 %i.gg, 23
  %i.gi = zext nneg i8 %i.gg to i64               ; 2 uses
  %i.gj = add nsw i64 %i.gi, -23
  %i.gk = select i1 %i.gh, i64 %i.gj, i64 0
  switch i64 %i.gk, label %bb.ar [
    i64 0, label %bb.as
    i64 1, label %bb.at
    i64 2, label %bb.au
  ]

bb.ar:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25.i.i, %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !13713, !noalias !13715, !nonnull !5, !noundef !5
  %i.go = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !13713, !noalias !13715, !noundef !5
  br label %bb.av

bb.au:                                            ; preds = %bb.aq
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !13713, !noalias !13715, !nonnull !5, !noundef !5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !13713, !noalias !13715, !noundef !5
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.sroa.4.0.i.i = phi i64 [ %i.gi, %bb.as ], [ %i.gp, %bb.at ], [ %i.gt, %bb.au ] ; 2 uses
  %.sroa.02.0.i.i = phi ptr [ %i.gl, %bb.as ], [ %i.gn, %bb.at ], [ %i.gu, %bb.au ] ; 3 uses
  switch i64 %.sroa.4.0.i.i, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i
    i64 1, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av
  %i.gv = load i8, ptr %.sroa.02.0.i.i, align 1, !alias.scope !13716, !noalias !13715, !noundef !5 ; 2 uses
  switch i8 %i.gv, label %bb.ax [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.av
  %.pr.i.i.i = load i8, ptr %.sroa.02.0.i.i, align 1, !alias.scope !13716, !noalias !13715
  br label %bb.ax

bb.ax:                                            ; preds = %thread-pre-split.i.i.i, %bb.aw
  %i.gw = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.gv, %bb.aw ]
  %cond.i.i.i = icmp eq i8 %i.gw, 43              ; 2 uses
  %i.gx = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %.sroa.4.0.i.i, %i.gx ; 6 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 %.sroa.0.0.idx.i.i.i ; 5 uses
  %i.gy = icmp samesign ult i64 %.sroa.15.0.i.i.i, 5
  br i1 %i.gy, label %.preheader.i.i.i, label %.preheader58.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.ax
  %.not5466.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5466.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.preheader58.i.i.i:                               ; preds = %bb.ba
  %.not53.i.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not53.i.i.i, label %.loopexit.i.i.i, label %.preheader58.i.i.i.preheader

.loopexit.i.i.i:                                  ; preds = %.preheader58.i.i.i, %bb.bb, %bb.bc, %bb.bd, %bb.be, %.preheader.i.i.i
  %.sroa.043.1.i.i.i = phi i16 [ %i.ir, %bb.be ], [ 0, %.preheader.i.i.i ], [ %i.ht, %bb.bb ], [ %i.ib, %bb.bc ], [ %i.ij, %bb.bd ], [ %i.hn, %.preheader58.i.i.i ]
  %i.gz = zext i16 %.sroa.043.1.i.i.i to i32
  %i.ha = shl nuw i32 %i.gz, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i.i

.preheader58.i.i.i.preheader:                     ; preds = %bb.ax, %.preheader58.i.i.i
  %.sroa.0.1.i.i.i683 = phi ptr [ %i.hb, %.preheader58.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.ax ] ; 2 uses
  %.sroa.15.1.i.i.i682 = phi i64 [ %i.hc, %.preheader58.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.ax ]
  %.sroa.043.0.i.i.i681 = phi i16 [ %i.hn, %.preheader58.i.i.i ], [ 0, %bb.ax ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i683, i64 1
  %i.hc = add nsw i64 %.sroa.15.1.i.i.i682, -1    ; 2 uses
  %i.hd = call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i.i.i681, i16 10) ; 2 uses
  %i.he = extractvalue { i16, i1 } %i.hd, 0       ; 2 uses
  %i.hf = extractvalue { i16, i1 } %i.hd, 1
  %i.hg = load i8, ptr %.sroa.0.1.i.i.i683, align 1, !alias.scope !13716, !noalias !13715, !noundef !5 ; 2 uses
  br i1 %i.hf, label %bb.az, label %bb.ay, !prof !12

bb.ay:                                            ; preds = %.preheader58.i.i.i.preheader
  %i.hh = zext i8 %i.hg to i32
  %i.hi = add nsw i32 %i.hh, -48                  ; 2 uses
  %i.hj = icmp ult i32 %i.hi, 10
  br i1 %i.hj, label %bb.ba, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.az:                                            ; preds = %.preheader58.i.i.i.preheader
  %i.hk = add i8 %i.hg, -48
  %i.hl = icmp ult i8 %i.hk, 10
  %spec.select.i.i.i = select i1 %i.hl, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.hm = trunc nuw nsw i32 %i.hi to i16
  %i.hn = add i16 %i.he, %i.hm                    ; 3 uses
  %i.ho = icmp ult i16 %i.hn, %i.he
  br i1 %i.ho, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i, label %.preheader58.i.i.i, !prof !12

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.hp = load i8, ptr %.sroa.0.0.i.i.i, align 1, !alias.scope !13716, !noalias !13715, !noundef !5
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add nsw i32 %i.hq, -48                  ; 2 uses
  %i.hs = icmp ult i32 %i.hr, 10
  br i1 %i.hs, label %bb.bb, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.bb:                                            ; preds = %.lr.ph.i.i.i
  %i.ht = trunc nuw nsw i32 %i.hr to i16          ; 2 uses
  %.not54.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 1
  br i1 %.not54.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.bb
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !alias.scope !13716, !noalias !13715, !noundef !5
  %i.hw = zext i8 %i.hv to i32
  %i.hx = add nsw i32 %i.hw, -48                  ; 2 uses
  %i.hy = icmp ult i32 %i.hx, 10
  br i1 %i.hy, label %bb.bc, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.bc:                                            ; preds = %.lr.ph.i.i.i.1
  %i.hz = mul nuw nsw i16 %i.ht, 10
  %i.ia = trunc nuw nsw i32 %i.hx to i16
  %i.ib = add nuw nsw i16 %i.hz, %i.ia            ; 2 uses
  %.not54.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i, 2
  br i1 %.not54.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.bc
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !13716, !noalias !13715, !noundef !5
  %i.ie = zext i8 %i.id to i32
  %i.if = add nsw i32 %i.ie, -48                  ; 2 uses
  %i.ig = icmp ult i32 %i.if, 10
  br i1 %i.ig, label %bb.bd, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.bd:                                            ; preds = %.lr.ph.i.i.i.2
  %i.ih = mul nuw i16 %i.ib, 10
  %i.ii = trunc nuw nsw i32 %i.if to i16
  %i.ij = add nuw nsw i16 %i.ih, %i.ii            ; 2 uses
  %.not54.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i, 3
  br i1 %.not54.i.i.i.2, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.bd
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 3
  %i.il = load i8, ptr %i.ik, align 1, !alias.scope !13716, !noalias !13715, !noundef !5
  %i.im = zext i8 %i.il to i32
  %i.in = add nsw i32 %i.im, -48                  ; 2 uses
  %i.io = icmp ult i32 %i.in, 10
  br i1 %i.io, label %bb.be, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.be:                                            ; preds = %.lr.ph.i.i.i.3
  %i.ip = mul i16 %i.ij, 10
  %i.iq = trunc nuw nsw i32 %i.in to i16
  %i.ir = add i16 %i.ip, %i.iq
  br label %.loopexit.i.i.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.az, %.loopexit.i.i.i
  %.sroa.8.0.insert.insert.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.az ], [ %i.ha, %.loopexit.i.i.i ] ; 3 uses
  %i.is = trunc i32 %.sroa.8.0.insert.insert.i.i.i to i1
  br i1 %i.is, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25.i.i, !prof !30

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i.i, %bb.aw, %bb.aw, %bb.av, %bb.ba, %bb.ay, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3
  %.sroa.8.0.insert.insert.i54.i.i = phi i32 [ 513, %bb.ba ], [ 257, %.lr.ph.i.i.i ], [ 257, %.lr.ph.i.i.i.3 ], [ 257, %.lr.ph.i.i.i.2 ], [ 257, %.lr.ph.i.i.i.1 ], [ 257, %bb.ay ], [ 1, %bb.av ], [ 257, %bb.aw ], [ 257, %bb.aw ], [ %.sroa.8.0.insert.insert.i.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i.i ]
  %.sroa.4.0.extract.shift.i23.i.i = lshr i32 %.sroa.8.0.insert.insert.i54.i.i, 8
  %.sroa.4.0.extract.trunc.i24.i.i = trunc i32 %.sroa.4.0.extract.shift.i23.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !13717
  store i8 %.sroa.4.0.extract.trunc.i24.i.i, ptr %i.af, align 1, !noalias !13717
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i.invoke

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25.i.i: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i.i
  %.sroa.5.0.extract.shift.i21.i.i = lshr i32 %.sroa.8.0.insert.insert.i.i.i, 16 ; 2 uses
  %.sroa.5.0.extract.trunc.i22.i.i = trunc nuw i32 %.sroa.5.0.extract.shift.i21.i.i to i16
  %i.it = load i8, ptr %i.fu, align 8, !range !8, !alias.scope !13714, !noalias !13718, !noundef !5 ; 2 uses
  %i.iu = icmp samesign ugt i8 %i.it, 23
  %i.iv = zext nneg i8 %i.it to i64               ; 2 uses
  %i.iw = add nsw i64 %i.iv, -23
  %i.ix = select i1 %i.iu, i64 %i.iw, i64 0
  switch i64 %i.ix, label %bb.ar [
    i64 0, label %bb.bf
    i64 1, label %bb.bg
    i64 2, label %bb.bh
  ]

bb.bf:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  br label %bb.bi

bb.bg:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !13714, !noalias !13718, !nonnull !5, !noundef !5
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.jc = load i64, ptr %i.jb, align 8, !alias.scope !13714, !noalias !13718, !noundef !5
  br label %bb.bi

bb.bh:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit25.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !alias.scope !13714, !noalias !13718, !nonnull !5, !noundef !5
  %i.jf = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !alias.scope !13714, !noalias !13718, !noundef !5
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %.sroa.46.0.i.i = phi i64 [ %i.iv, %bb.bf ], [ %i.jc, %bb.bg ], [ %i.jg, %bb.bh ] ; 2 uses
  %.sroa.05.0.i.i = phi ptr [ %i.iy, %bb.bf ], [ %i.ja, %bb.bg ], [ %i.jh, %bb.bh ] ; 3 uses
  switch i64 %.sroa.46.0.i.i, label %thread-pre-split.i47.i.i [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i
    i64 1, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.ji = load i8, ptr %.sroa.05.0.i.i, align 1, !alias.scope !13719, !noalias !13718, !noundef !5 ; 2 uses
  switch i8 %i.ji, label %bb.bk [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i
  ]

thread-pre-split.i47.i.i:                         ; preds = %bb.bi
  %.pr.i48.i.i = load i8, ptr %.sroa.05.0.i.i, align 1, !alias.scope !13719, !noalias !13718
  br label %bb.bk

bb.bk:                                            ; preds = %thread-pre-split.i47.i.i, %bb.bj
  %i.jj = phi i8 [ %.pr.i48.i.i, %thread-pre-split.i47.i.i ], [ %i.ji, %bb.bj ]
  %cond.i28.i.i = icmp eq i8 %i.jj, 43            ; 2 uses
  %i.jk = sext i1 %cond.i28.i.i to i64
  %.sroa.15.0.i29.i.i = add nsw i64 %.sroa.46.0.i.i, %i.jk ; 6 uses
  %.sroa.0.0.idx.i30.i.i = zext i1 %cond.i28.i.i to i64
  %.sroa.0.0.i31.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i, i64 %.sroa.0.0.idx.i30.i.i ; 5 uses
  %i.jl = icmp samesign ult i64 %.sroa.15.0.i29.i.i, 5
  br i1 %i.jl, label %.preheader.i40.i.i, label %.preheader58.i32.i.i.preheader

.preheader.i40.i.i:                               ; preds = %bb.bk
  %.not5466.i41.i.i = icmp eq i64 %.sroa.15.0.i29.i.i, 0
  br i1 %.not5466.i41.i.i, label %.loopexit.i38.i.i, label %.lr.ph.i42.i.i

.preheader58.i32.i.i:                             ; preds = %bb.bn
  %.not53.i36.i.i = icmp eq i64 %i.jp, 0
  br i1 %.not53.i36.i.i, label %.loopexit.i38.i.i, label %.preheader58.i32.i.i.preheader

.loopexit.i38.i.i:                                ; preds = %.preheader58.i32.i.i, %bb.bo, %bb.bp, %bb.bq, %bb.br, %.preheader.i40.i.i
  %.sroa.043.1.i39.i.i = phi i16 [ %i.le, %bb.br ], [ 0, %.preheader.i40.i.i ], [ %i.kg, %bb.bo ], [ %i.ko, %bb.bp ], [ %i.kw, %bb.bq ], [ %i.ka, %.preheader58.i32.i.i ]
  %.sroa.043.1.i39.fr.i.i = freeze i16 %.sroa.043.1.i39.i.i
  %i.jm = zext i16 %.sroa.043.1.i39.fr.i.i to i32
  %i.jn = shl nuw i32 %i.jm, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.i.i

.preheader58.i32.i.i.preheader:                   ; preds = %bb.bk, %.preheader58.i32.i.i
  %.sroa.0.1.i35.i.i686 = phi ptr [ %i.jo, %.preheader58.i32.i.i ], [ %.sroa.0.0.i31.i.i, %bb.bk ] ; 2 uses
  %.sroa.15.1.i34.i.i685 = phi i64 [ %i.jp, %.preheader58.i32.i.i ], [ %.sroa.15.0.i29.i.i, %bb.bk ]
  %.sroa.043.0.i33.i.i684 = phi i16 [ %i.ka, %.preheader58.i32.i.i ], [ 0, %bb.bk ]
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i35.i.i686, i64 1
  %i.jp = add nsw i64 %.sroa.15.1.i34.i.i685, -1  ; 2 uses
  %i.jq = call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i33.i.i684, i16 10) ; 2 uses
  %i.jr = extractvalue { i16, i1 } %i.jq, 0       ; 2 uses
  %i.js = extractvalue { i16, i1 } %i.jq, 1
  %i.jt = load i8, ptr %.sroa.0.1.i35.i.i686, align 1, !alias.scope !13719, !noalias !13718, !noundef !5 ; 2 uses
  br i1 %i.js, label %bb.bm, label %bb.bl, !prof !12

bb.bl:                                            ; preds = %.preheader58.i32.i.i.preheader
  %i.ju = zext i8 %i.jt to i32
  %i.jv = add nsw i32 %i.ju, -48                  ; 2 uses
  %i.jw = icmp ult i32 %i.jv, 10
  br i1 %i.jw, label %bb.bn, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i

bb.bm:                                            ; preds = %.preheader58.i32.i.i.preheader
  %i.jx = add i8 %i.jt, -48
  %i.jy = icmp ult i8 %i.jx, 10
  %spec.select.i37.i.i = select i1 %i.jy, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.jz = trunc nuw nsw i32 %i.jv to i16
  %i.ka = add i16 %i.jr, %i.jz                    ; 3 uses
  %i.kb = icmp ult i16 %i.ka, %i.jr
  br i1 %i.kb, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i, label %.preheader58.i32.i.i, !prof !12

.lr.ph.i42.i.i:                                   ; preds = %.preheader.i40.i.i
  %i.kc = load i8, ptr %.sroa.0.0.i31.i.i, align 1, !alias.scope !13719, !noalias !13718, !noundef !5
  %i.kd = zext i8 %i.kc to i32
  %i.ke = add nsw i32 %i.kd, -48                  ; 2 uses
  %i.kf = icmp ult i32 %i.ke, 10
  br i1 %i.kf, label %bb.bo, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i

bb.bo:                                            ; preds = %.lr.ph.i42.i.i
  %i.kg = trunc nuw nsw i32 %i.ke to i16          ; 2 uses
  %.not54.i46.i.i = icmp eq i64 %.sroa.15.0.i29.i.i, 1
  br i1 %.not54.i46.i.i, label %.loopexit.i38.i.i, label %.lr.ph.i42.i.i.1

.lr.ph.i42.i.i.1:                                 ; preds = %bb.bo
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i31.i.i, i64 1
  %i.ki = load i8, ptr %i.kh, align 1, !alias.scope !13719, !noalias !13718, !noundef !5
  %i.kj = zext i8 %i.ki to i32
  %i.kk = add nsw i32 %i.kj, -48                  ; 2 uses
  %i.kl = icmp ult i32 %i.kk, 10
  br i1 %i.kl, label %bb.bp, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i

bb.bp:                                            ; preds = %.lr.ph.i42.i.i.1
  %i.km = mul nuw nsw i16 %i.kg, 10
  %i.kn = trunc nuw nsw i32 %i.kk to i16
  %i.ko = add nuw nsw i16 %i.km, %i.kn            ; 2 uses
  %.not54.i46.i.i.1 = icmp eq i64 %.sroa.15.0.i29.i.i, 2
  br i1 %.not54.i46.i.i.1, label %.loopexit.i38.i.i, label %.lr.ph.i42.i.i.2

.lr.ph.i42.i.i.2:                                 ; preds = %bb.bp
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i31.i.i, i64 2
  %i.kq = load i8, ptr %i.kp, align 1, !alias.scope !13719, !noalias !13718, !noundef !5
  %i.kr = zext i8 %i.kq to i32
  %i.ks = add nsw i32 %i.kr, -48                  ; 2 uses
  %i.kt = icmp ult i32 %i.ks, 10
  br i1 %i.kt, label %bb.bq, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i

bb.bq:                                            ; preds = %.lr.ph.i42.i.i.2
  %i.ku = mul nuw i16 %i.ko, 10
  %i.kv = trunc nuw nsw i32 %i.ks to i16
  %i.kw = add nuw nsw i16 %i.ku, %i.kv            ; 2 uses
  %.not54.i46.i.i.2 = icmp eq i64 %.sroa.15.0.i29.i.i, 3
  br i1 %.not54.i46.i.i.2, label %.loopexit.i38.i.i, label %.lr.ph.i42.i.i.3

.lr.ph.i42.i.i.3:                                 ; preds = %bb.bq
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i31.i.i, i64 3
  %i.ky = load i8, ptr %i.kx, align 1, !alias.scope !13719, !noalias !13718, !noundef !5
  %i.kz = zext i8 %i.ky to i32
  %i.la = add nsw i32 %i.kz, -48                  ; 2 uses
  %i.lb = icmp ult i32 %i.la, 10
  br i1 %i.lb, label %bb.br, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i

bb.br:                                            ; preds = %.lr.ph.i42.i.i.3
  %i.lc = mul i16 %i.kw, 10
  %i.ld = trunc nuw nsw i32 %i.la to i16
  %i.le = add i16 %i.lc, %i.ld
  br label %.loopexit.i38.i.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.i.i: ; preds = %bb.bm, %.loopexit.i38.i.i
  %.sroa.8.0.insert.insert.i27.i.i = phi i32 [ %spec.select.i37.i.i, %bb.bm ], [ %i.jn, %.loopexit.i38.i.i ] ; 3 uses
  %i.lf = trunc i32 %.sroa.8.0.insert.insert.i27.i.i to i1
  br i1 %i.lf, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit.i.i, !prof !30

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.i.i, %bb.bj, %bb.bj, %bb.bi, %bb.bn, %bb.bl, %.lr.ph.i42.i.i, %.lr.ph.i42.i.i.1, %.lr.ph.i42.i.i.2, %.lr.ph.i42.i.i.3
  %.sroa.8.0.insert.insert.i2756.i.i = phi i32 [ 513, %bb.bn ], [ 257, %.lr.ph.i42.i.i ], [ 257, %.lr.ph.i42.i.i.3 ], [ 257, %.lr.ph.i42.i.i.2 ], [ 257, %.lr.ph.i42.i.i.1 ], [ 257, %bb.bl ], [ 1, %bb.bi ], [ 257, %bb.bj ], [ 257, %bb.bj ], [ %.sroa.8.0.insert.insert.i27.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.i.i ]
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %.sroa.8.0.insert.insert.i2756.i.i, 8
  %.sroa.4.0.extract.trunc.i.i.i = trunc i32 %.sroa.4.0.extract.shift.i.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !13720
  store i8 %.sroa.4.0.extract.trunc.i.i.i, ptr %i.ag, align 1, !noalias !13720
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i.invoke

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i.invoke: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i
  %i.lg = phi ptr [ %i.ag, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i ], [ %i.af, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i ]
  %i.lh = phi ptr [ @23, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i ], [ @22, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.i.i ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 43, ptr noundef nonnull %i.lg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lh) #30
          to label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i.cont: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.thread.i.i.invoke
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit49.i.i
  %.sroa.5.0.extract.shift.i.i.i = lshr i32 %.sroa.8.0.insert.insert.i27.i.i, 16 ; 2 uses
  %.sroa.5.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.5.0.extract.shift.i.i.i to i16
  %.not.i.i67 = icmp samesign ult i32 %.sroa.5.0.extract.shift.i21.i.i, %.sroa.5.0.extract.shift.i.i.i
  br i1 %.not.i.i67, label %.lr.ph.i.i, label %bb.bs

.lr.ph.i.i:                                       ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit.i.i
  %i.li = load i32, ptr %i.bx, align 8, !alias.scope !13712, !noalias !13711
  %i.lj = zext i32 %i.li to i64                   ; 2 uses
  %i.lk = load i32, ptr %i.bw, align 4, !alias.scope !13712, !noalias !13711
  %i.ll = zext i32 %i.lk to i64
  %i.lm = add nuw nsw i64 %i.ll, %i.lj
  br label %bb.bt

bb.bs:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error13ParseIntErrorE6unwrapCshxhuDJfZv4T_6fontbe.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !13721
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, i64 noundef 36, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit

.noexc73:                                         ; preds = %bb.bs
  %i.ln = load i64, ptr %i.ah, align 8, !range !24, !noalias !13721, !noundef !5
  %i.lo = trunc nuw i64 %i.ln to i1
  %i.lp = load i64, ptr %i.ca, align 8, !range !29, !noalias !13721, !noundef !5 ; 3 uses
  br i1 %i.lo, label %bb.bu, label %bb.bv, !prof !12

bb.bt:                                            ; preds = %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_range0B19_.exit.i.i, %.lr.ph.i.i
  %.sroa.052.075.i.i = phi i16 [ %.sroa.5.0.extract.trunc.i22.i.i, %.lr.ph.i.i ], [ %i.lq, %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_range0B19_.exit.i.i ] ; 3 uses
  %i.lq = add i16 %.sroa.052.075.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !13721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !13721
  store i16 %.sroa.052.075.i.i, ptr %i.ae, align 2, !noalias !13721
  %i.lr = load ptr, ptr %i.bm, align 8, !alias.scope !13711, !noalias !13722, !nonnull !5, !align !9, !noundef !5
  %i.ls = invoke { i16, i16 } @_RINvMNtNtCscScJTt9VrQp_6fea_rs6common9glyph_mapNtB3_8GlyphMap3gettECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.lr, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.ae)
          to label %.noexc74 unwind label %.loopexit

.noexc74:                                         ; preds = %bb.bt
  %i.lt = extractvalue { i16, i16 } %i.ls, 0
  %.not.i51.i.i = icmp eq i16 %i.lt, 1
  br i1 %.not.i51.i.i, label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_range0B19_.exit.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.noexc74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !13721
  store ptr %i.ae, ptr %i.ac, align 8, !noalias !13721
  store ptr @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !13721
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull @45, ptr noundef nonnull %i.ac)
          to label %.noexc75 unwind label %.loopexit

.noexc75:                                         ; preds = %.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !13721
  invoke fastcc void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB3_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE7warningNtNtCsgCecv3eZDcN_5alloc6string6StringEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(568) %0, i64 noundef %i.lj, i64 noundef %i.lm, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ad)
          to label %_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_range0B19_.exit.i.i unwind label %.loopexit

_RNCNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB4_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_range0B19_.exit.i.i: ; preds = %.noexc75, %.noexc74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !13721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !13721
  %exitcond.not.i.i = icmp eq i16 %.sroa.052.075.i.i, %.sroa.5.0.extract.trunc.i.i.i
  br i1 %exitcond.not.i.i, label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB2_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_rangeB17_.exit, label %bb.bt

bb.bu:                                            ; preds = %.noexc73
  %i.lu = load i64, ptr %i.cb, align 8, !noalias !13721
  br label %.invoke

bb.bv:                                            ; preds = %.noexc73
  %i.lv = load ptr, ptr %i.cb, align 8, !noalias !13721, !nonnull !5, !noundef !5 ; 2 uses
  %i.lw = icmp samesign ugt i64 %i.lp, 35
  call void @llvm.assume(i1 %i.lw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !13721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.lv, ptr noundef nonnull align 1 dereferenceable(36) @24, i64 36, i1 false), !noalias !13723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !13724
  store i64 %i.lp, ptr %i.aj, align 8, !noalias !13724
  store ptr %i.lv, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !13724
  store i64 36, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !13724
  %i.lx = load i32, ptr %i.bx, align 8, !alias.scope !13712, !noalias !13711, !noundef !5
  %i.ly = zext i32 %i.lx to i64                   ; 2 uses
  %i.lz = load i32, ptr %i.bw, align 4, !alias.scope !13712, !noalias !13711, !noundef !5
  %i.ma = zext i32 %i.lz to i64
  %i.mb = add nuw nsw i64 %i.ma, %i.ly
  invoke fastcc void @_RINvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB3_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE5errorNtNtCsgCecv3eZDcN_5alloc6string6StringEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(568) %0, i64 noundef %i.ly, i64 noundef %i.mb, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aj)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit

.noexc78:                                         ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !13724
  br label %_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB2_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE20validate_glyph_rangeB17_.exit

bb.bw:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !13725)
  call void @llvm.experimental.noalias.scope.decl(metadata !13726)
  %i.mc = load i8, ptr %i.ft, align 8, !range !8, !alias.scope !13725, !noalias !13727, !noundef !5 ; 2 uses
  %i.md = icmp samesign ugt i8 %i.mc, 23
  %i.me = zext nneg i8 %i.mc to i64               ; 7 uses
  %i.mf = add nsw i64 %i.me, -23
  %i.mg = select i1 %i.md, i64 %i.mf, i64 0       ; 6 uses
  %i.mh = icmp eq i64 %i.mg, 0
  br i1 %i.mh, label %bb.by, label %.sink.split.i

bb.bx:                                            ; preds = %bb.fm, %bb.eh, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread.i.i, %bb.da, %bb.cq, %bb.cl, %bb.ck, %bb.cf, %bb.ca
  unreachable

.sink.split.i:                                    ; preds = %bb.bw
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.mj = load i64, ptr %i.mi, align 8, !alias.scope !13725, !noalias !13727, !noundef !5
  br label %bb.by

bb.by:                                            ; preds = %.sink.split.i, %bb.bw
  %.sroa.0.0.i.i = phi i64 [ %i.me, %bb.bw ], [ %i.mj, %.sink.split.i ]
  %i.mk = load i8, ptr %i.fu, align 8, !range !8, !alias.scope !13726, !noalias !13728, !noundef !5 ; 2 uses
  %i.ml = icmp samesign ugt i8 %i.mk, 23
  %i.mm = zext nneg i8 %i.mk to i64               ; 6 uses
  %i.mn = add nsw i64 %i.mm, -23
  %i.mo = select i1 %i.ml, i64 %i.mn, i64 0       ; 5 uses
  %i.mp = icmp eq i64 %i.mo, 0
  br i1 %i.mp, label %bb.bz, label %.sink.split139.i

.sink.split139.i:                                 ; preds = %bb.by
  %i.mq = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.mr = load i64, ptr %i.mq, align 8, !alias.scope !13726, !noalias !13728, !noundef !5
  br label %bb.bz

bb.bz:                                            ; preds = %.sink.split139.i, %bb.by
  %.sroa.04.0.i.i = phi i64 [ %i.mm, %bb.by ], [ %i.mr, %.sink.split139.i ]
  %.not.i2.i = icmp eq i64 %.sroa.0.0.i.i, %.sroa.04.0.i.i
  br i1 %.not.i2.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  switch i64 %i.mg, label %bb.bx [
    i64 0, label %bb.cc
    i64 1, label %bb.cd
    i64 2, label %bb.ce
  ]

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !13729
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef 45, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit

.noexc79:                                         ; preds = %bb.cb
  %i.ms = load i64, ptr %i.ab, align 8, !range !24, !noalias !13729, !noundef !5
  %i.mt = trunc nuw i64 %i.ms to i1
  %i.mu = load i64, ptr %i.bp, align 8, !range !29, !noalias !13729, !noundef !5 ; 3 uses
  br i1 %i.mt, label %bb.ft, label %bb.fu, !prof !12

bb.cc:                                            ; preds = %bb.ca
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  br label %bb.cf

bb.cd:                                            ; preds = %bb.ca
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !alias.scope !13725, !noalias !13727, !nonnull !5, !noundef !5
  %i.my = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.mz = load i64, ptr %i.my, align 8, !alias.scope !13725, !noalias !13727, !noundef !5
  br label %bb.cf

bb.ce:                                            ; preds = %bb.ca
  %i.na = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !alias.scope !13725, !noalias !13727, !nonnull !5, !noundef !5
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.nd = load i64, ptr %i.nc, align 8, !alias.scope !13725, !noalias !13727, !noundef !5
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  br label %bb.cf
end_hunk_4
begin_hunk_5_@_RNvMNtNtCscScJTt9VrQp_6fea_rs7compile8validateINtB2_13ValidationCtxNtNtCshxhuDJfZv4T_6fontbe8features16FeaVariationInfoE28validate_glyph_class_literalB17_:.lr.ph

bb.df:                                            ; preds = %bb.de
  %i.pt = icmp eq i64 %i.nq, %.sroa.6.0.i.i
  br i1 %i.pt, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pu = icmp eq i64 %i.nq, 0
  br i1 %i.pu, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.di, %bb.dg
  %i.pv = icmp eq i64 %i.nr, %.sroa.6.0.i.i
  br i1 %i.pv, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.i.i

bb.di:                                            ; preds = %bb.dg
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i.i, i64 %i.nq
  %i.px = load i8, ptr %i.pw, align 1, !alias.scope !13731, !noalias !13730, !noundef !5
  %i.py = icmp sgt i8 %i.px, -65
  br i1 %i.py, label %bb.dh, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread130.i.i.invoke, !prof !32

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.i.i: ; preds = %bb.dh
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i.i, i64 %i.nr
  %i.qa = load i8, ptr %i.pz, align 1, !alias.scope !13731, !noalias !13730, !noundef !5
  %i.qb = icmp sgt i8 %i.qa, -65
  br i1 %i.qb, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread130.i.i.invoke, !prof !33

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread.i.i: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.i.i, %bb.dh, %bb.df
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i.i, i64 %i.nq ; 3 uses
  switch i64 %i.mo, label %bb.bx [
    i64 0, label %bb.dj
    i64 1, label %bb.dk
    i64 2, label %bb.dl
  ]

bb.dj:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  br label %bb.dm

bb.dk:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread.i.i
  %i.qe = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !alias.scope !13726, !noalias !13728, !nonnull !5, !noundef !5
  %i.qg = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.qh = load i64, ptr %i.qg, align 8, !alias.scope !13726, !noalias !13728, !noundef !5
  br label %bb.dm

bb.dl:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.thread.i.i
  %i.qi = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8, !alias.scope !13726, !noalias !13728, !nonnull !5, !noundef !5
  %i.qk = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.ql = load i64, ptr %i.qk, align 8, !alias.scope !13726, !noalias !13728, !noundef !5
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %bb.dj
  %.sroa.624.0.i.i = phi i64 [ %i.mm, %bb.dj ], [ %i.qh, %bb.dk ], [ %i.ql, %bb.dl ] ; 6 uses
  %.sroa.021.0.i.i = phi ptr [ %i.qd, %bb.dj ], [ %i.qf, %bb.dk ], [ %i.qm, %bb.dl ] ; 6 uses
  %i.qn = icmp ugt i64 %i.nr, %.sroa.624.0.i.i
  br i1 %i.qn, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread130.i.i.invoke, label %bb.dn, !prof !31

bb.dn:                                            ; preds = %bb.dm
  %i.qo = icmp eq i64 %i.nq, %.sroa.624.0.i.i
  br i1 %i.qo, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.qp = icmp eq i64 %i.nq, 0
  br i1 %i.qp, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.dq, %bb.do
  %i.qq = icmp eq i64 %i.nr, %.sroa.624.0.i.i
  br i1 %i.qq, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i

bb.dq:                                            ; preds = %bb.do
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.021.0.i.i, i64 %i.nq
  %i.qs = load i8, ptr %i.qr, align 1, !alias.scope !13732, !noalias !13730, !noundef !5
  %i.qt = icmp sgt i8 %i.qs, -65
  br i1 %i.qt, label %bb.dp, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread130.i.i.invoke, !prof !32

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i: ; preds = %bb.dp
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.021.0.i.i, i64 %i.nr
  %i.qv = load i8, ptr %i.qu, align 1, !alias.scope !13732, !noalias !13730, !noundef !5
  %i.qw = icmp sgt i8 %i.qv, -65
  br i1 %i.qw, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread130.i.i.invoke, !prof !33

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread130.i.i.invoke: ; preds = %bb.dm, %bb.dq, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i, %bb.de, %bb.di, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.i.i
  %i.qx = phi ptr [ %.sroa.016.0.i.i, %bb.de ], [ %.sroa.016.0.i.i, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.i.i ], [ %.sroa.016.0.i.i, %bb.di ], [ %.sroa.021.0.i.i, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i ], [ %.sroa.021.0.i.i, %bb.dq ], [ %.sroa.021.0.i.i, %bb.dm ]
  %i.qy = phi i64 [ %.sroa.6.0.i.i, %bb.de ], [ %.sroa.6.0.i.i, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.i.i ], [ %.sroa.6.0.i.i, %bb.di ], [ %.sroa.624.0.i.i, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i ], [ %.sroa.624.0.i.i, %bb.dq ], [ %.sroa.624.0.i.i, %bb.dm ]
  %i.qz = phi ptr [ @27, %bb.de ], [ @27, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit92.i.i ], [ @27, %bb.di ], [ @28, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i ], [ @28, %bb.dq ], [ @28, %bb.dm ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qx, i64 noundef %i.qy, i64 noundef %i.nq, i64 noundef %i.nr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qz) #30
          to label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread130.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread130.i.i.cont: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread130.i.i.invoke
  unreachable

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i, %bb.dp, %bb.dn
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.021.0.i.i, i64 %i.nq ; 3 uses
  switch i64 %i.nt, label %thread-pre-split.i.i25.i [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread.i.i
    i64 1, label %bb.dr
  ]

bb.dr:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i
  %i.rb = load i8, ptr %i.qc, align 1, !alias.scope !13733, !noalias !13730, !noundef !5 ; 2 uses
  switch i8 %i.rb, label %bb.ds [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread138.i.i
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread138.i.i
  ]

thread-pre-split.i.i25.i:                         ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i
  %.pr.i.i26.i = load i8, ptr %i.qc, align 1, !alias.scope !13733, !noalias !13730
  br label %bb.ds

bb.ds:                                            ; preds = %thread-pre-split.i.i25.i, %bb.dr
  %i.rc = phi i8 [ %.pr.i.i26.i, %thread-pre-split.i.i25.i ], [ %i.rb, %bb.dr ]
  %cond.i.i5.i = icmp eq i8 %i.rc, 43             ; 2 uses
  %i.rd = sext i1 %cond.i.i5.i to i64
  %.sroa.15.0.i.i6.i = add nsw i64 %i.nt, %i.rd   ; 6 uses
  %.sroa.0.0.idx.i.i7.i = zext i1 %cond.i.i5.i to i64
  %.sroa.0.0.i96.i.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 %.sroa.0.0.idx.i.i7.i ; 5 uses
  %i.re = icmp samesign ult i64 %.sroa.15.0.i.i6.i, 5
  br i1 %i.re, label %.preheader.i.i18.i, label %.preheader58.i.i8.i.preheader

.preheader.i.i18.i:                               ; preds = %bb.ds
  %.not5466.i.i19.i = icmp eq i64 %.sroa.15.0.i.i6.i, 0
  br i1 %.not5466.i.i19.i, label %.loopexit.i.i16.i, label %.lr.ph.i.i20.i

.preheader58.i.i8.i:                              ; preds = %bb.dv
  %.not53.i.i12.i = icmp eq i64 %i.ri, 0
  br i1 %.not53.i.i12.i, label %.loopexit.i.i16.i, label %.preheader58.i.i8.i.preheader

.loopexit.i.i16.i:                                ; preds = %.preheader58.i.i8.i, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %.preheader.i.i18.i
  %.sroa.043.1.i.i17.i = phi i16 [ %i.sx, %bb.dz ], [ 0, %.preheader.i.i18.i ], [ %i.rz, %bb.dw ], [ %i.sh, %bb.dx ], [ %i.sp, %bb.dy ], [ %i.rt, %.preheader58.i.i8.i ]
  %i.rf = zext i16 %.sroa.043.1.i.i17.i to i32
  %i.rg = shl nuw i32 %i.rf, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i

.preheader58.i.i8.i.preheader:                    ; preds = %bb.ds, %.preheader58.i.i8.i
  %.sroa.0.1.i.i11.i677 = phi ptr [ %i.rh, %.preheader58.i.i8.i ], [ %.sroa.0.0.i96.i.i, %bb.ds ] ; 2 uses
  %.sroa.15.1.i.i10.i676 = phi i64 [ %i.ri, %.preheader58.i.i8.i ], [ %.sroa.15.0.i.i6.i, %bb.ds ]
  %.sroa.043.0.i.i9.i675 = phi i16 [ %i.rt, %.preheader58.i.i8.i ], [ 0, %bb.ds ]
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i11.i677, i64 1
  %i.ri = add nsw i64 %.sroa.15.1.i.i10.i676, -1  ; 2 uses
  %i.rj = call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i.i9.i675, i16 10) ; 2 uses
  %i.rk = extractvalue { i16, i1 } %i.rj, 0       ; 2 uses
  %i.rl = extractvalue { i16, i1 } %i.rj, 1
  %i.rm = load i8, ptr %.sroa.0.1.i.i11.i677, align 1, !alias.scope !13733, !noalias !13730, !noundef !5 ; 2 uses
  br i1 %i.rl, label %bb.du, label %bb.dt, !prof !12

bb.dt:                                            ; preds = %.preheader58.i.i8.i.preheader
  %i.rn = zext i8 %i.rm to i32
  %i.ro = add nsw i32 %i.rn, -48                  ; 2 uses
  %i.rp = icmp ult i32 %i.ro, 10
  br i1 %i.rp, label %bb.dv, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i

bb.du:                                            ; preds = %.preheader58.i.i8.i.preheader
  %i.rq = add i8 %i.rm, -48
  %i.rr = icmp ult i8 %i.rq, 10
  %spec.select.i.i15.i = select i1 %i.rr, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i

bb.dv:                                            ; preds = %bb.dt
  %i.rs = trunc nuw nsw i32 %i.ro to i16
  %i.rt = add i16 %i.rk, %i.rs                    ; 3 uses
  %i.ru = icmp ult i16 %i.rt, %i.rk
  br i1 %i.ru, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i, label %.preheader58.i.i8.i, !prof !12

.lr.ph.i.i20.i:                                   ; preds = %.preheader.i.i18.i
  %i.rv = load i8, ptr %.sroa.0.0.i96.i.i, align 1, !alias.scope !13733, !noalias !13730, !noundef !5
  %i.rw = zext i8 %i.rv to i32
  %i.rx = add nsw i32 %i.rw, -48                  ; 2 uses
  %i.ry = icmp ult i32 %i.rx, 10
  br i1 %i.ry, label %bb.dw, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i

bb.dw:                                            ; preds = %.lr.ph.i.i20.i
  %i.rz = trunc nuw nsw i32 %i.rx to i16          ; 2 uses
  %.not54.i.i24.i = icmp eq i64 %.sroa.15.0.i.i6.i, 1
  br i1 %.not54.i.i24.i, label %.loopexit.i.i16.i, label %.lr.ph.i.i20.i.1

.lr.ph.i.i20.i.1:                                 ; preds = %bb.dw
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i96.i.i, i64 1
  %i.sb = load i8, ptr %i.sa, align 1, !alias.scope !13733, !noalias !13730, !noundef !5
  %i.sc = zext i8 %i.sb to i32
  %i.sd = add nsw i32 %i.sc, -48                  ; 2 uses
  %i.se = icmp ult i32 %i.sd, 10
  br i1 %i.se, label %bb.dx, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i

bb.dx:                                            ; preds = %.lr.ph.i.i20.i.1
  %i.sf = mul nuw nsw i16 %i.rz, 10
  %i.sg = trunc nuw nsw i32 %i.sd to i16
  %i.sh = add nuw nsw i16 %i.sf, %i.sg            ; 2 uses
  %.not54.i.i24.i.1 = icmp eq i64 %.sroa.15.0.i.i6.i, 2
  br i1 %.not54.i.i24.i.1, label %.loopexit.i.i16.i, label %.lr.ph.i.i20.i.2

.lr.ph.i.i20.i.2:                                 ; preds = %bb.dx
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i96.i.i, i64 2
  %i.sj = load i8, ptr %i.si, align 1, !alias.scope !13733, !noalias !13730, !noundef !5
  %i.sk = zext i8 %i.sj to i32
  %i.sl = add nsw i32 %i.sk, -48                  ; 2 uses
  %i.sm = icmp ult i32 %i.sl, 10
  br i1 %i.sm, label %bb.dy, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i

bb.dy:                                            ; preds = %.lr.ph.i.i20.i.2
  %i.sn = mul nuw i16 %i.sh, 10
  %i.so = trunc nuw nsw i32 %i.sl to i16
  %i.sp = add nuw nsw i16 %i.sn, %i.so            ; 2 uses
  %.not54.i.i24.i.2 = icmp eq i64 %.sroa.15.0.i.i6.i, 3
  br i1 %.not54.i.i24.i.2, label %.loopexit.i.i16.i, label %.lr.ph.i.i20.i.3

.lr.ph.i.i20.i.3:                                 ; preds = %bb.dy
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i96.i.i, i64 3
  %i.sr = load i8, ptr %i.sq, align 1, !alias.scope !13733, !noalias !13730, !noundef !5
  %i.ss = zext i8 %i.sr to i32
  %i.st = add nsw i32 %i.ss, -48                  ; 2 uses
  %i.su = icmp ult i32 %i.st, 10
  br i1 %i.su, label %bb.dz, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i

bb.dz:                                            ; preds = %.lr.ph.i.i20.i.3
  %i.sv = mul i16 %i.sp, 10
  %i.sw = trunc nuw nsw i32 %i.st to i16
  %i.sx = add i16 %i.sv, %i.sw
  br label %.loopexit.i.i16.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i: ; preds = %bb.dv, %bb.dt, %.lr.ph.i.i20.i, %.lr.ph.i.i20.i.1, %.lr.ph.i.i20.i.2, %.lr.ph.i.i20.i.3, %bb.du, %.loopexit.i.i16.i
  %.sroa.8.0.insert.insert.i.i14.i = phi i32 [ 257, %.lr.ph.i.i20.i ], [ %i.rg, %.loopexit.i.i16.i ], [ %spec.select.i.i15.i, %bb.du ], [ 257, %.lr.ph.i.i20.i.3 ], [ 257, %.lr.ph.i.i20.i.2 ], [ 257, %.lr.ph.i.i20.i.1 ], [ 513, %bb.dv ], [ 257, %bb.dt ] ; 3 uses
  %.sroa.576.0.extract.shift.i.i = lshr i32 %.sroa.8.0.insert.insert.i.i14.i, 16 ; 3 uses
  %.sroa.576.0.extract.trunc.i.i = trunc nuw i32 %.sroa.576.0.extract.shift.i.i to i16 ; 2 uses
  switch i64 %i.nt, label %thread-pre-split.i117.i.i [
    i64 0, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread.i.i
    i64 1, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread138.i.i
  ]

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread138.i.i: ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i, %bb.dr, %bb.dr
  %.sroa.576.0.extract.trunc147.i.i = phi i16 [ %.sroa.576.0.extract.trunc.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i ], [ 0, %bb.dr ], [ 0, %bb.dr ]
  %.sroa.576.0.extract.shift145.i.i = phi i32 [ %.sroa.576.0.extract.shift.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i ], [ 0, %bb.dr ], [ 0, %bb.dr ]
  %.sroa.8.0.insert.insert.i143.i.i = phi i32 [ %.sroa.8.0.insert.insert.i.i14.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i ], [ 257, %bb.dr ], [ 257, %bb.dr ]
  %i.sy = load i8, ptr %i.ra, align 1, !alias.scope !13734, !noalias !13730, !noundef !5 ; 2 uses
  switch i8 %i.sy, label %bb.ea [
    i8 43, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread.i.i
    i8 45, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread.i.i
  ]

thread-pre-split.i117.i.i:                        ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i
  %.pr.i118.i.i = load i8, ptr %i.ra, align 1, !alias.scope !13734, !noalias !13730
  br label %bb.ea

bb.ea:                                            ; preds = %thread-pre-split.i117.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread138.i.i
  %.sroa.576.0.extract.trunc146.i.i = phi i16 [ %.sroa.576.0.extract.trunc.i.i, %thread-pre-split.i117.i.i ], [ %.sroa.576.0.extract.trunc147.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread138.i.i ] ; 3 uses
  %.sroa.576.0.extract.shift144.i.i = phi i32 [ %.sroa.576.0.extract.shift.i.i, %thread-pre-split.i117.i.i ], [ %.sroa.576.0.extract.shift145.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread138.i.i ]
  %.sroa.8.0.insert.insert.i142.i.i = phi i32 [ %.sroa.8.0.insert.insert.i.i14.i, %thread-pre-split.i117.i.i ], [ %.sroa.8.0.insert.insert.i143.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread138.i.i ]
  %i.sz = phi i8 [ %.pr.i118.i.i, %thread-pre-split.i117.i.i ], [ %i.sy, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread138.i.i ]
  %cond.i98.i.i = icmp eq i8 %i.sz, 43            ; 2 uses
  %i.ta = sext i1 %cond.i98.i.i to i64
  %.sroa.15.0.i99.i.i = add nsw i64 %i.nt, %i.ta  ; 6 uses
  %.sroa.0.0.idx.i100.i.i = zext i1 %cond.i98.i.i to i64
  %.sroa.0.0.i101.i.i = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.sroa.0.0.idx.i100.i.i ; 5 uses
  %i.tb = icmp samesign ult i64 %.sroa.15.0.i99.i.i, 5
  br i1 %i.tb, label %.preheader.i110.i.i, label %.preheader58.i102.i.i.preheader

.preheader.i110.i.i:                              ; preds = %bb.ea
  %.not5466.i111.i.i = icmp eq i64 %.sroa.15.0.i99.i.i, 0
  br i1 %.not5466.i111.i.i, label %.loopexit.i108.i.i, label %.lr.ph.i112.i.i

.preheader58.i102.i.i:                            ; preds = %bb.eb
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i105.i.i680, i64 1
  %i.td = add nsw i64 %.sroa.15.1.i104.i.i679, -1 ; 2 uses
  %.not53.i106.i.i = icmp eq i64 %i.td, 0
  br i1 %.not53.i106.i.i, label %.loopexit.i108.i.i, label %.preheader58.i102.i.i.preheader

.loopexit.i108.i.i:                               ; preds = %.preheader58.i102.i.i, %bb.ed, %bb.ee, %bb.ef, %bb.eg, %.preheader.i110.i.i
  %.sroa.043.1.i109.i.i = phi i16 [ %i.uv, %bb.eg ], [ 0, %.preheader.i110.i.i ], [ %i.tx, %bb.ed ], [ %i.uf, %bb.ee ], [ %i.un, %bb.ef ], [ %i.to, %.preheader58.i102.i.i ]
  %i.te = zext i16 %.sroa.043.1.i109.i.i to i32
  %i.tf = shl nuw i32 %i.te, 16
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.i.i

.preheader58.i102.i.i.preheader:                  ; preds = %bb.ea, %.preheader58.i102.i.i
  %.sroa.0.1.i105.i.i680 = phi ptr [ %i.tc, %.preheader58.i102.i.i ], [ %.sroa.0.0.i101.i.i, %bb.ea ] ; 3 uses
  %.sroa.15.1.i104.i.i679 = phi i64 [ %i.td, %.preheader58.i102.i.i ], [ %.sroa.15.0.i99.i.i, %bb.ea ]
  %.sroa.043.0.i103.i.i678 = phi i16 [ %i.to, %.preheader58.i102.i.i ], [ 0, %bb.ea ]
  %i.tg = call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i103.i.i678, i16 10) ; 2 uses
  %i.th = extractvalue { i16, i1 } %i.tg, 1
  br i1 %i.th, label %bb.ec, label %bb.eb, !prof !12

bb.eb:                                            ; preds = %.preheader58.i102.i.i.preheader
  %i.ti = extractvalue { i16, i1 } %i.tg, 0       ; 2 uses
  %i.tj = load i8, ptr %.sroa.0.1.i105.i.i680, align 1, !alias.scope !13734, !noalias !13730, !noundef !5
  %i.tk = zext i8 %i.tj to i32
  %i.tl = add nsw i32 %i.tk, -48                  ; 2 uses
  %i.tm = icmp ugt i32 %i.tl, 9
  %i.tn = trunc nuw nsw i32 %i.tl to i16
  %i.to = add i16 %i.ti, %i.tn                    ; 3 uses
  %i.tp = icmp ult i16 %i.to, %i.ti
  %or.cond159.i.i = select i1 %i.tm, i1 true, i1 %i.tp, !prof !34
  br i1 %or.cond159.i.i, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread.i.i, label %.preheader58.i102.i.i, !prof !34

bb.ec:                                            ; preds = %.preheader58.i102.i.i.preheader
  %i.tq = load i8, ptr %.sroa.0.1.i105.i.i680, align 1, !alias.scope !13734, !noalias !13730, !noundef !5
  %i.tr = add i8 %i.tq, -48
  %i.ts = icmp ult i8 %i.tr, 10
  %spec.select.i107.i.i = select i1 %i.ts, i32 513, i32 257
  br label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.i.i

.lr.ph.i112.i.i:                                  ; preds = %.preheader.i110.i.i
  %i.tt = load i8, ptr %.sroa.0.0.i101.i.i, align 1, !alias.scope !13734, !noalias !13730, !noundef !5
  %i.tu = zext i8 %i.tt to i32
  %i.tv = add nsw i32 %i.tu, -48                  ; 2 uses
  %i.tw = icmp ult i32 %i.tv, 10
  br i1 %i.tw, label %bb.ed, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread.i.i

bb.ed:                                            ; preds = %.lr.ph.i112.i.i
  %i.tx = trunc nuw nsw i32 %i.tv to i16          ; 2 uses
  %.not54.i116.i.i = icmp eq i64 %.sroa.15.0.i99.i.i, 1
  br i1 %.not54.i116.i.i, label %.loopexit.i108.i.i, label %.lr.ph.i112.i.i.1

.lr.ph.i112.i.i.1:                                ; preds = %bb.ed
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i101.i.i, i64 1
  %i.tz = load i8, ptr %i.ty, align 1, !alias.scope !13734, !noalias !13730, !noundef !5
  %i.ua = zext i8 %i.tz to i32
  %i.ub = add nsw i32 %i.ua, -48                  ; 2 uses
  %i.uc = icmp ult i32 %i.ub, 10
  br i1 %i.uc, label %bb.ee, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread.i.i

bb.ee:                                            ; preds = %.lr.ph.i112.i.i.1
  %i.ud = mul nuw nsw i16 %i.tx, 10
  %i.ue = trunc nuw nsw i32 %i.ub to i16
  %i.uf = add nuw nsw i16 %i.ud, %i.ue            ; 2 uses
  %.not54.i116.i.i.1 = icmp eq i64 %.sroa.15.0.i99.i.i, 2
  br i1 %.not54.i116.i.i.1, label %.loopexit.i108.i.i, label %.lr.ph.i112.i.i.2

.lr.ph.i112.i.i.2:                                ; preds = %bb.ee
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i101.i.i, i64 2
  %i.uh = load i8, ptr %i.ug, align 1, !alias.scope !13734, !noalias !13730, !noundef !5
  %i.ui = zext i8 %i.uh to i32
  %i.uj = add nsw i32 %i.ui, -48                  ; 2 uses
  %i.uk = icmp ult i32 %i.uj, 10
  br i1 %i.uk, label %bb.ef, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread.i.i

bb.ef:                                            ; preds = %.lr.ph.i112.i.i.2
  %i.ul = mul nuw i16 %i.uf, 10
  %i.um = trunc nuw nsw i32 %i.uj to i16
  %i.un = add nuw nsw i16 %i.ul, %i.um            ; 2 uses
  %.not54.i116.i.i.2 = icmp eq i64 %.sroa.15.0.i99.i.i, 3
  br i1 %.not54.i116.i.i.2, label %.loopexit.i108.i.i, label %.lr.ph.i112.i.i.3

.lr.ph.i112.i.i.3:                                ; preds = %bb.ef
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i101.i.i, i64 3
  %i.up = load i8, ptr %i.uo, align 1, !alias.scope !13734, !noalias !13730, !noundef !5
  %i.uq = zext i8 %i.up to i32
  %i.ur = add nsw i32 %i.uq, -48                  ; 2 uses
  %i.us = icmp ult i32 %i.ur, 10
  br i1 %i.us, label %bb.eg, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread.i.i

bb.eg:                                            ; preds = %.lr.ph.i112.i.i.3
  %i.ut = mul i16 %i.un, 10
  %i.uu = trunc nuw nsw i32 %i.ur to i16
  %i.uv = add i16 %i.ut, %i.uu
  br label %.loopexit.i108.i.i

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.i.i: ; preds = %bb.ec, %.loopexit.i108.i.i
  %.sroa.8.0.insert.insert.i97.i.i = phi i32 [ %spec.select.i107.i.i, %bb.ec ], [ %i.tf, %.loopexit.i108.i.i ] ; 2 uses
  %.sroa.579.0.extract.shift.i.i = lshr i32 %.sroa.8.0.insert.insert.i97.i.i, 16 ; 2 uses
  %.sroa.579.0.extract.trunc.i.i = trunc nuw i32 %.sroa.579.0.extract.shift.i.i to i16 ; 2 uses
  %i.uw = trunc i32 %.sroa.8.0.insert.insert.i142.i.i to i1
  %i.ux = trunc i32 %.sroa.8.0.insert.insert.i97.i.i to i1
  %or.cond86.i.i = select i1 %i.uw, i1 true, i1 %i.ux
  %i.uy = icmp samesign uge i32 %.sroa.576.0.extract.shift144.i.i, %.sroa.579.0.extract.shift.i.i
  %or.cond87.not.i.i = select i1 %or.cond86.i.i, i1 true, i1 %i.uy
  br i1 %or.cond87.not.i.i, label %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread.i.i, label %bb.eh

_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread.i.i: ; preds = %bb.eb, %.lr.ph.i112.i.i, %.lr.ph.i112.i.i.1, %.lr.ph.i112.i.i.2, %.lr.ph.i112.i.i.3, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread138.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.thread138.i.i, %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit.i13.i, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !13729
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, i64 noundef 97, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit

.noexc86:                                         ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.thread.i.i
  %i.uz = load i64, ptr %i.z, align 8, !range !24, !noalias !13729, !noundef !5
  %i.va = trunc nuw i64 %i.uz to i1
  %i.vb = load i64, ptr %i.by, align 8, !range !29, !noalias !13729, !noundef !5 ; 3 uses
  br i1 %i.va, label %bb.fh, label %bb.fi, !prof !12

bb.eh:                                            ; preds = %_RNvMsz_NtCsf3Ta7LF998c_4core3numt27from_ascii_bytes_radix_impl.exit119.i.i
  switch i64 %i.mg, label %bb.bx [
    i64 0, label %bb.ei
    i64 1, label %bb.ej
    i64 2, label %bb.ek
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  br label %bb.el

bb.ej:                                            ; preds = %bb.eh
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.ve = load ptr, ptr %i.vd, align 8, !alias.scope !13725, !noalias !13727, !nonnull !5, !noundef !5
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.vg = load i64, ptr %i.vf, align 8, !alias.scope !13725, !noalias !13727, !noundef !5
  br label %bb.el

bb.ek:                                            ; preds = %bb.eh
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8, !alias.scope !13725, !noalias !13727, !nonnull !5, !noundef !5
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.vk = load i64, ptr %i.vj, align 8, !alias.scope !13725, !noalias !13727, !noundef !5
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei
  %.sroa.433.0.i.i = phi i64 [ %i.me, %bb.ei ], [ %i.vg, %bb.ej ], [ %i.vk, %bb.ek ] ; 5 uses
  %.sroa.032.0.i.i = phi ptr [ %i.vc, %bb.ei ], [ %i.ve, %bb.ej ], [ %i.vl, %bb.ek ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !13735
  store i64 0, ptr %i.y, align 8, !noalias !13735
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !13735
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !13735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !13735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !13735
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %.sroa.433.0.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.eo unwind label %.loopexit166, !noalias !13736

.body52.i.i.i:                                    ; preds = %.loopexit166, %.loopexit.split-lp167, %bb.ex, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i45.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i45.i.i.i ], [ %i.we, %bb.ex ], [ %lpad.loopexit168, %.loopexit166 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp167 ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i unwind label %bb.em, !noalias !13736

bb.em:                                            ; preds = %.body52.i.i.i
  %i.vm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i.i.i unwind label %bb.en, !noalias !13736

bb.en:                                            ; preds = %bb.em
  %i.vn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !13736
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i: ; preds = %.body52.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body unwind label %bb.fg, !noalias !13736

.loopexit166:                                     ; preds = %bb.el, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i51.i.i.i
  %lpad.loopexit168 = landingpad { ptr, i32 }
          cleanup
  br label %.body52.i.i.i

.loopexit.split-lp167:                            ; preds = %bb.ep
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body52.i.i.i

bb.eo:                                            ; preds = %bb.el
  %i.vo = load i64, ptr %i.u, align 8, !range !24, !noalias !13735, !noundef !5
  %i.vp = trunc nuw i64 %i.vo to i1
  %i.vq = load i64, ptr %i.bt, align 8, !range !29, !noalias !13735, !noundef !5 ; 3 uses
  br i1 %i.vp, label %bb.ep, label %bb.eq, !prof !12

bb.ep:                                            ; preds = %bb.eo
  %i.vr = load i64, ptr %i.bu, align 8, !noalias !13735
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.vq, i64 %i.vr) #29
          to label %bb.ew unwind label %.loopexit.split-lp167, !noalias !13736

bb.eq:                                            ; preds = %bb.eo
  %i.vs = load ptr, ptr %i.bu, align 8, !noalias !13735, !nonnull !5, !noundef !5 ; 2 uses
  %i.vt = icmp ule i64 %.sroa.433.0.i.i, %i.vq
  call void @llvm.assume(i1 %i.vt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !13735
  %.not.i.i.i = icmp eq i64 %.sroa.433.0.i.i, 0
  br i1 %.not.i.i.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.es, %bb.eq
  store i64 %i.vq, ptr %i.x, align 8, !noalias !13735
  store ptr %i.vs, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !13735
  store i64 %.sroa.433.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !13735
  %i.vu = icmp ult i16 %.sroa.576.0.extract.trunc146.i.i, %.sroa.579.0.extract.trunc.i.i
  br i1 %i.vu, label %.lr.ph.i120.i.i, label %._crit_edge.i.i.i

.lr.ph.i120.i.i:                                  ; preds = %bb.er
  %i.vv = icmp ugt i64 %i.nt, 65535
  %i.vw = trunc nuw i64 %i.nt to i16
  br i1 %i.vv, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.preheader.i, !prof !12

.lr.ph.split.i.i.preheader.i:                     ; preds = %.lr.ph.i120.i.i
  %i.vx = load i32, ptr %i.bx, align 8, !alias.scope !13712, !noalias !13711
  %i.vy = load i32, ptr %i.bw, align 4, !alias.scope !13712, !noalias !13711
  %i.vz = zext i32 %i.vy to i64
  %i.wa = zext i32 %i.vx to i64                   ; 2 uses
  %i.wb = add nuw nsw i64 %i.vz, %i.wa
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i120.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !13735
  store i16 %.sroa.576.0.extract.trunc146.i.i, ptr %i.w, align 2, !noalias !13735
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !13735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !13735
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #29
          to label %bb.ew unwind label %.loopexit.split-lp.i.i.i, !noalias !13736

bb.es:                                            ; preds = %bb.eq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vs, ptr nonnull readonly align 1 %.sroa.032.0.i.i, i64 %.sroa.433.0.i.i, i1 false), !noalias !13730
  br label %bb.er

.loopexit.i121.i.i:                               ; preds = %.noexc60.i.i.i, %.split.i.i.i.i, %bb.fe, %bb.fd, %.lr.ph.split.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

.loopexit.split-lp.i.i.i:                         ; preds = %bb.fc, %.lr.ph.split.us.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.et:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i121.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i121.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i45.i.i.i unwind label %bb.eu, !noalias !13736

bb.eu:                                            ; preds = %bb.et
  %i.wc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.i.i.i unwind label %bb.ev, !noalias !13736

bb.ev:                                            ; preds = %bb.eu
  %i.wd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !13736
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i45.i.i.i: ; preds = %bb.et
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body52.i.i.i unwind label %bb.fg, !noalias !13736

bb.ew:                                            ; preds = %.lr.ph.split.us.i.i.i, %bb.ep
  unreachable

._crit_edge.i.i.i:                                ; preds = %bb.ff, %bb.er
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECshxhuDJfZv4T_6fontbe.exit.i51.i.i.i unwind label %bb.ex, !noalias !13736

bb.ex:                                            ; preds = %._crit_edge.i.i.i
end_hunk_5
