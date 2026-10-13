Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RNvMNtCs7tN9tvpkfrg_12typst_layout10introspectNtB2_17PagedIntrospector3new:bb.a
  %.sroa.012.sroa.5.0 = phi ptr [ %.val35, %bb.dj ], [ %i.qb, %bb.dh ]
  %.sroa.012.sroa.0.0 = phi i64 [ %.val, %bb.dj ], [ %i.pz, %bb.dh ]
  %.sroa.012.sroa.7.0 = phi i64 [ undef, %bb.dj ], [ %.val27.i, %bb.dh ]
  store i64 %.sroa.012.sroa.0.0, ptr %i.j, align 8
  store ptr %.sroa.012.sroa.5.0, ptr %.sroa.012.sroa.5.0..sroa_idx20, align 8
  store i64 %.sroa.012.sroa.6.0, ptr %.sroa.012.sroa.6.0..sroa_idx22, align 8
  store i64 %.sroa.012.sroa.7.0, ptr %.sroa.012.sroa.7.0..sroa_idx24, align 8
  br label %bb.cn

bb.dj:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val35) ]
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0.0211, i64 88
  %i.qd = load i64, ptr %i.qc, align 8, !range !53, !noundef !41
  br label %bb.di

bb.dk:                                            ; preds = %._crit_edge270, %bb.cn
  %i.qe = phi ptr [ %.pre, %._crit_edge270 ], [ %i.ot, %bb.cn ] ; 2 uses
  %i.qf = getelementptr inbounds nuw [40 x i8], ptr %i.qe, i64 %i.ou
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.qf, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !20369
  %i.qg = add i64 %i.ou, 1                        ; 2 uses
  store i64 %i.qg, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.0.0211, i64 112
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qh)
          to label %bb.dl unwind label %.loopexit

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.qi = load i64, ptr %i.ai, align 8, !alias.scope !20373, !noalias !20374, !noundef !41 ; 3 uses
  %i.qj = load i64, ptr %i.l, align 8, !range !45, !alias.scope !20373, !noalias !20374, !noundef !41
  %i.qk = icmp eq i64 %i.qi, %i.qj
  br i1 %i.qk, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.dp unwind label %bb.dn, !noalias !20374

bb.dn:                                            ; preds = %bb.dm
  %i.ql = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.dr unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.qm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.dp:                                            ; preds = %bb.dm, %bb.dl
  %i.qn = load ptr, ptr %i.ah, align 8, !alias.scope !20373, !noalias !20374, !nonnull !41, !noundef !41
  %i.qo = getelementptr inbounds nuw [24 x i8], ptr %i.qn, i64 %i.qi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.qp = add i64 %i.qi, 1
  store i64 %i.qp, ptr %i.ai, align 8, !alias.scope !20373, !noalias !20374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store double 1.000000e+00, ptr %i.h, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.am, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.k, ptr %i.g, align 8
  invoke fastcc void @_RINvMs1_NtCs7tN9tvpkfrg_12typst_layout10introspectNtB6_24PagedIntrospectorBuilder14discover_frameNCNvMB6_NtB6_17PagedIntrospector3new0EB8_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.0211, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef align 8 dereferenceable(8) %i.g)
          to label %bb.dq unwind label %.loopexit

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.qq = icmp eq ptr %i.ov, %i.aj
  br i1 %i.qq, label %._crit_edge.loopexit, label %bb.cl

bb.dr:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.cq, %bb.cp, %bb.df, %bb.dn
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.px, %bb.df ], [ %i.ql, %bb.dn ], [ %i.pc, %bb.cp ], [ %i.pc, %bb.cq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #54
          to label %bb.dt unwind label %bb.ds

bb.ds:                                            ; preds = %bb.d, %bb.du, %bb.dt, %bb.dr
  %i.qr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.dt:                                            ; preds = %bb.h, %bb.dr
  %.pn.ph = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.dr ], [ %i.ag, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #54
          to label %bb.du unwind label %bb.ds

bb.du:                                            ; preds = %bb.f, %bb.dt
  %.pn32.ph = phi { ptr, i32 } [ %.pn.ph, %bb.dt ], [ %i.aa, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs7tN9tvpkfrg_12typst_layout10introspect24PagedIntrospectorBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.m) #54
          to label %.body unwind label %bb.ds

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body, %bb.d
  resume { ptr, i32 } %.pn32.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs7tN9tvpkfrg_12typst_layout10introspectNtB2_17PagedIntrospector8position(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i128 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20387)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !20387, !noundef !41
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = trunc i128 %2 to i64
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = lshr i128 %2, 64
  %i.h = trunc nuw i128 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411       ; 2 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20389)
  %i.l = lshr i64 %i.k, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !20390, !noalias !20391, !noundef !41 ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !alias.scope !20390, !noalias !20391, !nonnull !41, !noundef !41 ; 2 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ai, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.k, %bb.b ], [ %i.aj, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.o  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.s, align 1, !noalias !20392 ; 2 uses
  %i.t = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.r
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.ah, %bb.d ], [ %i.u, %bb.c ] ; 3 uses
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = add i64 %.sroa.01.0.i.i.i.i, %i.w
  %i.y = and i64 %i.x, %i.o
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %.val2.i.i.i.i = load i128, ptr %i.ab, align 16, !noalias !20393, !noundef !41
  %i.ac = icmp eq i128 %2, %.val2.i.i.i.i
  br i1 %i.ac, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.d, !prof !43

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.e, label %.loopexit, !prof !44

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.ah = and i16 %i.ag, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.aj = add i64 %.sroa.01.0.i.i.i.i, %i.ai
  br label %bb.c

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 -16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !41 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !41 ; 2 uses
  %i.ao = icmp ult i64 %i.al, %i.an
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #53
  unreachable

bb.g:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !41, !noundef !41
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.aq, i64 %i.al
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  br label %bb.h

.loopexit:                                        ; preds = %._crit_edge.i.i.i, %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(304) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext21layout_into_fragments(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = load i64, ptr %i.h, align 8, !range !70, !noundef !41 ; 5 uses
  %i.j = icmp eq i64 %i.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i64, ptr %i.m, align 8              ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.p, align 16
  store i64 -1, ptr %0, align 16
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  store i64 %i.i, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %i.q = icmp ult i64 %i.n, 30340039594917026
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.n, 1
  br i1 %i.r, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit, label %bb.d

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 304 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.i, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.s, ptr %i.v, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20405)
  store ptr %i.s, ptr %i.u, align 8, !alias.scope !20405, !noalias !20406
  %.sroa.0.0.copyload17 = load i64, ptr %i.l, align 16, !noalias !20405 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload17, -1
  br i1 %.not, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %bb.f, !prof !47

bb.d:                                             ; preds = %bb.c
  %.idx = mul nuw nsw i64 %i.n, 304
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMB1a_NtB1a_11MathContext20layout_into_fragment0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB15_NCB2Q_s_0E0E0B1c_.exit.backedge.i
  %i.x = phi ptr [ %i.y, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMB1a_NtB1a_11MathContext20layout_into_fragment0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB15_NCB2Q_s_0E0E0B1c_.exit.backedge.i ], [ %i.l, %bb.d ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 304 ; 2 uses
  %i.z = load i64, ptr %i.x, align 16, !range !95, !alias.scope !20407, !noalias !20408, !noundef !41 ; 2 uses
  %switch.selectcmp.i.i.i = icmp samesign ult i64 %i.z, 3
  br i1 %switch.selectcmp.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNCNvMB1g_NtB1g_11MathContext20layout_into_fragments_0E0B1i_.exit.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMB1a_NtB1a_11MathContext20layout_into_fragment0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB15_NCB2Q_s_0E0E0B1c_.exit.backedge.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNCNvMB1g_NtB1g_11MathContext20layout_into_fragments_0E0B1i_.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i64 %i.z, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.ab = load i8, ptr %i.aa, align 8, !range !54, !alias.scope !20407, !noalias !20408
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 288
  %i.ad = load i8, ptr %i.ac, align 16, !range !54, !alias.scope !20407, !noalias !20408
  %i.ae = xor i8 %i.ad, -1
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i, i8 %i.ab, i8 %i.ae
  %i.af = trunc i8 %.sroa.0.0.i.i.i.i to i1
  br i1 %i.af, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMB1a_NtB1a_11MathContext20layout_into_fragment0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB15_NCB2Q_s_0E0E0B1c_.exit.backedge.i, label %.loopexit

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMB1a_NtB1a_11MathContext20layout_into_fragment0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB15_NCB2Q_s_0E0E0B1c_.exit.backedge.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNCNvMB1g_NtB1g_11MathContext20layout_into_fragments_0E0B1i_.exit.i.i, %.lr.ph.i
  %.not14.i = icmp eq ptr %i.y, %i.w
  br i1 %.not14.i, label %.loopexit, label %.lr.ph.i

bb.e:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #54
          to label %.thread unwind label %bb.i

bb.f:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.4.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.6.0..sroa_idx18, i64 296, i1 false)
  store i64 %.sroa.0.0.copyload17, ptr %0, align 16
  %i.ah = icmp eq i64 %i.i, 0
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = mul nuw i64 %i.i, 304
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !20409
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #57
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.i:                                             ; preds = %bb.n, %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNCNvMB1g_NtB1g_11MathContext20layout_into_fragments_0E0B1i_.exit.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMB1a_NtB1a_11MathContext20layout_into_fragment0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB15_NCB2Q_s_0E0E0B1c_.exit.backedge.i, %bb.d
  %i.ak = phi i8 [ 1, %bb.d ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentNCNvMB1g_NtB1g_11MathContext20layout_into_fragments_0E0B1i_.exit.i.i ], [ 1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMB1a_NtB1a_11MathContext20layout_into_fragment0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB15_NCB2Q_s_0E0E0B1c_.exit.backedge.i ]
  %i.al = load i64, ptr %2, align 16, !range !95, !noundef !41
  %i.am = icmp samesign ult i64 %i.al, 2
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 16 dereferenceable(24) %i.an, i64 24, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  invoke void @_RNvMs2_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_14MathProperties7default(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 1)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXNtNtCs7tN9tvpkfrg_12typst_layout4math3runINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB4_8fragment12MathFragmentENtB2_16MathFragmentsExt10into_frame(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 45
  %.val15 = load i8, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 46
  %.val16 = load i8, ptr %i.ap, align 2
  call fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.b, i8 %.val15, i8 %.val16, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.d)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  %i.as = load i8, ptr %i.ar, align 2, !range !136, !noundef !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.au = load i8, ptr %i.at, align 1, !range !116, !noundef !41
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 2, ptr %0, align 16
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.423.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load <2 x double>, ptr %i.aq, align 8
  store <2 x double> %i.ax, ptr %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx, align 8
  %.sroa.423.sroa.6.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = load <2 x double>, ptr %i.av, align 8
  store <2 x double> %i.ay, ptr %.sroa.423.sroa.6.0..sroa.423.0..sroa_idx.sroa_idx, align 8
  %.sroa.423.sroa.8.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = load <2 x double>, ptr %i.aw, align 8
  store <2 x double> %i.az, ptr %.sroa.423.sroa.8.0..sroa.423.0..sroa_idx.sroa_idx, align 8
  %.sroa.423.sroa.10.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.ak, ptr %.sroa.423.sroa.10.0..sroa.423.0..sroa_idx.sroa_idx, align 8
  %.sroa.423.sroa.11.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.au, ptr %.sroa.423.sroa.11.0..sroa.423.0..sroa_idx.sroa_idx, align 1
  %.sroa.423.sroa.12.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 %i.as, ptr %.sroa.423.sroa.12.0..sroa.423.0..sroa_idx.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit, %bb.l
  ret void

.thread:                                          ; preds = %bb.e, %bb.n
  %.pn34 = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %lpad.thr_comm.split-lp, %bb.n ]
  resume { ptr, i32 } %.pn34

bb.n:                                             ; preds = %bb.k
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #54
          to label %.thread unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext21layout_into_fragments(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 16              ; 16 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !41 ; 6 uses
  %i.p = icmp ult i64 %i.o, 30340039594917026
  tail call void @llvm.assume(i1 %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20505)
  %i.q = load i64, ptr %2, align 16, !range !95, !alias.scope !20504, !noalias !20506, !noundef !41
  %i.r = icmp samesign ult i64 %i.q, 2            ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !20503
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = tail call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 0), !noalias !20507 ; 4 uses
  %.not.i.i9 = icmp eq ptr %i.t, null
  br i1 %.not.i.i9, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20508), !noalias !20509
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !20508, !noalias !20510, !nonnull !41, !noundef !41 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !20508, !noalias !20510, !nonnull !41, !align !46, !noundef !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !41, !noalias !20511, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20511
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !41, !noalias !20511, !nonnull !41
  call void %i.aa(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.u) #59, !noalias !20511, !inline_history !20420
  %i.ab = load i128, ptr %i.a, align 16, !noalias !20511, !noundef !41
  %i.ac = icmp eq i128 %i.ab, -38500432283079621391790251963343050286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20511
  br i1 %i.ac, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit11, label %bb.e, !prof !43

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t) #57, !noalias !20510
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.ad = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs1_NvNtCsdaEETE4DqmE_13typst_library4text1__NtBb_8TextElemINtNtNtNtBd_11foundations7content5field16SettablePropertyKh0_E5FIELDs_04LOCK, i64 24) acquire, align 8, !noalias !20512
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit11, label %bb.g, !prof !43

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtCsdaEETE4DqmE_13typst_library4text8FontListE10initializeNCINvB2_11get_or_initFEBT_E0zECs7tN9tvpkfrg_12typst_layout(), !noalias !20512
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit11

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit11: ; preds = %bb.d, %bb.f, %bb.g
  %.sroa.0.0.i10 = phi ptr [ %i.u, %bb.d ], [ @_RNvNCNvXs1_NvNtCsdaEETE4DqmE_13typst_library4text1__NtBb_8TextElemINtNtNtNtBd_11foundations7content5field16SettablePropertyKh0_E5FIELDs_04LOCK, %bb.f ], [ @_RNvNCNvXs1_NvNtCsdaEETE4DqmE_13typst_library4text1__NtBb_8TextElemINtNtNtNtBd_11foundations7content5field16SettablePropertyKh0_E5FIELDs_04LOCK, %bb.g ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = load i64, ptr %i.af, align 16, !range !113, !alias.scope !20504, !noalias !20506
  %i.ah = icmp eq i64 %i.ag, 0
  %or.cond.i = select i1 %i.r, i1 %i.ah, i1 false ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aj = load ptr, ptr %i.ai, align 16, !alias.scope !20504, !noalias !20506, !nonnull !41
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !20504, !noalias !20506
  %.sroa.04.0.i = select i1 %or.cond.i, ptr %i.aj, ptr %2 ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 144
  %.idx55 = select i1 %or.cond.i, i64 %i.am, i64 144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 %.idx55
  %i.ao = icmp samesign eq i64 %.idx55, 0
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i10, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.75.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.86.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.97.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 57
  %.sroa.108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 58
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.w
  %.sroa.03.0.i54 = phi ptr [ %.sroa.04.0.i, %.lr.ph ], [ %i.bc, %bb.w ] ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i54, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !20509
  %i.bd = load i64, ptr %.sroa.03.0.i54, align 16, !range !95, !noalias !20505, !noundef !41
  %i.be = icmp samesign ult i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i54, i64 112
  %.sink = select i1 %i.be, ptr %i.bf, ptr %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false), !noalias !41
  %i.bg = load ptr, ptr %i.m, align 8, !noalias !20509, !nonnull !41, !align !59, !noundef !41
  %i.bh = load i64, ptr %i.ap, align 8, !noalias !20509, !noundef !41
  %i.bi = load ptr, ptr %3, align 8, !alias.scope !20505, !noalias !20507, !nonnull !41, !align !59, !noundef !41
  %i.bj = load i64, ptr %i.aq, align 8, !alias.scope !20505, !noalias !20507, !noundef !41
  %i.bk = icmp eq ptr %i.bg, %i.bi
  %i.bl = icmp eq i64 %i.bh, %i.bj
  %i.bm = and i1 %i.bk, %i.bl
  br i1 %i.bm, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %i.ar, align 8, !noalias !20509, !align !46, !noundef !41 ; 2 uses
  %i.bo = load ptr, ptr %i.as, align 8, !alias.scope !20505, !noalias !20507, !align !46, !noundef !41 ; 2 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7tN9tvpkfrg_12typst_layout.exit, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bq = icmp eq ptr %i.bo, null
  br i1 %i.bq, label %_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7tN9tvpkfrg_12typst_layout.exit, label %bb.l

_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvYNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.thread6.i, %bb.j, %bb.q, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !20509
  %i.br = call fastcc { ptr, i64 } @_RNvNtCs7tN9tvpkfrg_12typst_layout4math15layout_realized(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %.sroa.03.0.i54, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !20505, !inline_history !20421 ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20509
  %.not33.i = icmp eq ptr %i.bs, null
  br i1 %.not33.i, label %bb.w, label %bb.v

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !20509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !20509
  %i.bt = call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 0), !noalias !20505 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !20513), !noalias !20505
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !20513, !noalias !20514, !nonnull !41, !noundef !41 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !20513, !noalias !20514, !nonnull !41, !align !46, !noundef !41
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !invariant.load !41, !noalias !20515, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20515
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !41, !noalias !20515, !nonnull !41
  call void %i.ca(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.bu) #59, !noalias !20515, !inline_history !20420
  %i.cb = load i128, ptr %i.b, align 16, !noalias !20515, !noundef !41
  %i.cc = icmp eq i128 %i.cb, -38500432283079621391790251963343050286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20515
  br i1 %i.cc, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.n, !prof !43

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bt) #57, !noalias !20514
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.cd = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs1_NvNtCsdaEETE4DqmE_13typst_library4text1__NtBb_8TextElemINtNtNtNtBd_11foundations7content5field16SettablePropertyKh0_E5FIELDs_04LOCK, i64 24) acquire, align 8, !noalias !20516
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.p, !prof !43

bb.p:                                             ; preds = %bb.o
  call fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtCsdaEETE4DqmE_13typst_library4text8FontListE10initializeNCINvB2_11get_or_initFEBT_E0zECs7tN9tvpkfrg_12typst_layout(), !noalias !20516
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.m, %bb.o, %bb.p
  %.sroa.0.0.i8 = phi ptr [ %i.bu, %bb.m ], [ @_RNvNCNvXs1_NvNtCsdaEETE4DqmE_13typst_library4text1__NtBb_8TextElemINtNtNtNtBd_11foundations7content5field16SettablePropertyKh0_E5FIELDs_04LOCK, %bb.o ], [ @_RNvNCNvXs1_NvNtCsdaEETE4DqmE_13typst_library4text1__NtBb_8TextElemINtNtNtNtBd_11foundations7content5field16SettablePropertyKh0_E5FIELDs_04LOCK, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20509
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !20505, !noundef !41 ; 3 uses
  %i.ch = load i64, ptr %i.at, align 8, !noalias !20505, !noundef !41
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7tN9tvpkfrg_12typst_layout.exit.thread

bb.q:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit
  %i.cj = load ptr, ptr %i.au, align 8, !noalias !20505, !nonnull !41, !noundef !41
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !20505, !nonnull !41, !noundef !41
  %i.cm = icmp eq i64 %i.cg, 0
  br i1 %i.cm, label %_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %_RNvYNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.thread6.i
  %.sroa.01.08.i = phi i64 [ %i.ed, %_RNvYNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCs7tN9tvpkfrg_12typst_layout.exit.thread6.i ], [ 0, %bb.q ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.cl, i64 %.sroa.01.08.i ; 7 uses
  %i.co = getelementptr inbounds nuw [56 x i8], ptr %i.cj, i64 %.sroa.01.08.i ; 7 uses
end_hunk_0
begin_hunk_1_@_RNvNtCs7tN9tvpkfrg_12typst_layout4math13layout_mathml:bb.a
  store i8 1, ptr %i.m, align 8, !alias.scope !34449, !noalias !34450
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !34449, !noalias !34450
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.k, ptr %i.n, align 8, !alias.scope !34449, !noalias !34450
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, i64 16, i1 false), !alias.scope !34451
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.p, align 8, !alias.scope !34449, !noalias !34450
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.q, align 8, !alias.scope !34449, !noalias !34450
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.r, align 8, !alias.scope !34449, !noalias !34450
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.s, align 8, !alias.scope !34449, !noalias !34450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.c) #59
  ret void

