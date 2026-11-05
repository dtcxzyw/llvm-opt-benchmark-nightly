Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.06?download=true
inline.NumInlined: 2312
inline.NumDeleted: 936
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 35
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins11fish_indent9do_indent:bb.a
  br i1 %i.ut, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.uu = sub nuw i64 %i.ur, %.sroa.07.0.i.i.i
  %i.uv = invoke { i32, i32 } @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3new(i64 noundef %.sroa.07.0.i.i.i, i64 noundef %i.uu)
          to label %bb.hh unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5026 ; 2 uses

bb.hg:                                            ; preds = %bb.he
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #42
          to label %bb.gr unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5026

bb.hh:                                            ; preds = %bb.hf
  %i.uw = extractvalue { i32, i32 } %i.uv, 0
  %i.ux = extractvalue { i32, i32 } %i.uv, 1
  %i.uy = load i64, ptr %i.jy, align 8, !alias.scope !5030, !noalias !5025, !noundef !10 ; 3 uses
  %i.uz = load i64, ptr %i.bc, align 8, !range !15, !alias.scope !5030, !noalias !5025, !noundef !10
  %i.va = icmp eq i64 %i.uy, %i.uz
  br i1 %i.va, label %bb.hi, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeE8push_mutBJ_.exit26.i.i.i

bb.hi:                                            ; preds = %bb.hh
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc) #39
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeE8push_mutBJ_.exit26.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5026

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeE8push_mutBJ_.exit26.i.i.i: ; preds = %bb.hi, %bb.hh
  %i.vb = load ptr, ptr %i.jx, align 8, !alias.scope !5030, !noalias !5025, !nonnull !10, !noundef !10
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %i.uy ; 2 uses
  store i32 %i.uw, ptr %i.vc, align 4, !noalias !5026
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  store i32 %i.ux, ptr %i.vd, align 4, !noalias !5026
  %i.ve = add i64 %i.uy, 1
  store i64 %i.ve, ptr %i.jy, align 8, !alias.scope !5030, !noalias !5025
  br label %bb.hd

bb.hj:                                            ; preds = %bb.hd
  %i.vf = invoke noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange6length(i32 noundef %i.uj, i32 noundef %i.ul)
          to label %bb.hk unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5026

bb.hk:                                            ; preds = %bb.hj
  %i.vg = add i64 %i.vf, %i.us                    ; 2 uses
  %i.vh = icmp ult i64 %i.vg, %i.us
  br i1 %i.vh, label %bb.hl, label %bb.gs

bb.hl:                                            ; preds = %bb.hk
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #42
          to label %bb.gr unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5026

bb.hm:                                            ; preds = %bb.gv, %bb.ht, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gf
  %i.vi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body488

.body488:                                         ; preds = %bb.gu, %bb.hm
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !5026
  unreachable

bb.hn:                                            ; preds = %bb.gh
  %i.vj = extractvalue { ptr, ptr } %i.tl, 0      ; 2 uses
  %.not18.i.i.i = icmp eq ptr %i.vj, null
  br i1 %.not18.i.i.i, label %.backedge3895, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.vk = extractvalue { ptr, ptr } %i.tl, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vk) ]
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 120
  %i.vm = load ptr, ptr %i.vl, align 8, !invariant.load !10, !noalias !5026, !nonnull !10
  %i.vn = invoke { i32, i32 } %i.vm(ptr noundef nonnull %i.vj)
          to label %bb.hp unwind label %bb.gf, !noalias !5026 ; 2 uses

bb.hp:                                            ; preds = %bb.ho
  %i.vo = extractvalue { i32, i32 } %i.vn, 0      ; 2 uses
  %i.vp = extractvalue { i32, i32 } %i.vn, 1      ; 2 uses
  %i.vq = invoke noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange6length(i32 noundef %i.vo, i32 noundef %i.vp)
          to label %bb.hq unwind label %bb.gf, !noalias !5026

