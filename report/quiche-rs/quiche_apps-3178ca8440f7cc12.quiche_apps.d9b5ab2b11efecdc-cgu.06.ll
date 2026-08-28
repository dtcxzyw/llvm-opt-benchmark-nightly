Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_apps-3178ca8440f7cc12.quiche_apps.d9b5ab2b11efecdc-cgu.06?download=true
begin_hunk_0_@_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap7collectCsiGRwBGCeC5s_11quiche_apps:bb.a
  %i.bb = and i64 %.sroa.0.0.val.i.i.i36, -2, !dbg !11119 ; 2 uses
    #dbg_value(i64 %i.bb, !4590, !DIExpression(), !11120)
    #dbg_value(i64 %i.bb, !4603, !DIExpression(), !11121)
  %.not17.i.i.i37 = icmp eq i64 %i.bb, 0, !dbg !11123
  br i1 %.not17.i.i.i37, label %.loopexit.i32, label %bb.m, !dbg !11124

bb.m:                                             ; preds = %.critedge.i.i.i34
  %i.bc = inttoptr i64 %i.bb to ptr, !dbg !11125  ; 2 uses
    #dbg_value(ptr %i.bc, !6246, !DIExpression(), !11126)
    #dbg_value(ptr %i.bc, !9693, !DIExpression(), !11101)
  %.val20.i.i.i38 = load ptr, ptr %i.bc, align 8, !dbg !11127, !noalias !11105, !noundef !14
    #dbg_value(ptr undef, !9683, !DIExpression(), !11098)
    #dbg_value(ptr undef, !9680, !DIExpression(), !11094)
  %i.bd = icmp eq ptr %.val20.i.i.i38, %.sroa.0.0.i.i.i35
  br i1 %i.bd, label %.loopexit.i32, label %.critedge.i.i.i34, !dbg !11128

.loopexit.i32:                                    ; preds = %.preheader.i.i.i28, %bb.m, %.critedge.i.i.i34
    #dbg_value(ptr poison, !10430, !DIExpression(), !11129)
  call fastcc void @_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree6removeNtB2_13AtomicLinkOpsECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull %i.ay, ptr noalias nofree noundef align 8 dereferenceable(8) %i.ax), !dbg !11130, !noalias !11131
    #dbg_value(ptr poison, !10442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11090)
    #dbg_value(ptr poison, !10543, !DIExpression(), !11132)
    #dbg_value(ptr %i.ay, !10548, !DIExpression(), !11132)
    #dbg_value(i64 56, !10551, !DIExpression(), !11134)
    #dbg_value(ptr %i.ay, !10554, !DIExpression(), !11134)
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !11136 ; 2 uses
    #dbg_value(ptr poison, !9744, !DIExpression(), !11137)
    #dbg_value(ptr %i.be, !9752, !DIExpression(), !11137)
    #dbg_value(ptr %i.be, !9755, !DIExpression(), !11139)
    #dbg_value(ptr %i.be, !9763, !DIExpression(), !11141)
    #dbg_value(ptr %i.be, !9776, !DIExpression(), !11143)
    #dbg_declare(ptr poison, !9769, !DIExpression(), !11145)
  %i.bf = invoke noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyECsiGRwBGCeC5s_11quiche_apps(ptr noundef nonnull %i.be)
          to label %.noexc39 unwind label %bb.h, !dbg !11146

