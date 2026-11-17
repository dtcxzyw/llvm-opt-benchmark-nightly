Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8939
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvXsj_NtCs9gmjTwvRRSu_10typst_html5typedNtNtNtCsdaEETE4DqmE_13typst_library11foundations8duration8DurationNtB5_8IntoAttr9into_attr:bb.a
  invoke fastcc void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, i32 noundef 32)
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.k, ptr %i.e, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.436.0..sroa_idx, align 8
  %i.ai = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @48, ptr noundef nonnull @1638, ptr noundef nonnull %i.e)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  br i1 %i.ai, label %.invoke, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit125, !prof !55

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit125: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pre134.pre137.pre139.pre = load i8, ptr %.sroa.49.0..sroa_idx, align 1
  br label %bb.g

bb.l:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit123, %bb.g
  %.pre134.pre137 = phi i8 [ %.pre134.pre137.pre, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit123 ], [ %.pre134.pre137.pre139, %bb.g ] ; 3 uses
  %i.aj = icmp sgt i64 %i.u, 0
  br i1 %i.aj, label %bb.r, label %bb.q

bb.m:                                             ; preds = %bb.g
  %i.ak = and i8 %.pre134.pre137.pre139, 127
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %.not116130 = icmp slt i8 %.pre134.pre137.pre139, 0
  %.sroa.049.0 = select i1 %.not116130, i64 %i.al, i64 %i.an
  %i.ao = icmp eq i64 %.sroa.049.0, 0
  br i1 %i.ao, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, i32 noundef 32)
          to label %bb.o unwind label %bb.b

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.456.0..sroa_idx, align 8
  %i.ap = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @48, ptr noundef nonnull @1640, ptr noundef nonnull %i.d)
          to label %bb.p unwind label %bb.b

bb.p:                                             ; preds = %bb.o
  br i1 %i.ap, label %.invoke, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit123, !prof !55

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit123: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre134.pre137.pre = load i8, ptr %.sroa.49.0..sroa_idx, align 1
  br label %bb.l

bb.q:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit121, %bb.l
  %.pre134 = phi i8 [ %.pre134.pre, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit121 ], [ %.pre134.pre137, %bb.l ] ; 3 uses
  %i.aq = icmp sgt i64 %i.w, 0
  br i1 %i.aq, label %._crit_edge135, label %bb.v

._crit_edge135:                                   ; preds = %bb.q
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre136 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.w

bb.r:                                             ; preds = %bb.l
  %i.ar = and i8 %.pre134.pre137, 127
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.au = load i64, ptr %i.at, align 8
  %.not117131 = icmp slt i8 %.pre134.pre137, 0
  %.sroa.069.0 = select i1 %.not117131, i64 %i.as, i64 %i.au
  %i.av = icmp eq i64 %.sroa.069.0, 0
  br i1 %i.av, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, i32 noundef 32)
          to label %bb.t unwind label %bb.b

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.476.0..sroa_idx, align 8
  %i.aw = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @48, ptr noundef nonnull @1642, ptr noundef nonnull %i.c)
          to label %bb.u unwind label %bb.b

bb.u:                                             ; preds = %bb.t
  br i1 %i.aw, label %.invoke, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit121, !prof !55

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit121: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre134.pre = load i8, ptr %.sroa.49.0..sroa_idx, align 1
  br label %bb.q

bb.v:                                             ; preds = %bb.q
  %i.ax = and i8 %.pre134, 127
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  %.not118132 = icmp slt i8 %.pre134, 0
  %.sroa.089.0 = select i1 %.not118132, i64 %i.ay, i64 %i.ba
  %i.bb = icmp eq i64 %.sroa.089.0, 0
  %i.bc = lshr i64 %i.ba, 56
  %i.bd = trunc nuw i64 %i.bc to i8
  br i1 %i.bb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge135, %bb.v
  %i.be = phi i64 [ %i.ba, %bb.v ], [ %.pre136, %._crit_edge135 ]
  %i.bf = phi i8 [ %i.bd, %bb.v ], [ %.pre134, %._crit_edge135 ] ; 2 uses
  %i.bg = and i8 %i.bf, 127
  %i.bh = zext nneg i8 %i.bg to i64
  %.not119133 = icmp slt i8 %i.bf, 0
  %.sroa.093.0 = select i1 %.not119133, i64 %i.bh, i64 %i.be
  %i.bi = icmp eq i64 %.sroa.093.0, 0
  br i1 %i.bi, label %bb.z, label %bb.y

