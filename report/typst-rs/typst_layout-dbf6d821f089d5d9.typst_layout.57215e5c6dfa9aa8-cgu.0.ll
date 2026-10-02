Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter3new:bb.a
  %i.hg = xor i64 %i.hf, %i.hb
  %i.hh = zext i64 %i.fq to i128
  %i.hi = zext i64 %i.hg to i128
  %i.hj = shl nuw i128 %i.hi, 64
  %i.hk = or disjoint i128 %i.hj, %i.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs1_NtNtCsdaEETE4DqmE_13typst_library13introspection7locatorNtB5_12SplitLocator10next_inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.j, i128 noundef %i.hk)
          to label %bb.s unwind label %bb.m

bb.s:                                             ; preds = %bb.r
  %i.hl = load i128, ptr %i.d, align 16, !noundef !41 ; 2 uses
  %i.hm = load ptr, ptr %i.x, align 16, !align !59, !noundef !41 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.hn = mul i64 %.sroa.021.071, -1065810590584100411
  %i.ho = add i64 %i.hn, %.sroa.019.072
  %i.hp = mul i64 %i.ho, -1065810590584100411     ; 2 uses
  %i.hq = call noundef i64 @llvm.fshl.i64(i64 %i.hp, i64 %i.hp, i64 26) ; 2 uses
  %i.hr = load i64, ptr %i.y, align 8, !alias.scope !30101, !noalias !30102, !noundef !41
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.t, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesjENtNtNtBX_13introspection7locator7LocatorEE7reserveNCINvNtB8_3map11make_hasherBQ_B1J_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs7tN9tvpkfrg_12typst_layout.exit.i.i, !prof !44

bb.t:                                             ; preds = %bb.s
  %i.ht = invoke { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesjENtNtNtBX_13introspection7locator7LocatorEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1J_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i1 noundef zeroext true) #58
          to label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesjENtNtNtBX_13introspection7locator7LocatorEE7reserveNCINvNtB8_3map11make_hasherBQ_B1J_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.m ; 0 uses

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesjENtNtNtBX_13introspection7locator7LocatorEE7reserveNCINvNtB8_3map11make_hasherBQ_B1J_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.t, %bb.s
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !30103, !noalias !30104, !nonnull !41, !noundef !41 ; 8 uses
  %.val5.i.i = load i64, ptr %i.aa, align 8, !alias.scope !30103, !noalias !30104, !noundef !41 ; 4 uses
  %i.hu = lshr i64 %i.hq, 57
  %i.hv = trunc nuw nsw i64 %i.hu to i8           ; 3 uses
  %i.hw = insertelement <16 x i8> poison, i8 %i.hv, i64 0
  %i.hx = shufflevector <16 x i8> %i.hw, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesjENtNtNtBX_13introspection7locator7LocatorEE7reserveNCINvNtB8_3map11make_hasherBQ_B1J_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.pn.i.i.i = phi i64 [ %i.hq, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesjENtNtNtBX_13introspection7locator7LocatorEE7reserveNCINvNtB8_3map11make_hasherBQ_B1J_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %i.iy, %bb.x ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesjENtNtNtBX_13introspection7locator7LocatorEE7reserveNCINvNtB8_3map11make_hasherBQ_B1J_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.4.120.i.i.i, %bb.x ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesjENtNtNtBX_13introspection7locator7LocatorEE7reserveNCINvNtB8_3map11make_hasherBQ_B1J_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.04.122.i.i.i, %bb.x ]
  %i.hy = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtNtCsdaEETE4DqmE_13typst_library6layout4axes4AxesjENtNtNtBX_13introspection7locator7LocatorEE7reserveNCINvNtB8_3map11make_hasherBQ_B1J_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %i.ix, %bb.x ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val5.i.i ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.hz, align 1, !noalias !30105 ; 3 uses
  %i.ia = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.hx
  %i.ib = bitcast <16 x i1> %i.ia to i16          ; 2 uses
  %.not28.i.i.i = icmp eq i16 %i.ib, 0
  br i1 %.not28.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %bb.v
  %.sroa.01.029.i.i.i = phi i16 [ %i.in, %bb.v ], [ %i.ib, %bb.u ] ; 3 uses
  %i.ic = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i, i1 true)
  %i.id = zext nneg i16 %i.ic to i64
  %i.ie = add i64 %.sroa.0.017.i.i.i, %i.id
  %i.if = and i64 %i.ie, %.val5.i.i
  %i.ig = sub nsw i64 0, %i.if
  %i.ih = getelementptr inbounds [48 x i8], ptr %.val.i.i, i64 %i.ig ; 4 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -48
  %.val2.i.i.i = load i64, ptr %i.ii, align 8, !noalias !30106, !noundef !41
  %i.ij = getelementptr i8, ptr %i.ih, i64 -40
  %.val3.i.i.i = load i64, ptr %i.ij, align 8, !noalias !30106
  %i.ik = icmp eq i64 %.sroa.021.071, %.val2.i.i.i
  %i.il = icmp eq i64 %.sroa.019.072, %.val3.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %spec.select.i.i.i.i.i.i, label %bb.ab, label %bb.v, !prof !43

._crit_edge.i.i.i:                                ; preds = %bb.v, %bb.u
  %.not12.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %bb.w, !prof !44

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.im = add i16 %.sroa.01.029.i.i.i, -1
  %i.in = and i16 %i.im, %.sroa.01.029.i.i.i      ; 2 uses
  %.not.i.i.i48 = icmp eq i16 %i.in, 0
  br i1 %.not.i.i.i48, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.io = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, zeroinitializer
  %i.ip = bitcast <16 x i1> %i.io to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ip, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %.thread24.i.i.i, !prof !44

.thread24.i.i.i:                                  ; preds = %bb.w
  %i.iq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ip, i1 true)
  %i.ir = zext nneg i16 %i.iq to i64
  %i.is = add i64 %.sroa.0.017.i.i.i, %i.ir
  %i.it = and i64 %i.is, %.val5.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread24.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.121.i.i.i = phi i64 [ %i.it, %.thread24.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.iu = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.iv = bitcast <16 x i1> %i.iu to i16
  %i.iw = icmp eq i16 %i.iv, 0
  br i1 %i.iw, label %bb.x, label %bb.y, !prof !44

bb.x:                                             ; preds = %.thread.i.i.i, %bb.w
  %.sroa.04.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.w ]
  %.sroa.4.120.i.i.i = phi i64 [ %.sroa.4.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.w ]
  %i.ix = add i64 %i.hy, 16                       ; 2 uses
  %i.iy = add i64 %i.ix, %.sroa.0.017.i.i.i
  br label %bb.u

bb.y:                                             ; preds = %.thread.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.121.i.i.i
  %i.ja = load i8, ptr %i.iz, align 1, !noalias !30107, !noundef !41 ; 2 uses
  %i.jb = icmp sgt i8 %i.ja, -1
  br i1 %i.jb, label %bb.z, label %bb.aa, !prof !44

bb.z:                                             ; preds = %bb.y
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !30107
  %i.jc = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.jd = bitcast <16 x i1> %i.jc to i16          ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.jd, 0
  %i.je = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.jd, i1 true)
  %i.jf = zext nneg i16 %i.je to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.jf
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !30108
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.jg = phi i8 [ %.pre.i, %bb.z ], [ %i.ja, %bb.y ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.jf, %bb.z ], [ %.sroa.4.121.i.i.i, %bb.y ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30109)
  %i.jh = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.ji = and i8 %i.jg, 1
  %i.jj = zext nneg i8 %i.ji to i64
  %i.jk = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.jl = and i64 %i.jk, %.val5.i.i
  store i8 %i.hv, ptr %i.jh, align 1, !noalias !30108
  %i.jm = getelementptr i8, ptr %.val.i.i, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 16
  store i8 %i.hv, ptr %i.jn, align 1, !noalias !30108
  %i.jo = load <2 x i64>, ptr %i.y, align 8, !alias.scope !30110, !noalias !30111
  %i.jp = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.jj, i64 0
  %i.jq = sub <2 x i64> %i.jo, %i.jp
  store <2 x i64> %i.jq, ptr %i.y, align 8, !alias.scope !30110, !noalias !30111
  %i.jr = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.js = getelementptr inbounds [48 x i8], ptr %.val.i.i, i64 %i.jr ; 4 uses
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -48
  store i64 %.sroa.021.071, ptr %i.jt, align 16, !noalias !30112
  %.sroa.4.0..sroa_idx.i49 = getelementptr inbounds i8, ptr %i.js, i64 -40
  store i64 %.sroa.019.072, ptr %.sroa.4.0..sroa_idx.i49, align 8, !noalias !30112
  %.sroa.5.0..sroa_idx.i50 = getelementptr inbounds i8, ptr %i.js, i64 -32
  store i128 %i.hl, ptr %.sroa.5.0..sroa_idx.i50, align 16, !noalias !30112
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.js, i64 -16
  store ptr %i.hm, ptr %.sroa.6.0..sroa_idx.i, align 16, !noalias !30112
  br label %.backedge

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.ju = getelementptr inbounds i8, ptr %i.ih, i64 -32
  %i.jv = getelementptr inbounds i8, ptr %i.ih, i64 -16
  store i128 %i.hl, ptr %i.ju, align 16, !noalias !30113
  store ptr %i.hm, ptr %i.jv, align 16, !noalias !30113
  br label %.backedge

.thread:                                          ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit
  %.pn2869 = phi { ptr, i32 } [ %.pn.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit ], [ %i.cx, %bb.m ]
  %.val = load ptr, ptr %i.j, align 16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val30 = load i64, ptr %i.jw, align 8, !noundef !41
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator12SplitLocatorECs7tN9tvpkfrg_12typst_layout(ptr %.val, i64 %.val30) #54
  resume { ptr, i32 } %.pn2869
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter6layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(488) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.5594.i = alloca i64, align 8             ; 6 uses
  %.sroa.10596.i = alloca i64, align 8            ; 5 uses
  %.sroa.5588.i = alloca i64, align 8             ; 6 uses
  %.sroa.10590.i = alloca i64, align 8            ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 10 uses
  %i.q = alloca [8 x i8], align 8                 ; 8 uses
  %.sroa.12.i.i257.i = alloca [80 x i8], align 8  ; 4 uses
  %i.r = alloca [208 x i8], align 16              ; 15 uses
  %i.s = alloca [96 x i8], align 8                ; 4 uses
  %i.t = alloca [80 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 9 uses
  %i.af = alloca [8 x i8], align 8                ; 8 uses
  %.sroa.12.i.i.i = alloca [80 x i8], align 8     ; 4 uses
  %i.ag = alloca [208 x i8], align 16             ; 15 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.55.i.i.i.i.i = alloca [168 x i8], align 8 ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 9 uses
  %i.aj = alloca [32 x i8], align 8               ; 9 uses
  %i.ak = alloca [104 x i8], align 16             ; 14 uses
  %i.al = alloca [8 x i8], align 8                ; 3 uses
  %i.am = alloca [24 x i8], align 16              ; 8 uses
  %i.an = alloca [64 x i8], align 8               ; 12 uses
  %i.ao = alloca [192 x i8], align 16             ; 16 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 10 uses
  %i.ar = alloca [248 x i8], align 8              ; 34 uses
  %i.as = alloca [1 x i8], align 1                ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [1 x i8], align 1                ; 5 uses
  %i.av = alloca [1 x i8], align 1                ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [1 x i8], align 1                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [152 x i8], align 8              ; 22 uses
  %i.ba = alloca [1 x i8], align 1                ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.6408.i = alloca ptr, align 8             ; 6 uses
  %.sroa.12.i = alloca ptr, align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 7 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [8 x i8], align 8                ; 5 uses
  %i.bg = alloca [8 x i8], align 8                ; 6 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [24 x i8], align 8               ; 4 uses
  %i.bj = alloca [24 x i8], align 8               ; 9 uses
  %i.bk = alloca [24 x i8], align 8               ; 7 uses
  %i.bl = alloca [64 x i8], align 8               ; 11 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [48 x i8], align 8               ; 6 uses
  %i.bo = alloca [24 x i8], align 8               ; 7 uses
  %i.bp = alloca [8 x i8], align 8                ; 6 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [8 x i8], align 8                ; 4 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [8 x i8], align 8                ; 5 uses
  %i.bu = alloca [24 x i8], align 8               ; 4 uses
  %i.bv = alloca [488 x i8], align 8              ; 18 uses
  %i.bw = alloca [112 x i8], align 8              ; 6 uses
  %i.bx = alloca [32 x i8], align 8               ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31005)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 7 uses
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !31005, !noalias !31006, !nonnull !41, !align !46, !noundef !41 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !31007, !nonnull !41, !noundef !41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 40 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !31007, !noundef !41
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  %.val.i = load ptr, ptr %i.ce, align 8, !alias.scope !31005, !noalias !31006, !nonnull !41, !noundef !41 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %.val45.i = load i64, ptr %i.cf, align 8, !alias.scope !31005, !noalias !31006, !noundef !41 ; 8 uses
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val45.i, i64 %i.cd) ; 2 uses
  %.not.i = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre.i = load double, ptr %.phi.trans.insert.i, align 8, !alias.scope !31005, !noalias !31006
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = load double, ptr %i.ch, align 8, !alias.scope !31005, !noalias !31006 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.bq, %.lr.ph.i
  %.sroa.039.0142.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %.sroa.039.1.i, %bb.bq ] ; 3 uses
  %.sroa.022.0141.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %.sroa.022.1.i, %bb.bq ] ; 3 uses
  %.sroa.8.0140.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cj, %bb.bq ] ; 3 uses
  %i.cj = add nuw i64 %.sroa.8.0140.i, 1          ; 2 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %.sroa.8.0140.i ; 4 uses
  %.sroa.010.0.copyload.i = load i64, ptr %i.ck, align 8, !noalias !31005
  %.sroa.4.0..sroa.07.0.8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.4.0.copyload.i = load double, ptr %.sroa.4.0..sroa.07.0.8.sroa_idx.i, align 8, !noalias !31005 ; 2 uses
  switch i64 %.sroa.010.0.copyload.i, label %bb.bp [
    i64 0, label %bb.bq
    i64 1, label %bb.br
    i64 2, label %bb.bs
  ]