.noexc39:                                         ; preds = %.loopexit.i32
    #dbg_value(i64 %i.bf, !9770, !DIExpression(), !11147)
    #dbg_value(i64 %i.bf, !9781, !DIExpression(), !11143)
  %i.bg = sub nsw i64 0, %i.bf, !dbg !11148
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %i.bg, !dbg !11150 ; 2 uses
  store ptr %i.bh, ptr %i.a, align 8, !dbg !11151, !noalias !11081
    #dbg_value(ptr %i.a, !9792, !DIExpression(), !11152)
    #dbg_value(ptr %i.a, !8480, !DIExpression(), !11154)
    #dbg_value(ptr %i.a, !8492, !DIExpression(), !11156)
    #dbg_value(i64 1, !8509, !DIExpression(), !11158)
    #dbg_value(i8 1, !8516, !DIExpression(), !11158)
    #dbg_value(i64 1, !8519, !DIExpression(), !11160)
    #dbg_value(i8 1, !8525, !DIExpression(), !11160)
    #dbg_value(ptr %i.bh, !8515, !DIExpression(), !11162)
    #dbg_value(ptr %i.bh, !8524, !DIExpression(), !11160)
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !dbg !11163, !noalias !11164
  %i.bj = icmp eq i64 %i.bi, 1, !dbg !11171
  br i1 %i.bj, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEEECsiGRwBGCeC5s_11quiche_apps.exit.i33, !dbg !11171

bb.n:                                             ; preds = %.noexc39
    #dbg_value(i8 2, !8540, !DIExpression(), !11172)
  fence acquire, !dbg !11174
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEEECsiGRwBGCeC5s_11quiche_apps.exit.i33 unwind label %bb.h, !dbg !11175

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEEECsiGRwBGCeC5s_11quiche_apps.exit.i33: ; preds = %bb.n, %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11176, !noalias !11081
  br label %_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap16remove_flushableCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !11177

_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap16remove_flushableCsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEEECsiGRwBGCeC5s_11quiche_apps.exit.i33, %_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap15remove_writableCsiGRwBGCeC5s_11quiche_apps.exit
    #dbg_value(ptr %0, !10712, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !11178)
    #dbg_value(ptr %0, !10722, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !11179)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11180
  %i.bl = invoke noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCs3f36owOmepS_6quiche6stream14StreamIdHasherEE6insertCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef %1)
          to label %bb.o unwind label %bb.h, !dbg !11181 ; 0 uses

bb.o:                                             ; preds = %_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap16remove_flushableCsiGRwBGCeC5s_11quiche_apps.exit
    #dbg_value(ptr %i.e, !8450, !DIExpression(), !11182)
    #dbg_value(ptr %i.e, !8454, !DIExpression(), !11184)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 80, !dbg !11186
    #dbg_value(ptr %i.bm, !8465, !DIExpression(), !11187)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8recv_buf7RecvBufECsiGRwBGCeC5s_11quiche_apps.exit.i unwind label %bb.p, !dbg !11189

bb.p:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 128, !dbg !11190
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8send_buf7SendBufECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(216) %i.bo) #21
          to label %bb.q unwind label %bb.v, !dbg !11190

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8recv_buf7RecvBufECsiGRwBGCeC5s_11quiche_apps.exit.i: ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 128, !dbg !11190
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8send_buf7SendBufECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(216) %i.bp)
          to label %bb.t unwind label %bb.s, !dbg !11190

bb.q:                                             ; preds = %bb.s, %bb.p
  %.pn.i = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %i.bn, %bb.p ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11191), !dbg !11190
    #dbg_value(ptr %i.m, !8480, !DIExpression(), !11194)
  call void @llvm.experimental.noalias.scope.decl(metadata !11196), !dbg !11199
    #dbg_value(ptr %i.m, !8492, !DIExpression(), !11200)
    #dbg_value(ptr %i.m, !8499, !DIExpression(), !11202)
    #dbg_value(i64 1, !8509, !DIExpression(), !11204)
    #dbg_value(i8 1, !8516, !DIExpression(), !11204)
    #dbg_value(i64 1, !8519, !DIExpression(), !11206)
    #dbg_value(i8 1, !8525, !DIExpression(), !11206)
  %i.bq = load ptr, ptr %i.m, align 8, !dbg !11208, !alias.scope !11210, !nonnull !14, !noundef !14
    #dbg_value(ptr %i.bq, !8515, !DIExpression(), !11213)
    #dbg_value(ptr %i.bq, !8524, !DIExpression(), !11206)
  %i.br = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !dbg !11214, !noalias !11215
  %i.bs = icmp eq i64 %i.br, 1, !dbg !11216
  br i1 %i.bs, label %bb.r, label %common.resume, !dbg !11216