bb.hq:                                            ; preds = %bb.hp
  %.not19.i.i.i = icmp eq i64 %i.vq, 0
  br i1 %.not19.i.i.i, label %.backedge3895, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.vr = load i64, ptr %i.jw, align 8, !alias.scope !5031, !noalias !5025, !noundef !10 ; 3 uses
  %i.vs = load i64, ptr %i.bf, align 8, !range !15, !alias.scope !5031, !noalias !5025, !noundef !10
  %i.vt = icmp eq i64 %i.vr, %i.vs
  br i1 %i.vt, label %bb.hs, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeE8push_mutBJ_.exit28.i.i.i

bb.hs:                                            ; preds = %bb.hr
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf) #39
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeE8push_mutBJ_.exit28.i.i.i unwind label %bb.gf, !noalias !5026

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeE8push_mutBJ_.exit28.i.i.i: ; preds = %bb.hs, %bb.hr
  %i.vu = load ptr, ptr %i.jv, align 8, !alias.scope !5031, !noalias !5025, !nonnull !10, !noundef !10
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %i.vr ; 2 uses
  store i32 %i.vo, ptr %i.vv, align 4, !noalias !5026
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  store i32 %i.vp, ptr %i.vw, align 4, !noalias !5026
  %i.vx = add i64 %i.vr, 1
  store i64 %i.vx, ptr %i.jw, align 8, !alias.scope !5031, !noalias !5025
  br label %.backedge3895

.backedge3895:                                    ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeE8push_mutBJ_.exit28.i.i.i, %bb.hq, %bb.hn
  br label %bb.ge

bb.ht:                                            ; preds = %.loopexit.split-lp653.loopexit.split-lp.loopexit.split-lp, %bb.gj, %bb.gf
  %.pn20.ph.i.i.i = phi { ptr, i32 } [ %i.tg, %bb.gf ], [ %i.tm, %bb.gj ], [ %lpad.loopexit.split-lp3915, %.loopexit.split-lp653.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf) #37
          to label %.body.i.i unwind label %bb.hm, !noalias !5026

.body.i.i:                                        ; preds = %bb.gv, %.body47.i.i, %bb.jo, %.body32.i.i, %.thread.i.i.i, %bb.il, %.body20.i.i, %bb.hu, %bb.ht
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body48.i.i, %.body47.i.i ], [ %eh.lpad-body21.i.i, %.body20.i.i ], [ %eh.lpad-body33.i.i, %.body32.i.i ], [ %.pn69.i.i.i, %bb.jo ], [ %.pn20.ph.i.i.i, %bb.ht ], [ %i.ws, %bb.il ], [ %i.vy, %bb.hu ], [ %.pn.pn33.i.i.i, %.thread.i.i.i ], [ %.pn.i.i.i, %bb.gv ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish8builtins11fish_indent13PrettyPrinterEBH_(ptr noalias nofree noundef align 8 dereferenceable(192) %i.bm) #37
          to label %.body.i unwind label %bb.mw, !noalias !5024

bb.hu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.hv:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !5025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !5020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !5025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !5025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5020
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i.i)
          to label %bb.hx unwind label %bb.hw, !noalias !5024

bb.hw:                                            ; preds = %bb.hv
  %i.vz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i.i)
          to label %.body20.i.i unwind label %bb.hy, !noalias !5024

bb.hx:                                            ; preds = %bb.hv
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit.i.i unwind label %bb.hz, !noalias !5024

bb.hy:                                            ; preds = %bb.hw
  %i.wa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !5024
  unreachable

bb.hz:                                            ; preds = %bb.hx
  %i.wb = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i.i

