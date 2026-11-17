Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19602
inline.NumDeleted: 9840
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math4text13layout_number:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !41601
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !41599, !nonnull !41, !noundef !41
  %i.ce = getelementptr inbounds nuw [304 x i8], ptr %i.cd, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.ce, ptr noundef nonnull align 16 dereferenceable(304) %i.a, i64 304, i1 false), !noalias !41601
  %i.cf = add i64 %i.bx, 1
  store i64 %i.cf, ptr %i.bw, align 8, !alias.scope !41599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cg = load ptr, ptr %i.g, align 8, !alias.scope !41602, !noundef !41
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.o:                                             ; preds = %bb.g
  %i.ci = load i64, ptr %i.f, align 16, !range !52, !noundef !41
  %.not5 = icmp eq i64 %i.ci, 2
  br i1 %.not5, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.e, ptr noundef nonnull align 16 dereferenceable(304) %i.f, i64 304, i1 false)
  %i.cj = load i64, ptr %i.c, align 8, !range !45, !noundef !41
  %i.ck = icmp eq i64 %i.y, %i.cj
  br i1 %i.ck, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge30 unwind label %bb.r

._crit_edge30:                                    ; preds = %bb.q
  %.pre = load ptr, ptr %i.k, align 8
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.e) #53
          to label %.body.thread unwind label %bb.s, !noalias !41603

bb.s:                                             ; preds = %bb.r
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !41603
  unreachable

bb.t:                                             ; preds = %._crit_edge30, %bb.p
  %i.cn = phi ptr [ %.pre, %._crit_edge30 ], [ %i.x, %bb.p ] ; 2 uses
  %i.co = getelementptr inbounds nuw [304 x i8], ptr %i.cn, i64 %i.y
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.co, ptr noundef nonnull align 16 dereferenceable(304) %i.f, i64 304, i1 false)
  %i.cp = add i64 %i.y, 1                         ; 2 uses
  store i64 %i.cp, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.t
  %i.cq = phi ptr [ %i.cn, %bb.t ], [ %i.x, %bb.o ]
  %i.cr = phi i64 [ %i.cp, %bb.t ], [ %i.y, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cs = icmp eq ptr %.sroa.0.1.ph, %i.t
  br i1 %i.cs, label %._crit_edge, label %bb.e

.body.thread18:                                   ; preds = %bb.k, %.body.thread21, %.body.thread
  %eh.lpad-body16 = phi { ptr, i32 } [ %eh.lpad-body17, %.body.thread ], [ %lpad.thr_comm, %.body.thread21 ], [ %i.ca, %bb.k ]
  %i.ct = load ptr, ptr %i.g, align 8, !alias.scope !41604, !noundef !41
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit11, label %bb.v

bb.v:                                             ; preds = %.body.thread18
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit11 unwind label %bb.w

.body.thread:                                     ; preds = %bb.r, %.body
  %eh.lpad-body17 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.cl, %bb.r ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #53
          to label %.body.thread18 unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %.body.thread
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit11: ; preds = %.body.thread18, %bb.v
  resume { ptr, i32 } %eh.lpad-body16
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [64 x i8], align 8                ; 9 uses
  %i.f = alloca [64 x i8], align 8                ; 11 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  %i.h = alloca [48 x i8], align 8                ; 12 uses
  %.sroa.9.i = alloca [40 x i8], align 8          ; 10 uses
  %i.i = alloca [72 x i8], align 8                ; 14 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [1 x i8], align 1                 ; 5 uses
  %i.o = alloca [304 x i8], align 16              ; 6 uses
  %i.p = alloca [16 x i8], align 16               ; 4 uses
  %i.q = alloca [304 x i8], align 16              ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [304 x i8], align 16              ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [96 x i8], align 8                ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = alloca [104 x i8], align 8              ; 4 uses
  %i.ac = alloca [80 x i8], align 8               ; 4 uses
  %i.ad = alloca [176 x i8], align 16             ; 11 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [80 x i8], align 8               ; 4 uses
  %i.ag = alloca [176 x i8], align 16             ; 11 uses
  %i.ah = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.7565 = alloca [40 x i8], align 8         ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [48 x i8], align 8               ; 10 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [40 x i8], align 8               ; 8 uses
  %i.am = alloca [80 x i8], align 8               ; 4 uses
  %i.an = alloca [176 x i8], align 16             ; 11 uses
  %i.ao = alloca [48 x i8], align 8               ; 13 uses
  %i.ap = alloca [40 x i8], align 8               ; 8 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [304 x i8], align 16             ; 5 uses
  %i.as = alloca [256 x i8], align 16             ; 12 uses
  %i.at = alloca [24 x i8], align 8               ; 10 uses
  %i.au = alloca [24 x i8], align 8               ; 7 uses
  %i.av = alloca [80 x i8], align 8               ; 3 uses
  %i.aw = alloca [80 x i8], align 8               ; 4 uses
  %i.ax = alloca [96 x i8], align 8               ; 10 uses
  %i.ay = alloca [80 x i8], align 8               ; 5 uses
  %i.az = alloca [80 x i8], align 8               ; 20 uses
  %i.ba = alloca [24 x i8], align 8               ; 15 uses
  %i.bb = alloca [24 x i8], align 8               ; 13 uses
  %i.bc = alloca [80 x i8], align 8               ; 8 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [80 x i8], align 8               ; 12 uses
  %i.bf = alloca [48 x i8], align 8               ; 4 uses
  %i.bg = alloca [104 x i8], align 8              ; 4 uses
  %i.bh = alloca [32 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !range !53, !noundef !41 ; 4 uses
  %i.bk = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.bk, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.bh, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @615, i64 noundef 17, i64 noundef %i.bj)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !41 ; 31 uses
  %i.bn = icmp ult i64 %i.bm, 384307168202282326
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.not211 = icmp eq i64 %i.bm, 0
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !41 ; 3 uses
  br i1 %.not211, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430, %bb.t, %bb.i, %bb.hb
  %.pn255 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.t ], [ %lpad.thr_comm, %bb.hb ], [ %.pn249, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %i.cd, %bb.i ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit ], [ %.pn249, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430 ], [ %.pn249, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430.thread ]
  %i.bq = load ptr, ptr %i.bh, align 8, !alias.scope !41918, !noundef !41
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.e

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ah

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit: ; preds = %bb.d
  %i.bs = getelementptr i8, ptr %i.bp, i64 16
  %.val.i = load i64, ptr %i.bs, align 8, !alias.scope !41919, !noundef !41 ; 31 uses
  %i.bt = icmp ult i64 %.val.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp eq i64 %.val.i, 0
  br i1 %i.bu, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit.thread, label %bb.m

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bf, double noundef 0.000000e+00, double noundef 0.000000e+00, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @616)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 45
  %.val260 = load i8, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 46
  %.val261 = load i8, ptr %i.bw, align 2
  invoke fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bg, i8 %.val260, i8 %.val261, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.bf)
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.experimental.noalias.scope.decl(metadata !41920)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !41921
  call void @llvm.experimental.noalias.scope.decl(metadata !41922)
  call void @llvm.experimental.noalias.scope.decl(metadata !41923)
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.bg, i64 104, i1 false), !alias.scope !41924, !noalias !41920
  store i64 2, ptr %i.q, align 16, !alias.scope !41925, !noalias !41921
  call void @llvm.experimental.noalias.scope.decl(metadata !41926)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !41927, !noundef !41 ; 3 uses
  %i.cb = load i64, ptr %i.bx, align 8, !range !45, !alias.scope !41927, !noundef !41
  %i.cc = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.k unwind label %bb.i, !noalias !41928

bb.i:                                             ; preds = %bb.h
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.q) #53
          to label %.body unwind label %bb.j, !noalias !41929

bb.j:                                             ; preds = %bb.i
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !41929
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !41927, !nonnull !41, !noundef !41
  %i.ch = getelementptr inbounds nuw [304 x i8], ptr %i.cg, i64 %i.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.ch, ptr noundef nonnull align 16 dereferenceable(304) %i.q, i64 304, i1 false), !noalias !41929
  %i.ci = add i64 %i.ca, 1
  store i64 %i.ci, ptr %i.bz, align 8, !alias.scope !41927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !41921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit524, %bb.k
  %.sroa.4.0 = phi i64 [ undef, %bb.k ], [ %i.aer, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit524 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.k ], [ %i.aeq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit524 ] ; 2 uses
  %i.cj = load ptr, ptr %i.bh, align 8, !alias.scope !41930, !noundef !41
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit286, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit286.sink.split

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cm = load <2 x double>, ptr %i.cl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.co = load <2 x double>, ptr %i.cn, align 8
  %i.cp = insertelement <2 x double> %i.cm, double %.sroa.5.0.copyload, i64 1
  %i.cq = fmul <2 x double> %i.cp, %i.co          ; 2 uses
  %i.cr = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cq)
  %i.cs = fcmp one <2 x double> %i.cr, splat (double +inf)
  %i.ct = select <2 x i1> %i.cs, <2 x double> %i.cq, <2 x double> zeroinitializer ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 0
  %i.cv = fadd double %.sroa.4.0.copyload, %i.cu  ; 2 uses
  %.inv.i.i.i.i = fcmp ord double %i.cv, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %.inv.i.i.i.i, double %i.cv, double 0.000000e+00 ; 6 uses
  %i.cw = extractelement <2 x double> %i.ct, i64 1
  %i.cx = fadd double %.sroa.6.0.copyload, %i.cw  ; 2 uses
  %.inv.i.i.i7.i = fcmp ord double %i.cx, 0.000000e+00
  %spec.store.select.i.i.i8.i = select i1 %.inv.i.i.i7.i, double %i.cx, double 0.000000e+00 ; 15 uses
  %i.cy = fmul double %spec.store.select.i.i.i.i, 5.000000e-01 ; 2 uses
  %.inv = fcmp ord double %i.cy, 0.000000e+00
  %spec.store.select = select i1 %.inv, double %i.cy, double 0.000000e+00 ; 3 uses
  %i.cz = fmul double %spec.store.select.i.i.i8.i, 5.000000e-01 ; 2 uses
  %.inv212 = fcmp ord double %i.cz, 0.000000e+00
  %spec.store.select2 = select i1 %.inv212, double %i.cz, double 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.da = invoke noundef double @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library6layout2emNtB5_2EmNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef 5.000000e-02, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.db = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 6)
          to label %.noexc287 unwind label %bb.t  ; 4 uses

.noexc287:                                        ; preds = %bb.n
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.noexc287
  call void @llvm.experimental.noalias.scope.decl(metadata !41931)
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !41931, !noalias !41932, !nonnull !41, !noundef !41 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !41931, !noalias !41932, !nonnull !41, !align !46, !noundef !41
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !invariant.load !41, !noalias !41933, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !41933
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !invariant.load !41, !noalias !41933, !nonnull !41
  invoke void %i.di(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noundef nonnull %i.dc) #58
          to label %.noexc288 unwind label %bb.t, !inline_history !22

.noexc288:                                        ; preds = %bb.o
  %i.dj = load i128, ptr %i.p, align 16, !noalias !41933, !noundef !41
  %i.dk = icmp eq i128 %i.dj, 153318861352820877800452183104041730188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !41933
  br i1 %i.dk, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.p, !prof !43

bb.p:                                             ; preds = %.noexc288
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.db) #56
          to label %.noexc289 unwind label %bb.t

.noexc289:                                        ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %.noexc287
  %i.dl = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXsc_NvNtCsdaEETE4DqmE_13typst_library4text1__NtBb_8TextElemINtNtNtNtBd_11foundations7content5field16SettablePropertyKh6_E5FIELDs_04LOCK, i64 24) acquire, align 8, !noalias !41934
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.r, !prof !43

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintE10initializeNCINvB2_11get_or_initFEBT_E0zECs7tN9tvpkfrg_12typst_layout()
          to label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.t

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.q, %.noexc288, %bb.r
  %.sroa.0.0.i = phi ptr [ %i.dc, %.noexc288 ], [ @_RNvNCNvXsc_NvNtCsdaEETE4DqmE_13typst_library4text1__NtBb_8TextElemINtNtNtNtBd_11foundations7content5field16SettablePropertyKh6_E5FIELDs_04LOCK, %bb.q ], [ @_RNvNCNvXsc_NvNtCsdaEETE4DqmE_13typst_library4text1__NtBb_8TextElemINtNtNtNtBd_11foundations7content5field16SettablePropertyKh6_E5FIELDs_04LOCK, %bb.r ]
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB2_5Paint13as_decoration(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) @107, i64 24, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  store i8 0, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bc, i64 73
  store i8 0, ptr %i.dq, align 1
  store i64 -1, ptr %i.bc, align 8
  store <2 x double> <double 1.270000e+02, double 4.000000e+00>, ptr %i.do, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  store double %i.da, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  store i8 2, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.be, i64 73
  store i8 0, ptr %i.du, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store double 4.000000e+00, ptr %i.dv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %bb.u unwind label %bb.hb

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit.thread, %bb.m, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit, %bb.f, %bb.n, %bb.o, %bb.p, %bb.r, %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.dw = load i64, ptr %0, align 8, !range !58, !noundef !41 ; 2 uses
  %.not213 = icmp eq i64 %i.dw, -1
  br i1 %.not213, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %.not214 = icmp eq i64 %i.dw, 2
  br i1 %.not214, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(80) %i.be, i64 80, i1 false)
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke fastcc void @_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0)
          to label %bb.aa unwind label %bb.hb

bb.y:                                             ; preds = %bb.v
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store i32 -1, ptr %i.dx, align 8
  store i64 0, ptr %i.ax, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store i8 -1, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ax, i64 89
  store i8 -1, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i64 -2, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 0, ptr %i.eb, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 8 dereferenceable(80) %i.be, i64 80, i1 false)
  invoke void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsE9unwrap_or(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ay, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.ax, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.aw)
          to label %bb.ab unwind label %bb.t

bb.aa:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ax, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RNvXsy_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAij1_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec)
          to label %bb.ad unwind label %bb.ac

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %bb.ae, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ed, %bb.ac ], [ %i.ef, %bb.ae ], [ %i.ef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ay) #53
          to label %.body unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit

bb.ad:                                            ; preds = %bb.ab
  %.sroa.0534.0.copyload = load i64, ptr %i.y, align 8 ; 2 uses
  %.sroa.5535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5535.0.copyload = load i64, ptr %.sroa.5535.0..sroa_idx, align 8
  %.sroa.6536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6536.0.copyload = load i64, ptr %.sroa.6536.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RNvXsy_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAij1_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ee)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = icmp ugt i64 %.sroa.6536.0.copyload, 1
  br i1 %i.eg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.ae
  %i.eh = inttoptr i64 %.sroa.0534.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  %i.ei = shl nuw i64 %.sroa.6536.0.copyload, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eh, i64 noundef %i.ei, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !41935
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit

bb.af:                                            ; preds = %bb.ad
  %.sroa.0104.sroa.0.0.copyload = load i64, ptr %i.x, align 8
  %.sroa.0104.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.0104.sroa.3.0.copyload = load i64, ptr %.sroa.0104.sroa.3.0..sroa_idx, align 8
  %.sroa.3105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.3105.0.copyload = load i64, ptr %.sroa.3105.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(80) %i.ay, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.w, %bb.af
  %i.ej = phi i64 [ %.sroa.3105.0.copyload, %bb.af ], [ 0, %bb.w ] ; 5 uses
  %i.ek = phi i64 [ %.sroa.6536.0.copyload, %bb.af ], [ 0, %bb.w ] ; 5 uses
  %.sroa.0108.sroa.0.0 = phi i64 [ %.sroa.0534.0.copyload, %bb.af ], [ undef, %bb.w ] ; 2 uses
  %.sroa.0108.sroa.3.0..sroa_idx119.val = phi i64 [ %.sroa.5535.0.copyload, %bb.af ], [ undef, %bb.w ] ; 2 uses
  %.sroa.0104.sroa.0.0 = phi i64 [ %.sroa.0104.sroa.0.0.copyload, %bb.af ], [ undef, %bb.w ] ; 2 uses
  %.sroa.0104.sroa.3.0..sroa_idx122.val = phi i64 [ %.sroa.0104.sroa.3.0.copyload, %bb.af ], [ undef, %bb.w ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table:bb.a
  br i1 %.not.not.not.i.not.not.i.5, label %.loopexit722, label %.lr.ph2084.6

.lr.ph2084.6:                                     ; preds = %bb.bq
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ju, i64 48
  %.val2.i.i.6 = load i64, ptr %i.ki, align 8, !alias.scope !41952, !noalias !41953, !noundef !41
  %i.kj = icmp eq i64 %.val2.i.i.6, 0
  br i1 %i.kj, label %.loopexit723, label %.loopexit722

.lr.ph2084:                                       ; preds = %._crit_edge2081
  %.val2.i.i = load i64, ptr %i.ju, align 8, !alias.scope !41952, !noalias !41953, !noundef !41
  %i.kk = icmp eq i64 %.val2.i.i, 0
  br i1 %i.kk, label %.loopexit723, label %bb.bl

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.loopexit725, %bb.bk
  %.sroa.0.05.i2080 = phi ptr [ %i.jw, %bb.bk ], [ %.sink11.i, %.loopexit725 ] ; 9 uses
  %.sroa.5.0.i2079 = phi i64 [ %i.jx, %bb.bk ], [ %i.jt, %.loopexit725 ]
  %.val11.i.i = load i64, ptr %.sroa.0.05.i2080, align 8, !alias.scope !41952, !noalias !41954, !noundef !41
  %i.kl = icmp eq i64 %.val11.i.i, 0
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i2080, i64 8
  %.val11.i.1.i = load i64, ptr %i.km, align 8, !alias.scope !41952, !noalias !41954, !noundef !41
  %i.kn = icmp eq i64 %.val11.i.1.i, 0
  %i.ko = or i1 %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i2080, i64 16
  %.val11.i.2.i = load i64, ptr %i.kp, align 8, !alias.scope !41952, !noalias !41954, !noundef !41
  %i.kq = icmp eq i64 %.val11.i.2.i, 0
  %i.kr = or i1 %i.ko, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i2080, i64 24
  %.val11.i.3.i = load i64, ptr %i.ks, align 8, !alias.scope !41952, !noalias !41954, !noundef !41
  %i.kt = icmp eq i64 %.val11.i.3.i, 0
  %i.ku = or i1 %i.kr, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i2080, i64 32
  %.val11.i.4.i = load i64, ptr %i.kv, align 8, !alias.scope !41952, !noalias !41954, !noundef !41
  %i.kw = icmp eq i64 %.val11.i.4.i, 0
  %i.kx = or i1 %i.ku, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i2080, i64 40
  %.val11.i.5.i = load i64, ptr %i.ky, align 8, !alias.scope !41952, !noalias !41954, !noundef !41
  %i.kz = icmp eq i64 %.val11.i.5.i, 0
  %i.la = or i1 %i.kx, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i2080, i64 48
  %.val11.i.6.i = load i64, ptr %i.lb, align 8, !alias.scope !41952, !noalias !41954, !noundef !41
  %i.lc = icmp eq i64 %.val11.i.6.i, 0
  %i.ld = or i1 %i.la, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i2080, i64 56
  %.val11.i.7.i = load i64, ptr %i.le, align 8, !alias.scope !41952, !noalias !41954, !noundef !41
  %i.lf = icmp eq i64 %.val11.i.7.i, 0
  %i.lg = or i1 %i.ld, %i.lf
  br i1 %i.lg, label %.loopexit723, label %bb.bk

.loopexit723:                                     ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i, %.lr.ph2084, %.lr.ph2084.1, %.lr.ph2084.2, %.lr.ph2084.3, %.lr.ph2084.4, %.lr.ph2084.5, %.lr.ph2084.6
  %i.lh = fadd double %spec.store.select.i.i.i8.i, %spec.store.select6 ; 2 uses
  %.inv220 = fcmp ord double %i.lh, 0.000000e+00
  %spec.store.select7 = select i1 %.inv220, double %i.lh, double 0.000000e+00
  br label %.loopexit722

.loopexit722:                                     ; preds = %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %.lr.ph2084.6, %._crit_edge2081, %.loopexit723
  %.sroa.0142.0 = phi double [ %spec.store.select7, %.loopexit723 ], [ %spec.store.select6, %._crit_edge2081 ], [ %spec.store.select6, %.lr.ph2084.6 ], [ %spec.store.select6, %bb.bq ], [ %spec.store.select6, %bb.bp ], [ %spec.store.select6, %bb.bo ], [ %spec.store.select6, %bb.bn ], [ %spec.store.select6, %bb.bm ], [ %spec.store.select6, %bb.bl ] ; 9 uses
  %.not.i3202085 = icmp eq i64 %i.jt, 0
  br i1 %.not.i3202085, label %._crit_edge2088, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i321

bb.br:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i321
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3192087, i64 64
  %i.lj = add nsw i64 %.sroa.5.0.i3182086, -8     ; 2 uses
  %.not.i320 = icmp eq i64 %i.lj, 0
  br i1 %.not.i320, label %._crit_edge2088, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i321

._crit_edge2088:                                  ; preds = %bb.br, %.loopexit722
  %.not.not.not.i.not.not.i3312089 = icmp eq i64 %i.jv, 0
  br i1 %.not.not.not.i.not.not.i3312089, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit333, label %.lr.ph2091

bb.bs:                                            ; preds = %.lr.ph2091
  %.not.not.not.i.not.not.i331 = icmp eq i64 %i.jv, 1
  br i1 %.not.not.not.i.not.not.i331, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit333, label %.lr.ph2091.1

.lr.ph2091.1:                                     ; preds = %bb.bs
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %.val2.i.i332.1 = load i64, ptr %i.lk, align 8, !alias.scope !41955, !noalias !41956, !noundef !41
  %i.ll = icmp eq i64 %.val2.i.i332.1, %i.bm
  br i1 %i.ll, label %.loopexit720, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph2091.1
  %.not.not.not.i.not.not.i331.1 = icmp eq i64 %i.jv, 2
  br i1 %.not.not.not.i.not.not.i331.1, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit333, label %.lr.ph2091.2

.lr.ph2091.2:                                     ; preds = %bb.bt
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %.val2.i.i332.2 = load i64, ptr %i.lm, align 8, !alias.scope !41955, !noalias !41956, !noundef !41
  %i.ln = icmp eq i64 %.val2.i.i332.2, %i.bm
  br i1 %i.ln, label %.loopexit720, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph2091.2
  %.not.not.not.i.not.not.i331.2 = icmp eq i64 %i.jv, 3
  br i1 %.not.not.not.i.not.not.i331.2, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit333, label %.lr.ph2091.3

.lr.ph2091.3:                                     ; preds = %bb.bu
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %.val2.i.i332.3 = load i64, ptr %i.lo, align 8, !alias.scope !41955, !noalias !41956, !noundef !41
  %i.lp = icmp eq i64 %.val2.i.i332.3, %i.bm
  br i1 %i.lp, label %.loopexit720, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph2091.3
  %.not.not.not.i.not.not.i331.3 = icmp eq i64 %i.jv, 4
  br i1 %.not.not.not.i.not.not.i331.3, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit333, label %.lr.ph2091.4

.lr.ph2091.4:                                     ; preds = %bb.bv
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %.val2.i.i332.4 = load i64, ptr %i.lq, align 8, !alias.scope !41955, !noalias !41956, !noundef !41
  %i.lr = icmp eq i64 %.val2.i.i332.4, %i.bm
  br i1 %i.lr, label %.loopexit720, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph2091.4
  %.not.not.not.i.not.not.i331.4 = icmp eq i64 %i.jv, 5
  br i1 %.not.not.not.i.not.not.i331.4, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit333, label %.lr.ph2091.5

.lr.ph2091.5:                                     ; preds = %bb.bw
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ju, i64 40
  %.val2.i.i332.5 = load i64, ptr %i.ls, align 8, !alias.scope !41955, !noalias !41956, !noundef !41
  %i.lt = icmp eq i64 %.val2.i.i332.5, %i.bm
  br i1 %i.lt, label %.loopexit720, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph2091.5
  %.not.not.not.i.not.not.i331.5 = icmp eq i64 %i.jv, 6
  br i1 %.not.not.not.i.not.not.i331.5, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit333, label %.lr.ph2091.6

.lr.ph2091.6:                                     ; preds = %bb.bx
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ju, i64 48
  %.val2.i.i332.6 = load i64, ptr %i.lu, align 8, !alias.scope !41955, !noalias !41956, !noundef !41
  %i.lv = icmp eq i64 %.val2.i.i332.6, %i.bm
  br i1 %i.lv, label %.loopexit720, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit333

.lr.ph2091:                                       ; preds = %._crit_edge2088
  %.val2.i.i332 = load i64, ptr %i.ju, align 8, !alias.scope !41955, !noalias !41956, !noundef !41
  %i.lw = icmp eq i64 %.val2.i.i332, %i.bm
  br i1 %i.lw, label %.loopexit720, label %bb.bs

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i321: ; preds = %.loopexit722, %bb.br
  %.sroa.0.05.i3192087 = phi ptr [ %i.li, %bb.br ], [ %.sink11.i, %.loopexit722 ] ; 9 uses
  %.sroa.5.0.i3182086 = phi i64 [ %i.lj, %bb.br ], [ %i.jt, %.loopexit722 ]
  %.val11.i.i322 = load i64, ptr %.sroa.0.05.i3192087, align 8, !alias.scope !41955, !noalias !41957, !noundef !41
  %i.lx = icmp eq i64 %.val11.i.i322, %i.bm
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3192087, i64 8
  %.val11.i.1.i323 = load i64, ptr %i.ly, align 8, !alias.scope !41955, !noalias !41957, !noundef !41
  %i.lz = icmp eq i64 %.val11.i.1.i323, %i.bm
  %i.ma = or i1 %i.lx, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3192087, i64 16
  %.val11.i.2.i324 = load i64, ptr %i.mb, align 8, !alias.scope !41955, !noalias !41957, !noundef !41
  %i.mc = icmp eq i64 %.val11.i.2.i324, %i.bm
  %i.md = or i1 %i.ma, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3192087, i64 24
  %.val11.i.3.i325 = load i64, ptr %i.me, align 8, !alias.scope !41955, !noalias !41957, !noundef !41
  %i.mf = icmp eq i64 %.val11.i.3.i325, %i.bm
  %i.mg = or i1 %i.md, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3192087, i64 32
  %.val11.i.4.i326 = load i64, ptr %i.mh, align 8, !alias.scope !41955, !noalias !41957, !noundef !41
  %i.mi = icmp eq i64 %.val11.i.4.i326, %i.bm
  %i.mj = or i1 %i.mg, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3192087, i64 40
  %.val11.i.5.i327 = load i64, ptr %i.mk, align 8, !alias.scope !41955, !noalias !41957, !noundef !41
  %i.ml = icmp eq i64 %.val11.i.5.i327, %i.bm
  %i.mm = or i1 %i.mj, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3192087, i64 48
  %.val11.i.6.i328 = load i64, ptr %i.mn, align 8, !alias.scope !41955, !noalias !41957, !noundef !41
  %i.mo = icmp eq i64 %.val11.i.6.i328, %i.bm
  %i.mp = or i1 %i.mm, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3192087, i64 56
  %.val11.i.7.i329 = load i64, ptr %i.mq, align 8, !alias.scope !41955, !noalias !41957, !noundef !41
  %i.mr = icmp eq i64 %.val11.i.7.i329, %i.bm
  %i.ms = or i1 %i.mp, %i.mr
  br i1 %i.ms, label %.loopexit720, label %bb.br

.loopexit720:                                     ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i321, %.lr.ph2091, %.lr.ph2091.1, %.lr.ph2091.2, %.lr.ph2091.3, %.lr.ph2091.4, %.lr.ph2091.5, %.lr.ph2091.6
  %i.mt = fadd double %spec.store.select.i.i.i8.i, %.sroa.0142.0 ; 2 uses
  %.inv221 = fcmp ord double %i.mt, 0.000000e+00
  %spec.store.select8 = select i1 %.inv221, double %i.mt, double 0.000000e+00
  br label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit333

_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit333: ; preds = %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %.lr.ph2091.6, %._crit_edge2088, %.loopexit720
  %.sroa.0142.1 = phi double [ %spec.store.select8, %.loopexit720 ], [ %.sroa.0142.0, %._crit_edge2088 ], [ %.sroa.0142.0, %.lr.ph2091.6 ], [ %.sroa.0142.0, %bb.bx ], [ %.sroa.0142.0, %bb.bw ], [ %.sroa.0142.0, %bb.bv ], [ %.sroa.0142.0, %bb.bu ], [ %.sroa.0142.0, %bb.bt ], [ %.sroa.0142.0, %bb.bs ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ao, double noundef 0.000000e+00, double noundef %.sroa.0142.1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @617)
          to label %bb.bz unwind label %.loopexit.split-lp728.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread665:                                       ; preds = %bb.cc, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, %bb.dj, %bb.dh, %.loopexit718
  %.sroa.082.6.ph = phi i8 [ 1, %.loopexit718 ], [ 0, %bb.dh ], [ 0, %bb.dj ], [ 0, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit ], [ 1, %bb.cc ] ; 2 uses
  %lpad.thr_comm663 = landingpad { ptr, i32 }
          cleanup
  br label %.thread651

bb.by:                                            ; preds = %bb.dk
  %lpad.thr_comm.split-lp664 = landingpad { ptr, i32 }
          cleanup
  br label %.body500

bb.bz:                                            ; preds = %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit333
  %i.mu = load i64, ptr %.sroa.3105.0..sroa_idx106, align 8, !alias.scope !41958, !noundef !41 ; 2 uses
  %i.mv = icmp ugt i64 %i.mu, 1                   ; 2 uses
  %i.mw = load ptr, ptr %i.ba, align 8, !alias.scope !41958, !nonnull !41
  %i.mx = load i64, ptr %.sroa.0104.sroa.3.0..sroa_idx122, align 8, !alias.scope !41958
  %.sink11.i334 = select i1 %i.mv, ptr %i.mw, ptr %i.ba ; 2 uses
  %.sink10.i335 = select i1 %i.mv, i64 %i.mx, i64 %i.mu ; 2 uses
  %i.my = and i64 %.sink10.i335, 1152921504606846968 ; 3 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i334, i64 %i.my ; 7 uses
  %.not.i3392092 = icmp eq i64 %i.my, 0
  br i1 %.not.i3392092, label %._crit_edge2095, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i340

bb.ca:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i340
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3382094, i64 64
  %i.nb = add nsw i64 %.sroa.5.0.i3372093, -8     ; 2 uses
  %.not.i339 = icmp eq i64 %i.nb, 0
  br i1 %.not.i339, label %._crit_edge2095, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i340

._crit_edge2095:                                  ; preds = %bb.ca, %bb.bz
  %i.nc = shl i64 %.sink10.i335, 3
  %.idx2128 = and i64 %i.nc, 56                   ; 7 uses
  %.not.not.not.i.not.not.i3502096 = icmp samesign eq i64 %.idx2128, 0
  br i1 %.not.not.not.i.not.not.i3502096, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph, label %.lr.ph2098

4:                                                ; preds = %.lr.ph2098
  %.not.not.not.i.not.not.i350 = icmp samesign eq i64 %.idx2128, 8
  br i1 %.not.not.not.i.not.not.i350, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph, label %.lr.ph2098.1

.lr.ph2098.1:                                     ; preds = %4
  %5 = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %.val2.i.i351.1 = load i64, ptr %5, align 8, !alias.scope !41959, !noalias !41960, !noundef !41
  %6 = icmp eq i64 %.val2.i.i351.1, 0
  br i1 %6, label %.loopexit718, label %7

7:                                                ; preds = %.lr.ph2098.1
  %.not.not.not.i.not.not.i350.1 = icmp samesign eq i64 %.idx2128, 16
  br i1 %.not.not.not.i.not.not.i350.1, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph, label %.lr.ph2098.2

.lr.ph2098.2:                                     ; preds = %7
  %8 = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %.val2.i.i351.2 = load i64, ptr %8, align 8, !alias.scope !41959, !noalias !41960, !noundef !41
  %9 = icmp eq i64 %.val2.i.i351.2, 0
  br i1 %9, label %.loopexit718, label %10

10:                                               ; preds = %.lr.ph2098.2
  %.not.not.not.i.not.not.i350.2 = icmp samesign eq i64 %.idx2128, 24
  br i1 %.not.not.not.i.not.not.i350.2, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph, label %.lr.ph2098.3

.lr.ph2098.3:                                     ; preds = %10
  %11 = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %.val2.i.i351.3 = load i64, ptr %11, align 8, !alias.scope !41959, !noalias !41960, !noundef !41
  %12 = icmp eq i64 %.val2.i.i351.3, 0
  br i1 %12, label %.loopexit718, label %13

13:                                               ; preds = %.lr.ph2098.3
  %.not.not.not.i.not.not.i350.3 = icmp samesign eq i64 %.idx2128, 32
  br i1 %.not.not.not.i.not.not.i350.3, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph, label %.lr.ph2098.4

.lr.ph2098.4:                                     ; preds = %13
  %14 = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  %.val2.i.i351.4 = load i64, ptr %14, align 8, !alias.scope !41959, !noalias !41960, !noundef !41
  %15 = icmp eq i64 %.val2.i.i351.4, 0
  br i1 %15, label %.loopexit718, label %16

16:                                               ; preds = %.lr.ph2098.4
  %.not.not.not.i.not.not.i350.4 = icmp samesign eq i64 %.idx2128, 40
  br i1 %.not.not.not.i.not.not.i350.4, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph, label %bb.cb

bb.cb:                                            ; preds = %16
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 40
  %.val2.i.i351.5 = load i64, ptr %i.nd, align 8, !alias.scope !41959, !noalias !41960, !noundef !41
  %.not.not.not.i.not.not.i350.a = icmp eq i64 %.val2.i.i351.5, 0
  br i1 %.not.not.not.i.not.not.i350.a, label %.loopexit718, label %17

17:                                               ; preds = %bb.cb
  %.not.not.not.i.not.not.i350.5 = icmp samesign eq i64 %.idx2128, 48
  br i1 %.not.not.not.i.not.not.i350.5, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph, label %.lr.ph2098.a

.lr.ph2098.a:                                     ; preds = %17
  %18 = getelementptr inbounds nuw i8, ptr %i.mz, i64 48
  %.val2.i.i351.a = load i64, ptr %18, align 8, !alias.scope !41959, !noalias !41960, !noundef !41
  %i.ne = icmp eq i64 %.val2.i.i351.a, 0
  br i1 %i.ne, label %.loopexit718, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph

.lr.ph2098:                                       ; preds = %._crit_edge2095
  %.val2.i.i351 = load i64, ptr %i.mz, align 8, !alias.scope !41959, !noalias !41960, !noundef !41
  %19 = icmp eq i64 %.val2.i.i351, 0
  br i1 %19, label %.loopexit718, label %4

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i340: ; preds = %bb.bz, %bb.ca
  %.sroa.0.05.i3382094 = phi ptr [ %i.na, %bb.ca ], [ %.sink11.i334, %bb.bz ] ; 9 uses
  %.sroa.5.0.i3372093 = phi i64 [ %i.nb, %bb.ca ], [ %i.my, %bb.bz ]
  %.val11.i.i341 = load i64, ptr %.sroa.0.05.i3382094, align 8, !alias.scope !41959, !noalias !41961, !noundef !41
  %i.nf = icmp eq i64 %.val11.i.i341, 0
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3382094, i64 8
  %.val11.i.1.i342 = load i64, ptr %i.ng, align 8, !alias.scope !41959, !noalias !41961, !noundef !41
  %i.nh = icmp eq i64 %.val11.i.1.i342, 0
  %i.ni = or i1 %i.nf, %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3382094, i64 16
  %.val11.i.2.i343 = load i64, ptr %i.nj, align 8, !alias.scope !41959, !noalias !41961, !noundef !41
  %i.nk = icmp eq i64 %.val11.i.2.i343, 0
  %i.nl = or i1 %i.ni, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3382094, i64 24
  %.val11.i.3.i344 = load i64, ptr %i.nm, align 8, !alias.scope !41959, !noalias !41961, !noundef !41
  %i.nn = icmp eq i64 %.val11.i.3.i344, 0
  %i.no = or i1 %i.nl, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3382094, i64 32
  %.val11.i.4.i345 = load i64, ptr %i.np, align 8, !alias.scope !41959, !noalias !41961, !noundef !41
  %i.nq = icmp eq i64 %.val11.i.4.i345, 0
  %i.nr = or i1 %i.no, %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3382094, i64 40
  %.val11.i.5.i346 = load i64, ptr %i.ns, align 8, !alias.scope !41959, !noalias !41961, !noundef !41
  %i.nt = icmp eq i64 %.val11.i.5.i346, 0
  %i.nu = or i1 %i.nr, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3382094, i64 48
  %.val11.i.6.i347 = load i64, ptr %i.nv, align 8, !alias.scope !41959, !noalias !41961, !noundef !41
  %i.nw = icmp eq i64 %.val11.i.6.i347, 0
  %i.nx = or i1 %i.nu, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3382094, i64 56
  %.val11.i.7.i348 = load i64, ptr %i.ny, align 8, !alias.scope !41959, !noalias !41961, !noundef !41
  %i.nz = icmp eq i64 %.val11.i.7.i348, 0
  %i.oa = or i1 %i.nx, %i.nz
  br i1 %i.oa, label %.loopexit718, label %bb.ca

.loopexit718:                                     ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i340, %.lr.ph2098, %.lr.ph2098.1, %.lr.ph2098.2, %.lr.ph2098.3, %.lr.ph2098.4, %bb.cb, %.lr.ph2098.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke fastcc void @_RNvXsC_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_11FixedStrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.az)
          to label %bb.cc unwind label %.thread665

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph: ; preds = %4, %7, %10, %13, %16, %17, %.lr.ph2098.a, %._crit_edge2095, %bb.cd
  %.sroa.0165.0 = phi double [ %spec.store.select10, %bb.cd ], [ 0.000000e+00, %._crit_edge2095 ], [ 0.000000e+00, %.lr.ph2098.a ], [ 0.000000e+00, %17 ], [ 0.000000e+00, %16 ], [ 0.000000e+00, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %7 ], [ 0.000000e+00, %4 ]
  %i.ob = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.el ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.em, ptr %i.al, align 8
  %.sroa.053.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.053.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %.val.i, ptr %.sroa.053.sroa.3.0..sroa_idx, align 8
  %.sroa.053.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.ob, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.059.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.059.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.059.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 201
  %i.oe = load i8, ptr %i.od, align 1, !range !48 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.og = load i8, ptr %i.of, align 8, !range !48 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.oi = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 8 uses
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 5 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.oo = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 6 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.7565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.4.0..sroa_idx.i489 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.52.0..sroa_idx.i490 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.6.0..sroa_idx.i491 = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.7.0..sroa_idx.i492 = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %.sroa.8.0..sroa_idx.i493 = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i

