Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.08?download=true
inline.NumInlined: 3910
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXsm_NtNtCs1dZk1kIfPhr_19candle_transformers6models9debertav2NtB5_6ConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone:bb.a
bb.r:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXNtCsbDKHzkXHCUM_9hashbrown3mapINtB2_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringmNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bk)
          to label %bb.w unwind label %bb.u

bb.t:                                             ; preds = %bb.p, %bb.w
  %.sroa.012.0 = phi ptr [ %.sroa.023.0.copyload, %bb.w ], [ null, %bb.p ]
  %i.bn = trunc nuw i64 %i.bb to i1
  %.sroa.511.0 = select i1 %i.bn, i64 %i.bd, i64 undef
  %i.bo = trunc nuw i64 %i.ax to i1
  %.sroa.59.0 = select i1 %i.bo, i64 %i.az, i64 undef
  %i.bp = trunc nuw i64 %i.ar to i1
  %.sroa.57.0 = select i1 %i.bp, i64 %i.at, i64 undef
  %i.bq = trunc nuw i64 %i.an to i1
  %.sroa.55.0 = select i1 %i.bq, i64 %i.ap, i64 undef
  %i.br = trunc nuw i64 %i.ah to i1
  %.sroa.52.0 = select i1 %i.br, i64 %i.aj, i64 undef
  %i.bs = trunc nuw i64 %i.aa to i1
  %.sroa.5.0 = select i1 %i.bs, i64 %i.ac, i64 undef
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bu = load i64, ptr %i.bt, align 8, !range !5, !noundef !4 ; 2 uses
  %i.bv = trunc nuw i64 %i.bu to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bx = load double, ptr %i.bw, align 8
  %.sroa.517.0 = select i1 %i.bv, double %i.bx, double undef
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.bz = load i8, ptr %i.by, align 4, !range !28, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cb = load i64, ptr %i.ca, align 8, !range !5, !noundef !4 ; 2 uses
  %i.cc = trunc nuw i64 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ce = load i64, ptr %i.cd, align 8
  %.sroa.520.0 = select i1 %i.cc, i64 %i.ce, i64 undef
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cg = load i64, ptr %i.cf, align 8, !range !5, !noundef !4 ; 2 uses
  %i.ch = trunc nuw i64 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cj = load double, ptr %i.ci, align 8
  %.sroa.522.0 = select i1 %i.ch, double %i.cj, double undef
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <2 x i64> %i.j, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 232
  store <2 x i64> %i.l, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %i.n, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 410
  store i8 %i.p, ptr %i.cn, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <2 x double> %i.r, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x i64> %i.t, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <2 x double> %i.v, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i8 %i.x, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %i.z, ptr %i.cs, align 8
  store i64 %i.aa, ptr %0, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 409
  store i8 %i.ae, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.52.0, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 411
  store i8 %i.al, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.an, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.55.0, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ar, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.57.0, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ax, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.59.0, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.bb, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.511.0, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dj, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %.sroa.012.0, ptr %i.dk, align 8
  %.sroa.514.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.514.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.514, i64 40, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.bu, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %.sroa.517.0, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i8 %i.bz, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.cb, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.520.0, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.cg, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %.sroa.522.0, ptr %i.dr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.514)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.u:                                             ; preds = %bb.s
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %i.e, align 8, !alias.scope !30831, !noundef !4
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.x

bb.w:                                             ; preds = %bb.s
  %.sroa.023.0.copyload = load ptr, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.514, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.x:                                             ; preds = %bb.v, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs1dZk1kIfPhr_19candle_transformers.exit, %bb.k, %bb.e
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.y:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtBM_3fmt5Debug3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !19, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXs0_NtCsf3Ta7LF998c_4core3anyDNtB5_3AnyNtNtB7_6marker4SendEL_NtNtB7_3fmt5Debug3fmt(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsf3Ta7LF998c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 5, 11) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 24 uses
  %i.c = icmp ult i64 %1, %3
  br i1 %i.c, label %bb.c, label %bb.b

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i, %.split.us.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.m, %bb.b, %bb.as, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.kk, %bb.as ], [ %storemerge.i.sink.i, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ 1, %.lr.ph.split.us.i.i ], [ %.sroa.014.5.i, %bb.m ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i.preheader ], [ 1, %.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i ]
  %i.d = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, %3
  br i1 %i.e, label %bb.as, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30876)
  %i.f = load i8, ptr %0, align 1, !alias.scope !30875, !noundef !4 ; 5 uses
  %i.g = add nsw i64 %1, -1                       ; 4 uses
  %i.h = add nsw i64 %1, -4                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !30875, !noalias !30877, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.j, %i.f
  br i1 %.not.i.not.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.1.i, label %bb.d

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.1.i: ; preds = %bb.c
  %i.k = add nsw i64 %1, -2                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !30875, !noalias !30877, !noundef !4 ; 2 uses
  %.not.i.not.i.1.i = icmp eq i8 %i.m, %i.f
  br i1 %.not.i.not.i.1.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.2.i, label %bb.d

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.2.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.1.i
  %i.n = add nsw i64 %1, -3                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !30875, !noalias !30877, !noundef !4 ; 2 uses
  %.not.i.not.i.2.i = icmp eq i8 %i.p, %i.f
  br i1 %.not.i.not.i.2.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.3.i, label %bb.d

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.3.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.2.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !30875, !noalias !30877, !noundef !4 ; 2 uses
  %.not.i.not.i.3.i = icmp eq i8 %i.r, %i.f
  br i1 %.not.i.not.i.3.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit, label %bb.d

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.3.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.2.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.1.i, %bb.c
  %i.s = phi i8 [ %i.j, %bb.c ], [ %i.m, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.1.i ], [ %i.p, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.2.i ], [ %i.r, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.3.i ]
  %.lcssa113.i = phi i64 [ %i.g, %bb.c ], [ %i.k, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.1.i ], [ %i.n, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.2.i ], [ %i.h, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.3.i ] ; 6 uses
  %i.t = add nuw nsw i64 %1, 15                   ; 3 uses
  %i.u = icmp ult i64 %3, %i.t
  br i1 %i.u, label %.lr.ph.split.us.i.i, label %bb.e

