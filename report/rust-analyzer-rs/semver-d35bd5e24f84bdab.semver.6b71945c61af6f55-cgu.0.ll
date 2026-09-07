Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/semver-d35bd5e24f84bdab.semver.6b71945c61af6f55-cgu.0?download=true
inline.NumInlined: 523
inline.NumDeleted: 83
begin_hunk_0_@_RNvNtCs9dV2ZPf2jOH_6semver5parse11version_req:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = invoke { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.j) #28
          to label %bb.s unwind label %.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bq = extractvalue { i32, i32 } %i.bp, 0
  %i.br = trunc i32 %i.bq to i1
  %i.bs = extractvalue { i32, i32 } %i.bp, 1      ; 2 uses
  %.not.i70 = icmp ne i32 %i.bs, -1
  %.not.i.not = select i1 %i.br, i1 %.not.i70, i1 false
  br i1 %.not.i.not, label %.thread69, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr nonnull align 8 @15) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.t
  unreachable

.thread69:                                        ; preds = %bb.s
  %.sroa.441.0.insert.ext = zext i32 %i.bs to i64
  %.sroa.441.0.insert.shift = shl nuw i64 %.sroa.441.0.insert.ext, 32
  %.sroa.239.0.insert.ext = zext i8 %.sroa.2.0.copyload to i64
  %.sroa.239.0.insert.shift = shl nuw nsw i64 %.sroa.239.0.insert.ext, 8
  %.sroa.239.0.insert.insert = or disjoint i64 %.sroa.441.0.insert.shift, %.sroa.239.0.insert.shift
  %.sroa.038.0.insert.insert = or disjoint i64 %.sroa.239.0.insert.insert, 4
  br label %bb.u

.thread:                                          ; preds = %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.i.i, %_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs9dV2ZPf2jOH_6semver.exit.thread13.i.i, %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %i.bu, i64 %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bv, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.bw, align 8
  store i32 0, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10ComparatorEBD_.exit

bb.u:                                             ; preds = %.loopexit72, %bb.p, %.thread69
  %.sink = phi i64 [ %.sroa.038.0.insert.insert, %.thread69 ], [ %.sroa.0.0.copyload.i, %bb.p ], [ 11, %.loopexit72 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sink, ptr %i.bx, align 4
  store i32 1, ptr %0, align 8
  %or.cond.not.i.i.i.i = icmp slt ptr %.sroa.1.0.copyload, inttoptr (i64 -1 to ptr)
  br i1 %or.cond.not.i.i.i.i, label %bb.v, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10ComparatorEBD_.exit

bb.v:                                             ; preds = %bb.u
  %i.by = ptrtoint ptr %.sroa.1.0.copyload to i64
  %i.bz = getelementptr i8, ptr %.sroa.1.0.copyload, i64 %i.by ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.bz, align 1 ; 2 uses
  %i.ca = icmp sgt i16 %.sroa.0.0.copyload.i.i.i.i.i.i, -1
  br i1 %i.ca, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = call fastcc i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nonnull readonly %i.bz) #29, !inline_history !4
  br label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cc = and i16 %.sroa.0.0.copyload.i.i.i.i.i.i, 127 ; 2 uses
  %i.cd = zext nneg i16 %i.cc to i64
  %.not.i.i.i.i.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.y, label %_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit.i.i.i.i

bb.y:                                             ; preds = %bb.x
  call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @10) #30, !inline_history !4
  unreachable

_RNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  %.sroa.0.0.i1.i.i.i.i = phi i64 [ %i.cb, %bb.w ], [ %i.cd, %bb.x ] ; 2 uses
  %i.ce = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i1.i.i.i.i, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i8
  %narrow1.i.i.i.i.i = sub nuw nsw i8 70, %i.cf
  %i.cg = udiv i8 %narrow1.i.i.i.i.i, 7
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = add i64 %.sroa.0.0.i1.i.i.i.i, %i.ch
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr %i.bz, i64 %i.ci, i64 2) #31, !inline_history !4
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10ComparatorEBD_.exit

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.r, %bb.j, %bb.i, %bb.f, %bb.t, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10ComparatorEBD_(ptr nonnull align 8 %i.k) #34
  resume { ptr, i32 } %lpad.phi