.body20.i.i:                                      ; preds = %bb.hz, %bb.hw
  %eh.lpad-body21.i.i = phi { ptr, i32 } [ %i.wb, %bb.hz ], [ %i.vz, %bb.hw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !noalias !5020
  br label %.body.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit.i.i: ; preds = %bb.hx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !noalias !5020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.experimental.noalias.scope.decl(metadata !5032)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !5020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !5033
  store i64 0, ptr %i.ba, align 8, !noalias !5033
  store ptr inttoptr (i64 8 to ptr), ptr %i.jz, align 8, !noalias !5033
  store i64 0, ptr %i.ka, align 8, !noalias !5033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !5033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !5033
  %i.wc = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !5032, !noalias !5020, !nonnull !10, !align !28, !noundef !10 ; 2 uses
  %i.wd = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !5032, !noalias !5020, !noundef !10 ; 2 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %i.wd
  store ptr %i.wc, ptr %i.ay, align 8, !noalias !5033
  store ptr %i.we, ptr %.sroa.4.0..sroa_idx.i22.i.i, align 8, !noalias !5033
  store i64 0, ptr %.sroa.5.0..sroa_idx.i23.i.i, align 8, !noalias !5033
  store i64 %i.wd, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !5033
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter16CharIndicesUtf32NCNvMs0_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB3E_13PrettyPrinter44compute_multi_line_brace_statement_locations0EE9from_iterB3I_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ay)
          to label %bb.ia unwind label %.thread37.i.i.i, !noalias !5034

.thread37.i.i.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit.i.i
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.ia:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants11SourceRangeEEB1c_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !5033
  %i.wg = load ptr, ptr %i.ju, align 8, !alias.scope !5032, !noalias !5020, !nonnull !10, !align !11, !noundef !10
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 72
  invoke void @_RNvMsw_NtCs8frGy5WneL6_4fish3astNtB5_9Traversal3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noundef nonnull %i.wh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @6)
          to label %bb.ib unwind label %.loopexit.split-lp658.loopexit.split-lp.loopexit.split-lp, !noalias !5034

.body.i.i.i:                                      ; preds = %.loopexit.split-lp658.loopexit.split-lp.loopexit.split-lp, %bb.ig, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i24.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp3891, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.wn, %bb.ig ], [ %lpad.loopexit.split-lp3918, %.loopexit.split-lp658.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #37
          to label %.thread.i.i.i unwind label %bb.jh, !noalias !5034

.loopexit.split-lp658.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit.i27.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i26.i.i, %bb.ia, %bb.ij
  %lpad.loopexit.split-lp3918 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !5033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !5033
  br label %.outer.i.i.i.a

.outer.i.i.i.a:                                   ; preds = %.outer.i.i.i.backedge, %bb.ib
  %.sroa.01.0.ph.i.i.i = phi i64 [ 0, %bb.ib ], [ %.sroa.01.0.ph.i.i.i.be, %.outer.i.i.i.backedge ] ; 3 uses
  br label %bb.ic

bb.ic:                                            ; preds = %bb.iq, %.outer.i.i.i.a
  %i.wi = invoke { ptr, ptr } @_RNvXsx_NtCs8frGy5WneL6_4fish3astNtB5_9TraversalNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.id unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034 ; 2 uses

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ic, %bb.ie, %bb.ir, %bb.is, %bb.jf, %bb.jd, %bb.jc, %bb.ja, %bb.iz, %bb.iw, %bb.iv, %.invoke.i.i.i, %bb.iy
  %lpad.loopexit.split-lp3891 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #37
          to label %.body.i.i.i unwind label %bb.jh, !noalias !5034

bb.id:                                            ; preds = %bb.ic
  %i.wj = extractvalue { ptr, ptr } %i.wi, 0      ; 2 uses
  %.not.i25.i.i = icmp eq ptr %i.wj, null
  br i1 %.not.i25.i.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.wk = extractvalue { ptr, ptr } %i.wi, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wk) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !5033
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 64
  %i.wm = load ptr, ptr %i.wl, align 8, !invariant.load !10, !noalias !5034, !nonnull !10
  invoke void %i.wm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, ptr noundef nonnull %i.wj)
          to label %bb.io unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034