.lr.ph.split.us.i.i:                              ; preds = %bb.d
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 5, 11) %1), !alias.scope !30878, !noalias !30879
  %i.v = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.v, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.w = add nsw i64 %3, -1                       ; 2 uses
  %.not27.i.i127 = icmp ugt i64 %1, %i.w
  br i1 %.not27.i.i127, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i
  %i.x = phi i64 [ %i.aa, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i ], [ %i.w, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i.preheader ]
  %.pn.i128 = phi ptr [ %i.y, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.pn.i128, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.y, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 5, 11) %1), !alias.scope !30878, !noalias !30879
  %i.z = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.z, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1dZk1kIfPhr_19candle_transformers.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.aa
  br i1 %.not27.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.e:                                             ; preds = %bb.d
  %i.ab = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30878
  store ptr %2, ptr %i.a, align 8, !noalias !30878
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.ag, align 8, !noalias !30878
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.af, ptr %i.ah, align 8, !noalias !30878
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.ai, align 8, !noalias !30878
  %i.aj = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.aj, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %bb.e
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.e ], [ %.sroa.014.2.3.i, %bb.i ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.ce, %bb.i ] ; 2 uses
  %i.ak = add i64 %.sroa.06.0.lcssa.i, %i.t
  %i.al = icmp uge i64 %i.ak, %3
  %i.am = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3104.i = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond3104.i, label %._crit_edge.i, label %.lr.ph106.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %.sroa.06.0102.i = phi i64 [ %i.ce, %bb.i ], [ 0, %bb.e ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0102.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.an, align 1, !alias.scope !30876, !noalias !30880
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.lcssa113.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.ao, align 1, !alias.scope !30876, !noalias !30880
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ac
  %i.aq = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.ae
  %i.ar = and <16 x i1> %i.ap, %i.aq
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !30876, !noalias !30880
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.lcssa113.i
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !30876, !noalias !30880
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ac
  %i.aw = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.ae
  %i.ax = and <16 x i1> %i.av, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !30876, !noalias !30880
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.lcssa113.i
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !30876, !noalias !30880
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ac
  %i.bc = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.ae
  %i.bd = and <16 x i1> %i.bb, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !30876, !noalias !30880
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.lcssa113.i
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !30876, !noalias !30880
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ac
  %i.bi = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.ae
  %i.bj = and <16 x i1> %i.bh, %i.bi
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %i.bl = icmp eq i16 %i.as, 0
  br i1 %i.bl, label %.preheader95.1.i, label %bb.j

.preheader95.1.i:                                 ; preds = %bb.j, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cj, %bb.j ] ; 3 uses
  %i.bm = icmp eq i16 %i.ay, 0
  br i1 %i.bm, label %.preheader95.2.i, label %bb.f

bb.f:                                             ; preds = %.preheader95.1.i
  %i.bn = or disjoint i64 %.sroa.06.0102.i, 16
  %i.bo = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bp = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bn, i16 noundef %i.ay, i1 noundef zeroext %i.bo) #34
  %i.bq = zext i1 %i.bp to i8
  %i.br = or i8 %.sroa.014.2.i, %i.bq
  br label %.preheader95.2.i

.preheader95.2.i:                                 ; preds = %bb.f, %.preheader95.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader95.1.i ], [ %i.br, %bb.f ] ; 3 uses
  %i.bs = icmp eq i16 %i.be, 0
  br i1 %i.bs, label %.preheader95.3.i, label %bb.g

bb.g:                                             ; preds = %.preheader95.2.i
  %i.bt = or disjoint i64 %.sroa.06.0102.i, 32
  %i.bu = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.bv = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bt, i16 noundef %i.be, i1 noundef zeroext %i.bu) #34
  %i.bw = zext i1 %i.bv to i8
  %i.bx = or i8 %.sroa.014.2.1.i, %i.bw
  br label %.preheader95.3.i

.preheader95.3.i:                                 ; preds = %bb.g, %.preheader95.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader95.2.i ], [ %i.bx, %bb.g ] ; 3 uses
  %i.by = icmp eq i16 %i.bk, 0
  br i1 %i.by, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader95.3.i
  %i.bz = or disjoint i64 %.sroa.06.0102.i, 48
  %i.ca = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bz, i16 noundef %i.bk, i1 noundef zeroext %i.ca) #34
  %i.cc = zext i1 %i.cb to i8
  %i.cd = or i8 %.sroa.014.2.2.i, %i.cc
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader95.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader95.3.i ], [ %i.cd, %bb.h ] ; 2 uses
  %i.ce = add i64 %.sroa.06.0102.i, 64            ; 3 uses
  %i.cf = add i64 %i.ce, %i.aj
  %i.cg = icmp uge i64 %i.cf, %3
  %i.ch = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.ci = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0102.i, i16 noundef %i.as, i1 noundef zeroext false) #34
  %i.cj = zext i1 %i.ci to i8
  br label %.preheader95.1.i

._crit_edge.i:                                    ; preds = %bb.k, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.k ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.am, %.preheader.i ], [ %i.dd, %bb.k ]
  %i.ck = sub nuw i64 %3, %i.g
  %i.cl = add i64 %i.ck, -16                      ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.cl ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.cm, align 1, !alias.scope !30876, !noalias !30881
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.lcssa113.i
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.cn, align 1, !alias.scope !30876, !noalias !30881
  %i.co = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.ac
  %i.cp = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.ae
  %i.cq = and <16 x i1> %i.co, %i.cp
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %bb.m, label %bb.n

.lr.ph106.i:                                      ; preds = %.preheader.i, %bb.k
  %.sroa.06.1105.i = phi i64 [ %i.da, %bb.k ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1105.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.ct, align 1, !alias.scope !30876, !noalias !30882
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.lcssa113.i
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.cu, align 1, !alias.scope !30876, !noalias !30882
  %i.cv = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.ac
  %i.cw = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.ae
  %i.cx = and <16 x i1> %i.cv, %i.cw
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %i.cz = icmp eq i16 %i.cy, 0
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %.lr.ph106.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph106.i ], [ %i.df, %bb.l ] ; 2 uses
  %i.da = add i64 %.sroa.06.1105.i, 16            ; 2 uses
  %i.db = add i64 %i.da, %i.t
  %i.dc = icmp uge i64 %i.db, %3
  %i.dd = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dc, %i.dd
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph106.i

bb.l:                                             ; preds = %.lr.ph106.i
  %i.de = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1105.i, i16 noundef %i.cy, i1 noundef zeroext false) #34
  %i.df = zext i1 %i.de to i8
  br label %bb.k

bb.m:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.di, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30878
  br label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread

bb.n:                                             ; preds = %._crit_edge.i
  %i.dg = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cl, i16 noundef %i.cr, i1 noundef zeroext %.lcssa.i) #34
  %i.dh = zext i1 %i.dg to i8
  %i.di = or i8 %.sroa.014.3.lcssa.i, %i.dh
  br label %bb.m

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i.3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30883)
  %i.dj = load i64, ptr %i.b, align 8, !range !18, !alias.scope !30883, !noundef !4
  switch i64 %i.dj, label %default.unreachable [
    i64 0, label %.preheader.i5
    i64 1, label %bb.ab
    i64 2, label %bb.ac
  ]

.preheader.i5:                                    ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.dl = load i8, ptr %i.dk, align 2, !range !14, !alias.scope !30883
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !30883, !nonnull !4 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !30883 ; 14 uses
  br i1 %i.dm, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i5
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.promoted205.i = load i8, ptr %i.dr, align 8, !alias.scope !30883 ; 2 uses
  %.promoted156.i = load i64, ptr %i.ds, align 8, !alias.scope !30883 ; 12 uses
  %i.dt = trunc nuw i8 %.promoted205.i to i1
  %i.du = icmp eq i64 %.promoted156.i, 0
  br i1 %i.du, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph.preheader.i
  %.not.i.i.us.i.peel = icmp ult i64 %.promoted156.i, %i.dq
  br i1 %.not.i.i.us.i.peel, label %bb.p, label %.split.i.i.us.i.peel