._crit_edge.i:                                    ; preds = %bb.bq, %.._crit_edge_crit_edge.i
  %i.cl = phi double [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.ci, %bb.bq ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi double [ 0.000000e+00, %.._crit_edge_crit_edge.i ], [ %.sroa.022.1.i, %bb.bq ] ; 2 uses
  %.sroa.039.0.lcssa.i = phi double [ 0.000000e+00, %.._crit_edge_crit_edge.i ], [ %.sroa.039.1.i, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !31007
  %i.cm = fneg double %.sroa.039.0.lcssa.i
  %i.cn = fcmp uno double %.sroa.039.0.lcssa.i, 0.000000e+00
  %spec.store.select.i = select i1 %i.cn, double 0.000000e+00, double %i.cm
  %i.co = fadd double %i.cl, %spec.store.select.i ; 2 uses
  %.inv.i = fcmp ord double %i.co, 0.000000e+00
  %spec.store.select1.i = select i1 %.inv.i, double %i.co, double 0.000000e+00 ; 4 uses
  store double %spec.store.select1.i, ptr %i.bt, align 8, !noalias !31007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !31007
  store double 0.000000e+00, ptr %i.bs, align 8, !noalias !31007
  %i.cp = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bs)
          to label %.noexc unwind label %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge.i
  %i.cq = icmp sgt i8 %i.cp, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !31007
  br i1 %i.cq, label %bb.c, label %bb.bb

bb.c:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !31008)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !31007
  %i.cr = load ptr, ptr %i.ca, align 8, !noalias !31009, !nonnull !41, !noundef !41 ; 4 uses
  %i.cs = load i64, ptr %i.cc, align 8, !noalias !31009, !noundef !41 ; 4 uses
  %.idx2946 = shl nuw nsw i64 %i.cs, 5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx2946 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !31010
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4F_12GridLayouter20measure_auto_columns0ENCB4A_s_0EE9from_iterB4J_.exit.i.i, label %.lr.ph2934

bb.d:                                             ; preds = %.lr.ph2934
  %i.cv = icmp eq ptr %i.cy, %i.ct
  br i1 %i.cv, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4F_12GridLayouter20measure_auto_columns0ENCB4A_s_0EE9from_iterB4J_.exit.i.i, label %.lr.ph2934

.lr.ph2934:                                       ; preds = %bb.c, %bb.d
  %i.cw = phi ptr [ %i.cy, %bb.d ], [ %i.cr, %bb.c ] ; 2 uses
  %i.cx = phi i64 [ %i.cz, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cw, align 8, !alias.scope !31011, !noalias !31012
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.cz = add i64 %i.cx, 1                        ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %.lr.ph2934
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !31013
  %i.da = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 17) 8) #56, !noalias !31013 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.e, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #57
          to label %.noexc91 unwind label %.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %bb.e
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  store i64 %i.cx, ptr %i.da, align 8, !noalias !31014
  store i64 4, ptr %i.bj, align 8, !noalias !31010
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  store ptr %i.da, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !31010
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !31010
  call void @llvm.experimental.noalias.scope.decl(metadata !31015)
  call void @llvm.experimental.noalias.scope.decl(metadata !31016)
  br label %bb.f