bb.aa:                                            ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.057.0.ph = phi i64 [ 377957122057, %bb.d ], [ 515396075529, %bb.c ], [ 180388626441, %bb.b ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ck = getelementptr i8, ptr %1, i64 %2
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i54, %bb.aa
  %.sroa.3.0.i51 = phi i64 [ 0, %bb.aa ], [ %i.cv, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i54 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.3.0.i51
  store ptr %i.cl, ptr %i.b, align 8, !noalias !42
  store ptr %i.ck, ptr %i.cj, align 8, !noalias !42
  %i.cm = call { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.b) #28, !noalias !42 ; 2 uses
  %i.cn = extractvalue { i32, i32 } %i.cm, 0
  %i.co = trunc i32 %i.cn to i1
  br i1 %i.co, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i54, label %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit56.thread

_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit56.thread: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i54: ; preds = %bb.ab
  %i.cp = extractvalue { i32, i32 } %i.cm, 1
  %i.cq = load ptr, ptr %i.cj, align 8, !noalias !42
  %i.cr = load ptr, ptr %i.b, align 8, !noalias !42
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.p, %i.cs
  %i.cv = add i64 %i.cu, %i.ct
  %.not.i.i55 = icmp eq i32 %i.cp, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not.i.i55, label %bb.ab, label %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit56

_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit56: ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4nextCs9dV2ZPf2jOH_6semver.exit.i.i54
  %i.cw = icmp eq i64 %i.p, %.sroa.3.0.i51
  br i1 %i.cw, label %bb.ad, label %bb.ac

_RNvNtCs9dV2ZPf2jOH_6semver5parse8wildcard.exit:  ; preds = %bb.d, %bb.ad, %bb.ac
  %.sroa.02.0 = phi i64 [ %.sroa.057.0.ph, %bb.ad ], [ %.sroa.02.0.copyload, %bb.ac ], [ %.sroa.02.0.copyload, %bb.d ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.02.0, ptr %i.cx, align 4
  store i32 1, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9dV2ZPf2jOH_6semver10ComparatorEBD_.exit

bb.ac:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit56
  %i.cy = sub nuw i64 %i.p, %.sroa.3.0.i51
  %i.cz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.3.0.i51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 44, ptr %i.a, align 4
  %i.da = call zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs3TiGK1alE6v_14rustc_demangle(ptr nonnull %i.cz, i64 %i.cy, ptr nonnull %i.a, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.da, label %bb.ad, label %_RNvNtCs9dV2ZPf2jOH_6semver5parse8wildcard.exit

bb.ad:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit56.thread, %bb.ac, %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECs9dV2ZPf2jOH_6semver.exit56
  br label %_RNvNtCs9dV2ZPf2jOH_6semver5parse8wildcard.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse16build_identifier(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca i64, align 8                ; 5 uses
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse10identifier(ptr noalias align 8 %i.a, ptr %1, i64 %2, i8 4)
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8 ; 9 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.f = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.f, label %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier13new_unchecked.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %.sroa.0.0.copyload.i, 9
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %.sroa.0.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i, ptr nonnull readonly align 1 %i.b, i64 %.sroa.0.0.copyload.i, i1 false)
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.02.0.copyload.i = load i64, ptr %.sroa.0.i, align 8
  br label %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier13new_unchecked.exit

bb.f:                                             ; preds = %bb.d
  %i.h = icmp ult i64 %.sroa.0.0.copyload.i, 72057594037927936
  br i1 %i.h, label %_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit.i, label %bb.g

_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit.i: ; preds = %bb.f
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.copyload.i, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i8
  %narrow1.i.i = sub nuw nsw i8 70, %i.j
  %i.k = udiv i8 %narrow1.i.i, 7
  %i.l = zext nneg i8 %i.k to i64
  %i.m = add nuw nsw i64 %.sroa.0.0.copyload.i, %i.l ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.n = tail call noalias align 2 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 %i.m, i64 2) #31 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr nonnull @4, ptr nonnull inttoptr (i64 219 to ptr), ptr nonnull align 8 @6) #32
  unreachable

bb.h:                                             ; preds = %_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 2, i64 %i.m) #33
  unreachable

bb.i:                                             ; preds = %.preheader.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.b, i64 %.sroa.0.0.copyload.i, i1 false)
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = tail call i64 @llvm.fshl.i64(i64 1, i64 %i.p, i64 63)
  br label %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier13new_unchecked.exit

.preheader.i:                                     ; preds = %_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit.i, %.preheader.i
  %.sroa.06.011.i = phi i64 [ %i.t, %.preheader.i ], [ %.sroa.0.0.copyload.i, %_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit.i ] ; 2 uses
  %.sroa.03.010.i = phi ptr [ %i.u, %.preheader.i ], [ %i.n, %_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit.i ] ; 2 uses
  %i.r = trunc i64 %.sroa.06.011.i to i8
  %i.s = or i8 %i.r, -128
  store i8 %i.s, ptr %.sroa.03.010.i, align 1
  %i.t = lshr i64 %.sroa.06.011.i, 7              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.i, label %.preheader.i

_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier13new_unchecked.exit: ; preds = %bb.c, %bb.e, %bb.i
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.02.0.copyload.i, %bb.e ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.copyload, ptr %.sroa.38.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier13new_unchecked.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse18numeric_identifier(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 %2, i8 range(i8 0, 3) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %.fr = freeze ptr %1                            ; 9 uses
  %.not64 = icmp eq ptr %.fr, null                ; 4 uses
  %i.b = icmp eq i64 %2, 0
  %.not76 = or i1 %i.b, %.not64
  br i1 %.not76, label %bb.h, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.a
  %i.c = load i8, ptr %.fr, align 1               ; 2 uses
  %i.d = add i8 %i.c, -58
  %or.cond94 = icmp ult i8 %i.d, -10
  br i1 %or.cond94, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %scevgep = getelementptr i8, ptr %.fr, i64 %2
  %i.e = add i64 %2, -1                           ; 2 uses
  %i.f = add nsw i8 %i.c, -48
  %i.g = zext nneg i8 %i.f to i64                 ; 3 uses
  %exitcond.peel.not = icmp eq i64 %i.e, 0
  br i1 %exitcond.peel.not, label %.split.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.fr, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = add i8 %i.i, -58
  %or.cond.peel = icmp ult i8 %i.j, -10
  br i1 %or.cond.peel, label %bb.i, label %.lr.ph97

bb.d:                                             ; preds = %bb.f
  %i.k = add nuw i64 %.sroa.0.07895, 1            ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.fr, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = add i8 %i.m, -58
  %or.cond = icmp ult i8 %i.n, -10
  br i1 %or.cond, label %.loopexit, label %.lr.ph97, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.f
  %.not56 = icmp eq i64 %2, 0
  br i1 %.not56, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit, label %.split.i.i.i

.lr.ph97:                                         ; preds = %bb.c, %bb.d
  %i.o = phi i8 [ %i.m, %bb.d ], [ %i.i, %bb.c ]
  %.sroa.09.07796 = phi i64 [ %i.v, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.0.07895 = phi i64 [ %i.k, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.p = icmp eq i64 %.sroa.09.07796, 0
  br i1 %i.p, label %.split.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph97
  %i.q = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.09.07796, i64 10) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionyE8and_thenyNCNvNtCs9dV2ZPf2jOH_6semver5parse18numeric_identifier0EB10_.exit.thread, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionyE8and_thenyNCNvNtCs9dV2ZPf2jOH_6semver5parse18numeric_identifier0EB10_.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionyE8and_thenyNCNvNtCs9dV2ZPf2jOH_6semver5parse18numeric_identifier0EB10_.exit: ; preds = %bb.e
  %i.s = extractvalue { i64, i1 } %i.q, 0         ; 2 uses
  %i.t = add nsw i8 %i.o, -48
  %i.u = zext nneg i8 %i.t to i64
  %i.v = add i64 %i.s, %i.u                       ; 4 uses
  %.not65 = icmp ult i64 %i.v, %i.s
  br i1 %.not65, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionyE8and_thenyNCNvNtCs9dV2ZPf2jOH_6semver5parse18numeric_identifier0EB10_.exit.thread, label %bb.f

.split.us:                                        ; preds = %.lr.ph97
  %.sroa.246.0.insert.ext = zext nneg i8 %3 to i64
  %.sroa.246.0.insert.shift = shl nuw nsw i64 %.sroa.246.0.insert.ext, 8
  %.sroa.045.0.insert.insert = or disjoint i64 %.sroa.246.0.insert.shift, 5
  store i64 %.sroa.045.0.insert.insert, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.w, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionyE8and_thenyNCNvNtCs9dV2ZPf2jOH_6semver5parse18numeric_identifier0EB10_.exit
  %exitcond.not = icmp eq i64 %.sroa.0.07895, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionyE8and_thenyNCNvNtCs9dV2ZPf2jOH_6semver5parse18numeric_identifier0EB10_.exit.thread: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionyE8and_thenyNCNvNtCs9dV2ZPf2jOH_6semver5parse18numeric_identifier0EB10_.exit, %bb.e
  %.sroa.242.0.insert.ext = zext nneg i8 %3 to i64
  %.sroa.242.0.insert.shift = shl nuw nsw i64 %.sroa.242.0.insert.ext, 8
  %.sroa.041.0.insert.insert = or disjoint i64 %.sroa.242.0.insert.shift, 6
  store i64 %.sroa.041.0.insert.insert, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.x, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.j, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit61, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionyE8and_thenyNCNvNtCs9dV2ZPf2jOH_6semver5parse18numeric_identifier0EB10_.exit.thread, %.split.us
  ret void

bb.h:                                             ; preds = %bb.a
  br i1 %.not64, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs9dV2ZPf2jOH_6semver.exit.thread.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit

_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs9dV2ZPf2jOH_6semver.exit.thread.i.i: ; preds = %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr null, i64 %2, i64 0, i64 %2, ptr nonnull align 8 @16) #32
  unreachable

_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit: ; preds = %._crit_edge, %.lr.ph.split, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.fr, i64 %2
  store ptr %.fr, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = call { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.a) #28 ; 2 uses
  %i.ab = extractvalue { i32, i32 } %i.aa, 0
  %i.ac = trunc i32 %i.ab to i1
  %i.ad = extractvalue { i32, i32 } %i.aa, 1      ; 2 uses
  %.not5766 = icmp ne i32 %i.ad, -1
  %.not57.not = select i1 %i.ac, i1 %.not5766, i1 false
  br i1 %.not57.not, label %bb.j, label %bb.k

.split.i.i.i:                                     ; preds = %._crit_edge, %bb.b
  %.sroa.09.0.lcssa114138 = phi i64 [ %i.g, %bb.b ], [ %i.v, %._crit_edge ]
  %.sroa.0.0.lcssa115135 = phi i64 [ 1, %bb.b ], [ %2, %._crit_edge ] ; 3 uses
  %i.ae = icmp ne i64 %.sroa.0.0.lcssa115135, %2
  %or.cond.i.i = or i1 %i.ae, %.not64
  br i1 %or.cond.i.i, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs9dV2ZPf2jOH_6semver.exit.thread.i.i59, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit61

.loopexit:                                        ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.fr, i64 %i.k
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.c
  %.sroa.09.0.lcssa.ph.ph = phi i64 [ %i.g, %bb.c ], [ %i.v, %.loopexit ]
  %.sroa.0.0.lcssa.ph.ph = phi i64 [ 1, %bb.c ], [ %i.k, %.loopexit ] ; 2 uses
  %.lcssa.ph.ph = phi ptr [ %i.h, %bb.c ], [ %i.af, %.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %.lcssa.ph.ph, align 1
  %i.ah = icmp slt i8 %i.ag, -64
  %or.cond6.i.i = or i1 %i.ah, %.not64
  br i1 %or.cond6.i.i, label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs9dV2ZPf2jOH_6semver.exit.thread.i.i59, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit61

_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs9dV2ZPf2jOH_6semver.exit.thread.i.i59: ; preds = %bb.i, %.split.i.i.i
  %.sroa.0.0.lcssa115136 = phi i64 [ %.sroa.0.0.lcssa.ph.ph, %bb.i ], [ %.sroa.0.0.lcssa115135, %.split.i.i.i ]
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr nonnull %.fr, i64 %2, i64 %.sroa.0.0.lcssa115136, i64 %2, ptr nonnull align 8 @17) #32
  unreachable

_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit61: ; preds = %.split.i.i.i, %bb.i
  %.sroa.09.0.lcssa114137 = phi i64 [ %.sroa.09.0.lcssa114138, %.split.i.i.i ], [ %.sroa.09.0.lcssa.ph.ph, %bb.i ]
  %.sroa.0.0.lcssa115134 = phi i64 [ %.sroa.0.0.lcssa115135, %.split.i.i.i ], [ %.sroa.0.0.lcssa.ph.ph, %bb.i ]
  %.lcssa117132 = phi ptr [ %scevgep, %.split.i.i.i ], [ %.lcssa.ph.ph, %bb.i ]
  %i.ai = sub nuw i64 %2, %.sroa.0.0.lcssa115134
  store i64 %.sroa.09.0.lcssa114137, ptr %0, align 8
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa117132, ptr %.sroa.226.0..sroa_idx, align 8
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %.sroa.327.0..sroa_idx, align 8
  br label %bb.g

bb.j:                                             ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit
  %.sroa.4.0.insert.ext = zext i32 %i.ad to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.250.0.insert.ext = zext nneg i8 %3 to i64
  %.sroa.250.0.insert.shift = shl nuw nsw i64 %.sroa.250.0.insert.ext, 8
  %.sroa.250.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.250.0.insert.shift
  %.sroa.049.0.insert.insert = or disjoint i64 %.sroa.250.0.insert.insert, 2
  store i64 %.sroa.049.0.insert.insert, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.aj, align 8
  br label %bb.g

bb.k:                                             ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs9dV2ZPf2jOH_6semver.exit
  %.sroa.253.0.insert.ext = zext nneg i8 %3 to i64
  %.sroa.253.0.insert.shift = shl nuw nsw i64 %.sroa.253.0.insert.ext, 8
  %.sroa.052.0.insert.insert = or disjoint i64 %.sroa.253.0.insert.shift, 1
  store i64 %.sroa.052.0.insert.insert, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ak, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse21prerelease_identifier(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca i64, align 8                ; 5 uses
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse10identifier(ptr noalias align 8 %i.a, ptr %1, i64 %2, i8 3)
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8 ; 9 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.f = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.f, label %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier13new_unchecked.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %.sroa.0.0.copyload.i, 9
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %.sroa.0.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i, ptr nonnull readonly align 1 %i.b, i64 %.sroa.0.0.copyload.i, i1 false)
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.02.0.copyload.i = load i64, ptr %.sroa.0.i, align 8
  br label %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier13new_unchecked.exit

bb.f:                                             ; preds = %bb.d
  %i.h = icmp ult i64 %.sroa.0.0.copyload.i, 72057594037927936
  br i1 %i.h, label %_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit.i, label %bb.g

_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit.i: ; preds = %bb.f
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.copyload.i, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i8
  %narrow1.i.i = sub nuw nsw i8 70, %i.j
  %i.k = udiv i8 %narrow1.i.i, 7
  %i.l = zext nneg i8 %i.k to i64
  %i.m = add nuw nsw i64 %.sroa.0.0.copyload.i, %i.l ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.n = tail call noalias align 2 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 %i.m, i64 2) #31 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %.preheader.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr nonnull @4, ptr nonnull inttoptr (i64 219 to ptr), ptr nonnull align 8 @6) #32
  unreachable

bb.h:                                             ; preds = %_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit.i
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 2, i64 %i.m) #33
  unreachable