.split.i.i.us.i.peel:                             ; preds = %bb.o
  %i.dv = icmp eq i64 %.promoted156.i, %i.dq
  br i1 %i.dv, label %bb.q, label %.split.us160.i

bb.p:                                             ; preds = %bb.o
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 %.promoted156.i
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !30884, !noalias !30885, !noundef !4
  %i.dy = icmp sgt i8 %i.dx, -65
  br i1 %i.dy, label %bb.q, label %.split.us160.i

bb.q:                                             ; preds = %bb.p, %.split.i.i.us.i.peel, %.lr.ph.preheader.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 %.promoted156.i ; 4 uses
  %i.ea = icmp samesign eq i64 %.promoted156.i, %i.dq
  br i1 %i.ea, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eb = load i8, ptr %i.dz, align 1, !noalias !30886, !noundef !4 ; 5 uses
  %i.ec = icmp sgt i8 %i.eb, -1
  br i1 %i.ec, label %bb.s, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i.peel

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i.peel: ; preds = %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.ee = and i8 %i.eb, 31
  %i.ef = zext nneg i8 %i.ee to i32               ; 3 uses
  %i.eg = add nuw nsw i64 %.promoted156.i, 1
  %i.eh = icmp samesign ne i64 %i.eg, %i.dq
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = load i8, ptr %i.ed, align 1, !noalias !30886, !noundef !4
  %i.ej = shl nuw nsw i32 %i.ef, 6
  %i.ek = and i8 %i.ei, 63
  %i.el = zext nneg i8 %i.ek to i32               ; 2 uses
  %i.em = or disjoint i32 %i.ej, %i.el
  %i.en = icmp samesign ugt i8 %i.eb, -33
  br i1 %i.en, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i.peel, label %bb.t

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i.peel
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.ep = add nuw nsw i64 %.promoted156.i, 2
  %i.eq = icmp samesign ne i64 %i.ep, %i.dq
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = load i8, ptr %i.eo, align 1, !noalias !30886, !noundef !4
  %i.es = shl nuw nsw i32 %i.el, 6
  %i.et = and i8 %i.er, 63
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = or disjoint i32 %i.es, %i.eu            ; 2 uses
  %i.ew = shl nuw nsw i32 %i.ef, 12
  %i.ex = or disjoint i32 %i.ev, %i.ew
  %i.ey = icmp samesign ugt i8 %i.eb, -17
  br i1 %i.ey, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i.peel, label %bb.t

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i.peel
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dz, i64 3
  %i.fa = add nuw nsw i64 %.promoted156.i, 3
  %i.fb = icmp samesign ne i64 %i.fa, %i.dq
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = load i8, ptr %i.ez, align 1, !noalias !30886, !noundef !4
  %i.fd = shl nuw nsw i32 %i.ef, 18
  %i.fe = and i32 %i.fd, 1835008
  %i.ff = shl nuw nsw i32 %i.ev, 6
  %i.fg = and i8 %i.fc, 63
  %i.fh = zext nneg i8 %i.fg to i32
  %i.fi = or disjoint i32 %i.ff, %i.fh
  %i.fj = or disjoint i32 %i.fi, %i.fe
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fk = zext nneg i8 %i.eb to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i.peel
  %.sroa.4.0.i.ph.i.us.i.peel = phi i32 [ %i.ex, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i.peel ], [ %i.fj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i.peel ], [ %i.em, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i.peel ], [ %i.fk, %bb.s ] ; 4 uses
  %i.fl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.fl)
  br i1 %i.dt, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 128
  br i1 %i.fm, label %.lr.ph.i6, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 2048
  br i1 %i.fn, label %.lr.ph.i6, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 65536
  %..i.us.i.peel = select i1 %i.fo, i64 3, i64 4
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %bb.u, %bb.v, %bb.w
  %.sroa.01.0.i.us.i.peel = phi i64 [ 2, %bb.v ], [ %..i.us.i.peel, %bb.w ], [ 1, %bb.u ]
  %i.fp = add i64 %.sroa.01.0.i.us.i.peel, %.promoted156.i ; 11 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i6
  %.not.i.i.us.i = icmp ult i64 %i.fp, %i.dq
  br i1 %.not.i.i.us.i, label %bb.y, label %.split.i.i.us.i

.split.i.i.us.i:                                  ; preds = %bb.x
  %i.fr = icmp eq i64 %i.fp, %i.dq
  br i1 %i.fr, label %bb.z, label %.split.us160.i

bb.y:                                             ; preds = %bb.x
  %i.fs = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fp
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !30884, !noalias !30887, !noundef !4
  %i.fu = icmp sgt i8 %i.ft, -65
  br i1 %i.fu, label %bb.z, label %.split.us160.i

bb.z:                                             ; preds = %bb.y, %.split.i.i.us.i, %.lr.ph.i6
  %i.fv = icmp samesign eq i64 %i.fp, %i.dq
  br i1 %i.fv, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fw = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fp
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !30888, !noundef !4 ; 3 uses
  %i.fy = icmp sgt i8 %i.fx, -1
  br i1 %i.fy, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i: ; preds = %bb.aa
  %i.fz = add nuw nsw i64 %i.fp, 1
  %i.ga = icmp samesign ne i64 %i.fz, %i.dq
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp samesign ugt i8 %i.fx, -33
  br i1 %i.gb, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i
  %i.gc = add nuw nsw i64 %i.fp, 2
  %i.gd = icmp samesign ne i64 %i.gc, %i.dq
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = icmp samesign ugt i8 %i.fx, -17
  br i1 %i.ge, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i
  %i.gf = add nuw nsw i64 %i.fp, 3
  %i.gg = icmp samesign ne i64 %i.gf, %i.dq
  tail call void @llvm.assume(i1 %i.gg)
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split

.split.us160.i:                                   ; preds = %bb.y, %.split.i.i.us.i, %bb.p, %.split.i.i.us.i.peel
  %.lcssa47 = phi i64 [ %.promoted156.i, %.split.i.i.us.i.peel ], [ %.promoted156.i, %bb.p ], [ %i.fp, %.split.i.i.us.i ], [ %i.fp, %bb.y ]
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef %i.dq, i64 noundef %.lcssa47, i64 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @328) #32, !noalias !30887
  unreachable

default.unreachable:                              ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit
  unreachable

