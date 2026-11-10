Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.08?download=true
inline.NumInlined: 763
inline.NumDeleted: 289
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram17HistogramDistanceECskeugdADtBsi_12pingora_core:bb.a
  %i.aq = load float, ptr %i.ap, align 8, !alias.scope !278, !noundef !10 ; 2 uses
  %i.ar = fsub float %i.an, %i.aq                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 2176
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !279, !noundef !10
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %bb.q
  %.pre = load i64, ptr %10, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #21
  unreachable

bb.s:                                             ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECskeugdADtBsi_12pingora_core.exit, %._crit_edge, %bb.t
  %i.av = phi i64 [ %.pre53, %bb.t ], [ %.pre, %._crit_edge ], [ %.pre53, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECskeugdADtBsi_12pingora_core.exit ] ; 11 uses
  %.sroa.7.0 = phi float [ %i.ak, %bb.t ], [ %i.aq, %._crit_edge ], [ %i.br, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECskeugdADtBsi_12pingora_core.exit ] ; 3 uses
  %i.aw = fadd float %i.ar, %.sroa.7.0            ; 4 uses
  %.not48 = icmp eq i64 %i.av, 0
  br i1 %.not48, label %bb.z, label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 2176
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !280, !noundef !10 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %.pre53 = load i64, ptr %10, align 8            ; 3 uses
  br i1 %i.az, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = icmp eq i64 %.pre53, 0
  br i1 %i.ba, label %vector.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq i64 %9, 0
  br i1 %.not, label %bb.x, label %bb.w

vector.ph:                                        ; preds = %bb.u, %bb.w
  %.sroa.030.0 = phi float [ %spec.store.select, %bb.w ], [ f0x7E967699, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.ai, i64 2192, i1 false), !alias.scope !281
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 2176 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !282, !noalias !283, !noundef !10
  %i.bd = add i64 %i.bc, %i.ay
  store i64 %i.bd, ptr %i.bb, align 8, !alias.scope !284
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.be, align 8
  %wide.load69 = load <4 x i32>, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load70 = load <4 x i32>, ptr %i.bg, align 8
  %wide.load71 = load <4 x i32>, ptr %i.bh, align 8
  %i.bi = add <4 x i32> %wide.load70, %wide.load
  %i.bj = add <4 x i32> %wide.load71, %wide.load69
  store <4 x i32> %i.bi, ptr %i.be, align 8
  store <4 x i32> %i.bj, ptr %i.bf, align 8
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.next ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.bk, align 8
  %wide.load69.1 = load <4 x i32>, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index.next ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load70.1 = load <4 x i32>, ptr %i.bm, align 8
  %wide.load71.1 = load <4 x i32>, ptr %i.bn, align 8
  %i.bo = add <4 x i32> %wide.load70.1, %wide.load.1
  %i.bp = add <4 x i32> %wide.load71.1, %wide.load69.1
  store <4 x i32> %i.bo, ptr %i.bk, align 8
  store <4 x i32> %i.bp, ptr %i.bl, align 8
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next.1, 544
  br i1 %i.bq, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECskeugdADtBsi_12pingora_core.exit, label %vector.body, !llvm.loop !276

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECskeugdADtBsi_12pingora_core.exit: ; preds = %vector.body
  %i.br = call noundef float @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram17HistogramDistanceECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.a, ptr noalias nofree noundef nonnull %7) ; 2 uses
  %i.bs = fsub float %.sroa.030.0, %i.ar
  %i.bt = fcmp olt float %i.br, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bt, label %bb.s, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bv = load float, ptr %i.bu, align 4, !noundef !10 ; 2 uses
  %i.bw = fcmp olt float %i.bv, 0.000000e+00
  %spec.store.select = select i1 %i.bw, float 0.000000e+00, float %i.bv
  br label %vector.ph

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #21
  unreachable

bb.y:                                             ; preds = %bb.s
  %.not49 = icmp eq i64 %9, 0
  br i1 %.not49, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %.split, %bb.s, %bb.ac
  %i.bx = icmp ult i64 %i.av, %6
  br i1 %i.bx, label %bb.ae, label %bb.al

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !noundef !10 ; 2 uses
  %i.ca = fcmp une float %i.bz, %i.aw
  br i1 %i.ca, label %.split, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #21
  unreachable

.split:                                           ; preds = %bb.aa
  %i.cb = fcmp ogt float %i.bz, %i.aw
  br i1 %i.cb, label %bb.ad, label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !10
  %i.ce = load i32, ptr %8, align 4, !noundef !10
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = sub nuw i32 %spec.select, %spec.select50
  %i.ch = icmp ugt i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ad, label %bb.z

bb.ad:                                            ; preds = %.split, %bb.ac
  %i.ci = icmp ult i64 %i.av, %6
  br i1 %i.ci, label %bb.ah, label %bb.ak

bb.ae:                                            ; preds = %bb.z
  %i.cj = icmp ult i64 %i.av, %9
  br i1 %i.cj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.av ; 4 uses
  store i32 %spec.select50, ptr %i.ck, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %spec.select, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store float %i.aw, ptr %.sroa.11.0..sroa_idx, align 4
  %i.cl = add nuw nsw i64 %i.av, 1
  store i64 %i.cl, ptr %10, align 8
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #21
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.cm = icmp ult i64 %i.av, %9
  br i1 %i.cm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false)
  %i.co = add nuw nsw i64 %i.av, 1
  store i64 %i.co, ptr %10, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #21
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ad
  store i32 %spec.select50, ptr %8, align 4
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %spec.select, ptr %.sroa.5.0..sroa_idx20, align 4
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx22, align 4
  store float %i.aw, ptr %i.by, align 4
  br label %bb.al

bb.al:                                            ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECskeugdADtBsi_12pingora_core.exit, %bb.ak, %bb.z, %bb.af, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull writeonly align 8 captures(address) %0, i64 noundef range(i64 0, 3256840408493919) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %.idx = mul nuw nsw i64 %2, 2832
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #21
  unreachable

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.02.06 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 2832 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.02.06, i8 0, i64 2824, i1 false)
  store float 3.402000e+38, ptr %i.d, align 8, !alias.scope !287
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull writeonly align 8 captures(address) %0, i64 noundef range(i64 0, 8868626958514208) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %.idx = mul nuw nsw i64 %2, 1040
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #21
  unreachable

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.02.06 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 1040 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.02.06, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %i.d, align 8, !alias.scope !290
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_17HistogramDistanceECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull writeonly align 8 captures(address) %0, i64 noundef range(i64 0, 4207742717543238) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %.idx = mul nuw nsw i64 %2, 2192
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #21
  unreachable

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.02.06 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 2192 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.02.06, i8 0, i64 2184, i1 false)
  store float 3.402000e+38, ptr %i.d, align 8, !alias.scope !293
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(2832) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 704
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !10
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !298, !noundef !10
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !299
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef 704, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramAddItemNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1040) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 256
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !10
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !304, !noundef !10
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !305
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef 256, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(2192) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 544
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !10
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !310, !noundef !10
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !311
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef 544, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram18HistogramAddVectorNtB2_16HistogramCommandtECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(2832) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address) %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !318, !noundef !10
  %i.c = add i64 %i.b, %3
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !319
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %3, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %3, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.sroa.02.08 = phi ptr [ %i.i, %bb.d ], [ %1, %bb.b ] ; 2 uses
  %i.f = load i16, ptr %.sroa.02.08, align 2, !alias.scope !320, !noundef !10 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = icmp ult i16 %i.f, 704
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.08, i64 2 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noundef !10
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq ptr %i.i, %i.d
  br i1 %i.m, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef 704, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #21
  unreachable