bb.x:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.y:                                             ; preds = %bb.w
  invoke fastcc void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, i32 noundef 32)
          to label %bb.z unwind label %bb.b

bb.z:                                             ; preds = %bb.y, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.4100.0..sroa_idx, align 8
  %i.bj = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @48, ptr noundef nonnull @1644, ptr noundef nonnull %i.b)
          to label %bb.aa unwind label %bb.b

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bj, label %.invoke, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit, !prof !55

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.ab:                                            ; preds = %bb.b
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.ac:                                            ; preds = %bb.b
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsj_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeINtNtNtCs9toM8E3Xsrz_7palette5alpha5alpha5AlphaNtNtNtBR_3rgb3rgb3RgbfENtB5_5ToCss4emit(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = load <4 x float>, ptr %0, align 4        ; 8 uses
  %i.n = fmul <4 x float> %i.m, splat (float 2.550000e+02)
  %i.o = tail call nsz <4 x float> @llvm.minimumnum.v4f32(<4 x float> %i.n, <4 x float> splat (float 2.550000e+02))
  %i.p = fadd <4 x float> %i.o, splat (float f0x4B000000) ; 4 uses
  %bc = bitcast <4 x float> %i.p to <4 x i32>
  %i.q = extractelement <4 x i32> %bc, i64 0
  %i.r = tail call i32 @llvm.usub.sat.i32(i32 %i.q, i32 1258291200) ; 2 uses
  %bc67 = bitcast <4 x float> %i.p to <4 x i32>
  %i.s = extractelement <4 x i32> %bc67, i64 1
  %i.t = tail call i32 @llvm.usub.sat.i32(i32 %i.s, i32 1258291200)
  %bc68 = bitcast <4 x float> %i.p to <4 x i32>
  %i.u = extractelement <4 x i32> %bc68, i64 2
  %i.v = tail call i32 @llvm.usub.sat.i32(i32 %i.u, i32 1258291200)
  %.sroa.3.0.insert.ext.i.i = shl i32 %i.v, 16
  %.sroa.2.0.insert.ext.i.i = shl i32 %i.t, 8
  %.sroa.2.0.insert.shift.i.i = and i32 %.sroa.2.0.insert.ext.i.i, 65280
  %.sroa.0.0.insert.ext.i.i = and i32 %i.r, 255
  %bc69 = bitcast <4 x float> %i.p to <4 x i32>
  %i.w = extractelement <4 x i32> %bc69, i64 3
  %i.x = tail call i32 @llvm.usub.sat.i32(i32 %i.w, i32 1258291200) ; 3 uses
  %.sroa.3.0.insert.ext.i.masked.i = and i32 %.sroa.3.0.insert.ext.i.i, 16711680 ; 2 uses
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.ext.i.masked.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.047.0.extract.trunc = trunc i32 %i.r to i8
  %.sroa.448.0.extract.shift = lshr exact i32 %.sroa.0.0.insert.insert.i, 8 ; 2 uses
  %.sroa.448.0.extract.trunc = trunc i32 %.sroa.448.0.extract.shift to i8
  %.sroa.549.0.extract.shift = lshr exact i32 %.sroa.3.0.insert.ext.i.masked.i, 16 ; 2 uses
  %.sroa.549.0.extract.trunc = trunc nuw i32 %.sroa.549.0.extract.shift to i8
  %.sroa.650.0.extract.trunc = trunc i32 %i.x to i8
  %i.y = or disjoint i32 %.sroa.0.0.insert.ext.i.i, 1258291200
  %i.z = bitcast i32 %i.y to float
  %i.aa = fadd nnan ninf float %i.z, f0xCB000000
  %i.ab = fmul nnan float %i.aa, f0x3B808081
  %.sroa.650.0.extract.shift = and i32 %i.x, 255
  %i.ac = insertelement <2 x i32> poison, i32 %.sroa.448.0.extract.shift, i64 0
  %i.ad = insertelement <2 x i32> %i.ac, i32 %i.x, i64 1
  %i.ae = and <2 x i32> %i.ad, splat (i32 255)
  %i.af = or disjoint <2 x i32> %i.ae, splat (i32 1258291200)
  %i.ag = bitcast <2 x i32> %i.af to <2 x float>
  %i.ah = fadd nnan ninf <2 x float> %i.ag, splat (float f0xCB000000)
  %i.ai = fmul nnan <2 x float> %i.ah, splat (float f0x3B808081) ; 2 uses
  %i.aj = extractelement <4 x float> %i.m, i64 0  ; 2 uses
  %i.ak = fpext float %i.aj to double             ; 2 uses
  %i.al = fpext float %i.ab to double
  %i.am = fsub double %i.ak, %i.al
  %i.an = tail call double @llvm.fabs.f64(double %i.am)
  %i.ao = fcmp olt double %i.an, f0x3F20000000000000
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = or disjoint i32 %.sroa.549.0.extract.shift, 1258291200
  %i.aq = bitcast i32 %i.ap to float
  %i.ar = fadd nnan ninf float %i.aq, f0xCB000000
  %i.as = fmul nnan float %i.ar, f0x3B808081
  %i.at = extractelement <4 x float> %i.m, i64 2
  %i.au = fpext float %i.at to double
  %i.av = fpext float %i.as to double
  %i.aw = fsub double %i.au, %i.av
  %i.ax = tail call double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp olt double %i.ax, f0x3F20000000000000
  br i1 %i.ay, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21719)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1646, i64 noundef range(i64 3, 6) 3), !noalias !21720
  tail call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @996, i64 noundef 1), !noalias !21720
  store ptr %1, ptr %i.f, align 8, !alias.scope !21720
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.ba, align 8, !alias.scope !21720
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i8 0, ptr %i.bb, align 8, !alias.scope !21720
  %i.bc = fcmp uno float %i.aj, 0.000000e+00
  %spec.store.select = select i1 %i.bc, double 0.000000e+00, double %i.ak
  %i.bd = invoke fastcc noundef nonnull align 8 ptr @_RINvMs3_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_10CallWriter8arg_withNtNtNtCsdaEETE4DqmE_13typst_library6layout5ratio5RatioEBa_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, double noundef %spec.store.select, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.b
  %i.be = extractelement <4 x float> %i.m, i64 1
  %i.bf = fpext float %i.be to double
  %i.bg = extractelement <2 x float> %i.ai, i64 0
  %i.bh = fpext float %i.bg to double
  %i.bi = fsub double %i.bf, %i.bh
  %i.bj = tail call double @llvm.fabs.f64(double %i.bi)
  %i.bk = fcmp olt double %i.bj, f0x3F20000000000000
  br i1 %i.bk, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.bl = extractelement <4 x float> %i.m, i64 3
  %i.bm = fpext float %i.bl to double
  %i.bn = extractelement <2 x float> %i.ai, i64 1
  %i.bo = fpext float %i.bn to double
  %i.bp = fsub double %i.bm, %i.bo
  %i.bq = tail call double @llvm.fabs.f64(double %i.bp)
  %i.br = fcmp olt double %i.bq, f0x3F20000000000000
  br i1 %i.br, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %.sroa.047.0.extract.trunc, ptr %i.l, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 %.sroa.448.0.extract.trunc, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 %.sroa.549.0.extract.trunc, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 %.sroa.650.0.extract.trunc, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %i.bs, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt, ptr %.sroa.429.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.j, ptr %i.bt, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt, ptr %.sroa.433.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @1647, ptr %i.e, align 8, !noalias !21721
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.bu, align 8, !noalias !21721
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21721
  store ptr %i.e, ptr %i.d, align 8, !noalias !21721
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs8_NtCs3oUPovFnLWP_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !21721
  %i.bw = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @48, ptr noundef nonnull @47, ptr noundef nonnull %i.d)
  br i1 %i.bw, label %bb.g, label %_RINvMs2_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_9CssWriter9write_fmtNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsEBa_.exit, !prof !55

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @921, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #51
  unreachable