bb.i:                                             ; preds = %.preheader.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.b, i64 %.sroa.0.0.copyload.i, i1 false)
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = tail call i64 @llvm.fshl.i64(i64 1, i64 %i.p, i64 63)
  br label %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier13new_unchecked.exit

.preheader.i:                                     ; preds = %_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit.i, %.preheader.i
  %.sroa.06.011.i = phi i64 [ %i.t, %.preheader.i ], [ %.sroa.0.0.copyload.i, %_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit.i ] ; 2 uses
  %.sroa.03.010.i = phi ptr [ %i.u, %.preheader.i ], [ %i.n, %_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit.i ] ; 2 uses
  %i.r = trunc i64 %.sroa.06.011.i to i8
  %i.s = or i8 %i.r, -128
  store i8 %i.s, ptr %.sroa.03.010.i, align 1
  %i.t = lshr i64 %.sroa.06.011.i, 7              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i, i64 1 ; 2 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.i, label %.preheader.i

_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier13new_unchecked.exit: ; preds = %bb.c, %bb.e, %bb.i
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.02.0.copyload.i, %bb.e ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.copyload, ptr %.sroa.38.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtCs9dV2ZPf2jOH_6semver10identifierNtB2_10Identifier13new_unchecked.exit, %bb.b
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind uwtable
define internal fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr align 8 %0) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_nounwind_fmt(ptr nonnull @30, ptr nonnull inttoptr (i64 419 to ptr), i1 zeroext false, ptr align 8 %0) #35
  unreachable
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define internal fastcc range(i64 1, 0) i64 @_RNvNvNtCs9dV2ZPf2jOH_6semver10identifier10decode_len15decode_len_cold(ptr nofree readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = icmp sgt i8 %i.a, -1
  br i1 %i.b, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i8 [ %i.l, %.lr.ph ], [ %i.a, %bb.a ]
  %.sroa.0.08 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ]
  %.sroa.02.07 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.04.06 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 1 ; 2 uses
  %i.e = and i8 %i.c, 127
  %i.f = zext nneg i8 %i.e to i64
  %i.g = and i32 %.sroa.04.06, 63
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl i64 %i.f, %i.h
  %i.j = add i64 %i.i, %.sroa.02.07               ; 3 uses
  %i.k = add i32 %.sroa.04.06, 7
  %i.l = load i8, ptr %i.d, align 1               ; 2 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %._crit_edge.thread, label %_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call fastcc void @_RNvNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs9dV2ZPf2jOH_6semver(ptr nonnull align 8 @31) #30
  unreachable