bb.ab:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !30883, !noundef !4 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !30883, !noundef !4 ; 3 uses
  %.not.i4 = icmp ult i64 %i.gk, %i.gi
  br i1 %.not.i4, label %bb.ad, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.ac:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !30883, !noundef !4 ; 2 uses
  %i.go = icmp eq i64 %i.gn, -1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !30883, !nonnull !4, !noundef !4 ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !30883, !noundef !4 ; 8 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !30883, !nonnull !4, !noundef !4 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !30883, !noundef !4 ; 12 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.gy = add nsw i64 %i.gw, -1                   ; 4 uses
  br i1 %i.go, label %bb.ao, label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !30883, !nonnull !4, !noundef !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hc = load i8, ptr %i.hb, align 8, !alias.scope !30883, !noundef !4 ; 2 uses
  %i.hd = sub nuw i64 %i.gi, %i.gk                ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gk ; 2 uses
  %i.hf = icmp samesign ult i64 %i.hd, 16
  br i1 %i.hf, label %.lr.ph.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hg = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.hc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.he, i64 noundef range(i64 0, -9223372036854775808) %i.hd), !noalias !30889
  %i.hh = extractvalue { i64, i64 } %i.hg, 0
  %i.hi = trunc nuw i64 %i.hh to i1
  br i1 %i.hi, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i.i:                                       ; preds = %bb.ad, %bb.af
  %.sroa.04.011.i.i = phi i64 [ %i.hm, %bb.af ], [ 0, %bb.ad ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sroa.04.011.i.i
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !30890, !noalias !30889, !noundef !4
  %i.hl = icmp eq i8 %i.hk, %i.hc
  br i1 %i.hl, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.hm = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i7.i = icmp eq i64 %i.hm, %i.hd
  br i1 %exitcond.not.i7.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i.i

bb.ag:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30893)
  %.promoted.i.i = load i64, ptr %i.gx, align 8, !alias.scope !30894 ; 2 uses
  %i.hn = add i64 %.promoted.i.i, %i.gy           ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.gs
  br i1 %i.ho, label %.lr.ph.i8.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i8.i:                                      ; preds = %bb.ag
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !30894, !noundef !4
  %i.hr = load i64, ptr %i.gl, align 8, !alias.scope !30894 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !30894 ; 2 uses
  %i.hu = sub i64 %i.gw, %i.ht
  %invariant.op = sub i64 1, %i.hr
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.aj, %.lr.ph.i8.i
  %.sink70.i.i32 = phi i64 [ %.sink70.i.i, %bb.aj ], [ %i.gn, %.lr.ph.i8.i ] ; 3 uses
  %.sink71.i.i29 = phi i64 [ %.sink71.i.i, %bb.aj ], [ %.promoted.i.i, %.lr.ph.i8.i ] ; 5 uses
  %i.hv = phi i64 [ %i.if, %bb.aj ], [ %i.hn, %.lr.ph.i8.i ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !alias.scope !30892, !noalias !30889, !noundef !4
  %i.hy = and i8 %i.hx, 63
  %i.hz = zext nneg i8 %i.hy to i64
  %i.ia = shl nuw i64 1, %i.hz
  %i.ib = and i64 %i.ia, %i.hq
  %.not.i9.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i9.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.split.i.i
  %i.ic = add i64 %.sink71.i.i29, %i.gw
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.split.i.i
  %i.id = tail call i64 @llvm.umax.i64(i64 %i.hr, i64 %.sink70.i.i32) ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.gw
  br i1 %i.ie, label %.lr.ph, label %.preheader36.i.i.preheader

bb.aj:                                            ; preds = %bb.an, %bb.am, %bb.ah
  %.sink71.i.i = phi i64 [ %i.ja, %bb.an ], [ %i.iz, %bb.am ], [ %i.ic, %bb.ah ] ; 2 uses
  %.sink70.i.i = phi i64 [ 0, %bb.an ], [ %i.hu, %bb.am ], [ 0, %bb.ah ]
  %i.if = add i64 %.sink71.i.i, %i.gy             ; 2 uses
  %i.ig = icmp ult i64 %i.if, %i.gs
  br i1 %i.ig, label %.lr.ph.split.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.ak:                                            ; preds = %.lr.ph
  %i.ih = add nuw nsw i64 %.sroa.04.0.i.i130, 1   ; 2 uses
  %i.ii = icmp ult i64 %i.ih, %i.gw
  br i1 %i.ii, label %.lr.ph, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.ak, %bb.ai
  %i.ij = icmp ult i64 %.sink70.i.i32, %i.hr
  br i1 %i.ij, label %.lr.ph132, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph:                                           ; preds = %bb.ai, %bb.ak
  %.sroa.04.0.i.i130 = phi i64 [ %i.ih, %bb.ak ], [ %i.id, %bb.ai ] ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.04.0.i.i130
  %i.il = load i8, ptr %i.ik, align 1, !alias.scope !30893, !noalias !30889, !noundef !4
  %i.im = add i64 %.sroa.04.0.i.i130, %.sink71.i.i29 ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.gs
  tail call void @llvm.assume(i1 %i.in)
  %i.io = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.im
  %i.ip = load i8, ptr %i.io, align 1, !alias.scope !30892, !noalias !30889, !noundef !4
  %.not21.i.i = icmp eq i8 %i.il, %i.ip
  br i1 %.not21.i.i, label %bb.ak, label %bb.an

.preheader36.i.i:                                 ; preds = %bb.al
  %i.iq = icmp ult i64 %.sink70.i.i32, %i.ir
  br i1 %i.iq, label %.lr.ph132, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph132:                                        ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i131 = phi i64 [ %i.ir, %.preheader36.i.i ], [ %i.hr, %.preheader36.i.i.preheader ]
  %i.ir = add i64 %.sroa.2.0.i.i131, -1           ; 6 uses
  %i.is = icmp ult i64 %i.ir, %i.gw
  br i1 %i.is, label %bb.al, label %.split32.us.i.i

bb.al:                                            ; preds = %.lr.ph132
  %i.it = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.ir
  %i.iu = load i8, ptr %i.it, align 1, !alias.scope !30893, !noalias !30889, !noundef !4
  %i.iv = add i64 %i.ir, %.sink71.i.i29           ; 2 uses
  %i.iw = icmp ult i64 %i.iv, %i.gs
  tail call void @llvm.assume(i1 %i.iw)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.iv
  %i.iy = load i8, ptr %i.ix, align 1, !alias.scope !30892, !noalias !30889, !noundef !4
  %.not20.i.i = icmp eq i8 %i.iu, %i.iy
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.am

.split32.us.i.i:                                  ; preds = %.lr.ph132
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ir, i64 noundef range(i64 0, -9223372036854775808) %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !30895
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.iz = add i64 %.sink71.i.i29, %i.ht
  br label %bb.aj

bb.an:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %.sink71.i.i29, %invariant.op
  %i.ja = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i130
  br label %bb.aj

bb.ao:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30898)
  %.promoted.i11.i = load i64, ptr %i.gx, align 8, !alias.scope !30899 ; 2 uses
  %i.jb = add i64 %.promoted.i11.i, %i.gy         ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.gs
  br i1 %i.jc, label %.lr.ph.i14.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14.i:                                     ; preds = %bb.ao
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.je = load i64, ptr %i.jd, align 8, !alias.scope !30899, !noundef !4
  %i.jf = load i64, ptr %i.gl, align 8, !alias.scope !30899
  %.fr214.i = freeze i64 %i.jf                    ; 7 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !30899
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr214.i, i64 range(i64 0, -9223372036854775808) %i.gw)
  %i.ji = add i64 %.fr214.i, -1                   ; 2 uses
  %.first_iter.i15.i = icmp ult i64 %i.ji, %i.gw
  %exitcond.not.i16.i133.not = icmp ult i64 %.fr214.i, %i.gw
  %invariant.op158 = sub i64 1, %.fr214.i
  %.not34.i.us.i136 = icmp eq i64 %.fr214.i, 0    ; 2 uses
  br label %.lr.ph.split.us.i.i3