bb.r:                                             ; preds = %bb.q
    #dbg_value(i8 2, !8540, !DIExpression(), !11217)
  fence acquire, !dbg !11219
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #22
          to label %common.resume unwind label %bb.v, !dbg !11220

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8recv_buf7RecvBufECsiGRwBGCeC5s_11quiche_apps.exit.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8recv_buf7RecvBufECsiGRwBGCeC5s_11quiche_apps.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11221), !dbg !11190
    #dbg_value(ptr %i.m, !8480, !DIExpression(), !11224)
  call void @llvm.experimental.noalias.scope.decl(metadata !11226), !dbg !11229
    #dbg_value(ptr %i.m, !8492, !DIExpression(), !11230)
    #dbg_value(ptr %i.m, !8499, !DIExpression(), !11232)
    #dbg_value(i64 1, !8509, !DIExpression(), !11234)
    #dbg_value(i8 1, !8516, !DIExpression(), !11234)
    #dbg_value(i64 1, !8519, !DIExpression(), !11236)
    #dbg_value(i8 1, !8525, !DIExpression(), !11236)
  %i.bu = load ptr, ptr %i.m, align 8, !dbg !11238, !alias.scope !11240, !nonnull !14, !noundef !14
    #dbg_value(ptr %i.bu, !8515, !DIExpression(), !11241)
    #dbg_value(ptr %i.bu, !8524, !DIExpression(), !11236)
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !dbg !11242, !noalias !11243
  %i.bw = icmp eq i64 %i.bv, 1, !dbg !11244
  br i1 %i.bw, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6stream6StreamECsiGRwBGCeC5s_11quiche_apps.exit, !dbg !11244

bb.u:                                             ; preds = %bb.t
    #dbg_value(i8 2, !8540, !DIExpression(), !11245)
  fence acquire, !dbg !11247
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #22, !dbg !11248
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6stream6StreamECsiGRwBGCeC5s_11quiche_apps.exit, !dbg !11248

bb.v:                                             ; preds = %bb.r, %bb.p
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !11190
  unreachable, !dbg !11190

common.resume:                                    ; preds = %bb.h, %bb.q, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.q ], [ %.pn.i, %bb.r ], [ %i.ad, %bb.h ]
  resume { ptr, i32 } %common.resume.op, !dbg !10699

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6stream6StreamECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10918
  ret void, !dbg !11249

bb.w:                                             ; preds = %bb.h
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !11250
  unreachable, !dbg !11250
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap8readableCsiGRwBGCeC5s_11quiche_apps(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11251 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !11304, !DIExpression(), !11305)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 296, !dbg !11306 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11307), !dbg !11310
    #dbg_value(ptr %i.c, !11311, !DIExpression(), !11327)
    #dbg_value(ptr poison, !11323, !DIExpression(), !11329)
    #dbg_value(ptr poison, !11330, !DIExpression(), !11338)
    #dbg_value(ptr poison, !11340, !DIExpression(), !11348)
  %i.d = load ptr, ptr %i.c, align 8, !dbg !11350, !alias.scope !11307, !noalias !11351, !noundef !14 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !11350
  br i1 %.not.i, label %_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamReadablePriorityAdapterE4iterCsiGRwBGCeC5s_11quiche_apps.exit, label %.preheader13.i, !dbg !11353