bb.f:                                             ; preds = %.noexc.i.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.dc = phi ptr [ %i.dn, %.noexc.i.i.i ], [ %i.da, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %.sroa.13.0.copyload.i.i = phi i64 [ %i.dp, %.noexc.i.i.i ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 6 uses
  %i.dd = phi i64 [ %i.dj, %.noexc.i.i.i ], [ %i.cz, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %i.de = phi ptr [ %i.di, %.noexc.i.i.i ], [ %i.cy, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.df = phi i64 [ %i.dj, %bb.h ], [ %i.dd, %bb.f ] ; 2 uses
  %i.dg = phi ptr [ %i.di, %bb.h ], [ %i.de, %bb.f ] ; 3 uses
  %i.dh = icmp eq ptr %i.dg, %i.ct
  br i1 %i.dh, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1h_6filter6FilterINtNtB1h_9enumerate9EnumerateINtNtNtB1l_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4n_12GridLayouter20measure_auto_columns0ENCB4i_s_0EE11spec_extendB4r_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dg, align 8, !alias.scope !31017, !noalias !31018
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.dj = add i64 %i.df, 1                        ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.dk = icmp samesign ult i64 %.sroa.13.0.copyload.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.dk)
  %i.dl = load i64, ptr %i.bj, align 8, !range !45, !alias.scope !31019, !noalias !31020, !noundef !41
  %i.dm = icmp eq i64 %.sroa.13.0.copyload.i.i, %i.dl
  br i1 %i.dm, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, label %.noexc.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i: ; preds = %bb.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj, i64 noundef %.sroa.13.0.copyload.i.i, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i..noexc_crit_edge.i.i.i unwind label %bb.j, !noalias !31014

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i..noexc_crit_edge.i.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !31019, !noalias !31020
  br label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i..noexc_crit_edge.i.i.i, %bb.i
  %i.dn = phi ptr [ %.pre.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecjE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i..noexc_crit_edge.i.i.i ], [ %i.dc, %bb.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.sroa.13.0.copyload.i.i
  store i64 %i.df, ptr %i.do, align 8, !noalias !31021
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter6layout:bb.a
  br i1 %i.alr, label %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB30_12GridLayouter20render_fills_strokess9_0EIB17_B1s_NCB2V_s8_0EEIB17_B1s_NCB2V_sa_0EENtNtNtBb_6traits8iterator8Iterator4findQQNCNCINvNtB32_5lines22generate_line_segmentsNCB2V_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1t_NtNtB1Y_3abs3AbsEEEIBR_BQ_IB17_B1s_NCB2V_sb_0EEE00E0B34_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.ht
  %i.als = load i8, ptr %.val2.i10.i.i.i.i.i.i.i.i, align 1, !range !54, !noalias !31173, !noundef !41
  %i.alt = getelementptr inbounds nuw i8, ptr %i.akr, i64 176
  %i.alu = load i64, ptr %.sroa.21544.0..sroa_idx.i, align 8, !alias.scope !31162, !noalias !31163 ; 4 uses
  br label %bb.hu

bb.hu:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i
  %i.alv = phi ptr [ %i.ako, %.lr.ph.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.alw, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 40 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31174)
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alv, i64 32
  %i.aly = load i8, ptr %i.alx, align 8, !range !54, !alias.scope !31174, !noalias !31175, !noundef !41
  %i.alz = icmp eq i8 %i.aly, %i.als
  br i1 %i.alz, label %bb.hv, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.experimental.noalias.scope.decl(metadata !31176)
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alv, i64 16
  %i.amb = load i64, ptr %i.ama, align 8, !alias.scope !31177, !noalias !31178, !noundef !41 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.amb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2p_8layouterNtB3z_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4D_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4D_5chain5ChainIB6i_IB6i_INtNtB4D_6filter6FilterIB5z_B1d_ENCB3u_s9_0EIB6N_B79_NCB3u_s8_0EEIB6N_B79_NCB3u_sa_0EEIB6N_B79_NCB3u_sb_0EEE00E0B2r_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.hv
  %i.amc = load i8, ptr %i.alt, align 8, !range !54, !noalias !31179, !noundef !41
  %i.amd = trunc nuw i8 %i.amc to i1
  %i.ame = shl i64 %i.amb, 1
  %i.amf = add i64 %i.ame, -1
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.amd, i64 %i.amf, i64 %i.amb
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  %i.amh = load i64, ptr %i.amg, align 8, !alias.scope !31177, !noalias !31178, !noundef !41
  %i.ami = mul i64 %i.amh, %i.alu
  %.not.i.i.i.i.i.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i = icmp ule i64 %i.ami, %i.akf
  %i.amj = icmp ult i64 %i.akf, %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.amj, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt1.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2p_8layouterNtB3z_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4D_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4D_5chain5ChainIB6i_IB6i_INtNtB4D_6filter6FilterIB5z_B1d_ENCB3u_s9_0EIB6N_B79_NCB3u_s8_0EEIB6N_B79_NCB3u_sa_0EEIB6N_B79_NCB3u_sb_0EEE00E0B2r_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hv
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  %i.aml = load i64, ptr %i.amk, align 8, !alias.scope !31177, !noalias !31178, !noundef !41
  %i.amm = mul i64 %i.aml, %i.alu
  %.not.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.akf, %i.amm
  br i1 %.not.i.i.i.i.i9.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt1.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2p_8layouterNtB3z_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4D_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4D_5chain5ChainIB6i_IB6i_INtNtB4D_6filter6FilterIB5z_B1d_ENCB3u_s9_0EIB6N_B79_NCB3u_s8_0EEIB6N_B79_NCB3u_sa_0EEIB6N_B79_NCB3u_sb_0EEE00E0B2r_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hu
  %i.amn = icmp eq ptr %i.alw, %.sroa.55.sroa.0.0.i.i.i.i.i.i.i.i
  br i1 %i.amn, label %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB30_12GridLayouter20render_fills_strokess9_0EIB17_B1s_NCB2V_s8_0EEIB17_B1s_NCB2V_sa_0EENtNtNtBb_6traits8iterator8Iterator4findQQNCNCINvNtB32_5lines22generate_line_segmentsNCB2V_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1t_NtNtB1Y_3abs3AbsEEEIBR_BQ_IB17_B1s_NCB2V_sb_0EEE00E0B34_.exit.thread.i.i.i.i.i.i.i.i.i.i, label %bb.hu

_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB30_12GridLayouter20render_fills_strokess9_0EIB17_B1s_NCB2V_s8_0EEIB17_B1s_NCB2V_sa_0EENtNtNtBb_6traits8iterator8Iterator4findQQNCNCINvNtB32_5lines22generate_line_segmentsNCB2V_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1t_NtNtB1Y_3abs3AbsEEEIBR_BQ_IB17_B1s_NCB2V_sb_0EEE00E0B34_.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ht, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0ERB1Q_NCINvXs_B2_INtB2_5ChainB14_IB15_B1q_NCB2T_s8_0EENtNtNtB6_6traits8iterator8Iterator4findQQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB4_9enumerate9EnumerateINtNtB4_6copied6CopiedIB1r_NtNtB1W_3abs3AbsEEEIB4K_IB4K_B4J_IB15_B1q_NCB2T_sa_0EEIB15_B1q_NCB2T_sb_0EEE00E0EB32_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt0.i.i.i.i.i
  %i.amo = phi ptr [ %i.akm, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt0.i.i.i.i.i ], [ %i.akr, %bb.ht ], [ %i.akr, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0ERB1Q_NCINvXs_B2_INtB2_5ChainB14_IB15_B1q_NCB2T_s8_0EENtNtNtB6_6traits8iterator8Iterator4findQQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB4_9enumerate9EnumerateINtNtB4_6copied6CopiedIB1r_NtNtB1W_3abs3AbsEEEIB4K_IB4K_B4J_IB15_B1q_NCB2T_sa_0EEIB15_B1q_NCB2T_sb_0EEE00E0EB32_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.akr, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.55.sroa.4.0.i449.i.i.i.i.i = phi ptr [ %.sroa.55.sroa.4.0.i.jt0.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt0.i.i.i.i.i ], [ %.sroa.55.sroa.4.0.i.jt1.i.i.i.i.i, %bb.ht ], [ %.sroa.55.sroa.4.0.i.jt1.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0ERB1Q_NCINvXs_B2_INtB2_5ChainB14_IB15_B1q_NCB2T_s8_0EENtNtNtB6_6traits8iterator8Iterator4findQQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB4_9enumerate9EnumerateINtNtB4_6copied6CopiedIB1r_NtNtB1W_3abs3AbsEEEIB4K_IB4K_B4J_IB15_B1q_NCB2T_sa_0EEIB15_B1q_NCB2T_sb_0EEE00E0EB32_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.55.sroa.4.0.i.jt1.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.55.sroa.0.0.i446.i.i.i.i.i = phi ptr [ %.sroa.55.sroa.0.0.i.jt0.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt0.i.i.i.i.i ], [ %.sroa.55.sroa.0.0.i.jt1.i.i.i.i.i, %bb.ht ], [ %.sroa.55.sroa.0.0.i.jt1.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0ERB1Q_NCINvXs_B2_INtB2_5ChainB14_IB15_B1q_NCB2T_s8_0EENtNtNtB6_6traits8iterator8Iterator4findQQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB4_9enumerate9EnumerateINtNtB4_6copied6CopiedIB1r_NtNtB1W_3abs3AbsEEEIB4K_IB4K_B4J_IB15_B1q_NCB2T_sa_0EEIB15_B1q_NCB2T_sb_0EEE00E0EB32_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.55.sroa.0.0.i.jt1.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.val2.i.i443.i.i.i.i.i = phi ptr [ %.val2.i.i.jt0.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt0.i.i.i.i.i ], [ %.val2.i.i.jt1.i.i.i.i.i, %bb.ht ], [ %.val2.i.i.jt1.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0ERB1Q_NCINvXs_B2_INtB2_5ChainB14_IB15_B1q_NCB2T_s8_0EENtNtNtB6_6traits8iterator8Iterator4findQQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB4_9enumerate9EnumerateINtNtB4_6copied6CopiedIB1r_NtNtB1W_3abs3AbsEEEIB4K_IB4K_B4J_IB15_B1q_NCB2T_sa_0EEIB15_B1q_NCB2T_sb_0EEE00E0EB32_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val2.i.i.jt1.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val1.i.i441.i.i.i.i.i = phi ptr [ %.val1.i.i.jt0.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt0.i.i.i.i.i ], [ %.val1.i.i.jt1.i.i.i.i.i, %bb.ht ], [ %.val1.i.i.jt1.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0ERB1Q_NCINvXs_B2_INtB2_5ChainB14_IB15_B1q_NCB2T_s8_0EENtNtNtB6_6traits8iterator8Iterator4findQQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB4_9enumerate9EnumerateINtNtB4_6copied6CopiedIB1r_NtNtB1W_3abs3AbsEEEIB4K_IB4K_B4J_IB15_B1q_NCB2T_sa_0EEIB15_B1q_NCB2T_sb_0EEE00E0EB32_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val1.i.i.jt1.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.not7.i439.i.i.i.i.i = phi i1 [ %.not7.i.jt0.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt0.i.i.i.i.i ], [ %.not7.i.jt1.i.i.i.i.i, %bb.ht ], [ %.not7.i.jt1.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0ERB1Q_NCINvXs_B2_INtB2_5ChainB14_IB15_B1q_NCB2T_s8_0EENtNtNtB6_6traits8iterator8Iterator4findQQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB4_9enumerate9EnumerateINtNtB4_6copied6CopiedIB1r_NtNtB1W_3abs3AbsEEEIB4K_IB4K_B4J_IB15_B1q_NCB2T_sa_0EEIB15_B1q_NCB2T_sb_0EEE00E0EB32_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.not7.i.jt1.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.amp = phi ptr [ %i.akl, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt0.i.i.i.i.i ], [ %i.akq, %bb.ht ], [ %i.akq, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0ERB1Q_NCINvXs_B2_INtB2_5ChainB14_IB15_B1q_NCB2T_s8_0EENtNtNtB6_6traits8iterator8Iterator4findQQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB4_9enumerate9EnumerateINtNtB4_6copied6CopiedIB1r_NtNtB1W_3abs3AbsEEEIB4K_IB4K_B4J_IB15_B1q_NCB2T_sa_0EEIB15_B1q_NCB2T_sb_0EEE00E0EB32_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.akq, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5.sroa.9.0.i426.i.i.i.i.i = phi ptr [ %i.akk, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt0.i.i.i.i.i ], [ %i.akp, %bb.ht ], [ %i.akp, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0ERB1Q_NCINvXs_B2_INtB2_5ChainB14_IB15_B1q_NCB2T_s8_0EENtNtNtB6_6traits8iterator8Iterator4findQQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB4_9enumerate9EnumerateINtNtB4_6copied6CopiedIB1r_NtNtB1W_3abs3AbsEEEIB4K_IB4K_B4J_IB15_B1q_NCB2T_sa_0EEIB15_B1q_NCB2T_sb_0EEE00E0EB32_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.akp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5.sroa.10.0.i424.i.i.i.i.i = phi ptr [ %.sroa.52.0.i.i.jt0.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt0.i.i.i.i.i ], [ %.sroa.52.0.i.i.jt1.i.i.i.i.i, %bb.ht ], [ %.sroa.52.0.i.i.jt1.i.i.i.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0ERB1Q_NCINvXs_B2_INtB2_5ChainB14_IB15_B1q_NCB2T_s8_0EENtNtNtB6_6traits8iterator8Iterator4findQQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB4_9enumerate9EnumerateINtNtB4_6copied6CopiedIB1r_NtNtB1W_3abs3AbsEEEIB4K_IB4K_B4J_IB15_B1q_NCB2T_sa_0EEIB15_B1q_NCB2T_sb_0EEE00E0EB32_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.52.0.i.i.jt1.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess8_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7O_IB7O_INtB4_6FilterIB75_B16_ENCB2T_s9_0EIB8i_B8u_B2R_EEIB8i_B8u_NCB2T_sa_0EEIB8i_B8u_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5.sroa.9.0.i426.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i, label %bb.hw

bb.hw:                                            ; preds = %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB30_12GridLayouter20render_fills_strokess9_0EIB17_B1s_NCB2V_s8_0EEIB17_B1s_NCB2V_sa_0EENtNtNtBb_6traits8iterator8Iterator4findQQNCNCINvNtB32_5lines22generate_line_segmentsNCB2V_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1t_NtNtB1Y_3abs3AbsEEEIBR_BQ_IB17_B1s_NCB2V_sb_0EEE00E0B34_.exit.thread.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.10.0.i424.i.i.i.i.i) ]
  %i.amq = icmp eq ptr %.sroa.5.sroa.9.0.i426.i.i.i.i.i, %.sroa.5.sroa.10.0.i424.i.i.i.i.i
  br i1 %i.amq, label %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.hw
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amo, i64 176
  %i.ams = load i64, ptr %.sroa.21544.0..sroa_idx.i, align 8, !alias.scope !31162, !noalias !31163 ; 2 uses
  br label %bb.hx

bb.hx:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7N_IB7N_INtB4_6FilterIB74_B16_ENCB2T_s9_0EIB8h_B8t_NCB2T_s8_0EEIB8h_B8t_B2R_EEIB8h_B8t_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.amt = phi ptr [ %.sroa.5.sroa.9.0.i426.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.amu, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7N_IB7N_INtB4_6FilterIB74_B16_ENCB2T_s9_0EIB8h_B8t_NCB2T_s8_0EEIB8h_B8t_B2R_EEIB8h_B8t_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 40 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31180)
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amt, i64 32
  %i.amw = load i8, ptr %i.amv, align 8, !range !54, !alias.scope !31180, !noalias !31181, !noundef !41
  %i.amx = icmp eq i8 %i.amw, 0
  br i1 %i.amx, label %bb.hy, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7N_IB7N_INtB4_6FilterIB74_B16_ENCB2T_s9_0EIB8h_B8t_NCB2T_s8_0EEIB8h_B8t_B2R_EEIB8h_B8t_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.experimental.noalias.scope.decl(metadata !31182)
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amt, i64 16
  %i.amz = load i64, ptr %i.amy, align 8, !alias.scope !31183, !noalias !31184, !noundef !41 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.amz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2o_8layouterNtB3y_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4C_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4C_5chain5ChainIB6h_IB6h_INtNtB4C_6filter6FilterIB5y_B1d_ENCB3t_s9_0EIB6M_B78_NCB3t_s8_0EEIB6M_B78_NCB3t_sa_0EEIB6M_B78_NCB3t_sb_0EEE00E0B2q_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.hy
  %i.ana = load i8, ptr %i.amr, align 8, !range !54, !noalias !31185, !noundef !41
  %i.anb = trunc nuw i8 %i.ana to i1
  %i.anc = shl i64 %i.amz, 1
  %i.and = add i64 %i.anc, -1
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.anb, i64 %i.and, i64 %i.amz
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  %i.anf = load i64, ptr %i.ane, align 8, !alias.scope !31183, !noalias !31184, !noundef !41
  %i.ang = mul i64 %i.anf, %i.ams
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ule i64 %i.ang, %i.akf
  %i.anh = icmp ult i64 %i.akf, %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.anh, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7N_IB7N_INtB4_6FilterIB74_B16_ENCB2T_s9_0EIB8h_B8t_NCB2T_s8_0EEIB8h_B8t_B2R_EEIB8h_B8t_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2o_8layouterNtB3y_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4C_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4C_5chain5ChainIB6h_IB6h_INtNtB4C_6filter6FilterIB5y_B1d_ENCB3t_s9_0EIB6M_B78_NCB3t_s8_0EEIB6M_B78_NCB3t_sa_0EEIB6M_B78_NCB3t_sb_0EEE00E0B2q_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hy
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  %i.anj = load i64, ptr %i.ani, align 8, !alias.scope !31183, !noalias !31184, !noundef !41
  %i.ank = mul i64 %i.anj, %i.ams
  %.not.i.i.i.i.i3.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.akf, %i.ank
  br i1 %.not.i.i.i.i.i3.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7N_IB7N_INtB4_6FilterIB74_B16_ENCB2T_s9_0EIB8h_B8t_NCB2T_s8_0EEIB8h_B8t_B2R_EEIB8h_B8t_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7N_IB7N_INtB4_6FilterIB74_B16_ENCB2T_s9_0EIB8h_B8t_NCB2T_s8_0EEIB8h_B8t_B2R_EEIB8h_B8t_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2o_8layouterNtB3y_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4C_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4C_5chain5ChainIB6h_IB6h_INtNtB4C_6filter6FilterIB5y_B1d_ENCB3t_s9_0EIB6M_B78_NCB3t_s8_0EEIB6M_B78_NCB3t_sa_0EEIB6M_B78_NCB3t_sb_0EEE00E0B2q_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hx
  %i.anl = icmp eq ptr %i.amu, %.sroa.5.sroa.10.0.i424.i.i.i.i.i
  br i1 %i.anl, label %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i, label %bb.hx

_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessa_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QQNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7N_IB7N_INtB4_6FilterIB74_B16_ENCB2T_s9_0EIB8h_B8t_NCB2T_s8_0EEIB8h_B8t_B2R_EEIB8h_B8t_NCB2T_sb_0EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hw, %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB30_12GridLayouter20render_fills_strokess9_0EIB17_B1s_NCB2V_s8_0EEIB17_B1s_NCB2V_sa_0EENtNtNtBb_6traits8iterator8Iterator4findQQNCNCINvNtB32_5lines22generate_line_segmentsNCB2V_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1t_NtNtB1Y_3abs3AbsEEEIBR_BQ_IB17_B1s_NCB2V_sb_0EEE00E0B34_.exit.thread.i.i.i.i.i.i.i.i.i.i
  br i1 %.not7.i439.i.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB22_9visualize6stroke6StrokeNtNtB20_3abs3AbsEEENCINvB1b_11filter_foldRB1U_B6b_NCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_B7E_EEEBO_E00NCINvNtB7_3map8map_foldB8j_B6b_B6b_NCB8u_s_0NCNCB8u_s0_00E0E0EB36_.exit.i.i.i.i.i, label %bb.hz

bb.hz:                                            ; preds = %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt2.i.i.i.i.i
  %i.anm = phi ptr [ %i.aks, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt2.i.i.i.i.i ], [ %i.amp, %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i ] ; 2 uses
  %.val1.i.i442455.i.i.i.i.i = phi ptr [ %.val1.i.i.jt2.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt2.i.i.i.i.i ], [ %.val1.i.i441.i.i.i.i.i, %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i ] ; 2 uses
  %.val2.i.i444454.i.i.i.i.i = phi ptr [ %.val2.i.i.jt2.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt2.i.i.i.i.i ], [ %.val2.i.i443.i.i.i.i.i, %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i ]
  %.sroa.55.sroa.0.0.i447453.i.i.i.i.i = phi ptr [ %.val1.i.i.jt2.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt2.i.i.i.i.i ], [ %.sroa.55.sroa.0.0.i446.i.i.i.i.i, %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.55.sroa.4.0.i450452.i.i.i.i.i = phi ptr [ %.val2.i.i.jt2.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt2.i.i.i.i.i ], [ %.sroa.55.sroa.4.0.i449.i.i.i.i.i, %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i ] ; 2 uses
  %i.ann = phi ptr [ %i.akt, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt2.i.i.i.i.i ], [ %i.amo, %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i442455.i.i.i.i.i) ]
  %i.ano = icmp eq ptr %i.anm, %.val1.i.i442455.i.i.i.i.i
  br i1 %i.ano, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB22_9visualize6stroke6StrokeNtNtB20_3abs3AbsEEENCINvB1b_11filter_foldRB1U_B6b_NCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_B7E_EEEBO_E00NCINvNtB7_3map8map_foldB8j_B6b_B6b_NCB8u_s_0NCNCB8u_s0_00E0E0EB36_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.hz
  %i.anp = load i8, ptr %.val2.i.i444454.i.i.i.i.i, align 1, !range !54, !noalias !31186, !noundef !41
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ann, i64 176
  %i.anr = load i64, ptr %.sroa.21544.0..sroa_idx.i, align 8, !alias.scope !31162, !noalias !31163 ; 2 uses
  br label %bb.ia

bb.ia:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessb_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7M_IB7M_INtB4_6FilterIB73_B16_ENCB2T_s9_0EIB8g_B8s_NCB2T_s8_0EEIB8g_B8s_NCB2T_sa_0EEIB8g_B8s_B2R_EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ans = phi ptr [ %i.anm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ant, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessb_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7M_IB7M_INtB4_6FilterIB73_B16_ENCB2T_s9_0EIB8g_B8s_NCB2T_s8_0EEIB8g_B8s_NCB2T_sa_0EEIB8g_B8s_B2R_EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 40 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31187)
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ans, i64 32
  %i.anv = load i8, ptr %i.anu, align 8, !range !54, !alias.scope !31187, !noalias !31188, !noundef !41
  %i.anw = icmp eq i8 %i.anv, %i.anp
  br i1 %i.anw, label %bb.ib, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessb_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7M_IB7M_INtB4_6FilterIB73_B16_ENCB2T_s9_0EIB8g_B8s_NCB2T_s8_0EEIB8g_B8s_NCB2T_sa_0EEIB8g_B8s_B2R_EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.experimental.noalias.scope.decl(metadata !31189)
  %i.anx = getelementptr inbounds nuw i8, ptr %i.ans, i64 16
  %i.any = load i64, ptr %i.anx, align 8, !alias.scope !31190, !noalias !31191, !noundef !41 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.any, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2n_8layouterNtB3x_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4B_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4B_5chain5ChainIB6g_IB6g_INtNtB4B_6filter6FilterIB5x_B1d_ENCB3s_s9_0EIB6L_B77_NCB3s_s8_0EEIB6L_B77_NCB3s_sa_0EEIB6L_B77_NCB3s_sb_0EEE00E0B2p_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ib
  %i.anz = load i8, ptr %i.anq, align 8, !range !54, !noalias !31192, !noundef !41
  %i.aoa = trunc nuw i8 %i.anz to i1
  %i.aob = shl i64 %i.any, 1
  %i.aoc = add i64 %i.aob, -1
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.aoa, i64 %i.aoc, i64 %i.any
  %i.aod = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  %i.aoe = load i64, ptr %i.aod, align 8, !alias.scope !31190, !noalias !31191, !noundef !41
  %i.aof = mul i64 %i.aoe, %i.anr
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ule i64 %i.aof, %i.akf
  %i.aog = icmp ult i64 %i.akf, %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.aog, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt2.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessb_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7M_IB7M_INtB4_6FilterIB73_B16_ENCB2T_s9_0EIB8g_B8s_NCB2T_s8_0EEIB8g_B8s_NCB2T_sa_0EEIB8g_B8s_B2R_EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2n_8layouterNtB3x_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4B_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4B_5chain5ChainIB6g_IB6g_INtNtB4B_6filter6FilterIB5x_B1d_ENCB3s_s9_0EIB6L_B77_NCB3s_s8_0EEIB6L_B77_NCB3s_sa_0EEIB6L_B77_NCB3s_sb_0EEE00E0B2p_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ib
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  %i.aoi = load i64, ptr %i.aoh, align 8, !alias.scope !31190, !noalias !31191, !noundef !41
  %i.aoj = mul i64 %i.aoi, %i.anr
  %.not.i.i.i.i.i3.i.i.i.i.i.i = icmp ult i64 %i.akf, %i.aoj
  br i1 %.not.i.i.i.i.i3.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessb_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7M_IB7M_INtB4_6FilterIB73_B16_ENCB2T_s9_0EIB8g_B8s_NCB2T_s8_0EEIB8g_B8s_NCB2T_sa_0EEIB8g_B8s_B2R_EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt2.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessb_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7M_IB7M_INtB4_6FilterIB73_B16_ENCB2T_s9_0EIB8g_B8s_NCB2T_s8_0EEIB8g_B8s_NCB2T_sa_0EEIB8g_B8s_B2R_EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2n_8layouterNtB3x_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4B_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4B_5chain5ChainIB6g_IB6g_INtNtB4B_6filter6FilterIB5x_B1d_ENCB3s_s9_0EIB6L_B77_NCB3s_s8_0EEIB6L_B77_NCB3s_sa_0EEIB6L_B77_NCB3s_sb_0EEE00E0B2p_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i, %bb.ia
  %i.aok = icmp eq ptr %i.ant, %.sroa.55.sroa.0.0.i447453.i.i.i.i.i
  br i1 %i.aok, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB22_9visualize6stroke6StrokeNtNtB20_3abs3AbsEEENCINvB1b_11filter_foldRB1U_B6b_NCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_B7E_EEEBO_E00NCINvNtB7_3map8map_foldB8j_B6b_B6b_NCB8u_s_0NCNCB8u_s0_00E0E0EB36_.exit.i.i.i.i.i, label %bb.ia

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt1.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2q_8layouterNtB3A_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4E_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4E_5chain5ChainIB6j_IB6j_INtNtB4E_6filter6FilterIB5A_B1d_ENCB3v_s9_0EIB6O_B7a_NCB3v_s8_0EEIB6O_B7a_NCB3v_sa_0EEIB6O_B7a_NCB3v_sb_0EEE00E0B2s_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2p_8layouterNtB3z_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4D_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4D_5chain5ChainIB6i_IB6i_INtNtB4D_6filter6FilterIB5z_B1d_ENCB3u_s9_0EIB6N_B79_NCB3u_s8_0EEIB6N_B79_NCB3u_sa_0EEIB6N_B79_NCB3u_sb_0EEE00E0B2r_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aol = phi i64 [ %i.alu, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2p_8layouterNtB3z_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4D_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4D_5chain5ChainIB6i_IB6i_INtNtB4D_6filter6FilterIB5z_B1d_ENCB3u_s9_0EIB6N_B79_NCB3u_s8_0EEIB6N_B79_NCB3u_sa_0EEIB6N_B79_NCB3u_sb_0EEE00E0B2r_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.alu, %.split.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.akx, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.akx, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2q_8layouterNtB3A_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4E_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4E_5chain5ChainIB6j_IB6j_INtNtB4E_6filter6FilterIB5A_B1d_ENCB3v_s9_0EIB6O_B7a_NCB3v_s8_0EEIB6O_B7a_NCB3v_sa_0EEIB6O_B7a_NCB3v_sb_0EEE00E0B2s_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.14.5.i.jt1.i.i.i.i = phi ptr [ %i.alw, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2p_8layouterNtB3z_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4D_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4D_5chain5ChainIB6i_IB6i_INtNtB4D_6filter6FilterIB5z_B1d_ENCB3u_s9_0EIB6N_B79_NCB3u_s8_0EEIB6N_B79_NCB3u_sa_0EEIB6N_B79_NCB3u_sb_0EEE00E0B2r_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.alw, %.split.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ako, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ako, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2q_8layouterNtB3A_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4E_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4E_5chain5ChainIB6j_IB6j_INtNtB4E_6filter6FilterIB5A_B1d_ENCB3v_s9_0EIB6O_B7a_NCB3v_s8_0EEIB6O_B7a_NCB3v_sa_0EEIB6O_B7a_NCB3v_sb_0EEE00E0B2s_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.9.5.i.jt1.i.i.i.i = phi ptr [ null, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2p_8layouterNtB3z_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4D_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4D_5chain5ChainIB6i_IB6i_INtNtB4D_6filter6FilterIB5z_B1d_ENCB3u_s9_0EIB6N_B79_NCB3u_s8_0EEIB6N_B79_NCB3u_sa_0EEIB6N_B79_NCB3u_sb_0EEE00E0B2r_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %.split.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.akz, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.akz, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2q_8layouterNtB3A_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4E_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4E_5chain5ChainIB6j_IB6j_INtNtB4E_6filter6FilterIB5A_B1d_ENCB3v_s9_0EIB6O_B7a_NCB3v_s8_0EEIB6O_B7a_NCB3v_sa_0EEIB6O_B7a_NCB3v_sb_0EEE00E0B2s_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i2.i.i.jt1.i.i.i.i = phi ptr [ %i.alv, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2p_8layouterNtB3z_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4D_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4D_5chain5ChainIB6i_IB6i_INtNtB4D_6filter6FilterIB5z_B1d_ENCB3u_s9_0EIB6N_B79_NCB3u_s8_0EEIB6N_B79_NCB3u_sa_0EEIB6N_B79_NCB3u_sb_0EEE00E0B2r_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.alv, %.split.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aky, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aky, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2q_8layouterNtB3A_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4E_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4E_5chain5ChainIB6j_IB6j_INtNtB4E_6filter6FilterIB5A_B1d_ENCB3v_s9_0EIB6O_B7a_NCB3v_s8_0EEIB6O_B7a_NCB3v_sa_0EEIB6O_B7a_NCB3v_sb_0EEE00E0B2s_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aom = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.i.jt1.i.i.i.i, i64 24 ; 2 uses
  %i.aon = load ptr, ptr %i.aom, align 8, !noalias !31193, !noundef !41 ; 2 uses
  %.not64.i.jt1.i.i.i.i = icmp eq ptr %i.aon, null
  br i1 %.not64.i.jt1.i.i.i.i, label %bb.ko, label %bb.kl

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2o_8layouterNtB3y_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4C_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4C_5chain5ChainIB6h_IB6h_INtNtB4C_6filter6FilterIB5y_B1d_ENCB3t_s9_0EIB6M_B78_NCB3t_s8_0EEIB6M_B78_NCB3t_sa_0EEIB6M_B78_NCB3t_sb_0EEE00E0B2q_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.amt, i64 24 ; 2 uses
  %i.aop = load ptr, ptr %i.aoo, align 8, !noalias !31193, !noundef !41 ; 2 uses
  %.not64.i.jt0.i.i.i.i = icmp eq ptr %i.aop, null
  br i1 %.not64.i.jt0.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2U_12GridLayouter20render_fills_strokess9_0EIB11_B1m_NCB2P_s8_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1U_9visualize6stroke6StrokeNtNtB1S_3abs3AbsEEEQQNCINvB13_11filter_foldRB1M_B5n_NCNCINvNtB2W_5lines22generate_line_segmentsNCB2P_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1n_B6Q_EEEIBP_IBP_BO_IB11_B1m_NCB2P_sa_0EEIB11_B1m_NCB2P_sb_0EEE00NCINvNtB7_3map8map_foldB7x_B5n_B5n_NCB7I_s_0NCNCB7I_s0_00E0E0EB2Y_.exit.i.i.i.thread.i.i.i.i, label %bb.km

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt2.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineQNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB2n_8layouterNtB3x_12GridLayouter20render_fills_strokessc_0INtNtNtBc_8adapters9enumerate9EnumerateINtNtB4B_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtB1j_3abs3AbsEEEINtNtB4B_5chain5ChainIB6g_IB6g_INtNtB4B_6filter6FilterIB5x_B1d_ENCB3s_s9_0EIB6L_B77_NCB3s_s8_0EEIB6L_B77_NCB3s_sa_0EEIB6L_B77_NCB3s_sb_0EEE00E0B2p_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.ans, i64 24 ; 2 uses
  %i.aor = load ptr, ptr %i.aoq, align 8, !noalias !31193, !noundef !41 ; 2 uses
  %.not64.i.jt2.i.i.i.i = icmp eq ptr %i.aor, null
  br i1 %.not64.i.jt2.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0EIB15_B1q_NCB2T_s8_0EEIB15_B1q_NCB2T_sa_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1Y_9visualize6stroke6StrokeNtNtB1W_3abs3AbsEEEQNCINvB17_11filter_foldRB1Q_B5M_NCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1r_B7f_EEEIBP_BO_IB15_B1q_NCB2T_sb_0EEE00NCINvNtB7_3map8map_foldB7V_B5M_B5M_NCB86_s_0NCNCB86_s0_00E0E0EB32_.exit.i.i.thread.i.i.i.i, label %bb.kn

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB22_9visualize6stroke6StrokeNtNtB20_3abs3AbsEEENCINvB1b_11filter_foldRB1U_B6b_NCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_B7E_EEEBO_E00NCINvNtB7_3map8map_foldB8j_B6b_B6b_NCB8u_s_0NCNCB8u_s0_00E0E0EB36_.exit.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessb_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7M_IB7M_INtB4_6FilterIB73_B16_ENCB2T_s9_0EIB8g_B8s_NCB2T_s8_0EEIB8g_B8s_NCB2T_sa_0EEIB8g_B8s_B2R_EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokessb_0NCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7Q_IB7Q_INtB4_6FilterIB7j_B12_ENCB3Q_s9_0EIB8k_B8w_NCB3Q_s8_0EEIB8k_B8w_NCB3Q_sa_0EEIB8k_B8w_B3O_EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5F_s_0NCNCB5F_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0EIB15_B1q_NCB2T_s8_0EEIB15_B1q_NCB2T_sa_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1Y_9visualize6stroke6StrokeNtNtB1W_3abs3AbsEEEQNCINvB17_11filter_foldRB1Q_B5M_NCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1r_B7f_EEEIBP_BO_IB15_B1q_NCB2T_sb_0EEE00NCINvNtB7_3map8map_foldB7V_B5M_B5M_NCB86_s_0NCNCB86_s0_00E0E0EB32_.exit.i.i.thread.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0EIB15_B1q_NCB2T_s8_0EEIB15_B1q_NCB2T_sa_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1Y_9visualize6stroke6StrokeNtNtB1W_3abs3AbsEEEQNCINvB17_11filter_foldRB1Q_B5M_NCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1r_B7f_EEEIBP_BO_IB15_B1q_NCB2T_sb_0EEE00NCINvNtB7_3map8map_foldB7V_B5M_B5M_NCB86_s_0NCNCB86_s0_00E0E0EB32_.exit.i.i.i.i.i.i, %bb.hz, %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt2.i.i.i.i.i
  %i.aos = phi ptr [ %i.akt, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt2.i.i.i.i.i ], [ %i.amo, %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i ], [ %i.ann, %bb.hz ], [ %i.axd, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0EIB15_B1q_NCB2T_s8_0EEIB15_B1q_NCB2T_sa_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1Y_9visualize6stroke6StrokeNtNtB1W_3abs3AbsEEEQNCINvB17_11filter_foldRB1Q_B5M_NCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1r_B7f_EEEIBP_BO_IB15_B1q_NCB2T_sb_0EEE00NCINvNtB7_3map8map_foldB7V_B5M_B5M_NCB86_s_0NCNCB86_s0_00E0E0EB32_.exit.i.i.i.i.i.i ], [ %i.axe, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0EIB15_B1q_NCB2T_s8_0EEIB15_B1q_NCB2T_sa_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1Y_9visualize6stroke6StrokeNtNtB1W_3abs3AbsEEEQNCINvB17_11filter_foldRB1Q_B5M_NCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1r_B7f_EEEIBP_BO_IB15_B1q_NCB2T_sb_0EEE00NCINvNtB7_3map8map_foldB7V_B5M_B5M_NCB86_s_0NCNCB86_s0_00E0E0EB32_.exit.i.i.thread.i.i.i.i ], [ %i.axe, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokessb_0NCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7Q_IB7Q_INtB4_6FilterIB7j_B12_ENCB3Q_s9_0EIB8k_B8w_NCB3Q_s8_0EEIB8k_B8w_NCB3Q_sa_0EEIB8k_B8w_B3O_EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5F_s_0NCNCB5F_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i ], [ %i.ann, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessb_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7M_IB7M_INtB4_6FilterIB73_B16_ENCB2T_s9_0EIB8g_B8s_NCB2T_s8_0EEIB8g_B8s_NCB2T_sa_0EEIB8g_B8s_B2R_EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 11 uses
  %.sroa.3.0.i.i.i.i.i = phi ptr [ undef, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt2.i.i.i.i.i ], [ undef, %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i ], [ undef, %bb.hz ], [ %.sroa.0.0.i81.i.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0EIB15_B1q_NCB2T_s8_0EEIB15_B1q_NCB2T_sa_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1Y_9visualize6stroke6StrokeNtNtB1W_3abs3AbsEEEQNCINvB17_11filter_foldRB1Q_B5M_NCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1r_B7f_EEEIBP_BO_IB15_B1q_NCB2T_sb_0EEE00NCINvNtB7_3map8map_foldB7V_B5M_B5M_NCB86_s_0NCNCB86_s0_00E0E0EB32_.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i81.i193.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0EIB15_B1q_NCB2T_s8_0EEIB15_B1q_NCB2T_sa_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1Y_9visualize6stroke6StrokeNtNtB1W_3abs3AbsEEEQNCINvB17_11filter_foldRB1Q_B5M_NCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1r_B7f_EEEIBP_BO_IB15_B1q_NCB2T_sb_0EEE00NCINvNtB7_3map8map_foldB7V_B5M_B5M_NCB86_s_0NCNCB86_s0_00E0E0EB32_.exit.i.i.thread.i.i.i.i ], [ %.sroa.0.0.i.i.i.i83.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokessb_0NCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7Q_IB7Q_INtB4_6FilterIB7j_B12_ENCB3Q_s9_0EIB8k_B8w_NCB3Q_s8_0EEIB8k_B8w_NCB3Q_sa_0EEIB8k_B8w_B3O_EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5F_s_0NCNCB5F_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i ], [ undef, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessb_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7M_IB7M_INtB4_6FilterIB73_B16_ENCB2T_s9_0EIB8g_B8s_NCB2T_s8_0EEIB8g_B8s_NCB2T_sa_0EEIB8g_B8s_B2R_EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i110 = phi i64 [ 0, %_RNvXs4_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtBb_5clone5Clone5cloneB36_.exit.jt2.i.i.i.i.i ], [ 0, %_RNCINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB7_5ChainIBR_IBR_INtNtB9_6filter6FilterINtNtNtBd_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB34_12GridLayouter20render_fills_strokess9_0EIB1b_B1w_NCB2Z_s8_0EEIB1b_B1w_NCB2Z_sa_0EEIB1b_B1w_NCB2Z_sb_0EENtNtNtBb_6traits8iterator8Iterator4findQNCNCINvNtB36_5lines22generate_line_segmentsNCB2Z_sc_0INtNtB9_9enumerate9EnumerateINtNtB9_6copied6CopiedIB1x_NtNtB22_3abs3AbsEEEBQ_E00E0B38_.exit.thread.i.i.i.i.i.i.i ], [ 0, %bb.hz ], [ 1, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0EIB15_B1q_NCB2T_s8_0EEIB15_B1q_NCB2T_sa_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1Y_9visualize6stroke6StrokeNtNtB1W_3abs3AbsEEEQNCINvB17_11filter_foldRB1Q_B5M_NCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1r_B7f_EEEIBP_BO_IB15_B1q_NCB2T_sb_0EEE00NCINvNtB7_3map8map_foldB7V_B5M_B5M_NCB86_s_0NCNCB86_s0_00E0E0EB32_.exit.i.i.i.i.i.i ], [ 1, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokess9_0EIB15_B1q_NCB2T_s8_0EEIB15_B1q_NCB2T_sa_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1Y_9visualize6stroke6StrokeNtNtB1W_3abs3AbsEEEQNCINvB17_11filter_foldRB1Q_B5M_NCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1r_B7f_EEEIBP_BO_IB15_B1q_NCB2T_sb_0EEE00NCINvNtB7_3map8map_foldB7V_B5M_B5M_NCB86_s_0NCNCB86_s0_00E0E0EB32_.exit.i.i.thread.i.i.i.i ], [ 1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokessb_0NCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7Q_IB7Q_INtB4_6FilterIB7j_B12_ENCB3Q_s9_0EIB8k_B8w_NCB3Q_s8_0EEIB8k_B8w_NCB3Q_sa_0EEIB8k_B8w_B3O_EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5F_s_0NCNCB5F_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2Y_12GridLayouter20render_fills_strokessb_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNCINvNtB30_5lines22generate_line_segmentsNCB2T_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtB1c_3abs3AbsEEEINtNtB6_5chain5ChainIB7M_IB7M_INtB4_6FilterIB73_B16_ENCB2T_s9_0EIB8g_B8s_NCB2T_s8_0EEIB8g_B8s_NCB2T_sa_0EEIB8g_B8s_B2R_EEE00E0E0B32_.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aot = load i64, ptr %.sroa.22545.0..sroa_idx.i, align 8, !alias.scope !31162, !noalias !31163, !noundef !41 ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31194)
  call void @llvm.experimental.noalias.scope.decl(metadata !31195)
  %i.aou = load ptr, ptr %.sroa.20543.0..sroa_idx.i, align 8, !alias.scope !31196, !noalias !31197, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 8
  %i.aow = load ptr, ptr %i.aov, align 8, !noalias !31198, !nonnull !41, !noundef !41 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aou, i64 16
  %i.aoy = load i64, ptr %i.aox, align 8, !noalias !31198, !noundef !41 ; 2 uses
  %i.aoz = load ptr, ptr %.sroa.20543.sroa.4.0..sroa.20543.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !31196, !noalias !31197, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.apa = load i64, ptr %i.aoz, align 8, !range !49, !noalias !31198, !noundef !41 ; 5 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aoz, i64 8
  %i.apc = load i64, ptr %i.apb, align 8, !noalias !31198 ; 4 uses
  %i.apd = load ptr, ptr %.sroa.20543.sroa.5.0..sroa.20543.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !31196, !noalias !31197, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.ape = load i64, ptr %i.apd, align 8, !range !49, !noalias !31198, !noundef !41
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apd, i64 8
  %i.apg = load i64, ptr %i.apf, align 8, !noalias !31198 ; 2 uses
  %i.aph = load ptr, ptr %.sroa.20543.sroa.6.0..sroa.20543.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !31196, !noalias !31197, !nonnull !41, !noundef !41
  %i.api = load i8, ptr %i.aph, align 1, !range !54, !noalias !31198, !noundef !41
  %i.apj = trunc nuw i8 %i.api to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !31199)
  call void @llvm.experimental.noalias.scope.decl(metadata !31200)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !31201
  store i64 %.sroa.0.0.i.i.i.i.i110, ptr %i.ae, align 8, !noalias !31202
  store ptr %.sroa.3.0.i.i.i.i.i, ptr %i.sx, align 8, !noalias !31202
  %3 = icmp eq i64 %i.aot, 0                      ; 2 uses
  br i1 %3, label %bb.ic, label %bb.id

.thread146.i.i.i.i.i.i.i:                         ; preds = %bb.ij, %bb.ii, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter8RowPieceENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtBU_5lines22hline_stroke_at_column0EBW_.exit.i.i.i.i.i.i.i, %bb.ih, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !31202
  br label %bb.ic

bb.ic:                                            ; preds = %bb.id, %.thread146.i.i.i.i.i.i.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB22_9visualize6stroke6StrokeNtNtB20_3abs3AbsEEENCINvB1b_11filter_foldRB1U_B6b_NCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_B7E_EEEBO_E00NCINvNtB7_3map8map_foldB8j_B6b_B6b_NCB8u_s_0NCNCB8u_s0_00E0E0EB36_.exit.i.i.i.i.i
  %.not59.i.i.i.i.i.i.i = icmp ne i64 %i.apa, 0
  %narrow.not124.i.i.i.i.i.i.i = or i1 %3, %.not59.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !31202
  %4 = or i64 %i.apa, %i.aot
  %brmerge.not.i.i.i.i.i.i.i = icmp eq i64 %4, 0
  br i1 %brmerge.not.i.i.i.i.i.i.i, label %bb.ja, label %.fold.split.i.i.i.i.i.i.i

bb.id:                                            ; preds = %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB22_9visualize6stroke6StrokeNtNtB20_3abs3AbsEEENCINvB1b_11filter_foldRB1U_B6b_NCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_B7E_EEEBO_E00NCINvNtB7_3map8map_foldB8j_B6b_B6b_NCB8u_s_0NCNCB8u_s0_00E0E0EB36_.exit.i.i.i.i.i
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aos, i64 64
  %i.apl = load i64, ptr %i.apk, align 8, !alias.scope !31203, !noalias !31204, !noundef !41 ; 2 uses
  %i.apm = icmp ult i64 %i.apl, 288230376151711744
  call void @llvm.assume(i1 %i.apm)
  %.not57.i.i.i.i.i.i.i = icmp eq i64 %i.aot, %i.apl
  br i1 %.not57.i.i.i.i.i.i.i, label %bb.ic, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !31202
  invoke void @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolveNtB5_8CellGrid30effective_parent_cell_position(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.aos, i64 noundef %i.akf, i64 noundef %i.aot, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @601)
          to label %bb.ig unwind label %.thread.i.i.loopexit.i.i.i.i.i, !noalias !31204

bb.if:                                            ; preds = %bb.jx
  %lpad.thr_comm.split-lp.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i

.thread.i.i.loopexit.i.i.i.i.i:                   ; preds = %bb.ip, %.fold.split.i.i.i.i.i.i.i, %bb.ie
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i

.thread.i.i.loopexit.split-lp.i.i.i.i.i:          ; preds = %bb.ir
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i

bb.ig:                                            ; preds = %bb.ie
  %i.apn = load i64, ptr %i.ad, align 8, !range !49, !noalias !31202, !noundef !41
  %i.apo = trunc nuw i64 %i.apn to i1
  br i1 %i.apo, label %bb.ih, label %.thread146.i.i.i.i.i.i.i

bb.ih:                                            ; preds = %bb.ig
  %i.app = load i64, ptr %i.sy, align 8, !noalias !31202, !noundef !41 ; 2 uses
  %i.apq = icmp ult i64 %i.app, %i.aot
  br i1 %i.apq, label %bb.ii, label %.thread146.i.i.i.i.i.i.i

bb.ii:                                            ; preds = %bb.ih
  %.idx2948 = shl nuw nsw i64 %i.aoy, 4
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aow, i64 %.idx2948
  %i.aps = icmp eq i64 %i.aoy, 0
  br i1 %i.aps, label %.thread146.i.i.i.i.i.i.i, label %.lr.ph2936

bb.ij:                                            ; preds = %.lr.ph2936
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apv, i64 16 ; 2 uses
  %i.apu = icmp eq ptr %i.apt, %i.apr
  br i1 %i.apu, label %.thread146.i.i.i.i.i.i.i, label %.lr.ph2936

.lr.ph2936:                                       ; preds = %bb.ii, %bb.ij
  %i.apv = phi ptr [ %i.apt, %bb.ij ], [ %i.aow, %bb.ii ] ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 8
  %i.apx = load i64, ptr %i.apw, align 8, !alias.scope !31200, !noalias !31205, !noundef !41 ; 2 uses
  %.not.i.i.i77.i.i.i.i.i = icmp ult i64 %i.apx, %i.app
  br i1 %.not.i.i.i77.i.i.i.i.i, label %bb.ij, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter8RowPieceENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtBU_5lines22hline_stroke_at_column0EBW_.exit.i.i.i.i.i.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter8RowPieceENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtBU_5lines22hline_stroke_at_column0EBW_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph2936
  %i.apy = icmp ult i64 %i.apx, %i.aot
  br i1 %i.apy, label %bb.ik, label %.thread146.i.i.i.i.i.i.i

bb.ik:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter8RowPieceENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtBU_5lines22hline_stroke_at_column0EBW_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !31202
  call void @llvm.experimental.noalias.scope.decl(metadata !31206)
  %i.apz = load i64, ptr %i.ae, align 8, !range !49, !alias.scope !31206, !noalias !31202, !noundef !41
  %i.aqa = icmp eq i64 %i.apz, 0
  br i1 %i.aqa, label %select.unfold.i.i.i.i.i, label %bb.il

bb.il:                                            ; preds = %bb.ik
  call void @llvm.experimental.noalias.scope.decl(metadata !31207)
  %i.aqb = load ptr, ptr %i.sx, align 8, !alias.scope !31208, !noalias !31202, !noundef !41 ; 2 uses
  %i.aqc = icmp eq ptr %i.aqb, null
  br i1 %i.aqc, label %select.unfold.i.i.i.i.i, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.aqd = atomicrmw sub ptr %i.aqb, i64 1 release, align 8, !noalias !31209
  %i.aqe = icmp eq i64 %i.aqd, 1
  br i1 %i.aqe, label %bb.in, label %select.unfold.i.i.i.i.i

bb.in:                                            ; preds = %bb.im
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtBN_6layout3abs3AbsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sx) #58
          to label %select.unfold.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !31210

.fold.split.i.i.i.i.i.i.i:                        ; preds = %bb.ic
  %.mux.i.i.i.i.i.i.i = select i1 %narrow.not124.i.i.i.i.i.i.i, i64 %i.apc, i64 0
  invoke void @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolveNtB5_8CellGrid30effective_parent_cell_position(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.aos, i64 noundef %i.akf, i64 noundef %.mux.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @602)
          to label %bb.io unwind label %.thread.i.i.loopexit.i.i.i.i.i, !noalias !31204

bb.io:                                            ; preds = %.fold.split.i.i.i.i.i.i.i
  %i.aqf = load i64, ptr %i.ab, align 8, !range !49, !noalias !31202, !noundef !41
  %i.aqg = trunc nuw i64 %i.aqf to i1
  br i1 %i.aqg, label %bb.ip, label %bb.ja

bb.ip:                                            ; preds = %bb.io
  %i.aqh = load i64, ptr %i.sz, align 8, !noalias !31202, !noundef !41
  %i.aqi = load i64, ptr %i.ta, align 8, !noalias !31202, !noundef !41
  %i.aqj = invoke noundef align 8 ptr @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolveNtB5_8CellGrid4cell(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.aos, i64 noundef %i.aqh, i64 noundef %i.aqi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257)
          to label %.noexc.i.i.i.i.i.i.i unwind label %.thread.i.i.loopexit.i.i.i.i.i, !noalias !31204 ; 4 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.ip
  %.not.i71.i.i.i.i.i.i.i = icmp eq ptr %i.aqj, null
  br i1 %.not.i71.i.i.i.i.i.i.i, label %bb.ir, label %bb.iq, !prof !44

bb.iq:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  br i1 %narrow.not124.i.i.i.i.i.i.i, label %bb.is, label %bb.it

bb.ir:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #53
          to label %.noexc73.i.i.i.i.i.i.i unwind label %.thread.i.i.loopexit.split-lp.i.i.i.i.i, !noalias !31204

.noexc73.i.i.i.i.i.i.i:                           ; preds = %bb.ir
  unreachable

bb.is:                                            ; preds = %bb.iq
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 88 ; 2 uses
  %i.aql = load ptr, ptr %i.aqk, align 8, !noalias !31204, !noundef !41 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.aql, null
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, label %bb.iu

bb.it:                                            ; preds = %bb.iq
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqj, i64 72 ; 2 uses
  %i.aqn = load ptr, ptr %i.aqm, align 8, !noalias !31204, !noundef !41 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.aqn, null
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, label %bb.ix

bb.iu:                                            ; preds = %bb.is
  %i.aqo = atomicrmw add ptr %i.aql, i64 1 monotonic, align 8, !noalias !31204
  %i.aqp = icmp slt i64 %i.aqo, 0
  br i1 %i.aqp, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.aqq = load ptr, ptr %i.aqk, align 8, !noalias !31204, !nonnull !41, !noundef !41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

bb.iw:                                            ; preds = %bb.iu
  call void @llvm.trap()
  unreachable

bb.ix:                                            ; preds = %bb.it
  %i.aqr = atomicrmw add ptr %i.aqn, i64 1 monotonic, align 8, !noalias !31204
  %i.aqs = icmp slt i64 %i.aqr, 0
  br i1 %i.aqs, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aqt = load ptr, ptr %i.aqm, align 8, !noalias !31204, !nonnull !41, !noundef !41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

bb.iz:                                            ; preds = %bb.ix
  call void @llvm.trap()
  unreachable

bb.ja:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, %bb.io, %bb.ic
  %.sroa.048.0.i.i.i.i.i.i.i = phi i1 [ %i.aqv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ], [ false, %bb.ic ], [ false, %bb.io ] ; 2 uses
  %.val.i.i.i.i.i.i233.i = phi ptr [ %.sroa.0.0.i72.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ], [ null, %bb.ic ], [ null, %bb.io ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !31202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !31202
  store ptr %.val.i.i.i.i.i.i233.i, ptr %i.ac, align 8, !noalias !31202
  br i1 %i.apj, label %..thread104_crit_edge.i.i.i.i.i.i.i, label %bb.jb

..thread104_crit_edge.i.i.i.i.i.i.i:              ; preds = %bb.ja
  %.phi.trans.insert123.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aos, i64 64
  %.pre124.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert123.i.i.i.i.i.i.i, align 8, !alias.scope !31203, !noalias !31204
  br label %.thread104.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %bb.iy, %bb.iv, %bb.it, %bb.is
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 97, %bb.iy ], [ 97, %bb.it ], [ 99, %bb.is ], [ 99, %bb.iv ]
  %.sroa.0.0.i72.i.i.i.i.i.i.i = phi ptr [ %i.aqt, %bb.iy ], [ null, %bb.it ], [ null, %bb.is ], [ %i.aqq, %bb.iv ]
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqj, i64 %.sink.i.i.i.i.i.i.i.i
  %.sroa.3.0.i.i.i.i.i.i.i.i = load i8, ptr %i.aqu, align 1, !range !54, !noalias !31204, !noundef !41
  %i.aqv = trunc nuw i8 %.sroa.3.0.i.i.i.i.i.i.i.i to i1
  br label %bb.ja

bb.jb:                                            ; preds = %bb.ja
  %i.aqw = trunc nuw i64 %i.apa to i1
  br i1 %i.aqw, label %bb.jc, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.jb
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aos, i64 64
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !alias.scope !31203, !noalias !31204
  br label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.aqx = add i64 %i.apc, 1                      ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aos, i64 64
  %i.aqz = load i64, ptr %i.aqy, align 8, !alias.scope !31203, !noalias !31204, !noundef !41 ; 3 uses
  %i.ara = icmp ult i64 %i.aqz, 288230376151711744
  call void @llvm.assume(i1 %i.ara)
  %.not60.i.i.i.i.i.i.i = icmp eq i64 %i.aqx, %i.aqz
  br i1 %.not60.i.i.i.i.i.i.i, label %.thread104.i.i.i.i.i.i.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %._crit_edge.i.i.i.i.i.i.i
  %i.arb = phi i64 [ %.pre.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ], [ %i.aqz, %bb.jc ] ; 3 uses
  %i.arc = icmp ult i64 %i.arb, 288230376151711744
  call void @llvm.assume(i1 %i.arc)
  %i.ard = icmp eq i64 %i.aot, %i.arb
  br i1 %i.ard, label %bb.je, label %.thread104.i.i.i.i.i.i.i

bb.je:                                            ; preds = %bb.jd
  %i.are = call i64 @llvm.usub.sat.i64(i64 %i.aot, i64 1)
  br label %.thread104.i.i.i.i.i.i.i

.thread104.i.i.i.i.i.i.i:                         ; preds = %bb.je, %bb.jd, %bb.jc, %..thread104_crit_edge.i.i.i.i.i.i.i
  %i.arf = phi i64 [ %i.aot, %bb.je ], [ %i.arb, %bb.jd ], [ %i.aqx, %bb.jc ], [ %.pre124.i.i.i.i.i.i.i, %..thread104_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.arg = phi i1 [ true, %bb.je ], [ false, %bb.jd ], [ false, %bb.jc ], [ false, %..thread104_crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.025.0.i.i.i.i.i.i.i = phi i64 [ %i.are, %bb.je ], [ %i.aot, %bb.jd ], [ %i.aot, %bb.jc ], [ %i.aot, %..thread104_crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.arh = icmp ult i64 %i.arf, 288230376151711744
  call void @llvm.assume(i1 %i.arh)
  %i.ari = icmp ult i64 %.sroa.025.0.i.i.i.i.i.i.i, %i.arf
  br i1 %i.ari, label %bb.jf, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

bb.jf:                                            ; preds = %.thread104.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !31202
  invoke void @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolveNtB5_8CellGrid30effective_parent_cell_position(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.aos, i64 noundef %i.akf, i64 noundef %.sroa.025.0.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @603)
          to label %bb.jg unwind label %.loopexit.i.i.i.i.i, !noalias !31204

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i, %bb.jg
  %.sroa.051.0.ph.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i78.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i ], [ null, %bb.jg ]
  %.sroa.052.0.ph.i.i.i.i.i.i.i = phi i1 [ %i.asf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i ], [ false, %bb.jg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !31202
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i.i.i.i.i.i, %.thread104.i.i.i.i.i.i.i
  %.sroa.051.0.i.i.i.i.i.i.i = phi ptr [ null, %.thread104.i.i.i.i.i.i.i ], [ %.sroa.051.0.ph.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.052.0.i.i.i.i.i.i.i = phi i1 [ false, %.thread104.i.i.i.i.i.i.i ], [ %.sroa.052.0.ph.i.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i.i.i.i.i.i ] ; 2 uses
  %i.arj = load i64, ptr %i.ae, align 8, !range !49, !noalias !31202, !noundef !41 ; 2 uses
  %.not62.i.i.i.i.i.i.i = icmp eq i64 %i.arj, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %.sroa.048.0.i.i.i.i.i.i.i, %.sroa.052.0.i.i.i.i.i.i.i
  %..i.i.i.i.i.i234.i = zext i1 %or.cond.i.i.i.i.i.i.i to i8
  %.sroa.030.0.i.i.i.i.i.i.i = select i1 %.not62.i.i.i.i.i.i.i, i8 %..i.i.i.i.i.i234.i, i8 2 ; 5 uses
  %i.ark = and i64 %i.ape, %i.apa
  %or.cond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ark, 0
  %5 = icmp uge i64 %i.apc, %i.apg
  %6 = icmp ule i64 %i.aot, %i.apg
  %.not129.i.i.i.i.i.i.i = or i1 %5, %6
  %i.arl = select i1 %or.cond.not.i.i.i.i.i.i.i.i, i1 true, i1 %.not129.i.i.i.i.i.i.i
  %.sroa.031.0.not122.i.i.i.i.i.i.i = and i1 %narrow.not124.i.i.i.i.i.i.i, %i.arl
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aos, i64 168
  %i.arn = load i8, ptr %i.arm, align 8, !range !48, !alias.scope !31203, !noalias !31204, !noundef !41
  %i.aro = icmp eq i8 %i.arn, 1
  br i1 %i.aro, label %bb.js, label %bb.jt

bb.jg:                                            ; preds = %bb.jf
  %i.arp = load i64, ptr %i.aa, align 8, !range !49, !noalias !31202, !noundef !41
  %i.arq = trunc nuw i64 %i.arp to i1
  br i1 %i.arq, label %bb.jh, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i.i.i.i.i.i

bb.jh:                                            ; preds = %bb.jg
  %i.arr = load i64, ptr %i.tb, align 8, !noalias !31202, !noundef !41
  %i.ars = load i64, ptr %i.tc, align 8, !noalias !31202, !noundef !41
  %i.art = invoke noundef align 8 ptr @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolveNtB5_8CellGrid4cell(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.aos, i64 noundef %i.arr, i64 noundef %i.ars, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259)
          to label %.noexc81.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !31204 ; 4 uses

.noexc81.i.i.i.i.i.i.i:                           ; preds = %bb.jh
  %.not.i75.i.i.i.i.i.i.i = icmp eq ptr %i.art, null
  br i1 %.not.i75.i.i.i.i.i.i.i, label %bb.jj, label %bb.ji, !prof !44

bb.ji:                                            ; preds = %.noexc81.i.i.i.i.i.i.i
  br i1 %i.arg, label %bb.jl, label %bb.jk

bb.jj:                                            ; preds = %.noexc81.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #53
          to label %.noexc82.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !31204

.noexc82.i.i.i.i.i.i.i:                           ; preds = %bb.jj
  unreachable

bb.jk:                                            ; preds = %bb.ji
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 72 ; 2 uses
  %i.arv = load ptr, ptr %i.aru, align 8, !noalias !31204, !noundef !41 ; 2 uses
  %.not5.i76.i.i.i.i.i.i.i = icmp eq ptr %i.arv, null
  br i1 %.not5.i76.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i, label %bb.jm

bb.jl:                                            ; preds = %bb.ji
  %i.arw = getelementptr inbounds nuw i8, ptr %i.art, i64 88 ; 2 uses
  %i.arx = load ptr, ptr %i.arw, align 8, !noalias !31204, !noundef !41 ; 2 uses
  %.not6.i80.i.i.i.i.i.i.i = icmp eq ptr %i.arx, null
  br i1 %.not6.i80.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i, label %bb.jp

bb.jm:                                            ; preds = %bb.jk
  %i.ary = atomicrmw add ptr %i.arv, i64 1 monotonic, align 8, !noalias !31204
  %i.arz = icmp slt i64 %i.ary, 0
  br i1 %i.arz, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.asa = load ptr, ptr %i.aru, align 8, !noalias !31204, !nonnull !41, !noundef !41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i

bb.jo:                                            ; preds = %bb.jm
  call void @llvm.trap()
  unreachable

bb.jp:                                            ; preds = %bb.jl
  %i.asb = atomicrmw add ptr %i.arx, i64 1 monotonic, align 8, !noalias !31204
  %i.asc = icmp slt i64 %i.asb, 0
  br i1 %i.asc, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.asd = load ptr, ptr %i.arw, align 8, !noalias !31204, !nonnull !41, !noundef !41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i

bb.jr:                                            ; preds = %bb.jp
  call void @llvm.trap()
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1D_6layout3abs3AbsEEEbEECs7tN9tvpkfrg_12typst_layout.exit84.i.i.i.i.i.i.i: ; preds = %bb.jq, %bb.jn, %bb.jl, %bb.jk
  %.sink.i77.i.i.i.i.i.i.i = phi i64 [ 99, %bb.jq ], [ 99, %bb.jl ], [ 97, %bb.jk ], [ 97, %bb.jn ]
  %.sroa.0.0.i78.i.i.i.i.i.i.i = phi ptr [ %i.asd, %bb.jq ], [ null, %bb.jl ], [ null, %bb.jk ], [ %i.asa, %bb.jn ]
  %i.ase = getelementptr inbounds nuw i8, ptr %i.art, i64 %.sink.i77.i.i.i.i.i.i.i
  %.sroa.3.0.i79.i.i.i.i.i.i.i = load i8, ptr %i.ase, align 1, !range !54, !noalias !31204, !noundef !41
  %i.asf = trunc nuw i8 %.sroa.3.0.i79.i.i.i.i.i.i.i to i1
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.sink.split.i.i.i.i.i.i.i

bb.js:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %i.asg = getelementptr inbounds nuw i8, ptr %i.aos, i64 144
  %i.ash = trunc nuw i64 %i.apa to i1
  %i.asi = add i64 %i.apc, 1
  %.sroa.046.0.i.i.i.i.i.i.i = select i1 %i.ash, i64 %i.asi, i64 1
  %i.asj = load i64, ptr %i.asg, align 8, !alias.scope !31203, !noalias !31204, !noundef !41 ; 2 uses
  %i.ask = icmp ult i64 %.sroa.046.0.i.i.i.i.i.i.i, %i.asj
  br i1 %i.ask, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE3zipjECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  br i1 %i.arg, label %bb.jw, label %bb.jv

bb.ju:                                            ; preds = %bb.js
  %i.asl = icmp uge i64 %i.aot, %i.asj
  %or.cond3.i.i.i.i.i.i.i = or i1 %i.arg, %i.asl
  br i1 %or.cond3.i.i.i.i.i.i.i, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %.not.i.i75.i.i.i.i.i = xor i1 %.sroa.048.0.i.i.i.i.i.i.i, true
  %or.cond7.i.i.i.i.i.i.i = select i1 %.not.i.i75.i.i.i.i.i, i1 true, i1 %.sroa.052.0.i.i.i.i.i.i.i
  %or.cond66.i.i.i.i.i.i.i = select i1 %.sroa.031.0.not122.i.i.i.i.i.i.i, i1 %or.cond7.i.i.i.i.i.i.i, i1 false ; 2 uses
  %.sroa.037.0.pre.i.i.i.i.i.i.i = select i1 %or.cond66.i.i.i.i.i.i.i, ptr %.sroa.051.0.i.i.i.i.i.i.i, ptr %.val.i.i.i.i.i.i233.i
  %.sroa.038.0.pre.i.i.i.i.i.i.i = select i1 %or.cond66.i.i.i.i.i.i.i, ptr %.val.i.i.i.i.i.i233.i, ptr %.sroa.051.0.i.i.i.i.i.i.i
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju, %bb.jt
  %.sroa.038.0.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i233.i, %bb.jt ], [ %.sroa.038.0.pre.i.i.i.i.i.i.i, %bb.jv ], [ %.val.i.i.i.i.i.i233.i, %bb.ju ] ; 3 uses
  %.sroa.037.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.051.0.i.i.i.i.i.i.i, %bb.jt ], [ %.sroa.037.0.pre.i.i.i.i.i.i.i, %bb.jv ], [ %.sroa.051.0.i.i.i.i.i.i.i, %bb.ju ] ; 3 uses
  %.not.i85.i.i.i.i.i.i.i = icmp eq ptr %.sroa.037.0.i.i.i.i.i.i.i, null ; 2 uses
  %.not7.i.i.i76.i.i.i.i.i = icmp eq ptr %.sroa.038.0.i.i.i.i.i.i.i, null
  %or.cond.i.i.i.i.i.i.i235.i = or i1 %.not7.i.i.i76.i.i.i.i.i, %.not.i85.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i235.i, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1m_6layout3abs3AbsEEE2orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, label %bb.jx

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1m_6layout3abs3AbsEEE2orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %bb.jw
  %.mux.i.i.i.i.i.i.i.i = select i1 %.not.i85.i.i.i.i.i.i.i, ptr %.sroa.038.0.i.i.i.i.i.i.i, ptr %.sroa.037.0.i.i.i.i.i.i.i
  br label %_RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

bb.jx:                                            ; preds = %bb.jw
  %i.asm = invoke fastcc noundef nonnull ptr @_RNvXsh_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEENtNtB7_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.sroa.037.0.i.i.i.i.i.i.i, ptr noundef nonnull %.sroa.038.0.i.i.i.i.i.i.i)
          to label %._RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i.i unwind label %bb.if, !noalias !31204

._RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.jx
  %.pre127.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !range !49, !noalias !31202
  br label %_RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

_RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %._RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1m_6layout3abs3AbsEEE2orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %i.asn = phi i64 [ %i.arj, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1m_6layout3abs3AbsEEE2orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ], [ %.pre127.i.i.i.i.i.i.i, %._RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i.i ]
  %.sroa.06.0.i.i.i.i.i.i.i.i = phi ptr [ %.mux.i.i.i.i.i.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1m_6layout3abs3AbsEEE2orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ], [ %i.asm, %._RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i.i.i.i.i.i.i ] ; 5 uses
  %i.aso = load ptr, ptr %i.sx, align 8, !noalias !31202 ; 6 uses
  %i.asp = trunc nuw i64 %i.asn to i1
  br i1 %i.asp, label %bb.jy, label %bb.kd

bb.jy:                                            ; preds = %_RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !31202
  store ptr %i.aso, ptr %i.z, align 8, !noalias !31202
  store ptr %.sroa.06.0.i.i.i.i.i.i.i.i, ptr %i.td, align 8, !noalias !31202
  %.not.i.i.i.i.i.i.i.i240.i = icmp eq ptr %i.aso, null
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i.i.i.i, null ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %.not2.i.i.i.i.i.i.i.i.i, %.not.i.i.i.i.i.i.i.i240.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, label %bb.kb

bb.ka:                                            ; preds = %bb.jy
  %i.asq = invoke fastcc noundef nonnull ptr @_RNvXsh_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEENtNtB7_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %i.aso, ptr noundef nonnull %.sroa.06.0.i.i.i.i.i.i.i.i)
          to label %_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !31210

bb.kb:                                            ; preds = %bb.jz
  %i.asr = atomicrmw sub ptr %.sroa.06.0.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !31211
  %i.ass = icmp eq i64 %i.asr, 1
  br i1 %i.ass, label %bb.kc, label %_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i

bb.kc:                                            ; preds = %bb.kb
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtBN_6layout3abs3AbsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.td) #58
          to label %_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !31210

_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %bb.kc, %bb.kb, %bb.ka, %bb.jz
  %.sroa.0.0.i.i.i.i.i.i.i.i241.i = phi ptr [ %i.asq, %bb.ka ], [ %i.aso, %bb.jz ], [ %i.aso, %bb.kb ], [ %i.aso, %bb.kc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !31202
  br label %bb.kd

bb.kd:                                            ; preds = %_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, %_RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %.sroa.0.0.i.pn.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i.i241.i, %_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ], [ %.sroa.06.0.i.i.i.i.i.i.i.i, %_RNvXsz_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB9_9visualize6stroke6StrokeNtNtNtB9_6layout3abs3AbsEEENtB5_15AlternativeFold7fold_orCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 8 uses
  %.not.i89.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.pn.i.i.i.i.i.i.i.i, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !31202
  br i1 %.not.i89.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i, label %bb.me

bb.ke:                                            ; preds = %bb.kk, %bb.kh
  %i.ast = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !31204
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %bb.jh, %bb.jf
  %lpad.loopexit265.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.kf

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.jj
  %lpad.loopexit.split-lp266.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.kf

bb.kf:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi267.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit265.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp266.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ] ; 3 uses
  %i.asu = icmp eq ptr %.val.i.i.i.i.i.i233.i, null
  br i1 %i.asu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.asv = atomicrmw sub ptr %.val.i.i.i.i.i.i233.i, i64 1 release, align 8, !noalias !31212
  %i.asw = icmp eq i64 %i.asv, 1
  br i1 %i.asw, label %bb.kh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i

bb.kh:                                            ; preds = %bb.kg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtBN_6layout3abs3AbsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i unwind label %bb.ke, !noalias !31204

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i: ; preds = %bb.kh, %bb.kg, %bb.kf, %.thread.i.i.loopexit.split-lp.i.i.i.i.i, %.thread.i.i.loopexit.i.i.i.i.i, %bb.if
  %.pn.pn101.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi267.i.i.i.i.i, %bb.kg ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i, %bb.if ], [ %lpad.phi267.i.i.i.i.i, %bb.kh ], [ %lpad.phi267.i.i.i.i.i, %bb.kf ], [ %lpad.loopexit.i.i.i.i.i, %.thread.i.i.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.thread.i.i.loopexit.split-lp.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31213)
  %i.asx = load i64, ptr %i.ae, align 8, !range !49, !alias.scope !31213, !noalias !31214, !noundef !41
  %i.asy = icmp eq i64 %i.asx, 0
  br i1 %i.asy, label %.body.i236.i, label %bb.ki

bb.ki:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB1C_6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit92.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !31215), !noalias !31216
  %i.asz = load ptr, ptr %i.sx, align 8, !alias.scope !31217, !noalias !31214, !noundef !41 ; 2 uses
  %i.ata = icmp eq ptr %i.asz, null
  br i1 %i.ata, label %.body.i236.i, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.atb = atomicrmw sub ptr %i.asz, i64 1 release, align 8, !noalias !31218
  %i.atc = icmp eq i64 %i.atb, 1
  br i1 %i.atc, label %bb.kk, label %.body.i236.i

bb.kk:                                            ; preds = %bb.kj
  fence acquire, !noalias !31216
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtBN_6layout3abs3AbsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sx) #58
          to label %.body.i236.i unwind label %bb.ke, !noalias !31210

bb.kl:                                            ; preds = %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt1.i.i.i.i
  %i.atd = atomicrmw add ptr %i.aon, i64 1 monotonic, align 8, !noalias !31193
  %i.ate = icmp slt i64 %i.atd, 0
  br i1 %i.ate, label %.loopexit.i.i.i.i, label %bb.mb

bb.km:                                            ; preds = %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt0.i.i.i.i
  %i.atf = atomicrmw add ptr %i.aop, i64 1 monotonic, align 8, !noalias !31193
  %i.atg = icmp slt i64 %i.atf, 0
  br i1 %i.atg, label %.loopexit.i.i.i.i, label %bb.mc

bb.kn:                                            ; preds = %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt2.i.i.i.i
  %i.ath = atomicrmw add ptr %i.aor, i64 1 monotonic, align 8, !noalias !31193
  %i.ati = icmp slt i64 %i.ath, 0
  br i1 %i.ati, label %.loopexit.i.i.i.i, label %bb.md

bb.ko:                                            ; preds = %bb.mb, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt1.i.i.i.i
  %.sroa.045.0.i.jt1.i.i.i.i = phi ptr [ null, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB32_12GridLayouter20render_fills_strokess9_0EIB19_B1u_NCB2X_s8_0EEIB19_B1u_NCB2X_sa_0EEIB19_B1u_NCB2X_sb_0EENtNtNtB9_6traits8iterator8Iterator4findQNCNCINvNtB34_5lines22generate_line_segmentsNCB2X_sc_0INtNtB7_9enumerate9EnumerateINtNtB7_6copied6CopiedIB1v_NtNtB20_3abs3AbsEEEBO_E00EB36_.exit.i.jt1.i.i.i.i ], [ %i.aym, %bb.mb ] ; 3 uses
  %.not.i.i.i86.i.i.i.i.i = icmp eq ptr %.sroa.9.5.i.jt1.i.i.i.i, null
  br i1 %.not.i.i.i86.i.i.i.i.i, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2B_12GridLayouter20render_fills_strokess9_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1B_9visualize6stroke6StrokeNtNtB1z_3abs3AbsEEEQQQNCINvB6_11filter_foldRB1t_B4J_NCNCINvNtB2D_5lines22generate_line_segmentsNCB2w_sc_0INtNtB8_9enumerate9EnumerateINtNtB8_6copied6CopiedIB14_B6c_EEEINtNtB8_5chain5ChainIB8U_IB8U_BQ_IBR_B13_NCB2w_s8_0EEIBR_B13_NCB2w_sa_0EEIBR_B13_NCB2w_sb_0EEE00NCINvNtB8_3map8map_foldB6T_B4J_B4J_NCB74_s_0NCNCB74_s0_00E0E0EB2F_.exit.i.i.i.i.i.i.i.i, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !31219)
  %i.atj = icmp eq ptr %.sroa.9.5.i.jt1.i.i.i.i, %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i
  br i1 %i.atj, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB2B_12GridLayouter20render_fills_strokess9_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1B_9visualize6stroke6StrokeNtNtB1z_3abs3AbsEEEQQQNCINvB6_11filter_foldRB1t_B4J_NCNCINvNtB2D_5lines22generate_line_segmentsNCB2w_sc_0INtNtB8_9enumerate9EnumerateINtNtB8_6copied6CopiedIB14_B6c_EEEINtNtB8_5chain5ChainIB8U_IB8U_BQ_IBR_B13_NCB2w_s8_0EEIBR_B13_NCB2w_sa_0EEIBR_B13_NCB2w_sb_0EEE00NCINvNtB8_3map8map_foldB6T_B4J_B4J_NCB74_s_0NCNCB74_s0_00E0E0EB2F_.exit.i.i.i.i.i.i.i.i, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.atk = ptrtoint ptr %.sroa.5.sroa.0.0.i.i.i.i.i.i.i.i to i64
  %i.atl = ptrtoint ptr %.sroa.9.5.i.jt1.i.i.i.i to i64
  %i.atm = sub nuw i64 %i.atk, %i.atl
  %i.atn = udiv exact i64 %i.atm, 40
  %i.ato = load i8, ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i.i, align 1, !range !54, !alias.scope !31219, !noalias !31220, !noundef !41
  %i.atp = getelementptr inbounds nuw i8, ptr %i.akr, i64 176
  br label %bb.kr

bb.kr:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i, %bb.kq
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.045.0.i.jt1.i.i.i.i, %bb.kq ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.kq ], [ %i.aun, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.atq = getelementptr inbounds nuw [40 x i8], ptr %.sroa.9.5.i.jt1.i.i.i.i, i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31221)
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 32
  %i.ats = load i8, ptr %i.atr, align 8, !range !54, !alias.scope !31221, !noalias !31222, !noundef !41
  %i.att = icmp eq i8 %i.ats, %i.ato
  br i1 %i.att, label %bb.ks, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.experimental.noalias.scope.decl(metadata !31223)
  call void @llvm.experimental.noalias.scope.decl(metadata !31224)
  call void @llvm.experimental.noalias.scope.decl(metadata !31225)
  call void @llvm.experimental.noalias.scope.decl(metadata !31226)
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atq, i64 16
  %i.atv = load i64, ptr %i.atu, align 8, !alias.scope !31227, !noalias !31228, !noundef !41 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i93.i.i.i.i.i = icmp eq i64 %i.atv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i93.i.i.i.i.i, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ks
  %i.atw = load i8, ptr %i.atp, align 8, !range !54, !noalias !31229, !noundef !41
  %i.atx = trunc nuw i8 %i.atw to i1
  %i.aty = shl i64 %i.atv, 1
  %i.atz = add i64 %i.aty, -1
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.atx, i64 %i.atz, i64 %i.atv
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  %i.aub = load i64, ptr %i.aua, align 8, !alias.scope !31227, !noalias !31228, !noundef !41
  %i.auc = mul i64 %i.aub, %i.aol
  %.not.i.i.i.i.i.i.i.i.i.i.i.i94.i.i.i.i.i = icmp ule i64 %i.auc, %i.akf
  %i.aud = icmp ult i64 %i.akf, %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i94.i.i.i.i.i, i1 %i.aud, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.kt, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i

_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ks
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  %i.auf = load i64, ptr %i.aue, align 8, !alias.scope !31227, !noalias !31228, !noundef !41
  %i.aug = mul i64 %i.auf, %i.aol
  %.not.i.i.i.i.i.i.i.i.i.i95.i.i.i.i.i = icmp ult i64 %i.akf, %i.aug
  br i1 %.not.i.i.i.i.i.i.i.i.i.i95.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineINtNtBa_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtB1a_9visualize6stroke6StrokeNtNtB18_3abs3AbsEEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB3V_12GridLayouter20render_fills_strokess9_0QQQNCIB2_B11_B22_NCNCINvNtB3X_5lines22generate_line_segmentsNCB3Q_sc_0INtNtB6_9enumerate9EnumerateINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB3v_EEEINtNtB6_5chain5ChainIB7T_IB7T_INtB4_6FilterIB7m_B12_EB3O_EIB8n_B8z_NCB3Q_s8_0EEIB8n_B8z_NCB3Q_sa_0EEIB8n_B8z_NCB3Q_sb_0EEE00NCINvNtB6_3map8map_foldB11_B22_B22_NCB5I_s_0NCNCB5I_s0_00E0E0E0B3Z_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.kt

bb.kt:                                            ; preds = %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines22generate_line_segmentsNCNvMs_NtB8_8layouterNtB1i_12GridLayouter20render_fills_strokessc_0INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerate9EnumerateINtNtB2l_6copied6CopiedINtNtNtB2p_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEINtNtB2l_5chain5ChainIB4W_IB4W_INtNtB2l_6filter6FilterIB3E_NtNtNtB48_4grid7resolve4LineENCB1d_s9_0EIB5r_B5N_NCB1d_s8_0EEIB5r_B5N_NCB1d_sa_0EEIB5r_B5N_NCB1d_sb_0EEE00Ba_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_1
