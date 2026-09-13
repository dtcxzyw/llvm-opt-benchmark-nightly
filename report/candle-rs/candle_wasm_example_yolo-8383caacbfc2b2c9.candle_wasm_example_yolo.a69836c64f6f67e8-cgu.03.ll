Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_yolo-8383caacbfc2b2c9.candle_wasm_example_yolo.a69836c64f6f67e8-cgu.03?download=true
inline.NumInlined: 486
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvNtCseiMiKruFR5A_24candle_wasm_example_yolo5model13report_detect:bb.a
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #15
          to label %.body149.thread unwind label %bb.n

bb.an:                                            ; preds = %.lr.ph
  %i.gw = add i64 %.sroa.032.0219, 4              ; 3 uses
  %i.gx = icmp ult i64 %i.gw, %i.dx
  br i1 %i.gx, label %bb.ao, label %.invoke

bb.ao:                                            ; preds = %bb.an
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.sroa.085.0220
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load float, ptr %i.gz, align 4, !noundef !4
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.gw
  %i.hc = load float, ptr %i.hb, align 4, !noundef !4
  %i.hd = fcmp ogt float %i.ha, %i.hc
  %spec.select = select i1 %i.hd, i64 %.sroa.085.0220, i64 %.sroa.032.0219 ; 2 uses
  %exitcond459.not = icmp eq i64 %i.fv, %i.w
  br i1 %exitcond459.not, label %._crit_edge, label %.lr.ph

.invoke:                                          ; preds = %._crit_edge, %bb.an, %.lr.ph
  %i.he = phi i64 [ %i.dx, %.lr.ph ], [ %i.gw, %bb.an ], [ %i.ft, %._crit_edge ]
  %i.hf = phi ptr [ @148, %.lr.ph ], [ @149, %bb.an ], [ @146, %._crit_edge ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.he, i64 noundef %i.dx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hf) #17
          to label %.cont unwind label %bb.z

.cont:                                            ; preds = %.invoke
  unreachable

bb.ap:                                            ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body152 unwind label %bb.as

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_NtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEEEB1g_.exit unwind label %bb.b

bb.as:                                            ; preds = %bb.aq
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_NtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEEEB1g_.exit: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.k