._crit_edge:                                      ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram18HistogramAddVectorNtB2_16HistogramLiteralhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(1040) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !328, !noundef !10
  %i.c = add i64 %i.b, %3
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !329
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.e = icmp samesign eq i64 %3, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.02.08.prol = phi ptr [ %i.h, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.f = load i8, ptr %.sroa.02.08.prol, align 1, !alias.scope !330, !noundef !10
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.08.prol, i64 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !noundef !10
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !327

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.02.08.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %i.l = icmp ult i64 %3, 4
  br i1 %i.l, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %3, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.02.08 = phi ptr [ %i.ag, %.lr.ph ], [ %.sroa.02.08.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.m = load i8, ptr %.sroa.02.08, align 1, !alias.scope !330, !noundef !10
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.08, i64 1
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noundef !10
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4
  %i.s = load i8, ptr %i.o, align 1, !alias.scope !330, !noundef !10
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.08, i64 2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !noundef !10
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = load i8, ptr %i.u, align 1, !alias.scope !330, !noundef !10
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.08, i64 3
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !10
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = load i8, ptr %i.aa, align 1, !alias.scope !330, !noundef !10
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.08, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !10
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4
  %i.ak = icmp eq ptr %i.ag, %i.d
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram18HistogramAddVectorNtB2_17HistogramDistancetECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(2192) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address) %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef %3) unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock24BrotliOptimizeHistogramsNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.0.020 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.i ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.0.020, %.val11
  br i1 %exitcond.not, label %bb.j, label %bb.i

.preheader:                                       ; preds = %bb.g, %.preheader16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = load i64, ptr %i.j, align 8, !noundef !10 ; 2 uses
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph24

.lr.ph24:                                         ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val15 = load i64, ptr %i.l, align 8, !noundef !10 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val14 = load ptr, ptr %i.m, align 8, !nonnull !10
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph22, %bb.g
  %.sroa.0.121 = phi i64 [ 0, %.lr.ph22 ], [ %i.q, %bb.g ] ; 3 uses
  %exitcond31.not = icmp eq i64 %.sroa.0.121, %.val13
  br i1 %exitcond31.not, label %bb.h, label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %.lr.ph24, %bb.e
  %.sroa.0.223 = phi i64 [ 0, %.lr.ph24 ], [ %i.o, %bb.e ] ; 3 uses
  %exitcond33.not = icmp eq i64 %.sroa.0.223, %.val15
  br i1 %exitcond33.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [2192 x i8], ptr %.val14, i64 %.sroa.0.223
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode33BrotliOptimizeHuffmanCountsForRle(i64 noundef %0, ptr noalias nofree noundef nonnull align 4 %i.n, i64 noundef 544, ptr noalias nofree noundef nonnull %i.a, i64 noundef 704)
  %i.o = add nuw i64 %.sroa.0.223, 1              ; 2 uses
  %exitcond34.not = icmp eq i64 %i.o, %i.k
  br i1 %exitcond34.not, label %._crit_edge, label %bb.d

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val15, i64 noundef %.val15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #21
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [2832 x i8], ptr %.val12, i64 %.sroa.0.121
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode33BrotliOptimizeHuffmanCountsForRle(i64 noundef 704, ptr noalias nofree noundef nonnull align 4 %i.p, i64 noundef 704, ptr noalias nofree noundef nonnull %i.a, i64 noundef 704)
  %i.q = add nuw i64 %.sroa.0.121, 1              ; 2 uses
  %exitcond32.not = icmp eq i64 %i.q, %i.g
  br i1 %exitcond32.not, label %.preheader, label %bb.c

bb.h:                                             ; preds = %bb.c
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val13, i64 noundef %.val13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #21
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [1040 x i8], ptr %.val, i64 %.sroa.0.020
  call void @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14entropy_encode33BrotliOptimizeHuffmanCountsForRle(i64 noundef 256, ptr noalias nofree noundef nonnull align 4 %i.r, i64 noundef 256, ptr noalias nofree noundef nonnull %i.a, i64 noundef 704)
  %i.s = add nuw i64 %.sroa.0.020, 1              ; 2 uses
  %exitcond30.not = icmp eq i64 %i.s, %i.c
  br i1 %exitcond30.not, label %.preheader16, label %bb.b

bb.j:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val11, i64 noundef %.val11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock26BrotliBuildMetaBlockGreedyNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4, i8 noundef %5, i8 noundef %6, i8 noundef range(i8 0, 4) %7, ptr noalias nofree noundef nonnull readonly captures(none) %8, i64 noundef range(i64 0, -9223372036854775808) %9, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %11, i64 noundef range(i64 0, 2305843009213693952) %12, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %13, i64 noundef range(i64 0, 576460752303423488) %14, i64 noundef %15, ptr noalias nofree noundef align 8 captures(none) dereferenceable(264) %16) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %10, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef %5, i8 noundef %6, i8 noundef %7, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) inttoptr (i64 4 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %13, i64 noundef %14, i64 noundef %15, ptr noalias nofree noundef align 8 dereferenceable(264) %16)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef %5, i8 noundef %6, i8 noundef %7, i64 noundef %10, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %11, i64 noundef %12, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %13, i64 noundef %14, i64 noundef %15, ptr noalias nofree noundef align 8 dereferenceable(264) %16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock31ContextBlockSplitterFinishBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1c_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 8868626958514208) %4, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [104 x i8], align 4               ; 7 uses
  %i.e = alloca [52 x i8], align 4                ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !10 ; 58 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !10 ; 6 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.k, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %i.i, %bb.a ], [ %i.k, %bb.b ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !10 ; 17 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val156 = load i64, ptr %i.q, align 8, !noundef !10
  %.not116 = icmp eq i64 %.val156, 0
  br i1 %.not116, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.p, label %.preheader

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val155 = load ptr, ptr %i.r, align 8, !nonnull !10, !noundef !10
  %i.s = trunc i64 %i.m to i32
  store i32 %i.s, ptr %.val155, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val162 = load i64, ptr %i.t, align 8, !noundef !10
  %.not117 = icmp eq i64 %.val162, 0
  br i1 %.not117, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %.val161 = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10
  store i8 0, ptr %.val161, align 1
  %.not270 = icmp eq i64 %i.g, 0                  ; 2 uses
  br i1 %.not270, label %._crit_edge265, label %.lr.ph264

.lr.ph264:                                        ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.x = tail call i64 @llvm.usub.sat.i64(i64 26, i64 %i.g)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #21
  unreachable

._crit_edge265:                                   ; preds = %bb.u, %bb.h
  store i64 1, ptr %i.n, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !10
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !10
  %i.ad = add i64 %i.ac, %i.g                     ; 6 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = load i64, ptr %5, align 8, !noundef !10
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.k, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit

bb.j:                                             ; preds = %.lr.ph264, %bb.u
  %.sroa.0.0262 = phi i64 [ 0, %.lr.ph264 ], [ %i.aw, %bb.u ] ; 7 uses
  %exitcond368.not = icmp eq i64 %.sroa.0.0262, %4
  br i1 %exitcond368.not, label %bb.r, label %bb.q

bb.k:                                             ; preds = %._crit_edge265
  %i.ag = icmp ugt i64 %i.ad, %4
  br i1 %i.ag, label %bb.o, label %bb.l, !prof !11

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit: ; preds = %.lr.ph.i, %bb.m, %._crit_edge265
  store i64 0, ptr %i.h, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ah = sub nuw nsw i64 %4, %i.ad               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %.not.i = icmp ugt i64 %i.g, %i.ah
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.ad ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.g, 1040
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i
  br i1 %.not270, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef range(i64 0, 8868626958514208) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #21, !noalias !769
  unreachable

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.sroa.02.06.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.ai, %bb.m ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 1040 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.02.06.i, i8 0, i64 1032, i1 false), !alias.scope !769
  store float 3.402000e+38, ptr %i.al, align 8, !alias.scope !770
  %i.am = icmp eq ptr %i.ak, %i.aj
  br i1 %i.am, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit, label %.lr.ph.i