bb.if:                                            ; preds = %bb.id
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i26.i.i unwind label %bb.ig, !noalias !5034

bb.ig:                                            ; preds = %bb.if
  %i.wn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body.i.i.i unwind label %bb.ih, !noalias !5034

bb.ih:                                            ; preds = %bb.ig
  %i.wo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !5034
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i26.i.i: ; preds = %bb.if
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit.i27.i.i unwind label %.loopexit.split-lp658.loopexit.split-lp.loopexit.split-lp, !noalias !5034

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit.i27.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5033
  %i.wp = load ptr, ptr %i.jz, align 8, !noalias !5033, !nonnull !10, !noundef !10
  %i.wq = load i64, ptr %i.ka, align 8, !noalias !5033, !noundef !10
  %i.wr = invoke noundef zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core5sliceSj12is_sorted_byNCNvMs0_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtBS_13PrettyPrinter44compute_multi_line_brace_statement_locationss_0EBW_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.wp, i64 noundef %i.wq)
          to label %bb.ii unwind label %.loopexit.split-lp658.loopexit.split-lp.loopexit.split-lp, !noalias !5034

bb.ii:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit.i27.i.i
  br i1 %i.wr, label %bb.ik, label %bb.ij, !prof !17

bb.ij:                                            ; preds = %bb.ii
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #42
          to label %bb.in unwind label %.loopexit.split-lp658.loopexit.split-lp.loopexit.split-lp, !noalias !5034

bb.ik:                                            ; preds = %bb.ii
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !5035
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.il, !noalias !5034

bb.il:                                            ; preds = %bb.ik
  %i.ws = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body.i.i unwind label %bb.im, !noalias !5034

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.ik
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.ji unwind label %bb.hu, !noalias !5024

bb.im:                                            ; preds = %bb.il
  %i.wt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !5034
  unreachable

bb.in:                                            ; preds = %bb.iy, %bb.ij
  unreachable

bb.io:                                            ; preds = %bb.ie
  %i.wu = load i64, ptr %i.av, align 8, !range !43, !noalias !5033, !noundef !10
  %i.wv = icmp eq i64 %i.wu, 16
  br i1 %i.wv, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.ww = load ptr, ptr %i.kb, align 8, !noalias !5033, !nonnull !10, !align !11, !noundef !10 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5033
  %i.wx = load i64, ptr %i.kc, align 8, !noalias !5033, !noundef !10 ; 3 uses
  %i.wy = icmp ult i64 %i.wx, 1152921504606846976
  call void @llvm.assume(i1 %i.wy)
  %.not2355.i.i.i = icmp eq i64 %.sroa.01.0.ph.i.i.i, %i.wx
  br i1 %.not2355.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

bb.iq:                                            ; preds = %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5033
  br label %bb.ic

.lr.ph.i.i.i:                                     ; preds = %bb.ip, %bb.jg
  %i.wz = phi i64 [ %.pre.pre.i.i.i, %bb.jg ], [ %i.wx, %bb.ip ] ; 2 uses
  %.sroa.01.156.i.i.i = phi i64 [ %i.yn, %bb.jg ], [ %.sroa.01.0.ph.i.i.i, %bb.ip ] ; 10 uses
  %i.xa = icmp ult i64 %.sroa.01.156.i.i.i, %i.wz
  br i1 %i.xa, label %bb.ir, label %.invoke.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %bb.jg, %bb.ip
  %.ph.i.i.i = phi i64 [ %.sroa.01.0.ph.i.i.i, %bb.ip ], [ %.pre.pre.i.i.i, %bb.jg ] ; 2 uses
  %3 = icmp samesign ult i64 %.ph.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %3)
  br label %.outer.i.i.i.backedge

