Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_bundle-0b83f87b31ae34d3.typst_bundle.bf34c93a048d29f7-cgu.0?download=true
inline.NumInlined: 6006
inline.NumDeleted: 2956
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB2Y_:bb.a
  %i.ej = shufflevector <16 x i8> %i.ei, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %_RNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0B5_.exit.i49
  %.sroa.9.0.i.i.i.i4.i51 = phi i64 [ 0, %_RNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0B5_.exit.i49 ], [ %i.fa, %bb.z ]
  %.pn.i.i.i5.i52 = phi i64 [ %i.ef, %_RNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0B5_.exit.i49 ], [ %i.fb, %bb.z ]
  %.sroa.01.0.i.i.i.i6.i53 = and i64 %.pn.i.i.i5.i52, %i.db ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.sroa.01.0.i.i.i.i6.i53
  %.sroa.0.0.copyload.i24.i.i.i7.i54 = load <16 x i8>, ptr %i.ek, align 1, !noalias !3542 ; 2 uses
  %i.el = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i7.i54, %i.ej
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not.i.not30.i.i.i8.i55 = icmp eq i16 %i.em, 0
  br i1 %.not.i.not30.i.i.i8.i55, label %._crit_edge.i.i.i13.i60, label %.lr.ph.i.i.i9.i56

.lr.ph.i.i.i9.i56:                                ; preds = %bb.x, %bb.y
  %.sroa.06.0.i31.i.i.i10.i57 = phi i16 [ %i.ez, %bb.y ], [ %i.em, %bb.x ] ; 3 uses
  %i.en = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i10.i57, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = add i64 %.sroa.01.0.i.i.i.i6.i53, %i.eo
  %i.eq = and i64 %i.ep, %i.db
  %i.er = sub nsw i64 0, %i.eq
  %i.es = getelementptr inbounds [32 x i8], ptr %i.dc, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -32
  %.val2.i.i.i.i11.i58 = load i128, ptr %i.et, align 16, !noalias !3543, !noundef !19
  %i.eu = icmp eq i128 %.val11.i, %.val2.i.i.i.i11.i58
  br i1 %i.eu, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i15.i63, label %bb.y, !prof !21

._crit_edge.i.i.i13.i60:                          ; preds = %bb.y, %bb.x
  %i.ev = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i7.i54, splat (i8 -1)
  %i.ew = bitcast <16 x i1> %i.ev to i16
  %i.ex = icmp eq i16 %i.ew, 0
  br i1 %i.ex, label %bb.z, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit65, !prof !22

bb.y:                                             ; preds = %.lr.ph.i.i.i9.i56
  %i.ey = add i16 %.sroa.06.0.i31.i.i.i10.i57, -1
  %i.ez = and i16 %i.ey, %.sroa.06.0.i31.i.i.i10.i57 ; 2 uses
  %.not.i.not.i.i.i12.i59 = icmp eq i16 %i.ez, 0
  br i1 %.not.i.not.i.i.i12.i59, label %._crit_edge.i.i.i13.i60, label %.lr.ph.i.i.i9.i56

bb.z:                                             ; preds = %._crit_edge.i.i.i13.i60
  %i.fa = add i64 %.sroa.9.0.i.i.i.i4.i51, 16     ; 2 uses
  %i.fb = add i64 %.sroa.01.0.i.i.i.i6.i53, %i.fa
  br label %bb.x

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i15.i63: ; preds = %.lr.ph.i.i.i9.i56
  %i.fc = getelementptr inbounds i8, ptr %i.es, i64 -16
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !3526, !noundef !19
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit65

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit65: ; preds = %._crit_edge.i.i.i13.i60, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i15.i63
  %.sroa.0.0.i14.i62 = phi i64 [ %i.fd, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i15.i63 ], [ -1, %._crit_edge.i.i.i13.i60 ]
  %i.fe = icmp ult i64 %.sroa.0.0.i.i50, %.sroa.0.0.i14.i62
  br i1 %i.fe, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB35_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit65.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit65.thread: ; preds = %bb.s, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit65
  %i.ff = add nuw i64 %.sroa.01.0.i.i132, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ff, %umax
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB35_.exit.i, label %bb.s