.lr.ph.split.us.i.i3:                             ; preds = %bb.ar, %.lr.ph.i14.i
  %.sink.i17.i35 = phi i64 [ %.sink.i17.i, %bb.ar ], [ %.promoted.i11.i, %.lr.ph.i14.i ] ; 5 uses
  %i.jj = phi i64 [ %i.kh, %bb.ar ], [ %i.jb, %.lr.ph.i14.i ]
  %i.jk = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !alias.scope !30897, !noalias !30889, !noundef !4
  %i.jm = and i8 %i.jl, 63
  %i.jn = zext nneg i8 %i.jm to i64
  %i.jo = shl nuw i64 1, %i.jn
  %i.jp = and i64 %i.jo, %i.je
  %.not.us.i.i = icmp eq i64 %i.jp, 0
  br i1 %.not.us.i.i, label %bb.aq, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i3
  br i1 %exitcond.not.i16.i133.not, label %.lr.ph135, label %.preheader.i18.preheader.i

.preheader35.i.i:                                 ; preds = %.lr.ph135
  %i.jq = add i64 %.sroa.04.0.us.i.i134, 1        ; 2 uses
  %exitcond.not.i16.i = icmp eq i64 %i.jq, %umax.i.i
  br i1 %exitcond.not.i16.i, label %.preheader.i18.preheader.i, label %.lr.ph135

.preheader.i18.preheader.i:                       ; preds = %.preheader35.i.i, %.preheader35.i.i.preheader
  br i1 %.first_iter.i15.i, label %.preheader.i18.us.i.preheader, label %.preheader.i18.i

.preheader.i18.us.i.preheader:                    ; preds = %.preheader.i18.preheader.i
  br i1 %.not34.i.us.i136, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph138

.preheader.i18.us.i:                              ; preds = %.lr.ph138
  %.not34.i.us.i = icmp eq i64 %i.jr, 0
  br i1 %.not34.i.us.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph138

.lr.ph138:                                        ; preds = %.preheader.i18.us.i.preheader, %.preheader.i18.us.i
  %.sroa.2.0.us.i.us.i137 = phi i64 [ %i.jr, %.preheader.i18.us.i ], [ %.fr214.i, %.preheader.i18.us.i.preheader ]
  %i.jr = add i64 %.sroa.2.0.us.i.us.i137, -1     ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !alias.scope !30898, !noalias !30889, !noundef !4
  %i.ju = add i64 %i.jr, %.sink.i17.i35           ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.gs
  tail call void @llvm.assume(i1 %i.jv)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.ju
  %i.jx = load i8, ptr %i.jw, align 1, !alias.scope !30897, !noalias !30889, !noundef !4
  %.not20.us.i.us.i = icmp eq i8 %i.jt, %i.jx
  br i1 %.not20.us.i.us.i, label %.preheader.i18.us.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph138
  %i.jy = add i64 %.sink.i17.i35, %i.jh
  br label %bb.ar

.lr.ph135:                                        ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i134 = phi i64 [ %i.jq, %.preheader35.i.i ], [ %.fr214.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.04.0.us.i.i134
  %i.ka = load i8, ptr %i.jz, align 1, !alias.scope !30898, !noalias !30889, !noundef !4
  %i.kb = add i64 %.sroa.04.0.us.i.i134, %.sink.i17.i35 ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %i.gs
  tail call void @llvm.assume(i1 %i.kc)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.kb
  %i.ke = load i8, ptr %i.kd, align 1, !alias.scope !30897, !noalias !30889, !noundef !4
  %.not21.us.i.i = icmp eq i8 %i.ka, %i.ke
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.ap

.preheader.i18.i:                                 ; preds = %.preheader.i18.preheader.i
  br i1 %.not34.i.us.i136, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.split32.us.i19.i

.split32.us.i19.i:                                ; preds = %.preheader.i18.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ji, i64 noundef range(i64 0, -9223372036854775808) %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !30900
  unreachable

bb.ap:                                            ; preds = %.lr.ph135
  %.reass281.i.reass.reass = add i64 %.sink.i17.i35, %invariant.op158
  %i.kf = add i64 %.reass281.i.reass.reass, %.sroa.04.0.us.i.i134
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.split.us.i.i3
  %i.kg = add i64 %.sink.i17.i35, %i.gw
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %.split.us.i
  %.sink.i17.i = phi i64 [ %i.kg, %bb.aq ], [ %i.kf, %bb.ap ], [ %i.jy, %.split.us.i ] ; 2 uses
  %i.kh = add i64 %.sink.i17.i, %i.gy             ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %i.gs
  br i1 %i.ki, label %.lr.ph.split.us.i.i3, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split: ; preds = %.lr.ph.i.i, %bb.ae, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i, %bb.aa
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %bb.aj, %.preheader36.i.i.preheader, %.preheader36.i.i, %bb.ar, %.preheader.i18.us.i.preheader, %.preheader.i18.us.i, %bb.af, %bb.q, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, %.preheader.i18.i, %bb.ao, %bb.ag, %bb.ae, %bb.t, %bb.z, %.preheader.i5, %bb.ab
  %storemerge.i.sink.i = phi i8 [ %.promoted205.i, %bb.q ], [ 0, %bb.ag ], [ 0, %bb.ab ], [ 0, %bb.ao ], [ 1, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split ], [ 0, %bb.ae ], [ 1, %.preheader.i18.us.i ], [ 0, %.preheader.i5 ], [ 1, %bb.t ], [ 1, %bb.z ], [ 1, %.preheader36.i.i ], [ 1, %.preheader.i18.i ], [ 1, %.preheader.i18.us.i.preheader ], [ 0, %bb.af ], [ 0, %bb.ar ], [ 0, %bb.aj ], [ 1, %.preheader36.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread

bb.as:                                            ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.kj = icmp eq i32 %bcmp, 0
  %i.kk = zext i1 %i.kj to i8
  br label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsy_NtCsixB2fhfFqiD_12regex_syntax3hirNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !30901, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsy_NtCsixB2fhfFqiD_12regex_syntax3hirNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsy_NtCsixB2fhfFqiD_12regex_syntax3hirNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.139, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsz_NtCsixB2fhfFqiD_12regex_syntax3astNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i32, ptr %0, align 8, !range !30902, !noundef !4
  switch i32 %i.e, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.q
    i32 16, label %bb.r
    i32 17, label %bb.s
    i32 18, label %bb.t
    i32 19, label %bb.u
    i32 20, label %bb.v
    i32 21, label %bb.w
    i32 22, label %bb.x
    i32 23, label %bb.y
    i32 24, label %bb.z
    i32 25, label %bb.aa
    i32 26, label %bb.ab
    i32 27, label %bb.ac
    i32 28, label %bb.ad
    i32 29, label %bb.ae
    i32 30, label %bb.af
    i32 31, label %bb.ag
    i32 32, label %bb.ah
    i32 33, label %bb.ai
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @336, i64 noundef 20)
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @337, i64 noundef 18)
  br label %bb.aj

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @338, i64 noundef 17)
  br label %bb.aj

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 17)
  br label %bb.aj

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 13)
  br label %bb.aj

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @341, i64 noundef 12)
  br label %bb.aj

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 14)
  br label %bb.aj