._crit_edge.i.i.i:                                ; preds = %bb.it
  %i.xb = icmp ult i64 %.pre.pre.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.xb)
  %.not24.i.i.i = icmp eq i64 %.sroa.01.156.i.i.i, %.pre.pre.i.i.i
  br i1 %.not24.i.i.i, label %.outer.i.i.i.backedge, label %bb.iu

bb.ir:                                            ; preds = %.lr.ph.i.i.i
  %i.xc = load ptr, ptr %i.kd, align 8, !noalias !5033, !nonnull !10, !noundef !10
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %.sroa.01.156.i.i.i
  %i.xe = load i64, ptr %i.xd, align 8, !noalias !5034, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5033
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast14BraceStatementNtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ww)
          to label %bb.is unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034

bb.is:                                            ; preds = %bb.ir
  %i.xf = load i32, ptr %i.au, align 4, !range !12, !noalias !5033, !noundef !10
  %i.xg = trunc nuw i32 %i.xf to i1               ; 2 uses
  %i.xh = load i32, ptr %i.ke, align 4, !noalias !5033
  %i.xi = load i32, ptr %i.kf, align 4, !noalias !5033
  %.sroa.510.0.i.i.i = select i1 %i.xg, i32 %i.xi, i32 0
  %.sroa.09.0.i.i.i = select i1 %i.xg, i32 %i.xh, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5033
  %i.xj = invoke noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %.sroa.09.0.i.i.i, i32 noundef %.sroa.510.0.i.i.i)
          to label %bb.it unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034

bb.it:                                            ; preds = %bb.is
  %i.xk = icmp ult i64 %i.xe, %i.xj
  %.pre.pre.i.i.i = load i64, ptr %i.kc, align 8, !noalias !5033 ; 8 uses
  br i1 %i.xk, label %bb.jg, label %._crit_edge.i.i.i

bb.iu:                                            ; preds = %._crit_edge.i.i.i
  %i.xl = icmp samesign ult i64 %.sroa.01.156.i.i.i, %.pre.pre.i.i.i
  br i1 %i.xl, label %bb.iv, label %.invoke.i.i.i

bb.iv:                                            ; preds = %bb.iu
  %i.xm = load ptr, ptr %i.kd, align 8, !noalias !5033, !nonnull !10, !noundef !10
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xm, i64 %.sroa.01.156.i.i.i
  %i.xo = load i64, ptr %i.xn, align 8, !noalias !5034, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !5033
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast14BraceStatementNtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ww)
          to label %bb.iw unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034

.invoke.i.i.i:                                    ; preds = %bb.iu, %.lr.ph.i.i.i
  %i.xp = phi i64 [ %i.wz, %.lr.ph.i.i.i ], [ %.pre.pre.i.i.i, %bb.iu ]
  %i.xq = phi ptr [ @113, %.lr.ph.i.i.i ], [ @114, %bb.iu ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.156.i.i.i, i64 noundef %i.xp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xq) #42
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.iw:                                            ; preds = %bb.iv
  %i.xr = load i32, ptr %i.at, align 4, !range !12, !noalias !5033, !noundef !10
  %i.xs = trunc nuw i32 %i.xr to i1               ; 2 uses
  %i.xt = load i32, ptr %i.kg, align 4, !noalias !5033
  %i.xu = load i32, ptr %i.kh, align 4, !noalias !5033
  %.sroa.513.0.i.i.i = select i1 %i.xs, i32 %i.xu, i32 0
  %.sroa.012.0.i.i.i = select i1 %i.xs, i32 %i.xt, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !5033
  %i.xv = invoke noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %.sroa.012.0.i.i.i, i32 noundef %.sroa.513.0.i.i.i)
          to label %bb.ix unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034

bb.ix:                                            ; preds = %bb.iw
  %.not25.i.i.i = icmp ult i64 %i.xo, %i.xv
  br i1 %.not25.i.i.i, label %bb.iy, label %bb.iz, !prof !27