bb.aa:                                            ; preds = %.lr.ph135.split, %bb.ah
  %.val8.i = phi i128 [ %.val13.i, %.lr.ph135.split ], [ %.val7.i, %bb.ah ] ; 3 uses
  %.sroa.01.1.i.i134 = phi i64 [ 2, %.lr.ph135.split ], [ %i.hu, %bb.ah ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i134
  %i.fh = add nsw i64 %.sroa.01.1.i.i134, -1
  %i.fi = icmp ult i64 %i.fh, %i.n
  tail call void @llvm.assume(i1 %i.fi)
  %.val7.i = load i128, ptr %i.fg, align 16, !alias.scope !3524 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3544), !noalias !3526
  %i.fj = trunc i128 %.val7.i to i64
  %i.fk = mul i64 %i.fj, -1065810590584100411
  %i.fl = lshr i128 %.val7.i, 64
  %i.fm = trunc nuw i128 %i.fl to i64
  %i.fn = add i64 %i.fk, %i.fm
  %i.fo = mul i64 %i.fn, -1065810590584100411     ; 2 uses
  %i.fp = tail call noundef i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3545), !noalias !3526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3546), !noalias !3526
  %i.fq = lshr i64 %i.fp, 57
  %i.fr = trunc nuw nsw i64 %i.fq to i8
  %i.fs = insertelement <16 x i8> poison, i8 %i.fr, i64 0
  %i.ft = shufflevector <16 x i8> %i.fs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.gk, %bb.ad ]
  %.pn.i.i.i.i = phi i64 [ %i.fp, %bb.aa ], [ %i.gl, %bb.ad ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.cn ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.fu, align 1, !noalias !3547 ; 2 uses
  %i.fv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.ft
  %i.fw = bitcast <16 x i1> %i.fv to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.fw, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ab, %bb.ac
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.gj, %bb.ac ], [ %i.fw, %bb.ab ] ; 3 uses
  %i.fx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.fy = zext nneg i16 %i.fx to i64
  %i.fz = add i64 %.sroa.01.0.i.i.i.i.i, %i.fy
  %i.ga = and i64 %i.fz, %i.cn
  %i.gb = sub nsw i64 0, %i.ga
  %i.gc = getelementptr inbounds [32 x i8], ptr %i.co, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -32
  %.val2.i.i.i.i.i = load i128, ptr %i.gd, align 16, !noalias !3548, !noundef !19
  %i.ge = icmp eq i128 %.val7.i, %.val2.i.i.i.i.i
  br i1 %i.ge, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i, label %bb.ac, !prof !21

._crit_edge.i.i.i.i:                              ; preds = %bb.ac, %bb.ab
  %i.gf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.gg = bitcast <16 x i1> %i.gf to i16
  %i.gh = icmp eq i16 %i.gg, 0
  br i1 %i.gh, label %bb.ad, label %_RNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0B5_.exit.i, !prof !22

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gi = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.gj = and i16 %i.gi, %.sroa.06.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.gj, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i
  %i.gk = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.gl = add i64 %.sroa.01.0.i.i.i.i.i, %i.gk
  br label %bb.ab

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.gm = getelementptr inbounds i8, ptr %i.gc, i64 -16
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !3526, !noundef !19
  br label %_RNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0B5_.exit.i

_RNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0B5_.exit.i: ; preds = %._crit_edge.i.i.i.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i
  %.sroa.0.0.i.i37 = phi i64 [ %i.gn, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i.i ], [ -1, %._crit_edge.i.i.i.i ]
  %i.go = trunc i128 %.val8.i to i64
  %i.gp = mul i64 %i.go, -1065810590584100411
  %i.gq = lshr i128 %.val8.i, 64
  %i.gr = trunc nuw i128 %i.gq to i64
  %i.gs = add i64 %i.gp, %i.gr
  %i.gt = mul i64 %i.gs, -1065810590584100411     ; 2 uses
  %i.gu = tail call noundef i64 @llvm.fshl.i64(i64 %i.gt, i64 %i.gt, i64 26) ; 2 uses
  %i.gv = lshr i64 %i.gu, 57
  %i.gw = trunc nuw nsw i64 %i.gv to i8
  %i.gx = insertelement <16 x i8> poison, i8 %i.gw, i64 0
  %i.gy = shufflevector <16 x i8> %i.gx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %_RNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0B5_.exit.i
  %.sroa.9.0.i.i.i.i4.i = phi i64 [ 0, %_RNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0B5_.exit.i ], [ %i.hp, %bb.ag ]
  %.pn.i.i.i5.i = phi i64 [ %i.gu, %_RNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0B5_.exit.i ], [ %i.hq, %bb.ag ]
  %.sroa.01.0.i.i.i.i6.i = and i64 %.pn.i.i.i5.i, %i.cn ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.01.0.i.i.i.i6.i
  %.sroa.0.0.copyload.i24.i.i.i7.i = load <16 x i8>, ptr %i.gz, align 1, !noalias !3549 ; 2 uses
  %i.ha = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i7.i, %i.gy
  %i.hb = bitcast <16 x i1> %i.ha to i16          ; 2 uses
  %.not.i.not30.i.i.i8.i = icmp eq i16 %i.hb, 0
  br i1 %.not.i.not30.i.i.i8.i, label %._crit_edge.i.i.i13.i, label %.lr.ph.i.i.i9.i