bb.cc:                                            ; preds = %.loopexit718
  %i.pb = fcmp uno double %spec.store.select, 0.000000e+00
  %i.pc = fadd double %spec.store.select, 0.000000e+00
  %spec.store.select9 = select i1 %i.pb, double 0.000000e+00, double %i.pc
  call void @llvm.experimental.noalias.scope.decl(metadata !41962)
  %i.pd = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 -9223372036854775808, ptr %i.pd, align 16, !alias.scope !41963
  %.sroa.4.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store double 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i353, align 8, !alias.scope !41963
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store double %.sroa.0142.1, ptr %.sroa.52.0..sroa_idx.i, align 16, !alias.scope !41963
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.am, i64 80, i1 false), !alias.scope !41964
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  store i32 -1, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !41963
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 16, !alias.scope !41963
  %i.pe = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.bj, ptr %i.pe, align 8, !alias.scope !41963
  store i64 2, ptr %i.an, align 16, !alias.scope !41963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ao, double noundef %spec.store.select9, double noundef 0.000000e+00, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(176) %i.an)
          to label %bb.cd unwind label %.thread665

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.pf = fadd double %spec.store.select.i.i.i.i, 0.000000e+00
  %i.pg = fcmp uno double %spec.store.select.i.i.i.i, 0.000000e+00
  %spec.store.select10 = select i1 %i.pg, double 0.000000e+00, double %i.pf
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit488
  %.sroa.0165.1976 = phi double [ %.sroa.0165.0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph ], [ %spec.store.select21, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit488 ] ; 3 uses
  %i.ph = phi ptr [ %i.em, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph ], [ %i.pj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit488 ] ; 3 uses
  %i.pi = phi i64 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i.lr.ph ], [ %i.pk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit488 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !41965)
  call void @llvm.experimental.noalias.scope.decl(metadata !41966)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 24 ; 4 uses
  store ptr %i.pj, ptr %.sroa.053.sroa.2.0..sroa_idx, align 8, !alias.scope !41967
  %.sroa.0.0.copyload1.i = load i64, ptr %i.ph, align 8, !noalias !41968 ; 3 uses
  %.not.i354 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i354, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i._crit_edge, label %bb.cf

bb.ce:                                            ; preds = %.body463, %bb.fr, %.thread678
  %.pn235.pn.pn = phi { ptr, i32 } [ %eh.lpad-body366, %.thread678 ], [ %.pn235, %.body463 ], [ %.pn235, %bb.fr ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1q_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEEEEB2q_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.al) #53
          to label %.thread651 unwind label %bb.ah

bb.cf:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.i, i64 16, i1 false)
  %i.pk = add nuw nsw i64 %i.pi, 1                ; 17 uses
  store i64 %i.pk, ptr %.sroa.254.0..sroa_idx, align 8, !alias.scope !41965
  store i64 %.sroa.0.0.copyload1.i, ptr %i.ak, align 8
  %i.pl = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !nonnull !41, !noundef !41 ; 11 uses
  %i.pm = load i64, ptr %i.oc, align 8, !noundef !41 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41969)
  %.idx.i = mul nuw nsw i64 %i.pm, 40             ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.idx.i
  %.not.i356 = icmp eq i64 %i.pm, 0               ; 2 uses
  br i1 %.not.i356, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.po = getelementptr i8, ptr %i.pl, i64 16
  %.val.i.i.i = load i64, ptr %i.po, align 8, !alias.scope !41969, !noalias !41970, !noundef !41 ; 4 uses
  %i.pp = icmp ult i64 %.val.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.pp)
  %i.pq = icmp eq i64 %i.pm, 1
  br i1 %i.pq, label %.loopexit66.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %gepdiff.i = add nsw i64 %.idx.i, -40
  %i.pr = udiv exact i64 %gepdiff.i, 40           ; 3 uses
  %i.ps = add nsw i64 %i.pr, -1
  %xtraiter2306 = and i64 %i.pr, 3                ; 3 uses
  %i.pt = icmp ult i64 %i.ps, 3
  br i1 %i.pt, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ch
  %unroll_iter2310 = and i64 %i.pr, 576460752303423484
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.new
  %.sroa.04.0.i.i.i.i357 = phi i64 [ 0, %.new ], [ %i.qg, %bb.ci ] ; 5 uses
  %.sroa.02.0.i.i.i.i358 = phi i64 [ %.val.i.i.i, %.new ], [ %..i.i.i.i.i.i.i.3, %bb.ci ]
  %niter2311 = phi i64 [ 0, %.new ], [ %niter2311.next.3, %bb.ci ]
  %i.pu = getelementptr inbounds nuw [40 x i8], ptr %i.pl, i64 %.sroa.04.0.i.i.i.i357
  %i.pv = getelementptr i8, ptr %i.pu, i64 56
  %.val.i.i.i.i359 = load i64, ptr %i.pv, align 8, !alias.scope !41969, !noundef !41 ; 2 uses
  %i.pw = icmp ult i64 %.val.i.i.i.i359, 384307168202282326
  call void @llvm.assume(i1 %i.pw)
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.val.i.i.i.i359, i64 %.sroa.02.0.i.i.i.i358)
  %i.px = getelementptr inbounds nuw [40 x i8], ptr %i.pl, i64 %.sroa.04.0.i.i.i.i357
  %i.py = getelementptr i8, ptr %i.px, i64 96
  %.val.i.i.i.i359.1 = load i64, ptr %i.py, align 8, !alias.scope !41969, !noundef !41 ; 2 uses
  %i.pz = icmp ult i64 %.val.i.i.i.i359.1, 384307168202282326
  call void @llvm.assume(i1 %i.pz)
  %..i.i.i.i.i.i.i.1 = call noundef i64 @llvm.umax.i64(i64 %.val.i.i.i.i359.1, i64 %..i.i.i.i.i.i.i)
  %i.qa = getelementptr inbounds nuw [40 x i8], ptr %i.pl, i64 %.sroa.04.0.i.i.i.i357
  %i.qb = getelementptr i8, ptr %i.qa, i64 136
  %.val.i.i.i.i359.2 = load i64, ptr %i.qb, align 8, !alias.scope !41969, !noundef !41 ; 2 uses
  %i.qc = icmp ult i64 %.val.i.i.i.i359.2, 384307168202282326
  call void @llvm.assume(i1 %i.qc)
  %..i.i.i.i.i.i.i.2 = call noundef i64 @llvm.umax.i64(i64 %.val.i.i.i.i359.2, i64 %..i.i.i.i.i.i.i.1)
  %i.qd = getelementptr inbounds nuw [40 x i8], ptr %i.pl, i64 %.sroa.04.0.i.i.i.i357
  %i.qe = getelementptr i8, ptr %i.qd, i64 176
  %.val.i.i.i.i359.3 = load i64, ptr %i.qe, align 8, !alias.scope !41969, !noundef !41 ; 2 uses
  %i.qf = icmp ult i64 %.val.i.i.i.i359.3, 384307168202282326
  call void @llvm.assume(i1 %i.qf)
  %..i.i.i.i.i.i.i.3 = call noundef i64 @llvm.umax.i64(i64 %.val.i.i.i.i359.3, i64 %..i.i.i.i.i.i.i.2) ; 3 uses
  %i.qg = add nuw i64 %.sroa.04.0.i.i.i.i357, 4   ; 2 uses
  %niter2311.next.3 = add i64 %niter2311, 4       ; 2 uses
  %niter2311.ncmp.3 = icmp eq i64 %niter2311.next.3, %unroll_iter2310
  br i1 %niter2311.ncmp.3, label %.loopexit66.i.loopexit.unr-lcssa, label %bb.ci

.loopexit66.i.loopexit.unr-lcssa:                 ; preds = %bb.ci
  %lcmp.mod2307.not = icmp eq i64 %xtraiter2306, 0
  br i1 %lcmp.mod2307.not, label %.loopexit66.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit66.i.loopexit.unr-lcssa, %bb.ch
  %.sroa.04.0.i.i.i.i357.epil.init = phi i64 [ 0, %bb.ch ], [ %i.qg, %.loopexit66.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i358.epil.init = phi i64 [ %.val.i.i.i, %bb.ch ], [ %..i.i.i.i.i.i.i.3, %.loopexit66.i.loopexit.unr-lcssa ]
  %lcmp.mod2309 = icmp ne i64 %xtraiter2306, 0
  call void @llvm.assume(i1 %lcmp.mod2309)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.epil.preheader
  %.sroa.04.0.i.i.i.i357.epil = phi i64 [ %.sroa.04.0.i.i.i.i357.epil.init, %.epil.preheader ], [ %i.qk, %bb.cj ] ; 2 uses
  %.sroa.02.0.i.i.i.i358.epil = phi i64 [ %.sroa.02.0.i.i.i.i358.epil.init, %.epil.preheader ], [ %..i.i.i.i.i.i.i.epil, %bb.cj ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cj ]
  %i.qh = getelementptr inbounds nuw [40 x i8], ptr %i.pl, i64 %.sroa.04.0.i.i.i.i357.epil
  %i.qi = getelementptr i8, ptr %i.qh, i64 56
  %.val.i.i.i.i359.epil = load i64, ptr %i.qi, align 8, !alias.scope !41969, !noundef !41 ; 2 uses
  %i.qj = icmp ult i64 %.val.i.i.i.i359.epil, 384307168202282326
  call void @llvm.assume(i1 %i.qj)
  %..i.i.i.i.i.i.i.epil = call noundef i64 @llvm.umax.i64(i64 %.val.i.i.i.i359.epil, i64 %.sroa.02.0.i.i.i.i358.epil) ; 2 uses
  %i.qk = add nuw i64 %.sroa.04.0.i.i.i.i357.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2306
  br i1 %epil.iter.cmp.not, label %.loopexit66.i, label %bb.cj, !llvm.loop !41717

.loopexit66.i:                                    ; preds = %.loopexit66.i.loopexit.unr-lcssa, %bb.cj, %bb.cg
  %.sroa.0.0.i360 = phi i64 [ %.val.i.i.i, %bb.cg ], [ %..i.i.i.i.i.i.i.3, %.loopexit66.i.loopexit.unr-lcssa ], [ %..i.i.i.i.i.i.i.epil, %bb.cj ] ; 3 uses
  %i.ql = shl nuw nsw i64 %.sroa.0.0.i360, 3
  %i.qm = icmp eq i64 %.sroa.0.0.i360, 0
  br i1 %i.qm, label %.lr.ph.preheader.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %.loopexit66.i, %bb.cf
  %i.qn = phi i64 [ %i.ql, %.loopexit66.i ], [ 8, %bb.cf ] ; 3 uses
  %.sroa.0.040.i = phi i64 [ %.sroa.0.0.i360, %.loopexit66.i ], [ 1, %bb.cf ] ; 3 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #55, !noalias !41971
  %i.qo = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.qn, i64 noundef range(i64 1, 17) 8) #55, !noalias !41971 ; 6 uses
  %i.qp = icmp eq ptr %i.qo, null
  br i1 %i.qp, label %bb.ck, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.ck:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.qn) #56
          to label %.noexc364 unwind label %bb.dy

.noexc364:                                        ; preds = %bb.ck
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.qq = icmp samesign ugt i64 %.sroa.0.040.i, 1
  br i1 %i.qq, label %.lr.ph.i.preheader.i.i, label %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i