bb.iy:                                            ; preds = %bb.ix
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #42
          to label %bb.in unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034

bb.iz:                                            ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !5033
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast14BraceStatementNtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ww)
          to label %bb.ja unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034

bb.ja:                                            ; preds = %bb.iz
  %i.xw = load i32, ptr %i.as, align 4, !range !12, !noalias !5033, !noundef !10
  %i.xx = trunc nuw i32 %i.xw to i1               ; 2 uses
  %i.xy = load i32, ptr %i.ki, align 4, !noalias !5033
  %i.xz = load i32, ptr %i.kj, align 4, !noalias !5033
  %.sroa.515.0.i.i.i = select i1 %i.xx, i32 %i.xz, i32 0
  %.sroa.014.0.i.i.i = select i1 %i.xx, i32 %i.xy, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5033
  %i.ya = invoke noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3end(i32 noundef %.sroa.014.0.i.i.i, i32 noundef %.sroa.515.0.i.i.i)
          to label %bb.jb unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034

bb.jb:                                            ; preds = %bb.ja
  %i.yb = icmp ult i64 %i.xo, %i.ya
  br i1 %i.yb, label %bb.jc, label %.outer.i.i.i.backedge

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5033
  invoke void @_RNvYNtNtCs8frGy5WneL6_4fish3ast14BraceStatementNtB4_4Node16try_source_rangeB6_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ww)
          to label %bb.jd unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034

bb.jd:                                            ; preds = %bb.jc
  %i.yc = load i32, ptr %i.ar, align 4, !range !12, !noalias !5033, !noundef !10
  %i.yd = trunc nuw i32 %i.yc to i1               ; 2 uses
  %i.ye = load i32, ptr %i.kk, align 4, !noalias !5033
  %i.yf = load i32, ptr %i.kl, align 4, !noalias !5033
  %.sroa.016.0.i.i.i = select i1 %i.yd, i32 %i.ye, i32 0
  %.sroa.517.0.i.i.i = select i1 %i.yd, i32 %i.yf, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5033
  %i.yg = invoke noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %.sroa.016.0.i.i.i, i32 noundef %.sroa.517.0.i.i.i)
          to label %bb.je unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034

bb.je:                                            ; preds = %bb.jd
  %i.yh = load i64, ptr %i.ka, align 8, !alias.scope !5036, !noalias !5033, !noundef !10 ; 3 uses
  %i.yi = load i64, ptr %i.ba, align 8, !range !15, !alias.scope !5036, !noalias !5033, !noundef !10
  %i.yj = icmp eq i64 %i.yh, %i.yi
  br i1 %i.yj, label %bb.jf, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i

bb.jf:                                            ; preds = %bb.je
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs5UXtnEuoeIl_11fish_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba) #39
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5034

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.jf, %bb.je
  %i.yk = load ptr, ptr %i.jz, align 8, !alias.scope !5036, !noalias !5033, !nonnull !10, !noundef !10
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %i.yh
  store i64 %i.yg, ptr %i.yl, align 8, !noalias !5034
  %i.ym = add i64 %i.yh, 1
  store i64 %i.ym, ptr %i.ka, align 8, !alias.scope !5036, !noalias !5033
  br label %.outer.i.i.i.backedge

.outer.i.i.i.backedge:                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i, %bb.jb, %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %.sroa.01.0.ph.i.i.i.be = phi i64 [ %.ph.i.i.i, %._crit_edge.thread.i.i.i ], [ %.sroa.01.156.i.i.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs8frGy5WneL6_4fish.exit.i.i.i ], [ %.sroa.01.156.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.01.156.i.i.i, %bb.jb ]
  br label %.outer.i.i.i.a

bb.jg:                                            ; preds = %bb.it
  %i.yn = add nuw nsw i64 %.sroa.01.156.i.i.i, 1  ; 2 uses
  %i.yo = icmp ult i64 %.pre.pre.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.yo)
  %.not23.i.i.i = icmp eq i64 %i.yn, %.pre.pre.i.i.i
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