bb.f:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtCs7tN9tvpkfrg_12typst_layout4math15layout_external(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, i8 %.45.val, i8 %.46.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !41, !align !46, !noundef !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 16, !nonnull !41, !align !46, !noundef !41
  %i.j = load i128, ptr %0, align 16, !noundef !41
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !align !59, !noundef !41
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RNvNtCs7tN9tvpkfrg_12typst_layout4flow12layout_frame(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, i128 noundef %i.j, ptr noundef align 16 %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m)
  %i.n = load i64, ptr %i.d, align 8, !range !52, !noundef !41 ; 3 uses
  %i.o = icmp eq i64 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.n, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val26 = load i64, ptr %i.t, align 8, !noundef !41 ; 2 uses
  %.not.i = icmp eq i64 %.val26, 0
  br i1 %.not.i, label %bb.e, label %bb.g, !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34472
  call fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.u, i8 %.45.val, i8 %.46.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !34473)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 2, ptr %i.a, align 16, !alias.scope !34474, !noalias !34475
  call void @llvm.experimental.noalias.scope.decl(metadata !34476)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !34477, !noalias !34478, !noundef !41 ; 3 uses
  %i.y = load i64, ptr %i.v, align 8, !range !45, !alias.scope !34477, !noalias !34478, !noundef !41
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.j, label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.aa, align 8, !nonnull !41, !noundef !41
  %i.ab = getelementptr [8 x i8], ptr %.val, i64 %.val26
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8     ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 184 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  %i.ag = load atomic i32, ptr %i.af acquire, align 4, !noalias !34479
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.h, !prof !43

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.o

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.g, %bb.h
  %i.ai = load ptr, ptr %i.ae, align 8, !nonnull !41, !noundef !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.al = invoke noundef double @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library6layout2emNtB5_2EmNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %i.ak, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.an = load double, ptr %i.am, align 8, !noundef !41
  %i.ao = fmul double %i.an, 5.000000e-01         ; 2 uses
  %.inv = fcmp ord double %i.ao, 0.000000e+00
  %spec.store.select = select i1 %.inv, double %i.ao, double 0.000000e+00
  %i.ap = fadd double %i.al, %spec.store.select   ; 2 uses
  %.inv25 = fcmp ord double %i.ap, 0.000000e+00
  %spec.store.select1 = select i1 %.inv25, double %i.ap, double 0.000000e+00
  store i64 1, ptr %i.e, align 8
  store double %spec.store.select1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.m unwind label %bb.k, !noalias !34478

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.a) #54
          to label %.body.thread unwind label %bb.l, !noalias !34480

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !34480
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !34477, !noalias !34478, !nonnull !41, !noundef !41
  %i.au = getelementptr inbounds nuw [304 x i8], ptr %i.at, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.au, ptr noundef nonnull align 16 dereferenceable(304) %i.a, i64 304, i1 false), !noalias !34480
  %i.av = add i64 %i.x, 1
  store i64 %i.av, ptr %i.w, align 8, !alias.scope !34477, !noalias !34478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34472
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.b
  %.sroa.3.0 = phi i64 [ %i.s, %bb.b ], [ undef, %bb.m ]
  %.sroa.0.0 = phi ptr [ %i.q, %bb.b ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ax = insertvalue { ptr, i64 } %i.aw, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.ax

.body.thread:                                     ; preds = %bb.o, %bb.p, %bb.k
  %eh.lpad-body3 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.o ], [ %i.aq, %bb.k ], [ %lpad.thr_comm, %bb.p ]
  resume { ptr, i32 } %eh.lpad-body3

bb.o:                                             ; preds = %bb.e, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34481)
  call void @llvm.experimental.noalias.scope.decl(metadata !34482)
  call void @llvm.experimental.noalias.scope.decl(metadata !34483)
  %i.ay = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !34484, !nonnull !41, !noundef !41
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !34484
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.p, label %.body.thread

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx) #58
          to label %.body.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtCs7tN9tvpkfrg_12typst_layout4math15layout_realized(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 10 uses
  %i.b = alloca [304 x i8], align 16              ; 5 uses
  %i.c = alloca [304 x i8], align 16              ; 5 uses
  %i.d = alloca [304 x i8], align 16              ; 5 uses
  %i.e = alloca [304 x i8], align 16              ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [304 x i8], align 16             ; 12 uses
  %i.ad = alloca [48 x i8], align 8               ; 4 uses
  %i.ae = alloca [104 x i8], align 8              ; 7 uses
  %i.af = alloca [104 x i8], align 8              ; 12 uses
  %i.ag = alloca [304 x i8], align 16             ; 13 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 5 uses
  %.sroa.14 = alloca [160 x i8], align 8          ; 5 uses
  %.sroa.15 = alloca [32 x i8], align 16          ; 5 uses
  %i.ah = alloca [48 x i8], align 8               ; 4 uses
  %i.ai = alloca [104 x i8], align 8              ; 4 uses
  %i.aj = alloca [40 x i8], align 8               ; 5 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [48 x i8], align 8               ; 9 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = load i64, ptr %0, align 16, !range !95, !noundef !41 ; 2 uses
  %i.ao = tail call i64 @llvm.usub.sat.i64(i64 %i.an, i64 1)
  switch i64 %i.ao, label %default.unreachable285 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.g
    i64 3, label %bb.m
  ]

default.unreachable285:                           ; preds = %bb.o, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ap = trunc nuw i64 %i.an to i1
  br i1 %i.ap, label %bb.n, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !noundef !41
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load double, ptr %i.as, align 16, !noundef !41
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load double, ptr %i.au, align 8, !noundef !41
  %i.aw = fmul double %i.at, %i.av                ; 2 uses
  %i.ax = tail call double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp one double %i.ax, +inf
  %spec.store.select6 = select i1 %i.ay, double %i.aw, double 0.000000e+00
  %i.az = fadd double %i.ar, %spec.store.select6  ; 2 uses
  %.inv = fcmp ord double %i.az, 0.000000e+00
  %spec.store.select5 = select i1 %.inv, double %i.az, double 0.000000e+00 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34558)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !34559
  store i64 3, ptr %i.e, align 16, !alias.scope !34560, !noalias !34558
  %.sroa.5.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %spec.store.select5, ptr %.sroa.5.0..sroa_idx205, align 8, !alias.scope !34560, !noalias !34558
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34561)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !34562, !noalias !34563, !noundef !41 ; 3 uses
  %i.bd = load i64, ptr %i.ba, align 8, !range !45, !alias.scope !34562, !noalias !34563, !noundef !41
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.d, label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit unwind label %bb.e, !noalias !34563

bb.e:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.e) #54
          to label %common.resume unwind label %bb.f, !noalias !34564

bb.f:                                             ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !34564
  unreachable

common.resume:                                    ; preds = %bb.bx, %bb.bq, %bb.ba, %bb.az, %bb.s, %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.jl, %bb.bq ], [ %i.bf, %bb.e ], [ %i.cc, %bb.k ], [ %i.df, %bb.s ], [ %lpad.thr_comm, %bb.az ], [ %i.kd, %bb.bx ], [ %lpad.thr_comm, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit: ; preds = %bb.c, %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !34562, !noalias !34563, !nonnull !41, !noundef !41
  %i.bj = getelementptr inbounds nuw [304 x i8], ptr %i.bi, i64 %i.bc ; 2 uses
  store i64 3, ptr %i.bj, align 16, !noalias !34558
  %.sroa.5.0..sroa_idx206 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store double %spec.store.select5, ptr %.sroa.5.0..sroa_idx206, align 8, !noalias !34558
  %i.bk = add i64 %i.bc, 1
  store i64 %i.bk, ptr %i.bb, align 8, !alias.scope !34562, !noalias !34563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !34559
  br label %bb.bs

bb.g:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val183 = load i64, ptr %i.bl, align 8, !noundef !41 ; 2 uses
  %.not.i = icmp eq i64 %.val183, 0
  br i1 %.not.i, label %bb.h, label %_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext4font.exit, !prof !44

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
  unreachable

_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext4font.exit: ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val182 = load ptr, ptr %i.bm, align 8, !nonnull !41, !noundef !41
  %i.bn = getelementptr [8 x i8], ptr %.val182, i64 %.val183
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8     ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 184 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 192
  %i.bs = load atomic i32, ptr %i.br acquire, align 4, !noalias !34565
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.i, !prof !43

bb.i:                                             ; preds = %_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext4font.exit
  tail call fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bo)
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext4font.exit, %bb.i
  %i.bu = load ptr, ptr %i.bq, align 8, !nonnull !41, !noundef !41
  %i.bv = load double, ptr %i.bu, align 8, !noundef !41
  %i.bw = tail call noundef double @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library6layout2emNtB5_2EmNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %i.bv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34566)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34567
  store i64 3, ptr %i.d, align 16, !alias.scope !34568, !noalias !34566
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.bw, ptr %.sroa.5211.0..sroa_idx, align 8, !alias.scope !34568, !noalias !34566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34569)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !34570, !noalias !34571, !noundef !41 ; 3 uses
  %i.ca = load i64, ptr %i.bx, align 8, !range !45, !alias.scope !34570, !noalias !34571, !noundef !41
  %i.cb = icmp eq i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.j, label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit194

bb.j:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit194 unwind label %bb.k, !noalias !34571

bb.k:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.d) #54
          to label %common.resume unwind label %bb.l, !noalias !34572

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !34572
  unreachable

_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit194: ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !34570, !noalias !34571, !nonnull !41, !noundef !41
  %i.cg = getelementptr inbounds nuw [304 x i8], ptr %i.cf, i64 %i.bz ; 2 uses
  store i64 3, ptr %i.cg, align 16, !noalias !34566
  %.sroa.5211.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store double %i.bw, ptr %.sroa.5211.0..sroa_idx212, align 8, !noalias !34566
  %i.ch = add i64 %i.bz, 1
  store i64 %i.ch, ptr %i.by, align 8, !alias.scope !34570, !noalias !34571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34567
  br label %bb.bs

bb.m:                                             ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load i8, ptr %i.ci, align 16, !range !54, !noundef !41
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.bt, label %bb.bu

bb.n:                                             ; preds = %bb.b
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load double, ptr %i.cl, align 8, !noundef !41 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.co = load i8, ptr %i.cn, align 1, !range !54, !noundef !41
end_hunk_1
begin_hunk_2_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run11measure_row:bb.a
  %.sink.i.i.i = phi i1 [ %i.o, %.thread.i.i.i ], [ %i.r, %.thread4.i.i.i ]
  %spec.select.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select.v.sink.i.i.i
  %.sroa.0.0.i.i.i = load double, ptr %spec.select.i.i.i, align 8, !alias.scope !42901, !noalias !42902
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink16.i.i.i
  %i.t = load double, ptr %i.s, align 8, !alias.scope !42903, !noalias !42902, !noundef !41 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink14.i.i.i
  %i.v = load double, ptr %i.u, align 8, !alias.scope !42903, !noalias !42902
  %.sroa.022.0.i.i.i.i = select i1 %.sink.i.i.i, double %i.v, double %i.t ; 2 uses
  %i.w = fneg double %.sroa.022.0.i.i.i.i
  %i.x = fcmp uno double %.sroa.022.0.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.x, double 0.000000e+00, double %i.w
  %i.y = fadd double %i.t, %spec.store.select.i.i.i.i ; 2 uses
  %.inv23.i.i.i.i = fcmp ord double %i.y, 0.000000e+00
  %spec.store.select1.i.i.i.i = select i1 %.inv23.i.i.i.i, double %i.y, double 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i
  %.sroa.7.0.ph.i = phi double [ %spec.store.select1.i.i.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i ], [ 0.000000e+00, %.loopexit.i.i ] ; 2 uses
  %.sroa.5.0.ph.i = phi double [ %.sroa.0.0.i.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i ], [ 0.000000e+00, %.loopexit.i.i ] ; 2 uses
  %i.z = icmp eq ptr %i.l, %i.h
  br i1 %i.z, label %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = ptrtoint ptr %i.h to i64
  %i.ab = ptrtoint ptr %i.l to i64
  %i.ac = sub nuw i64 %i.aa, %i.ab
  %i.ad = udiv exact i64 %i.ac, 304
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i, %bb.d
  %.sroa.05.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.au, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.i.i.i.i.i.i.i.i = phi double [ %.sroa.7.0.ph.i, %bb.d ], [ %.pn1.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i = phi double [ %.sroa.5.0.ph.i, %bb.d ], [ %.pn3.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [304 x i8], ptr %i.l, i64 %.sroa.05.0.i.i.i.i.i.i.i.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42905)
  %i.af = load i64, ptr %i.ae, align 16, !range !95, !alias.scope !42906, !noalias !42907, !noundef !41 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.af, 4
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42908)
  %i.ag = tail call i64 @llvm.usub.sat.i64(i64 %i.af, i64 1)
  switch i64 %i.ag, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %.thread4.i.i.i.i.i.i.i.i.i.i.i.i
  ]

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.f
  %i.ah = trunc nuw i64 %i.af to i1               ; 2 uses
  %spec.select.v.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ah, i64 8, i64 72
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