_RINvMs2_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_9CssWriter9write_fmtNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsEBa_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bx = icmp eq i32 %.sroa.650.0.extract.shift, 255
  br i1 %i.bx, label %bb.o, label %bb.p

bb.h:                                             ; preds = %bb.l, %bb.j, %bb.i, %bb.c
  %i.by = landingpad { ptr, i32 }
          cleanup
  %.val58 = load ptr, ptr %i.f, align 8, !alias.scope !142, !nonnull !52, !align !58, !noundef !52
  %i.bz = getelementptr inbounds nuw i8, ptr %.val58, i64 16
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1555, i64 noundef 1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode10CallWriterEBH_.exit unwind label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.ca = extractelement <4 x float> %i.m, i64 1  ; 2 uses
  %i.cb = fpext float %i.ca to double
  %i.cc = fcmp uno float %i.ca, 0.000000e+00
  %spec.store.select1 = select i1 %i.cc, double 0.000000e+00, double %i.cb
  %i.cd = load i8, ptr %i.bb, align 8, !range !64, !noundef !52
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = invoke fastcc noundef nonnull align 8 ptr @_RINvMs3_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_10CallWriter8arg_withNtNtNtCsdaEETE4DqmE_13typst_library6layout5ratio5RatioEBa_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, double noundef %spec.store.select1, i1 noundef zeroext %i.ce)
          to label %bb.j unwind label %bb.h       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.cg = extractelement <4 x float> %i.m, i64 2  ; 2 uses
  %i.ch = fpext float %i.cg to double
  %i.ci = fcmp uno float %i.cg, 0.000000e+00
  %spec.store.select2 = select i1 %i.ci, double 0.000000e+00, double %i.ch
  %i.cj = load i8, ptr %i.bb, align 8, !range !64, !noundef !52
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = invoke fastcc noundef nonnull align 8 ptr @_RINvMs3_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_10CallWriter8arg_withNtNtNtCsdaEETE4DqmE_13typst_library6layout5ratio5RatioEBa_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, double noundef %spec.store.select2, i1 noundef zeroext %i.ck)
          to label %bb.k unwind label %bb.h       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.cm = extractelement <4 x float> %i.m, i64 3  ; 2 uses
  %i.cn = fpext float %i.cm to double             ; 2 uses
  %i.co = fadd double %i.cn, -1.000000e+00
  %i.cp = call double @llvm.fabs.f64(double %i.co)
  %i.cq = fcmp olt double %i.cp, f0x3F20000000000000
  br i1 %i.cq, label %_RNvXsp_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB5_10CallWriterNtB5_10MaybeAlpha15maybe_alpha_arg.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cr = fcmp uno float %i.cm, 0.000000e+00
  %spec.store.select.i = select i1 %i.cr, double 0.000000e+00, double %i.cn
  %i.cs = invoke fastcc noundef nonnull align 8 ptr @_RINvMs3_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_10CallWriter8arg_withNtNtNtCsdaEETE4DqmE_13typst_library6layout5ratio5RatioEBa_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, double noundef %spec.store.select.i, i1 noundef zeroext true)
          to label %_RNvXsp_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB5_10CallWriterNtB5_10MaybeAlpha15maybe_alpha_arg.exit unwind label %bb.h ; 0 uses