bb.jh:                                            ; preds = %.thread.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i
  %i.yp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !5034
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i, %.thread37.i.i.i
  %.pn.pn33.i.i.i = phi { ptr, i32 } [ %i.wf, %.thread37.i.i.i ], [ %.pn.i24.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #37
          to label %.body.i.i unwind label %bb.jh, !noalias !5034

bb.ji:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !5033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !5033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !5020
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.9.0..sroa_idx.i.i)
          to label %bb.jk unwind label %bb.jj, !noalias !5024

bb.jj:                                            ; preds = %bb.ji
  %i.yq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.9.0..sroa_idx.i.i)
          to label %.body32.i.i unwind label %bb.jl, !noalias !5024

bb.jk:                                            ; preds = %bb.ji
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.9.0..sroa_idx.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.jm, !noalias !5024

bb.jl:                                            ; preds = %bb.jj
  %i.yr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !5024
  unreachable

bb.jm:                                            ; preds = %bb.jk
  %i.ys = landingpad { ptr, i32 }
          cleanup
  br label %.body32.i.i

.body32.i.i:                                      ; preds = %bb.jm, %bb.jj
  %eh.lpad-body33.i.i = phi { ptr, i32 } [ %i.ys, %bb.jm ], [ %i.yq, %bb.jj ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.9.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !5020
  br label %.body.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.jk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.9.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !5020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.experimental.noalias.scope.decl(metadata !5037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !5020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5038
  store i64 0, ptr %i.aq, align 8, !noalias !5038
  store ptr inttoptr (i64 8 to ptr), ptr %i.km, align 8, !noalias !5038
  store i64 0, ptr %i.kn, align 8, !noalias !5038
  %i.yt = load ptr, ptr %i.ju, align 8, !alias.scope !5037, !noalias !5020, !nonnull !10, !align !11, !noundef !10
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 72 ; 3 uses
  invoke void @_RNvMsw_NtCs8frGy5WneL6_4fish3astNtB5_9Traversal3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noundef nonnull %i.yu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @6)
          to label %bb.jr unwind label %bb.jq, !noalias !5039

.body85.i.i.i:                                    ; preds = %bb.kn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i94.i.i.i, %bb.kf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i.i, %bb.jx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i36.i.i, %bb.jq
  %.pn69.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp3880, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i94.i.i.i ], [ %i.zz, %bb.kn ], [ %i.zq, %bb.kf ], [ %lpad.loopexit.split-lp3886, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i36.i.i ], [ %i.zf, %bb.jx ], [ %i.yx, %bb.jq ], [ %lpad.loopexit.split-lp3883, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.jo unwind label %bb.jn, !noalias !5039

bb.jn:                                            ; preds = %.body85.i.i.i
  %i.yv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body.i34.i.i unwind label %bb.jp, !noalias !5039

bb.jo:                                            ; preds = %.body85.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body.i.i unwind label %bb.lm, !noalias !5039

bb.jp:                                            ; preds = %bb.jn
  %i.yw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !5039
  unreachable

bb.jq:                                            ; preds = %bb.kr, %bb.kq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i99.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit92.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i89.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit87.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i84.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit.i.i
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %.body85.i.i.i

bb.jr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !5038
  %.val.i121.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !5037, !noalias !5020, !nonnull !10, !align !28 ; 9 uses
  %.val1.i122.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !5037, !noalias !5020 ; 5 uses
  br label %.backedge181.i.i.i

.backedge181.i.i.i:                               ; preds = %.backedge181.i.i.i.backedge, %bb.jr
  %i.yy = invoke { ptr, ptr } @_RNvXsx_NtCs8frGy5WneL6_4fish3astNtB5_9TraversalNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.ju unwind label %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5039 ; 2 uses

.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.mn, %.noexc145.i.i.i, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6substr.exit.i143.i.i.i, %bb.mo, %bb.mp, %.backedge181.i.i.i, %bb.jv, %bb.mb, %bb.mi, %.noexc127.i.i.i, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6substr.exit.i125.i.i.i, %bb.mj, %bb.mk, %bb.mq, %.invoke.i39.i.i, %bb.ml
  %lpad.loopexit.split-lp3886 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i36.i.i unwind label %bb.js, !noalias !5039

bb.js:                                            ; preds = %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.yz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body.i34.i.i unwind label %bb.jt, !noalias !5039

bb.jt:                                            ; preds = %bb.js
  %i.za = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !5039
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i36.i.i: ; preds = %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body85.i.i.i unwind label %bb.lm, !noalias !5039

bb.ju:                                            ; preds = %.backedge181.i.i.i
  %i.zb = extractvalue { ptr, ptr } %i.yy, 0      ; 3 uses
  %.not.i37.i.i = icmp eq ptr %i.zb, null
  br i1 %.not.i37.i.i, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.zc = extractvalue { ptr, ptr } %i.yy, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zc) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5038
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 64
  %i.ze = load ptr, ptr %i.zd, align 8, !invariant.load !10, !noalias !5039, !nonnull !10 ; 2 uses
  invoke void %i.ze(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noundef nonnull %i.zb)
          to label %bb.lz unwind label %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5039