.thread4.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !49, !alias.scope !42909, !noalias !42907, !noundef !41
  %i.ak = trunc nuw i64 %i.aj to i1               ; 2 uses
  %spec.select6.v.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ak, i64 16, i64 40
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread4.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %spec.select.v.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.v.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %spec.select6.v.i.i.i.i.i.i.i.i.i.i.i.i, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink16.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 72, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ 40, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink14.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ 16, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.ah, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ak, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i ]
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 %spec.select.v.sink.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !42909, !noalias !42907
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sink16.i.i.i.i.i.i.i.i.i.i.i.i
  %i.am = load double, ptr %i.al, align 8, !alias.scope !42910, !noalias !42907, !noundef !41 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sink14.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ao = load double, ptr %i.an, align 8, !alias.scope !42910, !noalias !42907
  %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.sink.i.i.i.i.i.i.i.i.i.i.i.i, double %i.ao, double %i.am ; 2 uses
  %i.ap = fneg double %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = fcmp uno double %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.aq, double 0.000000e+00, double %i.ap
  %i.ar = fadd double %i.am, %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.inv23.i.i.i.i.i.i.i.i.i.i.i.i.i = fcmp ord double %i.ar, 0.000000e+00
  %spec.store.select1.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.inv23.i.i.i.i.i.i.i.i.i.i.i.i.i, double %i.ar, double 0.000000e+00
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %.sroa.0.13.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.f ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.f ], [ %spec.store.select1.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.as = tail call noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.02.0.i.i.i.i.i.i.i.i, double noundef %.sroa.0.13.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !42911
  %i.at = tail call noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.6.0.i.i.i.i.i.i.i.i, double noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !42911
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.pn3.i.i.i.i.i.i.i.i.i.i = phi double [ %i.as, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %.pn1.i.i.i.i.i.i.i.i.i.i = phi double [ %i.at, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.0.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.au = add nuw i64 %.sroa.05.0.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.ad
  br i1 %i.av, label %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i, label %bb.e

_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.8.0.i.i.i.i.i.i = phi double [ %.sroa.7.0.ph.i, %bb.c ], [ %.pn1.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi double [ %.sroa.5.0.ph.i, %bb.c ], [ %.pn3.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aw = icmp eq ptr %i.e, %i.a
  br i1 %i.aw, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEIB1C_B2y_ENCNvNtB2C_3run11measure_row0ENCB3M_s_0ENCB3M_s0_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB3M_s1_0EB2E_.exit, label %bb.g

bb.g:                                             ; preds = %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i
  %i.ax = ptrtoint ptr %i.a to i64
  %i.ay = ptrtoint ptr %i.e to i64
  %i.az = sub nuw i64 %i.ax, %i.ay
  %i.ba = udiv exact i64 %i.az, 24
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.05.0.i.i20.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.bx, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.i.i21.i.i.i.i.i.i = phi double [ %.sroa.8.0.i.i.i.i.i.i, %bb.g ], [ %.pn14.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i22.i.i.i.i.i.i = phi double [ %.sroa.0.0.i.i.i.i.i.i, %bb.g ], [ %.pn16.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.05.0.i.i20.i.i.i.i.i.i ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !noalias !42907, !nonnull !41, !noundef !41
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  %.val14.i.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 8, !noalias !42907, !noundef !41 ; 2 uses
  %i.be = icmp eq i64 %.val14.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.h, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.h ] ; 2 uses
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.pn1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.0.i.i21.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.pn3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i22.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [304 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42913)
  %i.bg = load i64, ptr %i.bf, align 16, !range !95, !alias.scope !42914, !noalias !42907, !noundef !41 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bg, 4
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42915)
  %i.bh = tail call i64 @llvm.usub.sat.i64(i64 %i.bg, i64 1)
  switch i64 %i.bh, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.i
  %i.bi = trunc nuw i64 %i.bg to i1               ; 2 uses
  %spec.select.v.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, i64 8, i64 72
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !49, !alias.scope !42916, !noalias !42907, !noundef !41
  %i.bl = trunc nuw i64 %i.bk to i1               ; 2 uses
  %spec.select6.v.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bl, i64 16, i64 40
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %spec.select.v.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.v.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %spec.select6.v.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 72, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 40, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 16, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.bi, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bl, %.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 %spec.select.v.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load double, ptr %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !42916, !noalias !42907
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sink16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = load double, ptr %i.bm, align 8, !alias.scope !42917, !noalias !42907, !noundef !41 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sink14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = load double, ptr %i.bo, align 8, !alias.scope !42917, !noalias !42907
  %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, double %i.bp, double %i.bn ; 2 uses
  %i.bq = fneg double %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.br = fcmp uno double %.sroa.022.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.br, double 0.000000e+00, double %i.bq
  %i.bs = fadd double %i.bn, %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.inv23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = fcmp ord double %i.bs, 0.000000e+00
  %spec.store.select1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.inv23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, double %i.bs, double 0.000000e+00
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.sroa.0.13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.i ], [ %spec.store.select1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bt = tail call noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i, double noundef %.sroa.0.13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !42918
  %i.bu = tail call noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i, double noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !42918
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i
  %.pn3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bt, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pn1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bu, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB1W_EB1V_NCNvNtBZ_3run11measure_rows0_0NCB2V_s1_0E0B11_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bv = add nuw i64 %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, %.val14.i.i.i.i.i.i.i.i
  br i1 %i.bw, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.pn16.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.sroa.02.0.i.i22.i.i.i.i.i.i, %bb.h ], [ %.pn3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pn14.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.sroa.6.0.i.i21.i.i.i.i.i.i, %bb.h ], [ %.pn1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter11filter_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2C_ENCNvNtB1F_3run11measure_rows_0NCINvNtBV_3map8map_foldB1A_B2B_B2B_NCB3x_s0_0NCB3x_s1_0E0E0INtB7_5FnMutTB2B_B1A_EE8call_mutB1H_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bx = add nuw i64 %.sroa.05.0.i.i20.i.i.i.i.i.i, 1 ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.ba
  br i1 %i.by, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEIB1C_B2y_ENCNvNtB2C_3run11measure_row0ENCB3M_s_0ENCB3M_s0_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB3M_s1_0EB2E_.exit, label %bb.h

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6filter6FilterINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEIB1C_B2y_ENCNvNtB2C_3run11measure_row0ENCB3M_s_0ENCB3M_s0_0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB3M_s1_0EB2E_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1x_EuINtNtNtBa_3ops12control_flow11ControlFlowRB1x_ENCNvNtB1B_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4s_13FlattenCompatppE13iter_try_fold7flattenB2y_uB34_NCINvNvXsi_B4s_B4F_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2y_uB34_NCINvNvB5T_4find5checkB3J_QNCB3R_s_0E0E0E0E0B1D_.exit.loopexit.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i, %bb.a, %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i
  %.sroa.3.0 = phi double [ 0.000000e+00, %bb.a ], [ %.sroa.8.0.i.i.i.i.i.i, %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i ], [ %.pn14.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i ], [ 0.000000e+00, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1x_EuINtNtNtBa_3ops12control_flow11ControlFlowRB1x_ENCNvNtB1B_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4s_13FlattenCompatppE13iter_try_fold7flattenB2y_uB34_NCINvNvXsi_B4s_B4F_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2y_uB34_NCINvNvB5T_4find5checkB3J_QNCB3R_s_0E0E0E0E0B1D_.exit.loopexit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0 = phi double [ 0.000000e+00, %bb.a ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB3w_ENCINvNtBc_6filter11filter_foldRB2u_B3v_NCNvNtB2y_3run11measure_rows_0NCINvNtBc_3map8map_foldB4T_B3v_B3v_NCB54_s0_0NCB54_s1_0E0E0E0B2A_.exit.i.i.i.i.i.i ], [ %.pn16.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1s_ETNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB2Z_ENCNvNtB1w_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenB2t_B2Y_NCINvNvXsi_B4v_B4I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB2t_B2Y_NCINvNtB6_6filter11filter_foldRB1s_B2Y_NCB3U_s_0NCIB2_B7d_B2Y_B2Y_NCB3U_s0_0NCB3U_s1_0E0E0E0E0E0B1y_.exit.i.i.i.i.i.i.i.i ], [ 0.000000e+00, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEINtNtNtBa_5slice4iter4IterB1x_EuINtNtNtBa_3ops12control_flow11ControlFlowRB1x_ENCNvNtB1B_3run11measure_row0NCINvNvMsg_NtB6_7flattenINtB4s_13FlattenCompatppE13iter_try_fold7flattenB2y_uB34_NCINvNvXsi_B4s_B4F_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB2y_uB34_NCINvNvB5T_4find5checkB3J_QNCB3R_s_0E0E0E0E0B1D_.exit.loopexit.i.i.i.i.i.i.i.i.i.i ]
  %i.bz = insertvalue { double, double } poison, double %.sroa.0.0, 0
  %i.ca = insertvalue { double, double } %i.bz, double %.sroa.3.0, 1
  ret { double, double } %i.ca
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.45.i.i.i.i = alloca [40 x i8], align 8   ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [56 x i8], align 8                ; 13 uses
  %i.h = alloca [16 x i8], align 16               ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [1 x i8], align 1                 ; 5 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [16 x i8], align 16               ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.080 = alloca [24 x i8], align 8          ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !41 ; 4 uses
  %i.w = icmp ult i64 %i.v, 384307168202282326
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not = icmp eq i64 %i.v, 0
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !41 ; 3 uses
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit: ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %.val.i = load i64, ptr %i.z, align 8, !alias.scope !43011, !noundef !41 ; 8 uses
  %i.aa = icmp ult i64 %.val.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %.val.i, 0
  br i1 %i.ab, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit.thread: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx70, align 8
  %.sroa.5.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx71, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit52

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline0EB25_.exit
  %i.ac = shl nuw nsw i64 %.val.i, 3              ; 6 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !43012
  %i.ad = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 17) 8) #56, !noalias !43012 ; 9 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ac) #57, !noalias !43013
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  %.not113 = icmp eq i64 %.val.i, 1
  br i1 %.not113, label %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.af = add nsw i64 %i.ac, -8                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %i.af, i1 false), !noalias !43014
  %scevgep.i = getelementptr i8, ptr %i.ad, i64 %i.af
  br label %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit

_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.lr.ph.i.preheader.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.0.lcssa29.i.i = phi ptr [ %scevgep.i, %.lr.ph.i.preheader.i ], [ %i.ad, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  store double 0.000000e+00, ptr %.sroa.0.0.lcssa29.i.i, align 8, !noalias !43014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ag = mul nuw nsw i64 %i.v, 24                ; 3 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !43015
  %i.ah = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43015 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.c, label %.lr.ph

.body:                                            ; preds = %.thread, %bb.af, %bb.ag, %bb.bi, %bb.i, %bb.h, %.body.thread
  %.pn37111 = phi { ptr, i32 } [ %i.aj, %.body.thread ], [ %.pn.pn.i, %bb.af ], [ %.pn95, %.thread ], [ %i.bf, %bb.h ], [ %i.he, %bb.bi ], [ %.pn.pn.i, %bb.ag ], [ %i.bf, %bb.i ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43016
  resume { ptr, i32 } %.pn37111

.body.thread:                                     ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ag) #57
          to label %bb.v unwind label %.body.thread

.lr.ph:                                           ; preds = %_RINvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_elemNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit
  store i64 %i.v, ptr %i.t, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  store ptr %i.ah, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ag
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %i.an = phi ptr [ %i.ah, %.lr.ph ], [ %i.bt, %bb.p ]
  %.val1.i47 = phi i64 [ 0, %.lr.ph ], [ %i.bv, %bb.p ] ; 4 uses
  %.sroa.01.0137 = phi ptr [ %i.y, %.lr.ph ], [ %i.ao, %bb.p ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.01.0137, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run18layout_aligned_row(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.0137, ptr noalias nofree noundef align 8 dereferenceable(80) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3)
          to label %bb.f unwind label %.thread96.loopexit

._crit_edge:                                      ; preds = %bb.p
  %i.ap = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 6)
          to label %.noexc unwind label %.thread96.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %._crit_edge
  %.not.i.i42 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i42, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.thread, label %bb.e

bb.e:                                             ; preds = %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43017)
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !43017, !noalias !43018, !nonnull !41, !noundef !41 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !43017, !noalias !43018, !nonnull !41, !align !46, !noundef !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !41, !noalias !43019, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !43019
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !41, !noalias !43019, !nonnull !41
  invoke void %i.aw(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull %i.aq) #59
          to label %.noexc44 unwind label %.thread96.loopexit.split-lp, !inline_history !34

.noexc44:                                         ; preds = %bb.e
  %i.ax = load i128, ptr %i.n, align 16, !noalias !43019, !noundef !41
  %i.ay = icmp eq i128 %i.ax, 149776027455858313211364231028671503831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !43019
  br i1 %i.ay, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit, label %.invoke, !prof !43

.thread96.loopexit:                               ; preds = %bb.d
  %lpad.loopexit115 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread96.loopexit.split-lp:                      ; preds = %.invoke, %bb.ab, %bb.z, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.thread, %bb.e, %._crit_edge, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout5align9AlignElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit, %bb.ac, %bb.y
  %lpad.loopexit.split-lp116 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.az = load i64, ptr %i.s, align 8, !range !70, !noundef !41 ; 2 uses
  %i.ba = icmp eq i64 %i.az, -1
  %i.bb = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !nonnull !41, !noundef !41 ; 4 uses
  %i.bc = load i64, ptr %.sroa.525.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.ba, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bc, ptr %i.be, align 8
  store i64 -1, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43020)
  %.val.i46 = load ptr, ptr %i.ak, align 8, !alias.scope !43020, !nonnull !41, !noundef !41 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VecIBD_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1j_(ptr noalias nofree noundef nonnull readonly align 8 %.val.i46, i64 noundef %.val1.i47)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_IBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_.exit.i unwind label %bb.h, !noalias !43020

bb.h:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i = load i64, ptr %i.t, align 8, !range !45, !alias.scope !43020, !noundef !41 ; 2 uses
  %i.bg = icmp eq i64 %.val4.i, 0
  br i1 %i.bg, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = mul nuw i64 %.val4.i, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i46, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43020
  br label %.body

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_IBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_.exit.i: ; preds = %bb.g
  %.val2.i = load i64, ptr %i.t, align 8, !range !45, !alias.scope !43020, !noundef !41 ; 2 uses
  %i.bi = icmp eq i64 %.val2.i, 0
  br i1 %i.bi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_IBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEEB1m_.exit, label %bb.j

bb.j:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_IBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_.exit.i
  %i.bj = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i46, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43020
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_IBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEEB1m_.exit

bb.k:                                             ; preds = %bb.f
  store i64 %i.az, ptr %i.r, align 8
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %i.bc, ptr %.sroa.5.0..sroa_idx, align 8
  %.idx = mul nuw nsw i64 %i.bc, 24
end_hunk_2
begin_hunk_3_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline:bb.a
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3map3MapIB1m_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1L_3VecIB2v_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENCNvNtB2O_3run16layout_multilines0_0ENCINvB3R_10stack_rowsB1B_E0EEEB2Q_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fr = load ptr, ptr %i.g, align 8, !alias.scope !43057, !noalias !43032, !nonnull !41, !noundef !41
  %i.fs = mul nuw i64 %i.fp, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fr, i64 noundef %i.fs, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43056
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3map3MapIB1m_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1L_3VecIB2v_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENCNvNtB2O_3run16layout_multilines0_0ENCINvB3R_10stack_rowsB1B_E0EEEB2Q_.exit.i

.body56.i:                                        ; preds = %bb.ap, %bb.ao, %.body.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.fi, %bb.ao ], [ %i.fi, %bb.ap ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtB1d_5point5PointEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #54
          to label %bb.af unwind label %bb.bh, !noalias !43032

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3map3MapIB1m_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1L_3VecIB2v_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENCNvNtB2O_3run16layout_multilines0_0ENCINvB3R_10stack_rowsB1B_E0EEEB2Q_.exit.i: ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !43032
  %i.ft = load <2 x double>, ptr %i.h, align 16, !noalias !43032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.080, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !43058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !43032
  call void @llvm.experimental.noalias.scope.decl(metadata !43059)
  %.val.i58.i = load i64, ptr %i.k, align 8, !range !45, !alias.scope !43059, !noalias !43032, !noundef !41 ; 2 uses
  %i.fu = icmp eq i64 %.val.i58.i, 0
  br i1 %i.fu, label %bb.bj, label %bb.as

bb.as:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3map3MapIB1m_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1L_3VecIB2v_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENCNvNtB2O_3run16layout_multilines0_0ENCINvB3R_10stack_rowsB1B_E0EEEB2Q_.exit.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i59.i = load ptr, ptr %i.fv, align 8, !alias.scope !43059, !noalias !43032, !nonnull !41, !noundef !41
  %i.fw = shl nuw i64 %.val.i58.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i59.i, i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43060
  br label %bb.bj

bb.at:                                            ; preds = %bb.au, %bb.am
  %i.fx = phi double [ %spec.store.select1.i, %bb.au ], [ %.pre.i, %bb.am ]
  %i.fy = fadd double %i.ex, %i.fx                ; 2 uses
  %.inv47.i = fcmp ord double %i.fy, 0.000000e+00
  %spec.store.select.i63 = select i1 %.inv47.i, double %i.fy, double 0.000000e+00
  %i.fz = load double, ptr %i.ek, align 8, !noalias !43032, !noundef !41
  %i.ga = trunc nuw i64 %.sroa.0.0.copyload1.i.i to i1
  %i.gb = load double, ptr %.sroa.9.8..sroa_idx.i, align 8, !noalias !43032
  %.sroa.043.0.i = select i1 %i.ga, double %i.gb, double %i.fz ; 2 uses
  %i.gc = fneg double %.sroa.043.0.i
  %i.gd = fcmp uno double %.sroa.043.0.i, 0.000000e+00
  %spec.store.select2.i = select i1 %i.gd, double 0.000000e+00, double %i.gc
  %i.ge = fadd double %spec.store.select.i63, %spec.store.select2.i ; 2 uses
  %.inv48.i = fcmp ord double %i.ge, 0.000000e+00
  %spec.store.select3.i = select i1 %.inv48.i, double %i.ge, double 0.000000e+00
  %.pre128.i = load double, ptr %i.ej, align 8, !noalias !43032 ; 3 uses
  br i1 %.not.i60, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.am
  %i.gf = fadd double %.sroa.016.0, %.pre.i       ; 2 uses
  %.inv.i62 = fcmp ord double %i.gf, 0.000000e+00
  %spec.store.select1.i = select i1 %.inv.i62, double %i.gf, double 0.000000e+00 ; 2 uses
  store double %spec.store.select1.i, ptr %i.dy, align 8, !noalias !43032
  br label %bb.at

bb.av:                                            ; preds = %bb.at
  %i.gg = fneg double %.pre128.i
  %i.gh = fcmp uno double %.pre128.i, 0.000000e+00
  %spec.store.select4.i = select i1 %i.gh, double 0.000000e+00, double %i.gg
  %i.gi = fadd double %i.ds, %spec.store.select4.i ; 2 uses
  %.inv49.i = fcmp ord double %i.gi, 0.000000e+00
  %spec.store.select5.i = select i1 %.inv49.i, double %i.gi, double 0.000000e+00 ; 2 uses
  switch i8 %i.dj, label %default.unreachable.i64 [
    i8 0, label %bb.ax
    i8 1, label %bb.ay
    i8 2, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.ay, %bb.ax, %bb.av, %bb.at
  %.sroa.09.0.i = phi double [ 0.000000e+00, %bb.at ], [ 0.000000e+00, %bb.ax ], [ %i.gj, %bb.ay ], [ %spec.store.select5.i, %bb.av ]
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, double noundef %.pre128.i)
          to label %bb.az unwind label %bb.bf, !noalias !43032

default.unreachable.i64:                          ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  br label %bb.aw

bb.ay:                                            ; preds = %bb.av
  %i.gj = fmul nnan double %spec.store.select5.i, 5.000000e-01
  br label %bb.aw

bb.az:                                            ; preds = %bb.aw
  %i.gk = fadd double %i.ex, %i.ey                ; 2 uses
  %.inv50.i = fcmp ord double %i.gk, 0.000000e+00
  %spec.store.select7.i = select i1 %.inv50.i, double %i.gk, double 0.000000e+00
  %i.gl = load double, ptr %i.dy, align 8, !noalias !43032, !noundef !41
  %i.gm = fadd double %spec.store.select7.i, %i.gl ; 2 uses
  %.inv51.i = fcmp ord double %i.gm, 0.000000e+00
  %spec.store.select8.i = select i1 %.inv51.i, double %i.gm, double 0.000000e+00
  store double %spec.store.select8.i, ptr %i.dy, align 8, !noalias !43032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !43032
  store double %.sroa.09.0.i, ptr %i.el, align 8, !noalias !43032
  store double %spec.store.select3.i, ptr %i.em, align 8, !noalias !43032
  call void @llvm.experimental.noalias.scope.decl(metadata !43061)
  call void @llvm.experimental.noalias.scope.decl(metadata !43062)
  %i.gn = load i64, ptr %i.i, align 8, !range !45, !alias.scope !43061, !noalias !43063, !noundef !41
  %i.go = icmp eq i64 %i.eo, %i.gn
  br i1 %i.go, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtBR_5point5PointEE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %._crit_edge.i unwind label %bb.bb, !noalias !43063

._crit_edge.i:                                    ; preds = %bb.ba
  %.pre129.i = load ptr, ptr %i.dw, align 8, !alias.scope !43061, !noalias !43063
  br label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.eq, ptr %i.ec, align 8, !noalias !43032
  store i64 %i.fd, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !43032
  call void @llvm.experimental.noalias.scope.decl(metadata !43064)
  call void @llvm.experimental.noalias.scope.decl(metadata !43065)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43066)
  call void @llvm.experimental.noalias.scope.decl(metadata !43067)
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !43068, !noalias !43069, !nonnull !41, !noundef !41
  %i.gs = atomicrmw sub ptr %i.gr, i64 1 release, align 8, !noalias !43070
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.bc, label %.body.i

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gq) #58
          to label %.body.i unwind label %bb.bd, !noalias !43069

bb.bd:                                            ; preds = %bb.bc
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43069
  unreachable

bb.be:                                            ; preds = %._crit_edge.i, %bb.az
  %i.gv = phi ptr [ %.pre129.i, %._crit_edge.i ], [ %i.en, %bb.az ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [64 x i8], ptr %i.gv, i64 %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gw, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !43069
  store i64 %i.fd, ptr %i.dx, align 8, !alias.scope !43061, !noalias !43063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !43032
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.45.i.i.i.i)
  %i.gx = icmp eq ptr %i.eq, %i.eb
  br i1 %i.gx, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB15_3VecIB1P_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENCNvNtB28_3run16layout_multilines0_0ENCINvB3b_10stack_rowsBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.thread.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecIBX_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.i.i.i

bb.bf:                                            ; preds = %bb.aw
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.eq, ptr %i.ec, align 8, !noalias !43032
  store i64 %i.fd, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !43032
  call void @llvm.experimental.noalias.scope.decl(metadata !43071)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43072)
  call void @llvm.experimental.noalias.scope.decl(metadata !43073)
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !43074, !noalias !43032, !nonnull !41, !noundef !41
  %i.hb = atomicrmw sub ptr %i.ha, i64 1 release, align 8, !noalias !43075
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.bg, label %.body.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gz) #58
          to label %.body.i unwind label %bb.bh, !noalias !43032

bb.bh:                                            ; preds = %bb.bi, %bb.bg, %.body56.i, %.body.i
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43032
  unreachable

bb.bi:                                            ; preds = %bb.ae
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1e_3VecIB1Y_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENCNvNtB2h_3run16layout_multilines0_0EEB2j_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.q) #54
          to label %.body unwind label %bb.bh, !noalias !43036

bb.bj:                                            ; preds = %bb.as, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3map3MapIB1m_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1L_3VecIB2v_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENCNvNtB2O_3run16layout_multilines0_0ENCINvB3R_10stack_rowsB1B_E0EEEB2Q_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !43032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.080, i64 24, i1 false)
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %i.ft, ptr %.sroa.481.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43076
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit52

.thread:                                          ; preds = %.thread96.loopexit, %.thread96.loopexit.split-lp, %bb.n, %bb.w
  %.pn95 = phi { ptr, i32 } [ %i.br, %bb.n ], [ %lpad.phi, %bb.w ], [ %lpad.loopexit115, %.thread96.loopexit ], [ %lpad.loopexit.split-lp116, %.thread96.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_IBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEEB1m_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #54
          to label %.body unwind label %bb.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run18layout_aligned_row(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [304 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !41 ; 6 uses
  %i.i = icmp ult i64 %i.h, 64051194700380388
  tail call void @llvm.assume(i1 %i.i)
  %i.j = mul nuw nsw i64 %i.h, 24                 ; 2 uses
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %bb.a
  store i64 0, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.m, align 8
  br label %._crit_edge

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !43090
  %i.n = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43090 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.j) #57
  unreachable

.lr.ph:                                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  store i64 %i.h, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %.idx = mul nuw nsw i64 %i.h, 144
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

.body:                                            ; preds = %bb.l, %bb.z, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.z ], [ %i.v, %bb.c ], [ %i.ao, %bb.l ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #54
          to label %common.resume unwind label %bb.aa

bb.c:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %.lr.ph, %bb.y
  %i.w = phi ptr [ %i.n, %.lr.ph ], [ %i.bz, %bb.y ]
  %.val5.i = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.y ] ; 4 uses
  %.sroa.0.047 = phi ptr [ %i.s, %.lr.ph ], [ %i.x, %bb.y ] ; 2 uses
  %.sroa.8.046 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.y ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 144 ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.8.046, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext21layout_into_fragments(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 dereferenceable(80) %2, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %.sroa.0.047, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.c

._crit_edge:                                      ; preds = %bb.y, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_.exit: ; preds = %bb.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = load i64, ptr %i.e, align 8, !range !70, !noundef !41 ; 3 uses
  %i.aa = icmp eq i64 %i.z, -1
  %i.ab = load ptr, ptr %.sroa.417.0..sroa_idx, align 8 ; 3 uses
  %i.ac = load i64, ptr %.sroa.518.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.aa, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %i.ae, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !43091)
  %.val4.i = load ptr, ptr %i.p, align 8, !alias.scope !43091, !nonnull !41, !noundef !41 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 %.val4.i, i64 noundef %.val5.i)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i unwind label %bb.g, !noalias !43091

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.f, align 8, !range !45, !alias.scope !43091, !noundef !41 ; 2 uses
  %i.ag = icmp eq i64 %.val2.i, 0
  br i1 %i.ag, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = mul nuw i64 %.val2.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43091
  br label %common.resume

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i: ; preds = %bb.f
  %.val.i = load i64, ptr %i.f, align 8, !range !45, !alias.scope !43091, !noundef !41 ; 2 uses
  %i.ai = icmp eq i64 %.val.i, 0
  br i1 %i.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i
  %i.aj = mul nuw i64 %.val.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43091
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_.exit

common.resume:                                    ; preds = %.body, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.af, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.e
  store i64 %i.z, ptr %i.c, align 8
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ak = and i64 %.sroa.8.046, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.n, label %.thread41

.thread41:                                        ; preds = %bb.p, %bb.o, %bb.q, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16alignment_lspace0EB2G_.exit.i, %bb.n, %bb.x, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !43092)
  %i.am = load i64, ptr %i.f, align 8, !range !45, !alias.scope !43092, !noalias !43093, !noundef !41
  %i.an = icmp eq i64 %.val5.i, %i.am
  br i1 %i.an, label %bb.k, label %bb.y

bb.k:                                             ; preds = %.thread41
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEE8grow_oneB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %._crit_edge51 unwind label %bb.l, !noalias !43093

._crit_edge51:                                    ; preds = %bb.k
  %.pre52 = load ptr, ptr %i.p, align 8, !alias.scope !43092, !noalias !43093
  br label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.c) #54
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43094
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.aq = or disjoint i64 %.sroa.8.046, 1         ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.h
  br i1 %i.ar, label %bb.o, label %.thread41

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw [144 x i8], ptr %i.s, i64 %i.aq ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43095)
  %i.at = load i64, ptr %i.as, align 16, !range !95, !alias.scope !43095, !noundef !41
  %i.au = icmp samesign ult i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.aw = load i64, ptr %i.av, align 16, !range !113, !alias.scope !43095
  %i.ax = icmp eq i64 %i.aw, 0
  %or.cond.i22 = select i1 %i.au, i1 %i.ax, i1 false ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.az = load ptr, ptr %i.ay, align 16, !alias.scope !43095, !nonnull !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !43095
  %.sroa.05.0.i = select i1 %or.cond.i22, ptr %i.az, ptr %i.as ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 144
  %.idx78 = select i1 %or.cond.i22, i64 %i.bc, i64 144 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %.idx78
  %i.be = icmp samesign eq i64 %.idx78, 0
  br i1 %i.be, label %.thread41, label %.lr.ph77