.lr.ph.i.i.i9.i:                                  ; preds = %bb.ae, %bb.af
  %.sroa.06.0.i31.i.i.i10.i = phi i16 [ %i.ho, %bb.af ], [ %i.hb, %bb.ae ] ; 3 uses
  %i.hc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i10.i, i1 true)
  %i.hd = zext nneg i16 %i.hc to i64
  %i.he = add i64 %.sroa.01.0.i.i.i.i6.i, %i.hd
  %i.hf = and i64 %i.he, %i.cn
  %i.hg = sub nsw i64 0, %i.hf
  %i.hh = getelementptr inbounds [32 x i8], ptr %i.co, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -32
  %.val2.i.i.i.i11.i = load i128, ptr %i.hi, align 16, !noalias !3550, !noundef !19
  %i.hj = icmp eq i128 %.val8.i, %.val2.i.i.i.i11.i
  br i1 %i.hj, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i15.i, label %bb.af, !prof !21

._crit_edge.i.i.i13.i:                            ; preds = %bb.af, %bb.ae
  %i.hk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i7.i, splat (i8 -1)
  %i.hl = bitcast <16 x i1> %i.hk to i16
  %i.hm = icmp eq i16 %i.hl, 0
  br i1 %i.hm, label %bb.ag, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit, !prof !22

bb.af:                                            ; preds = %.lr.ph.i.i.i9.i
  %i.hn = add i16 %.sroa.06.0.i31.i.i.i10.i, -1
  %i.ho = and i16 %i.hn, %.sroa.06.0.i31.i.i.i10.i ; 2 uses
  %.not.i.not.i.i.i12.i = icmp eq i16 %i.ho, 0
  br i1 %.not.i.not.i.i.i12.i, label %._crit_edge.i.i.i13.i, label %.lr.ph.i.i.i9.i

bb.ag:                                            ; preds = %._crit_edge.i.i.i13.i
  %i.hp = add i64 %.sroa.9.0.i.i.i.i4.i, 16       ; 2 uses
  %i.hq = add i64 %.sroa.01.0.i.i.i.i6.i, %i.hp
  br label %bb.ae

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i15.i: ; preds = %.lr.ph.i.i.i9.i
  %i.hr = getelementptr inbounds i8, ptr %i.hh, i64 -16
  %i.hs = load i64, ptr %i.hr, align 8, !noalias !3526, !noundef !19
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit: ; preds = %._crit_edge.i.i.i13.i, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i15.i
  %.sroa.0.0.i14.i = phi i64 [ %i.hs, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_ECsgpMJJHpo27b_12typst_bundle.exit.i15.i ], [ -1, %._crit_edge.i.i.i13.i ]
  %i.ht = icmp ult i64 %.sroa.0.0.i.i37, %.sroa.0.0.i14.i
  br i1 %i.ht, label %bb.ah, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB35_.exit.i

bb.ah:                                            ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit
  %i.hu = add nuw i64 %.sroa.01.1.i.i134, 1       ; 2 uses
  %exitcond177.not = icmp eq i64 %i.hu, %umax176
  br i1 %exitcond177.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB35_.exit.i, label %bb.aa

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB35_.exit.i: ; preds = %bb.ah, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit65.thread, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit65, %.preheader107, %.preheader
  %i.hv = phi i1 [ false, %.preheader107 ], [ true, %.preheader ], [ false, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit65.thread ], [ false, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit65 ], [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit ], [ true, %bb.ah ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader107 ], [ 2, %.preheader ], [ %umax, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit65.thread ], [ %.sroa.01.0.i.i132, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit65 ], [ %umax176, %bb.ah ], [ %.sroa.01.1.i.i134, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit ] ; 9 uses
  %i.hw = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.hw)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB35_.exit.i
  br i1 %i.hv, label %bb.al, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit

bb.aj:                                            ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.hx = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB36_.exit