bb.jw:                                            ; preds = %bb.ju
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i84.i.i.i unwind label %bb.jx, !noalias !5039

bb.jx:                                            ; preds = %bb.jw
  %i.zf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body85.i.i.i unwind label %bb.jy, !noalias !5039

bb.jy:                                            ; preds = %bb.jx
  %i.zg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !5039
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i84.i.i.i: ; preds = %bb.jw
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit87.i.i.i unwind label %bb.jq, !noalias !5039

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit87.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i84.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5038
  invoke void @_RNvMsw_NtCs8frGy5WneL6_4fish3astNtB5_9Traversal3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noundef nonnull %i.yu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @6)
          to label %bb.jz unwind label %bb.jq, !noalias !5039

bb.jz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast9TraversalEBF_.exit87.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !5038
  %i.zh = load ptr, ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !5037, !noalias !5020, !nonnull !10 ; 2 uses
  %i.zi = load i64, ptr %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !5037, !noalias !5020 ; 4 uses
  br label %.backedge172.i.i.i

.backedge172.i.i.i:                               ; preds = %.backedge172.i.i.i.backedge, %bb.jz
  %i.zj = invoke { ptr, ptr } @_RNvXsx_NtCs8frGy5WneL6_4fish3astNtB5_9TraversalNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.kc unwind label %.loopexit.split-lp166.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5039 ; 2 uses

.loopexit.split-lp166.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.lv, %.noexc110.i.i.i, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6substr.exit.i.i.i.i, %bb.lx, %bb.ly, %.backedge172.i.i.i, %bb.kd, %bb.lo, %bb.lq, %bb.lw
  %lpad.loopexit.split-lp3883 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i.i unwind label %bb.ka, !noalias !5039

bb.ka:                                            ; preds = %.loopexit.split-lp166.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.zk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body.i34.i.i unwind label %bb.kb, !noalias !5039

bb.kb:                                            ; preds = %bb.ka
  %i.zl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !5039
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEEB1c_.exit.i.i.i: ; preds = %.loopexit.split-lp166.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body85.i.i.i unwind label %bb.lm, !noalias !5024

bb.kc:                                            ; preds = %.backedge172.i.i.i
  %i.zm = extractvalue { ptr, ptr } %i.zj, 0      ; 2 uses
  %.not56.i.i.i = icmp eq ptr %i.zm, null
  br i1 %.not56.i.i.i, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.zn = extractvalue { ptr, ptr } %i.zj, 1      ; 2 uses
end_hunk_0