bb.p:                                             ; preds = %.lr.ph77
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bh, i64 144 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.bd
  br i1 %i.bg, label %.thread41, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.o, %bb.p
  %i.bh = phi ptr [ %i.bf, %bb.p ], [ %.sroa.05.0.i, %bb.o ] ; 5 uses
  %i.bi = load i64, ptr %i.bh, align 16, !range !95, !noalias !43096, !noundef !41 ; 3 uses
  %.not.i.i = icmp eq i64 %i.bi, 4
  br i1 %.not.i.i, label %bb.p, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16alignment_lspace0EB2G_.exit.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16alignment_lspace0EB2G_.exit.i: ; preds = %.lr.ph77
  %i.bj = icmp samesign ult i64 %i.bi, 2
end_hunk_3
begin_hunk_4_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run19row_into_line_frame:bb.a
_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit: ; preds = %bb.ac, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.en = icmp eq ptr %i.dj, %i.ab
  br i1 %i.en, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit.jt0: ; preds = %bb.ad, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eo = icmp eq ptr %i.dp, %i.ab
  br i1 %i.eo, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.jt0

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit.jt2: ; preds = %bb.ae, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ep = icmp eq ptr %i.ct, %i.ab
  br i1 %i.ep, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.jt2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_.exit.jt1: ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eq = icmp eq ptr %i.cy, %i.ab
  br i1 %i.eq, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.jt1

.thread82:                                        ; preds = %bb.v
  %i.er = load double, ptr %i.ag, align 8, !noundef !41
  %i.es = trunc nuw i64 %.sroa.067.0.copyload68 to i1
  %i.et = load double, ptr %.sroa.769.0..sroa_idx, align 8
  %.sroa.050.0 = select i1 %i.es, double %i.et, double %i.er ; 2 uses
  %i.eu = fneg double %.sroa.050.0
  %i.ev = fcmp uno double %.sroa.050.0, 0.000000e+00
  %spec.store.select384 = select i1 %i.ev, double 0.000000e+00, double %i.eu
  %i.ew = fadd double %.sroa.07.0, %spec.store.select384 ; 2 uses
  %.inv5585 = fcmp ord double %i.ew, 0.000000e+00
  %spec.store.select486 = select i1 %.inv5585, double %i.ew, double 0.000000e+00
  %i.ex = load double, ptr %i.ah, align 16, !noundef !41
  br label %bb.ah

.thread89:                                        ; preds = %bb.v
  %i.ey = load i64, ptr %.sroa.769.0..sroa_idx, align 8, !range !49, !noundef !41
  %i.ez = load double, ptr %i.ad, align 8, !noundef !41
  %i.fa = trunc nuw i64 %i.ey to i1
  %i.fb = load double, ptr %i.ae, align 16
  %.sroa.050.2 = select i1 %i.fa, double %i.fb, double %i.ez ; 2 uses
  %i.fc = fneg double %.sroa.050.2
  %i.fd = fcmp uno double %.sroa.050.2, 0.000000e+00
  %spec.store.select391 = select i1 %i.fd, double 0.000000e+00, double %i.fc
  %i.fe = fadd double %.sroa.07.0, %spec.store.select391 ; 2 uses
  %.inv5592 = fcmp ord double %i.fe, 0.000000e+00
  %spec.store.select493 = select i1 %.inv5592, double %i.fe, double 0.000000e+00
  %i.ff = load double, ptr %i.af, align 16, !noundef !41
  br label %bb.ah

bb.ag:                                            ; preds = %bb.v
  %i.fg = load double, ptr %.sroa.769.0..sroa_idx, align 8, !noundef !41
  br label %bb.ah

bb.ah:                                            ; preds = %bb.v, %bb.ag, %.thread89, %.thread82
  %spec.store.select487 = phi double [ %spec.store.select486, %.thread82 ], [ %spec.store.select493, %.thread89 ], [ %spec.store.select4, %bb.ag ], [ %spec.store.select4, %bb.v ]
  %.sroa.051.0 = phi double [ %i.ex, %.thread82 ], [ %i.ff, %.thread89 ], [ %i.fg, %bb.ag ], [ 0.000000e+00, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.b)
          to label %bb.ai unwind label %bb.u

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, double noundef %.sroa.044.3108, double noundef %spec.store.select487, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.aj unwind label %bb.u

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fh = fadd double %.sroa.044.3108, %.sroa.051.0 ; 2 uses
  %.inv60 = fcmp ord double %i.fh, 0.000000e+00
  %spec.store.select5 = select i1 %.inv60, double %i.fh, double 0.000000e+00 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769)
  %i.fi = icmp eq ptr %i.dg, %i.dc
  br i1 %i.fi, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit

bb.ak:                                            ; preds = %bb.q, %bb.al, %bb.u, %.body63
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

.noexc:                                           ; preds = %bb.q, %.body, %bb.al
  %.pn.pn.pn.pn74 = phi { ptr, i32 } [ %i.fk, %bb.al ], [ %.pn.pn.pn, %.body ], [ %.pn.pn.pn, %bb.q ]
  resume { ptr, i32 } %.pn.pn.pn.pn74

bb.al:                                            ; preds = %bb.e, %bb.c
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #54
          to label %.noexc unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run27cumulative_alignment_points(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = icmp samesign ult i64 %2, 2
  br i1 %i.b, label %bb.b, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = shl nuw nsw i64 %2, 3                    ; 3 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !43147
  %i.d = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43147 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %2, 1
  br i1 %i.f, label %bb.i, label %bb.j

bb.c:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.c) #57
  unreachable

.lr.ph.preheader:                                 ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  store i64 %2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.j = phi ptr [ %i.t, %bb.g ], [ %i.d, %.lr.ph.preheader ]
  %i.k = phi i64 [ %i.v, %bb.g ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.04.023 = phi ptr [ %i.w, %bb.g ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.07.022 = phi double [ %spec.store.select, %bb.g ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.l = load double, ptr %.sroa.04.023, align 8, !noundef !41
  %i.m = fadd double %.sroa.07.022, %i.l          ; 2 uses
  %.inv = fcmp ord double %i.m, 0.000000e+00
  %spec.store.select = select i1 %.inv, double %i.m, double 0.000000e+00 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43148)
  %i.n = load i64, ptr %i.a, align 8, !range !45, !alias.scope !43148, !noundef !41
  %i.o = icmp eq i64 %i.k, %i.n
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #58
          to label %._crit_edge25 unwind label %bb.e

._crit_edge25:                                    ; preds = %bb.d
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !43148
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %spec.store.select, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43149)
  %.val.i = load i64, ptr %i.a, align 8, !range !45, !alias.scope !43149, !noundef !41 ; 2 uses
  %i.r = icmp eq i64 %.val.i, 0
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !43149, !nonnull !41, !noundef !41
  %i.s = shl nuw i64 %.val.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43149
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit

bb.g:                                             ; preds = %._crit_edge25, %.lr.ph
  %i.t = phi ptr [ %.pre, %._crit_edge25 ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.k
  store double %spec.store.select, ptr %i.u, align 8, !noalias !43148
  %i.v = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.v, ptr %i.h, align 8, !alias.scope !43148
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.023, i64 8 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %._crit_edge, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.j, %._crit_edge
  ret void

bb.i:                                             ; preds = %bb.b
  %i.y = load double, ptr %1, align 8, !noundef !41
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i
  %.sroa.01.0 = phi double [ %i.y, %bb.i ], [ 0.000000e+00, %bb.b ]
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.01.0, ptr %i.z, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math4line11layout_line(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 13 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [104 x i8], align 8               ; 9 uses
  %i.k = alloca [176 x i8], align 16              ; 16 uses
  %.sroa.0258 = alloca [56 x i8], align 8         ; 5 uses
  %i.l = alloca [112 x i8], align 8               ; 4 uses
  %i.m = alloca [96 x i8], align 8                ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.5.sroa.0 = alloca [56 x i8], align 8     ; 3 uses
  %.sroa.5.sroa.7 = alloca [6 x i8], align 2      ; 2 uses
  %.sroa.9 = alloca [20 x i8], align 4            ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 14 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 12 uses
  %i.u = alloca [304 x i8], align 16              ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 12 uses
  %i.x = alloca [304 x i8], align 16              ; 8 uses
  %i.y = alloca [304 x i8], align 16              ; 35 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !range !53, !noundef !41 ; 2 uses
  %i.ac = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.ac, 0
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
  %.sink.i.sroa.gep241 = getelementptr inbounds nuw i8, ptr %i.y, i64 232 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.z, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @606, i64 noundef 16, i64 noundef %i.ab)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = load i8, ptr %i.ad, align 16, !range !54, !noundef !41
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.x, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ak unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.u, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.h unwind label %bb.g

.thread305:                                       ; preds = %.invoke, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment18italics_correction.exit218, %bb.af, %bb.bi
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread298

bb.g:                                             ; preds = %bb.e, %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread295

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ag = load i64, ptr %i.u, align 16, !range !83, !noundef !41 ; 4 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.al = load i64, ptr %i.ak, align 16           ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.aj

bb.j:                                             ; preds = %bb.h
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.447.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6106.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.ag, ptr %i.y, align 16
  %.sroa.245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.aj, ptr %.sroa.245.0..sroa_idx, align 8
  %.sroa.346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.al, ptr %.sroa.346.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.am = load i64, ptr %0, align 16, !range !95, !noundef !41
  %i.an = icmp samesign ult i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sink = select i1 %i.an, ptr %i.ao, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val171 = load ptr, ptr %i.ap, align 8         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val172 = load i64, ptr %i.aq, align 8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43270)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !43271
  %i.ar = icmp samesign ult i64 %i.ag, 2
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 224
  %i.at = load ptr, ptr %i.as, align 16, !alias.scope !43270, !noalias !43272, !nonnull !41, !noundef !41 ; 2 uses
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !43271
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %.not.i = icmp eq i64 %.val172, 0
  br i1 %.not.i, label %.invoke, label %bb.o, !prof !44

bb.m:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %._crit_edge.i, %bb.k
  %i.aw = phi ptr [ %i.at, %bb.k ], [ %storemerge.pre.i, %._crit_edge.i ] ; 5 uses
  store ptr %i.aw, ptr %i.f, align 8, !noalias !43271
  %i.ax = call i64 @llvm.usub.sat.i64(i64 %i.ag, i64 1)
  switch i64 %i.ax, label %bb.q [
    i64 0, label %bb.s
    i64 1, label %bb.r
  ]

.invoke:                                          ; preds = %bb.ao, %bb.l
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
          to label %.cont unwind label %.thread305

.cont:                                            ; preds = %.invoke
  unreachable

bb.o:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val171) ]
  %i.ay = getelementptr [8 x i8], ptr %.val171, i64 %.val172
  %i.az = getelementptr i8, ptr %i.ay, i64 -8     ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !43271, !nonnull !41, !noundef !41
  %i.bb = atomicrmw add ptr %i.ba, i64 1 monotonic, align 8, !noalias !43271
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o
  %storemerge.pre.i = load ptr, ptr %i.az, align 8, !noalias !43271
  br label %bb.n

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.bd = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.v unwind label %bb.t, !noalias !43270 ; 2 uses

bb.r:                                             ; preds = %bb.n
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.r ], [ %.sink.i.sroa.gep241, %bb.n ]
  %.sroa.4.0.i = load double, ptr %.sink.i.sroa.phi, align 8, !alias.scope !43270, !noalias !43272, !noundef !41
  br label %bb.x

bb.t:                                             ; preds = %bb.v, %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !43273
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.u, label %.thread298

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #58
          to label %.thread298 unwind label %bb.w, !noalias !43271

bb.v:                                             ; preds = %bb.q
  %i.bh = extractvalue { double, double } %i.bd, 0
  %i.bi = extractvalue { double, double } %i.bd, 1
  %i.bj = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.bh, double noundef %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.x unwind label %bb.t, !noalias !43270

bb.w:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43271
end_hunk_4
begin_hunk_5_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math4text13layout_number:bb.a
  %i.an = icmp ne ptr %i.af, %i.t
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 3 ; 3 uses
  %i.ap = load i8, ptr %i.af, align 1, !noalias !43583, !noundef !41
  %i.aq = shl nuw nsw i32 %i.aj, 6
  %i.ar = and i8 %i.ap, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as            ; 2 uses
  %i.au = shl nuw nsw i32 %i.ad, 12
  %i.av = or disjoint i32 %i.at, %i.au
  %i.aw = icmp samesign ugt i8 %i.aa, -17
  br i1 %i.aw, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i, label %bb.g

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i
  %i.ax = icmp ne ptr %i.ao, %i.t
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 4
  %i.az = load i8, ptr %i.ao, align 1, !noalias !43583, !noundef !41
  %i.ba = shl nuw nsw i32 %i.ad, 18
  %i.bb = and i32 %i.ba, 1835008
  %i.bc = shl nuw nsw i32 %i.at, 6
  %i.bd = and i8 %i.az, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.bb
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i
  %.sroa.0.1.ph = phi ptr [ %i.af, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i ], [ %i.ao, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i ], [ %i.ay, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i ], [ %i.z, %bb.f ] ; 2 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.ak, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i ], [ %i.av, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i ], [ %i.bg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i ], [ %i.am, %bb.f ] ; 2 uses
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvMNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyphNtB2_13GlyphFragment9synthetic(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.f, ptr noalias nofree noundef align 8 dereferenceable(200) %i.w, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2, i32 noundef %.sroa.4.0.i.ph, i64 noundef %i.i)
          to label %bb.o unwind label %.body

._crit_edge:                                      ; preds = %bb.u, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXNtNtCs7tN9tvpkfrg_12typst_layout4math3runINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB4_8fragment12MathFragmentENtB2_16MathFragmentsExt10into_frame(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.h unwind label %.body.thread21

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 45
  %.val = load i8, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 46
  %.val6 = load i8, ptr %i.bj, align 2
  invoke fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.b, i8 %.val, i8 %.val6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.i unwind label %.body.thread21

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  %i.bn = load i8, ptr %i.bm, align 2, !range !136, !alias.scope !43585, !noalias !43586, !noundef !41
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.bp = load i8, ptr %i.bo, align 1, !range !116, !alias.scope !43585, !noalias !43586, !noundef !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bt = load <2 x double>, ptr %i.bl, align 8, !alias.scope !43585, !noalias !43586
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bu = load <2 x double>, ptr %i.bq, align 8, !alias.scope !43585, !noalias !43586
  %.sroa.813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bv = load <2 x double>, ptr %i.br, align 8, !alias.scope !43585, !noalias !43586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !43587)
  call void @llvm.experimental.noalias.scope.decl(metadata !43588)
  call void @llvm.experimental.noalias.scope.decl(metadata !43589)
  store <2 x double> %i.bt, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !43590, !noalias !43587
  store <2 x double> %i.bu, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !43590, !noalias !43587
  store <2 x double> %i.bv, ptr %.sroa.813.0..sroa_idx, align 8, !alias.scope !43590, !noalias !43587
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !43590, !noalias !43587
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 105
  store i8 %i.bp, ptr %.sroa.11.0..sroa_idx, align 1, !alias.scope !43590, !noalias !43587
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 %i.bn, ptr %.sroa.12.0..sroa_idx, align 2, !alias.scope !43590, !noalias !43587
  store i64 2, ptr %i.a, align 16, !alias.scope !43591, !noalias !43592
  call void @llvm.experimental.noalias.scope.decl(metadata !43593)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !43594, !noalias !43595, !noundef !41 ; 3 uses
  %i.by = load i64, ptr %i.bs, align 8, !range !45, !alias.scope !43594, !noalias !43595, !noundef !41
  %i.bz = icmp eq i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %bb.m unwind label %bb.k, !noalias !43595

bb.k:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.a) #54
          to label %.body.thread18 unwind label %bb.l, !noalias !43596

bb.l:                                             ; preds = %bb.k
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43596
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !43594, !noalias !43595, !nonnull !41, !noundef !41
  %i.ce = getelementptr inbounds nuw [304 x i8], ptr %i.cd, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.ce, ptr noundef nonnull align 16 dereferenceable(304) %i.a, i64 304, i1 false), !noalias !43596
  %i.cf = add i64 %i.bx, 1
  store i64 %i.cf, ptr %i.bw, align 8, !alias.scope !43594, !noalias !43595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cg = load ptr, ptr %i.g, align 8, !alias.scope !43597, !noundef !41
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
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.e) #54
          to label %.body.thread unwind label %bb.s, !noalias !43598

bb.s:                                             ; preds = %bb.r
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43598
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
  %i.ct = load ptr, ptr %i.g, align 8, !alias.scope !43599, !noundef !41
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit11, label %bb.v

bb.v:                                             ; preds = %.body.thread18
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit11 unwind label %bb.w

.body.thread:                                     ; preds = %bb.r, %.body
  %eh.lpad-body17 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.cl, %bb.r ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #54
          to label %.body.thread18 unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %.body.thread
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit11: ; preds = %.body.thread18, %bb.v
  resume { ptr, i32 } %eh.lpad-body16
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %.sroa.7569 = alloca [40 x i8], align 8         ; 6 uses
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
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @614, i64 noundef 17, i64 noundef %i.bj)
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

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430, %bb.u, %bb.j, %bb.f, %bb.hc
  %.pn255 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.u ], [ %lpad.thr_comm, %bb.hc ], [ %i.bs, %bb.f ], [ %i.ce, %bb.j ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit ], [ %.pn249, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430 ], [ %.pn249, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430.thread ], [ %.pn249, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %i.bq = load ptr, ptr %i.bh, align 8, !alias.scope !43913, !noundef !41
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.e

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ai

bb.f:                                             ; preds = %bb.s, %bb.q, %bb.p, %bb.o, %bb.g, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit, %bb.n, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit.thread
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit: ; preds = %bb.d
  %i.bt = getelementptr i8, ptr %i.bp, i64 16
  %.val.i = load i64, ptr %i.bt, align 8, !alias.scope !43914, !noundef !41 ; 25 uses
  %i.bu = icmp ult i64 %.val.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp eq i64 %.val.i, 0
  br i1 %i.bv, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit.thread, label %bb.n

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bf, double noundef 0.000000e+00, double noundef 0.000000e+00, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @615)
          to label %bb.g unwind label %bb.f

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 45
  %.val260 = load i8, ptr %i.bw, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 46
  %.val261 = load i8, ptr %i.bx, align 2
  invoke fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bg, i8 %.val260, i8 %.val261, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.bf)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.experimental.noalias.scope.decl(metadata !43915)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !43916
  call void @llvm.experimental.noalias.scope.decl(metadata !43917)
  call void @llvm.experimental.noalias.scope.decl(metadata !43918)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bz, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.bg, i64 104, i1 false), !alias.scope !43919, !noalias !43915
  store i64 2, ptr %i.q, align 16, !alias.scope !43920, !noalias !43921
  call void @llvm.experimental.noalias.scope.decl(metadata !43922)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !43923, !noalias !43924, !noundef !41 ; 3 uses
  %i.cc = load i64, ptr %i.by, align 8, !range !45, !alias.scope !43923, !noalias !43924, !noundef !41
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.l unwind label %bb.j, !noalias !43924

bb.j:                                             ; preds = %bb.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.q) #54
          to label %.body unwind label %bb.k, !noalias !43925

bb.k:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43925
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !43923, !noalias !43924, !nonnull !41, !noundef !41
  %i.ci = getelementptr inbounds nuw [304 x i8], ptr %i.ch, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.ci, ptr noundef nonnull align 16 dereferenceable(304) %i.q, i64 304, i1 false), !noalias !43925
  %i.cj = add i64 %i.cb, 1
  store i64 %i.cj, ptr %i.ca, align 8, !alias.scope !43923, !noalias !43924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !43916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit528, %bb.l
  %.sroa.4.0 = phi i64 [ undef, %bb.l ], [ %i.afa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit528 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.l ], [ %i.aez, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit528 ] ; 2 uses
  %i.ck = load ptr, ptr %i.bh, align 8, !alias.scope !43926, !noundef !41
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit286, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit286.sink.split

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir9multiline10AlignedRowEE6map_orjNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table0EB2D_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cn = load <2 x double>, ptr %i.cm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cp = load <2 x double>, ptr %i.co, align 8
  %i.cq = insertelement <2 x double> %i.cn, double %.sroa.5.0.copyload, i64 1
  %i.cr = fmul <2 x double> %i.cq, %i.cp          ; 2 uses
  %i.cs = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cr)
  %i.ct = fcmp one <2 x double> %i.cs, splat (double +inf)
  %i.cu = select <2 x i1> %i.ct, <2 x double> %i.cr, <2 x double> zeroinitializer ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0
  %i.cw = fadd double %.sroa.4.0.copyload, %i.cv  ; 2 uses
  %.inv.i.i.i.i = fcmp ord double %i.cw, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %.inv.i.i.i.i, double %i.cw, double 0.000000e+00 ; 6 uses
  %i.cx = extractelement <2 x double> %i.cu, i64 1
