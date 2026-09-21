Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/rapidyaml?download=true
inline.NumInlined: 4426
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 307
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 323
begin_hunk_0_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_block_literalINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE:bb.a

bb.l:                                             ; preds = %.lr.ph.i.i30
  %i.au = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i31 = icmp eq i64 %i.au, %i.ar
  br i1 %exitcond.not.i.i31, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, label %.lr.ph.i.i30, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i30
  %.not8.i = icmp eq i64 %.0710.i.i, -1
  br i1 %.not8.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i
  %.sink.v.i = tail call i64 @llvm.umin.i64(i64 %.0710.i.i, i64 %2)
  %.sink.i = add i64 %.sink.v.i, %i.ap            ; 2 uses
  store i64 %.sink.i, ptr %i.ao, align 8, !tbaa !265, !alias.scope !874
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit: ; preds = %bb.l, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i
  %i.av = phi i64 [ %.sink.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %i.b, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit ], [ %i.ap, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.ap, %bb.l ] ; 2 uses
  %i.aw = icmp ult i64 %i.av, %.0.i
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42
  %i.ba = phi i64 [ %i.av, %.lr.ph ], [ %i.bx, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42 ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.bc, label %bb.r [
    i8 10, label %bb.n
    i8 13, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !266 ; 3 uses
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !272
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.o, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !267
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  store i8 10, ptr %i.bh, align 1, !tbaa !87
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22:  ; preds = %bb.n, %bb.o
  %i.bi = add i64 %i.bd, 1
  store i64 %i.bi, ptr %i.ax, align 8, !tbaa !266
  %i.bj = add nuw i64 %i.ba, 1                    ; 7 uses
  store i64 %i.bj, ptr %i.ao, align 8, !tbaa !265
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bj
  %i.bl = sub i64 %i.b, %i.bj
  %.not.i32 = icmp eq i64 %i.b, %i.bj
  br i1 %.not.i32, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42, label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22, %bb.p
  %.0710.i.i34 = phi i64 [ %i.bo, %bb.p ], [ 0, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22 ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0710.i.i34
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !87, !noalias !875
  %.not.i.i35 = icmp eq i8 %i.bn, 32
  br i1 %.not.i.i35, label %bb.p, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i36

bb.p:                                             ; preds = %.lr.ph.i.i33
  %i.bo = add nuw i64 %.0710.i.i34, 1             ; 2 uses
  %exitcond.not.i.i41 = icmp eq i64 %i.bo, %i.bl
  br i1 %exitcond.not.i.i41, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42, label %.lr.ph.i.i33, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i36: ; preds = %.lr.ph.i.i33
  %.not8.i37 = icmp eq i64 %.0710.i.i34, -1
  br i1 %.not8.i37, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i38

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i38: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i36
  %.sink.v.i39 = tail call i64 @llvm.umin.i64(i64 %.0710.i.i34, i64 %2)
  %.sink.i40 = add i64 %.sink.v.i39, %i.bj
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42.sink.split

bb.q:                                             ; preds = %bb.m
  %i.bp = add nuw i64 %i.ba, 1
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42.sink.split

bb.r:                                             ; preds = %bb.m
  %i.bq = load i64, ptr %i.ax, align 8, !tbaa !266 ; 3 uses
  %i.br = load i64, ptr %i.ay, align 8, !tbaa !272
  %i.bs = icmp ult i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.s, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

bb.s:                                             ; preds = %bb.r
  %i.bt = load ptr, ptr %i.az, align 8, !tbaa !267
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  store i8 %i.bc, ptr %i.bu, align 1, !tbaa !87
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit:    ; preds = %bb.r, %bb.s
  %i.bv = add i64 %i.bq, 1
  store i64 %i.bv, ptr %i.ax, align 8, !tbaa !266
  %i.bw = add nuw i64 %i.ba, 1
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42.sink.split

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42.sink.split: ; preds = %bb.q, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i38
  %.sink.i40.sink = phi i64 [ %.sink.i40, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i38 ], [ %i.bw, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit ], [ %i.bp, %bb.q ] ; 2 uses
  store i64 %.sink.i40.sink, ptr %i.ao, align 8, !tbaa !265
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42: ; preds = %bb.p, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42.sink.split, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i36, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22
  %i.bx = phi i64 [ %i.b, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit22 ], [ %.sink.i40.sink, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42.sink.split ], [ %i.bj, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i36 ], [ %i.bj, %bb.p ] ; 2 uses
  %i.by = icmp ult i64 %i.bx, %.0.i
  br i1 %i.by, label %bb.m, label %._crit_edge, !llvm.loop !871

._crit_edge:                                      ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit42, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_chompINS0_21FilterProcessorSrcDstEEEvRT_NS0_12BlockChomp_eEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %3, i64 noundef %2)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !266 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !272
  %.not.i = icmp ugt i64 %i.ca, %i.cc
  br i1 %.not.i, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split

_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split: ; preds = %._crit_edge, %bb.i
  %.pn45.ph = phi i64 [ %i.ag, %bb.i ], [ %i.ca, %._crit_edge ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !267
  br label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26

_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26: ; preds = %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split, %._crit_edge, %bb.i
  %.pn47 = phi ptr [ null, %bb.i ], [ null, %._crit_edge ], [ %i.ce, %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split ]
  %.pn45 = phi i64 [ %i.ag, %bb.i ], [ %i.ca, %._crit_edge ], [ %.pn45.ph, %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn47, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.pn45, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE36filter_scalar_block_literal_in_placeENS_15basic_substringIcEEmmNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  store ptr %1, ptr %6, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_block_literalINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_block_literalINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !138, !alias.scope !885 ; 11 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !885 ; 10 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.a, %.loopexit25.us.i.i.i
  %.01534.us.i.in.i.i = phi i64 [ %.01534.us.i.i.i, %.loopexit25.us.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.01534.us.i.i.i = add i64 %.01534.us.i.in.i.i, -1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.01534.us.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87, !noalias !885
  switch i8 %i.h, label %.thread25.i.i [
    i8 32, label %.loopexit25.us.i.i.i
    i8 10, label %.loopexit25.us.i.i.i
    i8 13, label %.loopexit25.us.i.i.i
  ]

.thread25.i.i:                                    ; preds = %.preheader.us.i.i.i
  %.not.i28.i.i = icmp eq i64 %.01534.us.i.in.i.i, -1
  %i.i = select i1 %.not.i28.i.i, i64 %i.b, i64 %.01534.us.i.in.i.i
  br label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i

.loopexit25.us.i.i.i:                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %.not.us.i.i.i = icmp eq i64 %.01534.us.i.i.i, 0
  br i1 %.not.us.i.i.i, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, label %.preheader.us.i.i.i

_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i: ; preds = %.loopexit25.us.i.i.i, %.thread25.i.i, %bb.a
  %.sroa.3.1.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.thread25.i.i ], [ 0, %.loopexit25.us.i.i.i ] ; 4 uses
  %i.j = icmp ne i64 %.sroa.3.1.i.i, 0
  %i.k = icmp ne i32 %3, 2
  %or.cond.not15.i = or i1 %i.k, %i.j
  %brmerge.i = or i1 %i.c, %or.cond.not15.i
  br i1 %brmerge.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted.i = load i64, ptr %i.l, align 8, !tbaa !269, !alias.scope !885 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i, %i.b
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.p = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.z, %bb.f ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !885
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !270, !alias.scope !885 ; 3 uses
  %4 = load i64, ptr %i.o, align 8, !tbaa !233, !alias.scope !885
  %i.u = icmp ult i64 %i.t, %4
  br i1 %i.u, label %bb.d, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  store i8 10, ptr %i.v, align 1, !tbaa !87, !noalias !885
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.w = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.w, ptr %i.l, align 8, !tbaa !269, !alias.scope !885
  %i.x = add i64 %i.t, 1
  store i64 %i.x, ptr %i.n, align 8, !tbaa !270, !alias.scope !885
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.y = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.y, ptr %i.l, align 8, !tbaa !269, !alias.scope !885
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i
  %i.z = phi i64 [ %i.y, %bb.e ], [ %i.w, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i ] ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.b
  br i1 %i.aa, label %bb.b, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !270, !alias.scope !885
  %.not11.i = icmp eq i64 %i.ac, 0
  br i1 %.not11.i, label %bb.g, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !233, !alias.scope !885
  %.not.i26 = icmp eq i64 %i.ae, 0
  br i1 %.not.i26, label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 10, ptr %i.d, align 1, !tbaa !87, !noalias !885
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i: ; preds = %bb.h, %bb.g
  store i64 1, ptr %i.ab, align 8, !tbaa !270, !alias.scope !885
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit: ; preds = %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, %._crit_edge.i, %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i
  %.not = icmp eq i64 %.sroa.3.1.i.i, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !270 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !233
  %.not.i22 = icmp ugt i64 %i.ag, %i.ai
  %spec.select = select i1 %.not.i22, ptr null, ptr %i.d
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit25

bb.j:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit
  %i.aj = icmp ult i64 %.sroa.3.1.i.i, %i.b
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.0811.i.i = phi i64 [ %i.an, %bb.k ], [ %.sroa.3.1.i.i, %bb.j ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0811.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !87, !noalias !886
  %i.am = icmp eq i8 %i.al, 10
  br i1 %i.am, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.an = add i64 %.0811.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.b
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !35

_ZNK2c415basic_substringIcE8first_ofEcm.exit.i:   ; preds = %.lr.ph.i.i
  %.not.i27 = icmp eq i64 %.0811.i.i, -1
  br i1 %.not.i27, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit

_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i: ; preds = %bb.k, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, %bb.j
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit: ; preds = %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i
  %.0.i = phi i64 [ %i.b, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i ], [ %.0811.i.i, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !269, !alias.scope !887 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap
  %i.ar = sub i64 %i.b, %i.ap
  %.not.i28 = icmp eq i64 %i.b, %i.ap
  br i1 %.not.i28, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit, %bb.l
  %.0710.i.i = phi i64 [ %i.au, %bb.l ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0710.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !87, !noalias !887
  %.not.i.i = icmp eq i8 %i.at, 32
  br i1 %.not.i.i, label %bb.l, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i29
  %i.au = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i30 = icmp eq i64 %i.au, %i.ar
  br i1 %exitcond.not.i.i30, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %.lr.ph.i.i29, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i29
  %.not8.i = icmp eq i64 %.0710.i.i, -1
  br i1 %.not8.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i
  %.sink.v.i = tail call i64 @llvm.umin.i64(i64 %.0710.i.i, i64 %2)
  %.sink.i = add i64 %.sink.v.i, %i.ap            ; 2 uses
  store i64 %.sink.i, ptr %i.ao, align 8, !tbaa !269, !alias.scope !887
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit: ; preds = %bb.l, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i
  %i.av = phi i64 [ %.sink.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %i.b, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit ], [ %i.ap, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.ap, %bb.l ] ; 2 uses
  %i.aw = icmp ult i64 %i.av, %.0.i
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41
  %i.az = phi ptr [ %i.d, %.lr.ph ], [ %i.cd, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41 ] ; 3 uses
  %i.ba = phi ptr [ %i.d, %.lr.ph ], [ %i.ce, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41 ] ; 5 uses
  %i.bb = phi i64 [ %i.av, %.lr.ph ], [ %i.cc, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41 ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.bd, label %bb.r [
    i8 10, label %bb.n
    i8 13, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.be = load i64, ptr %i.ax, align 8, !tbaa !270 ; 3 uses
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !233
  %i.bg = icmp ult i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.o, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be
  store i8 10, ptr %i.bh, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.ax, align 8, !tbaa !270
  %.pre = load i64, ptr %i.ao, align 8, !tbaa !269
  %.pre57 = load ptr, ptr %1, align 8, !tbaa !139, !alias.scope !888
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit: ; preds = %bb.n, %bb.o
  %i.bi = phi ptr [ %.pre57, %bb.o ], [ %i.az, %bb.n ] ; 9 uses
  %i.bj = phi i64 [ %.pre, %bb.o ], [ %i.bb, %bb.n ]
  %i.bk = phi i64 [ %.pre.i, %bb.o ], [ %i.be, %bb.n ]
  %i.bl = add i64 %i.bj, 1                        ; 8 uses
  store i64 %i.bl, ptr %i.ao, align 8, !tbaa !269
  %i.bm = add i64 %i.bk, 1
  store i64 %i.bm, ptr %i.ax, align 8, !tbaa !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !138, !alias.scope !888 ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bl
  %.not.i31 = icmp eq i64 %i.bo, %i.bl
  br i1 %.not.i31, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %bb.p
  %.0710.i.i33 = phi i64 [ %i.bs, %bb.p ], [ 0, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.0710.i.i33
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !87, !noalias !888
  %.not.i.i34 = icmp eq i8 %i.br, 32
  br i1 %.not.i.i34, label %bb.p, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35

bb.p:                                             ; preds = %.lr.ph.i.i32
  %i.bs = add nuw i64 %.0710.i.i33, 1             ; 2 uses
  %exitcond.not.i.i40 = icmp eq i64 %i.bs, %i.bp
  br i1 %exitcond.not.i.i40, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41, label %.lr.ph.i.i32, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35: ; preds = %.lr.ph.i.i32
  %.not8.i36 = icmp eq i64 %.0710.i.i33, -1
  br i1 %.not8.i36, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35
  %.sink.v.i38 = tail call i64 @llvm.umin.i64(i64 %.0710.i.i33, i64 %2)
  %.sink.i39 = add i64 %.sink.v.i38, %i.bl        ; 2 uses
  store i64 %.sink.i39, ptr %i.ao, align 8, !tbaa !269, !alias.scope !888
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41

bb.q:                                             ; preds = %bb.m
  %i.bt = add nuw i64 %i.bb, 1                    ; 2 uses
  store i64 %i.bt, ptr %i.ao, align 8, !tbaa !269
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41

bb.r:                                             ; preds = %bb.m
  %i.bu = load i64, ptr %i.ax, align 8, !tbaa !270 ; 3 uses
  %i.bv = load i64, ptr %i.ay, align 8, !tbaa !233
  %i.bw = icmp ult i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.s, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bu
  store i8 %i.bd, ptr %i.bx, align 1, !tbaa !87
  %.pre.i42 = load i64, ptr %i.ax, align 8, !tbaa !270
end_hunk_0
begin_hunk_1_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE:bb.a
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !272, !alias.scope !894
  %.not.i27 = icmp eq i64 %i.ac, 0
  br i1 %.not.i27, label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !267, !alias.scope !894
  store i8 10, ptr %i.ae, align 1, !tbaa !87, !noalias !894
  br label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i

_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i:   ; preds = %bb.h, %bb.g
  store i64 1, ptr %i.z, align 8, !tbaa !266, !alias.scope !894
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit: ; preds = %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i, %bb.f, %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i
  %.not = icmp eq i64 %.sroa.3.1.i.i, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !266 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !272
  %.not.i23 = icmp ugt i64 %i.ag, %i.ai
  br i1 %.not.i23, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split

bb.j:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit
  %i.aj = icmp ult i64 %.sroa.3.1.i.i, %i.b
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.0811.i.i = phi i64 [ %i.an, %bb.k ], [ %.sroa.3.1.i.i, %bb.j ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0811.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !87, !noalias !895
  %i.am = icmp eq i8 %i.al, 10
  br i1 %i.am, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.an = add i64 %.0811.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.b
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !6

_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i:  ; preds = %.lr.ph.i.i
  %.not.i28 = icmp eq i64 %.0811.i.i, -1
  br i1 %.not.i28, label %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit

_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i: ; preds = %bb.k, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i, %bb.j
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit: ; preds = %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i
  %.0.i = phi i64 [ %i.b, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i ], [ %.0811.i.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i ] ; 4 uses
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE37_filter_block_folded_newlines_leadingINS0_21FilterProcessorSrcDstEEEvRT_mm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i64 noundef %.0.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !265 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %.0.i
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.q
  %i.au = phi i64 [ %i.ap, %.lr.ph ], [ %i.bi, %bb.q ] ; 3 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !99
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.ax, label %bb.o [
    i8 10, label %bb.m
    i8 13, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_filter_block_folded_newlinesINS0_21FilterProcessorSrcDstEEEvRT_mm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i64 noundef %.0.i)
  %.pre39 = load i64, ptr %i.ao, align 8, !tbaa !265
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ay = add nuw i64 %i.au, 1                    ; 2 uses
  store i64 %i.ay, ptr %i.ao, align 8, !tbaa !265
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.az = load i64, ptr %i.ar, align 8, !tbaa !266 ; 3 uses
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !272
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.p, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !267
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  store i8 %i.ax, ptr %i.bd, align 1, !tbaa !87
  %.pre = load i64, ptr %i.ar, align 8, !tbaa !266
  %.pre38 = load i64, ptr %i.ao, align 8, !tbaa !265
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit:    ; preds = %bb.o, %bb.p
  %i.be = phi i64 [ %i.au, %bb.o ], [ %.pre38, %bb.p ]
  %i.bf = phi i64 [ %i.az, %bb.o ], [ %.pre, %bb.p ]
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.ar, align 8, !tbaa !266
  %i.bh = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.bh, ptr %i.ao, align 8, !tbaa !265
  br label %bb.q

bb.q:                                             ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit, %bb.n, %bb.m
  %i.bi = phi i64 [ %i.bh, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit ], [ %i.ay, %bb.n ], [ %.pre39, %bb.m ] ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %.0.i
  br i1 %i.bj, label %bb.l, label %._crit_edge, !llvm.loop !893

._crit_edge:                                      ; preds = %bb.q, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_chompINS0_21FilterProcessorSrcDstEEEvRT_NS0_12BlockChomp_eEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %3, i64 noundef %2)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !266 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !272
  %.not.i = icmp ugt i64 %i.bl, %i.bn
  br i1 %.not.i, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split

_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split: ; preds = %._crit_edge, %bb.i
  %.pn31.ph = phi i64 [ %i.ag, %bb.i ], [ %i.bl, %._crit_edge ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !267
  br label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26

_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26: ; preds = %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split, %._crit_edge, %bb.i
  %.pn33 = phi ptr [ null, %bb.i ], [ null, %._crit_edge ], [ %i.bp, %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split ]
  %.pn31 = phi i64 [ %i.ag, %bb.i ], [ %i.bl, %._crit_edge ], [ %.pn31.ph, %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit26.sink.split ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn33, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.pn31, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE35filter_scalar_block_folded_in_placeENS_15basic_substringIcEEmmNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"struct.c4::yml::FilterProcessorInplaceEndExtending", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  store ptr %1, ptr %6, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_34FilterProcessorInplaceEndExtendingEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !138, !alias.scope !901 ; 8 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !901 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.a, %.loopexit25.us.i.i.i
  %.01534.us.i.in.i.i = phi i64 [ %.01534.us.i.i.i, %.loopexit25.us.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.01534.us.i.i.i = add i64 %.01534.us.i.in.i.i, -1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.01534.us.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87, !noalias !901
  switch i8 %i.h, label %.thread25.i.i [
    i8 32, label %.loopexit25.us.i.i.i
    i8 10, label %.loopexit25.us.i.i.i
    i8 13, label %.loopexit25.us.i.i.i
  ]

.thread25.i.i:                                    ; preds = %.preheader.us.i.i.i
  %.not.i28.i.i = icmp eq i64 %.01534.us.i.in.i.i, -1
  %i.i = select i1 %.not.i28.i.i, i64 %i.b, i64 %.01534.us.i.in.i.i
  br label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i

.loopexit25.us.i.i.i:                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %.not.us.i.i.i = icmp eq i64 %.01534.us.i.i.i, 0
  br i1 %.not.us.i.i.i, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, label %.preheader.us.i.i.i

_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i: ; preds = %.loopexit25.us.i.i.i, %.thread25.i.i, %bb.a
  %.sroa.3.1.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.thread25.i.i ], [ 0, %.loopexit25.us.i.i.i ] ; 4 uses
  %i.j = icmp ne i64 %.sroa.3.1.i.i, 0
  %i.k = icmp ne i32 %3, 2
  %or.cond.not15.i = or i1 %i.k, %i.j
  %brmerge.i = or i1 %i.c, %or.cond.not15.i
  br i1 %brmerge.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted.i = load i64, ptr %i.l, align 8, !tbaa !269, !alias.scope !901 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i, %i.b
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.p = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.z, %bb.f ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !901
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !270, !alias.scope !901 ; 3 uses
  %4 = load i64, ptr %i.o, align 8, !tbaa !233, !alias.scope !901
  %i.u = icmp ult i64 %i.t, %4
  br i1 %i.u, label %bb.d, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  store i8 10, ptr %i.v, align 1, !tbaa !87, !noalias !901
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.w = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.w, ptr %i.l, align 8, !tbaa !269, !alias.scope !901
  %i.x = add i64 %i.t, 1
  store i64 %i.x, ptr %i.n, align 8, !tbaa !270, !alias.scope !901
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.y = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.y, ptr %i.l, align 8, !tbaa !269, !alias.scope !901
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i
  %i.z = phi i64 [ %i.y, %bb.e ], [ %i.w, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i ] ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.b
  br i1 %i.aa, label %bb.b, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !270, !alias.scope !901
  %.not11.i = icmp eq i64 %i.ac, 0
  br i1 %.not11.i, label %bb.g, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !233, !alias.scope !901
  %.not.i27 = icmp eq i64 %i.ae, 0
  br i1 %.not.i27, label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 10, ptr %i.d, align 1, !tbaa !87, !noalias !901
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i: ; preds = %bb.h, %bb.g
  store i64 1, ptr %i.ab, align 8, !tbaa !270, !alias.scope !901
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit: ; preds = %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, %._crit_edge.i, %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i
  %.not = icmp eq i64 %.sroa.3.1.i.i, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !270 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !233
  %.not.i23 = icmp ugt i64 %i.ag, %i.ai
  %spec.select = select i1 %.not.i23, ptr null, ptr %i.d
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit26

bb.j:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit
  %i.aj = icmp ult i64 %.sroa.3.1.i.i, %i.b
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.0811.i.i = phi i64 [ %i.an, %bb.k ], [ %.sroa.3.1.i.i, %bb.j ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0811.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !87, !noalias !902
  %i.am = icmp eq i8 %i.al, 10
  br i1 %i.am, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.an = add i64 %.0811.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.b
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !35

_ZNK2c415basic_substringIcE8first_ofEcm.exit.i:   ; preds = %.lr.ph.i.i
  %.not.i28 = icmp eq i64 %.0811.i.i, -1
  br i1 %.not.i28, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit

_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i: ; preds = %bb.k, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, %bb.j
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit: ; preds = %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i
  %.0.i = phi i64 [ %i.b, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i ], [ %.0811.i.i, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i ] ; 4 uses
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE37_filter_block_folded_newlines_leadingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_mm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %.0.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !269 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %.0.i
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.q
  %i.at = phi i64 [ %i.ap, %.lr.ph ], [ %i.bg, %bb.q ] ; 3 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !139   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.aw, label %bb.o [
    i8 10, label %bb.m
    i8 13, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_filter_block_folded_newlinesINS0_34FilterProcessorInplaceEndExtendingEEEvRT_mm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %.0.i)
  %.pre38 = load i64, ptr %i.ao, align 8, !tbaa !269
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ax = add nuw i64 %i.at, 1                    ; 2 uses
  store i64 %i.ax, ptr %i.ao, align 8, !tbaa !269
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %i.ar, align 8, !tbaa !270 ; 3 uses
  %i.az = load i64, ptr %i.as, align 8, !tbaa !233
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.p, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay
  store i8 %i.aw, ptr %i.bb, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.ar, align 8, !tbaa !270
  %.pre = load i64, ptr %i.ao, align 8, !tbaa !269
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit: ; preds = %bb.o, %bb.p
  %i.bc = phi i64 [ %.pre, %bb.p ], [ %i.at, %bb.o ]
  %i.bd = phi i64 [ %.pre.i, %bb.p ], [ %i.ay, %bb.o ]
  %i.be = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.be, ptr %i.ao, align 8, !tbaa !269
  %i.bf = add i64 %i.bd, 1
  store i64 %i.bf, ptr %i.ar, align 8, !tbaa !270
  br label %bb.q

bb.q:                                             ; preds = %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %bb.n, %bb.m
  %i.bg = phi i64 [ %i.be, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.ax, %bb.n ], [ %.pre38, %bb.m ] ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %.0.i
  br i1 %i.bh, label %bb.l, label %._crit_edge, !llvm.loop !900

._crit_edge:                                      ; preds = %bb.q, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_chompINS0_34FilterProcessorInplaceEndExtendingEEEvRT_NS0_12BlockChomp_eEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %3, i64 noundef %2)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !270 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !233
  %.not.i = icmp ugt i64 %i.bj, %i.bl
  br i1 %.not.i, label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit26, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.bm = load ptr, ptr %1, align 8, !tbaa !271
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit26

_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit26: ; preds = %bb.i, %bb.r, %._crit_edge
  %.pn33 = phi ptr [ %spec.select, %bb.i ], [ null, %._crit_edge ], [ %i.bm, %bb.r ]
  %.pn31 = phi i64 [ %i.ag, %bb.i ], [ %i.bj, %._crit_edge ], [ %i.bj, %bb.r ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn33, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.pn31, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !247
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.k = icmp eq ptr %i.h, %i.j
  %i.l = icmp ugt i64 %2, 2
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !87
  %i.o = icmp eq i8 %i.n, 45
  br i1 %i.o, label %bb.d, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !87
  %i.r = icmp eq i8 %i.q, 45
  br i1 %i.r, label %bb.e, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i64 %2, 3
  br i1 %i.s, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_filter_block_folded_newlinesINS0_21FilterProcessorSrcDstEEEvRT_mm:bb.a
  br label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i

_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i:   ; preds = %bb.e, %bb.d
  %i.s = add i64 %i.m, 1
  store i64 %i.s, ptr %i.f, align 8, !tbaa !266, !alias.scope !1202
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_21FilterProcessorSrcDstEEEmRT_mm.exit

bb.f:                                             ; preds = %bb.c
  %i.t = add nuw i64 %i.h, 1
  store i64 %i.t, ptr %i.a, align 8, !tbaa !265, !alias.scope !1202
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !267, !alias.scope !1202
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.02443
  store i8 10, ptr %i.v, align 1, !tbaa !87, !noalias !1202
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_21FilterProcessorSrcDstEEEmRT_mm.exit

bb.g:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.f, align 8, !tbaa !266, !alias.scope !1202 ; 3 uses
  %i.x = load i64, ptr %i.g, align 8, !tbaa !272, !alias.scope !1202
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %bb.h, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !267, !alias.scope !1202
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  store i8 10, ptr %i.aa, align 1, !tbaa !87, !noalias !1202
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i:  ; preds = %bb.g, %bb.h
  %i.ab = add i64 %i.w, 1
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !266, !alias.scope !1202
  %i.ac = add nuw i64 %i.h, 1
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !265, !alias.scope !1202
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_21FilterProcessorSrcDstEEEmRT_mm.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_21FilterProcessorSrcDstEEEmRT_mm.exit: ; preds = %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i, %bb.f, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i
  %.0.i = phi i64 [ %.02443, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i ], [ %i.m, %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i ], [ %.02443, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !265, !alias.scope !1203 ; 7 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !99, !alias.scope !1203
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !92, !alias.scope !1203 ; 2 uses
  %i.ah = sub i64 %i.ag, %i.ad
  %.not.i = icmp eq i64 %i.ag, %i.ad
  br i1 %.not.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_21FilterProcessorSrcDstEEEmRT_mm.exit, %bb.i
  %.0710.i.i = phi i64 [ %i.ak, %bb.i ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_21FilterProcessorSrcDstEEEmRT_mm.exit ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0710.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !87, !noalias !1203
  %.not.i.i = icmp eq i8 %i.aj, 32
  br i1 %.not.i.i, label %bb.i, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ak = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, %i.ah
  br i1 %exitcond.not.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i
  %.not8.i = icmp eq i64 %.0710.i.i, -1
  br i1 %.not8.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i
  %.sink.v.i = tail call i64 @llvm.umin.i64(i64 %.0710.i.i, i64 %2)
  %.sink.i = add i64 %.sink.v.i, %i.ad            ; 2 uses
  store i64 %.sink.i, ptr %i.a, align 8, !tbaa !265, !alias.scope !1203
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit

bb.j:                                             ; preds = %bb.b, %bb.b
  %i.al = load i64, ptr %i.d, align 8, !tbaa !92
  %i.am = sub i64 %i.al, %i.h                     ; 3 uses
  %.not.i34 = icmp eq i64 %i.am, 0
  br i1 %.not.i34, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.j, %bb.k
  %.01326.us.i = phi i64 [ %i.aq, %bb.k ], [ 0, %bb.j ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01326.us.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !87
  switch i8 %i.ao, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit [
    i8 32, label %bb.k
    i8 9, label %bb.k
  ]

_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit: ; preds = %.preheader.us.i
  %i.ap = icmp eq i64 %.01326.us.i, -1
  br i1 %i.ap, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread, label %bb.l

bb.k:                                             ; preds = %.preheader.us.i, %.preheader.us.i
  %i.aq = add nuw i64 %.01326.us.i, 1             ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.aq, %i.am
  br i1 %exitcond29.not.i, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread, label %.preheader.us.i, !llvm.loop !5

_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread: ; preds = %bb.k, %bb.j, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit
  br label %bb.l

bb.l:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit
  %.027 = phi i64 [ %i.am, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread ], [ %.01326.us.i, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit ]
  %.not = icmp eq i64 %.02344, 0
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !267
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.02443
  store i8 10, ptr %i.as, align 1, !tbaa !87
  %.not40 = icmp eq i64 %.02344, 1
  br i1 %.not40, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i64, ptr %i.f, align 8, !tbaa !266 ; 3 uses
  %i.au = load i64, ptr %i.g, align 8, !tbaa !272
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %bb.o, label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !267
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at
  store i8 10, ptr %i.ax, align 1, !tbaa !87
  %.pre = load i64, ptr %i.f, align 8, !tbaa !266
  br label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit

_ZN2c43yml21FilterProcessorSrcDst3setEc.exit:     ; preds = %bb.n, %bb.o
  %i.ay = phi i64 [ %i.at, %bb.n ], [ %.pre, %bb.o ]
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.f, align 8, !tbaa !266
  br label %.thread

.thread:                                          ; preds = %bb.l, %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit, %bb.m
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE35_filter_block_folded_indented_blockINS0_21FilterProcessorSrcDstEEEvRT_mmm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i64 noundef %3, i64 noundef %.027) #58
  %.pre49 = load i64, ptr %i.a, align 8, !tbaa !265
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit

bb.p:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.h, 1                     ; 2 uses
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !265
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit: ; preds = %bb.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_21FilterProcessorSrcDstEEEmRT_mm.exit, %.thread, %bb.p
  %i.bb = phi i64 [ %i.ba, %bb.p ], [ %.pre49, %.thread ], [ %i.ad, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_21FilterProcessorSrcDstEEEmRT_mm.exit ], [ %.sink.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %i.ad, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.ad, %bb.i ] ; 2 uses
  %.226 = phi i64 [ %.02443, %bb.p ], [ -1, %.thread ], [ %.0.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_21FilterProcessorSrcDstEEEmRT_mm.exit ], [ %.0.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %.0.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %.0.i, %bb.i ]
  %.2 = phi i64 [ %.02344, %bb.p ], [ 0, %.thread ], [ %i.l, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_21FilterProcessorSrcDstEEEmRT_mm.exit ], [ %i.l, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %i.l, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.l, %bb.i ]
  %i.bc = icmp ult i64 %i.bb, %3
  br i1 %i.bc, label %bb.b, label %.critedge, !llvm.loop !1201

.critedge:                                        ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE35_filter_block_folded_indented_blockINS0_21FilterProcessorSrcDstEEEvRT_mmm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge44, label %bb.b

._crit_edge44:                                    ; preds = %bb.a
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.promoted.pre = load i64, ptr %.phi.trans.insert45, align 8, !tbaa !265
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !266  ; 2 uses
  %i.c = add i64 %i.b, %4                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !272
  %.not.i31 = icmp ugt i64 %i.c, %i.e
  br i1 %.not.i31, label %._ZN2c43yml21FilterProcessorSrcDst4copyEm.exit32_crit_edge, label %bb.c

._ZN2c43yml21FilterProcessorSrcDst4copyEm.exit32_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !265
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit32

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !267
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !1206
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !265  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.l, i64 %4, i1 false)
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit32

_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit32:  ; preds = %._ZN2c43yml21FilterProcessorSrcDst4copyEm.exit32_crit_edge, %bb.c
  %i.m = phi i64 [ %.pre, %._ZN2c43yml21FilterProcessorSrcDst4copyEm.exit32_crit_edge ], [ %i.k, %bb.c ]
  store i64 %i.c, ptr %i.a, align 8, !tbaa !266
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = add i64 %i.m, %4                         ; 2 uses
  store i64 %i.o, ptr %i.n, align 8, !tbaa !265
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge44, %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit32
  %.promoted = phi i64 [ %.promoted.pre, %._crit_edge44 ], [ %i.o, %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit32 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.q = icmp ult i64 %.promoted, %3
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !99     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

.critedge.sink.split:                             ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit, %bb.m, %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit
  %.sink = phi i64 [ %i.au, %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit ], [ %i.av, %bb.m ], [ %i.bb, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit ] ; 2 uses
  store i64 %.sink, ptr %i.p, align 8, !tbaa !265
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.critedge.sink.split, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit, %bb.j, %bb.j
  %i.w = phi i64 [ %.sink, %.critedge.sink.split ], [ %i.ah, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit ], [ %i.am, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit ], [ %i.am, %bb.j ], [ %i.am, %bb.j ], [ %i.am, %bb.i ] ; 2 uses
  %i.x = icmp ult i64 %i.w, %3
  br i1 %i.x, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph, %.critedge
  %i.y = phi i64 [ %.promoted, %.lr.ph ], [ %i.w, %.critedge ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !87   ; 2 uses
  switch i8 %i.aa, label %bb.n [
    i8 10, label %bb.f
    i8 13, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !266 ; 3 uses
  %5 = load i64, ptr %i.t, align 8, !tbaa !272    ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %5
  br i1 %i.ac, label %bb.g, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit30

bb.g:                                             ; preds = %bb.f
  %6 = load ptr, ptr %i.u, align 8, !tbaa !267
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 %i.ab
  store i8 10, ptr %i.ad, align 1, !tbaa !87
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit30

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit30:  ; preds = %bb.f, %bb.g
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !266
  %i.af = add nuw i64 %i.y, 1                     ; 8 uses
  store i64 %i.af, ptr %i.p, align 8, !tbaa !265
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.af
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !92, !alias.scope !1207 ; 5 uses
  %i.ai = sub i64 %i.ah, %i.af                    ; 3 uses
  %.not.i33 = icmp eq i64 %i.ah, %i.af
  br i1 %.not.i33, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit30, %bb.h
  %.0710.i.i = phi i64 [ %i.al, %bb.h ], [ 0, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit30 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0710.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !87, !noalias !1207
  %.not.i.i = icmp eq i8 %i.ak, 32
  br i1 %.not.i.i, label %bb.h, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.al = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.al, %i.ai
  br i1 %exitcond.not.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i
  %.not8.i = icmp eq i64 %.0710.i.i, -1
  br i1 %.not8.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i
  %.sink.v.i = tail call i64 @llvm.umin.i64(i64 %.0710.i.i, i64 %2)
  %.sink.i = add i64 %.sink.v.i, %i.af            ; 3 uses
  store i64 %.sink.i, ptr %i.p, align 8, !tbaa !265, !alias.scope !1207
  %.pre47 = sub i64 %i.ah, %.sink.i
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit: ; preds = %bb.h, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit30, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i
  %.pre-phi = phi i64 [ %.pre47, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ 0, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit30 ], [ %i.ai, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.ai, %bb.h ]
  %i.am = phi i64 [ %.sink.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %i.af, %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit30 ], [ %i.af, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.af, %bb.h ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.am ; 3 uses
  %.not13.i = icmp eq i64 %i.ah, %i.am
  br i1 %.not13.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, %bb.i
  %.0710.i = phi i64 [ %i.aq, %bb.i ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.0710.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !87
  %.not.i34 = icmp eq i8 %i.ap, 32
  br i1 %.not.i34, label %bb.i, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.aq = add nuw i64 %.0710.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aq, %.pre-phi
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit: ; preds = %.lr.ph.i
  switch i64 %.0710.i, label %bb.k [
    i64 0, label %bb.j
    i64 -1, label %.critedge
  ]

bb.j:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !87
  switch i8 %i.ar, label %._crit_edge [
    i8 13, label %.critedge
    i8 10, label %.critedge
  ]

bb.k:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit
  %i.as = add i64 %.0710.i, %i.ae                 ; 2 uses
  %.not.i = icmp ugt i64 %i.as, %5
  br i1 %.not.i, label %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %7 = load ptr, ptr %i.u, align 8, !tbaa !267
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.an, i64 %.0710.i, i1 false)
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit

_ZN2c43yml21FilterProcessorSrcDst4copyEm.exit:    ; preds = %bb.k, %bb.l
  store i64 %i.as, ptr %i.s, align 8, !tbaa !266
  %i.au = add i64 %.0710.i, %i.am
  br label %.critedge.sink.split

bb.m:                                             ; preds = %bb.e
  %i.av = add nuw i64 %i.y, 1
  br label %.critedge.sink.split

bb.n:                                             ; preds = %bb.e
  %i.aw = load i64, ptr %i.s, align 8, !tbaa !266 ; 3 uses
  %i.ax = load i64, ptr %i.t, align 8, !tbaa !272
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.o, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

bb.o:                                             ; preds = %bb.n
  %8 = load ptr, ptr %i.u, align 8, !tbaa !267
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 %i.aw
  store i8 %i.aa, ptr %i.az, align 1, !tbaa !87
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit:    ; preds = %bb.n, %bb.o
  %i.ba = add i64 %i.aw, 1
  store i64 %i.ba, ptr %i.s, align 8, !tbaa !266
  %i.bb = add nuw i64 %i.y, 1
  br label %.critedge.sink.split

._crit_edge:                                      ; preds = %.critedge, %bb.j, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE37_filter_block_folded_newlines_leadingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_mm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #27 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !269, !alias.scope !1212 ; 7 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !139, !alias.scope !1212
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138, !alias.scope !1212 ; 2 uses
  %i.g = sub i64 %i.f, %i.b
  %.not.i = icmp eq i64 %i.f, %i.b
  br i1 %.not.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.0710.i.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0710.i.i
  %i.i = load i8, ptr %i.h, align 1, !tbaa !87, !noalias !1212
  %.not.i.i = icmp eq i8 %i.i, 32
  br i1 %.not.i.i, label %bb.b, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = add nuw i64 %.0710.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.j, %i.g
  br i1 %exitcond.not.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i
  %.not8.i = icmp eq i64 %.0710.i.i, -1
  br i1 %.not8.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i
  %.sink.v.i = tail call i64 @llvm.umin.i64(i64 %.0710.i.i, i64 %2)
  %.sink.i = add i64 %.sink.v.i, %i.b             ; 2 uses
  store i64 %.sink.i, ptr %i.a, align 8, !tbaa !269, !alias.scope !1212
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit: ; preds = %bb.b, %bb.a, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i
  %i.k = phi i64 [ %.sink.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %i.b, %bb.a ], [ %i.b, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.l = icmp ult i64 %i.k, %3
  br i1 %i.l, label %.lr.ph, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40.thread

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40
  %i.o = phi i64 [ %i.k, %.lr.ph ], [ %i.ao, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40 ] ; 4 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !139    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87
  switch i8 %i.r, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40.thread [
    i8 10, label %bb.d
    i8 13, label %bb.g
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.m, align 8, !tbaa !270  ; 3 uses
  %i.t = load i64, ptr %i.n, align 8, !tbaa !233
  %i.u = icmp ult i64 %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  store i8 10, ptr %i.v, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !270
  %.pre = load i64, ptr %i.a, align 8, !tbaa !269
  %.pre60 = load ptr, ptr %1, align 8, !tbaa !139, !alias.scope !1213
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit: ; preds = %bb.d, %bb.e
  %i.w = phi ptr [ %.pre60, %bb.e ], [ %i.p, %bb.d ]
  %i.x = phi i64 [ %.pre, %bb.e ], [ %i.o, %bb.d ]
  %i.y = phi i64 [ %.pre.i, %bb.e ], [ %i.s, %bb.d ]
  %i.z = add i64 %i.x, 1                          ; 8 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !269
  %i.aa = add i64 %i.y, 1
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !138, !alias.scope !1213 ; 2 uses
  %i.ad = sub i64 %i.ac, %i.z
  %.not.i30 = icmp eq i64 %i.ac, %i.z
  br i1 %.not.i30, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40, label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %bb.f
  %.0710.i.i32 = phi i64 [ %i.ag, %bb.f ], [ 0, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.0710.i.i32
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !87, !noalias !1213
  %.not.i.i33 = icmp eq i8 %i.af, 32
  br i1 %.not.i.i33, label %bb.f, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i34

bb.f:                                             ; preds = %.lr.ph.i.i31
  %i.ag = add nuw i64 %.0710.i.i32, 1             ; 2 uses
  %exitcond.not.i.i39 = icmp eq i64 %i.ag, %i.ad
  br i1 %exitcond.not.i.i39, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40, label %.lr.ph.i.i31, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i34: ; preds = %.lr.ph.i.i31
  %.not8.i35 = icmp eq i64 %.0710.i.i32, -1
  br i1 %.not8.i35, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i36

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i36: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i34
  %.sink.v.i37 = tail call i64 @llvm.umin.i64(i64 %.0710.i.i32, i64 %2)
  %.sink.i38 = add i64 %.sink.v.i37, %i.z         ; 2 uses
  store i64 %.sink.i38, ptr %i.a, align 8, !tbaa !269, !alias.scope !1213
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40

bb.g:                                             ; preds = %bb.c
  %i.ah = add nuw i64 %i.o, 1                     ; 2 uses
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !269
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40

bb.h:                                             ; preds = %bb.c, %bb.c
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !138
  %i.aj = sub i64 %i.ai, %i.o                     ; 3 uses
  %.not.i41 = icmp eq i64 %i.aj, 0
  br i1 %.not.i41, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.h, %bb.i
  %.01326.us.i = phi i64 [ %i.an, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %.01326.us.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !87
  switch i8 %i.al, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit [
    i8 32, label %bb.i
    i8 9, label %bb.i
  ]

_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit: ; preds = %.preheader.us.i
  %i.am = icmp eq i64 %.01326.us.i, -1
  br i1 %i.am, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread, label %bb.j

bb.i:                                             ; preds = %.preheader.us.i, %.preheader.us.i
  %i.an = add nuw i64 %.01326.us.i, 1             ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.an, %i.aj
  br i1 %exitcond29.not.i, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread, label %.preheader.us.i, !llvm.loop !5

_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread: ; preds = %bb.i, %bb.h, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit
  br label %bb.j

bb.j:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit
  %.018 = phi i64 [ %i.aj, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread ], [ %.01326.us.i, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit ]
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE35_filter_block_folded_indented_blockINS0_34FilterProcessorInplaceEndExtendingEEEvRT_mmm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, i64 noundef %.018) #58
  %.pre61 = load i64, ptr %i.a, align 8, !tbaa !269
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40: ; preds = %bb.f, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i36, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i34, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %bb.g, %bb.j
  %i.ao = phi i64 [ %.pre61, %bb.j ], [ %.sink.i38, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i36 ], [ %i.z, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i34 ], [ %i.z, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.ah, %bb.g ], [ %i.z, %bb.f ] ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %3
  br i1 %i.ap, label %bb.c, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40.thread

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40.thread: ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit40, %bb.c, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_filter_block_folded_newlinesINS0_34FilterProcessorInplaceEndExtendingEEEvRT_mm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !269  ; 2 uses
  %i.c = icmp ult i64 %i.b, %3
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit
  %i.g = phi i64 [ %i.b, %.lr.ph ], [ %i.ba, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit ] ; 6 uses
  %.02355 = phi i64 [ 0, %.lr.ph ], [ %.2, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit ] ; 4 uses
  %.02454 = phi i64 [ -1, %.lr.ph ], [ %.226, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit ] ; 8 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !139    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !87
  switch i8 %i.j, label %.critedge [
    i8 10, label %bb.c
    i8 32, label %bb.k
    i8 9, label %bb.k
    i8 13, label %bb.s
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %.02355, 1                       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
end_hunk_2
begin_hunk_3_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_filter_block_folded_newlinesINS0_34FilterProcessorInplaceEndExtendingEEEvRT_mm:bb.a
  %i.s = load i64, ptr %i.f, align 8, !tbaa !233, !alias.scope !1219
  %i.t = icmp ult i64 %.02454, %i.s
  br i1 %i.t, label %bb.g, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_34FilterProcessorInplaceEndExtendingEEEmRT_mm.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02454
  store i8 10, ptr %i.u, align 1, !tbaa !87, !noalias !1219
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_34FilterProcessorInplaceEndExtendingEEEmRT_mm.exit

bb.h:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.e, align 8, !tbaa !270, !alias.scope !1219 ; 3 uses
  %i.w = load i64, ptr %i.f, align 8, !tbaa !233, !alias.scope !1219
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.i, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.v
  store i8 10, ptr %i.y, align 1, !tbaa !87, !noalias !1219
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i: ; preds = %bb.h, %bb.i
  %i.z = add nuw i64 %i.g, 1
  store i64 %i.z, ptr %i.a, align 8, !tbaa !269, !alias.scope !1219
  %i.aa = add i64 %i.v, 1
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !270, !alias.scope !1219
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_34FilterProcessorInplaceEndExtendingEEEmRT_mm.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_34FilterProcessorInplaceEndExtendingEEEmRT_mm.exit: ; preds = %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i, %bb.f, %bb.g, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i
  %.0.i = phi i64 [ %.02454, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i ], [ %i.l, %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i ], [ %.02454, %bb.f ], [ %.02454, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !269, !alias.scope !1220 ; 7 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !139, !alias.scope !1220
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !138, !alias.scope !1220 ; 2 uses
  %i.af = sub i64 %i.ae, %i.ab
  %.not.i = icmp eq i64 %i.ae, %i.ab
  br i1 %.not.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_34FilterProcessorInplaceEndExtendingEEEmRT_mm.exit, %bb.j
  %.0710.i.i = phi i64 [ %i.ai, %bb.j ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_34FilterProcessorInplaceEndExtendingEEEmRT_mm.exit ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0710.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !87, !noalias !1220
  %.not.i.i = icmp eq i8 %i.ah, 32
  br i1 %.not.i.i, label %bb.j, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ai = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.af
  br i1 %exitcond.not.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i
  %.not8.i = icmp eq i64 %.0710.i.i, -1
  br i1 %.not8.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i
  %.sink.v.i = tail call i64 @llvm.umin.i64(i64 %.0710.i.i, i64 %2)
  %.sink.i = add i64 %.sink.v.i, %i.ab            ; 2 uses
  store i64 %.sink.i, ptr %i.a, align 8, !tbaa !269, !alias.scope !1220
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit

bb.k:                                             ; preds = %bb.b, %bb.b
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !138
  %i.ak = sub i64 %i.aj, %i.g                     ; 3 uses
  %.not.i39 = icmp eq i64 %i.ak, 0
  br i1 %.not.i39, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.k, %bb.l
  %.01326.us.i = phi i64 [ %i.ao, %bb.l ], [ 0, %bb.k ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %.01326.us.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !87
  switch i8 %i.am, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit [
    i8 32, label %bb.l
    i8 9, label %bb.l
  ]

_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit: ; preds = %.preheader.us.i
  %i.an = icmp eq i64 %.01326.us.i, -1
  br i1 %i.an, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread, label %bb.m

bb.l:                                             ; preds = %.preheader.us.i, %.preheader.us.i
  %i.ao = add nuw i64 %.01326.us.i, 1             ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.ao, %i.ak
  br i1 %exitcond29.not.i, label %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread, label %.preheader.us.i, !llvm.loop !5

_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread: ; preds = %bb.l, %bb.k, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit
  br label %bb.m

bb.m:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit
  %.027 = phi i64 [ %i.ak, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit.thread ], [ %.01326.us.i, %_ZNK2c415basic_substringIKcE12first_not_ofES2_.exit ]
  %.not = icmp eq i64 %.02355, 0
  br i1 %.not, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !270 ; 4 uses
  %i.aq = load i64, ptr %i.f, align 8, !tbaa !233
  %i.ar = icmp ult i64 %.02454, %i.aq
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02454
  store i8 10, ptr %i.as, align 1, !tbaa !87
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !270
  %.not51 = icmp eq i64 %.02355, 1
  br i1 %.not51, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = load i64, ptr %i.f, align 8, !tbaa !233
  %i.au = icmp ult i64 %i.ap, %i.at
  br i1 %i.au, label %bb.r, label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit

bb.r:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %1, align 8, !tbaa !271
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ap
  store i8 10, ptr %i.aw, align 1, !tbaa !87
  %.pre.i41 = load i64, ptr %i.e, align 8, !tbaa !270
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit

_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit: ; preds = %bb.q, %bb.r
  %i.ax = phi i64 [ %.pre.i41, %bb.r ], [ %i.ap, %bb.q ]
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.e, align 8, !tbaa !270
  br label %.thread

.thread:                                          ; preds = %bb.m, %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit, %bb.p
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE35_filter_block_folded_indented_blockINS0_34FilterProcessorInplaceEndExtendingEEEvRT_mmm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, i64 noundef %.027) #58
  %.pre = load i64, ptr %i.a, align 8, !tbaa !269
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit

bb.s:                                             ; preds = %bb.b
  %i.az = add nuw i64 %i.g, 1                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !269
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit: ; preds = %bb.j, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_34FilterProcessorInplaceEndExtendingEEEmRT_mm.exit, %.thread, %bb.s
  %i.ba = phi i64 [ %i.az, %bb.s ], [ %.pre, %.thread ], [ %i.ab, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_34FilterProcessorInplaceEndExtendingEEEmRT_mm.exit ], [ %.sink.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %i.ab, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.226 = phi i64 [ %.02454, %bb.s ], [ -1, %.thread ], [ %.0.i, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_34FilterProcessorInplaceEndExtendingEEEmRT_mm.exit ], [ %.0.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %.0.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %.0.i, %bb.j ]
  %.2 = phi i64 [ %.02355, %bb.s ], [ 0, %.thread ], [ %i.k, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE38_filter_block_folded_newlines_compressINS0_34FilterProcessorInplaceEndExtendingEEEmRT_mm.exit ], [ %i.k, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %i.k, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.k, %bb.j ]
  %i.bb = icmp ult i64 %i.ba, %3
  br i1 %i.bb, label %bb.b, label %.critedge, !llvm.loop !1218

.critedge:                                        ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE35_filter_block_folded_indented_blockINS0_34FilterProcessorInplaceEndExtendingEEEvRT_mmm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge48, label %bb.b

._crit_edge48:                                    ; preds = %bb.a
  %.phi.trans.insert49 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.promoted.pre = load i64, ptr %.phi.trans.insert49, align 8, !tbaa !269
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %i.c = add i64 %i.b, %4                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !233
  %.not.i = icmp ugt i64 %i.c, %i.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !269 ; 3 uses
  br i1 %.not.i, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not7.i = icmp ugt i64 %i.c, %.pre
  %i.f = load ptr, ptr %1, align 8, !tbaa !271    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.pre ; 2 uses
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.h, i64 %4, i1 false)
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.h, i64 %4, i1 false)
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = add i64 %.pre, %4                        ; 2 uses
  store i64 %i.j, ptr %i.i, align 8, !tbaa !269
  store i64 %i.c, ptr %i.a, align 8, !tbaa !270
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge48, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit
  %.promoted = phi i64 [ %.promoted.pre, %._crit_edge48 ], [ %i.j, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.l = icmp ult i64 %.promoted, %3
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.m = load ptr, ptr %1, align 8, !tbaa !139    ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.g

.critedge:                                        ; preds = %bb.k, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit, %bb.l, %bb.l, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit34, %bb.q, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit36
  %i.q = phi i64 [ %i.at, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit36 ], [ %i.ab, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit ], [ %i.ag, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit ], [ %i.ag, %bb.l ], [ %i.ag, %bb.l ], [ %i.ao, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit34 ], [ %i.ap, %bb.q ], [ %i.ag, %bb.k ] ; 2 uses
  %i.r = icmp ult i64 %i.q, %3
  br i1 %i.r, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph, %.critedge
  %i.s = phi i64 [ %.promoted, %.lr.ph ], [ %i.q, %.critedge ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !87    ; 2 uses
  switch i8 %i.u, label %bb.r [
    i8 10, label %bb.h
    i8 13, label %bb.q
  ]

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr %i.n, align 8, !tbaa !270  ; 3 uses
  %5 = load i64, ptr %i.o, align 8, !tbaa !233    ; 2 uses
  %i.w = icmp ult i64 %i.v, %5
  br i1 %i.w, label %bb.i, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  store i8 10, ptr %i.x, align 1, !tbaa !87
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit: ; preds = %bb.h, %bb.i
  %i.y = add nuw i64 %i.s, 1                      ; 8 uses
  store i64 %i.y, ptr %i.k, align 8, !tbaa !269
  %i.z = add i64 %i.v, 1                          ; 3 uses
  store i64 %i.z, ptr %i.n, align 8, !tbaa !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y
  %i.ab = load i64, ptr %i.p, align 8, !tbaa !138, !alias.scope !1223 ; 5 uses
  %i.ac = sub i64 %i.ab, %i.y                     ; 3 uses
  %.not.i30 = icmp eq i64 %i.ab, %i.y
  br i1 %.not.i30, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %bb.j
  %.0710.i.i = phi i64 [ %i.af, %bb.j ], [ 0, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0710.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !87, !noalias !1223
  %.not.i.i = icmp eq i8 %i.ae, 32
  br i1 %.not.i.i, label %bb.j, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.af = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.ac
  br i1 %exitcond.not.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i
  %.not8.i = icmp eq i64 %.0710.i.i, -1
  br i1 %.not8.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i
  %.sink.v.i = tail call i64 @llvm.umin.i64(i64 %.0710.i.i, i64 %2)
  %.sink.i = add i64 %.sink.v.i, %i.y             ; 3 uses
  store i64 %.sink.i, ptr %i.k, align 8, !tbaa !269, !alias.scope !1223
  %.pre51 = sub i64 %i.ab, %.sink.i
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit: ; preds = %bb.j, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i
  %.pre-phi = phi i64 [ %.pre51, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ 0, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.ac, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.ac, %bb.j ]
  %i.ag = phi i64 [ %.sink.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %i.y, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.y, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.y, %bb.j ] ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ag ; 4 uses
  %.not13.i = icmp eq i64 %i.ab, %i.ag
  br i1 %.not13.i, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, %bb.k
  %.0710.i = phi i64 [ %i.ak, %bb.k ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit ] ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0710.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !87
  %.not.i31 = icmp eq i8 %i.aj, 32
  br i1 %.not.i31, label %bb.k, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit

bb.k:                                             ; preds = %.lr.ph.i
  %i.ak = add nuw i64 %.0710.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ak, %.pre-phi
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit: ; preds = %.lr.ph.i
  switch i64 %.0710.i, label %bb.m [
    i64 0, label %bb.l
    i64 -1, label %.critedge
  ]

bb.l:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !87
  switch i8 %i.al, label %._crit_edge [
    i8 13, label %.critedge
    i8 10, label %.critedge
  ]

bb.m:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit
  %i.am = add i64 %.0710.i, %i.z                  ; 3 uses
  %.not.i32 = icmp ugt i64 %i.am, %5
  br i1 %.not.i32, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit34, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not7.i33 = icmp ugt i64 %i.am, %i.ag
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z ; 2 uses
  br i1 %.not7.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %i.ah, i64 %.0710.i, i1 false)
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit34

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %i.ah, i64 %.0710.i, i1 false)
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit34

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEm.exit34: ; preds = %bb.m, %bb.o, %bb.p
  %i.ao = add i64 %.0710.i, %i.ag                 ; 2 uses
  store i64 %i.ao, ptr %i.k, align 8, !tbaa !269
  store i64 %i.am, ptr %i.n, align 8, !tbaa !270
  br label %.critedge

bb.q:                                             ; preds = %bb.g
  %i.ap = add nuw i64 %i.s, 1                     ; 2 uses
  store i64 %i.ap, ptr %i.k, align 8, !tbaa !269
  br label %.critedge

bb.r:                                             ; preds = %bb.g
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !270 ; 3 uses
  %6 = load i64, ptr %i.o, align 8, !tbaa !233
  %i.ar = icmp ult i64 %i.aq, %6
  br i1 %i.ar, label %bb.s, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit36

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aq
  store i8 %i.u, ptr %i.as, align 1, !tbaa !87
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit36

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit36: ; preds = %bb.r, %bb.s
  %i.at = add nuw i64 %i.s, 1                     ; 2 uses
  store i64 %i.at, ptr %i.k, align 8, !tbaa !269
  %i.au = add i64 %i.aq, 1
  store i64 %i.au, ptr %i.n, align 8, !tbaa !270
  br label %.critedge

._crit_edge:                                      ; preds = %.critedge, %bb.l, %bb.f
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(12) %3) local_unnamed_addr #47 comdat {
bb.a:
  %i.a = icmp ult i64 %2, 2
  br i1 %i.a, label %_ZNK2c415basic_substringIKcE4findES2_m.exit.thread.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.a
  %reass.sub.i.i = add i64 %2, -2
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %bb.c, %.preheader.lr.ph.i.i
  %.01834.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.preheader.lr.ph.i.i ] ; 9 uses
  %i.b = getelementptr i8, ptr %1, i64 %.01834.us.i.i ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !87
  %.not.us.i.i = icmp eq i8 %i.c, 123
  br i1 %.not.us.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.us.i.i
  %i.d = getelementptr i8, ptr %i.b, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !87
  %.not.us.i.1.i = icmp eq i8 %i.e, 125
  br i1 %.not.us.i.1.i, label %_ZNK2c415basic_substringIKcE4findES2_m.exit.i, label %bb.c

_ZNK2c415basic_substringIKcE4findES2_m.exit.i:    ; preds = %bb.b
  %.not.i = icmp eq i64 %.01834.us.i.i, -1
  br i1 %.not.i, label %_ZNK2c415basic_substringIKcE4findES2_m.exit.thread.i, label %bb.d, !prof !71

bb.c:                                             ; preds = %bb.b, %.preheader.us.i.i
  %i.f = add nuw i64 %.01834.us.i.i, 1
  %exitcond37.not.i.i = icmp eq i64 %.01834.us.i.i, %reass.sub.i.i
  br i1 %exitcond37.not.i.i, label %_ZNK2c415basic_substringIKcE4findES2_m.exit.thread.i, label %.preheader.us.i.i, !llvm.loop !51

bb.d:                                             ; preds = %_ZNK2c415basic_substringIKcE4findES2_m.exit.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !310, !nonnull !90, !align !298 ; 6 uses
  %.not.i.i.i = icmp eq i64 %.01834.us.i.i, 0
  br i1 %.not.i.i.i, label %_ZZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_ENKUlS8_E_clES8_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !178  ; 2 uses
  %i.j = add i64 %i.i, %.01834.us.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !181
  %.not4.i.i.i = icmp ugt i64 %i.j, %i.l
  br i1 %.not4.i.i.i, label %_ZZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_ENKUlS8_E_clES8_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !182
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %.01834.us.i.i, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !310
  br label %_ZZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_ENKUlS8_E_clES8_.exit.i

_ZZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_ENKUlS8_E_clES8_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.o = phi ptr [ %.pre, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !178
  %i.r = add i64 %i.q, %.01834.us.i.i
  store i64 %i.r, ptr %i.p, align 8, !tbaa !178
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !178  ; 2 uses
  %i.u = add i64 %i.t, 11                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !181
  %.not4.i.i.i.i = icmp ugt i64 %i.u, %i.w
  br i1 %.not4.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_ENKUlS8_E_clES8_.exit.i
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !182
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.y, ptr noundef nonnull align 1 dereferenceable(12) %3, i64 11, i1 false)
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !178
  %.pre3.i.i = add i64 %.pre.i.i, 11
  %.pre27 = load ptr, ptr %0, align 8, !tbaa !310
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_ENKUlS8_E_clES8_.exit.i
  %i.z = phi ptr [ %i.o, %_ZZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_ENKUlS8_E_clES8_.exit.i ], [ %.pre27, %bb.g ] ; 6 uses
  %.pre-phi.i.i = phi i64 [ %i.u, %_ZZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_ENKUlS8_E_clES8_.exit.i ], [ %.pre3.i.i, %bb.g ]
  store i64 %.pre-phi.i.i, ptr %i.s, align 8, !tbaa !178
  %i.aa = add i64 %.01834.us.i.i, 2               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = sub i64 %2, %i.aa                       ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %2, %i.aa
  br i1 %.not.i.i.i.i, label %_ZN2c46detail18format_dump_resumeIRZNKS_3yml11ParseEngineINS2_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_S7_JEEENS_11DumpResultsEmOT_SI_NS8_IcEESA_RKT0_DpRKT1_.exit, label %bb.k

_ZNK2c415basic_substringIKcE4findES2_m.exit.thread.i: ; preds = %bb.c, %_ZNK2c415basic_substringIKcE4findES2_m.exit.i, %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !310, !nonnull !90, !align !298 ; 6 uses
  %.not.i.i44.i = icmp eq i64 %2, 0
  br i1 %.not.i.i44.i, label %_ZN2c46detail18format_dump_resumeIRZNKS_3yml11ParseEngineINS2_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_S7_JEEENS_11DumpResultsEmOT_SI_NS8_IcEESA_RKT0_DpRKT1_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK2c415basic_substringIKcE4findES2_m.exit.thread.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !178 ; 2 uses
  %i.ag = add i64 %i.af, %2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !181
  %.not4.i.i45.i = icmp ugt i64 %i.ag, %i.ai
  br i1 %.not4.i.i45.i, label %_ZN2c46detail18format_dump_resumeIRZNKS_3yml11ParseEngineINS2_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_S7_JEEENS_11DumpResultsEmOT_SI_NS8_IcEESA_RKT0_DpRKT1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !182
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN2c46detail18format_dump_resumeIRZNKS_3yml11ParseEngineINS2_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_S7_JEEENS_11DumpResultsEmOT_SI_NS8_IcEESA_RKT0_DpRKT1_.exit

bb.k:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !178 ; 2 uses
  %i.an = add i64 %i.am, %i.ac
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !181
  %.not4.i.i.i49.i = icmp ugt i64 %i.an, %i.ap
  br i1 %.not4.i.i.i49.i, label %_ZN2c46detail18format_dump_resumeIRZNKS_3yml11ParseEngineINS2_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_S7_JEEENS_11DumpResultsEmOT_SI_NS8_IcEESA_RKT0_DpRKT1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !182
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.ab, i64 %i.ac, i1 false)
  br label %_ZN2c46detail18format_dump_resumeIRZNKS_3yml11ParseEngineINS2_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_S7_JEEENS_11DumpResultsEmOT_SI_NS8_IcEESA_RKT0_DpRKT1_.exit

_ZN2c46detail18format_dump_resumeIRZNKS_3yml11ParseEngineINS2_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_S7_JEEENS_11DumpResultsEmOT_SI_NS8_IcEESA_RKT0_DpRKT1_.exit: ; preds = %_ZNK2c415basic_substringIKcE4findES2_m.exit.thread.i, %bb.i, %bb.j, %bb.h, %bb.k, %bb.l
  %.sink77.i = phi ptr [ %i.ad, %bb.j ], [ %i.ad, %_ZNK2c415basic_substringIKcE4findES2_m.exit.thread.i ], [ %i.ad, %bb.i ], [ %i.z, %bb.l ], [ %i.z, %bb.k ], [ %i.z, %bb.h ]
  %.sink76.i = phi i64 [ %2, %bb.j ], [ 0, %_ZNK2c415basic_substringIKcE4findES2_m.exit.thread.i ], [ %2, %bb.i ], [ %i.ac, %bb.l ], [ %i.ac, %bb.k ], [ 0, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sink77.i, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !178
  %i.au = add i64 %i.at, %.sink76.i
  store i64 %i.au, ptr %i.as, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.c4::basic_substring.0", align 8 ; 6 uses
  %3 = alloca %"struct.c4::basic_substring.0", align 8 ; 6 uses
  %4 = alloca %"struct.c4::basic_substring.0", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2488
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !136
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !92   ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !211  ; 19 uses
  %i.l = icmp ugt i64 %i.k, 999999999
  br i1 %i.l, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %i.k, 99999999999999
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ugt i64 %i.k, 99999999999999999
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %i.k, -8446744073709551617
  br i1 %i.o, label %_ZN2c49write_decImEEmNS_15basic_substringIcEET_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp ugt i64 %i.k, 999999999999999999
  %i.q = select i1 %i.p, i64 19, i64 18
  br label %_ZN2c49write_decImEEmNS_15basic_substringIcEET_.exit

bb.g:                                             ; preds = %bb.d
  %i.r = icmp samesign ugt i64 %i.k, 9999999999999999
  br i1 %i.r, label %_ZN2c49write_decImEEmNS_15basic_substringIcEET_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp samesign ugt i64 %i.k, 999999999999999
  %i.t = select i1 %i.s, i64 16, i64 15
  br label %_ZN2c49write_decImEEmNS_15basic_substringIcEET_.exit
end_hunk_3
