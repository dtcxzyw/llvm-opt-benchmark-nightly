Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/semver-d35bd5e24f84bdab.semver.6b71945c61af6f55-cgu.0?download=true
inline.NumInlined: 523
inline.NumDeleted: 83
begin_hunk_0_@_RNvXNtCs9dV2ZPf2jOH_6semver5parseNtB4_7VersionNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str:bb.a

bb.m:                                             ; preds = %bb.k
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.6143.0.copyload = load i64, ptr %.sroa.6143.0..sroa_idx, align 8 ; 4 uses
  %i.aw = icmp eq i64 %.sroa.6143.0.copyload, 0
  br i1 %i.aw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 45, ptr %i.a, align 4
  %i.ax = call zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs3TiGK1alE6v_14rustc_demangle(ptr nonnull %i.at, i64 %.sroa.6143.0.copyload, ptr nonnull %i.a, i64 range(i64 1, 5) 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ax, label %bb.p, label %bb.s

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  %.sroa.2145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.2145.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.copyload.i113, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.copyload.i123, ptr %.sroa.4146.0..sroa_idx, align 8
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.az = add i64 %.sroa.6143.0.copyload, -1
  call fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse21prerelease_identifier(ptr noalias align 8 %i.j, ptr nonnull %i.ay, i64 %i.az)
  %i.ba = load ptr, ptr %i.j, align 8             ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  %i.bc = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i125 = load i64, ptr %i.bd, align 8 ; 2 uses
  br i1 %i.bb, label %_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTNtCs9dV2ZPf2jOH_6semver10PrereleaseReENtNtBN_5parse5ErrorENtNtNtB7_3ops9try_trait3Try6branchBN_.exit.thread, label %bb.q

_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTNtCs9dV2ZPf2jOH_6semver10PrereleaseReENtNtBN_5parse5ErrorENtNtNtB7_3ops9try_trait3Try6branchBN_.exit.thread: ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i125, ptr %i.be, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.bc, ptr %i.k, align 8
  %i.bf = icmp eq ptr %i.ba, inttoptr (i64 -1 to ptr)
  br i1 %i.bf, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = inttoptr i64 %.sroa.0.0.copyload.i125 to ptr
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r
  %.sroa.029.0 = phi i64 [ %i.bc, %bb.r ], [ -1, %bb.n ] ; 2 uses
  %.sroa.332.0 = phi ptr [ %i.bg, %bb.r ], [ %i.at, %bb.n ] ; 2 uses
  %.sroa.6.0 = phi i64 [ %.sroa.7.0.copyload, %bb.r ], [ %.sroa.6143.0.copyload, %bb.n ] ; 2 uses
  %.sroa.03.0 = phi i64 [ 768, %bb.r ], [ 512, %bb.n ]
  store i64 %.sroa.029.0, ptr %i.l, align 8
  %i.bh = invoke { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12strip_prefixcECs9dV2ZPf2jOH_6semver(ptr %.sroa.332.0, i64 %.sroa.6.0, i32 43)
          to label %bb.x unwind label %bb.w       ; 2 uses

bb.t:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 775, ptr %i.bi, align 8
  store ptr null, ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10PrereleaseEBD_(ptr nonnull align 8 %i.k)
  br label %bb.u

bb.u:                                             ; preds = %bb.ah, %bb.ad, %bb.t, %_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTNtCs9dV2ZPf2jOH_6semver10PrereleaseReENtNtBN_5parse5ErrorENtNtNtB7_3ops9try_trait3Try6branchBN_.exit.thread, %bb.o, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.c
  ret void

bb.v:                                             ; preds = %bb.ae, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.w ], [ %i.bu, %bb.ae ]
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10PrereleaseEBD_(ptr nonnull align 8 %i.l) #34
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.y, %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %bb.s
  %i.bk = extractvalue { ptr, i64 } %i.bh, 0      ; 2 uses
  %.not108 = icmp eq ptr %i.bk, null
  br i1 %.not108, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = extractvalue { ptr, i64 } %i.bh, 1
  invoke fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse16build_identifier(ptr noalias align 8 %i.g, ptr nonnull %i.bk, i64 %i.bl)
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.y
  %i.bm = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i126 = load i64, ptr %i.bp, align 8 ; 2 uses
  br i1 %i.bn, label %_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTNtCs9dV2ZPf2jOH_6semver13BuildMetadataReENtNtBN_5parse5ErrorENtNtNtB7_3ops9try_trait3Try6branchBN_.exit.thread, label %bb.aa

_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTNtCs9dV2ZPf2jOH_6semver13BuildMetadataReENtNtBN_5parse5ErrorENtNtNtB7_3ops9try_trait3Try6branchBN_.exit.thread: ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i126, ptr %i.bq, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.sroa.7151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.7151.0.copyload = load i64, ptr %.sroa.7151.0..sroa_idx, align 8
  store i64 %i.bo, ptr %i.h, align 8
  %i.br = icmp eq ptr %i.bm, inttoptr (i64 -1 to ptr)
  br i1 %i.br, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = inttoptr i64 %.sroa.0.0.copyload.i126 to ptr
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1031, ptr %i.bt, align 8
  store ptr null, ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver13BuildMetadataEBD_(ptr nonnull align 8 %i.h)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ai, %bb.ac, %_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTNtCs9dV2ZPf2jOH_6semver13BuildMetadataReENtNtBN_5parse5ErrorENtNtNtB7_3ops9try_trait3Try6branchBN_.exit.thread
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10PrereleaseEBD_(ptr nonnull align 8 %i.l)
  br label %bb.u

bb.ae:                                            ; preds = %bb.af
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver13BuildMetadataEBD_(ptr nonnull align 8 %i.i) #34
  br label %bb.v

bb.af:                                            ; preds = %bb.ab, %bb.x
  %.sroa.049.0 = phi i64 [ %i.bo, %bb.ab ], [ -1, %bb.x ] ; 2 uses
  %.sroa.352.0 = phi ptr [ %i.bs, %bb.ab ], [ %.sroa.332.0, %bb.x ] ; 2 uses
  %.sroa.653.0 = phi i64 [ %.sroa.7151.0.copyload, %bb.ab ], [ %.sroa.6.0, %bb.x ]
  %.sroa.03.1 = phi i64 [ 1024, %bb.ab ], [ %.sroa.03.0, %bb.x ]
  store i64 %.sroa.049.0, ptr %i.i, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.352.0, i64 %.sroa.653.0
  store ptr %.sroa.352.0, ptr %i.f, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = invoke { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.f) #28
          to label %bb.ag unwind label %bb.ae     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.by = extractvalue { i32, i32 } %i.bx, 0
  %i.bz = trunc i32 %i.by to i1
  %i.ca = extractvalue { i32, i32 } %i.bx, 1      ; 2 uses
  %.not109179 = icmp ne i32 %i.ca, -1
  %.not109.not = select i1 %i.bz, i1 %.not109179, i1 false
  br i1 %.not109.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i64 %.sroa.029.0, ptr %0, align 8
  %.sroa.078.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.049.0, ptr %.sroa.078.sroa.2.0..sroa_idx, align 8
  %.sroa.379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.379.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.copyload.i113, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.copyload.i123, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.u

bb.ai:                                            ; preds = %bb.ag
  %.sroa.498.0.insert.ext = zext i32 %i.ca to i64
  %.sroa.498.0.insert.shift = shl nuw i64 %.sroa.498.0.insert.ext, 32
  %.sroa.296.0.insert.insert = or i64 %.sroa.03.1, %.sroa.498.0.insert.shift
  %.sroa.095.0.insert.insert = or i64 %.sroa.296.0.insert.insert, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.095.0.insert.insert, ptr %i.cb, align 8
  store ptr null, ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver13BuildMetadataEBD_(ptr nonnull align 8 %i.i)
  br label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNtCs9dV2ZPf2jOH_6semver7displayNtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !153 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 134217728
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i16, ptr %i.e, align 4
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ult i64 %i.i, 10
  br i1 %i.j, label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i, label %tailrecurse.i.i.i.i

tailrecurse.i.i.i.i:                              ; preds = %bb.b, %tailrecurse.i.i.i.i
  %.tr2.i.i.i.i = phi i64 [ %i.k, %tailrecurse.i.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %accumulator.tr1.i.i.i.i = phi i64 [ %i.l, %tailrecurse.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.k = udiv i64 %.tr2.i.i.i.i, 10
  %i.l = add i64 %accumulator.tr1.i.i.i.i, 1
  %i.m = icmp ult i64 %.tr2.i.i.i.i, 100
  br i1 %i.m, label %tailrecurse._crit_edge.loopexit.i.i.i.i, label %tailrecurse.i.i.i.i

tailrecurse._crit_edge.loopexit.i.i.i.i:          ; preds = %tailrecurse.i.i.i.i
  %i.n = add i64 %accumulator.tr1.i.i.i.i, 4
  br label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i

_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i: ; preds = %tailrecurse._crit_edge.loopexit.i.i.i.i, %bb.b
  %accumulator.tr.lcssa.i.i.i.i = phi i64 [ 3, %bb.b ], [ %i.n, %tailrecurse._crit_edge.loopexit.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp ult i64 %i.p, 10
  br i1 %i.q, label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i, label %tailrecurse.i1.i.i.i

tailrecurse.i1.i.i.i:                             ; preds = %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i, %tailrecurse.i1.i.i.i
  %.tr2.i2.i.i.i = phi i64 [ %i.r, %tailrecurse.i1.i.i.i ], [ %i.p, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i ] ; 2 uses
  %accumulator.tr1.i3.i.i.i = phi i64 [ %i.s, %tailrecurse.i1.i.i.i ], [ 0, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i ] ; 2 uses
  %i.r = udiv i64 %.tr2.i2.i.i.i, 10
  %i.s = add i64 %accumulator.tr1.i3.i.i.i, 1
  %i.t = icmp ult i64 %.tr2.i2.i.i.i, 100
  br i1 %i.t, label %tailrecurse._crit_edge.loopexit.i4.i.i.i, label %tailrecurse.i1.i.i.i

tailrecurse._crit_edge.loopexit.i4.i.i.i:         ; preds = %tailrecurse.i1.i.i.i
  %i.u = add i64 %accumulator.tr1.i3.i.i.i, 2
  br label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i

_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i: ; preds = %tailrecurse._crit_edge.loopexit.i4.i.i.i, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i
  %accumulator.tr.lcssa.i5.i.i.i = phi i64 [ 1, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit.i.i.i ], [ %i.u, %tailrecurse._crit_edge.loopexit.i4.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ult i64 %i.w, 10
  br i1 %i.x, label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i, label %tailrecurse.i7.i.i.i

tailrecurse.i7.i.i.i:                             ; preds = %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i, %tailrecurse.i7.i.i.i
  %.tr2.i8.i.i.i = phi i64 [ %i.y, %tailrecurse.i7.i.i.i ], [ %i.w, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i ] ; 2 uses
  %accumulator.tr1.i9.i.i.i = phi i64 [ %i.z, %tailrecurse.i7.i.i.i ], [ 0, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i ] ; 2 uses
  %i.y = udiv i64 %.tr2.i8.i.i.i, 10
  %i.z = add i64 %accumulator.tr1.i9.i.i.i, 1
  %i.aa = icmp ult i64 %.tr2.i8.i.i.i, 100
  br i1 %i.aa, label %tailrecurse._crit_edge.loopexit.i10.i.i.i, label %tailrecurse.i7.i.i.i

tailrecurse._crit_edge.loopexit.i10.i.i.i:        ; preds = %tailrecurse.i7.i.i.i
  %i.ab = add i64 %accumulator.tr1.i9.i.i.i, 2
  br label %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i

_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i: ; preds = %tailrecurse._crit_edge.loopexit.i10.i.i.i, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i
  %accumulator.tr.lcssa.i11.i.i.i = phi i64 [ 1, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit6.i.i.i ], [ %i.ab, %tailrecurse._crit_edge.loopexit.i10.i.i.i ]
  %.val.i.i.i.i = load ptr, ptr %0, align 8       ; 4 uses
  %i.ac = icmp ne ptr %.val.i.i.i.i, inttoptr (i64 -1 to ptr) ; 2 uses
  %i.ad = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  br i1 %i.ac, label %bb.c, label %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i

bb.c:                                             ; preds = %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i
  %i.ae = icmp sgt ptr %.val.i.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.ae, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.ad ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i16, ptr %i.af, align 1 ; 2 uses
  %i.ag = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -1
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.af) #29
  br label %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ai = and i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 127 ; 2 uses
  %i.aj = zext nneg i16 %i.ai to i64
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 3
  %narrow.i.i.i.i.i.i.i = sub nuw nsw i32 8, %i.am
  %i.an = zext nneg i32 %narrow.i.i.i.i.i.i.i to i64
  br label %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i

_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i: ; preds = %bb.h, %bb.f, %bb.e, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_RNvNtCs9dV2ZPf2jOH_6semver7display6digits.exit12.i.i.i ], [ %i.an, %bb.h ], [ %i.ah, %bb.e ], [ %i.aj, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i13.i.i.i = load ptr, ptr %i.ao, align 8  ; 4 uses
  %i.ap = icmp ne ptr %.val.i13.i.i.i, inttoptr (i64 -1 to ptr) ; 2 uses
  %i.aq = ptrtoint ptr %.val.i13.i.i.i to i64     ; 2 uses
  br i1 %i.ap, label %bb.i, label %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i

bb.i:                                             ; preds = %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i
  %i.ar = icmp sgt ptr %.val.i13.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.ar, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %.val.i13.i.i.i, i64 %i.aq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i15.i.i.i = load i16, ptr %i.as, align 1 ; 2 uses
  %i.at = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i15.i.i.i, -1
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = tail call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.as) #29
  br label %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = and i16 %.sroa.0.0.copyload.i.i.i.i.i15.i.i.i, 127 ; 2 uses
  %i.aw = zext nneg i16 %i.av to i64
  %.not.i.i.i.i.i21.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.i.i.i.i21.i.i.i, label %bb.m, label %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = lshr i32 %i.ay, 3
  %narrow.i.i.i.i22.i.i.i = sub nuw nsw i32 8, %i.az
  %i.ba = zext nneg i32 %narrow.i.i.i.i22.i.i.i to i64
  br label %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i

_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i: ; preds = %bb.n, %bb.l, %bb.k, %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i
  %.sroa.4.0.i.i19.i.i.i = phi i64 [ 0, %_RNvXs1_NtCs9dV2ZPf2jOH_6semver5implsNtB7_10PrereleaseNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref.exit.i.i.i ], [ %i.ba, %bb.n ], [ %i.au, %bb.k ], [ %i.aw, %bb.l ]
  %i.bb = zext i1 %i.ac to i64
  %i.bc = zext i1 %i.ap to i64
  %i.bd = add i64 %accumulator.tr.lcssa.i5.i.i.i, %accumulator.tr.lcssa.i.i.i.i
  %i.be = add i64 %i.bd, %accumulator.tr.lcssa.i11.i.i.i
  %i.bf = add i64 %i.be, %i.bb
  %i.bg = add i64 %i.bf, %.sroa.4.0.i.i.i.i.i
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = add i64 %i.bh, %.sroa.4.0.i.i19.i.i.i   ; 2 uses
  %.not.i = icmp ult i64 %i.bi, %i.g
  br i1 %.not.i, label %bb.o, label %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i

bb.o:                                             ; preds = %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i
  %.val.i = load i32, ptr %i.a, align 8
  %i.bj = lshr i32 %.val.i, 29
  %i.bk = and i32 %i.bj, 3
  %i.bl = sub nuw nsw i64 %i.g, %i.bi             ; 5 uses
  switch i32 %i.bk, label %default.unreachable [
    i32 0, label %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i
  ]

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  br label %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i

_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.bp, %bb.q ], [ 0, %bb.p ], [ %i.bl, %bb.o ], [ %i.bl, %bb.o ] ; 2 uses
  %.sroa.03.0.i = phi i64 [ %i.bn, %bb.q ], [ %i.bl, %bb.p ], [ 0, %bb.o ], [ 0, %bb.o ] ; 2 uses
  %i.bm = tail call i32 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter4fill(ptr nonnull align 8 %1) ; 2 uses
  %exitcond.not.i9 = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %exitcond.not.i9, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %bb.o
  %i.bn = lshr i64 %i.bl, 1
  %i.bo = add nuw nsw i64 %i.bl, 1
  %i.bp = lshr i64 %i.bo, 1
  br label %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i

bb.r:                                             ; preds = %.lr.ph
  %i.bq = add nuw i64 %.sroa.0.0.i10, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bq, %.sroa.03.0.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i, %bb.r
  %.sroa.0.0.i10 = phi i64 [ %i.bq, %bb.r ], [ 0, %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i ]
  %i.br = tail call zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr align 8 %1, i32 %i.bm)
  br i1 %i.br, label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit, label %bb.r

._crit_edge:                                      ; preds = %bb.r, %_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter5alignCs9dV2ZPf2jOH_6semver.exit.thread18.i
  %i.bs = tail call fastcc zeroext i1 @_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0INtNtNtBT_3ops8function6FnOnceTQNtBR_9FormatterEE9call_onceB9_(ptr nonnull align 8 %0, ptr align 8 %1) #28
  br i1 %i.bs, label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %._crit_edge
  %exitcond30.not.not.i.not11 = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %exitcond30.not.not.i.not11, label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit, label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13, %.preheader.i.preheader
  %.sroa.010.0.i12 = phi i64 [ %i.bu, %.lr.ph13 ], [ 0, %.preheader.i.preheader ]
  %i.bt = tail call zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr align 8 %1, i32 %i.bm) ; 2 uses
  %i.bu = add nuw i64 %.sroa.010.0.i12, 1         ; 2 uses
  %exitcond30.not.not.i.not = icmp eq i64 %i.bu, %.sroa.4.0.i
  %or.cond = select i1 %i.bt, i1 true, i1 %exitcond30.not.not.i.not
  br i1 %or.cond, label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit, label %.lr.ph13