.lr.ph.i.preheader.i.i:                           ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.qr = add nsw i64 %i.qn, -8                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.qo, i8 0, i64 %i.qr, i1 false), !noalias !41972
  %scevgep.i.i363 = getelementptr i8, ptr %i.qo, i64 %i.qr
  br label %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.lr.ph.i.preheader.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.0.0.lcssa29.i.i.i = phi ptr [ %scevgep.i.i363, %.lr.ph.i.preheader.i.i ], [ %i.qo, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  store double 0.000000e+00, ptr %.sroa.0.0.lcssa29.i.i.i, align 8, !noalias !41972
  br i1 %.not.i356, label %.loopexit716, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i, %.loopexit66.i
  %.sroa.0.0414664.i = phi i64 [ %.sroa.0.040.i, %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %.loopexit66.i ] ; 6 uses
  %.sroa.10.0.i.i5062.i = phi ptr [ %i.qo, %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i ], [ inttoptr (i64 8 to ptr), %.loopexit66.i ] ; 3 uses
  br label %.lr.ph.i

.loopexit23.i:                                    ; preds = %bb.cl, %.lr.ph.i
  %i.qs = icmp eq ptr %i.qt, %i.pn
  br i1 %i.qs, label %.loopexit716, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit23.i, %.lr.ph.preheader.i
  %.sroa.03.028.i = phi ptr [ %i.qt, %.loopexit23.i ], [ %i.pl, %.lr.ph.preheader.i ] ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.03.028.i, i64 40 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.03.028.i, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !alias.scope !41969, !nonnull !41, !noundef !41 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.03.028.i, i64 16
  %i.qx = load i64, ptr %i.qw, align 8, !alias.scope !41969, !noundef !41 ; 2 uses
  %.idx2129 = mul nuw nsw i64 %i.qx, 24
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 %.idx2129
  %i.qz = icmp eq i64 %i.qx, 0
  br i1 %i.qz, label %.loopexit23.i, label %.lr.ph2101

bb.cl:                                            ; preds = %bb.cq
  %i.ra = icmp eq ptr %i.rd, %i.qy
  br i1 %i.ra, label %.loopexit23.i, label %.lr.ph2101

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cq, %bb.cr
  %lpad.loopexit.split-lp2146 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rb = icmp eq i64 %.sroa.0.0414664.i, 0
  br i1 %i.rb, label %.thread678, label %bb.cm

bb.cm:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.rc = shl nuw nsw i64 %.sroa.0.0414664.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i5062.i, i64 noundef %i.rc, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !41973
  br label %.thread678

.lr.ph2101:                                       ; preds = %.lr.ph.i, %bb.cl
  %.sroa.015.0.i2100 = phi ptr [ %i.rd, %bb.cl ], [ %i.qv, %.lr.ph.i ] ; 3 uses
  %.sroa.7.0.i2099 = phi i64 [ %i.re, %bb.cl ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i2100, i64 24 ; 2 uses
  %i.re = add nuw nsw i64 %.sroa.7.0.i2099, 1
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i2100, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !noalias !41974, !nonnull !41, !noundef !41
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.015.0.i2100, i64 16
  %i.ri = load i64, ptr %i.rh, align 8, !noalias !41974, !noundef !41 ; 2 uses
  %i.rj = icmp eq i64 %i.ri, 0
  br i1 %i.rj, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph2101, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.ru, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i ], [ 0, %.lr.ph2101 ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i = phi double [ %i.rt, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i ], [ -0.000000e+00, %.lr.ph2101 ]
  %i.rk = getelementptr inbounds nuw [304 x i8], ptr %i.rg, i64 %.sroa.04.0.i.i.i.i.i ; 4 uses
  %i.rl = load i64, ptr %i.rk, align 16, !range !95, !alias.scope !41975, !noalias !41974, !noundef !41
  %i.rm = call i64 @llvm.usub.sat.i64(i64 %i.rl, i64 1)
  switch i64 %i.rm, label %default.unreachable1766 [
    i64 0, label %bb.cn
    i64 1, label %bb.co
    i64 2, label %bb.cp
    i64 3, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i
  ]

default.unreachable1766:                          ; preds = %bb.eg, %bb.fa, %.preheader.i
  unreachable

bb.cn:                                            ; preds = %.preheader.i
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 64
  %i.ro = load double, ptr %i.rn, align 16, !alias.scope !41975, !noalias !41974, !noundef !41
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i

bb.co:                                            ; preds = %.preheader.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rk, i64 32
  %i.rq = load double, ptr %i.rp, align 16, !alias.scope !41975, !noalias !41974, !noundef !41
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i

bb.cp:                                            ; preds = %.preheader.i
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rs = load double, ptr %i.rr, align 8, !alias.scope !41975, !noalias !41974, !noundef !41
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i: ; preds = %bb.cp, %bb.co, %bb.cn, %.preheader.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi double [ %i.ro, %bb.cn ], [ %i.rq, %bb.co ], [ %i.rs, %bb.cp ], [ 0.000000e+00, %.preheader.i ]
  %i.rt = fadd double %.sroa.02.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i ; 2 uses
  %i.ru = add nuw i64 %.sroa.04.0.i.i.i.i.i, 1    ; 2 uses
  %i.rv = icmp eq i64 %i.ru, %i.ri
  br i1 %i.rv, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i, %.lr.ph2101
  %.sroa.0.0.i.i.i.i.i = phi double [ -0.000000e+00, %.lr.ph2101 ], [ %i.rt, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvNtBZ_5table25compute_sub_column_widthss_0NCIB2_B1V_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B1X_B1V_NtNtNtB8_6traits5accum3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2K_EE0NCIB2_B3D_ddNCINvXsq_B3F_B3D_B4E_3sumIB59_B58_B4n_EE0NCINvXs26_B4G_dB4E_3sumIB59_B6u_B65_EE0E0E0E0B11_.exit.i.i.i.i.i ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i2099, %.sroa.0.0414664.i
  br i1 %exitcond.not.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.loopexit.i
  %.inv.i.i = fcmp ord double %.sroa.0.0.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i = select i1 %.inv.i.i, double %.sroa.0.0.i.i.i.i.i, double 0.000000e+00
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i5062.i, i64 %.sroa.7.0.i2099
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rw, double noundef %spec.store.select.i.i)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41974

bb.cr:                                            ; preds = %.loopexit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0414664.i, i64 noundef %.sroa.0.0414664.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @622) #56
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41974

bb.cs:                                            ; preds = %bb.cr
  unreachable

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit488, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i
  %.lcssa1131 = phi ptr [ %i.pj, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i ], [ %i.ob, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit488 ] ; 2 uses
  %.sroa.0165.1.lcssa.ph = phi double [ %.sroa.0165.1976, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i ], [ %spec.store.select21, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit488 ] ; 9 uses
  %i.rx = ptrtoint ptr %i.ob to i64
  %i.ry = ptrtoint ptr %.lcssa1131 to i64
  %i.rz = sub nuw i64 %i.rx, %i.ry
  %i.sa = udiv exact i64 %i.rz, 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEEB1f_(ptr noalias nofree noundef nonnull align 8 %.lcssa1131, i64 noundef %i.sa)
          to label %bb.cu unwind label %bb.ct, !noalias !41976

bb.ct:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i._crit_edge
  %i.sb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.em, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !41976
  br label %.thread651

bb.cu:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i._crit_edge
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.em, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !41976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.sc = load i64, ptr %.sroa.3105.0..sroa_idx106, align 8, !alias.scope !41977, !noundef !41 ; 2 uses
  %i.sd = icmp ugt i64 %i.sc, 1                   ; 2 uses
  %i.se = load ptr, ptr %i.ba, align 8, !alias.scope !41977, !nonnull !41
  %i.sf = load i64, ptr %.sroa.0104.sroa.3.0..sroa_idx122, align 8, !alias.scope !41977
  %.sink11.i370 = select i1 %i.sd, ptr %i.se, ptr %i.ba ; 2 uses
  %.sink10.i371 = select i1 %i.sd, i64 %i.sf, i64 %i.sc ; 2 uses
  %i.sg = and i64 %.sink10.i371, 1152921504606846968 ; 3 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i370, i64 %i.sg ; 7 uses
  %.not.i3752118 = icmp eq i64 %i.sg, 0
  br i1 %.not.i3752118, label %._crit_edge2121, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i376

bb.cv:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i376
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3742120, i64 64
  %i.sj = add nsw i64 %.sroa.5.0.i3732119, -8     ; 2 uses
  %.not.i375 = icmp eq i64 %i.sj, 0
  br i1 %.not.i375, label %._crit_edge2121, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i376

._crit_edge2121:                                  ; preds = %bb.cv, %bb.cu
  %i.sk = shl i64 %.sink10.i371, 3
  %.idx2132 = and i64 %i.sk, 56                   ; 7 uses
  %.not.not.not.i.not.not.i3862122 = icmp samesign eq i64 %.idx2132, 0
  br i1 %.not.not.not.i.not.not.i3862122, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit388, label %.lr.ph2124

20:                                               ; preds = %.lr.ph2124
  %.not.not.not.i.not.not.i386 = icmp samesign eq i64 %.idx2132, 8
  br i1 %.not.not.not.i.not.not.i386, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit388, label %.lr.ph2124.1

.lr.ph2124.1:                                     ; preds = %20
  %21 = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %.val2.i.i387.1 = load i64, ptr %21, align 8, !alias.scope !41978, !noalias !41979, !noundef !41
  %22 = icmp eq i64 %.val2.i.i387.1, %.val.i
  br i1 %22, label %.cont, label %23

23:                                               ; preds = %.lr.ph2124.1
  %.not.not.not.i.not.not.i386.1 = icmp samesign eq i64 %.idx2132, 16
  br i1 %.not.not.not.i.not.not.i386.1, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit388, label %.lr.ph2124.2

.lr.ph2124.2:                                     ; preds = %23
  %24 = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %.val2.i.i387.2 = load i64, ptr %24, align 8, !alias.scope !41978, !noalias !41979, !noundef !41
  %25 = icmp eq i64 %.val2.i.i387.2, %.val.i
  br i1 %25, label %.cont, label %26

26:                                               ; preds = %.lr.ph2124.2
  %.not.not.not.i.not.not.i386.2 = icmp samesign eq i64 %.idx2132, 24
  br i1 %.not.not.not.i.not.not.i386.2, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit388, label %.lr.ph2124.3

.lr.ph2124.3:                                     ; preds = %26
  %27 = getelementptr inbounds nuw i8, ptr %i.sh, i64 24
  %.val2.i.i387.3 = load i64, ptr %27, align 8, !alias.scope !41978, !noalias !41979, !noundef !41
  %28 = icmp eq i64 %.val2.i.i387.3, %.val.i
  br i1 %28, label %.cont, label %29

29:                                               ; preds = %.lr.ph2124.3
  %.not.not.not.i.not.not.i386.3 = icmp samesign eq i64 %.idx2132, 32
  br i1 %.not.not.not.i.not.not.i386.3, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit388, label %.lr.ph2124.4

.lr.ph2124.4:                                     ; preds = %29
  %30 = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  %.val2.i.i387.4 = load i64, ptr %30, align 8, !alias.scope !41978, !noalias !41979, !noundef !41
  %31 = icmp eq i64 %.val2.i.i387.4, %.val.i
  br i1 %31, label %.cont, label %32

32:                                               ; preds = %.lr.ph2124.4
  %.not.not.not.i.not.not.i386.4 = icmp samesign eq i64 %.idx2132, 40
  br i1 %.not.not.not.i.not.not.i386.4, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit388, label %bb.cw

bb.cw:                                            ; preds = %32
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sh, i64 40
  %.val2.i.i387.5 = load i64, ptr %i.sl, align 8, !alias.scope !41978, !noalias !41979, !noundef !41
  %.not.not.not.i.not.not.i386.a = icmp eq i64 %.val2.i.i387.5, %.val.i
  br i1 %.not.not.not.i.not.not.i386.a, label %.cont, label %33

33:                                               ; preds = %bb.cw
  %.not.not.not.i.not.not.i386.5 = icmp samesign eq i64 %.idx2132, 48
  br i1 %.not.not.not.i.not.not.i386.5, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit388, label %.lr.ph2124.a

.lr.ph2124.a:                                     ; preds = %33
  %34 = getelementptr inbounds nuw i8, ptr %i.sh, i64 48
  %.val2.i.i387.a = load i64, ptr %34, align 8, !alias.scope !41978, !noalias !41979, !noundef !41
  %i.sm = icmp eq i64 %.val2.i.i387.a, %.val.i
  br i1 %i.sm, label %.cont, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit388

.lr.ph2124:                                       ; preds = %._crit_edge2121
  %.val2.i.i387 = load i64, ptr %i.sh, align 8, !alias.scope !41978, !noalias !41979, !noundef !41
  %35 = icmp eq i64 %.val2.i.i387, %.val.i
  br i1 %35, label %.cont, label %20

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i376: ; preds = %bb.cu, %bb.cv
  %.sroa.0.05.i3742120 = phi ptr [ %i.si, %bb.cv ], [ %.sink11.i370, %bb.cu ] ; 9 uses
  %.sroa.5.0.i3732119 = phi i64 [ %i.sj, %bb.cv ], [ %i.sg, %bb.cu ]
  %.val11.i.i377 = load i64, ptr %.sroa.0.05.i3742120, align 8, !alias.scope !41978, !noalias !41980, !noundef !41
  %i.sn = icmp eq i64 %.val11.i.i377, %.val.i
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3742120, i64 8
  %.val11.i.1.i378 = load i64, ptr %i.so, align 8, !alias.scope !41978, !noalias !41980, !noundef !41
  %i.sp = icmp eq i64 %.val11.i.1.i378, %.val.i
  %i.sq = or i1 %i.sn, %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3742120, i64 16
  %.val11.i.2.i379 = load i64, ptr %i.sr, align 8, !alias.scope !41978, !noalias !41980, !noundef !41
  %i.ss = icmp eq i64 %.val11.i.2.i379, %.val.i
  %i.st = or i1 %i.sq, %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3742120, i64 24
  %.val11.i.3.i380 = load i64, ptr %i.su, align 8, !alias.scope !41978, !noalias !41980, !noundef !41
  %i.sv = icmp eq i64 %.val11.i.3.i380, %.val.i
  %i.sw = or i1 %i.st, %i.sv
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3742120, i64 32
  %.val11.i.4.i381 = load i64, ptr %i.sx, align 8, !alias.scope !41978, !noalias !41980, !noundef !41
  %i.sy = icmp eq i64 %.val11.i.4.i381, %.val.i
  %i.sz = or i1 %i.sw, %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3742120, i64 40
  %.val11.i.5.i382 = load i64, ptr %i.ta, align 8, !alias.scope !41978, !noalias !41980, !noundef !41
  %i.tb = icmp eq i64 %.val11.i.5.i382, %.val.i
  %i.tc = or i1 %i.sz, %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3742120, i64 48
  %.val11.i.6.i383 = load i64, ptr %i.td, align 8, !alias.scope !41978, !noalias !41980, !noundef !41
  %i.te = icmp eq i64 %.val11.i.6.i383, %.val.i
  %i.tf = or i1 %i.tc, %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i3742120, i64 56
  %.val11.i.7.i384 = load i64, ptr %i.tg, align 8, !alias.scope !41978, !noalias !41980, !noundef !41
  %i.th = icmp eq i64 %.val11.i.7.i384, %.val.i
  %i.ti = or i1 %i.tf, %i.th
  br i1 %i.ti, label %.cont, label %bb.cv

_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit388: ; preds = %20, %23, %26, %29, %32, %33, %.lr.ph2124.a, %._crit_edge2121
  %i.tj = fneg double %spec.store.select.i.i.i.i
  %i.tk = fcmp uno double %spec.store.select.i.i.i.i, 0.000000e+00
  %spec.store.select11 = select i1 %i.tk, double 0.000000e+00, double %i.tj
  %i.tl = fadd double %spec.store.select11, %.sroa.0165.1.lcssa.ph ; 2 uses
  %.inv223 = fcmp ord double %i.tl, 0.000000e+00
  %spec.store.select12 = select i1 %.inv223, double %i.tl, double 0.000000e+00
  br label %.cont

.cont:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i376, %.lr.ph2124, %.lr.ph2124.1, %.lr.ph2124.2, %.lr.ph2124.3, %.lr.ph2124.4, %bb.cw, %.lr.ph2124.a, %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit388
  %.sroa.0165.2 = phi double [ %spec.store.select12, %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit388 ], [ %.sroa.0165.1.lcssa.ph, %.lr.ph2124 ], [ %.sroa.0165.1.lcssa.ph, %.lr.ph2124.a ], [ %.sroa.0165.1.lcssa.ph, %bb.cw ], [ %.sroa.0165.1.lcssa.ph, %.lr.ph2124.4 ], [ %.sroa.0165.1.lcssa.ph, %.lr.ph2124.3 ], [ %.sroa.0165.1.lcssa.ph, %.lr.ph2124.2 ], [ %.sroa.0165.1.lcssa.ph, %.lr.ph2124.1 ], [ %.sroa.0165.1.lcssa.ph, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i376 ] ; 2 uses
  %.sroa.0573.0.copyload = load i64, ptr %i.bb, align 8 ; 2 uses
  %.sroa.4575.0.copyload = load i64, ptr %.sroa.0108.sroa.3.0..sroa_idx119, align 8 ; 2 uses
  %.sroa.6577.0.copyload = load i64, ptr %.sroa.3109.0..sroa_idx110, align 8 ; 5 uses
  %i.tm = icmp ugt i64 %.sroa.6577.0.copyload, 1  ; 6 uses
  %.sink10.i.i = select i1 %i.tm, i64 %.sroa.4575.0.copyload, i64 %.sroa.6577.0.copyload ; 3 uses
  %spec.select = select i1 %i.tm, i64 0, i64 %.sroa.4575.0.copyload
  %spec.select705 = select i1 %i.tm, i64 %.sroa.6577.0.copyload, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 %.sroa.0573.0.copyload, ptr %i.ae, align 8
  %.sroa.0570.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %spec.select, ptr %.sroa.0570.sroa.4.0..sroa_idx, align 8
  %.sroa.0570.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %spec.select705, ptr %.sroa.0570.sroa.5.0..sroa_idx, align 8
  %.sroa.4571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.5572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %.sink10.i.i, ptr %.sroa.5572.0..sroa_idx, align 8
  %i.tn = icmp eq i64 %.sink10.i.i, 0
  %i.to = inttoptr i64 %.sroa.0573.0.copyload to ptr ; 3 uses
  br i1 %i.tn, label %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAij1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph982

.lr.ph982:                                        ; preds = %.cont
  %.sink11.i389 = select i1 %i.tm, ptr %i.to, ptr %i.ae
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.4.0..sroa_idx.i410 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.52.0..sroa_idx.i411 = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.6.0..sroa_idx.i412 = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.7.0..sroa_idx.i413 = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %.sroa.8.0..sroa_idx.i414 = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %bb.cx

_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAij1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.df, %.cont
  br i1 %i.tm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i4.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterAij1_EECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i4.i: ; preds = %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAij1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.tr = shl nuw i64 %.sroa.6577.0.copyload, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.to, i64 noundef %i.tr, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !41981
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterAij1_EECs7tN9tvpkfrg_12typst_layout.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.de, %bb.cz, %bb.da
  %lpad.loopexit.split-lp2138 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.tm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i4.i398, label %.thread651

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i4.i398: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ts = shl nuw i64 %.sroa.6577.0.copyload, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.to, i64 noundef %i.ts, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !41982
  br label %.thread651

bb.cx:                                            ; preds = %.lr.ph982, %bb.df
  %i.tt = phi i64 [ 0, %.lr.ph982 ], [ %i.tu, %bb.df ] ; 2 uses
  %i.tu = add nuw i64 %i.tt, 1                    ; 3 uses
  store i64 %i.tu, ptr %.sroa.4571.0..sroa_idx, align 8
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i389, i64 %i.tt
  %i.tw = load i64, ptr %i.tv, align 8, !noundef !41 ; 8 uses
  %i.tx = icmp eq i64 %i.tw, 0
  br i1 %i.tx, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ty = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !41 ; 2 uses
  %.not224 = icmp ugt i64 %i.tw, %i.ty
  br i1 %.not224, label %bb.da, label %bb.db, !prof !44

bb.cz:                                            ; preds = %bb.cx, %bb.dd
  %.sroa.077.0 = phi double [ %spec.store.select15, %bb.dd ], [ %spec.store.select.i.i.i8.i, %bb.cx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke fastcc void @_RNvXsC_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_11FixedStrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.az)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cy
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.tw, i64 noundef %i.ty, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @618) #56
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.cy
  %i.tz = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %xtraiter2315 = and i64 %i.tw, 1
  %i.ua = icmp eq i64 %i.tw, 1
  br i1 %i.ua, label %.epil.preheader2314, label %.new2313