bb.o:                                             ; preds = %bb.k
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ad, i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #21
  unreachable

bb.p:                                             ; preds = %bb.ao, %bb.e, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit
  %i.an = icmp eq i32 %6, 0
  br i1 %i.an, label %bb.bc, label %bb.bd

bb.q:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %.sroa.0.0262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.ap = call noundef float @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc8bit_cost14ShannonEntropy(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ao, i64 noundef 256, i64 noundef %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %i.aq = load i64, ptr %i.c, align 8, !noundef !10
  %i.ar = uitofp i64 %i.aq to float               ; 2 uses
  %i.as = fcmp olt float %i.ap, %i.ar
  %.sroa.06.0 = select i1 %i.as, float %i.ar, float %i.ap ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond369.not = icmp eq i64 %.sroa.0.0262, 26
  br i1 %exitcond369.not, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.j
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #21
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.0.0262
  store float %.sroa.06.0, ptr %i.at, align 4
  %i.au = add nuw nsw i64 %.sroa.0.0262, %i.g     ; 2 uses
  %exitcond371.not = icmp eq i64 %.sroa.0.0262, %i.x
  br i1 %exitcond371.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 26, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #21
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.au
  store float %.sroa.06.0, ptr %i.av, align 4
  %i.aw = add nuw nsw i64 %.sroa.0.0262, 1        ; 2 uses
  %exitcond372.not = icmp eq i64 %i.aw, %i.g
  br i1 %exitcond372.not, label %._crit_edge265, label %bb.j

bb.v:                                             ; preds = %bb.s
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #21
  unreachable

.preheader:                                       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.e, i8 0, i64 52, i1 false)
  %i.ax = shl i64 %i.g, 1
  %i.ay = tail call { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %1, i64 noundef %i.ax) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 15 uses
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1      ; 13 uses
  %.not266 = icmp eq i64 %i.g, 0                  ; 5 uses
  br i1 %.not266, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !10 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bg = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.bc)
  %i.bh = tail call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 %i.g)
  %i.bi = tail call i64 @llvm.usub.sat.i64(i64 26, i64 %i.g)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = mul i64 %i.g, 2080
  %i.bl = getelementptr i8, ptr %i.az, i64 %i.bk
  %scevgep = getelementptr i8, ptr %i.bl, i64 -16
  %i.bm = mul i64 %i.g, 1040                      ; 2 uses
  %scevgep467 = getelementptr i8, ptr %i.az, i64 %i.bm
  %i.bn = getelementptr i8, ptr %i.az, i64 %i.bm
  %scevgep476 = getelementptr i8, ptr %i.bn, i64 -16
  br label %bb.w

._crit_edge:                                      ; preds = %bb.cm, %.preheader
  %.sroa.0.0 = phi float [ 0.000000e+00, %.preheader ], [ %i.lt, %bb.cm ] ; 2 uses
  %.sroa.7.0 = phi float [ 0.000000e+00, %.preheader ], [ %i.nz, %bb.cm ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !10 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !noundef !10
  %i.bs = icmp ult i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.lr.ph, %bb.cm
  %.sroa.0.1 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.lt, %bb.cm ]
  %.sroa.7.1 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.nz, %bb.cm ]
  %.sroa.08.0247 = phi i64 [ 0, %.lr.ph ], [ %i.oa, %bb.cm ] ; 14 uses
  %i.bt = add nuw nsw i64 %i.bc, %.sroa.08.0247   ; 2 uses
  %exitcond339.not = icmp eq i64 %.sroa.08.0247, %i.bg
  br i1 %exitcond339.not, label %.invoke445, label %bb.cf

bb.x:                                             ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bv = load float, ptr %i.bu, align 8, !noundef !10 ; 2 uses
  %i.bw = fcmp ogt float %.sroa.0.0, %i.bv
  %i.bx = fcmp ogt float %.sroa.7.0, %i.bv
  %or.cond = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.au, label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %i.by = fadd float %.sroa.0.0, -2.000000e+01
  %i.bz = fcmp olt float %.sroa.7.0, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val150 = load i64, ptr %i.ca, align 8, !noundef !10 ; 4 uses
  br i1 %i.bz, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = add i64 %i.o, -1                        ; 3 uses
  %i.cc = icmp ult i64 %i.cb, %.val150
  br i1 %i.cc, label %bb.aa, label %.invoke445

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val151 = load ptr, ptr %i.cd, align 8, !nonnull !10, !noundef !10
  %i.ce = trunc i64 %i.m to i32
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val151, i64 %i.cb ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !noundef !10
  %i.ch = add i32 %i.cg, %i.ce
  store i32 %i.ch, ptr %i.cf, align 4
  br i1 %.not266, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ci = load i64, ptr %0, align 8               ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ck = icmp eq i64 %i.bp, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cn = call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.ci)
  %i.co = call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.cm)
  br label %bb.ad