_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i: ; preds = %_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmts_0INtNtNtBT_3ops8function6FnOnceuE9call_onceB9_.exit.i, %bb.a
  %i.bv = tail call fastcc zeroext i1 @_RNvYNCNvXNtCs9dV2ZPf2jOH_6semver7displayNtB9_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0INtNtNtBT_3ops8function6FnOnceTQNtBR_9FormatterEE9call_onceB9_(ptr align 8 %0, ptr nonnull align 8 %1) #28
  br label %_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit

_RINvNtCs9dV2ZPf2jOH_6semver7display3padNCNvXB2_NtB4_7VersionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt0NCBD_s_0EB4_.exit: ; preds = %.lr.ph, %.lr.ph13, %.preheader.i.preheader, %._crit_edge, %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i
  %.sroa.0.0.shrunk.i = phi i1 [ true, %._crit_edge ], [ %i.bt, %.lr.ph13 ], [ %i.bv, %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs9dV2ZPf2jOH_6semver.exit9.sink.split.i ], [ false, %.preheader.i.preheader ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvXNtNtCshzWfHUSfYae_4core5array8equalityAhj0_NtNtB6_3cmp9PartialEq2eqCs9dV2ZPf2jOH_6semver(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #4 !guid !154 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtCs9dV2ZPf2jOH_6semver10ComparatorEENtB2_12IntoIterator9into_iterB1Q_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #11 !guid !155 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCs9dV2ZPf2jOH_6semver(i64 %0, i64 %1) unnamed_addr #4 !guid !156 {
bb.a:
  %i.a = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %1, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB8_3str4iter5SplitcENtB2_12IntoIterator9into_iterCs9dV2ZPf2jOH_6semver(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 72)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #11 !guid !157 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNvXs1_NtCs9dV2ZPf2jOH_6semver5serdeNtBa_7VersionNtNtCs2zr4xB4Ewz8_10serde_core2de11Deserialize11deserializeNtB2_14VersionVisitorNtBQ_7Visitor9expecting(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #2 !guid !158 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @32, i64 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXNvXs2_NtCs9dV2ZPf2jOH_6semver5serdeNtBa_10VersionReqNtNtCs2zr4xB4Ewz8_10serde_core2de11Deserialize11deserializeNtB2_17VersionReqVisitorNtBU_7Visitor9expecting(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #2 !guid !159 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr align 8 %1, ptr nonnull @32, i64 14)
  ret i1 %i.a
end_hunk_0