.new2313:                                         ; preds = %bb.db
  %unroll_iter2320 = and i64 %i.tw, -2
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %.new2313
  %.sroa.04.0.i.i.i.i401 = phi i64 [ 0, %.new2313 ], [ %i.uk, %bb.dc ] ; 3 uses
  %.sroa.02.0.i.i.i.i402 = phi double [ -0.000000e+00, %.new2313 ], [ %i.uj, %bb.dc ]
  %niter2321 = phi i64 [ 0, %.new2313 ], [ %niter2321.next.1, %bb.dc ]
  %i.ub = getelementptr inbounds nuw [16 x i8], ptr %i.tz, i64 %.sroa.04.0.i.i.i.i401
  %i.uc = load <2 x double>, ptr %i.ub, align 8
  %i.ud = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.uc) ; 2 uses
  %.inv.i.i.i.i.i.i405 = fcmp ord double %i.ud, 0.000000e+00
  %spec.store.select.i.i.i.i.i.i406 = select i1 %.inv.i.i.i.i.i.i405, double %i.ud, double 0.000000e+00
  %i.ue = fadd double %.sroa.02.0.i.i.i.i402, %spec.store.select.i.i.i.i.i.i406
  %i.uf = getelementptr inbounds nuw [16 x i8], ptr %i.tz, i64 %.sroa.04.0.i.i.i.i401
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uh = load <2 x double>, ptr %i.ug, align 8
  %i.ui = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.uh) ; 2 uses
  %.inv.i.i.i.i.i.i405.1 = fcmp ord double %i.ui, 0.000000e+00
  %spec.store.select.i.i.i.i.i.i406.1 = select i1 %.inv.i.i.i.i.i.i405.1, double %i.ui, double 0.000000e+00
  %i.uj = fadd double %i.ue, %spec.store.select.i.i.i.i.i.i406.1 ; 3 uses
  %i.uk = add nuw i64 %.sroa.04.0.i.i.i.i401, 2   ; 2 uses
  %niter2321.next.1 = add i64 %niter2321, 2       ; 2 uses
  %niter2321.ncmp.1 = icmp eq i64 %niter2321.next.1, %unroll_iter2320
  br i1 %niter2321.ncmp.1, label %.unr-lcssa, label %bb.dc

.unr-lcssa:                                       ; preds = %bb.dc
  %lcmp.mod2317.not = icmp eq i64 %xtraiter2315, 0
  br i1 %lcmp.mod2317.not, label %bb.dd, label %.epil.preheader2314

.epil.preheader2314:                              ; preds = %.unr-lcssa, %bb.db
  %.sroa.04.0.i.i.i.i401.epil.init = phi i64 [ 0, %bb.db ], [ %i.uk, %.unr-lcssa ]
  %.sroa.02.0.i.i.i.i402.epil.init = phi double [ -0.000000e+00, %bb.db ], [ %i.uj, %.unr-lcssa ]
  %lcmp.mod2319 = trunc i64 %i.tw to i1
  call void @llvm.assume(i1 %lcmp.mod2319)
  %i.ul = getelementptr inbounds nuw [16 x i8], ptr %i.tz, i64 %.sroa.04.0.i.i.i.i401.epil.init
  %i.um = load <2 x double>, ptr %i.ul, align 8
  %i.un = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.um) ; 2 uses
  %.inv.i.i.i.i.i.i405.epil = fcmp ord double %i.un, 0.000000e+00
  %spec.store.select.i.i.i.i.i.i406.epil = select i1 %.inv.i.i.i.i.i.i405.epil, double %i.un, double 0.000000e+00
  %i.uo = fadd double %.sroa.02.0.i.i.i.i402.epil.init, %spec.store.select.i.i.i.i.i.i406.epil
  br label %bb.dd

bb.dd:                                            ; preds = %.unr-lcssa, %.epil.preheader2314
  %.lcssa2139 = phi double [ %i.uj, %.unr-lcssa ], [ %i.uo, %.epil.preheader2314 ] ; 2 uses
  %.inv.i408 = fcmp ord double %.lcssa2139, 0.000000e+00
  %spec.store.select.i409 = select i1 %.inv.i408, double %.lcssa2139, double 0.000000e+00
  %i.up = add i64 %i.tw, -1
  %i.uq = sitofp i64 %i.up to double
  %i.ur = fmul double %spec.store.select.i.i.i8.i, %i.uq ; 2 uses
  %.inv225 = fcmp ord double %i.ur, 0.000000e+00
  %spec.store.select13 = select i1 %.inv225, double %i.ur, double 0.000000e+00
  %i.us = fadd double %spec.store.select13, %spec.store.select.i409 ; 2 uses
  %.inv226 = fcmp ord double %i.us, 0.000000e+00
  %spec.store.select14 = select i1 %.inv226, double %i.us, double 0.000000e+00
  %i.ut = fadd double %spec.store.select2, %spec.store.select14 ; 2 uses
  %.inv227 = fcmp ord double %i.ut, 0.000000e+00
  %spec.store.select15 = select i1 %.inv227, double %i.ut, double 0.000000e+00
  br label %bb.cz

bb.de:                                            ; preds = %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !41983)
  store i64 -9223372036854775808, ptr %i.tp, align 16, !alias.scope !41984
  store double %.sroa.0165.2, ptr %.sroa.4.0..sroa_idx.i410, align 8, !alias.scope !41984
  store double 0.000000e+00, ptr %.sroa.52.0..sroa_idx.i411, align 16, !alias.scope !41984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx.i412, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ac, i64 80, i1 false), !alias.scope !41985
  store i32 -1, ptr %.sroa.7.0..sroa_idx.i413, align 8, !alias.scope !41984
  store i8 0, ptr %.sroa.8.0..sroa_idx.i414, align 16, !alias.scope !41984
  store i64 %i.bj, ptr %i.tq, align 8, !alias.scope !41984
  store i64 2, ptr %i.ad, align 16, !alias.scope !41984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ao, double noundef 0.000000e+00, double noundef %.sroa.077.0, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(176) %i.ad)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.uu = icmp eq i64 %i.tu, %.sink10.i.i
  br i1 %i.uu, label %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAij1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.cx

bb.dg:                                            ; preds = %bb.da
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterAij1_EECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i4.i, %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAij1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store double %.sroa.0165.2, ptr %i.uv, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val257 = load i64, ptr %i.uw, align 8, !noundef !41 ; 2 uses
  %.not.i415 = icmp eq i64 %.val257, 0
  br i1 %.not.i415, label %bb.dh, label %bb.di, !prof !44

bb.dh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterAij1_EECs7tN9tvpkfrg_12typst_layout.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #52
          to label %.noexc416 unwind label %.thread665

.noexc416:                                        ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterAij1_EECs7tN9tvpkfrg_12typst_layout.exit
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ux, align 8, !nonnull !41, !noundef !41
  %i.uy = getelementptr [8 x i8], ptr %.val, i64 %.val257
  %i.uz = getelementptr i8, ptr %i.uy, i64 -8     ; 2 uses
  %i.va = load ptr, ptr %i.uz, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 184 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 192
  %i.vd = load atomic i32, ptr %i.vc acquire, align 4, !noalias !41986
  %i.ve = icmp eq i32 %i.vd, 0
  br i1 %i.ve, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.dj, !prof !43

bb.dj:                                            ; preds = %bb.di
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.vb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.uz)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit unwind label %.thread665

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.di, %bb.dj
  %i.vf = load ptr, ptr %i.vb, align 8, !nonnull !41, !noundef !41
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.vh = load double, ptr %i.vg, align 8, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
end_hunk_1
begin_hunk_2_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table:bb.a
  %.val258 = load i8, ptr %i.vo, align 1
  %i.vp = getelementptr inbounds nuw i8, ptr %3, i64 46
  %.val259 = load i8, ptr %i.vp, align 2
  invoke fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.ab, i8 %.val258, i8 %.val259, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.aa)
          to label %bb.dl unwind label %bb.by

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !41987)
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !41988
  call void @llvm.experimental.noalias.scope.decl(metadata !41989)
  call void @llvm.experimental.noalias.scope.decl(metadata !41990)
  %i.vr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.vr, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.ab, i64 104, i1 false), !alias.scope !41991, !noalias !41987
  store i64 2, ptr %i.o, align 16, !alias.scope !41992, !noalias !41988
  call void @llvm.experimental.noalias.scope.decl(metadata !41993)
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.vt = load i64, ptr %i.vs, align 8, !alias.scope !41994, !noundef !41 ; 3 uses
  %i.vu = load i64, ptr %i.vq, align 8, !range !45, !alias.scope !41994, !noundef !41
  %i.vv = icmp eq i64 %i.vt, %i.vu
  br i1 %i.vv, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vq)
          to label %bb.dp unwind label %bb.dn, !noalias !41995

bb.dn:                                            ; preds = %bb.dm
  %i.vw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.o) #53
          to label %.body500 unwind label %bb.do, !noalias !41996

bb.do:                                            ; preds = %bb.dn
  %i.vx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !41996
  unreachable

bb.dp:                                            ; preds = %bb.dm, %bb.dl
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.vz = load ptr, ptr %i.vy, align 8, !alias.scope !41994, !nonnull !41, !noundef !41
  %i.wa = getelementptr inbounds nuw [304 x i8], ptr %i.vz, i64 %i.vt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.wa, ptr noundef nonnull align 16 dereferenceable(304) %i.o, i64 304, i1 false), !noalias !41996
  %i.wb = add i64 %i.vt, 1
  store i64 %i.wb, ptr %i.vs, align 8, !alias.scope !41994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !41988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(128) %i.as)
          to label %bb.dq unwind label %bb.dr, !inline_history !0

bb.dq:                                            ; preds = %bb.dp
  %i.wc = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(128) %i.wc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEj2_ECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.dr, !inline_history !0

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEj2_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.val276 = load i64, ptr %i.at, align 8         ; 2 uses
  %i.wd = icmp eq i64 %.val276, 0
  br i1 %i.wd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit426, label %bb.du

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.we = phi i1 [ false, %bb.dp ], [ true, %bb.dq ]
  %i.wf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.we, label %.body424, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.wg = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(128) %i.wg) #53
          to label %.body424 unwind label %bb.dt, !inline_history !0

bb.dt:                                            ; preds = %bb.ds
  %i.wh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !inline_history !0
  unreachable

bb.du:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEj2_ECs7tN9tvpkfrg_12typst_layout.exit
  %.val277 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !41, !noundef !41
  %i.wi = shl nuw i64 %.val276, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val277, i64 noundef %i.wi, i64 noundef range(i64 1, -9223372036854775807) 8) #55
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit426

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit426: ; preds = %bb.du, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEj2_ECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.wj = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.wj)
          to label %bb.dw unwind label %bb.dv

bb.dv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit426
  %i.wk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wl = load i64, ptr %i.az, align 8, !range !70, !alias.scope !41997, !noundef !41 ; 2 uses
  %i.wm = icmp sgt i64 %i.wl, 0
  br i1 %i.wm, label %.body427.sink.split1916, label %.body427

bb.dw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit426
  call void @llvm.experimental.noalias.scope.decl(metadata !41998)
  %i.wn = load i64, ptr %i.az, align 8, !range !70, !alias.scope !41999, !noundef !41 ; 2 uses
  %i.wo = icmp sgt i64 %i.wn, 0
  br i1 %i.wo, label %bb.dx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit

bb.dx:                                            ; preds = %bb.dw
  %i.wp = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val1.i1.i = load ptr, ptr %i.wp, align 8, !alias.scope !41999, !nonnull !41, !noundef !41
  %i.wq = shl nuw i64 %i.wn, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1.i, i64 noundef %i.wq, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !42000
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit

.body427.sink.split1916:                          ; preds = %bb.gx, %bb.dv, %bb.ak
  %.sink1919 = phi i64 [ %i.fe, %bb.ak ], [ %i.agh, %bb.gx ], [ %i.wl, %bb.dv ]
  %.sroa.083.8.ph1917 = phi i8 [ %.sroa.083.0, %bb.ak ], [ 1, %bb.gx ], [ 0, %bb.dv ]
  %.pn249.ph1918 = phi { ptr, i32 } [ %.pn247, %bb.ak ], [ %i.agg, %bb.gx ], [ %i.wk, %bb.dv ]
  %i.wr = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val1.i1.i1394 = load ptr, ptr %i.wr, align 8, !nonnull !41, !noundef !41
  %i.ws = shl nuw i64 %.sink1919, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1.i1394, i64 noundef %i.ws, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !41
  br label %.body427