.invoke445:                                       ; preds = %bb.cl, %bb.ch, %bb.cj, %bb.cg, %bb.w, %bb.ad, %bb.ap, %.lr.ph260, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.bs, %bb.bu, %bb.bw, %bb.by, %bb.ca, %bb.cc, %bb.ce, %bb.av, %bb.au, %bb.am, %bb.al, %bb.ak, %bb.z, %bb.bf
  %i.cp = phi i64 [ %i.cb, %bb.z ], [ %i.iq, %bb.by ], [ %i.o, %bb.ak ], [ %i.iw, %bb.ca ], [ %i.ba, %bb.ad ], [ %i.jc, %bb.cc ], [ %i.ji, %bb.ce ], [ 13, %bb.bf ], [ %i.o, %bb.av ], [ %i.o, %bb.au ], [ %i.o, %bb.am ], [ %i.em, %bb.ap ], [ %i.du, %bb.al ], [ %i.g, %.lr.ph260 ], [ %i.go, %bb.bg ], [ %i.gu, %bb.bi ], [ %i.ha, %bb.bk ], [ %i.hg, %bb.bm ], [ %i.hm, %bb.bo ], [ %i.hs, %bb.bq ], [ %i.hy, %bb.bs ], [ %i.ie, %bb.bu ], [ %i.ik, %bb.bw ], [ 13, %bb.cg ], [ %i.bt, %bb.w ], [ %i.lu, %bb.cl ], [ %i.ba, %bb.ch ], [ %i.lu, %bb.cj ]
  %i.cq = phi i64 [ %.val150, %bb.z ], [ 26, %bb.by ], [ %.val150, %bb.ak ], [ 26, %bb.ca ], [ %i.ba, %bb.ad ], [ 26, %bb.cc ], [ 26, %bb.ce ], [ 13, %bb.bf ], [ %.val158, %bb.av ], [ %.val154, %bb.au ], [ %.val140, %bb.am ], [ %i.ba, %bb.ap ], [ %.val140, %bb.al ], [ 26, %.lr.ph260 ], [ 26, %bb.bg ], [ 26, %bb.bi ], [ 26, %bb.bk ], [ 26, %bb.bm ], [ 26, %bb.bo ], [ 26, %bb.bq ], [ 26, %bb.bs ], [ 26, %bb.bu ], [ 26, %bb.bw ], [ 13, %bb.cg ], [ %4, %bb.w ], [ 26, %bb.cl ], [ %i.ba, %bb.ch ], [ %i.ba, %bb.cj ]
  %i.cr = phi ptr [ @109, %bb.z ], [ @126, %bb.by ], [ @115, %bb.ak ], [ @126, %bb.ca ], [ @110, %bb.ad ], [ @126, %bb.cc ], [ @126, %bb.ce ], [ @127, %bb.bf ], [ @124, %bb.av ], [ @123, %bb.au ], [ @117, %bb.am ], [ @118, %bb.ap ], [ @116, %bb.al ], [ @126, %.lr.ph260 ], [ @126, %bb.bg ], [ @126, %bb.bi ], [ @126, %bb.bk ], [ @126, %bb.bm ], [ @126, %bb.bo ], [ @126, %bb.bq ], [ @126, %bb.bs ], [ @126, %bb.bu ], [ @126, %bb.bw ], [ @129, %bb.cg ], [ @128, %bb.w ], [ @132, %bb.cl ], [ @130, %bb.ch ], [ @130, %bb.cj ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cp, i64 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #23
          to label %.cont446 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont446:                                         ; preds = %.invoke445
  unreachable

bb.ab:                                            ; preds = %bb.bb
  unreachable

._crit_edge252:                                   ; preds = %.noexc125, %bb.aa
  store i64 0, ptr %i.h, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !10
  %i.cu = add i64 %i.ct, 1                        ; 2 uses
  store i64 %i.cu, ptr %i.cs, align 8
  %i.cv = icmp ugt i64 %i.cu, 1
  br i1 %i.cv, label %bb.ac, label %bb.ao

bb.ac:                                            ; preds = %._crit_edge252
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !10
  %i.cy = add i64 %i.cx, %i.k
  store i64 %i.cy, ptr %i.cw, align 8
  br label %bb.ao

bb.ad:                                            ; preds = %.lr.ph251, %.noexc125
  %.sroa.08.1249 = phi i64 [ 0, %.lr.ph251 ], [ %i.dl, %.noexc125 ] ; 11 uses
  %exitcond347.not = icmp eq i64 %.sroa.08.1249, %i.ba
  br i1 %exitcond347.not, label %.invoke445, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = add nuw nsw i64 %i.ci, %.sroa.08.1249   ; 2 uses
  %exitcond349.not = icmp eq i64 %.sroa.08.1249, %i.cn
  br i1 %exitcond349.not, label %.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw [1040 x i8], ptr %i.az, i64 %.sroa.08.1249
  %i.db = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.cz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.db, ptr noundef nonnull align 8 dereferenceable(1040) %i.da, i64 1040, i1 false)
  %exitcond350.not = icmp eq i64 %.sroa.08.1249, 26
  br i1 %exitcond350.not, label %.invoke, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.08.1249
  %i.dd = load float, ptr %i.dc, align 4, !noundef !10 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.sroa.08.1249
  store float %i.dd, ptr %i.de, align 4
  br i1 %i.ck, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.df = add i64 %.sroa.08.1249, %i.g            ; 3 uses
  %i.dg = icmp ult i64 %i.df, 26
  br i1 %i.dg, label %bb.ai, label %.invoke

bb.ai:                                            ; preds = %bb.ah
end_hunk_1
begin_hunk_2_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock31ContextBlockSplitterFinishBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1c_ECskeugdADtBsi_12pingora_core:bb.a
  %i.dl = add nuw nsw i64 %.sroa.08.1249, 1       ; 2 uses
  %exitcond353.not = icmp eq i64 %i.dl, %i.g
  br i1 %exitcond353.not, label %._crit_edge252, label %bb.ad

.invoke:                                          ; preds = %bb.ci, %bb.ck, %bb.aj, %bb.ah, %bb.af, %bb.ae, %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.dm = phi i64 [ %i.di, %bb.aj ], [ %i.ev, %bb.at ], [ %i.en, %bb.aq ], [ %i.em, %bb.as ], [ 26, %bb.ar ], [ %i.cz, %bb.ae ], [ 26, %bb.af ], [ %i.df, %bb.ah ], [ %i.lw, %bb.ck ], [ %i.jq, %bb.ci ]
  %i.dn = phi i64 [ %4, %bb.aj ], [ %4, %bb.at ], [ %4, %bb.aq ], [ 26, %bb.as ], [ 26, %bb.ar ], [ %4, %bb.ae ], [ 26, %bb.af ], [ 26, %bb.ah ], [ %4, %bb.ck ], [ %4, %bb.ci ]
  %i.do = phi ptr [ @114, %bb.aj ], [ @122, %bb.at ], [ @119, %bb.aq ], [ @121, %bb.as ], [ @120, %bb.ar ], [ @111, %bb.ae ], [ @112, %bb.af ], [ @113, %bb.ah ], [ @131, %bb.ck ], [ @131, %bb.ci ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do) #23
          to label %.cont unwind label %.thread183

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.y
  %i.dp = icmp ult i64 %i.o, %.val150
  br i1 %i.dp, label %bb.al, label %.invoke445

bb.al:                                            ; preds = %bb.ak
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val149 = load ptr, ptr %i.dq, align 8, !nonnull !10, !noundef !10
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val149, i64 %i.o
  %i.ds = trunc i64 %i.m to i32
  store i32 %i.ds, ptr %i.dr, align 4
  %.val139 = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val140 = load i64, ptr %i.dt, align 8, !noundef !10 ; 4 uses
  %i.du = add i64 %i.o, -2                        ; 3 uses
  %i.dv = icmp ult i64 %i.du, %.val140
  br i1 %i.dv, label %bb.am, label %.invoke445

bb.am:                                            ; preds = %bb.al
  %i.dw = icmp ult i64 %i.o, %.val140
  br i1 %i.dw, label %bb.an, label %.invoke445

bb.an:                                            ; preds = %bb.am
  %i.dx = getelementptr inbounds nuw i8, ptr %.val139, i64 %i.du
  %i.dy = load i8, ptr %i.dx, align 1, !noundef !10
  %i.dz = getelementptr inbounds nuw i8, ptr %.val139, i64 %i.o
  store i8 %i.dy, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.049.0.copyload = load i64, ptr %0, align 8
  %i.eb = load i64, ptr %i.ea, align 8            ; 3 uses
  store i64 %i.eb, ptr %0, align 8
  store i64 %.sroa.049.0.copyload, ptr %i.ea, align 8
  br i1 %.not266, label %._crit_edge257, label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ee = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.ef = call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 %i.g)
  %i.eg = call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.eb)
  %i.eh = call i64 @llvm.usub.sat.i64(i64 26, i64 %i.g)
  %i.ei = call i64 @llvm.usub.sat.i64(i64 %4, i64 %i.ee)
  br label %bb.ap

._crit_edge257:                                   ; preds = %.noexc, %bb.an
  %i.ej = add nuw i64 %i.o, 1
  store i64 %i.ej, ptr %i.n, align 8
  store i64 0, ptr %i.h, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.k, ptr %i.el, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge257, %._crit_edge252, %bb.ac, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit168
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  call void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %1, ptr noalias noundef nonnull align 8 %i.az, i64 noundef %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.ap:                                            ; preds = %.lr.ph256, %.noexc
  %.sroa.08.2254 = phi i64 [ 0, %.lr.ph256 ], [ %i.ey, %.noexc ] ; 10 uses
  %i.em = add nuw nsw i64 %.sroa.08.2254, %i.g    ; 5 uses
  %exitcond355.not = icmp eq i64 %.sroa.08.2254, %i.ef
  br i1 %exitcond355.not, label %.invoke445, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = add nuw nsw i64 %.sroa.08.2254, %i.eb   ; 2 uses
  %exitcond357.not = icmp eq i64 %.sroa.08.2254, %i.eg
  br i1 %exitcond357.not, label %.invoke, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eo = getelementptr inbounds nuw [1040 x i8], ptr %i.az, i64 %i.em
  %i.ep = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.en
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.ep, ptr noundef nonnull align 8 dereferenceable(1040) %i.eo, i64 1040, i1 false)
  %exitcond358.not = icmp eq i64 %.sroa.08.2254, 26
  br i1 %exitcond358.not, label %.invoke, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %exitcond360.not = icmp eq i64 %.sroa.08.2254, %i.eh
  br i1 %exitcond360.not, label %.invoke, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.sroa.08.2254 ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !noundef !10
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.em
  store float %i.er, ptr %i.es, align 4
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.em
  %i.eu = load float, ptr %i.et, align 4, !noundef !10
  store float %i.eu, ptr %i.eq, align 4
  %i.ev = add nuw nsw i64 %i.ee, %.sroa.08.2254   ; 2 uses
  %exitcond362.not = icmp eq i64 %.sroa.08.2254, %i.ei
  br i1 %exitcond362.not, label %.invoke, label %.noexc