end_hunk_5
begin_hunk_6_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math5table12layout_table:bb.a
bb.gj:                                            ; preds = %bb.gc
  %i.afj = extractvalue { double, double } %i.afb, 0 ; 2 uses
  %i.afk = extractvalue { double, double } %i.afb, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44087
  store i64 %i.aex, ptr %i.ap, align 8
  store ptr %i.aez, ptr %.sroa.444.0..sroa_idx, align 8
  store i64 %i.afa, ptr %.sroa.545.0..sroa_idx, align 8
  store double %i.afj, ptr %.sroa.646.0..sroa_idx, align 8
  store double %i.afk, ptr %.sroa.646.sroa.4.0..sroa.646.0..sroa_idx.sroa_idx, align 8
  %i.afl = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !41 ; 2 uses
  %i.afm = icmp ult i64 %.sroa.8.0964, %i.afl
  br i1 %i.afm, label %bb.gk, label %.invoke

bb.gk:                                            ; preds = %bb.gj
  %i.afn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !41, !noundef !41
  %i.afo = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.afj, double noundef %.sroa.0198.0)
          to label %bb.gl unwind label %.loopexit734

bb.gl:                                            ; preds = %bb.gk
  %i.afp = getelementptr inbounds nuw [16 x i8], ptr %i.afn, i64 %.sroa.8.0964
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.afp, double noundef %i.afo)
          to label %bb.gm unwind label %.loopexit734

bb.gm:                                            ; preds = %bb.gl
  %i.afq = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !41 ; 2 uses
  %i.afr = icmp ult i64 %.sroa.8.0964, %i.afq
  br i1 %i.afr, label %bb.gn, label %.invoke

bb.gn:                                            ; preds = %bb.gm
  %i.afs = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !41, !noundef !41
  %i.aft = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %i.afk, double noundef %.sroa.0199.0)
          to label %bb.go unwind label %.loopexit734

bb.go:                                            ; preds = %bb.gn
  %i.afu = getelementptr inbounds nuw [16 x i8], ptr %i.afs, i64 %.sroa.8.0964
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.afv, double noundef %i.aft)
          to label %bb.gp unwind label %.loopexit734

bb.gp:                                            ; preds = %bb.go
  %exitcond = icmp eq i64 %.sroa.8549.0962, %.val.i
  br i1 %exitcond, label %.invoke, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.afw = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %.sroa.8549.0962 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44089)
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 16 ; 2 uses
  %i.afy = load i64, ptr %i.afx, align 8, !alias.scope !44089, !noalias !44090, !noundef !41 ; 3 uses
  %i.afz = load i64, ptr %i.afw, align 8, !range !45, !alias.scope !44089, !noalias !44090, !noundef !41
  %i.aga = icmp eq i64 %i.afy, %i.afz
  br i1 %i.aga, label %bb.gr, label %bb.gu

bb.gr:                                            ; preds = %bb.gq
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.afw)
          to label %bb.gu unwind label %bb.gs, !noalias !44090

bb.gs:                                            ; preds = %bb.gr
  %i.agb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.ap) #54
          to label %.body504 unwind label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.agc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44091
  unreachable

.invoke:                                          ; preds = %bb.gp, %bb.gm, %bb.gj
  %i.agd = phi i64 [ %.sroa.8.0964, %bb.gm ], [ %.sroa.8.0964, %bb.gj ], [ %.val.i, %bb.gp ]
  %i.age = phi i64 [ %i.afq, %bb.gm ], [ %i.afl, %bb.gj ], [ %.val.i, %bb.gp ]
  %i.agf = phi ptr [ @619, %bb.gm ], [ @618, %bb.gj ], [ @620, %bb.gp ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.agd, i64 noundef %i.age, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agf) #57
          to label %.cont1407 unwind label %.loopexit.split-lp735

.cont1407:                                        ; preds = %.invoke
  unreachable

bb.gu:                                            ; preds = %bb.gr, %bb.gq
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  %i.agh = load ptr, ptr %i.agg, align 8, !alias.scope !44089, !noalias !44090, !nonnull !41, !noundef !41
  %i.agi = getelementptr inbounds nuw [40 x i8], ptr %i.agh, i64 %i.afy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.agi, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false)
  %i.agj = add i64 %i.afy, 1
  store i64 %i.agj, ptr %i.afx, align 8, !alias.scope !44089, !noalias !44090
  %i.agk = icmp eq ptr %i.aev, %i.gm
  br i1 %i.agk, label %.loopexit728, label %.lr.ph

.loopexit734:                                     ; preds = %bb.go, %bb.gn, %bb.gl, %bb.gk
  %lpad.loopexit736 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit.split-lp735:                            ; preds = %.invoke
  %lpad.loopexit.split-lp737 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gv:                                            ; preds = %.loopexit.split-lp735, %.loopexit734
  %lpad.phi738 = phi { ptr, i32 } [ %lpad.loopexit736, %.loopexit734 ], [ %lpad.loopexit.split-lp737, %.loopexit.split-lp735 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ap) #54
          to label %.body504 unwind label %bb.ai

bb.gw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEj2_ECs7tN9tvpkfrg_12typst_layout.exit510
  %.val275 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !nonnull !41, !noundef !41
  %i.agl = shl nuw i64 %.val274, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val275, i64 noundef %i.agl, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit513

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit513: ; preds = %bb.gw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueAINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEj2_ECs7tN9tvpkfrg_12typst_layout.exit510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 %i.en, i64 noundef %.val.i)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i unwind label %bb.gx, !noalias !44092

bb.gx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit513
  %i.agm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.en, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !44092
  br label %.body293

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsB19_EEECs7tN9tvpkfrg_12typst_layout.exit513
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.en, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !44092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.agn = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.agn)
          to label %bb.gz unwind label %bb.gy

bb.gy:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i
  %i.ago = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agp = load i64, ptr %i.az, align 8, !range !70, !alias.scope !44093, !noundef !41 ; 2 uses
  %i.agq = icmp sgt i64 %i.agp, 0
  br i1 %i.agq, label %.body427.sink.split1914, label %.body427

bb.gz:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !44094)
  %i.agr = load i64, ptr %i.az, align 8, !range !70, !alias.scope !44095, !noundef !41 ; 2 uses
  %i.ags = icmp sgt i64 %i.agr, 0
  br i1 %i.ags, label %bb.ha, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit524

bb.ha:                                            ; preds = %bb.gz
  %i.agt = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val1.i1.i521 = load ptr, ptr %i.agt, align 8, !alias.scope !44095, !nonnull !41, !noundef !41
  %i.agu = shl nuw i64 %i.agr, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1.i521, i64 noundef %i.agu, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !44096
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit524

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit524: ; preds = %bb.ha, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.agv = icmp ugt i64 %i.ek, 1
  br i1 %i.agv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i525, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit526

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i525: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit524
  %i.agw = shl nuw i64 %i.ek, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef %i.agw, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !44097
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit526

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit526: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i525, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.agx = icmp ugt i64 %i.el, 1
  br i1 %i.agx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i527, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit528

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i527: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit526
  %i.agy = shl nuw i64 %i.el, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eq, i64 noundef %i.agy, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !44098
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit528

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit528: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i527, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.m

bb.hb:                                            ; preds = %.thread632, %bb.ao
  %.pn245637 = phi { ptr, i32 } [ %i.fo, %.thread632 ], [ %.pn243, %bb.ao ]
  %.sroa.083.1636 = phi i8 [ 1, %.thread632 ], [ %.sroa.083.3, %bb.ao ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math5table10CellLayoutEEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #54
          to label %.body293 unwind label %bb.ai

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430
  %.val263 = load i64, ptr %.sroa.3109.0..sroa_idx110, align 8, !alias.scope !44004, !noundef !41 ; 2 uses
  %i.agz = icmp ugt i64 %.val263, 1
  br i1 %i.agz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math6matrix14AugmentOffsetsECs7tN9tvpkfrg_12typst_layout.exit430.thread
  %.val262 = load ptr, ptr %i.bb, align 8, !nonnull !41, !noundef !41
  %i.aha = shl nuw i64 %.val263, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val262, i64 noundef %i.aha, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !44099
  br label %.body

bb.hc:                                            ; preds = %bb.t, %bb.y
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(80) %i.be) #54
          to label %.body unwind label %bb.ai

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %.pn255
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6accent13layout_accent(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 14 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [104 x i8], align 8               ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [304 x i8], align 16              ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [304 x i8], align 16              ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 12 uses
  %i.o = alloca [304 x i8], align 16              ; 10 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 5 uses
  %.sroa.11 = alloca [208 x i8], align 16         ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 13 uses
  %i.t = alloca [304 x i8], align 16              ; 8 uses
  %i.u = alloca [304 x i8], align 16              ; 48 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = load i64, ptr %i.w, align 8, !range !53, !noundef !41
  %i.y = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.y, 0
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sink.i.sroa.gep271 = getelementptr inbounds nuw i8, ptr %i.u, i64 232
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.v, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @622, i64 noundef 18, i64 noundef %i.x)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aa = load i8, ptr %i.z, align 16, !range !54, !noundef !41
  %i.ab = icmp eq i8 %i.aa, 0                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.t, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %.body, %.body.thread, %.noexc201, %bb.g
  %.pn192 = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %.pn190310, %.body.thread ], [ %.pn.pn.pn, %.noexc201 ], [ %lpad.thr_comm.split-lp, %.body ]
  %i.ac = load ptr, ptr %i.v, align 8, !alias.scope !44210, !noundef !41
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.cr

bb.g:                                             ; preds = %bb.cy, %bb.cw, %bb.cv, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.af = load i64, ptr %i.t, align 16, !range !83, !noundef !41 ; 4 uses
  %i.ag = icmp eq i64 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ak = load i64, ptr %i.aj, align 16           ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit

bb.j:                                             ; preds = %bb.h
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.640.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.672.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.af, ptr %i.u, align 16
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 11 uses
  store ptr %i.ai, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store i64 %i.ak, ptr %.sroa.5.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.al = load i64, ptr %0, align 16, !range !95, !noundef !41
  %i.am = icmp samesign ult i64 %i.al, 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sink = select i1 %i.am, ptr %i.an, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val195 = load ptr, ptr %i.ao, align 8         ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val196 = load i64, ptr %i.ap, align 8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44211)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44212
  %i.aq = icmp samesign ult i64 %i.af, 2
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  %i.as = load ptr, ptr %i.ar, align 16, !alias.scope !44211, !noalias !44213, !nonnull !41, !noundef !41 ; 2 uses
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !44212
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %.not.i = icmp eq i64 %.val196, 0
  br i1 %.not.i, label %bb.o, label %bb.p, !prof !44

bb.m:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %._crit_edge.i, %bb.k
  %i.av = phi ptr [ %i.as, %bb.k ], [ %storemerge.pre.i, %._crit_edge.i ] ; 5 uses
  store ptr %i.av, ptr %i.b, align 8, !noalias !44212
  %i.aw = call i64 @llvm.usub.sat.i64(i64 %i.af, i64 1)
  switch i64 %i.aw, label %bb.r [
    i64 0, label %bb.t
    i64 1, label %bb.s
  ]

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
          to label %.noexc197 unwind label %.body.thread314

.noexc197:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val195) ]
  %i.ax = getelementptr [8 x i8], ptr %.val195, i64 %.val196
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8     ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !44212, !nonnull !41, !noundef !41
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !44212
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.p
  %storemerge.pre.i = load ptr, ptr %i.ay, align 8, !noalias !44212
  br label %bb.n

bb.q:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.bc = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.w unwind label %bb.u, !noalias !44211 ; 2 uses

bb.s:                                             ; preds = %bb.n
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.s ], [ %.sink.i.sroa.gep271, %bb.n ]
  %.sroa.4.0.i = load double, ptr %.sink.i.sroa.phi, align 8, !alias.scope !44211, !noalias !44213, !noundef !41
  br label %bb.y

bb.u:                                             ; preds = %bb.w, %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !44214
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.v, label %.body.thread

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #58
          to label %.body.thread unwind label %bb.x, !noalias !44212

bb.w:                                             ; preds = %bb.r
  %i.bg = extractvalue { double, double } %i.bc, 0
  %i.bh = extractvalue { double, double } %i.bc, 1
  %i.bi = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.bg, double noundef %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.y unwind label %bb.u, !noalias !44211

bb.x:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44212
  unreachable

.noexc201:                                        ; preds = %bb.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266
  br i1 %.sroa.068.2, label %.body.thread, label %bb.e

.body.thread314:                                  ; preds = %bb.at, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %bb.co
end_hunk_6
begin_hunk_7_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6accent13layout_accent:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jt, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.jv = load double, ptr %i.ju, align 8, !alias.scope !44243, !noalias !44244, !noundef !41
  %i.jw = getelementptr inbounds nuw i8, ptr %i.f, i64 98
  %i.jx = load i8, ptr %i.jw, align 2, !range !136, !alias.scope !44243, !noalias !44244, !noundef !41
  %i.jy = getelementptr inbounds nuw i8, ptr %i.f, i64 97
  %i.jz = load i8, ptr %i.jy, align 1, !range !116, !alias.scope !44243, !noalias !44244, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !44245)
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44246)
  call void @llvm.experimental.noalias.scope.decl(metadata !44247)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.jv, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !44248, !noalias !44245
  %.sroa.5.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double %.sroa.0.0.i257, ptr %.sroa.5.0..sroa_idx272, align 16, !alias.scope !44248, !noalias !44245
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store double %.sroa.0.0.i258, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !44248, !noalias !44245
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %.sroa.0.0.i253339, ptr %.sroa.7.0..sroa_idx, align 16, !alias.scope !44248, !noalias !44245
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store <2 x double> %i.by, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !44248, !noalias !44245
  %.sroa.10273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 %.sroa.064.0366, ptr %.sroa.10273.0..sroa_idx, align 8, !alias.scope !44248, !noalias !44245
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 105
  store i8 %i.jz, ptr %.sroa.11.0..sroa_idx, align 1, !alias.scope !44248, !noalias !44245
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 %i.jx, ptr %.sroa.12.0..sroa_idx, align 2, !alias.scope !44248, !noalias !44245
  store i64 2, ptr %i.a, align 16, !alias.scope !44249, !noalias !44250
  call void @llvm.experimental.noalias.scope.decl(metadata !44251)
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !alias.scope !44252, !noalias !44253, !noundef !41 ; 3 uses
  %i.kd = load i64, ptr %i.ka, align 8, !range !45, !alias.scope !44252, !noalias !44253, !noundef !41
  %i.ke = icmp eq i64 %i.kc, %i.kd
  br i1 %i.ke, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %bb.cn unwind label %bb.cl, !noalias !44253

bb.cl:                                            ; preds = %bb.ck
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.a) #54
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266 unwind label %bb.cm, !noalias !44254

bb.cm:                                            ; preds = %bb.cl
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44254
  unreachable

bb.cn:                                            ; preds = %bb.ck, %bb.cj
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !alias.scope !44252, !noalias !44253, !nonnull !41, !noundef !41
  %i.kj = getelementptr inbounds nuw [304 x i8], ptr %i.ki, i64 %i.kc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.kj, ptr noundef nonnull align 16 dereferenceable(304) %i.a, i64 304, i1 false), !noalias !44254
  %i.kk = add i64 %i.kc, 1
  store i64 %i.kk, ptr %i.kb, align 8, !alias.scope !44252, !noalias !44253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !44255)
  call void @llvm.experimental.noalias.scope.decl(metadata !44256)
  call void @llvm.experimental.noalias.scope.decl(metadata !44257)
  %i.kl = load ptr, ptr %i.s, align 8, !alias.scope !44258, !nonnull !41, !noundef !41
  %i.km = atomicrmw sub ptr %i.kl, i64 1 release, align 8, !noalias !44258
  %i.kn = icmp eq i64 %i.km, 1
  br i1 %i.kn, label %bb.co, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262

bb.co:                                            ; preds = %bb.cn
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 unwind label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262: ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ko = load ptr, ptr %i.v, align 8, !alias.scope !44259, !noundef !41
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit
  %.sroa.4.0.ph = phi i64 [ %.sroa.4.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 ]
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit
  %.sroa.4.0 = phi i64 [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 ], [ %.sroa.4.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit ], [ %.sroa.4.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split ]
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit262 ], [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit ], [ %.sroa.0.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.kq = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.kr = insertvalue { ptr, i64 } %i.kq, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.kr

bb.cp:                                            ; preds = %bb.cg, %bb.cf, %bb.ch
  %.sroa.066.1.ph = phi i1 [ false, %bb.ch ], [ true, %bb.cf ], [ true, %bb.cg ]
  %lpad.thr_comm346 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44260)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44261)
  call void @llvm.experimental.noalias.scope.decl(metadata !44262)
  %i.kt = load ptr, ptr %i.ks, align 8, !alias.scope !44263, !nonnull !41, !noundef !41
  %i.ku = atomicrmw sub ptr %i.kt, i64 1 release, align 8, !noalias !44263
  %i.kv = icmp eq i64 %i.ku, 1
  br i1 %i.kv, label %bb.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ks) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.cr

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.cq, %bb.cp
  br i1 %.sroa.066.1.ph, label %bb.cs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266

bb.cr:                                            ; preds = %bb.ct, %bb.cq, %bb.ac, %bb.f, %.body.thread
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.cs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, %.thread
  %.pn321 = phi { ptr, i32 } [ %i.fd, %.thread ], [ %lpad.thr_comm346, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %.sroa.068.4320 = phi i1 [ true, %.thread ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44264)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44265)
  call void @llvm.experimental.noalias.scope.decl(metadata !44266)
  %i.ky = load ptr, ptr %i.kx, align 8, !alias.scope !44267, !nonnull !41, !noundef !41
  %i.kz = atomicrmw sub ptr %i.ky, i64 1 release, align 8, !noalias !44267
  %i.la = icmp eq i64 %i.kz, 1
  br i1 %i.la, label %bb.ct, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266

bb.ct:                                            ; preds = %bb.cs
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kx) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266 unwind label %bb.cr

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !44268)
  %i.lb = load i64, ptr %i.u, align 16, !range !95, !alias.scope !44268, !noundef !41
  %i.lc = call i64 @llvm.usub.sat.i64(i64 %i.lb, i64 1)
  switch i64 %i.lc, label %bb.cu [
    i64 0, label %bb.cw
    i64 1, label %bb.cx
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit
  ]

bb.cu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210
  %i.ld = load i8, ptr %.sroa.5.0..sroa_idx, align 16, !range !54, !alias.scope !44269, !noundef !41
  %i.le = icmp eq i8 %i.ld, 0
  br i1 %i.le, label %bb.cv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.640.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit unwind label %bb.g

bb.cw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEBJ_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit unwind label %bb.g

bb.cx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210
  call void @llvm.experimental.noalias.scope.decl(metadata !44270)
  call void @llvm.experimental.noalias.scope.decl(metadata !44271)
  call void @llvm.experimental.noalias.scope.decl(metadata !44272)
  call void @llvm.experimental.noalias.scope.decl(metadata !44273)
  %i.lf = load ptr, ptr %.sroa.640.0..sroa_idx, align 8, !alias.scope !44274, !nonnull !41, !noundef !41
  %i.lg = atomicrmw sub ptr %i.lf, i64 1 release, align 8, !noalias !44274
  %i.lh = icmp eq i64 %i.lg, 1
  br i1 %i.lh, label %bb.cy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit

bb.cy:                                            ; preds = %bb.cx
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.640.0..sroa_idx) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit: ; preds = %bb.cx, %bb.cu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210, %bb.cv, %bb.cw, %bb.cy, %bb.i
  %.sroa.4.1 = phi i64 [ %i.ak, %bb.i ], [ %i.dt, %bb.cy ], [ %i.dt, %bb.cw ], [ %i.dt, %bb.cv ], [ %i.dt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210 ], [ %i.dt, %bb.cu ], [ %i.dt, %bb.cx ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.ai, %bb.i ], [ %i.dr, %bb.cy ], [ %i.dr, %bb.cw ], [ %i.dr, %bb.cv ], [ %i.dr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210 ], [ %i.dr, %bb.cu ], [ %i.dr, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.li = load ptr, ptr %i.v, align 8, !alias.scope !44275, !noundef !41
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit270.sink.split

.body.thread:                                     ; preds = %bb.u, %bb.v, %.body.thread314, %.noexc201
  %.pn190310 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread314 ], [ %.pn.pn.pn, %.noexc201 ], [ %i.bd, %bb.v ], [ %i.bd, %bb.u ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.u) #54
          to label %bb.e unwind label %bb.cr

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %.pn192
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6cancel13layout_cancel(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [304 x i8], align 16              ; 15 uses
  %i.l = alloca [48 x i8], align 8                ; 11 uses
  %i.m = alloca [304 x i8], align 16              ; 16 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 5 uses
  %.sroa.15 = alloca [159 x i8], align 1          ; 5 uses
  %.sroa.16 = alloca [16 x i8], align 16          ; 5 uses
  %.sroa.17 = alloca [15 x i8], align 1           ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = load i64, ptr %i.o, align 8, !range !53, !noundef !41 ; 3 uses
  %i.q = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.n, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @625, i64 noundef 18, i64 noundef %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.m, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f

.body.thread:                                     ; preds = %bb.j, %.body, %bb.z, %bb.ag, %bb.af, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.ag, %bb.j ], [ %i.cg, %bb.z ], [ %lpad.thr_comm.split-lp, %.body ], [ %lpad.thr_comm, %bb.ag ], [ %lpad.thr_comm, %bb.af ]
  %i.r = load ptr, ptr %i.n, align 8, !alias.scope !44309, !noundef !41
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.e