.body427:                                         ; preds = %.body427.sink.split1916, %bb.ak, %bb.gx, %bb.dv
  %.sroa.083.8 = phi i8 [ %.sroa.083.0, %bb.ak ], [ 0, %bb.dv ], [ 1, %bb.gx ], [ %.sroa.083.8.ph1917, %.body427.sink.split1916 ]
  %.pn249 = phi { ptr, i32 } [ %.pn247, %bb.ak ], [ %i.wk, %bb.dv ], [ %i.agg, %bb.gx ], [ %.pn249.ph1918, %.body427.sink.split1916 ] ; 3 uses
  %.val271 = load i64, ptr %.sroa.3105.0..sroa_idx106, align 8, !alias.scope !42001, !noundef !41 ; 2 uses
  %i.wt = icmp ugt i64 %.val271, 1
  br i1 %i.wt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i429, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i429: ; preds = %.body427
  %.val270 = load ptr, ptr %i.ba, align 8, !nonnull !41, !noundef !41
  %i.wu = shl nuw i64 %.val271, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val270, i64 noundef %i.wu, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !42002
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.dx, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %.val269 = load i64, ptr %.sroa.3105.0..sroa_idx106, align 8, !alias.scope !42001, !noundef !41 ; 2 uses
  %i.wv = icmp ugt i64 %.val269, 1
  br i1 %i.wv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i431, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit432

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i431: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit
  %.val268 = load ptr, ptr %i.ba, align 8, !nonnull !41, !noundef !41
  %i.ww = shl nuw i64 %.val269, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val268, i64 noundef %i.ww, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !42003
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit432

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i429, %.body427
  %i.wx = trunc nuw i8 %.sroa.083.8 to i1
  br i1 %i.wx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430.thread, label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit432: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i431, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.wy = load ptr, ptr %i.bh, align 8, !alias.scope !42004, !noundef !41
  %i.wz = icmp eq ptr %i.wy, null
  br i1 %i.wz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit286, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit286.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit286.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit432, %bb.l
  %.sroa.4.1.ph = phi i64 [ %.sroa.4.0, %bb.l ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit432 ]
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.0, %bb.l ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit432 ]
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit286

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit286: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit286.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit432, %bb.l
  %.sroa.4.1 = phi i64 [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit432 ], [ %.sroa.4.0, %bb.l ], [ %.sroa.4.1.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit286.sink.split ]
  %.sroa.0.1 = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit432 ], [ %.sroa.0.0, %bb.l ], [ %.sroa.0.1.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit286.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.xa = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.xb = insertvalue { ptr, i64 } %i.xa, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.xb

bb.dy:                                            ; preds = %bb.ck
  %i.xc = landingpad { ptr, i32 }
          cleanup
  br label %.thread678

.loopexit716:                                     ; preds = %.loopexit23.i, %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.0414665.i = phi i64 [ %.sroa.0.040.i, %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i ], [ %.sroa.0.0414664.i, %.loopexit23.i ] ; 5 uses
  %.sroa.10.0.i.i5063.i = phi ptr [ %i.qo, %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit.i ], [ %.sroa.10.0.i.i5062.i, %.loopexit23.i ] ; 3 uses
  %i.xd = icmp ult i64 %i.pm, 230584300921369396
  call void @llvm.assume(i1 %i.xd)
  %i.xe = getelementptr inbounds nuw [40 x i8], ptr %i.pl, i64 %i.pm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.pl, ptr %i.aj, align 8
  store ptr %i.pl, ptr %.sroa.059.sroa.0.sroa.4.0..sroa_idx, align 8
  store i64 %.sroa.0.0.copyload1.i, ptr %.sroa.059.sroa.0.sroa.5.0..sroa_idx, align 8
  store ptr %i.xe, ptr %.sroa.059.sroa.0.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8
  store ptr %i.at, ptr %.sroa.460.0..sroa_idx, align 8
  %i.xf = load i64, ptr %.sroa.3109.0..sroa_idx110, align 8, !alias.scope !42005, !noundef !41 ; 2 uses
  %i.xg = icmp ugt i64 %i.xf, 1                   ; 2 uses
  %i.xh = load ptr, ptr %i.bb, align 8, !alias.scope !42005, !nonnull !41
  %i.xi = load i64, ptr %.sroa.0108.sroa.3.0..sroa_idx119, align 8, !alias.scope !42005
  %.sink11.i434 = select i1 %i.xg, ptr %i.xh, ptr %i.bb ; 2 uses
  %.sink10.i435 = select i1 %i.xg, i64 %i.xi, i64 %i.xf ; 2 uses
  %i.xj = and i64 %.sink10.i435, 1152921504606846968 ; 3 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i434, i64 %i.xj ; 7 uses
  %.not.i4392102 = icmp eq i64 %i.xj, 0
  br i1 %.not.i4392102, label %._crit_edge2105, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i440

bb.dz:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i440
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4382104, i64 64
  %i.xm = add nsw i64 %.sroa.5.0.i4372103, -8     ; 2 uses
  %.not.i439 = icmp eq i64 %i.xm, 0
  br i1 %.not.i439, label %._crit_edge2105, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i440

._crit_edge2105:                                  ; preds = %bb.dz, %.loopexit716
  %i.xn = shl i64 %.sink10.i435, 3
  %.idx2130 = and i64 %i.xn, 56                   ; 7 uses
  %.not.not.not.i.not.not.i4502106 = icmp samesign eq i64 %.idx2130, 0
  br i1 %.not.not.not.i.not.not.i4502106, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %.lr.ph2108

36:                                               ; preds = %.lr.ph2108
  %.not.not.not.i.not.not.i450 = icmp samesign eq i64 %.idx2130, 8
  br i1 %.not.not.not.i.not.not.i450, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %.lr.ph2108.1

.lr.ph2108.1:                                     ; preds = %36
  %37 = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %.val2.i.i451.1 = load i64, ptr %37, align 8, !alias.scope !42006, !noalias !42007, !noundef !41
  %38 = icmp eq i64 %.val2.i.i451.1, 0
  br i1 %38, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %39

39:                                               ; preds = %.lr.ph2108.1
  %.not.not.not.i.not.not.i450.1 = icmp samesign eq i64 %.idx2130, 16
  br i1 %.not.not.not.i.not.not.i450.1, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %.lr.ph2108.2

.lr.ph2108.2:                                     ; preds = %39
  %40 = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %.val2.i.i451.2 = load i64, ptr %40, align 8, !alias.scope !42006, !noalias !42007, !noundef !41
  %41 = icmp eq i64 %.val2.i.i451.2, 0
  br i1 %41, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %42

42:                                               ; preds = %.lr.ph2108.2
  %.not.not.not.i.not.not.i450.2 = icmp samesign eq i64 %.idx2130, 24
  br i1 %.not.not.not.i.not.not.i450.2, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %.lr.ph2108.3

.lr.ph2108.3:                                     ; preds = %42
  %43 = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  %.val2.i.i451.3 = load i64, ptr %43, align 8, !alias.scope !42006, !noalias !42007, !noundef !41
  %44 = icmp eq i64 %.val2.i.i451.3, 0
  br i1 %44, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %45

45:                                               ; preds = %.lr.ph2108.3
  %.not.not.not.i.not.not.i450.3 = icmp samesign eq i64 %.idx2130, 32
  br i1 %.not.not.not.i.not.not.i450.3, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %.lr.ph2108.4

.lr.ph2108.4:                                     ; preds = %45
  %46 = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  %.val2.i.i451.4 = load i64, ptr %46, align 8, !alias.scope !42006, !noalias !42007, !noundef !41
  %47 = icmp eq i64 %.val2.i.i451.4, 0
  br i1 %47, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %48

48:                                               ; preds = %.lr.ph2108.4
  %.not.not.not.i.not.not.i450.4 = icmp samesign eq i64 %.idx2130, 40
  br i1 %.not.not.not.i.not.not.i450.4, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %bb.ea

bb.ea:                                            ; preds = %48
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xk, i64 40
  %.val2.i.i451.5 = load i64, ptr %i.xo, align 8, !alias.scope !42006, !noalias !42007, !noundef !41
  %.not.not.not.i.not.not.i450.a = icmp eq i64 %.val2.i.i451.5, 0
  br i1 %.not.not.not.i.not.not.i450.a, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %49

49:                                               ; preds = %bb.ea
  %.not.not.not.i.not.not.i450.5 = icmp samesign eq i64 %.idx2130, 48
  br i1 %.not.not.not.i.not.not.i450.5, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %.lr.ph2108.a

.lr.ph2108.a:                                     ; preds = %49
  %50 = getelementptr inbounds nuw i8, ptr %i.xk, i64 48
  %.val2.i.i451.a = load i64, ptr %50, align 8, !alias.scope !42006, !noalias !42007, !noundef !41
  %i.xp = icmp eq i64 %.val2.i.i451.a, 0
  br i1 %i.xp, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %51

51:                                               ; preds = %.lr.ph2108.a
  br label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452

.lr.ph2108:                                       ; preds = %._crit_edge2105
  %.val2.i.i451 = load i64, ptr %i.xk, align 8, !alias.scope !42006, !noalias !42007, !noundef !41
  %52 = icmp eq i64 %.val2.i.i451, 0
  br i1 %52, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %36

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i440: ; preds = %.loopexit716, %bb.dz
  %.sroa.0.05.i4382104 = phi ptr [ %i.xl, %bb.dz ], [ %.sink11.i434, %.loopexit716 ] ; 9 uses
  %.sroa.5.0.i4372103 = phi i64 [ %i.xm, %bb.dz ], [ %i.xj, %.loopexit716 ]
  %.val11.i.i441 = load i64, ptr %.sroa.0.05.i4382104, align 8, !alias.scope !42006, !noalias !42008, !noundef !41
  %i.xq = icmp eq i64 %.val11.i.i441, 0
  %i.xr = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4382104, i64 8
  %.val11.i.1.i442 = load i64, ptr %i.xr, align 8, !alias.scope !42006, !noalias !42008, !noundef !41
  %i.xs = icmp eq i64 %.val11.i.1.i442, 0
  %i.xt = or i1 %i.xq, %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4382104, i64 16
  %.val11.i.2.i443 = load i64, ptr %i.xu, align 8, !alias.scope !42006, !noalias !42008, !noundef !41
  %i.xv = icmp eq i64 %.val11.i.2.i443, 0
  %i.xw = or i1 %i.xt, %i.xv
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4382104, i64 24
  %.val11.i.3.i444 = load i64, ptr %i.xx, align 8, !alias.scope !42006, !noalias !42008, !noundef !41
  %i.xy = icmp eq i64 %.val11.i.3.i444, 0
  %i.xz = or i1 %i.xw, %i.xy
  %i.ya = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4382104, i64 32
  %.val11.i.4.i445 = load i64, ptr %i.ya, align 8, !alias.scope !42006, !noalias !42008, !noundef !41
  %i.yb = icmp eq i64 %.val11.i.4.i445, 0
  %i.yc = or i1 %i.xz, %i.yb
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4382104, i64 40
  %.val11.i.5.i446 = load i64, ptr %i.yd, align 8, !alias.scope !42006, !noalias !42008, !noundef !41
  %i.ye = icmp eq i64 %.val11.i.5.i446, 0
  %i.yf = or i1 %i.yc, %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4382104, i64 48
  %.val11.i.6.i447 = load i64, ptr %i.yg, align 8, !alias.scope !42006, !noalias !42008, !noundef !41
  %i.yh = icmp eq i64 %.val11.i.6.i447, 0
  %i.yi = or i1 %i.yf, %i.yh
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4382104, i64 56
  %.val11.i.7.i448 = load i64, ptr %i.yj, align 8, !alias.scope !42006, !noalias !42008, !noundef !41
  %i.yk = icmp eq i64 %.val11.i.7.i448, 0
  %i.yl = or i1 %i.yi, %i.yk
  br i1 %i.yl, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452, label %bb.dz

_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i440, %36, %.lr.ph2108, %.lr.ph2108.1, %39, %.lr.ph2108.2, %42, %.lr.ph2108.3, %45, %.lr.ph2108.4, %48, %bb.ea, %49, %.lr.ph2108.a, %51, %._crit_edge2105
  %53 = phi double [ 0.000000e+00, %._crit_edge2105 ], [ 0.000000e+00, %51 ], [ 0.000000e+00, %36 ], [ %spec.store.select.i.i.i8.i, %.lr.ph2108 ], [ %spec.store.select.i.i.i8.i, %.lr.ph2108.1 ], [ 0.000000e+00, %39 ], [ %spec.store.select.i.i.i8.i, %.lr.ph2108.2 ], [ 0.000000e+00, %42 ], [ %spec.store.select.i.i.i8.i, %.lr.ph2108.3 ], [ 0.000000e+00, %45 ], [ %spec.store.select.i.i.i8.i, %.lr.ph2108.4 ], [ 0.000000e+00, %48 ], [ %spec.store.select.i.i.i8.i, %bb.ea ], [ 0.000000e+00, %49 ], [ %spec.store.select.i.i.i8.i, %.lr.ph2108.a ], [ %spec.store.select.i.i.i8.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i440 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 %i.oe, ptr %i.n, align 1, !noalias !42009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !42009
  invoke fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run27cumulative_alignment_points(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.10.0.i.i5063.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.0.0414665.i)
          to label %bb.ed unwind label %bb.fn, !noalias !42010

bb.eb:                                            ; preds = %.body56.i
  call void @llvm.experimental.noalias.scope.decl(metadata !42011)
  %.val.i.i = load i64, ptr %i.m, align 8, !range !45, !alias.scope !42011, !noalias !42009, !noundef !41 ; 2 uses
  %i.ym = icmp eq i64 %.val.i.i, 0
  br i1 %i.ym, label %.body463, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.val1.i.i457 = load ptr, ptr %i.os, align 8, !alias.scope !42011, !noalias !42009, !nonnull !41, !noundef !41
  %i.yn = shl nuw i64 %.val.i.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i457, i64 noundef %i.yn, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !42012
  br label %.body463

bb.ed:                                            ; preds = %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !42009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !42009
  %i.yo = load double, ptr %i.oh, align 8, !noalias !42009, !noundef !41 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !42009
  %i.yp = load i64, ptr %i.oi, align 8, !noalias !42009, !noundef !41 ; 3 uses
  %i.yq = icmp ult i64 %i.yp, 1152921504606846976
  call void @llvm.assume(i1 %i.yq)
  %.not.i453 = icmp eq i64 %i.yp, 0               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !42009
  store i64 0, ptr %i.k, align 8, !noalias !42009
  store ptr inttoptr (i64 8 to ptr), ptr %i.oj, align 8, !noalias !42009
  store i64 0, ptr %i.ok, align 8, !noalias !42009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !42009
  store double 0.000000e+00, ptr %i.j, align 8, !noalias !42009
  store double %53, ptr %i.ol, align 8, !noalias !42009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !42009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.aj, i64 48, i1 false), !noalias !42013
  store ptr %i.m, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !noalias !42009
  store ptr %i.n, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !noalias !42009
  %i.yr = load ptr, ptr %i.on, align 8, !alias.scope !42014, !noalias !42009, !nonnull !41, !noundef !41 ; 4 uses
  %.promoted.i = load ptr, ptr %i.oo, align 8, !alias.scope !42014, !noalias !42009 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !42009
  %i.ys = icmp eq ptr %.promoted.i, %i.yr
  br i1 %i.ys, label %bb.es, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i.i.lr.ph.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i.i.lr.ph.i: ; preds = %bb.ed
  %.val.i.i.i.i454 = load ptr, ptr %i.oq, align 8, !noalias !42009, !nonnull !41, !align !46 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i454, i64 16 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i454, i64 8 ; 2 uses
  %.promoted126.i = load i64, ptr %i.op, align 8, !noalias !42009 ; 6 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 40 ; 9 uses
  %.sroa.0.0.copyload1.i.i.i.i.peel.i = load i64, ptr %.promoted.i, align 8, !noalias !42015 ; 2 uses
  %.not.i.i.i.i.peel.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.peel.i, -1
  br i1 %.not.i.i.i.i.peel.i, label %.sink.split.i, label %bb.ee

bb.ee:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i.i.lr.ph.i
  %.sroa.7.0..sroa_idx2.i.i.i.i.peel.i = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !42016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx2.i.i.i.i.peel.i, i64 32, i1 false), !noalias !42016
  %i.yw = add i64 %.promoted126.i, 1              ; 7 uses
  store i64 %.promoted126.i, ptr %i.d, align 8, !noalias !42016
  store i64 %.sroa.0.0.copyload1.i.i.i.i.peel.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !42016
  call void @llvm.experimental.noalias.scope.decl(metadata !42017)
  %i.yx = load i64, ptr %i.yt, align 8, !noalias !42018, !noundef !41 ; 2 uses
  %i.yy = icmp ult i64 %.promoted126.i, %i.yx
  br i1 %i.yy, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENCNvB2i_12layout_tables2_0ENCINvNtB2k_3run10stack_rowsBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_.exit.i.peel.i, label %.loopexit.i455

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENCNvB2i_12layout_tables2_0ENCINvNtB2k_3run10stack_rowsBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_.exit.i.peel.i: ; preds = %bb.ee
  %i.yz = load ptr, ptr %i.yu, align 8, !noalias !42018, !nonnull !41, !noundef !41
  %i.za = getelementptr inbounds nuw [16 x i8], ptr %i.yz, i64 %.promoted126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !42019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !42019
  %i.zb = load <2 x double>, ptr %i.or, align 8, !alias.scope !42017, !noalias !42016 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !42016
  store i64 1, ptr %i.e, align 8, !noalias !42019
  %i.zc = load <2 x double>, ptr %i.za, align 8, !noalias !42018 ; 4 uses
  store <2 x double> %i.zc, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !42019
  store <2 x double> %i.zb, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !noalias !42019
  %i.zd = load ptr, ptr %i.os, align 8, !noalias !42020, !nonnull !41, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !42020
  store <2 x double> %i.zb, ptr %i.ot, align 8, !noalias !42020
  store i64 1, ptr %i.c, align 8, !noalias !42020
  invoke fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run19row_into_line_frame(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.64.0..sroa_idx.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.zd, i64 noundef %i.yp, i8 noundef range(i8 0, 3) %i.oe, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %.noexc.peel.i unwind label %.loopexit.split-lp.i, !noalias !42009

.noexc.peel.i:                                    ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENCNvB2i_12layout_tables2_0ENCINvNtB2k_3run10stack_rowsBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_.exit.i.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !42019
  %.sroa.0.0.copyload1.i.peel.i = load i64, ptr %i.f, align 8, !noalias !42021 ; 3 uses
  %.not.i.peel.i = icmp eq i64 %.sroa.0.0.copyload1.i.peel.i, 2
  br i1 %.not.i.peel.i, label %.sink.split.i, label %bb.ef

bb.ef:                                            ; preds = %.noexc.peel.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %i.om, i64 40, i1 false), !noalias !42022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !42009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !42009
  store i64 %.sroa.0.0.copyload1.i.peel.i, ptr %i.h, align 8, !noalias !42009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false), !noalias !42009
  %.pre.i = load double, ptr %i.ol, align 8, !noalias !42009
  %i.ze = extractelement <2 x double> %i.zc, i64 0
  %i.zf = fadd double %i.ze, %.pre.i              ; 2 uses
  %.inv47.peel.i = fcmp ord double %i.zf, 0.000000e+00
  %spec.store.select.peel.i = select i1 %.inv47.peel.i, double %i.zf, double 0.000000e+00
  %i.zg = load double, ptr %i.ov, align 8, !noalias !42009, !noundef !41
  %i.zh = trunc nuw i64 %.sroa.0.0.copyload1.i.peel.i to i1
  %i.zi = load double, ptr %.sroa.9.8..sroa_idx.i, align 8, !noalias !42009
  %.sroa.043.0.peel.i = select i1 %i.zh, double %i.zi, double %i.zg ; 2 uses
  %i.zj = fneg double %.sroa.043.0.peel.i
  %i.zk = fcmp uno double %.sroa.043.0.peel.i, 0.000000e+00
  %spec.store.select2.peel.i = select i1 %i.zk, double 0.000000e+00, double %i.zj
  %i.zl = fadd double %spec.store.select.peel.i, %spec.store.select2.peel.i ; 2 uses
  %.inv48.peel.i = fcmp ord double %i.zl, 0.000000e+00
  %spec.store.select3.peel.i = select i1 %.inv48.peel.i, double %i.zl, double 0.000000e+00
  %.pre188.i = load double, ptr %i.ou, align 8, !noalias !42009 ; 3 uses
  br i1 %.not.i453, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.zm = fneg double %.pre188.i
  %i.zn = fcmp uno double %.pre188.i, 0.000000e+00
  %spec.store.select4.peel.i = select i1 %i.zn, double 0.000000e+00, double %i.zm
  %i.zo = fadd double %i.yo, %spec.store.select4.peel.i ; 2 uses
  %.inv49.peel.i = fcmp ord double %i.zo, 0.000000e+00
  %spec.store.select5.peel.i = select i1 %.inv49.peel.i, double %i.zo, double 0.000000e+00 ; 2 uses
  switch i8 %i.og, label %default.unreachable1766 [
    i8 0, label %bb.ei
    i8 1, label %bb.eh
    i8 2, label %bb.ej
  ]

bb.eh:                                            ; preds = %bb.eg
  %i.zp = fmul nnan double %spec.store.select5.peel.i, 5.000000e-01
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ef
  %.sroa.09.0.peel.i = phi double [ 0.000000e+00, %bb.ef ], [ 0.000000e+00, %bb.ei ], [ %i.zp, %bb.eh ], [ %spec.store.select5.peel.i, %bb.eg ]
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, double noundef %.pre188.i)
          to label %bb.ek unwind label %.loopexit.split-lp179.i, !noalias !42009