.noexc:                                           ; preds = %bb.at
  %i.ew = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ew, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %i.ex, align 8, !alias.scope !772
  %i.ey = add nuw nsw i64 %.sroa.08.2254, 1       ; 2 uses
  %exitcond363.not = icmp eq i64 %i.ey, %i.g
  br i1 %exitcond363.not, label %._crit_edge257, label %bb.ap

bb.au:                                            ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val154 = load i64, ptr %i.ez, align 8, !noundef !10 ; 2 uses
  %i.fa = icmp ult i64 %i.o, %.val154
  br i1 %i.fa, label %bb.av, label %.invoke445

bb.av:                                            ; preds = %bb.au
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val153 = load ptr, ptr %i.fb, align 8, !nonnull !10, !noundef !10
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %i.o
  %i.fd = trunc i64 %i.m to i32
  store i32 %i.fd, ptr %i.fc, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val158 = load i64, ptr %i.fe, align 8, !noundef !10 ; 2 uses
  %i.ff = icmp ult i64 %i.o, %.val158
  br i1 %i.ff, label %bb.aw, label %.invoke445

bb.aw:                                            ; preds = %bb.av
  %.val157 = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10
  %i.fg = getelementptr inbounds nuw i8, ptr %.val157, i64 %i.o
  %i.fh = trunc i64 %i.bp to i8
  store i8 %i.fh, ptr %i.fg, align 1
  %i.fi = load i64, ptr %0, align 8, !noundef !10
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fi, ptr %i.fj, align 8
  %i.fk = mul i64 %i.bp, %i.g
  store i64 %i.fk, ptr %0, align 8
  br i1 %.not266, label %._crit_edge261, label %.lr.ph260

.lr.ph260:                                        ; preds = %bb.aw
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 16 uses
  %i.fm = call i64 @llvm.usub.sat.i64(i64 26, i64 %i.g) ; 13 uses
  %exitcond365.not = icmp ugt i64 %i.g, 25
  br i1 %exitcond365.not, label %.invoke445, label %bb.be

._crit_edge261:                                   ; preds = %bb.be, %bb.bh, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.br, %bb.bt, %bb.bv, %bb.bx, %bb.bz, %bb.cb, %bb.cd, %bb.aw
  %i.fn = add nuw i64 %i.o, 1
  store i64 %i.fn, ptr %i.n, align 8
  %i.fo = add nuw i64 %i.bp, 1
  store i64 %i.fo, ptr %i.bo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !10
  %i.fr = add i64 %i.fq, %i.g                     ; 6 uses
  store i64 %i.fr, ptr %i.fp, align 8
  %i.fs = load i64, ptr %5, align 8, !noundef !10
  %i.ft = icmp ult i64 %i.fr, %i.fs
  br i1 %i.ft, label %bb.ax, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit168

bb.ax:                                            ; preds = %._crit_edge261
  %i.fu = icmp ugt i64 %i.fr, %4
  br i1 %i.fu, label %bb.bb, label %bb.ay, !prof !11

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit168: ; preds = %.lr.ph.i165, %bb.az, %._crit_edge261
  store i64 0, ptr %i.h, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.k, ptr %i.fw, align 8
  br label %bb.ao

bb.ay:                                            ; preds = %bb.ax
  %i.fx = sub nuw nsw i64 %4, %i.fr               ; 2 uses
  %.not.i163 = icmp ugt i64 %i.g, %i.fx
  br i1 %.not.i163, label %bb.ba, label %bb.az, !prof !21

bb.az:                                            ; preds = %bb.ay
  %i.fy = getelementptr inbounds nuw [1040 x i8], ptr %3, i64 %i.fr ; 2 uses
  %.idx.i164 = mul nuw nsw i64 %i.g, 1040
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.idx.i164
  br i1 %.not266, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit168, label %.lr.ph.i165

bb.ba:                                            ; preds = %bb.ay
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef range(i64 0, 8868626958514208) %i.fx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #21
          to label %.noexc167 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc167:                                        ; preds = %bb.ba
  unreachable

.lr.ph.i165:                                      ; preds = %bb.az, %.lr.ph.i165
  %.sroa.02.06.i166 = phi ptr [ %i.ga, %.lr.ph.i165 ], [ %i.fy, %bb.az ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i166, i64 1040 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i166, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.02.06.i166, i8 0, i64 1032, i1 false), !alias.scope !773
  store float 3.402000e+38, ptr %i.gb, align 8, !alias.scope !774
  %i.gc = icmp eq ptr %i.ga, %i.fz
  br i1 %i.gc, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramLiteralECskeugdADtBsi_12pingora_core.exit168, label %.lr.ph.i165

bb.bb:                                            ; preds = %bb.ax
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.fr, i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #23
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bd, %bb.p
  ret void

bb.bd:                                            ; preds = %bb.p
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ge = load i64, ptr %i.gd, align 8, !noundef !10
  %i.gf = mul i64 %i.ge, %i.g
  store i64 %i.gf, ptr %5, align 8
  %i.gg = load i64, ptr %i.n, align 8, !noundef !10
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.gg, ptr %i.gh, align 8
  br label %bb.bc

bb.be:                                            ; preds = %.lr.ph260
  %i.gi = load float, ptr %i.fl, align 8, !noundef !10
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.g
  store float %i.gi, ptr %i.gj, align 4
  %i.gk = load float, ptr %i.e, align 4, !noundef !10
  store float %i.gk, ptr %i.fl, align 8
  %exitcond367.not = icmp eq i64 %i.g, 1
  br i1 %exitcond367.not, label %._crit_edge261, label %bb.bg

bb.bf:                                            ; preds = %bb.ce
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.gm = load float, ptr %i.gl, align 4, !noundef !10
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.ji
  store float %i.gm, ptr %i.gn, align 4
  br label %.invoke445