_RNvXsp_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB5_10CallWriterNtB5_10MaybeAlpha15maybe_alpha_arg.exit: ; preds = %bb.k, %bb.l
  %.val = load ptr, ptr %i.f, align 8, !alias.scope !142, !nonnull !52, !align !58, !noundef !52
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1555, i64 noundef 1), !noalias !21722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %_RNvXsp_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB5_10CallWriterNtB5_10MaybeAlpha15maybe_alpha_arg.exit
  ret void

bb.n:                                             ; preds = %bb.h
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode10CallWriterEBH_.exit: ; preds = %bb.h
  resume { ptr, i32 } %i.by

bb.o:                                             ; preds = %_RINvMs2_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_9CssWriter9write_fmtNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsEBa_.exit62, %_RINvMs2_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_9CssWriter9write_fmtNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsEBa_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.m

bb.p:                                             ; preds = %_RINvMs2_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_9CssWriter9write_fmtNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsEBa_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @1648, ptr %i.c, align 8, !noalias !21723
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.cv, align 8, !noalias !21723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21723
  store ptr %i.c, ptr %i.b, align 8, !noalias !21723
  %.sroa.43.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtCs3oUPovFnLWP_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i61, align 8, !noalias !21723
  %i.cw = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @48, ptr noundef nonnull @47, ptr noundef nonnull %i.b)
  br i1 %i.cw, label %bb.q, label %_RINvMs2_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_9CssWriter9write_fmtNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsEBa_.exit62, !prof !55

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @918, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @921, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #51
  unreachable

_RINvMs2_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_9CssWriter9write_fmtNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsEBa_.exit62: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !62, !noundef !52 ; 4 uses
  %i.b = icmp ne i64 %i.a, 30
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 28
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
end_hunk_0