bb.ek:                                            ; preds = %bb.ej
  %shift = shufflevector <2 x double> %i.zc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.zc, %shift
  %i.zq = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %.inv50.peel.i = fcmp ord double %i.zq, 0.000000e+00
  %spec.store.select7.peel.i = select i1 %.inv50.peel.i, double %i.zq, double 0.000000e+00
  %i.zr = load double, ptr %i.ol, align 8, !noalias !42009, !noundef !41
  %i.zs = fadd double %spec.store.select7.peel.i, %i.zr ; 2 uses
  %.inv51.peel.i = fcmp ord double %i.zs, 0.000000e+00
  %spec.store.select8.peel.i = select i1 %.inv51.peel.i, double %i.zs, double 0.000000e+00
  store double %spec.store.select8.peel.i, ptr %i.ol, align 8, !noalias !42009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !42009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !42009
  store double %.sroa.09.0.peel.i, ptr %i.ow, align 8, !noalias !42009
  store double %spec.store.select3.peel.i, ptr %i.ox, align 8, !noalias !42009
  call void @llvm.experimental.noalias.scope.decl(metadata !42023)
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtBR_5point5PointEE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.el unwind label %.loopexit.split-lp184.i, !noalias !42024

bb.el:                                            ; preds = %bb.ek
  %.pre191.i = load ptr, ptr %i.oj, align 8, !alias.scope !42023, !noalias !42009 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.pre191.i, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !42025
  store i64 1, ptr %i.ok, align 8, !alias.scope !42023, !noalias !42009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !42009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !42009
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !42009
  %i.zt = icmp eq ptr %i.yv, %i.yr
  br i1 %i.zt, label %.sink.split.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i.i.i: ; preds = %bb.el, %bb.fj
  %i.zu = phi ptr [ %i.acb, %bb.fj ], [ %.pre191.i, %bb.el ] ; 3 uses
  %i.zv = phi i64 [ %i.aal, %bb.fj ], [ 1, %bb.el ] ; 8 uses
  %i.zw = phi i64 [ %i.zz, %bb.fj ], [ %i.yw, %bb.el ] ; 6 uses
  %i.zx = phi ptr [ %i.zy, %bb.fj ], [ %i.yv, %bb.el ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42026)
  call void @llvm.experimental.noalias.scope.decl(metadata !42027)
  call void @llvm.experimental.noalias.scope.decl(metadata !42028)
  call void @llvm.experimental.noalias.scope.decl(metadata !42029)
  call void @llvm.experimental.noalias.scope.decl(metadata !42030)
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 40 ; 9 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.zx, align 8, !noalias !42031 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %.sink.split.i, label %bb.em

bb.em:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i.i.i
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !42032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx2.i.i.i.i.i, i64 32, i1 false), !noalias !42032
  %i.zz = add i64 %i.zw, 1                        ; 7 uses
  store i64 %i.zw, ptr %i.d, align 8, !noalias !42032
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !42032
  call void @llvm.experimental.noalias.scope.decl(metadata !42033)
  %i.aaa = load i64, ptr %i.yt, align 8, !noalias !42034, !noundef !41 ; 2 uses
  %i.aab = icmp ult i64 %i.zw, %i.aaa
  br i1 %i.aab, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENCNvB2i_12layout_tables2_0ENCINvNtB2k_3run10stack_rowsBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_.exit.i.i, label %.loopexit.i455

.loopexit.i455:                                   ; preds = %bb.ee, %bb.em
  %.lcssa165.i = phi i64 [ %i.zz, %bb.em ], [ %i.yw, %bb.ee ]
  %.lcssa158.i = phi i64 [ %i.aaa, %bb.em ], [ %i.yx, %bb.ee ]
  %.lcssa151.i = phi i64 [ %i.zw, %bb.em ], [ %.promoted126.i, %bb.ee ]
  %.lcssa143.i = phi i64 [ %i.zv, %bb.em ], [ 0, %bb.ee ]
  %.lcssa135.i = phi ptr [ %i.zy, %bb.em ], [ %i.yv, %bb.ee ]
  store i64 %.lcssa165.i, ptr %i.op, align 8, !noalias !42009
  store ptr %.lcssa135.i, ptr %i.oo, align 8, !noalias !42009
  store i64 %.lcssa143.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !42009
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa151.i, i64 noundef %.lcssa158.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #56
          to label %bb.eo unwind label %bb.en, !noalias !42034

bb.en:                                            ; preds = %.loopexit.i455
  %i.aac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %.sroa.43.0..sroa_idx.i.i.i.i) #53
          to label %.body.i456 unwind label %bb.ep, !noalias !42035

bb.eo:                                            ; preds = %.loopexit.i455
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.aad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !42034
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENCNvB2i_12layout_tables2_0ENCINvNtB2k_3run10stack_rowsBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2m_.exit.i.i: ; preds = %bb.em
  %i.aae = load ptr, ptr %i.yu, align 8, !noalias !42034, !nonnull !41, !noundef !41
  %i.aaf = getelementptr inbounds nuw [16 x i8], ptr %i.aae, i64 %i.zw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !42036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.64.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !42036
  %i.aag = load <2 x double>, ptr %i.or, align 8, !alias.scope !42033, !noalias !42032 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !42032
  store i64 1, ptr %i.e, align 8, !noalias !42036
end_hunk_2
begin_hunk_3_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table:bb.a
  %i.abt = fadd double %spec.store.select7.i, %i.abs ; 2 uses
  %.inv51.i = fcmp ord double %i.abt, 0.000000e+00
  %spec.store.select8.i = select i1 %.inv51.i, double %i.abt, double 0.000000e+00
  store double %spec.store.select8.i, ptr %i.ol, align 8, !noalias !42009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !42009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !42009
  store double %.sroa.09.0.i, ptr %i.ow, align 8, !noalias !42009
  store double %spec.store.select3.i, ptr %i.ox, align 8, !noalias !42009
  call void @llvm.experimental.noalias.scope.decl(metadata !42051)
  call void @llvm.experimental.noalias.scope.decl(metadata !42052)
  %i.abu = load i64, ptr %i.k, align 8, !range !45, !alias.scope !42051, !noalias !42009, !noundef !41
  %i.abv = icmp eq i64 %i.zv, %i.abu
  br i1 %i.abv, label %bb.ff, label %bb.fj

bb.ff:                                            ; preds = %bb.fe
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtBR_5point5PointEE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %._crit_edge194.i unwind label %.loopexit183.i, !noalias !42053

._crit_edge194.i:                                 ; preds = %bb.ff
  %.pre195.i = load ptr, ptr %i.oj, align 8, !alias.scope !42051, !noalias !42009
  br label %bb.fj

.loopexit183.i:                                   ; preds = %bb.ff
  %lpad.loopexit185.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

.loopexit.split-lp184.i:                          ; preds = %bb.ek
  %lpad.loopexit.split-lp186.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fg:                                            ; preds = %.loopexit.split-lp184.i, %.loopexit183.i
  %.lcssa174.i = phi i64 [ %i.aal, %.loopexit183.i ], [ 1, %.loopexit.split-lp184.i ]
  %.lcssa170.i = phi i64 [ %i.zz, %.loopexit183.i ], [ %i.yw, %.loopexit.split-lp184.i ]
  %.lcssa140.i = phi ptr [ %i.zy, %.loopexit183.i ], [ %i.yv, %.loopexit.split-lp184.i ]
  %lpad.phi187.i = phi { ptr, i32 } [ %lpad.loopexit185.i, %.loopexit183.i ], [ %lpad.loopexit.split-lp186.i, %.loopexit.split-lp184.i ] ; 2 uses
  store i64 %.lcssa170.i, ptr %i.op, align 8, !noalias !42009
  store ptr %.lcssa140.i, ptr %i.oo, align 8, !noalias !42009
  store i64 %.lcssa174.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !42009
  call void @llvm.experimental.noalias.scope.decl(metadata !42054)
  call void @llvm.experimental.noalias.scope.decl(metadata !42055)
  %i.abw = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42056)
  call void @llvm.experimental.noalias.scope.decl(metadata !42057)
  %i.abx = load ptr, ptr %i.abw, align 8, !alias.scope !42058, !noalias !42009, !nonnull !41, !noundef !41
  %i.aby = atomicrmw add ptr %i.abx, i64 -1 release, align 8, !noalias !42059
  %i.abz = icmp eq i64 %i.aby, 1
  br i1 %i.abz, label %bb.fh, label %.body.i456

bb.fh:                                            ; preds = %bb.fg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.abw) #57
          to label %.body.i456 unwind label %bb.fi, !noalias !42060

bb.fi:                                            ; preds = %bb.fh
  %i.aca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !42060
  unreachable

bb.fj:                                            ; preds = %._crit_edge194.i, %bb.fe
  %i.acb = phi ptr [ %.pre195.i, %._crit_edge194.i ], [ %i.zu, %bb.fe ] ; 3 uses
  %i.acc = getelementptr inbounds nuw [64 x i8], ptr %i.acb, i64 %i.zv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.acc, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !42060
  store i64 %i.aal, ptr %i.ok, align 8, !alias.scope !42051, !noalias !42009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !42009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !42009
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !42009
  %i.acd = icmp eq ptr %i.zy, %i.yr
  br i1 %i.acd, label %.sink.split.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i.i.i, !llvm.loop !41862

.loopexit178.i:                                   ; preds = %bb.fb
  %lpad.loopexit180.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

.loopexit.split-lp179.i:                          ; preds = %bb.ej
  %lpad.loopexit.split-lp181.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fk:                                            ; preds = %.loopexit.split-lp179.i, %.loopexit178.i
  %.lcssa173.i = phi i64 [ %i.aal, %.loopexit178.i ], [ 1, %.loopexit.split-lp179.i ]
  %.lcssa169.i = phi i64 [ %i.zz, %.loopexit178.i ], [ %i.yw, %.loopexit.split-lp179.i ]
  %.lcssa139.i = phi ptr [ %i.zy, %.loopexit178.i ], [ %i.yv, %.loopexit.split-lp179.i ]
  %lpad.phi182.i = phi { ptr, i32 } [ %lpad.loopexit180.i, %.loopexit178.i ], [ %lpad.loopexit.split-lp181.i, %.loopexit.split-lp179.i ] ; 2 uses
  store i64 %.lcssa169.i, ptr %i.op, align 8, !noalias !42009
  store ptr %.lcssa139.i, ptr %i.oo, align 8, !noalias !42009
  store i64 %.lcssa173.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !42009
  call void @llvm.experimental.noalias.scope.decl(metadata !42061)
  %i.ace = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42062)
  call void @llvm.experimental.noalias.scope.decl(metadata !42063)
  %i.acf = load ptr, ptr %i.ace, align 8, !alias.scope !42064, !noalias !42009, !nonnull !41, !noundef !41
  %i.acg = atomicrmw add ptr %i.acf, i64 -1 release, align 8, !noalias !42065
  %i.ach = icmp eq i64 %i.acg, 1
  br i1 %i.ach, label %bb.fl, label %.body.i456

bb.fl:                                            ; preds = %bb.fk
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ace) #57
          to label %.body.i456 unwind label %bb.fm, !noalias !42009

bb.fm:                                            ; preds = %bb.fn, %bb.fl, %.body56.i, %.body.i456
  %i.aci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !42009
  unreachable

bb.fn:                                            ; preds = %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit452
  %i.acj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENCNvB2r_12layout_tables2_0EEB2v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.aj) #53
          to label %.body463 unwind label %bb.fm, !noalias !42013

bb.fo:                                            ; preds = %bb.ex, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3map3MapIB1m_IBC_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENCNvB2A_12layout_tables2_0ENCINvNtB2C_3run10stack_rowsB1B_E0EEEB2E_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !42009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4557.0.copyload) ]
  %i.ack = icmp ult i64 %.sroa.5558.0.copyload, 144115188075855872
  call void @llvm.assume(i1 %i.ack)
  %.idx987 = shl nuw nsw i64 %.sroa.5558.0.copyload, 6
  %i.acl = getelementptr inbounds nuw i8, ptr %.sroa.4557.0.copyload, i64 %.idx987 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %.sroa.4557.0.copyload, ptr %i.ai, align 8
  store ptr %.sroa.4557.0.copyload, ptr %.sroa.469.0..sroa_idx, align 8
  store i64 %.sroa.0556.0.copyload, ptr %.sroa.570.0..sroa_idx, align 8
  store ptr %i.acl, ptr %.sroa.671.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7565)
  %i.acm = icmp eq i64 %.sroa.5558.0.copyload, 0
  br i1 %i.acm, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB11_5point5PointEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB11_5point5PointEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit

bb.fp:                                            ; preds = %bb.fq
  %i.acn = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aco, ptr %.sroa.469.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB1u_5point5PointEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai) #53
          to label %.body463 unwind label %bb.ah

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB11_5point5PointEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.fo, %bb.fz
  %.sroa.4557.8.562974 = phi ptr [ %i.aco, %bb.fz ], [ %.sroa.4557.0.copyload, %bb.fo ] ; 5 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.sroa.4557.8.562974, i64 64 ; 5 uses
  %.sroa.0563.0.copyload = load i64, ptr %.sroa.4557.8.562974, align 8, !noalias !42066 ; 2 uses
  %.sroa.7565.0..sroa.4557.8.562.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4557.8.562974, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7565, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7565.0..sroa.4557.8.562.sroa_idx, i64 40, i1 false), !noalias !42066
  %.not230 = icmp eq i64 %.sroa.0563.0.copyload, 2
  br i1 %.not230, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB11_5point5PointEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread, label %bb.fq

bb.fq:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB11_5point5PointEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.8567.0..sroa.4557.8.562.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4557.8.562974, i64 56
  %.sroa.8567.0.copyload = load double, ptr %.sroa.8567.0..sroa.4557.8.562.sroa_idx, align 8, !noalias !42066
  %.sroa.7566.0..sroa.4557.8.562.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4557.8.562974, i64 48
  %.sroa.7566.0.copyload = load double, ptr %.sroa.7566.0..sroa.4557.8.562.sroa_idx, align 8, !noalias !42066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.0563.0.copyload, ptr %i.ah, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7565.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7565, i64 40, i1 false)
  %i.acp = fadd double %.sroa.0165.1976, %.sroa.7566.0.copyload ; 2 uses
  %.inv234 = fcmp ord double %i.acp, 0.000000e+00
  %spec.store.select18 = select i1 %.inv234, double %i.acp, double 0.000000e+00
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ao, double noundef %spec.store.select18, double noundef %.sroa.8567.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ah)
          to label %bb.fz unwind label %bb.fp

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB11_5point5PointEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB11_5point5PointEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit, %bb.fz, %bb.fo
  %i.acq = phi ptr [ %.sroa.4557.0.copyload, %bb.fo ], [ %i.aco, %bb.fz ], [ %i.aco, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB11_5point5PointEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit ]
  store ptr %i.acq, ptr %.sroa.469.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7565)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB1u_5point5PointEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai)
          to label %bb.ft unwind label %bb.fs

.body463:                                         ; preds = %bb.fn, %bb.ec, %bb.eb, %bb.fs, %bb.fp
  %.pn235 = phi { ptr, i32 } [ %i.acn, %bb.fp ], [ %i.act, %bb.fs ], [ %.pn.pn.i, %bb.eb ], [ %i.acj, %bb.fn ], [ %.pn.pn.i, %bb.ec ] ; 2 uses
  %i.acr = icmp eq i64 %.sroa.0.0414665.i, 0
  br i1 %i.acr, label %bb.ce, label %bb.fr

bb.fr:                                            ; preds = %.body463
  %i.acs = shl nuw nsw i64 %.sroa.0.0414665.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i5063.i, i64 noundef %i.acs, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !42067
  br label %bb.ce

bb.fs:                                            ; preds = %bb.fx, %.loopexit712, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB11_5point5PointEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread
  %i.act = landingpad { ptr, i32 }
          cleanup
  br label %.body463

bb.ft:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB11_5point5PointEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.acu = fadd double %.sroa.0165.1976, %i.aba   ; 2 uses
  %.inv231 = fcmp ord double %i.acu, 0.000000e+00
  %spec.store.select19 = select i1 %.inv231, double %i.acu, double 0.000000e+00 ; 2 uses
  %i.acv = load i64, ptr %.sroa.3105.0..sroa_idx106, align 8, !alias.scope !42068, !noundef !41 ; 2 uses
  %i.acw = icmp ugt i64 %i.acv, 1                 ; 2 uses
  %i.acx = load ptr, ptr %i.ba, align 8, !alias.scope !42068, !nonnull !41
  %i.acy = load i64, ptr %.sroa.0104.sroa.3.0..sroa_idx122, align 8, !alias.scope !42068
  %.sink11.i467 = select i1 %i.acw, ptr %i.acx, ptr %i.ba ; 2 uses
  %.sink10.i468 = select i1 %i.acw, i64 %i.acy, i64 %i.acv ; 2 uses
  %i.acz = and i64 %.sink10.i468, 1152921504606846968 ; 3 uses
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i467, i64 %i.acz ; 7 uses
  %.not.i4722111 = icmp eq i64 %i.acz, 0
  br i1 %.not.i4722111, label %._crit_edge2114, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i473

bb.fu:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i473
  %i.adb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4712113, i64 64
  %i.adc = add nsw i64 %.sroa.5.0.i4702112, -8    ; 2 uses
  %.not.i472 = icmp eq i64 %i.adc, 0
  br i1 %.not.i472, label %._crit_edge2114, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i473

._crit_edge2114:                                  ; preds = %bb.fu, %bb.ft
  %i.add = shl i64 %.sink10.i468, 3
  %.idx2131 = and i64 %i.add, 56                  ; 7 uses
  %.not.not.not.i.not.not.i4832115 = icmp samesign eq i64 %.idx2131, 0
  br i1 %.not.not.not.i.not.not.i4832115, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit485, label %.lr.ph2117