bb.bg:                                            ; preds = %bb.be
  %i.go = add nuw nsw i64 %i.g, 1                 ; 2 uses
  %exitcond365.1.not = icmp eq i64 %i.fm, 1
  br i1 %exitcond365.1.not, label %.invoke445, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !noundef !10
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.go
  store float %i.gq, ptr %i.gr, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.gt = load float, ptr %i.gs, align 4, !noundef !10
  store float %i.gt, ptr %i.gp, align 4
  %exitcond367.1.not = icmp eq i64 %i.g, 2
  br i1 %exitcond367.1.not, label %._crit_edge261, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gu = add nuw nsw i64 %i.g, 2                 ; 2 uses
  %exitcond365.2.not = icmp eq i64 %i.fm, 2
  br i1 %exitcond365.2.not, label %.invoke445, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 8, !noundef !10
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.gu
  store float %i.gw, ptr %i.gx, align 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gz = load float, ptr %i.gy, align 4, !noundef !10
  store float %i.gz, ptr %i.gv, align 8
  %exitcond367.2.not = icmp eq i64 %i.g, 3
  br i1 %exitcond367.2.not, label %._crit_edge261, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ha = add nuw nsw i64 %i.g, 3                 ; 2 uses
  %exitcond365.3.not = icmp eq i64 %i.fm, 3
  br i1 %exitcond365.3.not, label %.invoke445, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !noundef !10
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.ha
  store float %i.hc, ptr %i.hd, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.hf = load float, ptr %i.he, align 4, !noundef !10
  store float %i.hf, ptr %i.hb, align 4
  %exitcond367.3.not = icmp eq i64 %i.g, 4
  br i1 %exitcond367.3.not, label %._crit_edge261, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hg = add nuw nsw i64 %i.g, 4                 ; 2 uses
  %exitcond365.4.not = icmp eq i64 %i.fm, 4
  br i1 %exitcond365.4.not, label %.invoke445, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.hi = load float, ptr %i.hh, align 8, !noundef !10
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hg
  store float %i.hi, ptr %i.hj, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.hl = load float, ptr %i.hk, align 4, !noundef !10
  store float %i.hl, ptr %i.hh, align 8
  %exitcond367.4.not = icmp eq i64 %i.g, 5
  br i1 %exitcond367.4.not, label %._crit_edge261, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hm = add nuw nsw i64 %i.g, 5                 ; 2 uses
  %exitcond365.5.not = icmp eq i64 %i.fm, 5
  br i1 %exitcond365.5.not, label %.invoke445, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !noundef !10
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hm
  store float %i.ho, ptr %i.hp, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.hr = load float, ptr %i.hq, align 4, !noundef !10
  store float %i.hr, ptr %i.hn, align 4
  %exitcond367.5.not = icmp eq i64 %i.g, 6
  br i1 %exitcond367.5.not, label %._crit_edge261, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hs = add nuw nsw i64 %i.g, 6                 ; 2 uses
  %exitcond365.6.not = icmp eq i64 %i.fm, 6
  br i1 %exitcond365.6.not, label %.invoke445, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hu = load float, ptr %i.ht, align 8, !noundef !10
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hs
  store float %i.hu, ptr %i.hv, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.hx = load float, ptr %i.hw, align 4, !noundef !10
  store float %i.hx, ptr %i.ht, align 8
  %exitcond367.6.not = icmp eq i64 %i.g, 7
  br i1 %exitcond367.6.not, label %._crit_edge261, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hy = add nuw nsw i64 %i.g, 7                 ; 2 uses
  %exitcond365.7.not = icmp eq i64 %i.fm, 7
  br i1 %exitcond365.7.not, label %.invoke445, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !noundef !10
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hy
  store float %i.ia, ptr %i.ib, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.id = load float, ptr %i.ic, align 4, !noundef !10
  store float %i.id, ptr %i.hz, align 4
  %exitcond367.7.not = icmp eq i64 %i.g, 8
  br i1 %exitcond367.7.not, label %._crit_edge261, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ie = add nuw nsw i64 %i.g, 8                 ; 2 uses
  %exitcond365.8.not = icmp eq i64 %i.fm, 8
  br i1 %exitcond365.8.not, label %.invoke445, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ig = load float, ptr %i.if, align 8, !noundef !10
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.ie
  store float %i.ig, ptr %i.ih, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ij = load float, ptr %i.ii, align 4, !noundef !10
  store float %i.ij, ptr %i.if, align 8
  %exitcond367.8.not = icmp eq i64 %i.g, 9
  br i1 %exitcond367.8.not, label %._crit_edge261, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ik = add nuw nsw i64 %i.g, 9                 ; 2 uses
  %exitcond365.9.not = icmp eq i64 %i.fm, 9
  br i1 %exitcond365.9.not, label %.invoke445, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !noundef !10
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.ik
  store float %i.im, ptr %i.in, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.ip = load float, ptr %i.io, align 4, !noundef !10
  store float %i.ip, ptr %i.il, align 4
  %exitcond367.9.not = icmp eq i64 %i.g, 10
  br i1 %exitcond367.9.not, label %._crit_edge261, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iq = add nuw nsw i64 %i.g, 10                ; 2 uses
  %exitcond365.10.not = icmp eq i64 %i.fm, 10
  br i1 %exitcond365.10.not, label %.invoke445, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.is = load float, ptr %i.ir, align 8, !noundef !10
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.iq
  store float %i.is, ptr %i.it, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.iv = load float, ptr %i.iu, align 4, !noundef !10
  store float %i.iv, ptr %i.ir, align 8
  %exitcond367.10.not = icmp eq i64 %i.g, 11
  br i1 %exitcond367.10.not, label %._crit_edge261, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iw = add nuw nsw i64 %i.g, 11                ; 2 uses
  %exitcond365.11.not = icmp eq i64 %i.fm, 11
end_hunk_2
begin_hunk_3_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
common.resume:                                    ; preds = %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.t, %bb.u, %bb.v, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm73.i83, %bb.bs ], [ %lpad.thr_comm73.i, %bb.t ], [ %lpad.thr_comm7179.i, %bb.ax ], [ %lpad.thr_comm81.i, %bb.w ], [ %lpad.thr_comm.i, %bb.v ], [ %lpad.thr_comm73.i, %bb.u ], [ %lpad.thr_comm83.i, %bb.az ], [ %lpad.thr_comm.i62, %bb.ay ], [ %lpad.thr_comm71.i, %bb.aw ], [ %lpad.thr_comm81.i73, %bb.bv ], [ %lpad.thr_comm.i85, %bb.bu ], [ %lpad.thr_comm73.i83, %bb.bt ], [ %lpad.thr_comm81.i96, %bb.cq ], [ %lpad.thr_comm.i108, %bb.cp ], [ %lpad.thr_comm73.i106, %bb.co ], [ %lpad.thr_comm73.i106, %bb.cn ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.q, %bb.p
  %lpad.thr_comm73.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = shl nuw nsw i64 %i.bc, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef range(i64 1, 0) %i.be, i64 noundef 4) #22, !noalias !867
  br label %common.resume

bb.v:                                             ; preds = %bb.h
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp eq i64 %i.aq, 0
  br i1 %i.bf, label %common.resume, label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread79.i
  %lpad.thr_comm81.i = phi { ptr, i32 } [ %lpad.thr_comm80.i, %.thread79.i ], [ %lpad.thr_comm.i, %bb.v ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef range(i64 1, 0) %i.aq, i64 noundef 1) #22, !noalias !867
  br label %common.resume

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.au, i8 0, i64 1032, i1 false), !noalias !867
  store float 3.402000e+38, ptr %i.bg, align 8, !alias.scope !868, !noalias !867
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6, i8 0, i64 16, i1 false)
  br label %bb.ba

bb.x:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %i.bh = icmp ult i64 %8, 14
  br i1 %i.bh, label %bb.z, label %bb.y, !prof !12

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 60, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #21, !noalias !872
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bi = icmp eq i64 %8, 0
  br i1 %i.bi, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.rhs.trunc.i = trunc nuw nsw i64 %8 to i16
  %i.bj = udiv i16 256, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.bj to i64           ; 2 uses
  %i.bk = add nuw nsw i64 %.zext.i, 1
  %..i.i48 = tail call noundef i64 @llvm.umin.i64(i64 %i.bk, i64 %i.o)
  %.val48.i49 = load ptr, ptr %14, align 8, !alias.scope !869, !nonnull !10, !noundef !10 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.val49.i = load i64, ptr %i.bl, align 8, !alias.scope !869, !noundef !10 ; 8 uses
  %.not.i50 = icmp ugt i64 %.val49.i, %.sroa.08.0.lcssa
  br i1 %.not.i50, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #21, !noalias !872
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bm = icmp eq i64 %.val49.i, 0                ; 2 uses
  %spec.select.i51 = select i1 %i.bm, i64 %i.o, i64 %.val49.i
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aj, %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.val36.i57 = load ptr, ptr %i.bn, align 8, !alias.scope !869, !nonnull !10, !noundef !10 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %.val37.i = load i64, ptr %i.bo, align 8, !alias.scope !869, !noundef !10 ; 8 uses
  %.not21.i58 = icmp ugt i64 %.val37.i, %.sroa.08.0.lcssa
  br i1 %.not21.i58, label %bb.am, label %bb.al