bb.ak:                                            ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB38_(ptr noalias nofree noundef nonnull align 16 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #51, !inline_history !3458
  %i.hy = shl nuw nsw i64 %..i35, 1
  %i.hz = or disjoint i64 %i.hy, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB36_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.i.i
  %i.ia = and i64 %.sroa.0.0.i.i, 2
  %lcmp.mod.not = icmp eq i64 %i.ia, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.i.i.epil.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit.loopexit.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.preheader.i.i ], [ %i.it, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod294 = trunc i64 %i.ih to i1
  tail call void @llvm.assume(i1 %lcmp.mod294)
  %i.ib = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.id = getelementptr [16 x i8], ptr %i.ii, i64 %i.ib ; 2 uses
  %i.ie = load i128, ptr %i.ic, align 16, !alias.scope !3551, !noalias !3552, !noundef !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ic, ptr noundef nonnull align 16 dereferenceable(16) %i.id, i64 16, i1 false), !alias.scope !3553, !noalias !3552
  store i128 %i.ie, ptr %i.id, align 16, !alias.scope !3554, !noalias !3552
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.i.i.epil.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit.loopexit.unr-lcssa, %bb.j, %bb.al, %bb.ai
  %.sroa.0.0.i.i102105 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.ai ], [ %.sroa.0.0.i.i, %bb.al ], [ %.sroa.0.0.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.i.i.epil.preheader ]
  %i.if = shl nuw nsw i64 %.sroa.0.0.i.i102105, 1
  %i.ig = or disjoint i64 %i.if, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB36_.exit

bb.al:                                            ; preds = %bb.ai
  %i.ih = lshr i64 %.sroa.0.0.i.i, 1              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3555), !noalias !3552
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3556), !noalias !3552
  %.not.i.i = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.preheader.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.preheader.i.i: ; preds = %bb.al
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i ; 3 uses
  %i.ij = icmp eq i64 %i.ih, 1
  br i1 %i.ij, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.preheader.i.i.new

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ih, 9223372036854775806
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.preheader.i.i.new ], [ %i.it, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.i.i ]
  %i.ik = xor i64 %.sroa.0.016.i.i, -1
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.im = getelementptr [16 x i8], ptr %i.ii, i64 %i.ik ; 2 uses
  %i.in = load i128, ptr %i.il, align 16, !alias.scope !3551, !noalias !3552, !noundef !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.il, ptr noundef nonnull align 16 dereferenceable(16) %i.im, i64 16, i1 false), !alias.scope !3553, !noalias !3552
  store i128 %i.in, ptr %i.im, align 16, !alias.scope !3554, !noalias !3552
  %i.io = xor i64 %.sroa.0.016.i.i, -2
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 2 uses
  %i.ir = getelementptr [16 x i8], ptr %i.ii, i64 %i.io ; 2 uses
  %i.is = load i128, ptr %i.iq, align 16, !alias.scope !3551, !noalias !3552, !noundef !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.iq, ptr noundef nonnull align 16 dereferenceable(16) %i.ir, i64 16, i1 false), !alias.scope !3553, !noalias !3552
  store i128 %i.is, ptr %i.ir, align 16, !alias.scope !3554, !noalias !3552
  %i.it = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit.loopexit.unr-lcssa, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location12split_at_mutCsgpMJJHpo27b_12typst_bundle.exit11.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB36_.exit: ; preds = %bb.aj, %bb.ak, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ig, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location7reverseCsgpMJJHpo27b_12typst_bundle.exit ], [ %i.hz, %bb.ak ], [ %i.hx, %bb.aj ] ; 2 uses
  %i.iu = lshr i64 %.sroa.023.0, 1
  %i.iv = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.iw = sub nsw i64 %factor, %i.iu
  %i.ix = add nuw nsw i64 %i.iv, %factor
  %i.iy = mul i64 %i.iw, %.sroa.0.0
  %i.iz = mul i64 %i.ix, %.sroa.0.0
  %i.ja = xor i64 %i.iz, %i.iy
  %i.jb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ja, i1 false)
  %i.jc = trunc nuw nsw i64 %i.jb to i8
  br label %bb.g

bb.am:                                            ; preds = %.lr.ph142, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB39_.exit
  %.sroa.02.1141 = phi i64 [ %.sroa.02.0, %.lr.ph142 ], [ %i.jd, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB39_.exit ] ; 2 uses
  %.sroa.023.1140 = phi i64 [ %.sroa.023.0, %.lr.ph142 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB39_.exit ] ; 4 uses
  %i.jd = add i64 %.sroa.02.1141, -1              ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !noundef !19
  %.not28 = icmp ult i8 %i.jf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.an

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB39_.exit, %bb.am, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1140, %bb.am ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB39_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1141, %bb.am ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB39_.exit ] ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.jh, align 1
  br i1 %i.k, label %bb.bk, label %bb.bl