.preheader13.i:                                   ; preds = %bb.a, %.preheader13.i
  %.sroa.03.0.i = phi ptr [ %.sroa.03.0.val.i, %.preheader13.i ], [ %i.d, %bb.a ], !dbg !11354 ; 2 uses
    #dbg_value(ptr %.sroa.03.0.i, !11336, !DIExpression(), !11355)
    #dbg_value(ptr %.sroa.03.0.i, !11334, !DIExpression(), !11356)
    #dbg_value(ptr %.sroa.03.0.i, !11333, !DIExpression(), !11338)
  %.sroa.03.0.val.i = load ptr, ptr %.sroa.03.0.i, align 8, !dbg !11357, !noalias !11358, !noundef !14 ; 2 uses
  %.not11.i = icmp eq ptr %.sroa.03.0.val.i, null, !dbg !11359
  br i1 %.not11.i, label %.preheader.i, label %.preheader13.i, !dbg !11360

.preheader.i:                                     ; preds = %.preheader13.i, %.preheader.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.val.i, %.preheader.i ], [ %i.d, %.preheader13.i ], !dbg !11361 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i, !11346, !DIExpression(), !11362)
    #dbg_value(ptr %.sroa.0.0.i, !11344, !DIExpression(), !11363)
    #dbg_value(ptr %.sroa.0.0.i, !11343, !DIExpression(), !11348)
    #dbg_value(ptr %.sroa.0.0.i, !11325, !DIExpression(), !11361)
  %i.e = getelementptr i8, ptr %.sroa.0.0.i, i64 8, !dbg !11364
  %.sroa.0.0.val.i = load ptr, ptr %i.e, align 8, !dbg !11364, !noalias !11358, !noundef !14 ; 2 uses
  %.not12.i = icmp eq ptr %.sroa.0.0.val.i, null, !dbg !11365
  br i1 %.not12.i, label %_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamReadablePriorityAdapterE4iterCsiGRwBGCeC5s_11quiche_apps.exit, label %.preheader.i, !dbg !11366

_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamReadablePriorityAdapterE4iterCsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %.preheader.i, %bb.a
  %.sroa.6.0.a = phi ptr [ null, %bb.a ], [ %.sroa.0.0.i, %.preheader.i ], !dbg !11329
  %.sroa.4.0 = phi ptr [ null, %bb.a ], [ %.sroa.03.0.i, %.preheader.i ], !dbg !11329
    #dbg_value(ptr %i.c, !11367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11409)
    #dbg_value(ptr %i.c, !11411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11420)
    #dbg_value(ptr %.sroa.4.0, !11367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11409)
    #dbg_value(ptr %.sroa.4.0, !11411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11420)
    #dbg_value(ptr %.sroa.6.0.a, !11367, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11409)
    #dbg_value(ptr %.sroa.6.0.a, !11411, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11420)
    #dbg_declare(ptr %i.b, !11416, !DIExpression(), !11422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11423, !noalias !11424
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !11428
  store i64 0, ptr %i.f, align 8, !dbg !11428, !noalias !11424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11434, !noalias !11424
  store ptr %i.c, ptr %i.a, align 8, !dbg !11434, !noalias !11435
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11434
  store ptr %.sroa.4.0, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !11434, !noalias !11435
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11434
  store ptr %.sroa.6.0.a, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !11434, !noalias !11435
  invoke void @_RINvXst_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecAyj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendyE6extendINtNtNtBV_8adapters3map3MapINtNtCsazSMmbOrWdo_21intrusive_collections6rbtree4IterNtNtCs3f36owOmepS_6quiche6stream29StreamReadablePriorityAdapterENCNvMs0_B3b_NtB3b_9StreamMap8readable0EECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RINvXss_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecAyj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtBV_8adapters3map3MapINtNtCsazSMmbOrWdo_21intrusive_collections6rbtree4IterNtNtCs3f36owOmepS_6quiche6stream29StreamReadablePriorityAdapterENCNvMs0_B3l_NtB3l_9StreamMap8readable0EECsiGRwBGCeC5s_11quiche_apps.exit unwind label %bb.b, !dbg !11436, !noalias !11424