bb.at:                                            ; preds = %.body152
  resume { ptr, i32 } %.pn120
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCseiMiKruFR5A_24candle_wasm_example_yolo5model23non_maximum_suppression(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, float noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %.idx = mul nuw nsw i64 %1, 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a, %._crit_edge
  %.sroa.0.032 = phi ptr [ %i.f, %._crit_edge ], [ %0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 16 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2347
  store ptr %i.a, ptr %i.b, align 8, !noalias !2348
  %i.k = icmp samesign ult i64 %i.j, 2
  br i1 %i.k, label %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exit, label %bb.b, !prof !2349

bb.b:                                             ; preds = %.lr.ph34
  %i.l = icmp samesign ult i64 %i.j, 21
  br i1 %i.l, label %bb.d, label %bb.c, !prof !2349

bb.c:                                             ; preds = %bb.b
  call void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCNvB11_23non_maximum_suppression0E0INtNtB20_3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8 %i.h, i64 noundef range(i64 0, 192153584101141163) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #13
  br label %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exitthread-pre-split

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCNvB1o_23non_maximum_suppression0E0EB1q_(ptr noalias nofree noundef nonnull align 8 %i.h, i64 noundef range(i64 0, 192153584101141163) %i.j, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exitthread-pre-split

_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exitthread-pre-split: ; preds = %bb.d, %bb.c
  %.pr = load i64, ptr %i.i, align 8
  br label %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exit

_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exit: ; preds = %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exitthread-pre-split, %.lr.ph34
  %i.m = phi i64 [ %.pr, %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exitthread-pre-split ], [ %i.j, %.lr.ph34 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2347
  %i.n = icmp ult i64 %i.m, 192153584101141163
  call void @llvm.assume(i1 %i.n)
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge35:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %.loopexit, %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exit
  %.sroa.02.0.lcssa = phi i64 [ 0, %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exit ], [ %.sroa.02.1, %.loopexit ]
  call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxE8truncateBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.032, i64 noundef %.sroa.02.0.lcssa)
  %i.o = icmp eq ptr %i.f, %i.d
  br i1 %i.o, label %._crit_edge35, label %.lr.ph34

.lr.ph:                                           ; preds = %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exit, %.loopexit
  %.sroa.02.031 = phi i64 [ %.sroa.02.1, %.loopexit ], [ 0, %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exit ] ; 7 uses
  %.sroa.09.030 = phi i64 [ %i.p, %.loopexit ], [ 0, %_RINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4Bbox7sort_byNCNvBy_23non_maximum_suppression0EBA_.exit ] ; 7 uses
  %i.p = add nuw nsw i64 %.sroa.09.030, 1         ; 2 uses
  %exitcond.not88 = icmp eq i64 %.sroa.02.031, 0
  br i1 %exitcond.not88, label %._crit_edge91, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = load i64, ptr %i.i, align 8, !noundef !4 ; 4 uses
  %i.s = icmp ult i64 %.sroa.09.030, %i.r
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %.sroa.09.030 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  br label %.lr.ph90

bb.e:                                             ; preds = %bb.l
  %exitcond.not = icmp eq i64 %i.w, %.sroa.02.031
  br i1 %exitcond.not, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %bb.e
  %.sroa.011.089 = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph90.preheader ] ; 4 uses
  %i.w = add i64 %.sroa.011.089, 1                ; 2 uses
  %i.x = icmp ult i64 %.sroa.011.089, %i.r
  br i1 %i.x, label %bb.j, label %bb.k

._crit_edge91:                                    ; preds = %bb.e, %.lr.ph
  %i.y = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = load i64, ptr %i.i, align 8, !noundef !4 ; 4 uses
  %i.aa = icmp ult i64 %.sroa.02.031, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

.loopexit:                                        ; preds = %bb.l, %bb.h
  %.sroa.02.1 = phi i64 [ %i.ae, %bb.h ], [ %.sroa.02.031, %bb.l ] ; 2 uses
  %exitcond51.not = icmp eq i64 %i.p, %i.m
  br i1 %exitcond51.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge91
  %i.ab = icmp ult i64 %.sroa.09.030, %i.z
  br i1 %i.ab, label %bb.h, label %bb.i

bb.g:                                             ; preds = %._crit_edge91
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.031, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %.sroa.02.031 ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %.sroa.09.030 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = add nuw i64 %.sroa.02.031, 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.f
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.030, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #16
  unreachable

bb.j:                                             ; preds = %.lr.ph90
  br i1 %i.s, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph90
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.011.089, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #16
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %.sroa.011.089 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2350)
  call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ai = load <2 x float>, ptr %i.ag, align 8, !alias.scope !2350, !noalias !2351 ; 3 uses
  %i.aj = load <2 x float>, ptr %i.ah, align 8, !alias.scope !2350, !noalias !2351 ; 3 uses
  %i.ak = load <2 x float>, ptr %i.u, align 8, !alias.scope !2351, !noalias !2350 ; 3 uses
  %i.al = load <2 x float>, ptr %i.v, align 8, !alias.scope !2351, !noalias !2350 ; 3 uses
  %i.am = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 0, i32 2>
  %i.an = shufflevector <2 x float> %i.aj, <2 x float> %i.al, <2 x i32> <i32 0, i32 2>
  %i.ao = fsub <2 x float> %i.am, %i.an
  %i.ap = fadd <2 x float> %i.ao, splat (float 1.000000e+00)
  %i.aq = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 1, i32 3>
  %i.ar = shufflevector <2 x float> %i.aj, <2 x float> %i.al, <2 x i32> <i32 1, i32 3>
  %i.as = fsub <2 x float> %i.aq, %i.ar
  %i.at = fadd <2 x float> %i.as, splat (float 1.000000e+00)
  %i.au = fmul <2 x float> %i.ap, %i.at
  %i.av = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.aj, <2 x float> %i.al)
  %i.aw = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.ai, <2 x float> %i.ak)
  %i.ax = fsub <2 x float> %i.aw, %i.av
  %i.ay = fadd <2 x float> %i.ax, splat (float 1.000000e+00)
  %i.az = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.ay, <2 x float> zeroinitializer) ; 2 uses
  %shift = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.az, %shift
  %i.ba = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %3 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.au)
  %4 = fsub float %3, %i.ba
  %i.bb = fdiv float %i.ba, %4
  %i.bc = fcmp ogt float %i.bb, %2
  br i1 %i.bc, label %.loopexit, label %bb.e