bb.e:                                             ; preds = %.body.thread
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ah

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = load i64, ptr %i.m, align 16, !range !83, !noundef !41 ; 3 uses
  %i.v = icmp eq i64 %i.u, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.z = load i64, ptr %i.y, align 16             ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ae

bb.i:                                             ; preds = %bb.g
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.637.0..sroa_idx, i64 56, i1 false)
  %.sroa.637.sroa.4.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.aa = load <2 x double>, ptr %.sroa.637.sroa.4.0..sroa.637.0..sroa_idx.sroa_idx, align 16 ; 3 uses
  %.sroa.637.sroa.6.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %.sroa.637.sroa.6.0.copyload = load double, ptr %.sroa.637.sroa.6.0..sroa.637.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  %.sroa.637.sroa.7.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %.sroa.637.sroa.7.0.copyload = load i8, ptr %.sroa.637.sroa.7.0..sroa.637.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.637.sroa.8.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(159) %.sroa.15, ptr noundef nonnull align 1 dereferenceable(159) %.sroa.637.sroa.8.0..sroa.637.0..sroa_idx.sroa_idx, i64 159, i1 false)
  %.sroa.637.sroa.9.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %.sroa.637.sroa.9.0.copyload = load double, ptr %.sroa.637.sroa.9.0..sroa.637.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.637.sroa.10.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.637.sroa.10.0..sroa.637.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.637.sroa.11.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %.sroa.637.sroa.11.0.copyload = load i8, ptr %.sroa.637.sroa.11.0..sroa.637.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  %.sroa.637.sroa.12.0..sroa.637.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.17, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.637.sroa.12.0..sroa.637.0..sroa_idx.sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ab = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ac = call i64 @llvm.usub.sat.i64(i64 %i.u, i64 1)
  %i.ad = extractelement <2 x double> %i.aa, i64 0 ; 2 uses
  %i.ae = extractelement <2 x double> %i.aa, i64 1 ; 2 uses
  switch i64 %i.ac, label %bb.k [
    i64 0, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread
    i64 1, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread85
    i64 3, label %._crit_edge.i
  ]

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread: ; preds = %bb.i
  %i.af = xor i8 %.sroa.637.sroa.11.0.copyload, 1
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread85

bb.j:                                             ; preds = %bb.ad, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread85
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.k:                                             ; preds = %bb.i
  %i.ah = bitcast i64 %i.ab to double
  %i.ai = fmul double %i.ah, 5.000000e-01         ; 3 uses
  %.inv12.i = fcmp ord double %i.ai, 0.000000e+00
  %spec.store.select13.i = select i1 %.inv12.i, double %i.ai, double 0.000000e+00
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.k
  %spec.store.select14.i = phi double [ %spec.store.select13.i, %bb.k ], [ 0.000000e+00, %bb.i ]
  %.sroa.09.0.i = phi double [ %i.ai, %bb.k ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %.inv10.i = fcmp ord double %.sroa.09.0.i, 0.000000e+00
  %spec.store.select1.i = select i1 %.inv10.i, double %.sroa.09.0.i, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread85

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread85: ; preds = %bb.i, %._crit_edge.i, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread
  %.sroa.0.0.i5892 = phi double [ 0.000000e+00, %._crit_edge.i ], [ %.sroa.637.sroa.9.0.copyload, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread ], [ %i.ad, %bb.i ]
  %.sroa.0.0.i8490 = phi i8 [ 0, %._crit_edge.i ], [ %i.af, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread ], [ %.sroa.637.sroa.7.0.copyload, %bb.i ]
  %.sroa.4.0.i = phi double [ %spec.store.select1.i, %._crit_edge.i ], [ %i.ae, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread ], [ %.sroa.637.sroa.6.0.copyload, %bb.i ]
  %.sroa.0.0.i59 = phi double [ %spec.store.select14.i, %._crit_edge.i ], [ %i.ad, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread ], [ %i.ae, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %i.u, ptr %i.k, align 16
  %.sroa.5.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.ab, ptr %.sroa.5.0..sroa_idx106, align 8
  %.sroa.7.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.z, ptr %.sroa.7.0..sroa_idx107, align 16
  %.sroa.8.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx108, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false)
  %.sroa.9.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store <2 x double> %i.aa, ptr %.sroa.9.0..sroa_idx109, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store double %.sroa.637.sroa.6.0.copyload, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i8 %.sroa.637.sroa.7.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(159) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(159) %.sroa.15, i64 159, i1 false)
  %.sroa.15113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  store double %.sroa.637.sroa.9.0.copyload, ptr %.sroa.15113.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  %.sroa.16114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  store i8 %.sroa.637.sroa.11.0.copyload, ptr %.sroa.16114.0..sroa_idx, align 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.17.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.17, i64 15, i1 false)
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.k)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12is_text_like.exit.thread85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ak = load double, ptr %i.aj, align 8, !noundef !41 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.am = load double, ptr %i.al, align 8, !noundef !41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !41, !align !46, !noundef !41
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aq = load double, ptr %i.ap, align 16, !noundef !41 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.as = load double, ptr %i.ar, align 8, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  invoke fastcc void @_RNvXsC_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_11FixedStrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.at)
          to label %bb.m unwind label %bb.af

.body:                                            ; preds = %bb.r
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.av = load i8, ptr %i.au, align 1, !range !54, !noundef !41
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  invoke fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6cancel16draw_cancel_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.j, ptr noalias nofree noundef align 8 dereferenceable(200) %i.ao, double noundef %i.aq, double noundef %i.as, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.i, i1 noundef zeroext %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax, double noundef %i.ak, double noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, i64 noundef %i.p)
          to label %bb.n unwind label %bb.af

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ay = load i64, ptr %i.j, align 8, !range !52, !noundef !41 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  br i1 %i.az, label %bb.o, label %bb.p
end_hunk_7
begin_hunk_8_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6fenced13layout_fenced:bb.a

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !44542)
  %i.hr = icmp samesign ult i64 %i.hq, 2
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ht = load i64, ptr %i.hs, align 16, !range !113, !alias.scope !44542
  %i.hu = icmp eq i64 %i.ht, 14
  %or.cond.i134 = select i1 %i.hr, i1 %i.hu, i1 false
  br i1 %or.cond.i134, label %.cont.i149, label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit152

.cont.i149:                                       ; preds = %bb.bn
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.hw = load ptr, ptr %i.hv, align 8, !alias.scope !44542, !nonnull !41, !noundef !41 ; 3 uses
  %.sroa.849.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.hw, i64 136
  %.sroa.849.0.copyload.i141 = load i64, ptr %.sroa.849.0..sroa_idx.i140, align 8, !noalias !44542
  %.sroa.1051.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.hw, i64 192 ; 2 uses
  %.sroa.1051.0.copyload.i143 = load i64, ptr %.sroa.1051.0..sroa_idx.i142, align 8, !noalias !44542 ; 2 uses
  %.sroa.1152.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.hw, i64 200 ; 2 uses
  %.sroa.1152.0.copyload.i145 = load double, ptr %.sroa.1152.0..sroa_idx.i144, align 8, !noalias !44542
  %.not.i146 = icmp ne i64 %.sroa.849.0.copyload.i141, 2
  %.not4.i147 = icmp eq i64 %.sroa.1051.0.copyload.i143, 0
  %or.cond60.i148 = select i1 %.not.i146, i1 %.not4.i147, i1 false ; 2 uses
  %.sroa.821.0.i150 = select i1 %or.cond60.i148, i64 1, i64 %.sroa.1051.0.copyload.i143
  %.sroa.9.0.i151 = select i1 %or.cond60.i148, double %.sroa.08.0299, double %.sroa.1152.0.copyload.i145
  store i64 %.sroa.821.0.i150, ptr %.sroa.1051.0..sroa_idx.i142, align 8, !noalias !44542
  store double %.sroa.9.0.i151, ptr %.sroa.1152.0..sroa_idx.i144, align 8, !noalias !44542
  br label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit152

bb.bo:                                            ; preds = %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit156, %bb.bm
  %.not102.not = xor i1 %.not102, true
  %i.hx = trunc nuw i8 %.sroa.070.2 to i1
  %or.cond = and i1 %.not102.not, %i.hx
  br i1 %or.cond, label %bb.bv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit

_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit152: ; preds = %.cont.i149, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.u, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.hp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2)
          to label %bb.bp unwind label %bb.ak

bb.bp:                                            ; preds = %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit152
  %i.hy = load i64, ptr %i.u, align 16, !range !83, !noundef !41 ; 3 uses
  %i.hz = icmp eq i64 %i.hy, -1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8            ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.id = load i64, ptr %i.ic, align 16           ; 3 uses
  br i1 %i.hz, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ie = trunc nuw i8 %.sroa.070.2 to i1
  br label %bb.ay

bb.br:                                            ; preds = %bb.bp
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5198, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.686.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !44543)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !44544
  store i64 %i.hy, ptr %i.j, align 16, !alias.scope !44545, !noalias !44543
  %.sroa.3192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ib, ptr %.sroa.3192.0..sroa_idx, align 8, !alias.scope !44545, !noalias !44543
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.id, ptr %.sroa.4195.0..sroa_idx, align 16, !alias.scope !44545, !noalias !44543
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5198.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5198, i64 280, i1 false), !alias.scope !44545, !noalias !44543
  call void @llvm.experimental.noalias.scope.decl(metadata !44546)
  %i.if = load i64, ptr %i.gh, align 8, !alias.scope !44547, !noalias !44548, !noundef !41 ; 3 uses
  %i.ig = load i64, ptr %i.gb, align 8, !range !45, !alias.scope !44547, !noalias !44548, !noundef !41
  %i.ih = icmp eq i64 %i.if, %i.ig
  br i1 %i.ih, label %bb.bs, label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit156

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit156 unwind label %bb.bt, !noalias !44548

bb.bt:                                            ; preds = %bb.bs
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.j) #54
          to label %.body unwind label %bb.bu, !noalias !44549

bb.bu:                                            ; preds = %bb.bt
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44549
  unreachable

_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit156: ; preds = %bb.br, %bb.bs
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !44547, !noalias !44548, !nonnull !41, !noundef !41
  %i.im = getelementptr inbounds nuw [304 x i8], ptr %i.il, i64 %i.if ; 4 uses
  store i64 %i.hy, ptr %i.im, align 16, !noalias !44543
  %.sroa.3192.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %i.ib, ptr %.sroa.3192.0..sroa_idx193, align 8, !noalias !44543
  %.sroa.4195.0..sroa_idx196 = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store i64 %i.id, ptr %.sroa.4195.0..sroa_idx196, align 16, !noalias !44543
  %.sroa.5198.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5198.0..sroa_idx199, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5198, i64 280, i1 false), !noalias !44543
  %i.in = add i64 %i.if, 1
  store i64 %i.in, ptr %i.gh, align 8, !alias.scope !44547, !noalias !44548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !44544
  br label %bb.bo

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit: ; preds = %bb.by, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.io = load ptr, ptr %i.ab, align 8, !alias.scope !44550, !noundef !41
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169.sink.split

bb.bv:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !44551)
  %.val4.i = load ptr, ptr %.sroa.3.0..sroa_idx13302, align 8, !alias.scope !44551, !nonnull !41, !noundef !41 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val5.i = load i64, ptr %i.iq, align 8, !alias.scope !44551, !noundef !41
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBI_(ptr noalias nofree noundef nonnull align 16 %.val4.i, i64 noundef %.val5.i)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i unwind label %bb.bw, !noalias !44551

bb.bw:                                            ; preds = %bb.bv
  %i.ir = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.is = icmp eq i64 %.sroa.011.0296, 0
  br i1 %i.is, label %.body158, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.it = mul nuw i64 %.sroa.011.0296, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.it, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !44551
  br label %.body158

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %bb.bv
  %i.iu = icmp eq i64 %.sroa.011.0296, 0
  br i1 %i.iu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit, label %bb.by

bb.by:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i
  %i.iv = mul nuw i64 %.sroa.011.0296, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.iv, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !44551
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit, %bb.cd
  %.sroa.7.1.ph = phi i64 [ %.sroa.7.2, %bb.cd ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit ]
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.2, %bb.cd ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit ]
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit, %bb.cd
  %.sroa.7.1 = phi i64 [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit ], [ %.sroa.7.2, %bb.cd ], [ %.sroa.7.1.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169.sink.split ]
  %.sroa.0.1 = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit ], [ %.sroa.0.2, %bb.cd ], [ %.sroa.0.1.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.iw = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.ix = insertvalue { ptr, i64 } %i.iw, i64 %.sroa.7.1, 1
  ret { ptr, i64 } %i.ix

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168: ; preds = %bb.cc, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i164, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.cd

bb.bz:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !44552)
  %.val4.i160 = load ptr, ptr %.sroa.3.0..sroa_idx13302, align 8, !alias.scope !44552, !nonnull !41, !noundef !41 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val5.i161 = load i64, ptr %i.iy, align 8, !alias.scope !44552, !noundef !41
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBI_(ptr noalias nofree noundef nonnull align 16 %.val4.i160, i64 noundef %.val5.i161)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i164 unwind label %bb.ca, !noalias !44552

bb.ca:                                            ; preds = %bb.bz
  %i.iz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ja = icmp eq i64 %.sroa.011.0296, 0
  br i1 %i.ja, label %.body158, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jb = mul nuw i64 %.sroa.011.0296, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i160, i64 noundef %i.jb, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !44552
  br label %.body158

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i164: ; preds = %bb.bz
  %i.jc = icmp eq i64 %.sroa.011.0296, 0
  br i1 %i.jc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168, label %bb.cc

bb.cc:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i164
  %i.jd = mul nuw i64 %.sroa.011.0296, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i160, i64 noundef %i.jd, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !44552
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168

bb.cd:                                            ; preds = %bb.w, %bb.af, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168
  %.sroa.7.2 = phi i64 [ %i.bg, %bb.af ], [ %.sroa.7.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168 ], [ %i.cp, %bb.w ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.bf, %bb.af ], [ %.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168 ], [ %i.cn, %bb.w ] ; 2 uses
  %i.je = load ptr, ptr %i.ab, align 8, !alias.scope !44553, !noundef !41
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169.sink.split

bb.ce:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #54
          to label %.body158 unwind label %bb.ae

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body158, %bb.t
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7radical14layout_radical(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 6 uses
  %i.b = alloca [136 x i8], align 8               ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [304 x i8], align 16              ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [304 x i8], align 16              ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [104 x i8], align 8               ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.0545 = alloca [56 x i8], align 8         ; 5 uses
  %i.t = alloca [176 x i8], align 16              ; 15 uses
  %i.u = alloca [56 x i8], align 8                ; 11 uses
  %i.v = alloca [80 x i8], align 8                ; 4 uses
  %i.w = alloca [80 x i8], align 8                ; 4 uses
  %i.x = alloca [80 x i8], align 8                ; 5 uses
  %i.y = alloca [80 x i8], align 8                ; 5 uses
  %i.z = alloca [320 x i8], align 8               ; 9 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [64 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [80 x i8], align 8               ; 7 uses
  %i.ae = alloca [48 x i8], align 8               ; 4 uses
  %i.af = alloca [48 x i8], align 8               ; 4 uses
  %i.ag = alloca [48 x i8], align 8               ; 7 uses
  %i.ah = alloca [48 x i8], align 8               ; 12 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [8 x i8], align 8                ; 7 uses
  %.sroa.9143 = alloca [280 x i8], align 8        ; 6 uses
  %i.ak = alloca [48 x i8], align 8               ; 14 uses
  %i.al = alloca [48 x i8], align 8               ; 9 uses
  %i.am = alloca [80 x i8], align 8               ; 16 uses
  %i.an = alloca [24 x i8], align 8               ; 12 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  %i.ap = alloca [8 x i8], align 8                ; 11 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 23 uses
  %i.as = alloca [304 x i8], align 16             ; 8 uses
  %i.at = alloca [304 x i8], align 16             ; 23 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 12 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [304 x i8], align 16             ; 8 uses
  %i.ay = alloca [304 x i8], align 16             ; 13 uses
  %i.az = alloca [304 x i8], align 16             ; 5 uses
  %i.ba = alloca [304 x i8], align 16             ; 8 uses
  %i.bb = alloca [48 x i8], align 8               ; 12 uses
  %i.bc = alloca [32 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !range !53, !noundef !41 ; 3 uses
  %i.bf = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.bf, 0
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %.sink.i.sroa.gep539 = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  %.sink.i469.sroa.gep = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %.sink.i469.sroa.gep540 = getelementptr inbounds nuw i8, ptr %i.at, i64 232
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.bc, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @631, i64 noundef 19, i64 noundef %i.be)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.ba, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.g unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit538: ; preds = %.body474.thread567, %.thread, %bb.fr, %bb.k, %bb.f
  %.pn441 = phi { ptr, i32 } [ %i.bi, %bb.f ], [ %.pn438.pn, %bb.k ], [ %.pn438.pn559, %bb.fr ], [ %.pn438.pn559, %.thread ], [ %lpad.thr_comm, %.body474.thread567 ]
  %i.bg = load ptr, ptr %i.bc, align 8, !alias.scope !44782, !noundef !41
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit538
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.du

bb.f:                                             ; preds = %bb.fq, %bb.i, %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit538

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bj = load i64, ptr %i.ba, align 16, !range !83, !noundef !41 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bo = load i64, ptr %i.bn, align 16           ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit535

bb.i:                                             ; preds = %bb.g
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.10.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.10.0..sroa_idx66, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6174.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  store i64 %i.bj, ptr %i.az, align 16
  %.sroa.661.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bm, ptr %.sroa.661.0..sroa_idx62, align 8
  %.sroa.8.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.bo, ptr %.sroa.8.0..sroa_idx64, align 16
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.bb, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.az)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.ax, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.bp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %.body474.thread, %.noexc479
  %.sroa.0170.0 = phi i1 [ %.sroa.0170.1561, %.body474.thread ], [ %.sroa.0170.3, %.noexc479 ]
  %.pn438.pn = phi { ptr, i32 } [ %.pn438562, %.body474.thread ], [ %.pn436, %.noexc479 ] ; 2 uses
  br i1 %.sroa.0170.0, label %.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit538

bb.l:                                             ; preds = %bb.at, %bb.ar, %bb.aq, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit, %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.br = load i64, ptr %i.ax, align 16, !range !83, !noundef !41 ; 4 uses
  %i.bs = icmp eq i64 %i.br, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bw = load i64, ptr %i.bv, align 16           ; 2 uses
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.fp

bb.o:                                             ; preds = %bb.m
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.678.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6178.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  store i64 %i.br, ptr %i.ay, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bu, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  store i64 %i.bw, ptr %.sroa.5.0..sroa_idx, align 16
  %i.bx = load i64, ptr %i.bp, align 16, !range !95, !noundef !41
  %i.by = icmp samesign ult i64 %i.bx, 2          ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sink = select i1 %i.by, ptr %i.bz, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val448 = load ptr, ptr %i.ca, align 8         ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val449 = load i64, ptr %i.cb, align 8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44783)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !44784
  %i.cc = icmp samesign ult i64 %i.br, 2
  br i1 %i.cc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 224
  %i.ce = load ptr, ptr %i.cd, align 16, !alias.scope !44783, !noalias !44785, !nonnull !41, !noundef !41 ; 2 uses
  %i.cf = atomicrmw add ptr %i.ce, i64 1 monotonic, align 8, !noalias !44784
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  %.not.i = icmp eq i64 %.val449, 0
  br i1 %.not.i, label %bb.t, label %bb.u, !prof !44

bb.r:                                             ; preds = %bb.p
  call void @llvm.trap()
end_hunk_8
begin_hunk_9_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts13layout_primes:bb.a

bb.m:                                             ; preds = %bb.j
  %i.aj = load i64, ptr %i.g, align 8, !range !49, !noundef !41
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.am = load double, ptr %i.al, align 8
  %.sroa.03.0 = select i1 %i.ak, double %i.am, double %i.ad
  store i64 1, ptr %i.e, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %.sroa.03.0, ptr %i.an, align 8
  %.not37 = icmp eq i64 %i.w, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %bb.n

._crit_edge:                                      ; preds = %bb.w, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 45
  %.val = load i8, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 46
  %.val26 = load i8, ptr %i.av, align 2
  invoke fastcc void @_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB5_13FrameFragment3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.c, i8 %.val, i8 %.val26, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.p unwind label %.body