bb.ae:                                            ; preds = %bb.ae, %bb.ac
  %.sroa.0.1.i52 = phi i64 [ %spec.select.i51, %bb.ac ], [ %i.bp, %bb.ae ] ; 3 uses
  %.not19.i53 = icmp ugt i64 %.sroa.0.1.i52, %.sroa.08.0.lcssa
  %i.bp = shl nuw nsw i64 %.sroa.0.1.i52, 1
  br i1 %.not19.i53, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %bb.ae
  %i.bq = tail call { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %.sroa.0.1.i52), !noalias !873 ; 2 uses
  %i.br = extractvalue { ptr, i64 } %i.bq, 0      ; 5 uses
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1      ; 5 uses
  br i1 %i.bm, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %.not20.i54 = icmp ugt i64 %.val49.i, %i.bs
  br i1 %.not20.i54, label %bb.ah, label %bb.ai, !prof !21

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val49.i, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #23
          to label %bb.ak unwind label %bb.ay, !noalias !873

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %i.br, i64 noundef %.val49.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val48.i49, i64 noundef %.val49.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98)
          to label %bb.aj unwind label %.thread81.i, !noalias !873

.thread81.i:                                      ; preds = %bb.ai
  %lpad.thr_comm82.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.aj:                                            ; preds = %bb.ai, %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  store ptr %i.br, ptr %14, align 8, !alias.scope !869
  store i64 %i.bs, ptr %i.bl, align 8, !alias.scope !869
  tail call void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull %.val48.i49, i64 noundef %.val49.i), !noalias !873
  br label %bb.ad

bb.ak:                                            ; preds = %bb.ar, %bb.ah
  unreachable

bb.al:                                            ; preds = %bb.ad
  %i.bt = icmp eq i64 %.val37.i, 0                ; 2 uses
  %spec.select85.i = select i1 %i.bt, i64 %i.o, i64 %.val37.i
  br label %bb.ao

bb.am:                                            ; preds = %bb.at, %bb.ad
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 %i.o, ptr %i.bu, align 8, !alias.scope !869
  %i.bv = mul nuw nsw i64 %..i.i48, %8            ; 2 uses
  store i64 %i.bv, ptr %i.n, align 8, !alias.scope !871
  %i.bw = tail call { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %i.bv), !noalias !873 ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0      ; 4 uses
  %i.by = extractvalue { ptr, i64 } %i.bw, 1      ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 184 ; 2 uses
  %.val53.i = load i64, ptr %i.bz, align 8, !alias.scope !870, !noundef !10 ; 2 uses
  %i.ca = icmp eq i64 %.val53.i, 0
  br i1 %i.ca, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val52.i = load ptr, ptr %i.m, align 8, !alias.scope !870, !nonnull !10, !noundef !10
  %i.cb = mul nuw nsw i64 %.val53.i, 1040
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52.i, i64 noundef range(i64 1, 0) %i.cb, i64 noundef 8) #22, !noalias !873
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit.i

bb.ao:                                            ; preds = %bb.ao, %bb.al
  %.sroa.04.1.i59 = phi i64 [ %spec.select85.i, %bb.al ], [ %i.cc, %bb.ao ] ; 3 uses
  %.not22.i60 = icmp ugt i64 %.sroa.04.1.i59, %.sroa.08.0.lcssa
  %i.cc = shl nuw nsw i64 %.sroa.04.1.i59, 1
  br i1 %.not22.i60, label %bb.ap, label %bb.ao

bb.ap:                                            ; preds = %bb.ao
  %i.cd = tail call { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %.sroa.04.1.i59), !noalias !873 ; 2 uses
  %i.ce = extractvalue { ptr, i64 } %i.cd, 0      ; 5 uses
  %i.cf = extractvalue { ptr, i64 } %i.cd, 1      ; 5 uses
  br i1 %i.bt, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  %.not23.i61 = icmp ugt i64 %.val37.i, %i.cf
  br i1 %.not23.i61, label %bb.ar, label %bb.as, !prof !21

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val37.i, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #23
          to label %bb.ak unwind label %bb.aw, !noalias !873

bb.as:                                            ; preds = %bb.aq
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implmECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 4 %i.ce, i64 noundef %.val37.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val36.i57, i64 noundef %.val37.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100)
          to label %bb.at unwind label %.thread77.i, !noalias !873

.thread77.i:                                      ; preds = %bb.as
  %lpad.thr_comm7178.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.at:                                            ; preds = %bb.as, %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  store ptr %i.ce, ptr %i.bn, align 8, !alias.scope !869
  store i64 %i.cf, ptr %i.bo, align 8, !alias.scope !869
  tail call void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 4 %.val36.i57, i64 noundef %.val37.i), !noalias !873
  br label %bb.am

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.an, %bb.am
  store ptr %i.bx, ptr %i.m, align 8, !alias.scope !870
  store i64 %i.by, ptr %i.bz, align 8, !alias.scope !870
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %.not.i.i = icmp ugt i64 %8, %i.by
  br i1 %.not.i.i, label %bb.av, label %bb.au, !prof !21

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit.i
  %.idx.i.i = mul nuw nsw i64 %8, 1040
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i
  br label %.lr.ph.i.i

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramLiteralEECskeugdADtBsi_12pingora_core.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 2, 1) %8, i64 noundef range(i64 0, 8868626958514208) %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #21, !noalias !875
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.au
  %.sroa.02.06.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %i.bx, %bb.au ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 1040 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.02.06.i.i, i8 0, i64 1032, i1 false), !alias.scope !874, !noalias !873
  store float 3.402000e+38, ptr %i.ci, align 8, !alias.scope !876, !noalias !873
  %i.cj = icmp eq ptr %i.ch, %i.cg
  br i1 %i.cj, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock24InitContextBlockSplitterNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit, label %.lr.ph.i.i

bb.aw:                                            ; preds = %bb.ar
  %lpad.thr_comm71.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = icmp eq i64 %i.cf, 0
  br i1 %i.ck, label %common.resume, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.thread77.i
  %lpad.thr_comm7179.i = phi { ptr, i32 } [ %lpad.thr_comm7178.i, %.thread77.i ], [ %lpad.thr_comm71.i, %bb.aw ]
  %i.cl = shl nuw nsw i64 %i.cf, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef range(i64 1, 0) %i.cl, i64 noundef 4) #22, !noalias !873
  br label %common.resume