bb.b:                                             ; preds = %_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamReadablePriorityAdapterE4iterCsiGRwBGCeC5s_11quiche_apps.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !11437, !DIExpression(), !11445)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8SmallVecAyj8_EECsiGRwBGCeC5s_11quiche_apps.exit.i unwind label %bb.c, !dbg !11447, !noalias !11424

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !11448, !noalias !11424
  unreachable, !dbg !11448

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8SmallVecAyj8_EECsiGRwBGCeC5s_11quiche_apps.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g, !dbg !11448

_RINvXss_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecAyj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtBV_8adapters3map3MapINtNtCsazSMmbOrWdo_21intrusive_collections6rbtree4IterNtNtCs3f36owOmepS_6quiche6stream29StreamReadablePriorityAdapterENCNvMs0_B3l_NtB3l_9StreamMap8readable0EECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamReadablePriorityAdapterE4iterCsiGRwBGCeC5s_11quiche_apps.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11449, !noalias !11424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !11450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11451, !noalias !11424
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11452
  store i64 0, ptr %i.i, align 8, !dbg !11452
  ret void, !dbg !11453
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs3f36owOmepS_6quiche6streamNtB5_9StreamMap8writableCsiGRwBGCeC5s_11quiche_apps(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11454 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !11457, !DIExpression(), !11458)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304, !dbg !11459 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11460), !dbg !11463
    #dbg_value(ptr %i.c, !11464, !DIExpression(), !11480)
    #dbg_value(ptr poison, !11476, !DIExpression(), !11482)
    #dbg_value(ptr poison, !11483, !DIExpression(), !11491)
    #dbg_value(ptr poison, !11493, !DIExpression(), !11501)
  %i.d = load ptr, ptr %i.c, align 8, !dbg !11503, !alias.scope !11460, !noalias !11504, !noundef !14 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !11503
  br i1 %.not.i, label %_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamWritablePriorityAdapterE4iterCsiGRwBGCeC5s_11quiche_apps.exit, label %.preheader13.i, !dbg !11506

.preheader13.i:                                   ; preds = %bb.a, %.preheader13.i
  %.sroa.03.0.i = phi ptr [ %.sroa.03.0.val.i, %.preheader13.i ], [ %i.d, %bb.a ], !dbg !11507 ; 2 uses
    #dbg_value(ptr %.sroa.03.0.i, !11489, !DIExpression(), !11508)
    #dbg_value(ptr %.sroa.03.0.i, !11487, !DIExpression(), !11509)
    #dbg_value(ptr %.sroa.03.0.i, !11486, !DIExpression(), !11491)
  %.sroa.03.0.val.i = load ptr, ptr %.sroa.03.0.i, align 8, !dbg !11510, !noalias !11511, !noundef !14 ; 2 uses
  %.not11.i = icmp eq ptr %.sroa.03.0.val.i, null, !dbg !11512
  br i1 %.not11.i, label %.preheader.i, label %.preheader13.i, !dbg !11513

.preheader.i:                                     ; preds = %.preheader13.i, %.preheader.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.val.i, %.preheader.i ], [ %i.d, %.preheader13.i ], !dbg !11514 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i, !11499, !DIExpression(), !11515)
    #dbg_value(ptr %.sroa.0.0.i, !11497, !DIExpression(), !11516)
    #dbg_value(ptr %.sroa.0.0.i, !11496, !DIExpression(), !11501)
    #dbg_value(ptr %.sroa.0.0.i, !11478, !DIExpression(), !11514)
  %i.e = getelementptr i8, ptr %.sroa.0.0.i, i64 8, !dbg !11517
  %.sroa.0.0.val.i = load ptr, ptr %i.e, align 8, !dbg !11517, !noalias !11511, !noundef !14 ; 2 uses
  %.not12.i = icmp eq ptr %.sroa.0.0.val.i, null, !dbg !11518
  br i1 %.not12.i, label %_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamWritablePriorityAdapterE4iterCsiGRwBGCeC5s_11quiche_apps.exit, label %.preheader.i, !dbg !11519