bb.i:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @343, i64 noundef 14)
  br label %bb.aj

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 16)
  br label %bb.aj

bb.k:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @345, i64 noundef 21)
  br label %bb.aj

bb.l:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @346, i64 noundef 19)
  br label %bb.aj

bb.m:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @347, i64 noundef 18)
  br label %bb.aj

bb.n:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @348, i64 noundef 20)
  br label %bb.aj

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.d, align 8
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @349, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @350, i64 noundef 8, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aj

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.c, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @351, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @350, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aj

bb.q:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 17)
  br label %bb.aj

bb.r:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @353, i64 noundef 16)
  br label %bb.aj

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.b, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @354, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @350, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.t:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @355, i64 noundef 14)
  br label %bb.aj

bb.u:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 16)
  br label %bb.aj

bb.v:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @357, i64 noundef 22)
  br label %bb.aj

bb.w:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 13)
  br label %bb.aj

bb.x:                                             ; preds = %bb.a
  %i.ae = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @359, i64 noundef 13)
  br label %bb.aj

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.af, ptr %i.a, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @361, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @360)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.z:                                             ; preds = %bb.a
  %i.ah = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @362, i64 noundef 22)
  br label %bb.aj

bb.aa:                                            ; preds = %bb.a
  %i.ai = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @363, i64 noundef 27)
  br label %bb.aj

bb.ab:                                            ; preds = %bb.a
  %i.aj = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 23)
  br label %bb.aj

bb.ac:                                            ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @365, i64 noundef 17)
  br label %bb.aj

bb.ad:                                            ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 27)
  br label %bb.aj

bb.ae:                                            ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 31)
  br label %bb.aj

bb.af:                                            ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @368, i64 noundef 36)
  br label %bb.aj

bb.ag:                                            ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @369, i64 noundef 19)
  br label %bb.aj