bb.an:                                            ; preds = %bb.am
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.jd
  %i.jj = load i64, ptr %i.ji, align 8, !noundef !19 ; 3 uses
  %i.jk = lshr i64 %i.jj, 1                       ; 8 uses
  %i.jl = lshr i64 %.sroa.023.1140, 1             ; 6 uses
  %i.jm = add nuw i64 %i.jk, %i.jl                ; 5 uses
  %i.jn = sub i64 %.sroa.09.0, %i.jm
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.jn ; 8 uses
  %i.jp = icmp samesign ugt i64 %i.jm, %3
  %i.jq = trunc i64 %.sroa.023.1140 to i1
  %i.jr = or i64 %i.jj, %.sroa.023.1140
  %i.js = trunc i64 %i.jr to i1
  %or.cond3.i = or i1 %i.jp, %i.js
  br i1 %or.cond3.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jt = trunc i64 %i.jj to i1
  br i1 %i.jt, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.ju = shl nuw nsw i64 %i.jm, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB39_.exit

bb.aq:                                            ; preds = %bb.ar, %bb.ao
  br i1 %i.jq, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.jv = or i64 %i.jk, 1
  %i.jw = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.jv, i1 true)
  %i.jx = trunc nuw nsw i64 %i.jw to i32
  %i.jy = shl nuw nsw i32 %i.jx, 1
  %i.jz = xor i32 %i.jy, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB38_(ptr noalias nofree noundef nonnull align 16 %i.jo, i64 noundef range(i64 0, 576460752303423488) %i.jk, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.jz, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #51, !inline_history !3464
  br label %bb.aq

bb.as:                                            ; preds = %bb.aq
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %i.jk
  %i.kb = or i64 %i.jl, 1
  %i.kc = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.kb, i1 true)
  %i.kd = trunc nuw nsw i64 %i.kc to i32
  %i.ke = shl nuw nsw i32 %i.kd, 1
  %i.kf = xor i32 %i.ke, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB38_(ptr noalias nofree noundef nonnull align 16 %i.ka, i64 noundef range(i64 0, 576460752303423488) %i.jl, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.kf, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #51, !inline_history !3464
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.val = load ptr, ptr %5, align 8               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3558)
  %i.kg = icmp eq i64 %i.jk, 0
  %i.kh = icmp eq i64 %i.jl, 0
  %or.cond.i = or i1 %i.kh, %i.kg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB2Z_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.jl, i64 range(i64 0, -9223372036854775808) %i.jk) ; 3 uses
  %i.ki = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ki, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB2Z_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.au
  %.idx24.i = shl nuw nsw i64 %i.jk, 4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.idx24.i ; 5 uses
  %.not.i33 = icmp samesign ugt i64 %i.jk, %i.jl  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.kj, ptr %i.jo
  %i.kk = shl nuw nsw i64 %..i.i, 4               ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 16 %spec.select.i, i64 %i.kk, i1 false), !alias.scope !3559
  %i.kl = getelementptr i8, ptr %2, i64 %i.kk     ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.val2.i.i.i = load ptr, ptr %.val, align 8, !noalias !3559, !nonnull !19, !align !36, !noundef !19 ; 5 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 80
  %i.kn = load i64, ptr %i.km, align 8, !noalias !3559, !noundef !19
  %i.ko = icmp eq i64 %i.kn, 0                    ; 2 uses
  br i1 %.not.i33, label %bb.av, label %.lr.ph.i.i

bb.av:                                            ; preds = %.critedge.i
  br i1 %i.ko, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit.i.us.preheader.i, label %.split.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Location11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0B1Y_.exit.i.us.preheader.i: ; preds = %bb.av
  %i.kp = sub nuw nsw i64 %i.jm, %..i.i
  %i.kq = shl nsw i64 %i.kp, 4
  %scevgep42.i = getelementptr i8, ptr %i.jo, i64 %i.kq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %scevgep42.i, ptr nonnull align 16 %i.kj, i64 %i.kk, i1 false), !alias.scope !3557
  br label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyjNCNvNtCsgpMJJHpo27b_12typst_bundle4link25create_paged_link_anchors0E0EB3q_.exit.i

.split.i:                                         ; preds = %bb.av
  %i.kr = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 64
  %i.ks = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 56
  %i.kt = load i64, ptr %i.kr, align 8, !alias.scope !3560, !noalias !3561, !noundef !19 ; 4 uses
end_hunk_0