bb.n:                                             ; preds = %.lr.ph, %bb.w
  %.sroa.015.036 = phi i64 [ 0, %.lr.ph ], [ %i.aw, %bb.w ] ; 2 uses
  %i.aw = add nuw i64 %.sroa.015.036, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !44963)
  call void @llvm.experimental.noalias.scope.decl(metadata !44964)
  %i.ax = load <2 x double>, ptr %i.u, align 8    ; 2 uses
  %i.ay = load i64, ptr %i.g, align 8, !range !49, !alias.scope !44964, !noalias !44963, !noundef !41 ; 2 uses
  %i.az = load double, ptr %i.al, align 8, !alias.scope !44964, !noalias !44963
  %i.ba = load ptr, ptr %i.ao, align 8, !alias.scope !44964, !noalias !44963, !nonnull !41, !noundef !41 ; 2 uses
  %i.bb = atomicrmw add ptr %i.ba, i64 1 monotonic, align 8, !noalias !44965
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

.body:                                            ; preds = %._crit_edge
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44966
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  %i.bh = load i8, ptr %i.bg, align 2, !range !136, !alias.scope !44967, !noalias !44968, !noundef !41
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 97
  %i.bj = load i8, ptr %i.bi, align 1, !range !116, !alias.scope !44967, !noalias !44968, !noundef !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bn = load <2 x double>, ptr %i.bf, align 8, !alias.scope !44967, !noalias !44968
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bo = load <2 x double>, ptr %i.bk, align 8, !alias.scope !44967, !noalias !44968
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bp = load <2 x double>, ptr %i.bl, align 8, !alias.scope !44967, !noalias !44968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !44969)
  call void @llvm.experimental.noalias.scope.decl(metadata !44970)
  call void @llvm.experimental.noalias.scope.decl(metadata !44971)
  store <2 x double> %i.bn, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !44972, !noalias !44969
  store <2 x double> %i.bo, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !44972, !noalias !44969
  store <2 x double> %i.bp, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !44972, !noalias !44969
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !44972, !noalias !44969
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 105
  store i8 %i.bj, ptr %.sroa.11.0..sroa_idx, align 1, !alias.scope !44972, !noalias !44969
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 %i.bh, ptr %.sroa.12.0..sroa_idx, align 2, !alias.scope !44972, !noalias !44969
  store i64 2, ptr %i.a, align 16, !alias.scope !44973, !noalias !44974
  call void @llvm.experimental.noalias.scope.decl(metadata !44975)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !44976, !noalias !44977, !noundef !41 ; 3 uses
  %i.bs = load i64, ptr %i.bm, align 8, !range !45, !alias.scope !44976, !noalias !44977, !noundef !41
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.t unwind label %bb.r, !noalias !44977

bb.r:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.a) #54
          to label %.body.thread unwind label %bb.s, !noalias !44978

bb.s:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44978
  unreachable

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !44976, !noalias !44977, !nonnull !41, !noundef !41
  %i.by = getelementptr inbounds nuw [304 x i8], ptr %i.bx, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.by, ptr noundef nonnull align 16 dereferenceable(304) %i.a, i64 304, i1 false), !noalias !44978
  %i.bz = add i64 %i.br, 1
  store i64 %i.bz, ptr %i.bq, align 8, !alias.scope !44976, !noalias !44977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !44979)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44980)
  call void @llvm.experimental.noalias.scope.decl(metadata !44981)
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !44982, !nonnull !41, !noundef !41
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !44982
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30 unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ce = load ptr, ptr %i.i, align 8, !alias.scope !44983, !noundef !41
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30, %bb.h
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit27.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit30, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.v:                                             ; preds = %bb.n
  %i.cg = trunc nuw i64 %i.ay to i1
  %.sroa.5.0.i = select i1 %i.cg, double %i.az, double undef
  %i.ch = load i8, ptr %i.ap, align 8, !range !54, !alias.scope !44964, !noalias !44963, !noundef !41
  store <2 x double> %i.ax, ptr %i.aq, align 8, !alias.scope !44963, !noalias !44964
  store i64 %i.ay, ptr %i.d, align 8, !alias.scope !44963, !noalias !44964
  store double %.sroa.5.0.i, ptr %i.ar, align 8, !alias.scope !44963, !noalias !44964
  store ptr %i.ba, ptr %i.as, align 8, !alias.scope !44963, !noalias !44964
  store i8 %i.ch, ptr %i.at, align 8, !alias.scope !44963, !noalias !44964
  %i.ci = uitofp i64 %.sroa.015.036 to double
  %i.cj = fmul nnan double %i.ci, 5.000000e-01
  %i.ck = extractelement <2 x double> %i.ax, i64 0
  %i.cl = fmul double %i.cj, %i.ck                ; 2 uses
  %.inv23 = fcmp ord double %i.cl, 0.000000e+00
  %spec.store.select2 = select i1 %.inv23, double %i.cl, double 0.000000e+00
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, double noundef %spec.store.select2, double noundef 0.000000e+00, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %i.aw, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %bb.n

bb.x:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44984)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44985)
  call void @llvm.experimental.noalias.scope.decl(metadata !44986)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !44987, !nonnull !41, !noundef !41
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !44987
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.y, label %.body.thread

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cn) #58
          to label %.body.thread unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.k, %bb.e
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, %bb.e
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scripts(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1008) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [304 x i8], align 16              ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [104 x i8], align 8               ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [304 x i8], align 16              ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [304 x i8], align 16              ; 6 uses
  %i.q = alloca [304 x i8], align 16              ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [304 x i8], align 16              ; 6 uses
  %i.t = alloca [304 x i8], align 16              ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %i.v = alloca [304 x i8], align 16              ; 6 uses
  %i.w = alloca [304 x i8], align 16              ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 4 uses
  %i.y = alloca [304 x i8], align 16              ; 6 uses
  %i.z = alloca [304 x i8], align 16              ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = alloca [304 x i8], align 16             ; 6 uses
  %i.ac = alloca [48 x i8], align 8               ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 14 uses
  %i.ae = alloca [8 x i8], align 8                ; 25 uses
  %i.af = alloca [304 x i8], align 16             ; 26 uses
  %i.ag = alloca [304 x i8], align 16             ; 21 uses
  %i.ah = alloca [304 x i8], align 16             ; 26 uses
  %i.ai = alloca [304 x i8], align 16             ; 27 uses
  %i.aj = alloca [304 x i8], align 16             ; 19 uses
  %i.ak = alloca [304 x i8], align 16             ; 24 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [304 x i8], align 16             ; 7 uses
  %i.at = alloca [304 x i8], align 16             ; 7 uses
  %i.au = alloca [304 x i8], align 16             ; 7 uses
  %i.av = alloca [304 x i8], align 16             ; 7 uses
  %i.aw = alloca [304 x i8], align 16             ; 7 uses
  %i.ax = alloca [304 x i8], align 16             ; 7 uses
  %i.ay = alloca [304 x i8], align 16             ; 42 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.8254 = alloca [280 x i8], align 8        ; 5 uses
  %.sroa.11243 = alloca [280 x i8], align 8       ; 5 uses
  %i.ba = alloca [304 x i8], align 16             ; 11 uses
  %.sroa.8213 = alloca [280 x i8], align 8        ; 5 uses
  %.sroa.11202 = alloca [280 x i8], align 8       ; 5 uses
  %i.bb = alloca [304 x i8], align 16             ; 13 uses
  %.sroa.8172 = alloca [280 x i8], align 8        ; 5 uses
  %.sroa.11161 = alloca [280 x i8], align 8       ; 5 uses
  %i.bc = alloca [304 x i8], align 16             ; 17 uses
  %i.bd = alloca [304 x i8], align 16             ; 26 uses
  %.sroa.8131 = alloca [280 x i8], align 8        ; 5 uses
  %.sroa.11120 = alloca [280 x i8], align 8       ; 5 uses
  %i.be = alloca [304 x i8], align 16             ; 19 uses
  %.sroa.0 = alloca [1520 x i8], align 16         ; 10 uses
  %.sroa.18 = alloca [280 x i8], align 8          ; 6 uses
  %i.bf = alloca [304 x i8], align 16             ; 8 uses
  %i.bg = alloca [304 x i8], align 16             ; 15 uses
  %.sroa.869 = alloca [280 x i8], align 8         ; 5 uses
  %.sroa.1158 = alloca [280 x i8], align 8        ; 5 uses
  %i.bh = alloca [304 x i8], align 16             ; 17 uses
  %.sroa.830 = alloca [280 x i8], align 8         ; 5 uses
  %.sroa.11 = alloca [280 x i8], align 8          ; 5 uses
  %i.bi = alloca [304 x i8], align 16             ; 14 uses
  %i.bj = alloca [32 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !range !53, !noundef !41
  %i.bm = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.bm, 0
  %.sink.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %.sink.i.i.sroa.gep468 = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  %.sink36.i.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 13 uses
  %.sink36.i.i.i.i.sroa.gep469 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 4 uses
  %.sink19.i.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ay, i64 80 ; 2 uses
  %.sink19.i.i.i.i.sroa.gep471 = getelementptr inbounds nuw i8, ptr %i.ay, i64 264 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.bj, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @637, i64 noundef 19, i64 noundef %i.bl)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.830)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 16, !range !83, !noundef !41
  %.not365 = icmp eq i64 %i.bo, -1
  br i1 %.not365, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !45413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !45414
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(304) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.bn, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aq)
          to label %bb.i unwind label %bb.h, !inline_history !44993

bb.f:                                             ; preds = %bb.d, %bb.k
  %.sroa.915.0 = phi i64 [ %.sroa.727.0.copyload, %bb.k ], [ undef, %bb.d ]
  %.sroa.7.0 = phi ptr [ %.sroa.624.0.copyload, %bb.k ], [ undef, %bb.d ]
  %.sroa.08.0 = phi i64 [ %.sroa.022.0.copyload, %bb.k ], [ -1, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.830)
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.634.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.11, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 %.sroa.08.0, ptr %i.bi, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  store i64 %.sroa.915.0, ptr %.sroa.5.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1158)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.869)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 16, !range !83, !noundef !41
  %.not366 = icmp eq i64 %i.bq, -1
  br i1 %.not366, label %bb.m, label %bb.l

.thread503:                                       ; preds = %bb.ld, %bb.lf, %.thread495, %bb.on, %bb.n, %bb.h
  %.pn390 = phi { ptr, i32 } [ %i.bt, %bb.h ], [ %.pn388, %bb.on ], [ %.pn388, %bb.n ], [ %lpad.thr_comm.split-lp, %.thread495 ], [ %.pn243.i, %bb.lf ], [ %.pn243.i, %bb.ld ]
  %i.br = load ptr, ptr %i.bj, align 8, !alias.scope !45415, !noundef !41
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.g

bb.g:                                             ; preds = %.thread503
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.mr

bb.h:                                             ; preds = %bb.ol, %bb.oj, %bb.oi, %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.thread503

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !45413
  %.sroa.022.0.copyload = load i64, ptr %i.ax, align 16 ; 2 uses
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.624.0.copyload = load ptr, ptr %.sroa.624.0..sroa_idx, align 8 ; 3 uses
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.727.0.copyload = load i64, ptr %.sroa.727.0..sroa_idx, align 16 ; 2 uses
  %.sroa.830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.830, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.830.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.bu = icmp eq i64 %.sroa.022.0.copyload, -1
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.624.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.830)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit463

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.830, i64 280, i1 false)
  br label %bb.f

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !45416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !45417
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(304) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.bp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ap)
          to label %bb.p unwind label %bb.o, !inline_history !45001

bb.m:                                             ; preds = %bb.f, %bb.r
  %i.bv = phi i64 [ %.pre, %bb.r ], [ %.sroa.08.0, %bb.f ] ; 2 uses
  %.sroa.953.0 = phi i64 [ %.sroa.766.0.copyload, %bb.r ], [ undef, %bb.f ]
  %.sroa.748.0 = phi ptr [ %.sroa.663.0.copyload, %bb.r ], [ undef, %bb.f ] ; 2 uses
  %.sroa.045.0 = phi i64 [ %.sroa.061.0.copyload, %bb.r ], [ -1, %bb.f ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869)
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.675.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.1158, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1158)
  store i64 %.sroa.045.0, ptr %i.bh, align 16
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.sroa.748.0, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 3 uses
  store i64 %.sroa.953.0, ptr %.sroa.574.0..sroa_idx, align 16
  %.not367 = icmp eq i64 %i.bv, -1
  %i.bw = ptrtoint ptr %.sroa.748.0 to i64
  %i.bx = bitcast i64 %i.bw to double
  br i1 %.not367, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit, label %bb.s

bb.n:                                             ; preds = %bb.om, %bb.w, %bb.o
end_hunk_9
begin_hunk_10_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scripts:bb.a
_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit: ; preds = %bb.ai, %bb.af, %bb.ae, %bb.ad, %bb.ag, %bb.ah, %bb.aj, %bb.q
  %.sroa.9.6 = phi i64 [ %.sroa.766.0.copyload, %bb.q ], [ %i.da, %bb.aj ], [ %i.da, %bb.ah ], [ %i.da, %bb.ag ], [ %i.da, %bb.ad ], [ %i.da, %bb.ae ], [ %i.da, %bb.af ], [ %i.da, %bb.ai ]
  %.sroa.0.6 = phi ptr [ %.sroa.663.0.copyload, %bb.q ], [ %i.cy, %bb.aj ], [ %i.cy, %bb.ah ], [ %i.cy, %bb.ag ], [ %i.cy, %bb.ad ], [ %i.cy, %bb.ae ], [ %i.cy, %bb.af ], [ %i.cy, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.of

bb.om:                                            ; preds = %.split.thread, %bb.w
  %.pn386475 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn384485, %bb.w ]
  %.sroa.0261.2474 = phi i8 [ %.sroa.0261.3.ph, %.split.thread ], [ %.sroa.0261.4484, %bb.w ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.bh) #54
          to label %bb.n unwind label %bb.mr

bb.on:                                            ; preds = %bb.n
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.bi) #54
          to label %.thread503 unwind label %bb.mr

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.thread503, %bb.g
  resume { ptr, i32 } %.pn390
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef double @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts9math_kern(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(304) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(304) %1, double noundef %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #1 {
bb.a:
  %switch = icmp samesign ult i8 %3, 2
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 16, !range !95, !noundef !41 ; 2 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 1)
  switch i64 %i.b, label %bb.f [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 16, !range !95, !noundef !41 ; 2 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 1)
  switch i64 %i.d, label %bb.k [
    i64 0, label %bb.i
    i64 1, label %bb.j
  ]

bb.d:                                             ; preds = %bb.b
  %i.e = trunc nuw i64 %i.a to i1
  %spec.select.v = select i1 %i.e, i64 8, i64 72
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !49, !noundef !41
  %i.h = trunc nuw i64 %i.g to i1
  %spec.select49.v = select i1 %i.h, i64 16, i64 40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %spec.select49.v.sink = phi i64 [ %spec.select49.v, %bb.e ], [ %spec.select.v, %bb.d ]
  %spec.select49 = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select49.v.sink
  %.sroa.044.2 = load double, ptr %spec.select49, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %.sroa.044.1 = phi double [ 0.000000e+00, %bb.b ], [ %.sroa.044.2, %.sink.split ]
  %i.i = fneg double %2
  %i.j = fcmp uno double %2, 0.000000e+00
  %spec.store.select = select i1 %i.j, double 0.000000e+00, double %i.i
  %i.k = fadd double %spec.store.select, %.sroa.044.1 ; 2 uses
  %.inv47 = fcmp ord double %i.k, 0.000000e+00
  %spec.store.select1 = select i1 %.inv47, double %i.k, double 0.000000e+00 ; 3 uses
  %i.l = load i64, ptr %1, align 16, !range !95, !alias.scope !45678, !noundef !41 ; 2 uses
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.l, i64 1)
  switch i64 %i.m, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69 [
    i64 0, label %bb.g
    i64 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load double, ptr %i.n, align 8, !alias.scope !45678, !noundef !41 ; 2 uses
  %i.p = trunc nuw i64 %i.l to i1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load double, ptr %i.q, align 8, !alias.scope !45678
  %.sroa.022.0.i = select i1 %i.p, double %i.r, double %i.o ; 2 uses
  %i.s = fneg double %.sroa.022.0.i
  %i.t = fcmp uno double %.sroa.022.0.i, 0.000000e+00
  %spec.store.select.i = select i1 %i.t, double 0.000000e+00, double %i.s
  %i.u = fadd double %i.o, %spec.store.select.i   ; 2 uses
  %.inv23.i = fcmp ord double %i.u, 0.000000e+00
  %spec.store.select1.i = select i1 %.inv23.i, double %i.u, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load double, ptr %i.w, align 8, !alias.scope !45678, !noundef !41 ; 2 uses
  %i.y = load i64, ptr %i.v, align 8, !range !49, !alias.scope !45678, !noundef !41
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load double, ptr %i.aa, align 16, !alias.scope !45678
  %.sroa.012.0.i = select i1 %i.z, double %i.ab, double %i.x ; 2 uses
  %i.ac = fneg double %.sroa.012.0.i
  %i.ad = fcmp uno double %.sroa.012.0.i, 0.000000e+00
  %spec.store.select2.i = select i1 %i.ad, double 0.000000e+00, double %i.ac
  %i.ae = fadd double %i.x, %spec.store.select2.i ; 2 uses
  %.inv.i = fcmp ord double %i.ae, 0.000000e+00
  %spec.store.select3.i = select i1 %.inv.i, double %i.ae, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69: ; preds = %bb.h, %bb.g, %bb.f, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.i64.sink92 = phi double [ 0.000000e+00, %bb.k ], [ %spec.store.select3.i63, %bb.m ], [ %spec.store.select1.i68, %bb.l ], [ %spec.store.select3.i, %bb.h ], [ %spec.store.select1.i, %bb.g ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.sroa.0.0 = phi double [ %spec.store.select5, %bb.k ], [ %spec.store.select5, %bb.m ], [ %spec.store.select5, %bb.l ], [ %spec.store.select1, %bb.h ], [ %spec.store.select1, %bb.g ], [ %spec.store.select1, %bb.f ] ; 2 uses
  %i.af = tail call fastcc noundef double @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment14kern_at_height(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(304) %0, i8 noundef %3, double noundef %.sroa.0.0), !noalias !45679
  %i.ag = shl nuw nsw i8 %3, 3
  %switch.shiftamt = zext nneg i8 %i.ag to i32
  %switch.downshift = lshr i32 16777986, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8 ; 2 uses
  %i.ah = fcmp uno double %.sroa.0.0.i64.sink92, 0.000000e+00
  %i.ai = fneg double %.sroa.0.0.i64.sink92
  %spec.store.select6 = select i1 %i.ah, double 0.000000e+00, double %i.ai
  %i.aj = fadd double %2, %spec.store.select6     ; 2 uses
  %.inv46 = fcmp ord double %i.aj, 0.000000e+00
  %spec.store.select7 = select i1 %.inv46, double %i.aj, double 0.000000e+00 ; 2 uses
  %i.ak = tail call fastcc noundef double @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment14kern_at_height(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(304) %1, i8 noundef %switch.masked, double noundef %.sroa.0.0), !noalias !45679
  %i.al = fadd double %i.af, %i.ak                ; 2 uses
  %.inv.i5377 = fcmp ord double %i.al, 0.000000e+00
  %spec.store.select.i5478 = select i1 %.inv.i5377, double %i.al, double 0.000000e+00
  %i.am = tail call fastcc noundef double @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment14kern_at_height(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(304) %0, i8 noundef %3, double noundef %spec.store.select7), !noalias !41
  %i.an = tail call fastcc noundef double @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment14kern_at_height(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(304) %1, i8 noundef %switch.masked, double noundef %spec.store.select7), !noalias !45680
  %i.ao = fadd double %i.am, %i.an                ; 2 uses
  %.inv.i56 = fcmp ord double %i.ao, 0.000000e+00
  %spec.store.select.i57 = select i1 %.inv.i56, double %i.ao, double 0.000000e+00
  %i.ap = tail call noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %spec.store.select.i5478, double noundef %spec.store.select.i57)
  ret double %i.ap

bb.i:                                             ; preds = %bb.c
  %i.aq = trunc nuw i64 %i.c to i1
  %spec.select50.v = select i1 %i.aq, i64 8, i64 72
  br label %.sink.split97

bb.j:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !49, !noundef !41
  %i.at = trunc nuw i64 %i.as to i1
  %spec.select51.v = select i1 %i.at, i64 16, i64 40
  br label %.sink.split97

.sink.split97:                                    ; preds = %bb.i, %bb.j
  %spec.select51.v.sink = phi i64 [ %spec.select51.v, %bb.j ], [ %spec.select50.v, %bb.i ]
  %spec.select51 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select51.v.sink
  %.sroa.045.2 = load double, ptr %spec.select51, align 8
  br label %bb.k

bb.k:                                             ; preds = %.sink.split97, %bb.c
  %.sroa.045.1 = phi double [ 0.000000e+00, %bb.c ], [ %.sroa.045.2, %.sink.split97 ]
  %i.au = fneg double %2
  %i.av = fcmp uno double %2, 0.000000e+00
  %spec.store.select4 = select i1 %i.av, double 0.000000e+00, double %i.au
  %i.aw = fadd double %spec.store.select4, %.sroa.045.1 ; 2 uses
  %.inv = fcmp ord double %i.aw, 0.000000e+00
  %spec.store.select5 = select i1 %.inv, double %i.aw, double 0.000000e+00 ; 3 uses
  %i.ax = load i64, ptr %0, align 16, !range !95, !alias.scope !45681, !noundef !41 ; 2 uses
  %i.ay = tail call i64 @llvm.usub.sat.i64(i64 %i.ax, i64 1)
  switch i64 %i.ay, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69 [
    i64 0, label %bb.l
    i64 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load double, ptr %i.az, align 8, !alias.scope !45681, !noundef !41 ; 2 uses
  %i.bb = trunc nuw i64 %i.ax to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load double, ptr %i.bc, align 8, !alias.scope !45681
  %.sroa.022.0.i65 = select i1 %i.bb, double %i.bd, double %i.ba ; 2 uses
  %i.be = fneg double %.sroa.022.0.i65
  %i.bf = fcmp uno double %.sroa.022.0.i65, 0.000000e+00
  %spec.store.select.i66 = select i1 %i.bf, double 0.000000e+00, double %i.be
  %i.bg = fadd double %i.ba, %spec.store.select.i66 ; 2 uses
  %.inv23.i67 = fcmp ord double %i.bg, 0.000000e+00
  %spec.store.select1.i68 = select i1 %.inv23.i67, double %i.bg, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69

bb.m:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load double, ptr %i.bi, align 8, !alias.scope !45681, !noundef !41 ; 2 uses
  %i.bk = load i64, ptr %i.bh, align 8, !range !49, !alias.scope !45681, !noundef !41
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load double, ptr %i.bm, align 16, !alias.scope !45681
  %.sroa.012.0.i60 = select i1 %i.bl, double %i.bn, double %i.bj ; 2 uses
  %i.bo = fneg double %.sroa.012.0.i60
  %i.bp = fcmp uno double %.sroa.012.0.i60, 0.000000e+00
  %spec.store.select2.i61 = select i1 %i.bp, double 0.000000e+00, double %i.bo
  %i.bq = fadd double %i.bj, %spec.store.select2.i61 ; 2 uses
  %.inv.i62 = fcmp ord double %i.bq, 0.000000e+00
  %spec.store.select3.i63 = select i1 %.inv.i62, double %i.bq, double 0.000000e+00
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment7descent.exit69
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math8fraction15layout_fraction(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [176 x i8], align 16              ; 16 uses
  %.sroa.0477 = alloca [56 x i8], align 8         ; 5 uses
  %i.m = alloca [112 x i8], align 8               ; 4 uses
  %i.n = alloca [96 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.5.sroa.0 = alloca [56 x i8], align 8     ; 3 uses
  %.sroa.5.sroa.7 = alloca [6 x i8], align 2      ; 2 uses
  %.sroa.9 = alloca [20 x i8], align 4            ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 14 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 10 uses
  %i.u = alloca [48 x i8], align 8                ; 3 uses
  %i.v = alloca [304 x i8], align 16              ; 5 uses
  %i.w = alloca [304 x i8], align 16              ; 8 uses
  %i.x = alloca [48 x i8], align 8                ; 15 uses
  %i.y = alloca [304 x i8], align 16              ; 5 uses
  %i.z = alloca [304 x i8], align 16              ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 17 uses
  %i.ab = alloca [32 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !range !53, !noundef !41 ; 2 uses
  %i.ae = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.ab, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @639, i64 noundef 20, i64 noundef %i.ad)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.z, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.g unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit462: ; preds = %bb.cb, %bb.al, %bb.ci, %bb.cj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit459, %bb.f
  %.pn427 = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %.pn424, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit459 ], [ %.pn424.pn496, %bb.cj ], [ %.pn424.pn496, %bb.ci ], [ %lpad.thr_comm.split-lp, %bb.al ], [ %i.ld, %bb.cb ]
  %i.af = load ptr, ptr %i.ab, align 8, !alias.scope !45755, !noundef !41
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit462
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ag

bb.f:                                             ; preds = %bb.m, %bb.i, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit462

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ai = load i64, ptr %i.z, align 16, !range !83, !noundef !41 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.an = load i64, ptr %i.am, align 16           ; 2 uses
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.i:                                             ; preds = %bb.g
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.10.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.10.0..sroa_idx87, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6121.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 %i.ai, ptr %i.y, align 16
  %.sroa.6.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.al, ptr %.sroa.6.0..sroa_idx83, align 8
  %.sroa.8.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.an, ptr %.sroa.8.0..sroa_idx85, align 16
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.y)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.w, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.ao, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.k unwind label %.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit459: ; preds = %bb.cg, %bb.ch, %.body
  br i1 %.sroa.0118.1, label %bb.ci, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit462

.thread:                                          ; preds = %bb.j, %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aq = load i64, ptr %i.w, align 16, !range !83, !noundef !41 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.av = load i64, ptr %i.au, align 16           ; 3 uses
  br i1 %i.ar, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !45756)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45757)
  call void @llvm.experimental.noalias.scope.decl(metadata !45758)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !45759, !nonnull !41, !noundef !41
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !45759
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.f