bb.ah:                                            ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 24)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 21)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.l, %bb.h ], [ %i.m, %bb.i ], [ %i.n, %bb.j ], [ %i.o, %bb.k ], [ %i.p, %bb.l ], [ %i.q, %bb.m ], [ %i.r, %bb.n ], [ %i.t, %bb.o ], [ %i.v, %bb.p ], [ %i.w, %bb.q ], [ %i.x, %bb.r ], [ %i.z, %bb.s ], [ %i.aa, %bb.t ], [ %i.ab, %bb.u ], [ %i.ac, %bb.v ], [ %i.ad, %bb.w ], [ %i.ae, %bb.x ], [ %i.ag, %bb.y ], [ %i.ah, %bb.z ], [ %i.ai, %bb.aa ], [ %i.aj, %bb.ab ], [ %i.ak, %bb.ac ], [ %i.al, %bb.ad ], [ %i.am, %bb.ae ], [ %i.an, %bb.af ], [ %i.ao, %bb.ag ], [ %i.ap, %bb.ah ], [ %i.aq, %bb.ai ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !14, !noalias !30907, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1dZk1kIfPhr_19candle_transformers.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs1dZk1kIfPhr_19candle_transformers(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1dZk1kIfPhr_19candle_transformers.exit

_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2ZSzJGZRtAv_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @372, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtQNtNtCsgCecv3eZDcN_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs1dZk1kIfPhr_19candle_transformers.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @317, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !30908
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeNtB6_5Debug3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsltEA4u8Pgfu_11candle_core5shapeNtB2_5ShapeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCsgjKvpibvENk_15crossbeam_epoch8internalNtB5_5Local5defer(ptr noundef nonnull align 128, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn11var_builderINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB4_13SimpleBackendEL_ENtB4_7Backend3get(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i8 noundef range(i8 0, 14), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs1dZk1kIfPhr_19candle_transformers(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #6

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsgjKvpibvENk_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECs1dZk1kIfPhr_19candle_transformers(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRShECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgCecv3eZDcN_5alloc6string6StringECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRTjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRmECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File4openRNtNtB8_4path4PathECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_Cs94aVKmQQwYh_7memmap2NtB6_11MmapOptions3mapRNtNtCs5Xr050g3D4S_3std2fs4FileECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtCs4bWeha2mG3S_4yoke4yokeINtB6_4YokeNtNtCsltEA4u8Pgfu_11candle_core11safetensors12SafeTensors_NtCs94aVKmQQwYh_7memmap24MmapE18try_attach_to_cartNtNtBL_5error5ErrorNCINvMs5_BJ_NtBJ_17MmapedSafetensors5multiReEs0_0ECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noundef, i64 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_11SafeTensors5names(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringjNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB5_5Error9with_pathRNtNtCs5Xr050g3D4S_3std4path4PathECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtCs3NyA1pFSltE_9candle_nn11var_builderNtNtCsltEA4u8Pgfu_11candle_core11safetensors17MmapedSafetensorsNtB5_13SimpleBackend3get(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i8 noundef range(i8 0, 14), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtCs3NyA1pFSltE_9candle_nn11var_builderNtNtCsltEA4u8Pgfu_11candle_core11safetensors17MmapedSafetensorsNtB5_13SimpleBackend13get_unchecked(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 14), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtCs3NyA1pFSltE_9candle_nn11var_builderNtNtCsltEA4u8Pgfu_11candle_core11safetensors17MmapedSafetensorsNtB5_13SimpleBackend15contains_tensor(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB5_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB5_13SimpleBackendEL_EE12from_backend(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i8 noundef range(i8 0, 14), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgCecv3eZDcN_5alloc3vec3VechEmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringBP_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs9BYqgaV0uAw_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTTjjENtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtCs9BYqgaV0uAw_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtCsltEA4u8Pgfu_11candle_core6ModuleEL_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs4bWeha2mG3S_4yoke4yoke4YokeNtNtCsltEA4u8Pgfu_11candle_core11safetensors12SafeTensors_NtCs94aVKmQQwYh_7memmap24MmapEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtCs9BYqgaV0uAw_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorInfoENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12stella_en_v55LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing6LinearENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models17quantized_rwkv_v65BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models5llama5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7rwkv_v513StatePerLayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7rwkv_v55BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9debertav214DebertaV2LayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs9BYqgaV0uAw_14regex_automata4util10primitives7StateIDENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs9BYqgaV0uAw_14regex_automata6hybrid2id11LazyStateIDENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything11transformer20TwoWayAttentionBlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16segment_anything12mask_decoder14MlpMaskDecoderENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4clip10text_model16ClipEncoderLayerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs9BYqgaV0uAw_14regex_automata3nfa8thompson6pikevm13FollowEpsilonENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!30657 = !{!30492}
!30658 = !{!30492, !30490, !30488}
!30659 = !{!30494}
!30660 = !{!30496}
!30661 = !{!30498}
!30662 = !{!30498, !30496, !30494}
!30663 = !{!30500}
!30664 = !{!30502}
!30665 = !{!30504}
!30666 = !{!30504, !30502, !30500}
!30667 = !{!30506}
!30668 = !{!30508}
!30669 = !{!30510}
!30670 = !{!30510, !30508, !30506}
!30671 = !{!30512}
!30672 = !{!30514}
!30673 = !{!30516}
!30674 = !{!30516, !30514, !30512}
!30675 = !{!30518}
!30676 = !{!30520}
!30677 = !{!30522}
!30678 = !{!30522, !30520, !30518}
!30679 = !{!30524}
!30680 = !{!30526}
!30681 = !{!30528}
!30682 = !{!30528, !30526, !30524}
!30683 = !{!30530}
!30684 = !{!30532}
!30685 = !{!30534}
!30686 = !{!30534, !30532, !30530}
!30687 = !{!30536}
!30688 = !{!30538}
!30689 = !{!30540}
!30690 = !{!30540, !30538, !30536}
!30691 = !{!30542}
!30692 = !{!30544}
!30693 = !{!30546}
!30694 = !{!30546, !30544, !30542}
!30695 = !{!30548}
!30696 = !{!30550}
!30697 = !{!30552}
!30698 = !{!30552, !30550, !30548}
!30699 = !{!30554}
!30700 = !{!30556}
!30701 = !{!30558}
!30702 = !{!30558, !30556, !30554}
!30703 = !{!30560}
!30704 = !{!30562}
!30705 = !{!30564}
!30706 = !{!30564, !30562, !30560}
!30707 = !{!30566}
!30708 = !{!30568}
!30709 = !{!30570}
!30710 = !{!30570, !30568, !30566}
!30711 = !{!30572}
!30712 = !{!30574}
!30713 = !{!30576}
!30714 = !{!30576, !30574, !30572}
!30715 = !{!30578}
!30716 = !{!30580}
!30717 = !{!30582}
!30718 = !{!30582, !30580, !30578}
!30719 = !{!30584}
!30720 = !{!30586}
!30721 = !{!30588}
!30722 = !{!30588, !30586, !30584}
!30723 = !{!30590}
!30724 = !{!30592}
!30725 = !{!30594}
!30726 = !{!30594, !30592, !30590}
!30727 = !{!30596}
!30728 = !{!30598}
!30729 = !{!30600}
!30730 = !{!30600, !30598, !30596}
!30731 = !{!30602}
!30732 = !{!30604}
!30733 = !{!30606}
!30734 = !{!30606, !30604, !30602}
!30735 = !{!30608}
!30736 = !{!30610}
!30737 = !{!30612}
!30738 = !{!30612, !30610, !30608}
!30739 = !{!30614}
!30740 = !{!30616}
!30741 = !{!30618}
!30742 = !{!30618, !30616, !30614}
!30743 = distinct !{!30743, i1 true, !"_RNvXse_NtCs95szcO5cFRN_7tracing4spanNtB5_7EnteredNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!30744 = distinct !{!30744, !30743, !"_RNvXse_NtCs95szcO5cFRN_7tracing4spanNtB5_7EnteredNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!30745 = !{!30744}
!30746 = distinct !{!30746, i1 true, !"_RNvXse_NtCs95szcO5cFRN_7tracing4spanNtB5_7EnteredNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!30747 = distinct !{!30747, !30746, !"_RNvXse_NtCs95szcO5cFRN_7tracing4spanNtB5_7EnteredNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!30748 = !{!30747}
!30749 = distinct !{!30749, i1 true, !"_RNvXs1K_NtCsgCecv3eZDcN_5alloc6stringlNtB6_12SpecToString14spec_to_string"}
!30750 = distinct !{!30750, !30749, !"_RNvXs1K_NtCsgCecv3eZDcN_5alloc6stringlNtB6_12SpecToString14spec_to_string: argument 0"}
!30751 = distinct !{!30751, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!30752 = distinct !{!30752, !30751, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!30753 = distinct !{!30753, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1dZk1kIfPhr_19candle_transformers"}
!30754 = distinct !{!30754, !30753, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30755 = !{!30750}
!30756 = !{!30752}
!30757 = !{!30754}
!30758 = distinct !{!30758, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!30759 = distinct !{!30759, !30758, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!30760 = !{!30759}
!30761 = distinct !{!30761, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str"}
!30762 = distinct !{!30762, !30761, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str: argument 1"}
!30763 = distinct !{!30763, !30761, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str: argument 0"}
!30764 = distinct !{!30764, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1dZk1kIfPhr_19candle_transformers"}
!30765 = distinct !{!30765, !30764, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30766 = !{!30762}
!30767 = !{!30765, !30763}
!30768 = distinct !{!30768, i1 true, !"_RNvXse_NtCs95szcO5cFRN_7tracing4spanNtB5_7EnteredNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!30769 = distinct !{!30769, !30768, !"_RNvXse_NtCs95szcO5cFRN_7tracing4spanNtB5_7EnteredNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!30770 = !{!30769}
!30771 = distinct !{!30771, i1 true, !"_RNvXse_NtCs95szcO5cFRN_7tracing4spanNtB5_7EnteredNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!30772 = distinct !{!30772, !30771, !"_RNvXse_NtCs95szcO5cFRN_7tracing4spanNtB5_7EnteredNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!30773 = !{!30772}
!30774 = distinct !{!30774, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!30775 = distinct !{!30775, !30774, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30776 = distinct !{!30776, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!30777 = distinct !{!30777, !30776, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30778 = distinct !{!30778, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!30779 = distinct !{!30779, !30778, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30780 = distinct !{!30780, i1 true, !"_RNvXs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracingNtB5_6LinearNtCsltEA4u8Pgfu_11candle_core6Module7forward"}
!30781 = distinct !{!30781, !30780, !"_RNvXs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracingNtB5_6LinearNtCsltEA4u8Pgfu_11candle_core6Module7forward: argument 1"}
!30782 = distinct !{!30782, !30780, !"_RNvXs1_NtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracingNtB5_6LinearNtCsltEA4u8Pgfu_11candle_core6Module7forward: argument 0"}
!30783 = distinct !{!30783, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!30784 = distinct !{!30784, !30783, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30785 = distinct !{!30785, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!30786 = distinct !{!30786, !30785, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30787 = distinct !{!30787, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!30788 = distinct !{!30788, !30787, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30789 = distinct !{!30789, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!30790 = distinct !{!30790, !30789, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30791 = distinct !{!30791, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!30792 = distinct !{!30792, !30791, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30793 = distinct !{!30793, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!30794 = distinct !{!30794, !30793, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30795 = distinct !{!30795, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!30796 = distinct !{!30796, !30795, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30797 = distinct !{!30797, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!30798 = distinct !{!30798, !30797, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30799 = distinct !{!30799, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!30800 = distinct !{!30800, !30799, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30801 = distinct !{!30801, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!30802 = distinct !{!30802, !30801, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30803 = distinct !{!30803, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!30804 = distinct !{!30804, !30803, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30805 = distinct !{!30805, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!30806 = distinct !{!30806, !30805, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30807 = !{!30775}
!30808 = !{!30777}
!30809 = !{!30779}
!30810 = !{!30779, !30777, !30775}
!30811 = !{!30781}
!30812 = !{!30782}
!30813 = !{!30784}
!30814 = !{!30786}
!30815 = !{!30788}
!30816 = !{!30788, !30786, !30784}
!30817 = !{!30790}
!30818 = !{!30792}
!30819 = !{!30794}
!30820 = !{!30794, !30792, !30790}
!30821 = !{!30796}
!30822 = !{!30798}
!30823 = !{!30800}
!30824 = !{!30800, !30798, !30796}
!30825 = !{!30802}
!30826 = !{!30804}
!30827 = !{!30806}
!30828 = !{!30806, !30804, !30802}
!30829 = distinct !{!30829, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs1dZk1kIfPhr_19candle_transformers"}
!30830 = distinct !{!30830, !30829, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30831 = !{!30830}
!30832 = distinct !{!30832, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains"}
!30833 = distinct !{!30833, !30832, !"_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains: argument 0"}
!30834 = distinct !{!30834, !30832, !"_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains: argument 1"}
!30835 = distinct !{!30835, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs1dZk1kIfPhr_19candle_transformers"}
!30836 = distinct !{!30836, !30835, !"_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs1dZk1kIfPhr_19candle_transformers: argument 1"}
!30837 = distinct !{!30837, !30835, !"_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30838 = distinct !{!30838, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers"}
!30839 = distinct !{!30839, !30838, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30840 = distinct !{!30840, i1 true, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains0Cs1dZk1kIfPhr_19candle_transformers"}
!30841 = distinct !{!30841, !30840, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains0Cs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30842 = distinct !{!30842, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs1dZk1kIfPhr_19candle_transformers"}
!30843 = distinct !{!30843, !30842, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30844 = distinct !{!30844, i1 true, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss1_0Cs1dZk1kIfPhr_19candle_transformers"}
!30845 = distinct !{!30845, !30844, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss1_0Cs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30846 = distinct !{!30846, i1 true, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss1_0Cs1dZk1kIfPhr_19candle_transformers"}
!30847 = distinct !{!30847, !30846, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss1_0Cs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30848 = distinct !{!30848, i1 true, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss1_0Cs1dZk1kIfPhr_19candle_transformers"}
!30849 = distinct !{!30849, !30848, !"_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss1_0Cs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30850 = distinct !{!30850, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!30851 = distinct !{!30851, !30850, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!30852 = distinct !{!30852, i1 true, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!30853 = distinct !{!30853, !30852, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!30854 = distinct !{!30854, !30850, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!30855 = distinct !{!30855, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!30856 = distinct !{!30856, !30855, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!30857 = distinct !{!30857, !30855, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0:Peel0"}
!30858 = distinct !{!30858, i1 true, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1dZk1kIfPhr_19candle_transformers"}
!30859 = distinct !{!30859, !30858, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30860 = distinct !{!30860, i1 true, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!30861 = distinct !{!30861, !30860, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!30862 = distinct !{!30862, !30860, !"_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!30863 = distinct !{!30863, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr"}
!30864 = distinct !{!30864, !30863, !"_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr: argument 0"}
!30865 = distinct !{!30865, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1dZk1kIfPhr_19candle_transformers"}
!30866 = distinct !{!30866, !30865, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1dZk1kIfPhr_19candle_transformers: argument 1"}
!30867 = distinct !{!30867, !30865, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1dZk1kIfPhr_19candle_transformers: argument 2"}
!30868 = distinct !{!30868, !30865, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1dZk1kIfPhr_19candle_transformers: argument 3"}
!30869 = distinct !{!30869, !30865, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30870 = distinct !{!30870, i1 true, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1dZk1kIfPhr_19candle_transformers"}
!30871 = distinct !{!30871, !30870, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1dZk1kIfPhr_19candle_transformers: argument 1"}
!30872 = distinct !{!30872, !30870, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1dZk1kIfPhr_19candle_transformers: argument 2"}
!30873 = distinct !{!30873, !30870, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1dZk1kIfPhr_19candle_transformers: argument 3"}
!30874 = distinct !{!30874, !30870, !"_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30875 = !{!30833}
!30876 = !{!30834}
!30877 = !{!30841, !30839, !30837, !30836}
!30878 = !{!30833, !30834}
!30879 = !{!30843}
!30880 = !{!30845}
!30881 = !{!30847}
!30882 = !{!30849}
!30883 = !{!30851}
!30884 = !{!30853}
!30885 = !{!30857, !30856, !30854, !30851}
!30886 = !{!30859, !30857, !30856, !30854, !30851}
!30887 = !{!30862, !30861, !30854, !30851}
!30888 = !{!30859, !30862, !30861, !30854, !30851}
!30889 = !{!30854, !30851}
!30890 = !{!30864}
!30891 = !{!30866}
!30892 = !{!30867}
!30893 = !{!30868}
!30894 = !{!30866, !30851}
!30895 = !{!30869, !30866, !30867, !30868, !30854, !30851}
!30896 = !{!30871}
!30897 = !{!30872}
!30898 = !{!30873}
!30899 = !{!30871, !30851}
!30900 = !{!30874, !30871, !30872, !30873, !30854, !30851}
!30901 = !{i8 0, i8 7}
!30902 = !{i32 0, i32 34}
!30903 = distinct !{!30903, i1 true, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1dZk1kIfPhr_19candle_transformers"}
!30904 = distinct !{!30904, !30903, !"_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30905 = distinct !{!30905, i1 true, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs1dZk1kIfPhr_19candle_transformers"}
!30906 = distinct !{!30906, !30905, !"_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30907 = !{!30906, !30904}
!30908 = distinct !{null}
end_hunk_1
