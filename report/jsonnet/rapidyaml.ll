Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/rapidyaml?download=true
inline.NumInlined: 4426
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 307
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 323
begin_hunk_0_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_filter_dquotedINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_:bb.a
  br label %bb.o

bb.o:                                             ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit, %bb.l, %bb.k, %bb.j, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_21FilterProcessorSrcDstEEEvRT_.exit
  %i.as = load i64, ptr %i.a, align 8, !tbaa !265 ; 2 uses
  %i.at = load i64, ptr %i.b, align 8, !tbaa !264 ; 2 uses
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !854

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !266 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !272
  %.not.i = icmp ugt i64 %i.aw, %i.ay
  br i1 %.not.i, label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !267
  br label %_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit

_ZNK2c43yml21FilterProcessorSrcDst6resultEv.exit: ; preds = %._crit_edge, %bb.p
  %i.bb = phi ptr [ %i.ba, %bb.p ], [ null, %._crit_edge ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.bb, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.aw, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE30filter_scalar_dquoted_in_placeENS_15basic_substringIcEEm(ptr dead_on_unwind noalias writable sret(%"struct.c4::yml::FilterResultExtending") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr %2, i64 %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"struct.c4::yml::FilterProcessorInplaceMidExtending", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  store ptr %2, ptr %5, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %4, ptr %i.a, align 8, !tbaa !274
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 %3, ptr %i.c, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i8 0, ptr %i.d, align 8, !tbaa !276
  call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_filter_dquotedINS0_34FilterProcessorInplaceMidExtendingEEEDTcldtfpr_6resultEERT_(ptr dead_on_unwind writable sret(%"struct.c4::yml::FilterResultExtending") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(49) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_filter_dquotedINS0_34FilterProcessorInplaceMidExtendingEEEDTcldtfpr_6resultEERT_(ptr dead_on_unwind noalias writable sret(%"struct.c4::yml::FilterResultExtending") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noalias noundef nonnull align 8 dereferenceable(49) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !277  ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !278
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.j = phi i64 [ %i.c, %.lr.ph ], [ %i.aa, %bb.k ] ; 5 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !139    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !tbaa !87    ; 2 uses
  switch i8 %i.m, label %bb.g [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 10, label %bb.d
    i8 13, label %bb.e
    i8 92, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE24_filter_ws_copy_trailingINS0_34FilterProcessorInplaceMidExtendingEEEvRT_(ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(49) %2)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE18_filter_nl_dquotedINS0_34FilterProcessorInplaceMidExtendingEEEvRT_(ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(49) %2)
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.n = add nuw i64 %i.j, 1
  store i64 %i.n, ptr %i.a, align 8, !tbaa !277
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_dquoted_backslashINS0_34FilterProcessorInplaceMidExtendingEEEvRT_(ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(49) %2)
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.f, align 8, !tbaa !279  ; 5 uses
  %i.p = load i64, ptr %i.g, align 8, !tbaa !274
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = icmp uge i64 %i.o, %i.j
  %i.s = load i8, ptr %i.h, align 8, !range !81
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond.i, label %_ZN2c43yml34FilterProcessorInplaceMidExtending4copyEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  store i8 %i.m, ptr %i.u, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !279
  %.pre = load i64, ptr %i.a, align 8, !tbaa !277
  br label %_ZN2c43yml34FilterProcessorInplaceMidExtending4copyEv.exit

bb.j:                                             ; preds = %bb.g
  store i8 1, ptr %i.h, align 8, !tbaa !276
  br label %_ZN2c43yml34FilterProcessorInplaceMidExtending4copyEv.exit

_ZN2c43yml34FilterProcessorInplaceMidExtending4copyEv.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.v = phi i64 [ %i.j, %bb.h ], [ %.pre, %bb.i ], [ %i.j, %bb.j ]
  %i.w = phi i64 [ %i.o, %bb.h ], [ %.pre.i, %bb.i ], [ %i.o, %bb.j ]
  %i.x = add i64 %i.v, 1
  store i64 %i.x, ptr %i.a, align 8, !tbaa !277
  %i.y = add i64 %i.w, 1                          ; 2 uses
  store i64 %i.y, ptr %i.f, align 8, !tbaa !279
  %i.z = load i64, ptr %i.i, align 8, !tbaa !275
  %..i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %i.z)
  store i64 %..i, ptr %i.i, align 8, !tbaa !275
  br label %bb.k

bb.k:                                             ; preds = %_ZN2c43yml34FilterProcessorInplaceMidExtending4copyEv.exit, %bb.f, %bb.e, %bb.d, %bb.c
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !277 ; 2 uses
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !278
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !858

._crit_edge:                                      ; preds = %bb.k, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !279, !noalias !861 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !274, !noalias !861
  %.not.i = icmp ugt i64 %i.ae, %i.ag
  br i1 %.not.i, label %_ZNK2c43yml34FilterProcessorInplaceMidExtending6resultEv.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !276, !range !81, !noalias !861, !noundef !90
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZNK2c43yml34FilterProcessorInplaceMidExtending6resultEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %2, align 8, !tbaa !280, !noalias !861
  br label %_ZNK2c43yml34FilterProcessorInplaceMidExtending6resultEv.exit

_ZNK2c43yml34FilterProcessorInplaceMidExtending6resultEv.exit: ; preds = %._crit_edge, %bb.l, %bb.m
  %i.al = phi ptr [ %i.ak, %bb.m ], [ null, %bb.l ], [ null, %._crit_edge ]
  store ptr %i.al, ptr %0, align 8, !tbaa !282, !alias.scope !861
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.am, align 8, !tbaa !862, !alias.scope !861
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !275, !noalias !861
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !283, !alias.scope !861
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE27filter_scalar_block_literalENS_15basic_substringIKcEENS4_IcEEmNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr %3, i64 %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %7 = alloca %"struct.c4::yml::FilterProcessorSrcDst", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  store ptr %1, ptr %7, align 8, !tbaa !101
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.a, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_block_literalINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_filter_block_literalINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92, !alias.scope !872 ; 15 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !872 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i, label %.preheader.us.i.i.i

.loopexit25.i.i.i:                                ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %.not.i12.i.i = icmp eq i64 %.01534.us.i.i.i, 0
  br i1 %.not.i12.i.i, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.a, %.loopexit25.i.i.i
  %.01534.us.i.in.i.i = phi i64 [ %.01534.us.i.i.i, %.loopexit25.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.01534.us.i.i.i = add i64 %.01534.us.i.in.i.i, -1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.01534.us.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87, !noalias !872
  switch i8 %i.h, label %.thread25.i.i [
    i8 32, label %.loopexit25.i.i.i
    i8 10, label %.loopexit25.i.i.i
    i8 13, label %.loopexit25.i.i.i
  ]

.thread25.i.i:                                    ; preds = %.preheader.us.i.i.i
  %.not.i28.i.i = icmp eq i64 %.01534.us.i.in.i.i, -1
  %i.i = select i1 %.not.i28.i.i, i64 %i.b, i64 %.01534.us.i.in.i.i
  br label %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i

_ZNK2c415basic_substringIKcE5trimrES2_.exit.i:    ; preds = %.loopexit25.i.i.i, %.thread25.i.i, %bb.a
  %.sroa.3.1.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.thread25.i.i ], [ 0, %.loopexit25.i.i.i ] ; 4 uses
  %i.j = icmp ne i64 %.sroa.3.1.i.i, 0
  %i.k = icmp ne i32 %3, 2
  %or.cond.not13.i = or i1 %i.k, %i.j
  %brmerge.i = or i1 %i.c, %or.cond.not13.i
  br i1 %brmerge.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted.i = load i64, ptr %i.l, align 8, !tbaa !265, !alias.scope !872 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i, %i.b
  br i1 %i.m, label %.lr.ph.i, label %bb.f

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %storemerge1516.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %storemerge.i, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %storemerge1516.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !872
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !266, !alias.scope !872 ; 3 uses
  %i.u = load i64, ptr %i.o, align 8, !tbaa !272, !alias.scope !872
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !267, !alias.scope !872
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 10, ptr %i.x, align 1, !tbaa !87, !noalias !872
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i:  ; preds = %bb.d, %bb.c
  %i.y = add i64 %i.t, 1
  store i64 %i.y, ptr %i.n, align 8, !tbaa !266, !alias.scope !872
  br label %bb.e

bb.e:                                             ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i, %bb.b
  %storemerge.i = add nuw i64 %storemerge1516.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %storemerge.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !33

._crit_edge.i:                                    ; preds = %bb.e
  store i64 %i.b, ptr %i.l, align 8, !tbaa !265, !alias.scope !872
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !266, !alias.scope !872
  %.not11.i = icmp eq i64 %i.aa, 0
  br i1 %.not11.i, label %bb.g, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !272, !alias.scope !872
  %.not.i27 = icmp eq i64 %i.ac, 0
  br i1 %.not.i27, label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !267, !alias.scope !872
  store i8 10, ptr %i.ae, align 1, !tbaa !87, !noalias !872
  br label %_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i

_ZN2c43yml21FilterProcessorSrcDst3setEc.exit.i:   ; preds = %bb.h, %bb.g
  store i64 1, ptr %i.z, align 8, !tbaa !266, !alias.scope !872
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
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !87, !noalias !873
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
  %.0.i = phi i64 [ %i.b, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.thread.i ], [ %.0811.i.i, %_ZNK2c415basic_substringIKcE8first_ofEcm.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !265, !alias.scope !874 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap
  %i.ar = sub i64 %i.b, %i.ap
  %.not.i29 = icmp eq i64 %i.b, %i.ap
  br i1 %.not.i29, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_21FilterProcessorSrcDstEEEvRT_m.exit, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit, %bb.l
  %.0710.i.i = phi i64 [ %i.au, %bb.l ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_21FilterProcessorSrcDstEEEmRT_m.exit ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0710.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !87, !noalias !874
  %.not.i.i = icmp eq i8 %i.at, 32
  br i1 %.not.i.i, label %bb.l, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i

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

.loopexit25.i.i.i:                                ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %.not.i12.i.i = icmp eq i64 %.01534.us.i.i.i, 0
  br i1 %.not.i12.i.i, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.a, %.loopexit25.i.i.i
  %.01534.us.i.in.i.i = phi i64 [ %.01534.us.i.i.i, %.loopexit25.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.01534.us.i.i.i = add i64 %.01534.us.i.in.i.i, -1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.01534.us.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87, !noalias !885
  switch i8 %i.h, label %.thread25.i.i [
    i8 32, label %.loopexit25.i.i.i
    i8 10, label %.loopexit25.i.i.i
    i8 13, label %.loopexit25.i.i.i
  ]

.thread25.i.i:                                    ; preds = %.preheader.us.i.i.i
  %.not.i28.i.i = icmp eq i64 %.01534.us.i.in.i.i, -1
  %i.i = select i1 %.not.i28.i.i, i64 %i.b, i64 %.01534.us.i.in.i.i
  br label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i

_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i: ; preds = %.loopexit25.i.i.i, %.thread25.i.i, %bb.a
  %.sroa.3.1.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.thread25.i.i ], [ 0, %.loopexit25.i.i.i ] ; 4 uses
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
  %i.p = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !885
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !270, !alias.scope !885 ; 3 uses
  %i.u = load i64, ptr %i.o, align 8, !tbaa !233, !alias.scope !885
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  store i8 10, ptr %i.w, align 1, !tbaa !87, !noalias !885
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.x = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.x, ptr %i.l, align 8, !tbaa !269, !alias.scope !885
  %i.y = add i64 %i.t, 1
  store i64 %i.y, ptr %i.n, align 8, !tbaa !270, !alias.scope !885
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.z = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.z, ptr %i.l, align 8, !tbaa !269, !alias.scope !885
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i
  %i.aa = phi i64 [ %i.z, %bb.e ], [ %i.x, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i ] ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.b
  br i1 %i.ab, label %bb.b, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !270, !alias.scope !885
  %.not11.i = icmp eq i64 %i.ad, 0
  br i1 %.not11.i, label %bb.g, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !233, !alias.scope !885
  %.not.i26 = icmp eq i64 %i.af, 0
  br i1 %.not.i26, label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 10, ptr %i.d, align 1, !tbaa !87, !noalias !885
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i: ; preds = %bb.h, %bb.g
  store i64 1, ptr %i.ac, align 8, !tbaa !270, !alias.scope !885
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit: ; preds = %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, %._crit_edge.i, %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i
  %.not = icmp eq i64 %.sroa.3.1.i.i, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !270 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !233
  %.not.i22 = icmp ugt i64 %i.ah, %i.aj
  %spec.select = select i1 %.not.i22, ptr null, ptr %i.d
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit25

bb.j:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit
  %i.ak = icmp ult i64 %.sroa.3.1.i.i, %i.b
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.0811.i.i = phi i64 [ %i.ao, %bb.k ], [ %.sroa.3.1.i.i, %bb.j ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0811.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !87, !noalias !886
  %i.an = icmp eq i8 %i.am, 10
  br i1 %i.an, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i64 %.0811.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.b
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !35

_ZNK2c415basic_substringIcE8first_ofEcm.exit.i:   ; preds = %.lr.ph.i.i
  %.not.i27 = icmp eq i64 %.0811.i.i, -1
  br i1 %.not.i27, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit

_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i: ; preds = %bb.k, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, %bb.j
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit: ; preds = %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i
  %.0.i = phi i64 [ %i.b, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i ], [ %.0811.i.i, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !269, !alias.scope !887 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aq
  %i.as = sub i64 %i.b, %i.aq
  %.not.i28 = icmp eq i64 %i.b, %i.aq
  br i1 %.not.i28, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit, %bb.l
  %.0710.i.i = phi i64 [ %i.av, %bb.l ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0710.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !87, !noalias !887
  %.not.i.i = icmp eq i8 %i.au, 32
  br i1 %.not.i.i, label %bb.l, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i29
  %i.av = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i30 = icmp eq i64 %i.av, %i.as
  br i1 %exitcond.not.i.i30, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %.lr.ph.i.i29, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i: ; preds = %.lr.ph.i.i29
  %.not8.i = icmp eq i64 %.0710.i.i, -1
  br i1 %.not8.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i
  %.sink.v.i = tail call i64 @llvm.umin.i64(i64 %.0710.i.i, i64 %2)
  %.sink.i = add i64 %.sink.v.i, %i.aq            ; 2 uses
  store i64 %.sink.i, ptr %i.ap, align 8, !tbaa !269, !alias.scope !887
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit: ; preds = %bb.l, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i
  %i.aw = phi i64 [ %.sink.i, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i ], [ %i.b, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit ], [ %i.aq, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i ], [ %i.aq, %bb.l ] ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %.0.i
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41
  %i.ba = phi ptr [ %i.d, %.lr.ph ], [ %i.ce, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41 ] ; 3 uses
  %i.bb = phi ptr [ %i.d, %.lr.ph ], [ %i.cf, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41 ] ; 5 uses
  %i.bc = phi i64 [ %i.aw, %.lr.ph ], [ %i.cd, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41 ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.be, label %bb.r [
    i8 10, label %bb.n
    i8 13, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !270 ; 3 uses
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !233
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.o, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bf
  store i8 10, ptr %i.bi, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.ay, align 8, !tbaa !270
  %.pre = load i64, ptr %i.ap, align 8, !tbaa !269
  %.pre57 = load ptr, ptr %1, align 8, !tbaa !139, !alias.scope !888
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit: ; preds = %bb.n, %bb.o
  %i.bj = phi ptr [ %.pre57, %bb.o ], [ %i.ba, %bb.n ] ; 9 uses
  %i.bk = phi i64 [ %.pre, %bb.o ], [ %i.bc, %bb.n ]
  %i.bl = phi i64 [ %.pre.i, %bb.o ], [ %i.bf, %bb.n ]
  %i.bm = add i64 %i.bk, 1                        ; 8 uses
  store i64 %i.bm, ptr %i.ap, align 8, !tbaa !269
  %i.bn = add i64 %i.bl, 1
  store i64 %i.bn, ptr %i.ay, align 8, !tbaa !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !138, !alias.scope !888 ; 2 uses
  %i.bq = sub i64 %i.bp, %i.bm
  %.not.i31 = icmp eq i64 %i.bp, %i.bm
  br i1 %.not.i31, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %bb.p
  %.0710.i.i33 = phi i64 [ %i.bt, %bb.p ], [ 0, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.0710.i.i33
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !87, !noalias !888
  %.not.i.i34 = icmp eq i8 %i.bs, 32
  br i1 %.not.i.i34, label %bb.p, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35

bb.p:                                             ; preds = %.lr.ph.i.i32
  %i.bt = add nuw i64 %.0710.i.i33, 1             ; 2 uses
  %exitcond.not.i.i40 = icmp eq i64 %i.bt, %i.bq
  br i1 %exitcond.not.i.i40, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41, label %.lr.ph.i.i32, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35: ; preds = %.lr.ph.i.i32
  %.not8.i36 = icmp eq i64 %.0710.i.i33, -1
  br i1 %.not8.i36, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37: ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35
  %.sink.v.i38 = tail call i64 @llvm.umin.i64(i64 %.0710.i.i33, i64 %2)
  %.sink.i39 = add i64 %.sink.v.i38, %i.bm        ; 2 uses
  store i64 %.sink.i39, ptr %i.ap, align 8, !tbaa !269, !alias.scope !888
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41

bb.q:                                             ; preds = %bb.m
  %i.bu = add nuw i64 %i.bc, 1                    ; 2 uses
  store i64 %i.bu, ptr %i.ap, align 8, !tbaa !269
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41

bb.r:                                             ; preds = %bb.m
  %i.bv = load i64, ptr %i.ay, align 8, !tbaa !270 ; 3 uses
  %i.bw = load i64, ptr %i.az, align 8, !tbaa !233
  %i.bx = icmp ult i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.s, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bv
  store i8 %i.be, ptr %i.by, align 1, !tbaa !87
  %.pre.i42 = load i64, ptr %i.ay, align 8, !tbaa !270
  %.pre58 = load i64, ptr %i.ap, align 8, !tbaa !269
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43: ; preds = %bb.r, %bb.s
  %i.bz = phi i64 [ %.pre58, %bb.s ], [ %i.bc, %bb.r ]
  %i.ca = phi i64 [ %.pre.i42, %bb.s ], [ %i.bv, %bb.r ]
  %i.cb = add i64 %i.bz, 1                        ; 2 uses
  store i64 %i.cb, ptr %i.ap, align 8, !tbaa !269
  %i.cc = add i64 %i.ca, 1
  store i64 %i.cc, ptr %i.ay, align 8, !tbaa !270
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41: ; preds = %bb.p, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43, %bb.q
  %i.cd = phi i64 [ %i.bu, %bb.q ], [ %.sink.i39, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37 ], [ %i.bm, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35 ], [ %i.bm, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.cb, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43 ], [ %i.bm, %bb.p ] ; 2 uses
  %i.ce = phi ptr [ %i.ba, %bb.q ], [ %i.bj, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37 ], [ %i.bj, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35 ], [ %i.bj, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.ba, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43 ], [ %i.bj, %bb.p ]
  %i.cf = phi ptr [ %i.bb, %bb.q ], [ %i.bj, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.thread.sink.split.i37 ], [ %i.bj, %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit.i35 ], [ %i.bj, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.bb, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit43 ], [ %i.bj, %bb.p ]
  %i.cg = icmp ult i64 %i.cd, %.0.i
  br i1 %i.cg, label %bb.m, label %._crit_edge, !llvm.loop !884

._crit_edge:                                      ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit41, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE25_filter_block_indentationINS0_34FilterProcessorInplaceEndExtendingEEEvRT_m.exit
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_chompINS0_34FilterProcessorInplaceEndExtendingEEEvRT_NS0_12BlockChomp_eEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %3, i64 noundef %2)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !270 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !233
  %.not.i = icmp ugt i64 %i.ci, %i.ck
  br i1 %.not.i, label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit25, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.cl = load ptr, ptr %1, align 8, !tbaa !271
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit25

_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit25: ; preds = %bb.i, %bb.t, %._crit_edge
  %.pn48 = phi ptr [ %spec.select, %bb.i ], [ null, %._crit_edge ], [ %i.cl, %bb.t ]
  %.pn46 = phi i64 [ %i.ah, %bb.i ], [ %i.ci, %._crit_edge ], [ %i.ci, %bb.t ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn48, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.pn46, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE26filter_scalar_block_foldedENS_15basic_substringIKcEENS4_IcEEmNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr %3, i64 %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %7 = alloca %"struct.c4::yml::FilterProcessorSrcDst", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  store ptr %1, ptr %7, align 8, !tbaa !101
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.a, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  ret { ptr, i64 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE20_filter_block_foldedINS0_21FilterProcessorSrcDstEEEDTcldtfpr_6resultEERT_mNS0_12BlockChomp_eE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92, !alias.scope !894 ; 9 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !894 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i, label %.preheader.us.i.i.i

.loopexit25.i.i.i:                                ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %.not.i12.i.i = icmp eq i64 %.01534.us.i.i.i, 0
  br i1 %.not.i12.i.i, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.a, %.loopexit25.i.i.i
  %.01534.us.i.in.i.i = phi i64 [ %.01534.us.i.i.i, %.loopexit25.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.01534.us.i.i.i = add i64 %.01534.us.i.in.i.i, -1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.01534.us.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87, !noalias !894
  switch i8 %i.h, label %.thread25.i.i [
    i8 32, label %.loopexit25.i.i.i
    i8 10, label %.loopexit25.i.i.i
    i8 13, label %.loopexit25.i.i.i
  ]

.thread25.i.i:                                    ; preds = %.preheader.us.i.i.i
  %.not.i28.i.i = icmp eq i64 %.01534.us.i.in.i.i, -1
  %i.i = select i1 %.not.i28.i.i, i64 %i.b, i64 %.01534.us.i.in.i.i
  br label %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i

_ZNK2c415basic_substringIKcE5trimrES2_.exit.i:    ; preds = %.loopexit25.i.i.i, %.thread25.i.i, %bb.a
  %.sroa.3.1.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.thread25.i.i ], [ 0, %.loopexit25.i.i.i ] ; 4 uses
  %i.j = icmp ne i64 %.sroa.3.1.i.i, 0
  %i.k = icmp ne i32 %3, 2
  %or.cond.not13.i = or i1 %i.k, %i.j
  %brmerge.i = or i1 %i.c, %or.cond.not13.i
  br i1 %brmerge.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK2c415basic_substringIKcE5trimrES2_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted.i = load i64, ptr %i.l, align 8, !tbaa !265, !alias.scope !894 ; 2 uses
  %i.m = icmp ult i64 %.promoted.i, %i.b
  br i1 %i.m, label %.lr.ph.i, label %bb.f

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %storemerge1516.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %storemerge.i, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %storemerge1516.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !894
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !266, !alias.scope !894 ; 3 uses
  %i.u = load i64, ptr %i.o, align 8, !tbaa !272, !alias.scope !894
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !267, !alias.scope !894
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 10, ptr %i.x, align 1, !tbaa !87, !noalias !894
  br label %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i

_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i:  ; preds = %bb.d, %bb.c
  %i.y = add i64 %i.t, 1
  store i64 %i.y, ptr %i.n, align 8, !tbaa !266, !alias.scope !894
  br label %bb.e

bb.e:                                             ; preds = %_ZN2c43yml21FilterProcessorSrcDst4copyEv.exit.i, %bb.b
  %storemerge.i = add nuw i64 %storemerge1516.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %storemerge.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !33

._crit_edge.i:                                    ; preds = %bb.e
  store i64 %i.b, ptr %i.l, align 8, !tbaa !265, !alias.scope !894
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !266, !alias.scope !894
  %.not11.i = icmp eq i64 %i.aa, 0
  br i1 %.not11.i, label %bb.g, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_21FilterProcessorSrcDstEEEmRT_NS0_12BlockChomp_eE.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
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

.loopexit25.i.i.i:                                ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %.not.i12.i.i = icmp eq i64 %.01534.us.i.i.i, 0
  br i1 %.not.i12.i.i, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.a, %.loopexit25.i.i.i
  %.01534.us.i.in.i.i = phi i64 [ %.01534.us.i.i.i, %.loopexit25.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.01534.us.i.i.i = add i64 %.01534.us.i.in.i.i, -1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.01534.us.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87, !noalias !901
  switch i8 %i.h, label %.thread25.i.i [
    i8 32, label %.loopexit25.i.i.i
    i8 10, label %.loopexit25.i.i.i
    i8 13, label %.loopexit25.i.i.i
  ]

.thread25.i.i:                                    ; preds = %.preheader.us.i.i.i
  %.not.i28.i.i = icmp eq i64 %.01534.us.i.in.i.i, -1
  %i.i = select i1 %.not.i28.i.i, i64 %i.b, i64 %.01534.us.i.in.i.i
  br label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i

_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i: ; preds = %.loopexit25.i.i.i, %.thread25.i.i, %bb.a
  %.sroa.3.1.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.thread25.i.i ], [ 0, %.loopexit25.i.i.i ] ; 4 uses
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
  %i.p = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !87, !noalias !901
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !270, !alias.scope !901 ; 3 uses
  %i.u = load i64, ptr %i.o, align 8, !tbaa !233, !alias.scope !901
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  store i8 10, ptr %i.w, align 1, !tbaa !87, !noalias !901
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i: ; preds = %bb.d, %bb.c
  %i.x = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.x, ptr %i.l, align 8, !tbaa !269, !alias.scope !901
  %i.y = add i64 %i.t, 1
  store i64 %i.y, ptr %i.n, align 8, !tbaa !270, !alias.scope !901
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.z = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.z, ptr %i.l, align 8, !tbaa !269, !alias.scope !901
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i
  %i.aa = phi i64 [ %i.z, %bb.e ], [ %i.x, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit.i ] ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.b
  br i1 %i.ab, label %bb.b, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !270, !alias.scope !901
  %.not11.i = icmp eq i64 %i.ad, 0
  br i1 %.not11.i, label %bb.g, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !233, !alias.scope !901
  %.not.i27 = icmp eq i64 %i.af, 0
  br i1 %.not.i27, label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 10, ptr %i.d, align 1, !tbaa !87, !noalias !901
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i

_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i: ; preds = %bb.h, %bb.g
  store i64 1, ptr %i.ac, align 8, !tbaa !270, !alias.scope !901
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit: ; preds = %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit.i, %._crit_edge.i, %_ZN2c43yml34FilterProcessorInplaceEndExtending3setEc.exit.i
  %.not = icmp eq i64 %.sroa.3.1.i.i, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !270 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !233
  %.not.i23 = icmp ugt i64 %i.ah, %i.aj
  %spec.select = select i1 %.not.i23, ptr null, ptr %i.d
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit26

bb.j:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE22_handle_all_whitespaceINS0_34FilterProcessorInplaceEndExtendingEEEmRT_NS0_12BlockChomp_eE.exit
  %i.ak = icmp ult i64 %.sroa.3.1.i.i, %i.b
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.0811.i.i = phi i64 [ %i.ao, %bb.k ], [ %.sroa.3.1.i.i, %bb.j ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0811.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !87, !noalias !902
  %i.an = icmp eq i8 %i.am, 10
  br i1 %i.an, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i64 %.0811.i.i, 1                   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.b
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !35

_ZNK2c415basic_substringIcE8first_ofEcm.exit.i:   ; preds = %.lr.ph.i.i
  %.not.i28 = icmp eq i64 %.0811.i.i, -1
  br i1 %.not.i28, label %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit

_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i: ; preds = %bb.k, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, %bb.j
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit: ; preds = %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i
  %.0.i = phi i64 [ %i.b, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.thread.i ], [ %.0811.i.i, %_ZNK2c415basic_substringIcE8first_ofEcm.exit.i ] ; 4 uses
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE37_filter_block_folded_newlines_leadingINS0_34FilterProcessorInplaceEndExtendingEEEvRT_mm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %.0.i)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !269 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %.0.i
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.q
  %i.au = phi i64 [ %i.aq, %.lr.ph ], [ %i.bh, %bb.q ] ; 3 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !139   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.ax, label %bb.o [
    i8 10, label %bb.m
    i8 13, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE29_filter_block_folded_newlinesINS0_34FilterProcessorInplaceEndExtendingEEEvRT_mm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %.0.i)
  %.pre38 = load i64, ptr %i.ap, align 8, !tbaa !269
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ay = add nuw i64 %i.au, 1                    ; 2 uses
  store i64 %i.ay, ptr %i.ap, align 8, !tbaa !269
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.az = load i64, ptr %i.as, align 8, !tbaa !270 ; 3 uses
  %i.ba = load i64, ptr %i.at, align 8, !tbaa !233
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.p, label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.as, align 8, !tbaa !270
  %.pre = load i64, ptr %i.ap, align 8, !tbaa !269
  br label %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit

_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit: ; preds = %bb.o, %bb.p
  %i.bd = phi i64 [ %.pre, %bb.p ], [ %i.au, %bb.o ]
  %i.be = phi i64 [ %.pre.i, %bb.p ], [ %i.az, %bb.o ]
  %i.bf = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.bf, ptr %i.ap, align 8, !tbaa !269
  %i.bg = add i64 %i.be, 1
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !270
  br label %bb.q

bb.q:                                             ; preds = %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit, %bb.n, %bb.m
  %i.bh = phi i64 [ %i.bf, %_ZN2c43yml34FilterProcessorInplaceEndExtending4copyEv.exit ], [ %i.ay, %bb.n ], [ %.pre38, %bb.m ] ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %.0.i
  br i1 %i.bi, label %bb.l, label %._crit_edge, !llvm.loop !900

._crit_edge:                                      ; preds = %bb.q, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_extend_to_chompINS0_34FilterProcessorInplaceEndExtendingEEEmRT_m.exit
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_filter_chompINS0_34FilterProcessorInplaceEndExtendingEEEvRT_NS0_12BlockChomp_eEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %3, i64 noundef %2)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !270 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !233
  %.not.i = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i, label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit26, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.bn = load ptr, ptr %1, align 8, !tbaa !271
  br label %_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit26

_ZNK2c43yml34FilterProcessorInplaceEndExtending6resultEv.exit26: ; preds = %bb.i, %bb.r, %._crit_edge
  %.pn33 = phi ptr [ %spec.select, %bb.i ], [ null, %._crit_edge ], [ %i.bn, %bb.r ]
  %.pn31 = phi i64 [ %i.ah, %bb.i ], [ %i.bk, %._crit_edge ], [ %i.bk, %bb.r ]
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
end_hunk_0
begin_hunk_1_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_scan_scalar_plain_blckEPNS3_13ScannedScalarEm:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !247
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !139
  %i.ah = icmp eq ptr %.sroa.0135.0.copyload, %i.ag
  %i.ai = icmp ugt i64 %.sroa.11139.0.copyload, 2
  %or.cond.i68 = and i1 %i.ai, %i.ah
  br i1 %or.cond.i68, label %bb.k, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0135.0.copyload, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !87
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.l, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0135.0.copyload, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !87
  %i.ao = icmp eq i8 %i.an, 46
  br i1 %i.ao, label %bb.m, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp eq i64 %.sroa.11139.0.copyload, 3
  br i1 %i.ap, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_is_doc_endENS_15basic_substringIKcEE.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_is_doc_endENS_15basic_substringIKcEE.exit: ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0135.0.copyload, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !87
  %i.as = icmp eq i8 %i.ar, 32
  br i1 %i.as, label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread: ; preds = %bb.k, %bb.l, %bb.i, %bb.j, %bb.f, %bb.d, %bb.e, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_is_doc_endENS_15basic_substringIKcEE.exit, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !210 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !211
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.ak, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread
  %i.az = phi ptr [ %i.b, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread ], [ %i.fh, %bb.ak ]
  %.sroa.0135.0 = phi ptr [ %.sroa.0135.0.copyload, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread ], [ %.sroa.0135.0.copyload138, %bb.ak ] ; 3 uses
  %.sroa.11139.0 = phi i64 [ %.sroa.11139.0.copyload, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread ], [ %.sroa.11139.0.copyload141, %bb.ak ] ; 10 uses
  %.055 = phi i8 [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit.thread ], [ 1, %bb.ak ]
  %.not207 = icmp eq i64 %.sroa.11139.0, 0
  br i1 %.not207, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.v
  %.058206 = phi i64 [ %i.da, %bb.v ], [ 0, %bb.n ] ; 18 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0135.0, i64 %.058206 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !87
  switch i8 %i.bb, label %bb.v [
    i8 58, label %bb.o
    i8 35, label %bb.s
  ]

bb.o:                                             ; preds = %.lr.ph
  %i.bc = add i64 %.058206, 1                     ; 3 uses
  %i.bd = icmp eq i64 %i.bc, %.sroa.11139.0
  br i1 %i.bd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0135.0, i64 %i.bc
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !87
  %i.bg = icmp eq i8 %i.bf, 32
  br i1 %i.bg, label %bb.q, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.p
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.11139.0, i64 %i.bc)
  %i.bh = add i64 %umax, -1                       ; 2 uses
  %i.bi = add i64 %.058206, 1                     ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %.sroa.11139.0
  br i1 %i.bj, label %.lr.ph284, label %.critedge

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2488
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !206 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !210
  %i.bp = add i64 %i.bo, %.058206                 ; 2 uses
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !210
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 72 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !212
  %i.bs = add i64 %i.br, %.058206
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !212
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !139
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.058206
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !138
  %i.bx = sub i64 %i.bw, %.058206
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !101
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !102
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !211
  %i.ca = icmp eq i64 %i.bz, %i.aw
  br i1 %i.ca, label %.thread158, label %bb.r, !prof !88

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg)
  br label %bb.v

.preheader:                                       ; preds = %.lr.ph284
  %i.cb = add i64 %i.cd, 1                        ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %.sroa.11139.0
  br i1 %i.cc, label %.lr.ph284, label %.critedge, !llvm.loop !903

.lr.ph284:                                        ; preds = %.preheader.preheader, %.preheader
  %i.cd = phi i64 [ %i.cb, %.preheader ], [ %i.bi, %.preheader.preheader ] ; 3 uses
  %.061283 = phi i64 [ %i.cd, %.preheader ], [ %.058206, %.preheader.preheader ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0135.0, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !87
  %i.cg = icmp eq i8 %i.cf, 58
  br i1 %i.cg, label %.preheader, label %..critedge_crit_edge, !llvm.loop !903

..critedge_crit_edge:                             ; preds = %.lr.ph284
  br label %.critedge, !llvm.loop !903

.critedge:                                        ; preds = %.preheader, %..critedge_crit_edge, %.preheader.preheader
  %.061.lcssa = phi i64 [ %i.bh, %.preheader.preheader ], [ %.061283, %..critedge_crit_edge ], [ %i.bh, %.preheader ] ; 2 uses
  %i.ch = icmp ugt i64 %.061.lcssa, %.058206
  %i.ci = add i64 %.061.lcssa, -1
  %i.cj = select i1 %i.ch, i64 %i.ci, i64 %.058206
  br label %bb.v

bb.s:                                             ; preds = %.lr.ph
  %.not66 = icmp eq i64 %.058206, 0
  br i1 %.not66, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr i8, ptr %i.ba, i64 -1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !87
  switch i8 %i.cl, label %bb.v [
    i8 32, label %bb.u
    i8 9, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.s
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2488
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !206 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !210
  %i.cr = add i64 %i.cq, %.058206                 ; 2 uses
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !210
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 72 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !212
  %i.cu = add i64 %i.ct, %.058206
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !212
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !139
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.058206
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !138
  %i.cz = sub i64 %i.cy, %.058206
  store ptr %i.cw, ptr %i.co, align 8, !tbaa !101
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !102
  br label %.thread158

bb.v:                                             ; preds = %bb.t, %bb.r, %.critedge, %.lr.ph
  %.260.ph = phi i64 [ %.058206, %bb.t ], [ %i.cj, %.critedge ], [ %.058206, %bb.r ], [ %.058206, %.lr.ph ]
  %i.da = add i64 %.260.ph, 1                     ; 2 uses
  %i.db = icmp ult i64 %i.da, %.sroa.11139.0
  br i1 %i.db, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !904

._crit_edge.loopexit:                             ; preds = %bb.v
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !169
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %i.dc = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.az, %bb.n ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2488
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !206 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !210
  %i.dh = add i64 %i.dg, %.sroa.11139.0           ; 2 uses
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !210
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 72 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !212
  %i.dk = add i64 %i.dj, %.sroa.11139.0
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !212
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !139
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.11139.0
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !138
  %i.dp = sub i64 %i.do, %.sroa.11139.0
  store ptr %i.dm, ptr %i.de, align 8, !tbaa !101
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !102
  %i.dq = tail call { ptr, i64 } @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_peek_next_lineEm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %i.dh) ; 2 uses
  %i.dr = extractvalue { ptr, i64 } %i.dq, 0      ; 12 uses
  %i.ds = extractvalue { ptr, i64 } %i.dq, 1      ; 3 uses
  %i.dt = icmp eq i64 %i.ds, 0
  %i.du = icmp eq ptr %i.dr, null
  %i.dv = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %i.dv, label %.thread169, label %.preheader.us.i.i

.loopexit25.i.i:                                  ; preds = %.preheader.us.i.i, %.preheader.us.i.i
  %.not.i12.i = icmp eq i64 %.01534.us.i.i, 0
  br i1 %.not.i12.i, label %.thread169, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge, %.loopexit25.i.i
  %.01534.us.i.in.i = phi i64 [ %.01534.us.i.i, %.loopexit25.i.i ], [ %i.ds, %._crit_edge ] ; 3 uses
  %.01534.us.i.i = add i64 %.01534.us.i.in.i, -1  ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.01534.us.i.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !87
  switch i8 %i.dx, label %.lr.ph.i.preheader [
    i8 10, label %.loopexit25.i.i
    i8 13, label %.loopexit25.i.i
  ]

.lr.ph.i.preheader:                               ; preds = %.preheader.us.i.i
  %.not.i28.i = icmp eq i64 %.01534.us.i.in.i, -1
  %i.dy = select i1 %.not.i28.i, i64 %i.ds, i64 %.01534.us.i.in.i ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.w
  %.0710.i = phi i64 [ %i.eb, %bb.w ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.0710.i
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !87
  %.not.i71 = icmp eq i8 %i.ea, 32
  br i1 %.not.i71, label %bb.w, label %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit

bb.w:                                             ; preds = %.lr.ph.i
  %i.eb = add nuw i64 %.0710.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eb, %i.dy
  br i1 %exitcond.not.i, label %.thread169, label %.lr.ph.i, !llvm.loop !7

_ZNK2c415basic_substringIKcE12first_not_ofEc.exit: ; preds = %.lr.ph.i
  %i.ec = icmp ult i64 %.0710.i, %2
  br i1 %i.ec, label %.thread158.loopexit211, label %bb.x

bb.x:                                             ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit
  %i.ed = icmp eq i64 %.0710.i, 0
  br i1 %i.ed, label %bb.y, label %.thread169

bb.y:                                             ; preds = %bb.x
  %i.ee = load i8, ptr %i.dr, align 1, !tbaa !87
  switch i8 %i.ee, label %.thread169 [
    i8 45, label %.preheader.us.i.i73
    i8 46, label %.preheader.us.i.i87
  ]

.loopexit25.i.i83:                                ; preds = %.preheader.us.i.i73, %.preheader.us.i.i73
  %.not.i12.i84 = icmp eq i64 %.01534.us.i.i75, 0
  br i1 %.not.i12.i84, label %.thread169, label %.preheader.us.i.i73

.preheader.us.i.i73:                              ; preds = %bb.y, %.loopexit25.i.i83
  %.01534.us.i.in.i74 = phi i64 [ %.01534.us.i.i75, %.loopexit25.i.i83 ], [ %i.dy, %bb.y ] ; 3 uses
  %.01534.us.i.i75 = add i64 %.01534.us.i.in.i74, -1 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.01534.us.i.i75
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !87
  switch i8 %i.eg, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit85 [
    i8 10, label %.loopexit25.i.i83
    i8 13, label %.loopexit25.i.i83
  ]

_ZNK2c415basic_substringIKcE5trimrES2_.exit85:    ; preds = %.preheader.us.i.i73
  %.not.i28.i79 = icmp eq i64 %.01534.us.i.in.i74, -1
  %i.eh = select i1 %.not.i28.i79, i64 %i.dy, i64 %.01534.us.i.in.i74 ; 2 uses
  %i.ei = icmp ugt i64 %i.eh, 2
  br i1 %i.ei, label %bb.z, label %.thread169

bb.z:                                             ; preds = %_ZNK2c415basic_substringIKcE5trimrES2_.exit85
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !87
  %i.el = icmp eq i8 %i.ek, 45
  br i1 %i.el, label %bb.aa, label %.thread169

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.en = load i8, ptr %i.em, align 1, !tbaa !87
  %i.eo = icmp eq i8 %i.en, 45
  br i1 %i.eo, label %bb.ab, label %.thread169

bb.ab:                                            ; preds = %bb.aa
  %i.ep = icmp eq i64 %i.eh, 3
  br i1 %i.ep, label %.thread158.loopexit211, label %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit: ; preds = %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !87
  %i.es = icmp eq i8 %i.er, 32
  br i1 %i.es, label %.thread158.loopexit211, label %.thread169

.loopexit25.i.i97:                                ; preds = %.preheader.us.i.i87, %.preheader.us.i.i87
  %.not.i12.i98 = icmp eq i64 %.01534.us.i.i89, 0
  br i1 %.not.i12.i98, label %.thread169, label %.preheader.us.i.i87

.preheader.us.i.i87:                              ; preds = %bb.y, %.loopexit25.i.i97
  %.01534.us.i.in.i88 = phi i64 [ %.01534.us.i.i89, %.loopexit25.i.i97 ], [ %i.dy, %bb.y ] ; 3 uses
  %.01534.us.i.i89 = add i64 %.01534.us.i.in.i88, -1 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.01534.us.i.i89
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !87
  switch i8 %i.eu, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit99 [
    i8 10, label %.loopexit25.i.i97
    i8 13, label %.loopexit25.i.i97
  ]

_ZNK2c415basic_substringIKcE5trimrES2_.exit99:    ; preds = %.preheader.us.i.i87
  %.not.i28.i93 = icmp eq i64 %.01534.us.i.in.i88, -1
  %i.ev = select i1 %.not.i28.i93, i64 %i.dy, i64 %.01534.us.i.in.i88 ; 2 uses
  %i.ew = icmp ugt i64 %i.ev, 2
  br i1 %i.ew, label %bb.ac, label %.thread169

bb.ac:                                            ; preds = %_ZNK2c415basic_substringIKcE5trimrES2_.exit99
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !87
  %i.ez = icmp eq i8 %i.ey, 46
  br i1 %i.ez, label %bb.ad, label %.thread169

bb.ad:                                            ; preds = %bb.ac
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !87
  %i.fc = icmp eq i8 %i.fb, 46
  br i1 %i.fc, label %bb.ae, label %.thread169

bb.ae:                                            ; preds = %bb.ad
  %i.fd = icmp eq i64 %i.ev, 3
  br i1 %i.fd, label %.thread158.loopexit211, label %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit: ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !87
  %i.fg = icmp eq i8 %i.ff, 32
  br i1 %i.fg, label %.thread158.loopexit211, label %.thread169

.thread169:                                       ; preds = %.loopexit25.i.i, %bb.w, %.loopexit25.i.i97, %.loopexit25.i.i83, %_ZNK2c415basic_substringIKcE5trimrES2_.exit99, %bb.ac, %bb.ad, %_ZNK2c415basic_substringIKcE5trimrES2_.exit85, %bb.z, %bb.aa, %._crit_edge, %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit, %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit, %bb.y, %bb.x
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !169 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2488
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !206 ; 12 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !210 ; 2 uses
  %i.fm = load i64, ptr %i.ax, align 8, !tbaa !219 ; 8 uses
  %.not189 = icmp ult i64 %i.fl, %i.fm
  br i1 %.not189, label %bb.af, label %.thread158.loopexit211

bb.af:                                            ; preds = %.thread169
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !225
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 48 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !226
  %i.fr = sub i64 %i.fo, %i.fq
  %i.fs = add i64 %i.fr, %i.fl                    ; 7 uses
  store i64 %i.fs, ptr %i.fk, align 8, !tbaa !210
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 64 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !211
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !211
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  store i64 1, ptr %i.fw, align 8, !tbaa !212
  %i.fx = icmp ult i64 %i.fs, %i.fm
  %.sroa.03.0.copyload.i = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 4 uses
  br i1 %i.fx, label %.lr.ph.i.i, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.af, %bb.ag
  %.046.i.i = phi i64 [ %i.ga, %bb.ag ], [ %i.fs, %bb.af ] ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.fz, label %bb.ag [
    i8 10, label %bb.ah
    i8 13, label %bb.ah
  ]

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.ga = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i100 = icmp eq i64 %i.ga, %i.fm
  br i1 %exitcond.not.i.i100, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !22

bb.ah:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.gb = icmp eq i8 %i.fz, 13
  %i.gc = zext i1 %i.gb to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.gc ; 4 uses
  %i.gd = icmp ult i64 %spec.select.i.i, %i.fm
  br i1 %i.gd, label %bb.ai, label %.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !87
  %i.gg = icmp eq i8 %i.gf, 10
  %i.gh = zext i1 %i.gg to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.gh
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ag, %bb.ai, %bb.ah
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.ah ], [ %.046.i.i, %bb.ai ], [ %i.fm, %bb.ag ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.ah ], [ %spec.select22.i.i, %bb.ai ], [ %i.fm, %bb.ag ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.fs ; 3 uses
  %i.gj = sub i64 %.pn.i9.i, %i.fs                ; 3 uses
  store ptr %i.gi, ptr %i.fj, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 %i.gj, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.fs
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.aj
  %.0710.i.i.i.i = phi i64 [ %i.gm, %bb.aj ], [ 0, %.thread.i ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.0710.i.i.i.i
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.gl, 32
  br i1 %.not.i.i.i.i, label %bb.aj, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gm = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.gm, %i.gj
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.aj, %.lr.ph.i.i.i.i, %.thread.i
  %i.gn = phi i64 [ -1, %.thread.i ], [ -1, %bb.aj ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.go = select i1 %.not.i.i.i, i64 %i.fm, i64 %.2.i.i
  %i.gp = sub i64 %i.go, %i.fs
  br label %bb.ak

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %bb.af
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.fm ; 2 uses
  store ptr %i.gq, ptr %i.fj, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !102
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.gn, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sroa.0135.0.copyload138 = phi ptr [ %i.gq, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.gi, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 3 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.gp, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sroa.11139.0.copyload141 = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.gj, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i64 %.sink24.i, ptr %i.gr, align 8, !tbaa !220
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store ptr %.sroa.0135.0.copyload138, ptr %i.gs, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.fn, align 8, !tbaa !102
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  store ptr %.sroa.0135.0.copyload138, ptr %i.gt, align 8, !tbaa !101
  store i64 %.sroa.11139.0.copyload141, ptr %i.fp, align 8, !tbaa !102
  br label %bb.n

.thread158.loopexit211:                           ; preds = %_ZNK2c415basic_substringIKcE12first_not_ofEc.exit, %.thread169, %_ZN2c43yml12_GLOBAL__N_119_is_doc_begin_tokenENS_15basic_substringIKcEE.exit, %_ZN2c43yml12_GLOBAL__N_117_is_doc_end_tokenENS_15basic_substringIKcEE.exit, %bb.ab, %bb.ae
  %.pre228 = load ptr, ptr %i.a, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre228, i64 2488
  %.pre229 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !206
  %.phi.trans.insert230 = getelementptr inbounds nuw i8, ptr %.pre229, i64 56
  %.pre231 = load i64, ptr %.phi.trans.insert230, align 8, !tbaa !210
  br label %.thread158

.thread158:                                       ; preds = %bb.q, %.thread158.loopexit211, %bb.u
  %i.gu = phi i64 [ %.pre231, %.thread158.loopexit211 ], [ %i.cr, %bb.u ], [ %i.bp, %bb.q ] ; 2 uses
  %.not.i = icmp eq i64 %i.gu, -1
  %i.gv = load i64, ptr %i.ax, align 8
  %i.gw = select i1 %.not.i, i64 %i.gv, i64 %i.gu
  %i.gx = load ptr, ptr %i.ay, align 8, !tbaa !139 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.au ; 2 uses
  %i.gz = sub i64 %i.gw, %i.au                    ; 3 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %i.hb = icmp eq ptr %i.gx, null
  %i.hc = select i1 %i.ha, i1 true, i1 %i.hb
  br i1 %i.hc, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit, label %.preheader.us.i.i102

.loopexit25.i.i113:                               ; preds = %.preheader.us.i.i102, %.preheader.us.i.i102, %.preheader.us.i.i102, %.preheader.us.i.i102
  %.not.i12.i114 = icmp eq i64 %.01534.us.i.i104, 0
  br i1 %.not.i12.i114, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit, label %.preheader.us.i.i102

.preheader.us.i.i102:                             ; preds = %.thread158, %.loopexit25.i.i113
  %.01534.us.i.in.i103 = phi i64 [ %.01534.us.i.i104, %.loopexit25.i.i113 ], [ %i.gz, %.thread158 ] ; 3 uses
  %.01534.us.i.i104 = add i64 %.01534.us.i.in.i103, -1 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.01534.us.i.i104
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !87
  switch i8 %i.he, label %.thread25.i107 [
    i8 32, label %.loopexit25.i.i113
    i8 10, label %.loopexit25.i.i113
    i8 13, label %.loopexit25.i.i113
    i8 9, label %.loopexit25.i.i113
  ]

.thread25.i107:                                   ; preds = %.preheader.us.i.i102
  %.not.i28.i108 = icmp eq i64 %.01534.us.i.in.i103, -1
  %i.hf = select i1 %.not.i28.i108, i64 %i.gz, i64 %.01534.us.i.in.i103
  br label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit

_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit: ; preds = %.loopexit25.i.i113, %.thread158, %.thread25.i107
  %.sroa.3.1.i110 = phi i64 [ 0, %.thread158 ], [ %i.hf, %.thread25.i107 ], [ 0, %.loopexit25.i.i113 ]
  store ptr %i.gy, ptr %1, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.3.1.i110, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %.055, ptr %i.hg, align 8, !tbaa !231
  br label %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread

_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67.thread: ; preds = %bb.m, %bb.h, %bb.g, %bb.c, %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_is_doc_endENS_15basic_substringIKcEE.exit, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67, %bb.a
  %.1 = phi i1 [ false, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_is_doc_endENS_15basic_substringIKcEE.exit ], [ false, %bb.a ], [ false, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit67 ], [ false, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_is_doc_beginENS_15basic_substringIKcEE.exit ], [ false, %_ZN2c43yml12_GLOBAL__N_114_is_blck_tokenENS_15basic_substringIKcEE.exit ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.b ], [ true, %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.c ], [ false, %bb.m ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_line_progressedEm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %1) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !210
  %i.g = add i64 %i.f, %1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !210
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !212
  %i.j = add i64 %i.i, %1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !212
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !138
  %i.o = sub i64 %i.n, %1
  store ptr %i.l, ptr %i.d, align 8, !tbaa !101
  store i64 %i.o, ptr %i.m, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr noalias noundef nonnull align 1 dereferenceable(12) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %4 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %5 = alloca %class.anon.14, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  store ptr %i.a, ptr %4, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  store ptr %4, ptr %5, align 8, !tbaa !180
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA12_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(12) %3)
  %i.c = load i64, ptr %i.b, align 8, !tbaa !178  ; 3 uses
  %i.d = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !181
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c
  store i8 10, ptr %i.g, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !178
  br label %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit

_ZN2c43yml6detail13_SubstrWriter6appendEc.exit:   ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.b, align 8, !tbaa !178
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA12_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !178
  %i.k = call i64 @llvm.umin.i64(i64 %i.j, i64 1024)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !169  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2520
  store ptr null, ptr %i.n, align 8, !tbaa !223
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2480
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !224
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 2488
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !206
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 2456
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !193
  call void %i.p(ptr noundef nonnull %i.a, i64 noundef %i.k, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.s, ptr noundef %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local { ptr, i64 } @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE15_peek_next_lineEm(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2488
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !206
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !210
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !219  ; 2 uses
  %.not = icmp ult i64 %i.h, %i.j
  br i1 %.not, label %.preheader.i.i.preheader, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread

.preheader.i.i.preheader:                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h ; 2 uses
  %i.n = sub nuw i64 %i.j, %i.h                   ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.01224.i.i = phi i64 [ %i.q, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.01224.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !87    ; 3 uses
  switch i8 %i.p, label %._crit_edge.i.i [
    i8 13, label %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i
    i8 10, label %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i
  ]

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.q = add nuw i64 %.01224.i.i, 1               ; 2 uses
  %exitcond27.not.i.i = icmp eq i64 %i.q, %i.n
  br i1 %exitcond27.not.i.i, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread, label %.preheader.i.i, !llvm.loop !905

_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i: ; preds = %.preheader.i.i, %.preheader.i.i
  %i.r = icmp eq i64 %.01224.i.i, -1
  br i1 %i.r, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread, label %_ZNK2c415basic_substringIcE8right_ofEm.exit.i

_ZNK2c415basic_substringIcE8right_ofEm.exit.i:    ; preds = %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i
  %i.s = add nuw i64 %.01224.i.i, 1               ; 3 uses
  %i.t = icmp eq i64 %i.n, %i.s
  br i1 %i.t, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit

_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit: ; preds = %_ZNK2c415basic_substringIcE8right_ofEm.exit.i
  %i.u = sub nuw i64 %i.n, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !87    ; 2 uses
  %i.x = icmp eq i8 %i.p, 10
  %i.y = icmp eq i8 %i.w, 13
  %or.cond.i.not29.i.not47 = and i1 %i.x, %i.y
  %i.z = icmp eq i8 %i.p, 13
  %i.aa = icmp eq i8 %i.w, 10
  %.not31.i.not50 = and i1 %i.z, %i.aa
  %narrow.not.i.not = or i1 %or.cond.i.not29.i.not47, %.not31.i.not50 ; 2 uses
  %i.ab = sext i1 %narrow.not.i.not to i64
  %.sroa.4.0.i = add i64 %i.u, %i.ab              ; 5 uses
  %.sroa.022.0.i.idx = zext i1 %narrow.not.i.not to i64
  %.sroa.022.0.i = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.022.0.i.idx ; 6 uses
  %i.ac = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %i.ac, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit, %._crit_edge.i
  %.01224.i = phi i64 [ %i.af, %._crit_edge.i ], [ 0, %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i, i64 %.01224.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !87  ; 3 uses
  switch i8 %i.ae, label %._crit_edge.i [
    i8 13, label %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit
    i8 10, label %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit
  ]

._crit_edge.i:                                    ; preds = %.preheader.i
  %i.af = add nuw i64 %.01224.i, 1                ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.af, %.sroa.4.0.i
  br i1 %exitcond27.not.i, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread, label %.preheader.i, !llvm.loop !905

_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit: ; preds = %.preheader.i, %.preheader.i
  %i.ag = icmp eq i8 %i.ae, 13
  %.not17 = icmp eq i64 %.01224.i, -1
  br i1 %.not17, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit
  %i.ah = add nuw i64 %.01224.i, 1                ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %.sroa.4.0.i
  br i1 %i.ai, label %bb.e, label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !87  ; 2 uses
  %i.al = icmp eq i8 %i.ae, 10
  %i.am = icmp eq i8 %i.ak, 13
  %or.cond.i = and i1 %i.al, %i.am
  %i.an = icmp eq i8 %i.ak, 10
  %i.ao = and i1 %i.ag, %i.an
  %narrow = or i1 %or.cond.i, %i.ao
  %i.ap = zext i1 %narrow to i64
  %i.aq = add nuw i64 %.01224.i, %i.ap
  %.pre = add nuw i64 %i.aq, 1
  br label %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread

_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit.thread: ; preds = %._crit_edge.i.i, %._crit_edge.i, %bb.e, %bb.d, %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit, %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i, %_ZNK2c415basic_substringIcE8right_ofEm.exit.i, %bb.c, %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit
  %.sroa.3.0 = phi i64 [ %.pre, %bb.e ], [ 0, %bb.c ], [ 0, %_ZN2c43yml12_GLOBAL__N_114from_next_lineENS_15basic_substringIcEE.exit ], [ 0, %_ZNK2c415basic_substringIcE8right_ofEm.exit.i ], [ 0, %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit.i ], [ %.sroa.4.0.i, %._crit_edge.i ], [ %.sroa.4.0.i, %_ZNK2c415basic_substringIcE8first_ofENS0_IKcEEm.exit ], [ %i.ah, %bb.d ], [ 0, %._crit_edge.i.i ]
end_hunk_1
begin_hunk_2_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE27_scan_scalar_plain_map_flowEPNS3_13ScannedScalarE:bb.a
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ez, i64 1024)
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !169, !noalias !922 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2520
  store ptr null, ptr %i.fc, align 8, !tbaa !223
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 2480
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !224
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 2488
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !206
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 2456
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !193
  call void %i.fe(ptr noundef nonnull %i.a, i64 noundef %i.fa, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.fh, ptr noundef %i.fj), !inline_history !36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !922
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58, !noalias !922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !922
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph
  %i.fk = getelementptr i8, ptr %i.bn, i64 -1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !87
  %i.fm = icmp eq i8 %i.fl, 32
  br i1 %i.fm, label %.split27, label %bb.u

.split27:                                         ; preds = %bb.t
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 2488
  %.pre106 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !206 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre106, i64 56 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !210
  %i.fp = add i64 %i.fo, %.02575                  ; 2 uses
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !210
  %i.fq = getelementptr inbounds nuw i8, ptr %.pre106, i64 72 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !212
  %i.fs = add i64 %i.fr, %.02575
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !212
  %i.ft = load ptr, ptr %.pre106, align 8, !tbaa !139
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.02575
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre106, i64 8 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !138
  %i.fx = sub i64 %i.fw, %.02575
  store ptr %i.fu, ptr %.pre106, align 8, !tbaa !101
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !102
  br label %.split

bb.u:                                             ; preds = %bb.n, %.lr.ph, %bb.t, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit33, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJcEEEvNS_15basic_substringIKcEEDprRKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  %i.fy = add nuw i64 %.02575, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fy, %.sroa.8.0
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !920

.split.loopexit:                                  ; preds = %bb.e, %.lr.ph.preheader, %bb.q
  %.pre110.pre = phi ptr [ %i.eb, %bb.q ], [ %i.r, %.lr.ph.preheader ], [ %i.r, %bb.e ]
  %.phi.trans.insert111.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre110.pre, i64 2488
  %.pre112.pre = load ptr, ptr %.phi.trans.insert111.phi.trans.insert, align 8, !tbaa !206
  %.phi.trans.insert113.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre112.pre, i64 56
  %.pre114.pre = load i64, ptr %.phi.trans.insert113.phi.trans.insert, align 8, !tbaa !210
  br label %.split

.split:                                           ; preds = %.split.loopexit, %.loopexit93, %.loopexit101, %.split27
  %.pre114 = phi i64 [ %.pre114.pre, %.split.loopexit ], [ %i.bu, %.loopexit93 ], [ %i.cm, %.loopexit101 ], [ %i.fp, %.split27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  %.pre115 = load i64, ptr %i.p, align 8
  br label %.loopexit

._crit_edge.loopexit:                             ; preds = %bb.u, %bb.l
  %.pre109 = load ptr, ptr %i.d, align 8, !tbaa !169
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.fz = phi ptr [ %.pre109, %._crit_edge.loopexit ], [ %i.r, %bb.d ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2488
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !206 ; 14 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 56 ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !210
  %i.ge = add i64 %i.gd, %.sroa.8.0               ; 4 uses
  store i64 %i.ge, ptr %i.gc, align 8, !tbaa !210
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 72 ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !212
  %i.gh = add i64 %i.gg, %.sroa.8.0
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !212
  %i.gi = load ptr, ptr %i.gb, align 8, !tbaa !139
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.sroa.8.0
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 4 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !138
  %i.gm = sub i64 %i.gl, %.sroa.8.0
  store ptr %i.gj, ptr %i.gb, align 8, !tbaa !101
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !102
  %i.gn = load i64, ptr %i.p, align 8, !tbaa !219 ; 9 uses
  %.not60 = icmp ult i64 %i.ge, %i.gn
  br i1 %.not60, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %._crit_edge
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 32 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !225
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gb, i64 48 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !226
  %i.gs = sub i64 %i.gp, %i.gr
  %i.gt = add i64 %i.gs, %i.ge                    ; 8 uses
  store i64 %i.gt, ptr %i.gc, align 8, !tbaa !210
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gb, i64 64 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !211
  %i.gw = add i64 %i.gv, 1
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !211
  store i64 1, ptr %i.gf, align 8, !tbaa !212
  %i.gx = icmp ult i64 %i.gt, %i.gn
  %.sroa.03.0.copyload.i = load ptr, ptr %i.q, align 8, !tbaa !101 ; 4 uses
  br i1 %i.gx, label %.lr.ph.i.i, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i:                                       ; preds = %bb.v, %bb.w
  %.046.i.i = phi i64 [ %i.ha, %bb.w ], [ %i.gt, %bb.v ] ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.gz, label %bb.w [
    i8 10, label %bb.x
    i8 13, label %bb.x
  ]

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.ha = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ha, %i.gn
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i, !llvm.loop !22

bb.x:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.hb = icmp eq i8 %i.gz, 13
  %i.hc = zext i1 %i.hb to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.hc ; 4 uses
  %i.hd = icmp ult i64 %spec.select.i.i, %i.gn
  br i1 %i.hd, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !87
  %i.hg = icmp eq i8 %i.hf, 10
  %i.hh = zext i1 %i.hg to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.hh
  br label %.thread.i

.thread.i:                                        ; preds = %bb.w, %bb.y, %bb.x
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.x ], [ %.046.i.i, %bb.y ], [ %i.gn, %bb.w ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.x ], [ %spec.select22.i.i, %bb.y ], [ %i.gn, %bb.w ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.gt ; 3 uses
  %i.hj = sub i64 %.pn.i9.i, %i.gt                ; 3 uses
  store ptr %i.hi, ptr %i.gb, align 8, !tbaa !101
  store i64 %i.hj, ptr %i.gk, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.gt
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.z
  %.0710.i.i.i.i = phi i64 [ %i.hm, %bb.z ], [ 0, %.thread.i ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.0710.i.i.i.i
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.hl, 32
  br i1 %.not.i.i.i.i, label %bb.z, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.hm = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.hm, %i.hj
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.z, %.lr.ph.i.i.i.i, %.thread.i
  %i.hn = phi i64 [ -1, %.thread.i ], [ -1, %bb.z ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.ho = select i1 %.not.i.i.i, i64 %i.gn, i64 %.2.i.i
  %i.hp = sub i64 %i.ho, %i.gt
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %bb.v
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.gn ; 2 uses
  store ptr %i.hq, ptr %i.gb, align 8, !tbaa !101
  store i64 0, ptr %i.gk, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.hn, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sroa.044.0.copyload47 = phi ptr [ %i.hq, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.hi, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 3 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.hp, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sroa.8.0.copyload49 = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.hj, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i64 %.sink24.i, ptr %i.hr, align 8, !tbaa !220
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  store ptr %.sroa.044.0.copyload47, ptr %i.hs, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.go, align 8, !tbaa !102
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  store ptr %.sroa.044.0.copyload47, ptr %i.ht, align 8, !tbaa !101
  store i64 %.sroa.8.0.copyload49, ptr %i.gq, align 8, !tbaa !102
  br label %bb.d, !llvm.loop !921

.loopexit:                                        ; preds = %._crit_edge, %.split
  %i.hu = phi i64 [ %.pre115, %.split ], [ %i.gn, %._crit_edge ]
  %i.hv = phi i64 [ %.pre114, %.split ], [ %i.ge, %._crit_edge ] ; 2 uses
  %.not.i = icmp eq i64 %i.hv, -1
  %i.hw = select i1 %.not.i, i64 %i.hu, i64 %i.hv
  %i.hx = load ptr, ptr %i.q, align 8, !tbaa !139 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.m ; 2 uses
  %i.hz = sub i64 %i.hw, %i.m                     ; 3 uses
  %i.ia = icmp eq i64 %i.hz, 0
  %i.ib = icmp eq ptr %i.hx, null
  %i.ic = select i1 %i.ia, i1 true, i1 %i.ib
  br i1 %i.ic, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit, label %.preheader.us.i.i

.loopexit25.i.i:                                  ; preds = %.preheader.us.i.i, %.preheader.us.i.i, %.preheader.us.i.i
  %.not.i12.i = icmp eq i64 %.01534.us.i.i, 0
  br i1 %.not.i12.i, label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.loopexit, %.loopexit25.i.i
  %.01534.us.i.in.i = phi i64 [ %.01534.us.i.i, %.loopexit25.i.i ], [ %i.hz, %.loopexit ] ; 3 uses
  %.01534.us.i.i = add i64 %.01534.us.i.in.i, -1  ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.01534.us.i.i
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !87
  switch i8 %i.ie, label %.thread25.i [
    i8 32, label %.loopexit25.i.i
    i8 10, label %.loopexit25.i.i
    i8 13, label %.loopexit25.i.i
  ]

.thread25.i:                                      ; preds = %.preheader.us.i.i
  %.not.i28.i = icmp eq i64 %.01534.us.i.in.i, -1
  %i.if = select i1 %.not.i28.i, i64 %i.hz, i64 %.01534.us.i.in.i
  br label %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit

_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit: ; preds = %.loopexit25.i.i, %.loopexit, %.thread25.i
  %.sroa.3.1.i = phi i64 [ 0, %.loopexit ], [ %i.if, %.thread25.i ], [ 0, %.loopexit25.i.i ] ; 2 uses
  store ptr %i.hy, ptr %1, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.3.1.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %.026, ptr %i.ig, align 8, !tbaa !231
  %i.ih = icmp ne i64 %.sroa.3.1.i, 0
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ih, %_ZNK2c415basic_substringIcE5trimrENS0_IKcEE.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE27_scan_scalar_plain_map_blckEPNS3_13ScannedScalarE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !215
  %i.g = add i64 %i.f, 1
  %i.h = tail call noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE23_scan_scalar_plain_blckEPNS3_13ScannedScalarEm(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, i64 noundef %i.g)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE21_scan_scalar_map_jsonEPNS3_13ScannedScalarE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noalias noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !101 ; 14 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !102 ; 10 uses
  %.not = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %.not, label %.thread49, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !87 ; 2 uses
  switch i8 %i.e, label %.critedge.peel [
    i8 102, label %bb.c
    i8 116, label %bb.d
    i8 110, label %bb.e
    i8 44, label %.thread49
    i8 125, label %.thread49
    i8 32, label %.thread49
    i8 9, label %.thread49
    i8 35, label %.thread49
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %.sroa.7.0.copyload, 4
  br i1 %i.f, label %.lr.ph.i.1.i, label %.critedge.peel

.lr.ph.i.1.i:                                     ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !87
  %.not.i.1.i = icmp eq i8 %i.h, 97
  br i1 %.not.i.1.i, label %.lr.ph.i.2.i, label %.peel.next.preheader

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.1.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !87
  %.not.i.2.i = icmp eq i8 %i.j, 108
  br i1 %.not.i.2.i, label %.lr.ph.i.3.i, label %.peel.next.preheader

.lr.ph.i.3.i:                                     ; preds = %.lr.ph.i.2.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !87
  %.not.i.3.i = icmp eq i8 %i.l, 115
  br i1 %.not.i.3.i, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.sink.split.i, label %.peel.next.preheader

bb.d:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %.sroa.7.0.copyload, 3
  br i1 %i.m, label %.preheader.i1.1.i, label %.critedge.peel

.preheader.i1.1.i:                                ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !87
  %.not.i4.1.i = icmp eq i8 %i.o, 114
  br i1 %.not.i4.1.i, label %.preheader.i1.2.i, label %.peel.next.preheader

.preheader.i1.2.i:                                ; preds = %.preheader.i1.1.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !87
  %.not.i4.2.i = icmp eq i8 %i.q, 117
  br i1 %.not.i4.2.i, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.sink.split.i, label %.peel.next.preheader

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ugt i64 %.sroa.7.0.copyload, 3
  br i1 %i.r, label %.preheader.i8.1.i, label %.critedge.peel

.preheader.i8.1.i:                                ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !87
  %.not.i11.1.i = icmp eq i8 %i.t, 117
  br i1 %.not.i11.1.i, label %.preheader.i8.2.i, label %.peel.next.preheader

.preheader.i8.2.i:                                ; preds = %.preheader.i8.1.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !87
  %.not.i11.2.i = icmp eq i8 %i.v, 108
  br i1 %.not.i11.2.i, label %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.sink.split.i, label %.peel.next.preheader

_ZNK2c415basic_substringIKcE11begins_withES2_.exit.sink.split.i: ; preds = %.preheader.i8.2.i, %.preheader.i1.2.i, %.lr.ph.i.3.i
  %.sink39.i = phi i64 [ 3, %.preheader.i1.2.i ], [ 4, %.lr.ph.i.3.i ], [ 3, %.preheader.i8.2.i ]
  %.sink37.i = phi i8 [ 101, %.preheader.i1.2.i ], [ 101, %.lr.ph.i.3.i ], [ 108, %.preheader.i8.2.i ]
  %.sink.i = phi i64 [ 4, %.preheader.i1.2.i ], [ 5, %.lr.ph.i.3.i ], [ 4, %.preheader.i8.2.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sink39.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !87
  %.not.i11.3.i = icmp eq i8 %i.x, %.sink37.i
  br i1 %.not.i11.3.i, label %bb.f, label %_ZN2c43yml12_GLOBAL__N_123_is_special_json_scalarENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_123_is_special_json_scalarENS_15basic_substringIKcEE.exit: ; preds = %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.sink.split.i
  switch i8 %i.e, label %.critedge.peel [
    i8 44, label %.thread49
    i8 125, label %.thread49
    i8 32, label %.thread49
    i8 9, label %.thread49
    i8 35, label %.thread49
  ]

.critedge.peel:                                   ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %_ZN2c43yml12_GLOBAL__N_123_is_special_json_scalarENS_15basic_substringIKcEE.exit
  %exitcond.peel.not = icmp eq i64 %.sroa.7.0.copyload, 1
  br i1 %exitcond.peel.not, label %.thread47, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %.lr.ph.i.1.i, %.lr.ph.i.2.i, %.lr.ph.i.3.i, %.preheader.i1.1.i, %.preheader.i1.2.i, %.preheader.i8.1.i, %.preheader.i8.2.i, %.critedge.peel
  br label %.peel.next

bb.f:                                             ; preds = %_ZNK2c415basic_substringIKcE11begins_withES2_.exit.sink.split.i
  store ptr %.sroa.0.0.copyload, ptr %1, align 8, !tbaa !101
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sink.i, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.y, align 8, !tbaa !231
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !210
  %i.ab = add i64 %i.aa, %.sink.i
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !210
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !212
  %i.ae = add i64 %i.ad, %.sink.i
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !212
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sink.i
  %i.ag = sub i64 %.sroa.7.0.copyload, %.sink.i
  store ptr %i.af, ptr %i.d, align 8, !tbaa !101
  store i64 %i.ag, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !102
  br label %.thread49

.peel.next:                                       ; preds = %.peel.next.preheader, %.critedge
  %.02456 = phi i64 [ %i.am, %.critedge ], [ 1, %.peel.next.preheader ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.02456 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !87
  switch i8 %i.ai, label %.critedge [
    i8 44, label %.thread47.loopexit
    i8 125, label %.thread47.loopexit
    i8 32, label %.thread47.loopexit
    i8 9, label %.thread47.loopexit
    i8 35, label %bb.g
  ]

bb.g:                                             ; preds = %.peel.next
  %i.aj = getelementptr i8, ptr %i.ah, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !87
  %i.al = icmp eq i8 %i.ak, 32
  br i1 %i.al, label %.thread47.loopexit, label %.critedge

.critedge:                                        ; preds = %.peel.next, %bb.g
  %i.am = add nuw i64 %.02456, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread47.loopexit, label %.peel.next, !llvm.loop !924

.thread47.loopexit:                               ; preds = %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.critedge, %bb.g
  %.02455.ph = phi i64 [ %.02456, %.peel.next ], [ %.02456, %.peel.next ], [ %.02456, %.peel.next ], [ %.02456, %.peel.next ], [ %.sroa.7.0.copyload, %.critedge ], [ %.02456, %bb.g ]
  %i.an = freeze i64 %.02455.ph
  br label %.thread47

.thread47:                                        ; preds = %.thread47.loopexit, %.critedge.peel
  %.02455 = phi i64 [ 1, %.critedge.peel ], [ %i.an, %.thread47.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !210
  %i.aq = add i64 %i.ap, %.02455
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !210
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !212
  %i.at = add i64 %i.as, %.02455
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !212
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.02455
  %i.av = sub i64 %.sroa.7.0.copyload, %.02455
  store ptr %i.au, ptr %i.d, align 8, !tbaa !101
  store i64 %i.av, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !102
  %.not.i = icmp eq i64 %.02455, -1
  %spec.select = select i1 %.not.i, i64 %.sroa.7.0.copyload, i64 %.02455
  store ptr %.sroa.0.0.copyload, ptr %1, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %spec.select, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_2
begin_hunk_3_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_scan_blockEPNS3_12ScannedBlockEm:bb.a
  %i.bo = icmp ult i64 %i.bh, %i.bn
  %.sroa.03.0.copyload.i = load ptr, ptr %i.bl, align 8, !tbaa !101 ; 4 uses
  br i1 %i.bo, label %.lr.ph.i.i85, label %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i, !prof !88

.lr.ph.i.i85:                                     ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread, %bb.m
  %.046.i.i = phi i64 [ %i.br, %bb.m ], [ %i.bh, %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %.046.i.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.bq, label %bb.m [
    i8 10, label %bb.n
    i8 13, label %bb.n
  ]

bb.m:                                             ; preds = %.lr.ph.i.i85
  %i.br = add i64 %.046.i.i, 1                    ; 2 uses
  %exitcond.not.i.i86 = icmp eq i64 %i.br, %i.bn
  br i1 %exitcond.not.i.i86, label %.thread.i, label %.lr.ph.i.i85, !llvm.loop !22

bb.n:                                             ; preds = %.lr.ph.i.i85, %.lr.ph.i.i85
  %i.bs = icmp eq i8 %i.bq, 13
  %i.bt = zext i1 %i.bs to i64
  %spec.select.i.i = add nuw i64 %.046.i.i, %i.bt ; 4 uses
  %i.bu = icmp ult i64 %spec.select.i.i, %i.bn
  br i1 %i.bu, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %spec.select.i.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !87
  %i.bx = icmp eq i8 %i.bw, 10
  %i.by = zext i1 %i.bx to i64
  %spec.select22.i.i = add nuw i64 %spec.select.i.i, %i.by
  br label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.o, %bb.n
  %.pn.i9.i = phi i64 [ %.046.i.i, %bb.n ], [ %.046.i.i, %bb.o ], [ %i.bn, %bb.m ] ; 2 uses
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.n ], [ %spec.select22.i.i, %bb.o ], [ %i.bn, %bb.m ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bh ; 3 uses
  %i.ca = sub i64 %.pn.i9.i, %i.bh                ; 3 uses
  store ptr %i.bz, ptr %i.au, align 8, !tbaa !101
  store i64 %i.ca, ptr %i.ba, align 8, !tbaa !102
  %.not13.i.i.i.i = icmp eq i64 %.pn.i9.i, %i.bh
  br i1 %.not13.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.thread.i, %bb.p
  %.0710.i.i.i.i = phi i64 [ %i.cd, %bb.p ], [ 0, %.thread.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.0710.i.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.cc, 32
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = add nuw i64 %.0710.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cd, %i.ca
  br i1 %exitcond.not.i.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i: ; preds = %bb.p, %.lr.ph.i.i.i.i, %.thread.i
  %i.ce = phi i64 [ -1, %.thread.i ], [ -1, %bb.p ], [ %.0710.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i.i.i = icmp eq i64 %.2.i.i, -1
  %i.cf = select i1 %.not.i.i.i, i64 %i.bn, i64 %.2.i.i
  %i.cg = sub i64 %i.cf, %i.bh
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i: ; preds = %_ZNK2c415basic_substringIKcE7left_ofEm.exit.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 %i.bn ; 2 uses
  store ptr %i.ch, ptr %i.au, align 8, !tbaa !101
  store i64 0, ptr %i.ba, align 8, !tbaa !102
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i
  %.sink24.i = phi i64 [ -1, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.ce, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ]
  %.sink22.i = phi ptr [ %i.ch, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.bz, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink21.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.cg, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %.sink.i = phi i64 [ 0, %_ZN2c43yml12LineContents5resetENS_15basic_substringIcEES3_.exit.i ], [ %i.ca, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  store i64 %.sink24.i, ptr %i.ci, align 8, !tbaa !220
  %i.cj = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  store ptr %.sink22.i, ptr %i.cj, align 8, !tbaa !101
  store i64 %.sink21.i, ptr %i.bc, align 8, !tbaa !102
  %i.ck = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  store ptr %.sink22.i, ptr %i.ck, align 8, !tbaa !101
  store i64 %.sink.i, ptr %i.be, align 8, !tbaa !102
  %i.cl = load ptr, ptr %i.bl, align 8, !tbaa !139
  %i.cm = load i64, ptr %i.bm, align 8, !tbaa !219 ; 2 uses
  %.not214245 = icmp ult i64 %i.bh, %i.cm
  br i1 %.not214245, label %.lr.ph, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189

.lr.ph:                                           ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.co = getelementptr inbounds nuw i8, ptr %i.au, i64 96 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread
  %i.cp = phi i64 [ %i.ar, %.lr.ph ], [ %i.gk, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 19 uses
  %i.cq = phi i64 [ %i.bk, %.lr.ph ], [ %i.go, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 2 uses
  %i.cr = phi i64 [ %.sink.i, %.lr.ph ], [ %i.dh, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 2 uses
  %i.cs = phi i64 [ %.sink21.i, %.lr.ph ], [ %i.gh, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ]
  %i.ct = phi i64 [ %i.ar, %.lr.ph ], [ %i.gl, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 7 uses
  %i.cu = phi i64 [ %i.cm, %.lr.ph ], [ %i.gq, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 6 uses
  %i.cv = phi i64 [ %i.bh, %.lr.ph ], [ %i.gi, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 7 uses
  %.035250 = phi i64 [ -1, %.lr.ph ], [ %.4, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 20 uses
  %.038248 = phi i64 [ 0, %.lr.ph ], [ %i.gp, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 10 uses
  %.sroa.4.0246 = phi i64 [ 0, %.lr.ph ], [ %i.gm, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ] ; 10 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.bl, align 8, !tbaa !101 ; 6 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.046.i = phi i64 [ %i.cy, %bb.r ], [ %i.cv, %bb.q ] ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %.046.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !87  ; 2 uses
  switch i8 %i.cx, label %bb.r [
    i8 10, label %bb.s
    i8 13, label %bb.s
  ]

bb.r:                                             ; preds = %.lr.ph.i
  %i.cy = add i64 %.046.i, 1                      ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %i.cy, %i.cu
  br i1 %exitcond.not.i94, label %.thread179, label %.lr.ph.i, !llvm.loop !22

bb.s:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.cz = icmp eq i8 %i.cx, 13
  %i.da = zext i1 %i.cz to i64
  %spec.select.i93 = add nuw i64 %.046.i, %i.da   ; 4 uses
  %i.db = icmp ult i64 %spec.select.i93, %i.cu
  br i1 %i.db, label %bb.t, label %.thread179

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %spec.select.i93
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !87
  %i.de = icmp eq i8 %i.dd, 10
  %i.df = zext i1 %i.de to i64
  %spec.select22.i = add nuw i64 %spec.select.i93, %i.df
  br label %.thread179

.thread179:                                       ; preds = %bb.r, %bb.t, %bb.s
  %.pn.i182 = phi i64 [ %.046.i, %bb.s ], [ %.046.i, %bb.t ], [ %i.cu, %bb.r ] ; 3 uses
  %.2.i = phi i64 [ %spec.select.i93, %bb.s ], [ %spec.select22.i, %bb.t ], [ %i.cu, %bb.r ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %i.cv ; 12 uses
  %i.dh = sub i64 %.pn.i182, %i.cv                ; 11 uses
  %.not13.i.i.i = icmp eq i64 %.pn.i182, %i.cv    ; 2 uses
  br i1 %.not13.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread179, %bb.u
  %.0710.i.i.i = phi i64 [ %i.dk, %bb.u ], [ 0, %.thread179 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.0710.i.i.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !87
  %.not.i.i.i88 = icmp eq i8 %i.dj, 32
  br i1 %.not.i.i.i88, label %bb.u, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.dk = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dk, %i.dh
  br i1 %exitcond.not.i.i.i, label %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit, label %.lr.ph.i.i.i, !llvm.loop !23

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit: ; preds = %.lr.ph.i.i.i, %bb.u
  %i.dl = phi i64 [ %.0710.i.i.i, %.lr.ph.i.i.i ], [ -1, %bb.u ] ; 22 uses
  %.not.i.i90 = icmp eq i64 %.2.i, -1
  %i.dm = select i1 %.not.i.i90, i64 %i.cu, i64 %.2.i ; 13 uses
  %i.dn = sub i64 %i.dm, %i.cv                    ; 12 uses
  %.not52 = icmp eq i64 %i.ct, -1
  br i1 %.not52, label %.lr.ph.i97, label %bb.v

_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread: ; preds = %.thread179
  %.not.i.i90342 = icmp eq i64 %.2.i, -1
  %i.do = select i1 %.not.i.i90342, i64 %i.cu, i64 %.2.i ; 3 uses
  %i.dp = sub i64 %i.do, %i.cv                    ; 2 uses
  %.not52343 = icmp eq i64 %i.ct, -1
  br i1 %.not52343, label %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.thread, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.v:                                             ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit
  %i.dq = icmp ult i64 %i.dl, %i.ct
  br i1 %i.dq, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.dr = icmp eq ptr %.sroa.02.0.copyload, null
  br i1 %i.dr, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.w, %bb.x
  %.01326.us.i.i.i = phi i64 [ %i.dv, %bb.x ], [ 0, %bb.w ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.01326.us.i.i.i
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !87
  switch i8 %i.dt, label %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i [
    i8 32, label %bb.x
    i8 9, label %bb.x
  ]

_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i: ; preds = %.preheader.us.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.01326.us.i.i.i
  %.not.not.i.i = icmp eq i64 %.01326.us.i.i.i, -1
  br i1 %.not.not.i.i, label %.critedge, label %.preheader.us.i.i8.i.preheader

bb.x:                                             ; preds = %.preheader.us.i.i.i, %.preheader.us.i.i.i
  %i.dv = add nuw i64 %.01326.us.i.i.i, 1         ; 2 uses
  %exitcond29.not.i.i.i = icmp eq i64 %i.dv, %i.dh
  br i1 %exitcond29.not.i.i.i, label %.critedge, label %.preheader.us.i.i.i, !llvm.loop !26

.preheader.us.i.i8.i.preheader:                   ; preds = %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i
  %i.dw = sub nuw i64 %i.dh, %.01326.us.i.i.i
  br label %.preheader.us.i.i8.i

.loopexit25.i.i.i:                                ; preds = %.preheader.us.i.i8.i, %.preheader.us.i.i8.i
  %.not.i12.i.i = icmp eq i64 %.01534.us.i.i.i, 0
  br i1 %.not.i12.i.i, label %.critedge, label %.preheader.us.i.i8.i

.preheader.us.i.i8.i:                             ; preds = %.preheader.us.i.i8.i.preheader, %.loopexit25.i.i.i
  %.01534.us.i.in.i.i = phi i64 [ %.01534.us.i.i.i, %.loopexit25.i.i.i ], [ %i.dw, %.preheader.us.i.i8.i.preheader ]
  %.01534.us.i.i.i = add i64 %.01534.us.i.in.i.i, -1 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.01534.us.i.i.i
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !87
  switch i8 %i.dy, label %.loopexit25.us.i.i.i [
    i8 32, label %.loopexit25.i.i.i
    i8 9, label %.loopexit25.i.i.i
  ]

.loopexit25.us.i.i.i:                             ; preds = %.preheader.us.i.i8.i
  %.not.us.i.i.i = icmp eq i64 %.sroa.4.0246, 0
  br i1 %.not.us.i.i.i, label %bb.y, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189

bb.y:                                             ; preds = %.loopexit25.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58, !noalias !940
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58, !noalias !940
  store ptr %i.a, ptr %3, align 8, !tbaa !101, !noalias !940
  %.sroa.2.0..sroa_idx.i.i96 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i.i96, align 8, !tbaa !102, !noalias !940
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i64 0, ptr %i.dz, align 8, !tbaa !178, !noalias !940
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58, !noalias !940
  store ptr %3, ptr %4, align 8, !tbaa !180, !noalias !940
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA41_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nonnull @.str.160, i64 9, ptr noundef nonnull align 1 dereferenceable(41) @.str.179)
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !178, !noalias !940 ; 3 uses
  %i.eb = load i64, ptr %.sroa.2.0..sroa_idx.i.i96, align 8, !tbaa !181, !noalias !940
  %i.ec = icmp ult i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.z, label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

bb.z:                                             ; preds = %bb.y
  %i.ed = load ptr, ptr %3, align 8, !tbaa !182, !noalias !940
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ea
  store i8 10, ptr %i.ee, align 1, !tbaa !87
  %.pre.i.i = load i64, ptr %i.dz, align 8, !tbaa !178, !noalias !940
  br label %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_.exit

_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_.exit: ; preds = %bb.y, %bb.z
  %i.ef = phi i64 [ %.pre.i.i, %bb.z ], [ %i.ea, %bb.y ]
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.dz, align 8, !tbaa !178, !noalias !940
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.eh = load i64, ptr %i.dz, align 8, !tbaa !178, !noalias !940
  %i.ei = call i64 @llvm.umin.i64(i64 %i.eh, i64 1024)
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !169, !noalias !940 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2520
  store ptr null, ptr %i.ek, align 8, !tbaa !223
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 2480
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !224
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 2488
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !206
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 2456
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !193
  call void %i.em(ptr noundef nonnull %i.a, i64 noundef %i.ei, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.ep, ptr noundef %i.er), !inline_history !938
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58, !noalias !940
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58, !noalias !940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58, !noalias !940
  %.pre305 = load i64, ptr %i.b, align 8, !tbaa !102
  br label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189

.critedge:                                        ; preds = %bb.x, %.loopexit25.i.i.i, %_ZNK2c415basic_substringIcE12first_not_ofENS0_IKcEE.exit.i.i, %bb.v
  %i.es = icmp eq i64 %i.ct, 0
  %i.et = icmp ugt i64 %i.dh, 2
  %or.cond = and i1 %i.et, %i.es
  br i1 %or.cond, label %bb.aa, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.aa:                                            ; preds = %.critedge
  %i.eu = load i8, ptr %i.dg, align 1, !tbaa !87
  switch i8 %i.eu, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread [
    i8 45, label %bb.ab
    i8 46, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !87
  %i.ex = icmp eq i8 %i.ew, 45
  br i1 %i.ex, label %bb.ac, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !87
  %i.fa = icmp eq i8 %i.ez, 45
  br i1 %i.fa, label %bb.ad, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.fb = icmp eq i64 %i.dh, 3
  br i1 %i.fb, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit

bb.ae:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !87
  %i.fe = icmp eq i8 %i.fd, 46
  br i1 %i.fe, label %bb.af, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !87
  %i.fh = icmp eq i8 %i.fg, 46
  br i1 %i.fh, label %bb.ag, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.fi = icmp eq i64 %i.dh, 3
  br i1 %i.fi, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit

_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit: ; preds = %bb.ad, %bb.ag
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dg, i64 3
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !87
  %i.fl = icmp eq i8 %i.fk, 32
  br i1 %i.fl, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

.lr.ph.i97:                                       ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit, %bb.ah
  %.0710.i = phi i64 [ %i.fo, %bb.ah ], [ 0, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.0710.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !87
  %.not.i98 = icmp eq i8 %i.fn, 32
  br i1 %.not.i98, label %bb.ah, label %_ZNK2c415basic_substringIcE12first_not_ofEc.exit

bb.ah:                                            ; preds = %.lr.ph.i97
  %i.fo = add nuw i64 %.0710.i, 1                 ; 2 uses
  %exitcond.not.i100 = icmp eq i64 %i.fo, %i.dh
  br i1 %exitcond.not.i100, label %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.thread, label %.lr.ph.i97, !llvm.loop !23

_ZNK2c415basic_substringIcE12first_not_ofEc.exit: ; preds = %.lr.ph.i97
  %.not53 = icmp eq i64 %.0710.i, -1
  br i1 %.not53, label %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZNK2c415basic_substringIcE12first_not_ofEc.exit
  %i.fp = icmp eq i64 %.035250, -1
  br i1 %i.fp, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.fq = icmp ult i64 %i.dl, %2
  br i1 %i.fq, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fr = icmp eq i64 %.sroa.4.0246, 0
  br i1 %i.fr, label %bb.al, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189

bb.al:                                            ; preds = %bb.ak
  %.neg.i = sub i64 %i.cr, %i.cs
  %i.fs = add i64 %.neg.i, %i.cv                  ; 2 uses
  store i64 %i.fs, ptr %i.av, align 8, !tbaa !210
  %i.ft = add i64 %i.cq, -1
  store i64 %i.ft, ptr %i.bi, align 8, !tbaa !211
  %i.fu = add i64 %i.cr, 1
  store i64 %i.fu, ptr %i.ay, align 8, !tbaa !212
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %i.fs
  store ptr %i.fv, ptr %i.au, align 8, !tbaa !101
  store i64 0, ptr %i.ba, align 8, !tbaa !102
  br label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189

bb.am:                                            ; preds = %bb.aj
  %i.fw = load i64, ptr %i.cn, align 8, !tbaa !215
  %i.fx = icmp eq i64 %i.dl, %i.fw
  br i1 %i.fx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fy = load i32, ptr %i.co, align 8, !tbaa !221
  %i.fz = and i32 %i.fy, 12
  %.not215 = icmp eq i32 %i.fz, 0
  br i1 %.not215, label %bb.ao, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189

bb.ao:                                            ; preds = %bb.am, %bb.an
  store i64 %i.dl, ptr %i.b, align 8, !tbaa !102
  br label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.ap:                                            ; preds = %bb.ai
  %.not58 = icmp ult i64 %i.dl, %.035250
  br i1 %.not58, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %i.dl, ptr %i.b, align 8, !tbaa !102
  br label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

_ZNK2c415basic_substringIcE12first_not_ofEc.exit.thread: ; preds = %bb.ah, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit
  %i.ga = phi i64 [ -1, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread ], [ %i.dl, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit ], [ %i.dl, %bb.ah ] ; 4 uses
  %i.gb = phi i64 [ %i.do, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread ], [ %i.dm, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit ], [ %i.dm, %bb.ah ] ; 2 uses
  %i.gc = phi i64 [ %i.dp, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread ], [ %i.dn, %_ZNK2c415basic_substringIcE12first_not_ofEc.exit ], [ %i.dn, %bb.ah ] ; 2 uses
  %.not54 = icmp eq i64 %.035250, -1
  br i1 %.not54, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.thread
  %spec.select = call i64 @llvm.umax.i64(i64 %i.dh, i64 %.035250)
  br label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

bb.as:                                            ; preds = %_ZNK2c415basic_substringIcE12first_not_ofEc.exit.thread
  switch i64 %i.ga, label %bb.au [
    i64 0, label %.sink.split
    i64 -1, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as
  br i1 %.not13.i.i.i, label %.sink.split, label %bb.au

.sink.split:                                      ; preds = %bb.at, %bb.as
  %i.gd = load i32, ptr %i.co, align 8, !tbaa !221
  %i.ge = and i32 %i.gd, 520
  %i.gf = icmp ne i32 %i.ge, 0
  %i.gg = zext i1 %i.gf to i64
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.as, %bb.at
  %.136 = phi i64 [ %i.ga, %bb.as ], [ %i.dh, %bb.at ], [ %i.gg, %.sink.split ]
  %spec.select61 = call i64 @llvm.umax.i64(i64 %.136, i64 %2)
  br label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread

_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread: ; preds = %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread, %bb.w, %bb.au, %bb.ar, %bb.aq, %bb.ao, %bb.ae, %bb.af, %bb.ab, %bb.ac, %bb.aa, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit, %.critedge
  %i.gh = phi i64 [ %i.dn, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit ], [ %i.dn, %.critedge ], [ %i.dn, %bb.ae ], [ %i.dn, %bb.ao ], [ %i.dn, %bb.aa ], [ %i.dn, %bb.w ], [ %i.dn, %bb.ac ], [ %i.dn, %bb.ab ], [ %i.dn, %bb.af ], [ %i.gc, %bb.au ], [ %i.gc, %bb.ar ], [ %i.dn, %bb.aq ], [ %i.dp, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread ] ; 3 uses
  %i.gi = phi i64 [ %i.dm, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit ], [ %i.dm, %.critedge ], [ %i.dm, %bb.ae ], [ %i.dm, %bb.ao ], [ %i.dm, %bb.aa ], [ %i.dm, %bb.w ], [ %i.dm, %bb.ac ], [ %i.dm, %bb.ab ], [ %i.dm, %bb.af ], [ %i.gb, %bb.au ], [ %i.gb, %bb.ar ], [ %i.dm, %bb.aq ], [ %i.do, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread ] ; 3 uses
  %i.gj = phi i64 [ %i.dl, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit ], [ %i.dl, %.critedge ], [ %i.dl, %bb.ae ], [ %i.dl, %bb.ao ], [ %i.dl, %bb.aa ], [ %i.dl, %bb.w ], [ %i.dl, %bb.ac ], [ %i.dl, %bb.ab ], [ %i.dl, %bb.af ], [ %i.ga, %bb.au ], [ %i.ga, %bb.ar ], [ %i.dl, %bb.aq ], [ -1, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread ]
  %i.gk = phi i64 [ %i.cp, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit ], [ %i.cp, %.critedge ], [ %i.cp, %bb.ae ], [ %i.dl, %bb.ao ], [ %i.cp, %bb.aa ], [ %i.cp, %bb.w ], [ %i.cp, %bb.ac ], [ %i.cp, %bb.ab ], [ %i.cp, %bb.af ], [ %i.cp, %bb.au ], [ %i.cp, %bb.ar ], [ %i.dl, %bb.aq ], [ %i.cp, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread ] ; 2 uses
  %i.gl = phi i64 [ 0, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit ], [ %i.ct, %.critedge ], [ 0, %bb.ae ], [ %i.dl, %bb.ao ], [ 0, %bb.aa ], [ %i.ct, %bb.w ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.af ], [ -1, %bb.au ], [ -1, %bb.ar ], [ %i.dl, %bb.aq ], [ %i.ct, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread ]
  %.4 = phi i64 [ %.035250, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit ], [ %.035250, %.critedge ], [ %.035250, %bb.ae ], [ -1, %bb.ao ], [ %.035250, %bb.aa ], [ %.035250, %bb.w ], [ %.035250, %bb.ac ], [ %.035250, %bb.ab ], [ %.035250, %bb.af ], [ %spec.select61, %bb.au ], [ %spec.select, %bb.ar ], [ %.035250, %bb.aq ], [ %.035250, %_ZN2c43yml12LineContents20reset_with_next_lineENS_15basic_substringIcEEm.exit.thread ] ; 2 uses
  store i64 %i.gj, ptr %i.ci, align 8, !tbaa !102
  store ptr %i.dg, ptr %i.cj, align 8, !tbaa !101
  store i64 %i.gh, ptr %i.bc, align 8, !tbaa !102
  store ptr %i.dg, ptr %i.ck, align 8, !tbaa !101
  store i64 %i.dh, ptr %i.be, align 8, !tbaa !102
  %i.gm = add i64 %i.gh, %.sroa.4.0246            ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %.pn.i182
  store ptr %i.gn, ptr %i.au, align 8, !tbaa !101
  store i64 0, ptr %i.ba, align 8, !tbaa !102
  store i64 %i.gi, ptr %i.av, align 8, !tbaa !210
  %i.go = add i64 %i.cq, 1                        ; 2 uses
  store i64 %i.go, ptr %i.bi, align 8, !tbaa !211
  store i64 1, ptr %i.ay, align 8, !tbaa !212
  %i.gp = add i64 %.038248, 1                     ; 2 uses
  %i.gq = load i64, ptr %i.bm, align 8, !tbaa !219 ; 2 uses
  %.not214 = icmp ult i64 %i.gi, %i.gq
  br i1 %.not214, label %bb.q, label %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189, !llvm.loop !939

_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189: ; preds = %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit, %bb.ap, %bb.an, %bb.ad, %bb.ag, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit, %bb.al, %bb.ak, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_.exit, %.loopexit25.us.i.i.i
  %i.gr = phi i64 [ %i.cp, %.loopexit25.us.i.i.i ], [ %.pre305, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_.exit ], [ %i.cp, %bb.ak ], [ %i.cp, %bb.al ], [ %i.ar, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit ], [ %i.gk, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ], [ %i.cp, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit ], [ %i.cp, %bb.ap ], [ %i.cp, %bb.an ], [ %i.cp, %bb.ad ], [ %i.cp, %bb.ag ] ; 2 uses
  %.sroa.4.0237 = phi i64 [ %.sroa.4.0246, %.loopexit25.us.i.i.i ], [ 0, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_.exit ], [ %.sroa.4.0246, %bb.ak ], [ 0, %bb.al ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit ], [ %i.gm, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ], [ %.sroa.4.0246, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit ], [ %.sroa.4.0246, %bb.ap ], [ %.sroa.4.0246, %bb.an ], [ %.sroa.4.0246, %bb.ad ], [ %.sroa.4.0246, %bb.ag ]
  %.038234 = phi i64 [ %.038248, %.loopexit25.us.i.i.i ], [ %.038248, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_.exit ], [ %.038248, %bb.ak ], [ %.038248, %bb.al ], [ 0, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit ], [ %i.gp, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ], [ %.038248, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit ], [ %.038248, %bb.ap ], [ %.038248, %bb.an ], [ %.038248, %bb.ad ], [ %.038248, %bb.ag ]
  %.5 = phi i64 [ %.035250, %.loopexit25.us.i.i.i ], [ %.035250, %_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA41_cEEEvNS_15basic_substringIKcEEDprRKT_.exit ], [ -1, %bb.ak ], [ -1, %bb.al ], [ -1, %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE10_scan_lineEv.exit ], [ %.4, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread ], [ %.035250, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit ], [ %.035250, %bb.ap ], [ -1, %bb.an ], [ %.035250, %bb.ad ], [ %.035250, %bb.ag ]
  %.not60 = icmp eq i64 %.038234, 0
  br i1 %.not60, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189
  %i.gs = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 2488
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !206 ; 7 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !225
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !226 ; 2 uses
  %.neg.i101 = sub i64 %i.gy, %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 56 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !210
  %i.hb = add i64 %.neg.i101, %i.ha               ; 2 uses
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !210
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 64 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !211
  %i.he = add i64 %i.hd, -1
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !211
  %i.hf = add i64 %i.gy, 1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 72
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !212
  %i.hh = load ptr, ptr %i.bl, align 8, !tbaa !139
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hb
  store ptr %i.hi, ptr %i.gu, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i102, align 8, !tbaa !102
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN2c43yml12_GLOBAL__N_113_is_doc_tokenENS_15basic_substringIKcEE.exit.thread189
  %i.hj = icmp eq i64 %i.gr, -1
  %spec.select396 = select i1 %i.hj, i64 %.5, i64 %i.gr
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.bh
  store ptr %i.hk, ptr %1, align 8, !tbaa !101
  %.sroa.4.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.4.0237, ptr %.sroa.4.0..sroa_idx116, align 8, !tbaa !102
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %spec.select396, ptr %i.hl, align 8, !tbaa !251
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %.2, ptr %i.hm, align 8, !tbaa !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE4_errIJA33_cEEEvNS_15basic_substringIKcEEDprRKT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2, ptr noalias noundef nonnull align 1 dereferenceable(33) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %4 = alloca %"struct.c4::yml::detail::_SubstrWriter", align 8 ; 7 uses
  %5 = alloca %class.anon.19, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  store ptr %i.a, ptr %4, align 8, !tbaa !101
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1023, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  store ptr %4, ptr %5, align 8, !tbaa !180
  call void @_ZN2c43yml6detail5_dumpIRZNKS0_11ParseEngineINS0_16EventHandlerTreeEE4_errIJA33_cEEEvNS_15basic_substringIKcEEDprRKT_EUlSA_E_JRA33_S9_EEEvOT_SA_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(33) %3)
  %i.c = load i64, ptr %i.b, align 8, !tbaa !178  ; 3 uses
  %i.d = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !181
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c
  store i8 10, ptr %i.g, align 1, !tbaa !87
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !178
  br label %_ZN2c43yml6detail13_SubstrWriter6appendEc.exit

_ZN2c43yml6detail13_SubstrWriter6appendEc.exit:   ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.b, align 8, !tbaa !178
  call void @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE8_fmt_msgIRZNKS3_4_errIJA33_cEEEvNS_15basic_substringIKcEEDprRKT_EUlS9_E_EEvOT_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !178
  %i.k = call i64 @llvm.umin.i64(i64 %i.j, i64 1024)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !169  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2520
  store ptr null, ptr %i.n, align 8, !tbaa !223
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2480
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !224
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 2488
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !206
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 2456
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !193
  call void %i.p(ptr noundef nonnull %i.a, i64 noundef %i.k, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.s, ptr noundef %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN2c44atouImEEbNS_15basic_substringIKcEEPT_(ptr %0, i64 %1, ptr noalias noundef %2) local_unnamed_addr #27 comdat {
bb.a:
  %.fr = freeze i64 %1                            ; 18 uses
  %i.a = icmp eq i64 %.fr, 0
  br i1 %i.a, label %.critedge, label %bb.b, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !87
  switch i8 %i.b, label %.lr.ph118.preheader [
    i8 45, label %.critedge
    i8 48, label %bb.d
  ], !prof !951

.lr.ph118.preheader:                              ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  store i64 0, ptr %2, align 8, !tbaa !102, !alias.scope !952
  %xtraiter173 = and i64 %.fr, 1
  %i.c = icmp eq i64 %.fr, 1
  br i1 %i.c, label %.lr.ph118.epil.preheader, label %.lr.ph118.preheader.new

.lr.ph118.preheader.new:                          ; preds = %.lr.ph118.preheader
  %unroll_iter179 = and i64 %.fr, -2
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.c, %.lr.ph118.preheader.new
  %i.d = phi i64 [ 0, %.lr.ph118.preheader.new ], [ %i.s, %bb.c ]
  %.014.i45117 = phi ptr [ %0, %.lr.ph118.preheader.new ], [ %i.t, %bb.c ] ; 3 uses
  %niter180 = phi i64 [ 0, %.lr.ph118.preheader.new ], [ %niter180.next.1, %bb.c ]
  %i.e = load i8, ptr %.014.i45117, align 1, !tbaa !87, !noalias !952 ; 2 uses
  %i.f = add i8 %i.e, -48
  %i.g = icmp ult i8 %i.f, 10
  br i1 %i.g, label %.lr.ph118.1, label %.critedge, !prof !88

.lr.ph118.1:                                      ; preds = %.lr.ph118
  %i.h = mul i64 %i.d, 10
  %i.i = zext nneg i8 %i.e to i64
  %i.j = add nsw i64 %i.i, -48
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  store i64 %i.k, ptr %2, align 8, !tbaa !102, !alias.scope !952
  %i.l = getelementptr inbounds nuw i8, ptr %.014.i45117, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !87, !noalias !952 ; 2 uses
  %i.n = add i8 %i.m, -48
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %bb.c, label %.critedge, !prof !88

bb.c:                                             ; preds = %.lr.ph118.1
  %i.p = mul i64 %i.k, 10
  %i.q = zext nneg i8 %i.m to i64
  %i.r = add nsw i64 %i.q, -48
  %i.s = add i64 %i.r, %i.p                       ; 3 uses
  store i64 %i.s, ptr %2, align 8, !tbaa !102, !alias.scope !952
  %i.t = getelementptr inbounds nuw i8, ptr %.014.i45117, i64 2 ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %.lr.ph118

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq i64 %.fr, 1
  br i1 %.not, label %.critedge.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !87
  %i.w = and i8 %i.v, -33
  switch i8 %i.w, label %.lr.ph112.preheader [
    i8 88, label %bb.f
    i8 66, label %bb.i
    i8 79, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %.not34 = icmp eq i64 %.fr, 2
  br i1 %.not34, label %.critedge, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  store i64 0, ptr %2, align 8, !tbaa !102, !alias.scope !953
  %i.x = getelementptr i8, ptr %0, i64 %.fr
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %.critedge.i
  %i.z = phi i64 [ %i.ah, %.critedge.i ], [ 0, %.lr.ph106.preheader ]
  %.032.i104 = phi ptr [ %i.ai, %.critedge.i ], [ %i.y, %.lr.ph106.preheader ] ; 2 uses
  %i.aa = load i8, ptr %.032.i104, align 1, !tbaa !87, !noalias !953 ; 4 uses
  %i.ab = add i8 %i.aa, -48
  %or.cond.i = icmp ult i8 %i.ab, 10
  br i1 %or.cond.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph106
  %i.ac = add i8 %i.aa, -97
  %or.cond6.i = icmp ult i8 %i.ac, 6
  br i1 %or.cond6.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add i8 %i.aa, -65
  %or.cond9.i = icmp ult i8 %i.ad, 6
  br i1 %or.cond9.i, label %.critedge.i, label %.critedge

.critedge.i:                                      ; preds = %bb.h, %bb.g, %.lr.ph106
  %.sink148 = phi i64 [ -87, %bb.g ], [ -48, %.lr.ph106 ], [ -55, %bb.h ]
end_hunk_3
begin_hunk_4_@_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE14_maybe_end_docEv:bb.a
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !206
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !235 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !185 ; 2 uses
  %i.ak = or i32 %i.aj, 268443650
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !185
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 2440 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !200
  %i.an = icmp eq i64 %i.am, 1
  %i.ao = and i32 %i.aj, 16
  %.not.i = icmp eq i32 %i.ao, 0
  %or.cond3 = select i1 %i.an, i1 true, i1 %.not.i
  br i1 %or.cond3, label %_ZN2c43yml16EventHandlerTree7end_docEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2c43yml16EventHandlerTree9begin_docEv.exit
  tail call void @_ZN2c43yml16EventHandlerTree19_remove_speculativeEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.ad)
  tail call void @_ZN2c43yml16EventHandlerTree31_remove_speculative_with_parentEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.ad)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 2496 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !238 ; 2 uses
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !206 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !tbaa.struct !160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(138) %i.aq, ptr noundef nonnull align 8 dereferenceable(138) %i.ar, i64 56, i1 false), !tbaa.struct !240
  %i.au = load i64, ptr %i.al, align 8, !tbaa !200
  %i.av = add i64 %i.au, -1                       ; 3 uses
  store i64 %i.av, ptr %i.al, align 8, !tbaa !200
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 2432
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !201
  %i.ay = icmp ugt i64 %i.av, 1
  %i.az = getelementptr [152 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -304
  %i.bb = select i1 %i.ay, ptr %i.ba, ptr null
  store ptr %i.bb, ptr %i.ap, align 8, !tbaa !238
  %i.bc = getelementptr i8, ptr %i.az, i64 -152
  store ptr %i.bc, ptr %i.ae, align 8, !tbaa !206
  br label %_ZN2c43yml16EventHandlerTree7end_docEv.exit

_ZN2c43yml16EventHandlerTree7end_docEv.exit:      ; preds = %bb.d, %bb.g, %_ZN2c43yml16EventHandlerTree9begin_docEv.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_begin2_doc_explEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 1, ptr %i.a, align 1, !tbaa !196
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2488
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !206
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !221
  %i.h = or i32 %i.g, 16384
  store i32 %i.h, ptr %i.f, align 8, !tbaa !221
  tail call void @_ZN2c43yml16EventHandlerTree14begin_doc_explEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.c)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !169
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2488
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i64 0, ptr %i.l, align 8, !tbaa !215
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE14_end2_doc_explEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.b = load i8, ptr %i.a, align 1, !tbaa !196, !range !81, !noundef !90
  %i.c = trunc nuw i8 %i.b to i1
  %.not2 = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.e, 0
  %or.cond = select i1 %.not2, i1 %.not, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i64, ptr %i.f, align 8
  %.not1 = icmp eq i64 %i.g, 0
  %or.cond5 = select i1 %or.cond, i1 %.not1, i1 false
  br i1 %or.cond5, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !169
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE42_handle_annotations_before_blck_val_scalarEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2488
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !206
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !235  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = load i32, ptr %i.m, align 8, !tbaa !185
  %i.p = or i32 %i.o, 268443650
  store i32 %i.p, ptr %i.m, align 8, !tbaa !185
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.q = phi ptr [ %.pre, %._crit_edge ], [ %i.i, %bb.b ] ; 7 uses
  tail call void @_ZN2c43yml16EventHandlerTree19_remove_speculativeEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2440 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !200
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %_ZN2c43yml16EventHandlerTree12end_doc_explEv.exit, label %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE28_stack_should_pop_on_end_docEv.exit.i

_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE28_stack_should_pop_on_end_docEv.exit.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 2488 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !206
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !235
  %i.y = load i32, ptr %i.x, align 8, !tbaa !185
  %i.z = and i32 %i.y, 16
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %_ZN2c43yml16EventHandlerTree12end_doc_explEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE28_stack_should_pop_on_end_docEv.exit.i
  tail call void @_ZN2c43yml16EventHandlerTree31_remove_speculative_with_parentEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.q)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 2496 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !238 ; 2 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !206 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !tbaa.struct !160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(138) %i.ab, ptr noundef nonnull align 8 dereferenceable(138) %i.ac, i64 56, i1 false), !tbaa.struct !240
  %i.af = load i64, ptr %i.r, align 8, !tbaa !200
  %i.ag = add i64 %i.af, -1                       ; 3 uses
  store i64 %i.ag, ptr %i.r, align 8, !tbaa !200
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 2432
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !201
  %i.aj = icmp ugt i64 %i.ag, 1
  %i.ak = getelementptr [152 x i8], ptr %i.ai, i64 %i.ag ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -304
  %i.am = select i1 %i.aj, ptr %i.al, ptr null
  store ptr %i.am, ptr %i.aa, align 8, !tbaa !238
  %i.an = getelementptr i8, ptr %i.ak, i64 -152
  store ptr %i.an, ptr %i.u, align 8, !tbaa !206
  br label %_ZN2c43yml16EventHandlerTree12end_doc_explEv.exit

_ZN2c43yml16EventHandlerTree12end_doc_explEv.exit: ; preds = %bb.c, %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE28_stack_should_pop_on_end_docEv.exit.i, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 2544
  store i8 0, ptr %i.ao, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE17_handle_directiveENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.c4::yml::Location", align 8 ; 7 uses
  %i.a = alloca [35 x i8], align 16               ; 3 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNK2c415basic_substringIKcE4findEcm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.0811.i.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ] ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.0811.i.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !87
  %i.d = icmp eq i8 %i.c, 35
  br i1 %i.d, label %_ZNK2c415basic_substringIKcE4findEcm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = add nuw i64 %.0811.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.e, %2
  br i1 %exitcond.not.i.i, label %_ZNK2c415basic_substringIKcE4findEcm.exit.thread, label %.lr.ph.i.i, !llvm.loop !6

_ZNK2c415basic_substringIKcE4findEcm.exit:        ; preds = %.lr.ph.i.i
  switch i64 %.0811.i.i, label %.preheader.us.i.i [
    i64 -1, label %_ZNK2c415basic_substringIKcE4findEcm.exit.thread
    i64 0, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit
  ]

_ZNK2c415basic_substringIKcE4findEcm.exit.thread: ; preds = %bb.b, %_ZNK2c415basic_substringIKcE4findEcm.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !169
  tail call void @_ZN2c43yml16EventHandlerTree13add_directiveENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(2545) %i.g, ptr %1, i64 %2)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !169
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2488
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !206  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !210
  %i.m = add i64 %i.l, %2
  store i64 %i.m, ptr %i.k, align 8, !tbaa !210
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !212
  %i.p = add i64 %i.o, %2
  store i64 %i.p, ptr %i.n, align 8, !tbaa !212
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %2
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !138
  %i.u = sub i64 %i.t, %2
  store ptr %i.r, ptr %i.j, align 8, !tbaa !101
  store i64 %i.u, ptr %i.s, align 8, !tbaa !102
  br label %bb.d

.loopexit25.i.i:                                  ; preds = %.preheader.us.i.i, %.preheader.us.i.i
  %.not.i12.i = icmp eq i64 %.01534.us.i.i, 0
  br i1 %.not.i12.i, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %_ZNK2c415basic_substringIKcE4findEcm.exit, %.loopexit25.i.i
  %.01534.us.i.in.i = phi i64 [ %.01534.us.i.i, %.loopexit25.i.i ], [ %.0811.i.i, %_ZNK2c415basic_substringIKcE4findEcm.exit ] ; 2 uses
  %.01534.us.i.i = add i64 %.01534.us.i.in.i, -1  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.01534.us.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !87
  switch i8 %i.w, label %_ZNK2c415basic_substringIKcE5trimrES2_.exit [
    i8 32, label %.loopexit25.i.i
    i8 9, label %.loopexit25.i.i
  ]

_ZNK2c415basic_substringIKcE5trimrES2_.exit:      ; preds = %.loopexit25.i.i, %.preheader.us.i.i, %_ZNK2c415basic_substringIKcE4findEcm.exit
  %.sroa.3.1.i = phi i64 [ %.0811.i.i, %_ZNK2c415basic_substringIKcE4findEcm.exit ], [ 0, %.loopexit25.i.i ], [ %.01534.us.i.in.i, %.preheader.us.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !169
  tail call void @_ZN2c43yml16EventHandlerTree13add_directiveENS_15basic_substringIKcEE(ptr noundef nonnull align 8 dereferenceable(2545) %i.y, ptr nonnull %1, i64 %.sroa.3.1.i)
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !169  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2488
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !206 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !210 ; 2 uses
  %i.ae = add i64 %i.ad, %.0811.i.i
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !210
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !212 ; 2 uses
  %i.ah = add i64 %i.ag, %.0811.i.i
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !212
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !139 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0811.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !138 ; 4 uses
  %i.am = sub i64 %i.al, %.0811.i.i
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !101
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !102
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !102
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload.i, 0
  br i1 %.not.i.i, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread.i, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i

_ZNK2c415basic_substringIKcE11begins_withEc.exit.i: ; preds = %_ZNK2c415basic_substringIKcE5trimrES2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.05.0.copyload.i = load ptr, ptr %i.an, align 8, !tbaa !101
  %i.ao = load i8, ptr %.sroa.05.0.copyload.i, align 1, !tbaa !87
  %i.ap = icmp eq i8 %i.ao, 35
  br i1 %i.ap, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_skip_commentEv.exit, label %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread.i

_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread.i: ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i, %_ZNK2c415basic_substringIKcE5trimrES2_.exit
  %i.aq = ptrtoint ptr %i.aj to i64
  %i.ar = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !87
  switch i8 %i.as, label %bb.c [
    i8 32, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_skip_commentEv.exit
    i8 9, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_skip_commentEv.exit
  ], !prof !286

bb.c:                                             ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(35) %i.a, ptr noundef nonnull align 16 dereferenceable(35) @__const._ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_skip_commentEv.msg, i64 35, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 2456
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 33316, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx3.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 74, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 2480
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !97
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !94
  call void %i.av(ptr noundef nonnull %i.a, i64 noundef 34, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %3, ptr noundef %i.aw), !inline_history !287
  call void @abort() #60
  unreachable

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_skip_commentEv.exit: ; preds = %_ZNK2c415basic_substringIKcE11begins_withEc.exit.i, %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread.i, %_ZNK2c415basic_substringIKcE11begins_withEc.exit.thread.i
  %i.ax = add i64 %i.al, %i.ad
  store i64 %i.ax, ptr %i.ac, align 8, !tbaa !210
  %i.ay = add i64 %i.al, %i.ag
  store i64 %i.ay, ptr %i.af, align 8, !tbaa !212
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  store ptr %i.az, ptr %i.ab, align 8, !tbaa !101
  store i64 0, ptr %i.ak, align 8, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE13_skip_commentEv.exit, %_ZNK2c415basic_substringIKcE4findEcm.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv(ptr noundef nonnull align 8 dereferenceable(2520) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.c = load i64, ptr %i.b, align 8, !tbaa !200
  %i.d = icmp eq i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !221
  %i.i = and i32 %i.h, 32768
  %.not = icmp ne i32 %i.i, 0                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !235
  %i.l = load i32, ptr %i.k, align 8, !tbaa !185  ; 2 uses
  %i.m = and i32 %i.l, 14
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i32 %i.l, 16
  %i.p = icmp eq i32 %i.o, 0
  %or.cond.not10 = or i1 %i.p, %i.n
  %brmerge = select i1 %or.cond.not10, i1 true, i1 %.not
  br i1 %brmerge, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %brmerge7 = select i1 %i.n, i1 true, i1 %.not
  br i1 %brmerge7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @__const._ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE24check_trailing_doc_tokenEv.msg, i64 12, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !94
  call void %i.t(ptr noundef nonnull %i.a, i64 noundef 11, ptr noundef nonnull byval(%"struct.c4::yml::Location") align 8 %i.r, ptr noundef %i.u)
  call void @abort() #60
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE16_maybe_begin_docEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2488 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !221  ; 2 uses
  %i.g = and i32 %i.f, 16384
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 1, ptr %i.i, align 1, !tbaa !196
  %i.j = or disjoint i32 %i.f, 16384
  store i32 %i.j, ptr %i.e, align 8, !tbaa !221
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2440
  %i.l = load i64, ptr %i.k, align 8, !tbaa !200
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_begin2_docEv.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !235
  %i.p = load i32, ptr %i.o, align 8, !tbaa !185
  %i.q = and i32 %i.p, 30
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.i.i, label %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.thread.i.i

_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 137
  %i.s = load i8, ptr %i.r, align 1, !tbaa !216, !range !81, !noundef !90
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.thread.i.i, label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_begin2_docEv.exit

_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.thread.i.i: ; preds = %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.i.i, %bb.c
  tail call void @_ZN2c43yml16EventHandlerTree19_set_root_as_streamEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.b)
  tail call void @_ZN2c43yml16EventHandlerTree5_pushEv(ptr noundef nonnull align 8 dereferenceable(2545) %i.b)
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !235  ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !185
  %i.y = or i32 %i.x, 16
  store i32 %i.y, ptr %i.w, align 8, !tbaa !185
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !169
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 2488
  %.pre1.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !206
  br label %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_begin2_docEv.exit

_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_begin2_docEv.exit: ; preds = %bb.b, %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.i.i, %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.thread.i.i
  %i.z = phi ptr [ %i.d, %bb.b ], [ %i.d, %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.i.i ], [ %.pre1.i, %_ZNK2c43yml17EventHandlerStackINS0_16EventHandlerTreeENS0_21EventHandlerTreeStateEE31_stack_should_push_on_begin_docEv.exit.thread.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  store i64 0, ptr %i.aa, align 8, !tbaa !215
  br label %bb.d

bb.d:                                             ; preds = %_ZN2c43yml11ParseEngineINS0_16EventHandlerTreeEE11_begin2_docEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef zeroext i1 @_ZNK2c43yml11ParseEngineINS0_16EventHandlerTreeEE34_annotations_require_key_containerEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i64, ptr %i.a, align 8, !tbaa !260
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ugt i64 %i.e, 1
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN2c43yml16EventHandlerTree42actually_val_is_first_key_of_new_map_blockEv(ptr noundef nonnull align 8 dereferenceable(2545) %0) local_unnamed_addr #1 comdat align 2 {
end_hunk_4