_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamWritablePriorityAdapterE4iterCsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %.preheader.i, %bb.a
  %.sroa.6.0.a = phi ptr [ null, %bb.a ], [ %.sroa.0.0.i, %.preheader.i ], !dbg !11482
  %.sroa.4.0 = phi ptr [ null, %bb.a ], [ %.sroa.03.0.i, %.preheader.i ], !dbg !11482
    #dbg_value(ptr %i.c, !11520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11544)
    #dbg_value(ptr %i.c, !11546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11553)
    #dbg_value(ptr %.sroa.4.0, !11520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11544)
    #dbg_value(ptr %.sroa.4.0, !11546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11553)
    #dbg_value(ptr %.sroa.6.0.a, !11520, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11544)
    #dbg_value(ptr %.sroa.6.0.a, !11546, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11553)
    #dbg_declare(ptr %i.b, !11549, !DIExpression(), !11555)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11556, !noalias !11557
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !11561
  store i64 0, ptr %i.f, align 8, !dbg !11561, !noalias !11557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11564, !noalias !11557
  store ptr %i.c, ptr %i.a, align 8, !dbg !11564, !noalias !11565
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11564
  store ptr %.sroa.4.0, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !11564, !noalias !11565
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11564
  store ptr %.sroa.6.0.a, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !11564, !noalias !11565
  invoke void @_RINvXst_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecAyj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendyE6extendINtNtNtBV_8adapters3map3MapINtNtCsazSMmbOrWdo_21intrusive_collections6rbtree4IterNtNtCs3f36owOmepS_6quiche6stream29StreamWritablePriorityAdapterENCNvMs0_B3b_NtB3b_9StreamMap8writable0EECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RINvXss_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecAyj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtBV_8adapters3map3MapINtNtCsazSMmbOrWdo_21intrusive_collections6rbtree4IterNtNtCs3f36owOmepS_6quiche6stream29StreamWritablePriorityAdapterENCNvMs0_B3l_NtB3l_9StreamMap8writable0EECsiGRwBGCeC5s_11quiche_apps.exit unwind label %bb.b, !dbg !11566, !noalias !11557

bb.b:                                             ; preds = %_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamWritablePriorityAdapterE4iterCsiGRwBGCeC5s_11quiche_apps.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !11437, !DIExpression(), !11567)
  invoke void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecAyj8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8SmallVecAyj8_EECsiGRwBGCeC5s_11quiche_apps.exit.i unwind label %bb.c, !dbg !11569, !noalias !11557

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !dbg !11570, !noalias !11557
  unreachable, !dbg !11570

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs5kGgRUzsVpH_8smallvec8SmallVecAyj8_EECsiGRwBGCeC5s_11quiche_apps.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.g, !dbg !11570