bb.n:                                             ; preds = %bb.k
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.1096.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.1096.0..sroa_idx97, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6125.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.aq, ptr %i.v, align 16
  %.sroa.690.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.at, ptr %.sroa.690.0..sroa_idx91, align 8
  %.sroa.893.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.av, ptr %.sroa.893.0..sroa_idx94, align 16
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.x, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.v)
          to label %bb.o unwind label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val433 = load i64, ptr %i.ba, align 8, !noundef !41 ; 2 uses
  %.not.i = icmp eq i64 %.val433, 0
  br i1 %.not.i, label %bb.p, label %bb.r, !prof !44

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
          to label %.noexc437 unwind label %bb.q

.noexc437:                                        ; preds = %bb.p
  unreachable

.body:                                            ; preds = %.thread497, %bb.cf, %bb.ab, %bb.ac, %bb.q
  %.pn424 = phi { ptr, i32 } [ %i.fz, %bb.ab ], [ %.pn422501, %bb.cf ], [ %.pn422501, %.thread497 ], [ %i.bc, %bb.q ], [ %i.fz, %bb.ac ] ; 2 uses
  %.sroa.0118.1 = phi i1 [ false, %bb.ab ], [ false, %bb.cf ], [ false, %.thread497 ], [ %i.bd, %bb.q ], [ false, %bb.ac ]
  %.sroa.0117.0 = phi i8 [ %.sroa.0117.2, %bb.ab ], [ %.sroa.0117.4502, %bb.cf ], [ %.sroa.0117.4502, %.thread497 ], [ %.sroa.0117.1, %bb.q ], [ %.sroa.0117.2, %bb.ac ]
  %i.bb = trunc nuw i8 %.sroa.0117.0 to i1
  br i1 %i.bb, label %bb.cg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit459

bb.q:                                             ; preds = %bb.s, %bb.p, %bb.af, %bb.aj, %bb.ai, %bb.ah, %bb.w, %bb.z, %bb.y, %bb.x, %bb.v, %bb.t, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.0117.1 = phi i8 [ 1, %bb.p ], [ 0, %bb.af ], [ 1, %bb.aj ], [ 1, %bb.ai ], [ 1, %bb.ah ], [ 1, %bb.w ], [ 1, %bb.z ], [ 1, %bb.y ], [ 1, %bb.x ], [ 1, %bb.v ], [ 1, %bb.t ], [ 1, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit ], [ 1, %bb.s ] ; 2 uses
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = trunc nuw i8 %.sroa.0117.1 to i1
  br label %.body

bb.r:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val432 = load ptr, ptr %i.be, align 8, !nonnull !41, !noundef !41
  %i.bf = getelementptr [8 x i8], ptr %.val432, i64 %.val433
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8     ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 184 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 192
  %i.bk = load atomic i32, ptr %i.bj acquire, align 4, !noalias !45760
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.s, !prof !43

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.q

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.r, %bb.s
  %i.bm = load ptr, ptr %i.bi, align 8, !nonnull !41, !noundef !41 ; 9 uses
end_hunk_10
begin_hunk_11_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math8fraction15layout_fraction:bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx468.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 113
  store i8 %.sroa.5.sroa.6.0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx468.sroa_idx, align 1
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx468.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx468.sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.sroa.7, i64 6, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, i64 20, i1 false)
  %.sroa.9469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  store i8 0, ptr %.sroa.9469.0..sroa_idx, align 16
  %i.ku = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.ad, ptr %i.ku, align 8
  store i64 2, ptr %i.l, align 16
  %i.kv = extractelement <2 x double> %i.id, i64 0
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.t, double noundef %i.kv, double noundef %i.hu, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(176) %i.l)
          to label %bb.bw unwind label %bb.ax

_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.bn, %bb.bl, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
  %.sroa.7.104.copyload = phi i32 [ 3, %bb.bn ], [ %.sroa.0.0.i451, %bb.bl ], [ 2, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_6StrokeNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i446)
          to label %bb.bt unwind label %bb.ce

bb.bt:                                            ; preds = %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  invoke void @_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_6StrokeNtNtNtB9_11foundations6styles7Resolve7resolve(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
          to label %bb.bu unwind label %bb.ce

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsE17unwrap_or_default(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.n)
          to label %bb.bv unwind label %bb.ce

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !45778)
  call void @llvm.experimental.noalias.scope.decl(metadata !45779)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.0, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !alias.scope !45780, !noalias !45781
  %.sroa.5.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.kw = load <2 x double>, ptr %.sroa.5.sroa.3.0..sroa_idx, align 8, !alias.scope !45780, !noalias !45781
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.sroa.5.sroa.5.0.copyload490 = load i8, ptr %.sroa.5.sroa.5.0..sroa_idx, align 8, !alias.scope !45780, !noalias !45781
  %.sroa.5.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 73
  %.sroa.5.sroa.6.0.copyload491 = load i8, ptr %.sroa.5.sroa.6.0..sroa_idx, align 1, !alias.scope !45780, !noalias !45781
  %.sroa.5.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.sroa.7, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.sroa.7.0..sroa_idx, i64 6, i1 false), !alias.scope !45780, !noalias !45781
  %.sroa.9.104..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.104..sroa_idx, i64 20, i1 false), !alias.scope !45782, !noalias !45783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bs

bb.bw:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  br i1 %.not418.not, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.by, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.af

bb.by:                                            ; preds = %bb.bw
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.bx unwind label %bb.al

bb.bz:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !45784)
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45785
  call void @llvm.experimental.noalias.scope.decl(metadata !45786)
  call void @llvm.experimental.noalias.scope.decl(metadata !45787)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ky, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.h, i64 104, i1 false), !alias.scope !45788, !noalias !45784
  store i64 2, ptr %i.a, align 16, !alias.scope !45789, !noalias !45790
  call void @llvm.experimental.noalias.scope.decl(metadata !45791)
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !alias.scope !45792, !noalias !45793, !noundef !41 ; 3 uses
  %i.lb = load i64, ptr %i.kx, align 8, !range !45, !alias.scope !45792, !noalias !45793, !noundef !41
  %i.lc = icmp eq i64 %i.la, %i.lb
  br i1 %i.lc, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kx)
          to label %bb.cd unwind label %bb.cb, !noalias !45793

bb.cb:                                            ; preds = %bb.ca
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.a) #54
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit462 unwind label %bb.cc, !noalias !45794

bb.cc:                                            ; preds = %bb.cb
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !45794
  unreachable

bb.cd:                                            ; preds = %bb.ca, %bb.bz
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8, !alias.scope !45792, !noalias !45793, !nonnull !41, !noundef !41
  %i.lh = getelementptr inbounds nuw [304 x i8], ptr %i.lg, i64 %i.la
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.lh, ptr noundef nonnull align 16 dereferenceable(304) %i.a, i64 304, i1 false), !noalias !45794
  %i.li = add i64 %i.la, 1
  store i64 %i.li, ptr %i.kz, align 8, !alias.scope !45792, !noalias !45793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.lj = load ptr, ptr %i.ab, align 8, !alias.scope !45795, !noundef !41
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit460, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit460.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit460.sink.split: ; preds = %bb.cd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.4.0.ph = phi i64 [ %.sroa.4.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ], [ undef, %bb.cd ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ], [ null, %bb.cd ]
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit460

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit460: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit460.sink.split, %bb.cd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.4.0 = phi i64 [ undef, %bb.cd ], [ %.sroa.4.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ], [ %.sroa.4.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit460.sink.split ]
  %.sroa.0.0 = phi ptr [ null, %bb.cd ], [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ], [ %.sroa.0.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit460.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ll = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.lm = insertvalue { ptr, i64 } %i.ll, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.lm

bb.ce:                                            ; preds = %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %bb.bt, %bb.bu
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #54
          to label %.thread509 unwind label %bb.ag

.thread509:                                       ; preds = %bb.ce, %.thread521, %bb.ax
  %.pn420513 = phi { ptr, i32 } [ %lpad.thr_comm519, %.thread521 ], [ %lpad.thr_comm.split-lp520, %bb.ax ], [ %i.ln, %bb.ce ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #54
          to label %.thread497 unwind label %bb.ag

.thread497:                                       ; preds = %bb.bq, %bb.ax, %.thread509, %.thread504
  %.sroa.0117.4502 = phi i8 [ %.sroa.0117.5.ph, %.thread504 ], [ 0, %.thread509 ], [ 0, %bb.ax ], [ 0, %bb.bq ] ; 2 uses
  %.pn422501 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread504 ], [ %.pn420513, %.thread509 ], [ %lpad.thr_comm.split-lp520, %bb.ax ], [ %i.kq, %bb.bq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45796)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45797)
  call void @llvm.experimental.noalias.scope.decl(metadata !45798)
  %i.lp = load ptr, ptr %i.lo, align 8, !alias.scope !45799, !nonnull !41, !noundef !41
  %i.lq = atomicrmw sub ptr %i.lp, i64 1 release, align 8, !noalias !45799
  %i.lr = icmp eq i64 %i.lq, 1
  br i1 %i.lr, label %bb.cf, label %.body

bb.cf:                                            ; preds = %.thread497
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lo) #58
          to label %.body unwind label %bb.ag

bb.cg:                                            ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !45800)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45801)
  call void @llvm.experimental.noalias.scope.decl(metadata !45802)
  %i.lt = load ptr, ptr %i.ls, align 8, !alias.scope !45803, !nonnull !41, !noundef !41
  %i.lu = atomicrmw sub ptr %i.lt, i64 1 release, align 8, !noalias !45803
  %i.lv = icmp eq i64 %i.lu, 1
  br i1 %i.lv, label %bb.ch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit459

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ls) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit459 unwind label %bb.ag

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.l, %bb.m, %bb.h
  %.sroa.4.1 = phi i64 [ %i.an, %bb.h ], [ %i.av, %bb.m ], [ %i.av, %bb.l ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.al, %bb.h ], [ %i.at, %bb.m ], [ %i.at, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.lw = load ptr, ptr %i.ab, align 8, !alias.scope !45804, !noundef !41
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit460, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit460.sink.split

bb.ci:                                            ; preds = %.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit459
  %.pn424.pn496 = phi { ptr, i32 } [ %i.ap, %.thread ], [ %.pn424, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit459 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45805)
  %i.ly = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45806)
  call void @llvm.experimental.noalias.scope.decl(metadata !45807)
  %i.lz = load ptr, ptr %i.ly, align 8, !alias.scope !45808, !nonnull !41, !noundef !41
  %i.ma = atomicrmw sub ptr %i.lz, i64 1 release, align 8, !noalias !45808
  %i.mb = icmp eq i64 %i.ma, 1
  br i1 %i.mb, label %bb.cj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit462

bb.cj:                                            ; preds = %bb.ci
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ly) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit462 unwind label %bb.ag

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit462, %bb.e
  resume { ptr, i32 } %.pn427
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math8fraction22layout_skewed_fraction(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [104 x i8], align 8               ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 10 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [304 x i8], align 16              ; 5 uses
  %i.n = alloca [304 x i8], align 16              ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 9 uses
  %i.p = alloca [304 x i8], align 16              ; 5 uses
  %i.q = alloca [304 x i8], align 16              ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [304 x i8], align 16              ; 5 uses
  %i.t = alloca [304 x i8], align 16              ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 9 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = load i64, ptr %i.w, align 8, !range !53, !noundef !41
  %i.y = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.v, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @643, i64 noundef 27, i64 noundef %i.x)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val210 = load i64, ptr %i.z, align 8, !noundef !41 ; 2 uses
  %.not.i = icmp eq i64 %.val210, 0
  br i1 %.not.i, label %bb.e, label %bb.h, !prof !44

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit228: ; preds = %bb.al, %.body, %bb.u, %bb.aw, %bb.ax, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit225, %bb.p, %bb.g
  %.pn208 = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %.pn.pn236, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit225 ], [ %.pn243, %bb.p ], [ %.pn206231, %bb.ax ], [ %.pn206231, %bb.aw ], [ %lpad.thr_comm, %bb.u ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.fa, %bb.al ]
  %i.aa = load ptr, ptr %i.v, align 8, !alias.scope !45867, !noundef !41
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit228
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.aq

bb.g:                                             ; preds = %bb.at, %bb.i, %bb.e, %bb.n, %bb.k, %bb.j, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit228

bb.h:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ad, align 8, !nonnull !41, !noundef !41
  %i.ae = getelementptr [8 x i8], ptr %.val, i64 %.val210
  %i.af = getelementptr i8, ptr %i.ae, i64 -8     ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 184 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 192
  %i.aj = load atomic i32, ptr %i.ai acquire, align 4, !noalias !45868
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.i, !prof !43

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.g

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.h, %bb.i
  %i.al = load ptr, ptr %i.ah, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %i.am = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2)
          to label %bb.j unwind label %bb.g       ; 2 uses

bb.j:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  %i.an = extractvalue { double, double } %i.am, 0
  %i.ao = extractvalue { double, double } %i.am, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ap = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.an, double noundef %i.ao, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.k unwind label %bb.g       ; 3 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 272
  %i.ar = load double, ptr %i.aq, align 8, !noundef !41
  %i.as = fmul double %i.ap, %i.ar                ; 2 uses
  %i.at = call double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp one double %i.at, +inf
  %spec.store.select30 = select i1 %i.au, double %i.as, double 0.000000e+00 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 280
  %i.aw = load double, ptr %i.av, align 8, !noundef !41
  %i.ax = fmul double %i.ap, %i.aw                ; 2 uses
  %i.ay = call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp one double %i.ay, +inf
  %spec.store.select32 = select i1 %i.az, double %i.ax, double 0.000000e+00 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !noundef !41
  %i.bc = fmul double %i.ap, %i.bb                ; 2 uses
  %i.bd = call double @llvm.fabs.f64(double %i.bc)
  %i.be = fcmp one double %i.bd, +inf
  %spec.store.select31 = select i1 %i.be, double %i.bc, double 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.t, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bf = load i64, ptr %i.t, align 16, !range !83, !noundef !41 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bk = load i64, ptr %i.bj, align 16           ; 2 uses
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit223

bb.n:                                             ; preds = %bb.l
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.10.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.10.0..sroa_idx39, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.680.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.bf, ptr %i.s, align 16
  %.sroa.6.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.bi, ptr %.sroa.6.0..sroa_idx35, align 8
  %.sroa.8.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.bk, ptr %.sroa.8.0..sroa_idx37, align 16
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.u, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.s)
          to label %bb.o unwind label %bb.g

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !noundef !41 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bo = load double, ptr %i.bn, align 8, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.q, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.bp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.q unwind label %.thread

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit221
  br i1 %.sroa.063.2244, label %bb.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit228

.thread:                                          ; preds = %bb.o, %bb.s, %bb.x
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.br = load i64, ptr %i.q, align 16, !range !83, !noundef !41 ; 2 uses
  %i.bs = icmp eq i64 %i.br, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bw = load i64, ptr %i.bv, align 16           ; 2 uses
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.s:                                             ; preds = %bb.q
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.1048.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.1048.0..sroa_idx49, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.684.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.br, ptr %i.p, align 16
  %.sroa.642.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.bu, ptr %.sroa.642.0..sroa_idx43, align 8
  %.sroa.845.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.bw, ptr %.sroa.845.0..sroa_idx46, align 16
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.r, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.p)
          to label %bb.t unwind label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.by = load double, ptr %i.bx, align 8, !noundef !41
end_hunk_11