_RNvMse_NtNtCshzWfHUSfYae_4core3num7nonzeroINtB5_7NonZerojE13new_uncheckedCs9dV2ZPf2jOH_6semver.exit: ; preds = %._crit_edge
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvXNtCs9dV2ZPf2jOH_6semver5implsNtNtB4_10identifier10IdentifierNtNtCshzWfHUSfYae_4core7default7Default7default() unnamed_addr #5 {
bb.a:
  ret i64 -1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs9dV2ZPf2jOH_6semver5parseNtB4_7VersionNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 2 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 2 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse18numeric_identifier(ptr noalias align 8 %i.o, ptr %1, i64 %2, i8 0)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8 ; 3 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.t, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

bb.e:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !48
  store i32 46, ptr %i.d, align 4, !noalias !48
  %i.u = call zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs3TiGK1alE6v_14rustc_demangle(ptr nonnull %i.r, i64 %.sroa.6.0.copyload, ptr nonnull %i.d, i64 range(i64 1, 5) 1), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !48
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.6.0.copyload
  store ptr %i.r, ptr %i.e, align 8, !noalias !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.v, ptr %i.w, align 8, !noalias !48
  %i.x = call { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.e) #28, !noalias !48 ; 2 uses
  %i.y = extractvalue { i32, i32 } %i.x, 0
  %i.z = trunc i32 %i.y to i1
  %i.aa = extractvalue { i32, i32 } %i.x, 1       ; 2 uses
  %.not2324.i = icmp ne i32 %i.aa, -1
  %.not23.not.i = select i1 %i.z, i1 %.not2324.i, i1 false
  %.sroa.4.0.insert.ext.i = zext i32 %i.aa to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.015.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, 3
  %.sroa.4132.0.ph = select i1 %.not23.not.i, i64 %.sroa.015.0.insert.insert.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4132.0.ph, ptr %i.ab, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.ad = add i64 %.sroa.6.0.copyload, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse18numeric_identifier(ptr noalias align 8 %i.n, ptr nonnull %i.ac, i64 %i.ad, i8 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  %.sroa.0.0.copyload.i113 = load i64, ptr %i.n, align 8 ; 3 uses
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i113, ptr %i.ah, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6135.0.copyload = load i64, ptr %.sroa.6135.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !49
  store i32 46, ptr %i.b, align 4, !noalias !49
  %i.ai = call zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs3TiGK1alE6v_14rustc_demangle(ptr nonnull %i.af, i64 %.sroa.6135.0.copyload, ptr nonnull %i.b, i64 range(i64 1, 5) 1), !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !49
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.6135.0.copyload
  store ptr %i.af, ptr %i.c, align 8, !noalias !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !noalias !49
  %i.al = call { i32, i32 } @_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2zr4xB4Ewz8_10serde_core(ptr nonnull align 8 %i.c) #28, !noalias !49 ; 2 uses
  %i.am = extractvalue { i32, i32 } %i.al, 0
  %i.an = trunc i32 %i.am to i1
  %i.ao = extractvalue { i32, i32 } %i.al, 1      ; 2 uses
  %.not2324.i115 = icmp ne i32 %i.ao, -1
  %.not23.not.i116 = select i1 %i.an, i1 %.not2324.i115, i1 false
  %.sroa.4.0.insert.ext.i117 = zext i32 %i.ao to i64
  %.sroa.4.0.insert.shift.i118 = shl nuw i64 %.sroa.4.0.insert.ext.i117, 32
  %.sroa.015.0.insert.insert.i119 = or disjoint i64 %.sroa.4.0.insert.shift.i118, 259
  %.sroa.4140.0.ph = select i1 %.not23.not.i116, i64 %.sroa.015.0.insert.insert.i119, i64 257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4140.0.ph, ptr %i.ap, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ar = add i64 %.sroa.6135.0.copyload, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RNvNtCs9dV2ZPf2jOH_6semver5parse18numeric_identifier(ptr noalias align 8 %i.m, ptr nonnull %i.aq, i64 %i.ar, i8 2)
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 4 uses
  %i.au = icmp eq ptr %i.at, null
  %.sroa.0.0.copyload.i123 = load i64, ptr %i.m, align 8 ; 3 uses
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i123, ptr %i.av, align 8
  store ptr null, ptr %0, align 8
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.6143.0.copyload = load i64, ptr %.sroa.6143.0..sroa_idx, align 8 ; 4 uses
  %i.aw = icmp eq i64 %.sroa.6143.0.copyload, 0
end_hunk_0