_RINvXss_Cs5kGgRUzsVpH_8smallvecINtB6_8SmallVecAyj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtBV_8adapters3map3MapINtNtCsazSMmbOrWdo_21intrusive_collections6rbtree4IterNtNtCs3f36owOmepS_6quiche6stream29StreamWritablePriorityAdapterENCNvMs0_B3l_NtB3l_9StreamMap8writable0EECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %_RNvMst_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamWritablePriorityAdapterE4iterCsiGRwBGCeC5s_11quiche_apps.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11571, !noalias !11557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !11572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11573, !noalias !11557
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11574
  store i64 0, ptr %i.i, align 8, !dbg !11574
  ret void, !dbg !11575
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtCs3f36owOmepS_6quiche6streamNtB5_6Stream11is_completeCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(368) %0) unnamed_addr #0 !dbg !11576 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !11579, !DIExpression(), !11580)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !11581
  %i.d = load i8, ptr %i.c, align 8, !dbg !11581, !range !3647, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1, !dbg !11581
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !11582

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 361, !dbg !11583
  %i.g = load i8, ptr %i.f, align 1, !dbg !11583, !range !3647, !noundef !14
  %i.h = trunc nuw i8 %i.g to i1, !dbg !11583
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !11582

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !11584, !DIExpression(), !11592)
    #dbg_value(ptr %0, !11594, !DIExpression(), !11607)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !11610
  %i.j = load i64, ptr %i.i, align 8, !dbg !11610, !noundef !14
    #dbg_value(ptr poison, !11600, !DIExpression(), !11611)
  %i.k = load i64, ptr %0, align 8, !dbg !11612, !range !3643, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11612
  %i.m = trunc nuw i64 %i.k to i1, !dbg !11613
  %i.n = load i64, ptr %i.l, align 8
  %i.o = icmp eq i64 %i.n, %i.j
  %or.cond5 = select i1 %i.m, i1 %i.o, i1 false, !dbg !11613
    #dbg_value(ptr %0, !11614, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !11626)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load i64, ptr %i.p, align 8, !range !3643
  %i.r = trunc nuw i64 %i.q to i1
  %or.cond12 = select i1 %or.cond5, i1 %i.r, i1 false, !dbg !11613
  br i1 %or.cond12, label %bb.h, label %bb.f, !dbg !11613

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !11584, !DIExpression(), !11628)
    #dbg_value(ptr %0, !11594, !DIExpression(), !11630)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !11632
  %i.t = load i64, ptr %i.s, align 8, !dbg !11632, !noundef !14
    #dbg_value(ptr poison, !11600, !DIExpression(), !11633)
  %i.u = load i64, ptr %0, align 8, !dbg !11634, !range !3643, !noundef !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11634
  %i.w = trunc nuw i64 %i.u to i1, !dbg !11635
  %i.x = load i64, ptr %i.v, align 8
  %i.y = icmp eq i64 %i.x, %i.t
  %or.cond = select i1 %i.w, i1 %i.y, i1 false, !dbg !11635
  br label %bb.f, !dbg !11636

bb.e:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !11614, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !11637)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !11639
  %i.aa = load i64, ptr %i.z, align 8, !dbg !11639, !range !3643, !noundef !14
  %i.ab = trunc nuw i64 %i.aa to i1, !dbg !11640
  br i1 %i.ab, label %bb.g, label %bb.f, !dbg !11640

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.c, %bb.e, %bb.d
  %.sroa.0.0 = phi i1 [ %i.ag, %bb.g ], [ false, %bb.c ], [ false, %bb.e ], [ %i.al, %bb.h ], [ %or.cond, %bb.d ], !dbg !11580
  ret i1 %.sroa.0.0, !dbg !11641

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !11639
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !11642, !noundef !14
    #dbg_value(i64 %i.ad, !11622, !DIExpression(), !11643)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !11644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11645
  store i64 0, ptr %i.b, align 8, !dbg !11645
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11645
  store i64 %i.ad, ptr %i.af, align 8, !dbg !11645
  %i.ag = call noundef zeroext i1 @_RNvXs2_NtCs3f36owOmepS_6quiche6rangesNtB5_8RangeSetINtNtCskKLDkoKarTP_4core3cmp9PartialEqINtNtNtBS_3ops5range5RangeyEE2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !dbg !11644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11646
  br label %bb.f, !dbg !11647