bb.ay:                                            ; preds = %bb.ah
  %lpad.thr_comm.i62 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = icmp eq i64 %i.bs, 0
  br i1 %i.cm, label %common.resume, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread81.i
  %lpad.thr_comm83.i = phi { ptr, i32 } [ %lpad.thr_comm82.i, %.thread81.i ], [ %lpad.thr_comm.i62, %bb.ay ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.br, i64 noundef range(i64 1, 0) %i.bs, i64 noundef 1) #22, !noalias !873
  br label %common.resume

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock24InitContextBlockSplitterNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit: ; preds = %.lr.ph.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.sroa.12.sroa.0, i8 0, i64 96, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock24InitContextBlockSplitterNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit
  %.sroa.5.sroa.9.sroa.5.0 = phi i64 [ 0, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit ], [ 512, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock24InitContextBlockSplitterNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit ]
  %.sroa.5.sroa.10.0 = phi float [ 4.000000e+02, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit ], [ 0.000000e+00, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock24InitContextBlockSplitterNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit ]
  %.sroa.5.sroa.7.0 = phi i64 [ 0, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit ], [ %.zext.i, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock24InitContextBlockSplitterNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit ]
  %.sroa.5.sroa.6.0 = phi i64 [ 512, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit ], [ %8, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock24InitContextBlockSplitterNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit ]
  %.sroa.017.0 = phi i64 [ 0, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit ], [ 1, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock24InitContextBlockSplitterNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit ] ; 2 uses
  store i64 %.sroa.017.0, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0, i64 16, i1 false)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 256, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.5.sroa.6.0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.5.sroa.7.0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 512, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  store i64 0, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.sroa.5.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  store i64 %.sroa.5.sroa.9.sroa.5.0, ptr %.sroa.5.sroa.9.sroa.5.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.sroa.6.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6, i64 16, i1 false)
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store float %.sroa.5.sroa.10.0, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 0, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.sroa.12.sroa.0, i64 96, i1 false)
  %.sroa.5.sroa.12.sroa.4.0..sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store i64 0, ptr %.sroa.5.sroa.12.sroa.4.0..sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.12.sroa.5.0..sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store float 4.000000e+02, ptr %.sroa.5.sroa.12.sroa.5.0..sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.9.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.12.sroa.0)
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 192 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 248 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.cq = lshr i64 %13, 10                        ; 5 uses
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 4 uses
  %..i.i63 = tail call noundef i64 @llvm.umin.i64(i64 %i.cr, i64 257) ; 2 uses
  %.val47.i64 = load ptr, ptr %i.cn, align 8, !alias.scope !877, !nonnull !10, !noundef !10 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %.val48.i65 = load i64, ptr %i.cs, align 8, !alias.scope !877, !noundef !10 ; 8 uses
  %.not.i66 = icmp ugt i64 %.val48.i65, %i.cq
  br i1 %.not.i66, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ct = icmp eq i64 %.val48.i65, 0              ; 2 uses
  %spec.select.i67 = select i1 %i.ct, i64 %i.cr, i64 %.val48.i65
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bi, %bb.ba
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %.val35.i76 = load ptr, ptr %i.cu, align 8, !alias.scope !877, !nonnull !10, !noundef !10 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 2 uses
  %.val36.i77 = load i64, ptr %i.cv, align 8, !alias.scope !877, !noundef !10 ; 8 uses
  %.not21.i78 = icmp ugt i64 %.val36.i77, %i.cq
  br i1 %.not21.i78, label %bb.bl, label %bb.bk

bb.bd:                                            ; preds = %bb.bd, %bb.bb
  %.sroa.0.1.i68 = phi i64 [ %spec.select.i67, %bb.bb ], [ %i.cw, %bb.bd ] ; 3 uses
  %.not19.i69 = icmp ugt i64 %.sroa.0.1.i68, %i.cq
  %i.cw = shl nuw nsw i64 %.sroa.0.1.i68, 1
  br i1 %.not19.i69, label %bb.be, label %bb.bd

bb.be:                                            ; preds = %bb.bd
  %i.cx = tail call { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %.sroa.0.1.i68), !noalias !880 ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cx, 0      ; 5 uses
  %i.cz = extractvalue { ptr, i64 } %i.cx, 1      ; 5 uses
  br i1 %i.ct, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  %.not20.i70 = icmp ugt i64 %.val48.i65, %i.cz
  br i1 %.not20.i70, label %bb.bg, label %bb.bh, !prof !21

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val48.i65, i64 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #23
          to label %bb.bj unwind label %bb.bu, !noalias !880

bb.bh:                                            ; preds = %bb.bf
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %i.cy, i64 noundef %.val48.i65, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val47.i64, i64 noundef %.val48.i65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69)
          to label %bb.bi unwind label %.thread79.i71, !noalias !880

.thread79.i71:                                    ; preds = %bb.bh
  %lpad.thr_comm80.i72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bi:                                            ; preds = %bb.bh, %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  store ptr %i.cy, ptr %i.cn, align 8, !alias.scope !877
  store i64 %i.cz, ptr %i.cs, align 8, !alias.scope !877
  tail call void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull %.val47.i64, i64 noundef %.val48.i65), !noalias !880
  br label %bb.bc

bb.bj:                                            ; preds = %bb.bo, %bb.bg
  unreachable

bb.bk:                                            ; preds = %bb.bc
  %i.da = icmp eq i64 %.val36.i77, 0
  %spec.select83.i79 = select i1 %i.da, i64 %i.cr, i64 %.val36.i77
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bq, %bb.bc
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 88
  store i64 %i.cr, ptr %i.db, align 8, !alias.scope !877
  store i64 %..i.i63, ptr %i.cp, align 8, !alias.scope !879
  %i.dc = tail call { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramCommandE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %..i.i63), !noalias !880 ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.dc, 0      ; 4 uses
  %i.de = extractvalue { ptr, i64 } %i.dc, 1      ; 2 uses
  %i.df = load ptr, ptr %i.co, align 8, !alias.scope !878, !nonnull !10, !align !14, !noundef !10
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 4 uses
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !878, !noundef !10
  store ptr %i.dd, ptr %i.co, align 8, !alias.scope !878
  store i64 %i.de, ptr %i.dg, align 8, !alias.scope !878
  tail call void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramCommandE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 8 %i.df, i64 noundef %i.dh), !noalias !880
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  %.not25.i84 = icmp eq i64 %i.de, 0
  br i1 %.not25.i84, label %bb.br, label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9metablock17InitBlockSplitterNtNtB4_9histogram16HistogramCommandNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit

bb.bm:                                            ; preds = %bb.bm, %bb.bk
  %.sroa.04.1.i80 = phi i64 [ %spec.select83.i79, %bb.bk ], [ %i.di, %bb.bm ] ; 3 uses
  %.not22.i81 = icmp ugt i64 %.sroa.04.1.i80, %i.cq
  %i.di = shl nuw nsw i64 %.sroa.04.1.i80, 1
  br i1 %.not22.i81, label %bb.bn, label %bb.bm

bb.bn:                                            ; preds = %bb.bm
  %i.dj = tail call { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %.sroa.04.1.i80), !noalias !880 ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.dj, 0      ; 4 uses
  %i.dl = extractvalue { ptr, i64 } %i.dj, 1      ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  %.not23.i82 = icmp ugt i64 %.val36.i77, %i.dl
  br i1 %.not23.i82, label %bb.bo, label %bb.bp, !prof !21

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val36.i77, i64 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #23
          to label %bb.bj unwind label %bb.bs, !noalias !880

bb.bp:                                            ; preds = %bb.bn
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implmECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 4 %i.dk, i64 noundef %.val36.i77, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val35.i76, i64 noundef %.val36.i77, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71)
          to label %bb.bq unwind label %bb.bs, !noalias !880

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.dk, ptr %i.cu, align 8, !alias.scope !877
  store i64 %i.dl, ptr %i.cv, align 8, !alias.scope !877
  tail call void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 4 %.val35.i76, i64 noundef %.val36.i77), !noalias !880
  br label %bb.bl

bb.br:                                            ; preds = %bb.bl
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #21, !noalias !880
  unreachable

bb.bs:                                            ; preds = %bb.bp, %bb.bo
  %lpad.thr_comm73.i83 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %common.resume, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dn = shl nuw nsw i64 %i.dl, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dk, i64 noundef range(i64 1, 0) %i.dn, i64 noundef 4) #22, !noalias !880
end_hunk_3