54:                                               ; preds = %.lr.ph2117
  %.not.not.not.i.not.not.i483 = icmp samesign eq i64 %.idx2131, 8
  br i1 %.not.not.not.i.not.not.i483, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit485, label %.lr.ph2117.1

.lr.ph2117.1:                                     ; preds = %54
  %55 = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  %.val2.i.i484.1 = load i64, ptr %55, align 8, !alias.scope !42069, !noalias !42070, !noundef !41
  %56 = icmp eq i64 %.val2.i.i484.1, %i.pk
  br i1 %56, label %.loopexit712, label %57

57:                                               ; preds = %.lr.ph2117.1
  %.not.not.not.i.not.not.i483.1 = icmp samesign eq i64 %.idx2131, 16
  br i1 %.not.not.not.i.not.not.i483.1, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit485, label %.lr.ph2117.2

.lr.ph2117.2:                                     ; preds = %57
  %58 = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  %.val2.i.i484.2 = load i64, ptr %58, align 8, !alias.scope !42069, !noalias !42070, !noundef !41
  %59 = icmp eq i64 %.val2.i.i484.2, %i.pk
  br i1 %59, label %.loopexit712, label %60

60:                                               ; preds = %.lr.ph2117.2
  %.not.not.not.i.not.not.i483.2 = icmp samesign eq i64 %.idx2131, 24
  br i1 %.not.not.not.i.not.not.i483.2, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit485, label %.lr.ph2117.3

.lr.ph2117.3:                                     ; preds = %60
  %61 = getelementptr inbounds nuw i8, ptr %i.ada, i64 24
  %.val2.i.i484.3 = load i64, ptr %61, align 8, !alias.scope !42069, !noalias !42070, !noundef !41
  %62 = icmp eq i64 %.val2.i.i484.3, %i.pk
  br i1 %62, label %.loopexit712, label %63

63:                                               ; preds = %.lr.ph2117.3
  %.not.not.not.i.not.not.i483.3 = icmp samesign eq i64 %.idx2131, 32
  br i1 %.not.not.not.i.not.not.i483.3, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit485, label %.lr.ph2117.4

.lr.ph2117.4:                                     ; preds = %63
  %64 = getelementptr inbounds nuw i8, ptr %i.ada, i64 32
  %.val2.i.i484.4 = load i64, ptr %64, align 8, !alias.scope !42069, !noalias !42070, !noundef !41
  %65 = icmp eq i64 %.val2.i.i484.4, %i.pk
  br i1 %65, label %.loopexit712, label %66

66:                                               ; preds = %.lr.ph2117.4
  %.not.not.not.i.not.not.i483.4 = icmp samesign eq i64 %.idx2131, 40
  br i1 %.not.not.not.i.not.not.i483.4, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit485, label %bb.fv

bb.fv:                                            ; preds = %66
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ada, i64 40
  %.val2.i.i484.5 = load i64, ptr %i.ade, align 8, !alias.scope !42069, !noalias !42070, !noundef !41
  %.not.not.not.i.not.not.i483.a = icmp eq i64 %.val2.i.i484.5, %i.pk
  br i1 %.not.not.not.i.not.not.i483.a, label %.loopexit712, label %67

67:                                               ; preds = %bb.fv
  %.not.not.not.i.not.not.i483.5 = icmp samesign eq i64 %.idx2131, 48
  br i1 %.not.not.not.i.not.not.i483.5, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit485, label %.lr.ph2117.a

.lr.ph2117.a:                                     ; preds = %67
  %68 = getelementptr inbounds nuw i8, ptr %i.ada, i64 48
  %.val2.i.i484.a = load i64, ptr %68, align 8, !alias.scope !42069, !noalias !42070, !noundef !41
  %i.adf = icmp eq i64 %.val2.i.i484.a, %i.pk
  br i1 %i.adf, label %.loopexit712, label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit485

.lr.ph2117:                                       ; preds = %._crit_edge2114
  %.val2.i.i484 = load i64, ptr %i.ada, align 8, !alias.scope !42069, !noalias !42070, !noundef !41
  %69 = icmp eq i64 %.val2.i.i484, %i.pk
  br i1 %69, label %.loopexit712, label %54

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i473: ; preds = %bb.ft, %bb.fu
  %.sroa.0.05.i4712113 = phi ptr [ %i.adb, %bb.fu ], [ %.sink11.i467, %bb.ft ] ; 9 uses
  %.sroa.5.0.i4702112 = phi i64 [ %i.adc, %bb.fu ], [ %i.acz, %bb.ft ]
  %.val11.i.i474 = load i64, ptr %.sroa.0.05.i4712113, align 8, !alias.scope !42069, !noalias !42071, !noundef !41
  %i.adg = icmp eq i64 %.val11.i.i474, %i.pk
  %i.adh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4712113, i64 8
  %.val11.i.1.i475 = load i64, ptr %i.adh, align 8, !alias.scope !42069, !noalias !42071, !noundef !41
  %i.adi = icmp eq i64 %.val11.i.1.i475, %i.pk
  %i.adj = or i1 %i.adg, %i.adi
  %i.adk = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4712113, i64 16
  %.val11.i.2.i476 = load i64, ptr %i.adk, align 8, !alias.scope !42069, !noalias !42071, !noundef !41
  %i.adl = icmp eq i64 %.val11.i.2.i476, %i.pk
  %i.adm = or i1 %i.adj, %i.adl
  %i.adn = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4712113, i64 24
  %.val11.i.3.i477 = load i64, ptr %i.adn, align 8, !alias.scope !42069, !noalias !42071, !noundef !41
  %i.ado = icmp eq i64 %.val11.i.3.i477, %i.pk
  %i.adp = or i1 %i.adm, %i.ado
  %i.adq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4712113, i64 32
  %.val11.i.4.i478 = load i64, ptr %i.adq, align 8, !alias.scope !42069, !noalias !42071, !noundef !41
  %i.adr = icmp eq i64 %.val11.i.4.i478, %i.pk
  %i.ads = or i1 %i.adp, %i.adr
  %i.adt = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4712113, i64 40
  %.val11.i.5.i479 = load i64, ptr %i.adt, align 8, !alias.scope !42069, !noalias !42071, !noundef !41
  %i.adu = icmp eq i64 %.val11.i.5.i479, %i.pk
  %i.adv = or i1 %i.ads, %i.adu
  %i.adw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4712113, i64 48
  %.val11.i.6.i480 = load i64, ptr %i.adw, align 8, !alias.scope !42069, !noalias !42071, !noundef !41
  %i.adx = icmp eq i64 %.val11.i.6.i480, %i.pk
  %i.ady = or i1 %i.adv, %i.adx
  %i.adz = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i4712113, i64 56
  %.val11.i.7.i481 = load i64, ptr %i.adz, align 8, !alias.scope !42069, !noalias !42071, !noundef !41
  %i.aea = icmp eq i64 %.val11.i.7.i481, %i.pk
  %i.aeb = or i1 %i.ady, %i.aea
  br i1 %i.aeb, label %.loopexit712, label %bb.fu

.loopexit712:                                     ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteriENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpiNtB1L_13SliceContains14slice_contains0ECs7tN9tvpkfrg_12typst_layout.exit.i473, %.lr.ph2117, %.lr.ph2117.1, %.lr.ph2117.2, %.lr.ph2117.3, %.lr.ph2117.4, %bb.fv, %.lr.ph2117.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke fastcc void @_RNvXsC_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_11FixedStrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.az)
          to label %bb.fx unwind label %bb.fs

_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit485: ; preds = %54, %57, %60, %63, %66, %67, %.lr.ph2117.a, %._crit_edge2114, %bb.fy
  %i.aec = icmp eq i64 %.sroa.0.0414665.i, 0
  br i1 %i.aec, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit488, label %bb.fw

bb.fw:                                            ; preds = %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit485
  %i.aed = shl nuw nsw i64 %.sroa.0.0414665.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i5063.i, i64 noundef %i.aed, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !42072
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit488

bb.fx:                                            ; preds = %.loopexit712
  %i.aee = fadd double %spec.store.select, %spec.store.select19 ; 2 uses
  %.inv232 = fcmp ord double %i.aee, 0.000000e+00
  %spec.store.select20 = select i1 %.inv232, double %i.aee, double 0.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !42073)
  store i64 -9223372036854775808, ptr %i.oz, align 16, !alias.scope !42074
  store double 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i489, align 8, !alias.scope !42074
  store double %.sroa.0142.1, ptr %.sroa.52.0..sroa_idx.i490, align 16, !alias.scope !42074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx.i491, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.af, i64 80, i1 false), !alias.scope !42075
  store i32 -1, ptr %.sroa.7.0..sroa_idx.i492, align 8, !alias.scope !42074
  store i8 0, ptr %.sroa.8.0..sroa_idx.i493, align 16, !alias.scope !42074
  store i64 %i.bj, ptr %i.pa, align 8, !alias.scope !42074
  store i64 2, ptr %i.ag, align 16, !alias.scope !42074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ao, double noundef %spec.store.select20, double noundef 0.000000e+00, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(176) %i.ag)
          to label %bb.fy unwind label %bb.fs

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit485

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit488: ; preds = %bb.fw, %_RNvXsJ_NtNtCs3oUPovFnLWP_4core5slice3cmpiNtB5_13SliceContains14slice_contains.exit485
  %i.aef = fadd double %spec.store.select.i.i.i.i, %spec.store.select19 ; 2 uses
  %.inv233 = fcmp ord double %i.aef, 0.000000e+00
  %spec.store.select21 = select i1 %.inv233, double %i.aef, double 0.000000e+00 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.aeg = icmp eq ptr %i.pj, %i.ob
  br i1 %i.aeg, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i._crit_edge, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i

bb.fz:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7565)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7565)
  %i.aeh = icmp eq ptr %i.aco, %i.acl
  br i1 %i.aeh, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB11_5point5PointEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB11_5point5PointEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit

.thread678:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cm, %bb.dy
  %eh.lpad-body366 = phi { ptr, i32 } [ %i.xc, %bb.dy ], [ %lpad.loopexit.split-lp2146, %bb.cm ], [ %lpad.loopexit.split-lp2146, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #53
          to label %bb.ce unwind label %bb.ah

.thread651:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i4.i398, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ce, %bb.ct, %.thread665
  %.pn235.pn.pn.pn650 = phi { ptr, i32 } [ %i.sb, %bb.ct ], [ %lpad.thr_comm663, %.thread665 ], [ %lpad.loopexit.split-lp2138, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i4.i398 ], [ %.pn235.pn.pn, %bb.ce ], [ %lpad.loopexit.split-lp2138, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.083.6649 = phi i8 [ 1, %bb.ct ], [ %.sroa.082.6.ph, %.thread665 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i4.i398 ], [ 1, %bb.ce ], [ 0, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.082.5648 = phi i8 [ 0, %bb.ct ], [ %.sroa.082.6.ph, %.thread665 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i4.i398 ], [ 0, %bb.ce ], [ 0, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42076)
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42077)
  call void @llvm.experimental.noalias.scope.decl(metadata !42078)
  %i.aej = load ptr, ptr %i.aei, align 8, !alias.scope !42079, !nonnull !41, !noundef !41
  %i.aek = atomicrmw add ptr %i.aej, i64 -1 release, align 8, !noalias !42079
  %i.ael = icmp eq i64 %i.aek, 1
  br i1 %i.ael, label %bb.ga, label %.body500

bb.ga:                                            ; preds = %.thread651
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aei) #57
          to label %.body500 unwind label %bb.ah

.lr.ph:                                           ; preds = %bb.av, %bb.gu
  %.sroa.0543.0961 = phi ptr [ %i.aem, %bb.gu ], [ %i.gi, %bb.av ] ; 2 uses
  %.sroa.8545.0960 = phi i64 [ %i.aen, %bb.gu ], [ 0, %bb.av ] ; 3 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.sroa.0543.0961, i64 24 ; 2 uses
  %i.aen = add nuw nsw i64 %.sroa.8545.0960, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42080
  invoke fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run18layout_aligned_row(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0543.0961, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
          to label %.noexc499 unwind label %.loopexit.split-lp728.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !41898

.noexc499:                                        ; preds = %.lr.ph
  %i.aeo = load i64, ptr %i.a, align 8, !range !70, !noalias !42080, !noundef !41 ; 3 uses
  %i.aep = icmp eq i64 %i.aeo, -1
  %i.aeq = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !42080 ; 4 uses
  %i.aer = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !42080 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42080
  br i1 %i.aep, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %.noexc499
  store i64 %i.aeo, ptr %i.b, align 8, !noalias !42080
  store ptr %i.aeq, ptr %.sroa.4.0..sroa_idx.i497, align 8, !noalias !42080
  store i64 %i.aer, ptr %.sroa.5.0..sroa_idx.i498, align 8, !noalias !42080
  %i.aes = invoke fastcc { double, double } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run11measure_row(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aeq, i64 noundef %i.aer)
          to label %bb.gj unwind label %bb.gc, !noalias !42081, !inline_history !41898 ; 2 uses

bb.gc:                                            ; preds = %bb.gb
  %i.aet = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #53
          to label %.body500 unwind label %bb.gd, !noalias !42081, !inline_history !41898

bb.gd:                                            ; preds = %bb.gc
  %i.aeu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !noalias !42081, !inline_history !41898
  unreachable

bb.ge:                                            ; preds = %.noexc499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42080
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(128) %i.as)
          to label %bb.gf unwind label %bb.gg, !inline_history !0

bb.gf:                                            ; preds = %bb.ge
  %i.aev = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(128) %i.aev)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEj2_ECs7tN9tvpkfrg_12typst_layout.exit506 unwind label %bb.gg, !inline_history !0

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEj2_ECs7tN9tvpkfrg_12typst_layout.exit506: ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %.val274 = load i64, ptr %i.at, align 8         ; 2 uses
  %i.aew = icmp eq i64 %.val274, 0
  br i1 %i.aew, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit509, label %bb.gv

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.aex = phi i1 [ false, %bb.ge ], [ true, %bb.gf ]
  %i.aey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.aex, label %.body424, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aez = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(128) %i.aez) #53
          to label %.body424 unwind label %bb.gi, !inline_history !0

bb.gi:                                            ; preds = %bb.gh
  %i.afa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54, !inline_history !0
  unreachable

bb.gj:                                            ; preds = %bb.gb
  %i.afb = extractvalue { double, double } %i.aes, 0 ; 2 uses
  %i.afc = extractvalue { double, double } %i.aes, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42080
  store i64 %i.aeo, ptr %i.ap, align 8
  store ptr %i.aeq, ptr %.sroa.444.0..sroa_idx, align 8
  store i64 %i.aer, ptr %.sroa.545.0..sroa_idx, align 8
  store double %i.afb, ptr %.sroa.646.0..sroa_idx, align 8
  store double %i.afc, ptr %.sroa.646.sroa.4.0..sroa.646.0..sroa_idx.sroa_idx, align 8
  %i.afd = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !41 ; 2 uses
  %i.afe = icmp ult i64 %.sroa.8.0962, %i.afd
  br i1 %i.afe, label %bb.gk, label %.invoke

bb.gk:                                            ; preds = %bb.gj
  %i.aff = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !41, !noundef !41
  %i.afg = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.afb, double noundef %.sroa.0198.0)
          to label %bb.gl unwind label %.loopexit.split-lp733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %bb.gp, %bb.gm, %bb.gj
  %i.afh = phi i64 [ %.sroa.8.0962, %bb.gm ], [ %.sroa.8.0962, %bb.gj ], [ %.val.i, %bb.gp ]
  %i.afi = phi i64 [ %i.afl, %bb.gm ], [ %i.afd, %bb.gj ], [ %.val.i, %bb.gp ]
  %i.afj = phi ptr [ @620, %bb.gm ], [ @619, %bb.gj ], [ @621, %bb.gp ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.afh, i64 noundef %i.afi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afj) #56
          to label %.cont1393 unwind label %.loopexit.split-lp733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1393:                                        ; preds = %.invoke
  unreachable

bb.gl:                                            ; preds = %bb.gk
  %i.afk = getelementptr inbounds nuw [16 x i8], ptr %i.aff, i64 %.sroa.8.0962
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.afk, double noundef %i.afg)
          to label %bb.gm unwind label %.loopexit.split-lp733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gm:                                            ; preds = %bb.gl
  %i.afl = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !41 ; 2 uses
  %i.afm = icmp ult i64 %.sroa.8.0962, %i.afl
  br i1 %i.afm, label %bb.gn, label %.invoke

bb.gn:                                            ; preds = %bb.gm
  %i.afn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !41, !noundef !41
  %i.afo = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.afc, double noundef %.sroa.0199.0)
          to label %bb.go unwind label %.loopexit.split-lp733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.go:                                            ; preds = %bb.gn
  %i.afp = getelementptr inbounds nuw [16 x i8], ptr %i.afn, i64 %.sroa.8.0962
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 8
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.afq, double noundef %i.afo)
          to label %bb.gp unwind label %.loopexit.split-lp733.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gp:                                            ; preds = %bb.go
  %exitcond = icmp eq i64 %.sroa.8545.0960, %.val.i
  br i1 %exitcond, label %.invoke, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.afr = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %.sroa.8545.0960 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42082)
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 16 ; 2 uses
  %i.aft = load i64, ptr %i.afs, align 8, !alias.scope !42082, !noundef !41 ; 3 uses
  %i.afu = load i64, ptr %i.afr, align 8, !range !45, !alias.scope !42082, !noundef !41
  %i.afv = icmp eq i64 %i.aft, %i.afu
  br i1 %i.afv, label %bb.gr, label %bb.gu

bb.gr:                                            ; preds = %bb.gq
end_hunk_3