bb.h:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !11648
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !11649, !noundef !14
    #dbg_value(i64 %i.ai, !11624, !DIExpression(), !11650)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !11651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11652
  store i64 0, ptr %i.a, align 8, !dbg !11652
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11652
  store i64 %i.ai, ptr %i.ak, align 8, !dbg !11652
  %i.al = call noundef zeroext i1 @_RNvXs2_NtCs3f36owOmepS_6quiche6rangesNtB5_8RangeSetINtNtCskKLDkoKarTP_4core3cmp9PartialEqINtNtNtBS_3ops5range5RangeyEE2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !11651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11653
  br label %bb.f, !dbg !11654
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyyEE13new_uninit_inCsiGRwBGCeC5s_11quiche_apps() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11655 {
bb.a:
    #dbg_declare(ptr poison, !11673, !DIExpression(), !11679)
    #dbg_value(i64 8, !11674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11680)
    #dbg_value(i64 288, !11674, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11680)
    #dbg_declare(ptr poison, !11681, !DIExpression(), !11715)
    #dbg_value(i64 8, !11709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11717)
    #dbg_value(i64 288, !11709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11717)
    #dbg_value(ptr poison, !11718, !DIExpression(), !11723)
    #dbg_value(ptr poison, !11725, !DIExpression(), !11730)
    #dbg_value(i64 8, !11722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11723)
    #dbg_value(i64 8, !11728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11730)
    #dbg_value(i64 288, !11722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11723)
    #dbg_value(i64 288, !11728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11730)
    #dbg_value(i8 0, !11729, !DIExpression(), !11730)
    #dbg_value(i64 8, !9258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11732)
    #dbg_value(i64 8, !9290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11734)
    #dbg_value(i64 288, !9258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11732)
    #dbg_value(i64 288, !9290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11734)
    #dbg_value(i1 false, !9264, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11732)
    #dbg_value(i64 288, !9265, !DIExpression(), !11736)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !dbg !11737
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 104, 289) 288, i64 noundef 8) #24, !dbg !11738 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !11739
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !11740, !prof !9303

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #25, !dbg !11741
  unreachable, !dbg !11741

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !11742
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyyEE13new_uninit_inCsiGRwBGCeC5s_11quiche_apps() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11743 {
bb.a:
    #dbg_declare(ptr poison, !11760, !DIExpression(), !11766)
    #dbg_value(i64 8, !11761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11767)
    #dbg_value(i64 192, !11761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11767)
    #dbg_declare(ptr poison, !11768, !DIExpression(), !11802)
    #dbg_value(i64 8, !11796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11804)
    #dbg_value(i64 192, !11796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11804)
    #dbg_value(ptr poison, !11718, !DIExpression(), !11805)
    #dbg_value(ptr poison, !11725, !DIExpression(), !11807)
    #dbg_value(i64 8, !11722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11805)
    #dbg_value(i64 8, !11728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11807)
    #dbg_value(i64 192, !11722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11805)
    #dbg_value(i64 192, !11728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11807)
    #dbg_value(i8 0, !11729, !DIExpression(), !11807)
    #dbg_value(i64 8, !9258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11809)
    #dbg_value(i64 8, !9290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11811)
    #dbg_value(i64 192, !9258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11809)
    #dbg_value(i64 192, !9290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11811)
    #dbg_value(i1 false, !9264, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11809)
    #dbg_value(i64 192, !9265, !DIExpression(), !11813)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !dbg !11814
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 104, 289) 192, i64 noundef 8) #24, !dbg !11815 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !11816
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !11817, !prof !9303

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #25, !dbg !11818
  unreachable, !dbg !11818

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !11819
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsu_NtCsazSMmbOrWdo_21intrusive_collections6rbtreeINtB5_6RBTreeNtNtCs3f36owOmepS_6quiche6stream29StreamReadablePriorityAdapterE6insertCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !11820 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !11826, !DIExpression(), !11844)
    #dbg_value(ptr %1, !11827, !DIExpression(), !11844)
    #dbg_declare(ptr %i.c, !11834, !DIExpression(), !11845)
    #dbg_value(ptr %1, !11846, !DIExpression(), !11858)
    #dbg_value(ptr poison, !11853, !DIExpression(), !11858)
    #dbg_value(ptr poison, !11860, !DIExpression(), !11866)
    #dbg_value(ptr %1, !11865, !DIExpression(), !11866)
    #dbg_value(ptr %1, !11868, !DIExpression(), !11874)
end_hunk_0