bb.m:                                             ; preds = %bb.j
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.030, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCseiMiKruFR5A_24candle_wasm_example_yolo5model9dist2bbox(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 14 uses
  %i.h = alloca [80 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 14 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor5chunkjECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef 2, i64 noundef 1)
  %i.l = load i64, ptr %i.j, align 8, !range !5, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.563.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.560.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.462.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.l, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 3 uses
  switch i64 %i.o, label %bb.f [
    i64 0, label %bb.d
    i64 1, label %.invoke
  ]

bb.d:                                             ; preds = %bb.c
  br label %.invoke

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit130, %bb.j, %bb.e
  %.pn126 = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn124, %bb.j ], [ %.pn124, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit130 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #15
          to label %common.resume unwind label %bb.ao

bb.e:                                             ; preds = %.invoke, %bb.aq, %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3sub(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
          to label %bb.g unwind label %bb.e

.invoke:                                          ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ @154, %bb.d ], [ @155, %bb.c ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t) #17
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.h, align 8, !range !5, !noundef !4 ; 2 uses
  %.not112 = icmp eq i64 %i.u, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  br i1 %.not112, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.572.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.569.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 %i.u, ptr %0, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.471.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit146

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %i.w, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3add(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %bb.l unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit130: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit132, %bb.o, %bb.k
  %.pn124 = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %.pn122, %bb.o ], [ %.pn122, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit132 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2412)
  call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  call void @llvm.experimental.noalias.scope.decl(metadata !2414)
  %i.x = load ptr, ptr %i.i, align 8, !alias.scope !2415, !nonnull !4, !noundef !4
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !2415
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit130
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #13
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit unwind label %bb.ao

bb.k:                                             ; preds = %bb.ap, %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit130

bb.l:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.f, align 8, !range !5, !noundef !4 ; 2 uses
  %.not113 = icmp eq i64 %i.ab, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  br i1 %.not113, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.581.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.578.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.ab, ptr %0, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %.sroa.480.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit144

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.ad, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsl_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Add3addCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.q unwind label %bb.p

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit132: ; preds = %bb.w, %bb.x, %bb.p
  %.pn122 = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.ao, %bb.x ], [ %i.ao, %bb.w ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  call void @llvm.experimental.noalias.scope.decl(metadata !2418)
  %i.ae = load ptr, ptr %i.g, align 8, !alias.scope !2419, !nonnull !4, !noundef !4
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !2419
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit130

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit132
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #13
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit130 unwind label %bb.ao

bb.p:                                             ; preds = %bb.aa, %bb.s, %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit132

bb.q:                                             ; preds = %bb.n
  %i.ai = load i64, ptr %i.c, align 8, !range !5, !noundef !4 ; 2 uses
  %.not114 = icmp eq i64 %i.ai, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  br i1 %.not114, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.590.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.587.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ai, ptr %0, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %.sroa.489.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo.exit134

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsG_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MuldE3mul(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.d, ptr noundef nonnull %i.ak, double noundef 5.000000e-01)
          to label %bb.t unwind label %bb.p

bb.t:                                             ; preds = %bb.s
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxE8grow_oneBQ_
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor9transposejjECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor9unsqueezejECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsltEA4u8Pgfu_11candle_core10tensor_catNtNtB5_6tensor6Tensor3catBI_jECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtCsltEA4u8Pgfu_11candle_core7indexerNtNtB7_6tensor6TensorINtB5_7IndexOpTNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFullINtB1i_7RangeTojEEE1iCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtCsltEA4u8Pgfu_11candle_core7indexerNtNtB7_6tensor6TensorINtB5_7IndexOpTNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFullINtB1i_9RangeFromjEEE1iCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor13broadcast_mul(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs3NyA1pFSltE_9candle_nn3ops7sigmoid(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs3NyA1pFSltE_9candle_nn4conv6conv2d(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs3NyA1pFSltE_9candle_nn11var_builderINtB2_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB2_13SimpleBackendEL_EENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsltEA4u8Pgfu_11candle_core10tensor_catNtNtB5_6tensor6Tensor3catBI_NtNtB5_5shape1DECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), i64 noundef range(i64 0, 3), i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs12_NtCsltEA4u8Pgfu_11candle_core5shapeNtNtB8_6tensor6Tensor5dims3(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7reshapeTjjjjEECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtCsltEA4u8Pgfu_11candle_core7indexerNtNtB7_6tensor6TensorINtB5_7IndexOpTNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFullB1g_INtB1i_5RangejEEE1iCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsG_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MuldE3mul(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noundef nonnull, double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor13broadcast_add(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsy_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubdE3sub(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noundef nonnull, double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor8flatten_jjECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef range(i64 0, 2), i64, i64 noundef range(i64 0, 2), i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsZ_NtCsltEA4u8Pgfu_11candle_core5shapeNtNtB7_6tensor6Tensor5dims2(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCseiMiKruFR5A_24candle_wasm_example_yolo6worker3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtCsltEA4u8Pgfu_11candle_core7indexerNtNtB7_6tensor6TensorINtB5_7IndexOpTNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFulljEE1iCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsltEA4u8Pgfu_11candle_core7convertINtNtCsgCecv3eZDcN_5alloc3vec3VecfEINtNtCsf3Ta7LF998c_4core7convert7TryFromNtNtB7_6tensor6TensorE8try_fromCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model8KeyPointEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2E_3ops5range5RangejENCNvB15_11report_pose0EE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor11arange_stepmECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), i32 noundef, i32 noundef, i32 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i8 noundef range(i8 0, 14)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsq_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3AdddE3add(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noundef nonnull, double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7reshapeTjjEECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor6repeatTjjEECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor11flatten_all(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor5stackRBG_NtNtB8_5shape1DECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), i64 noundef range(i64 0, 3), i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor9ones_impljECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), i64 noundef, i8 noundef range(i8 0, 14), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_NtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range5RangejENCNvB19_13report_detect0EE9from_iterB1b_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model4BboxE8truncateBI_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor5chunkjECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3sub(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3add(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsl_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Add3addCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Sub3subCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor18upsample_nearest2d(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs3NyA1pFSltE_9candle_nn10batch_normNtB5_9BatchNormNtCsltEA4u8Pgfu_11candle_core7ModuleT9forward_t(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs3NyA1pFSltE_9candle_nn3ops4silu(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsl_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddBG_E3addCseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor14pad_with_zerosjECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor22max_pool2d_with_stridejECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRfNtB6_5Debug3fmtCseiMiKruFR5A_24candle_wasm_example_yolo(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCs3NyA1pFSltE_9candle_nn11var_builder10TensorDataINtNtB7_5boxed3BoxDNtBJ_13SimpleBackendEL_EEE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model8KeyPointENtB6_5Debug3fmtB17_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3NyA1pFSltE_9candle_nn3ops7softmaxjECseiMiKruFR5A_24candle_wasm_example_yolo(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCseiMiKruFR5A_24candle_wasm_example_yolo5model8KeyPointINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minimumnum.v2f32(<2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maximumnum.v2f32(<2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { noinline }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold }
attributes #16 = { noinline noreturn }
attributes #17 = { noreturn }
attributes #18 = { inlinehint }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{i64 -1, i64 -9223372036854775764}
!6 = !{i8 0, i8 3}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{i64 -1, i64 -9223372036854775808}
!10 = !{i64 8}
!11 = distinct !{!11, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!12 = distinct !{!12, !11, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!13 = distinct !{!13, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!14 = distinct !{!14, !13, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!15 = distinct !{!15, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!16 = distinct !{!16, !15, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!17 = distinct !{!17, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!18 = distinct !{!18, !17, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!19 = distinct !{!19, !11, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0:It1"}
!20 = distinct !{!20, !13, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0:It1"}
!21 = distinct !{!21, !15, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0:It1"}
!22 = distinct !{!22, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!23 = distinct !{!23, !22, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!24 = distinct !{!24, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!25 = distinct !{!25, !24, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!26 = distinct !{!26, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!27 = distinct !{!27, !26, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!28 = !{!12}
!29 = !{!14}
!30 = !{!16}
!31 = !{!16, !14, !12, !18}
!32 = !{!16, !14, !12}
!33 = !{!19}
!34 = !{!20}
!35 = !{!21}
!36 = !{!21, !20, !19, !18}
!37 = !{!21, !20, !19}
!38 = !{!23}
!39 = !{!25}
!40 = !{!27}
!41 = !{!27, !25, !23, !18}
!42 = !{!27, !25, !23}
!43 = distinct !{!43, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!44 = distinct !{!44, !43, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!45 = distinct !{!45, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!46 = distinct !{!46, !45, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!47 = distinct !{!47, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!48 = distinct !{!48, !47, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!49 = distinct !{!49, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!50 = distinct !{!50, !49, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!51 = distinct !{!51, !43, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0:It1"}
!52 = distinct !{!52, !45, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0:It1"}
!53 = distinct !{!53, !47, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0:It1"}
!54 = distinct !{!54, !43, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0:It2"}
!55 = distinct !{!55, !45, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0:It2"}
!56 = distinct !{!56, !47, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0:It2"}
!57 = distinct !{!57, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!58 = distinct !{!58, !57, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0:Peel0"}
!59 = distinct !{!59, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!60 = distinct !{!60, !59, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0:Peel0"}
!61 = distinct !{!61, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!62 = distinct !{!62, !61, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0:Peel0"}
!63 = distinct !{!63, !57, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!64 = distinct !{!64, !59, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!65 = distinct !{!65, !61, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!66 = !{!44}
!67 = !{!46}
!68 = !{!48}
!69 = !{!48, !46, !44, !50}
!70 = !{!48, !46, !44}
!71 = !{!51}
!72 = !{!52}
!73 = !{!53}
!74 = !{!53, !52, !51, !50}
!75 = !{!53, !52, !51}
!76 = !{!54}
!77 = !{!55}
!78 = !{!56}
!79 = !{!56, !55, !54, !50}
!80 = !{!56, !55, !54}
!81 = !{!58}
!82 = !{!60}
!83 = !{!62}
!84 = !{!62, !60, !58, !50}
!85 = !{!62, !60, !58}
!86 = !{!63}
!87 = !{!64}
!88 = !{!65}
!89 = !{!65, !64, !63, !50}
!90 = !{!65, !64, !63}
!91 = distinct !{!91, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBC_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!92 = distinct !{!92, !91, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBC_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!93 = distinct !{!93, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!94 = distinct !{!94, !93, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!95 = distinct !{!95, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!96 = distinct !{!96, !95, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!97 = distinct !{!97, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!98 = distinct !{!98, !97, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!99 = distinct !{!99, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!100 = distinct !{!100, !99, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!101 = distinct !{!101, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!102 = distinct !{!102, !101, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!103 = distinct !{!103, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!104 = distinct !{!104, !103, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!105 = distinct !{!105, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!106 = distinct !{!106, !105, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!107 = distinct !{!107, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!108 = distinct !{!108, !107, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!109 = distinct !{!109, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!110 = distinct !{!110, !109, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!111 = !{!92}
!112 = !{!98, !96, !94, !92}
!113 = !{!100}
!114 = !{!102}
!115 = !{!104}
!116 = !{!104, !102, !100, !92}
!117 = !{!104, !102, !100}
!118 = !{!106}
!119 = !{!108}
!120 = !{!110}
!121 = !{!110, !108, !106, !92}
!122 = !{!110, !108, !106}
!123 = distinct !{!123, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs3NyA1pFSltE_9candle_nn11var_builder10TensorDataINtNtBG_5boxed3BoxDNtB1c_13SimpleBackendEL_EEEECseiMiKruFR5A_24candle_wasm_example_yolo"}
!124 = distinct !{!124, !123, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs3NyA1pFSltE_9candle_nn11var_builder10TensorDataINtNtBG_5boxed3BoxDNtB1c_13SimpleBackendEL_EEEECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!125 = distinct !{!125, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCs3NyA1pFSltE_9candle_nn11var_builder10TensorDataINtNtB7_5boxed3BoxDNtBJ_13SimpleBackendEL_EEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!126 = distinct !{!126, !125, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCs3NyA1pFSltE_9candle_nn11var_builder10TensorDataINtNtB7_5boxed3BoxDNtBJ_13SimpleBackendEL_EEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!127 = !{!124}
!128 = !{!126}
!129 = !{!126, !124}
!130 = distinct !{!130, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECseiMiKruFR5A_24candle_wasm_example_yolo"}
!131 = distinct !{!131, !130, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!132 = distinct !{!132, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!133 = distinct !{!133, !132, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!134 = distinct !{!134, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!135 = distinct !{!135, !134, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!136 = distinct !{!136, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!137 = distinct !{!137, !136, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!138 = distinct !{!138, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECseiMiKruFR5A_24candle_wasm_example_yolo"}
!139 = distinct !{!139, !138, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!140 = distinct !{!140, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!141 = distinct !{!141, !140, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!142 = distinct !{!142, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!143 = distinct !{!143, !142, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!144 = distinct !{!144, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!145 = distinct !{!145, !144, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!146 = distinct !{!146, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECseiMiKruFR5A_24candle_wasm_example_yolo"}
!147 = distinct !{!147, !146, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!148 = distinct !{!148, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!149 = distinct !{!149, !148, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!150 = distinct !{!150, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!151 = distinct !{!151, !150, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!152 = distinct !{!152, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!153 = distinct !{!153, !152, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!154 = distinct !{!154, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECseiMiKruFR5A_24candle_wasm_example_yolo"}
!155 = distinct !{!155, !154, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!156 = distinct !{!156, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBC_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!157 = distinct !{!157, !156, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBC_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!158 = distinct !{!158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!159 = distinct !{!159, !158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!160 = distinct !{!160, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!161 = distinct !{!161, !160, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!162 = distinct !{!162, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!163 = distinct !{!163, !162, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!164 = distinct !{!164, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!165 = distinct !{!165, !164, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!166 = distinct !{!166, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!167 = distinct !{!167, !166, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!168 = distinct !{!168, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!169 = distinct !{!169, !168, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!170 = distinct !{!170, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo"}
!171 = distinct !{!171, !170, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!172 = distinct !{!172, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo"}
!173 = distinct !{!173, !172, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
!174 = distinct !{!174, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo"}
!175 = distinct !{!175, !174, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCseiMiKruFR5A_24candle_wasm_example_yolo: argument 0"}
end_hunk_1
