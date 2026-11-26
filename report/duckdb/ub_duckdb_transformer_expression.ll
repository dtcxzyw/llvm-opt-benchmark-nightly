Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_transformer_expression?download=true
inline.NumInlined: 4303
inline.NumDeleted: 1846
begin_hunk_0_@_ZN6duckdb11Transformer20TransformArrayAccessERN17duckdb_libpgquery14PGAIndirectionE:bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.cd

bb.e:                                             ; preds = %.lr.ph, %bb.cb
  %.052444 = phi ptr [ %.052441, %.lr.ph ], [ %.052, %bb.cb ] ; 2 uses
  %.051443 = phi i64 [ 0, %.lr.ph ], [ %i.jk, %bb.cb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.y = load ptr, ptr %.052444, align 8, !tbaa !188
  store ptr %i.y, ptr %13, align 8
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %13, align 8, !tbaa !182   ; 7 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !190
  switch i32 %i.aa, label %bb.bv [
    i32 361, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
    i32 220, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i240
    i32 359, label %bb.bc
  ]

bb.g:                                             ; preds = %bb.e, %bb.ca
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !192
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.59.0.copyload = load ptr, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !537 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !537 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !537 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ac = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %.noexc90 unwind label %bb.au  ; 9 uses

.noexc90:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = load i64, ptr %0, align 8, !tbaa !180
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !180
  store ptr null, ptr %0, align 8, !tbaa !180
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ac, ptr %14, align 8, !tbaa !195
  store ptr %i.ae, ptr %i.p, align 8, !tbaa !196
  store ptr %i.ae, ptr %i.q, align 8, !tbaa !197
  %i.af = trunc i8 %.sroa.4.0.copyload to i1
  br i1 %i.af, label %bb.h, label %bb.am

bb.h:                                             ; preds = %.noexc90
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 noundef zeroext 13)
          to label %bb.i unwind label %bb.y

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb5Value4LISTERKNS_11LogicalTypeENS_6vectorIS0_Lb1ESaIS0_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull %18)
          to label %bb.j unwind label %bb.z

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ag = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22
          to label %.noexc91 unwind label %bb.aa, !noalias !538 ; 3 uses

.noexc91:                                         ; preds = %bb.j
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %16) #21, !noalias !538
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.ag, ptr noundef nonnull %10)
          to label %bb.l unwind label %bb.k, !noalias !538

bb.k:                                             ; preds = %.noexc91
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #21, !noalias !538
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #23, !noalias !538
  br label %.body

bb.l:                                             ; preds = %.noexc91
  store ptr %i.ag, ptr %15, align 8, !tbaa !199, !alias.scope !538
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #21, !noalias !538
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #21
  %i.ai = load ptr, ptr %18, align 8, !tbaa !202  ; 3 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !203 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.ai, %bb.l ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %18, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.l
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ai, %bb.l ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.al) #23
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, %bb.m
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %.not70 = icmp eq ptr %.sroa.59.0.copyload, null
  br i1 %.not70, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.59.0.copyload, ptr %9, align 8, !noalias !539
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc92 unwind label %bb.ad, !noalias !539

.noexc92:                                         ; preds = %bb.n
  %i.am = load ptr, ptr %9, align 8, !tbaa !182, !noalias !539
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.am)
          to label %_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE.exit94 unwind label %bb.ad, !inline_history !183

_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE.exit94: ; preds = %.noexc92
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i96

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit
  %i.an = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ConstantExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.p unwind label %bb.ad      ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !185
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(120) %i.an)
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i96 unwind label %bb.ad

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i96: ; preds = %_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE.exit94, %bb.p
  %i.ar = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22
          to label %.lr.ph.i.i.i.i.i.i.i100.preheader unwind label %.loopexit.split-lp405 ; 8 uses

.lr.ph.i.i.i.i.i.i.i100.preheader:                ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i96
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %19, align 8, !tbaa !180
  store i64 %i.at, ptr %i.as, align 8, !tbaa !180
  store ptr null, ptr %19, align 8, !tbaa !180
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !180, !alias.scope !541
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !180, !alias.scope !540
  store ptr null, ptr %i.ac, align 8, !tbaa !180, !alias.scope !541
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @_ZdlPv(ptr noundef nonnull %i.ac) #23
  store ptr %i.ar, ptr %14, align 8, !tbaa !195
  store ptr %i.av, ptr %i.p, align 8, !tbaa !196
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.aw, ptr %i.q, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %.not71 = icmp eq ptr %.sroa.7.0.copyload, null
  br i1 %.not71, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i100.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %.sroa.7.0.copyload, ptr %8, align 8, !noalias !542
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc111 unwind label %bb.ae, !noalias !542

.noexc111:                                        ; preds = %bb.q
  %i.ax = load ptr, ptr %8, align 8, !tbaa !182, !noalias !542
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %20, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ax)
          to label %_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE.exit113 unwind label %bb.ae, !inline_history !183

_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE.exit113: ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i115

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i100.preheader
  %i.ay = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ConstantExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.s unwind label %bb.ae      ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !185
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %20, ptr noundef nonnull align 8 dereferenceable(120) %i.ay)
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i115 unwind label %bb.ae

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i115: ; preds = %_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE.exit113, %bb.s
  %i.bc = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %.lr.ph.i.i.i.i.i.i.i119.preheader unwind label %.loopexit.split-lp410 ; 6 uses

.lr.ph.i.i.i.i.i.i.i119.preheader:                ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i115
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %20, align 8, !tbaa !180
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !180
  store ptr null, ptr %20, align 8, !tbaa !180
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %wide.load578 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !180, !alias.scope !544
  store <2 x i64> %wide.load578, ptr %i.bc, align 8, !tbaa !180, !alias.scope !543
  store <2 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !180, !alias.scope !544
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 7 uses
  call void @_ZdlPv(ptr noundef nonnull %i.ar) #23
  store ptr %i.bc, ptr %14, align 8, !tbaa !195
  store ptr %i.bf, ptr %i.p, align 8, !tbaa !196
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.bg, ptr %i.q, align 8, !tbaa !197
  %.not72 = icmp eq ptr %.sroa.10.0.copyload, null
  br i1 %.not72, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i119.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.10.0.copyload, ptr %7, align 8, !noalias !545
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc130 unwind label %bb.af, !noalias !545

.noexc130:                                        ; preds = %bb.t
  %i.bh = load ptr, ptr %7, align 8, !tbaa !182, !noalias !545
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %21, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bh)
          to label %bb.u unwind label %bb.af, !inline_history !183

bb.u:                                             ; preds = %.noexc130
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bi = load ptr, ptr %i.q, align 8, !tbaa !197
  %.not.i.i133 = icmp eq ptr %i.bf, %i.bi
  br i1 %.not.i.i133, label %bb.v, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148.thread: ; preds = %bb.u
  %i.bj = load i64, ptr %21, align 8, !tbaa !180
  store i64 %i.bj, ptr %i.bf, align 8, !tbaa !180
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  store ptr %i.bk, ptr %i.p, align 8, !tbaa !196
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit151

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %14, align 8, !tbaa !195  ; 10 uses
  %i.bm = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.w, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i134

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.noexc146 unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc146:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i134: ; preds = %bb.v
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i135 = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i135, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i136 = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i136)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #22
          to label %.noexc147 unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc147:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i134
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  %i.by = load i64, ptr %21, align 8, !tbaa !180
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !180
  store ptr null, ptr %21, align 8, !tbaa !180
  %.not10.i.i.i.i.i.i.i137 = icmp eq ptr %i.bl, %i.bf
  br i1 %.not10.i.i.i.i.i.i.i137, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i142, label %.lr.ph.i.i.i.i.i.i.i138.preheader

.lr.ph.i.i.i.i.i.i.i138.preheader:                ; preds = %.noexc147
  %i.bz = add i64 %i.bm, -8
  %i.ca = sub i64 %i.bz, %i.bn                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ca, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i138.preheader580, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i138.preheader
  %i.cd = and i64 %i.ca, -8
  %i.ce = add i64 %i.cd, 8                        ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  %bound0 = icmp ult ptr %i.bw, %i.cg
  %bound1 = icmp ult ptr %i.bl, %i.cf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i138.preheader580, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cc, 4611686018427387900     ; 3 uses
  %i.ch = shl i64 %n.vec, 3                       ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bw, i64 %i.ch  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bl, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.ck ; 2 uses
  %next.gep572 = getelementptr i8, ptr %i.bl, i64 %i.ck ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.cl = getelementptr i8, ptr %next.gep572, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep572, align 8, !tbaa !180, !alias.scope !548
  %wide.load573 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !180, !alias.scope !548
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !180, !alias.scope !549, !noalias !550
  store <2 x i64> %wide.load573, ptr %i.cm, align 8, !tbaa !180, !alias.scope !549, !noalias !550
  store <2 x ptr> splat (ptr null), ptr %next.gep572, align 8, !tbaa !180, !alias.scope !548
  store <2 x ptr> splat (ptr null), ptr %i.cl, align 8, !tbaa !180, !alias.scope !548
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !514

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i142, label %.lr.ph.i.i.i.i.i.i.i138.preheader580

.lr.ph.i.i.i.i.i.i.i138.preheader580:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i138.preheader, %middle.block
  %.012.i.i.i.i.i.i.i139.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i138.preheader ], [ %i.ci, %middle.block ]
  %.0911.i.i.i.i.i.i.i140.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i138.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i138

.lr.ph.i.i.i.i.i.i.i138:                          ; preds = %.lr.ph.i.i.i.i.i.i.i138.preheader580, %.lr.ph.i.i.i.i.i.i.i138
  %.012.i.i.i.i.i.i.i139 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i138 ], [ %.012.i.i.i.i.i.i.i139.ph, %.lr.ph.i.i.i.i.i.i.i138.preheader580 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i140 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i138 ], [ %.0911.i.i.i.i.i.i.i140.ph, %.lr.ph.i.i.i.i.i.i.i138.preheader580 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.co = load i64, ptr %.0911.i.i.i.i.i.i.i140, align 8, !tbaa !180, !alias.scope !547
  store i64 %i.co, ptr %.012.i.i.i.i.i.i.i139, align 8, !tbaa !180, !alias.scope !546
  store ptr null, ptr %.0911.i.i.i.i.i.i.i140, align 8, !tbaa !180, !alias.scope !547
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i140, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i139, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i141 = icmp eq ptr %i.cp, %i.bf
  br i1 %.not.i.i.i.i.i.i.i141, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i142, label %.lr.ph.i.i.i.i.i.i.i138, !llvm.loop !515

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i142: ; preds = %.lr.ph.i.i.i.i.i.i.i138, %middle.block, %.noexc147
  %.0.lcssa.i.i.i.i.i.i.i143 = phi ptr [ %i.bw, %.noexc147 ], [ %i.ci, %middle.block ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i138 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i143, i64 8 ; 3 uses
  %.not.i23.i.i.i144 = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i.i144, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i142
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i142, %bb.x
  store ptr %i.bw, ptr %14, align 8, !tbaa !195
  store ptr %i.cr, ptr %i.p, align 8, !tbaa !196
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cs, ptr %i.q, align 8, !tbaa !197
  %.pr374 = load ptr, ptr %21, align 8, !tbaa !180 ; 3 uses
  %.not.i149 = icmp eq ptr %.pr374, null
  br i1 %.not.i149, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit151, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i150

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i150: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148
  %i.ct = load ptr, ptr %.pr374, align 8, !tbaa !185
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(56) %.pr374) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit151

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit151: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i150
  %i.cw = phi ptr [ %i.bk, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148.thread ], [ %i.cr, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148 ], [ %i.cr, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i150 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.ag

bb.y:                                             ; preds = %bb.h
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.j
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.cz, %bb.aa ], [ %i.ah, %bb.k ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #21
  br label %bb.ab

bb.ab:                                            ; preds = %.body, %bb.z
  %.pn67 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cy, %bb.z ]
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #21
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn67.pn = phi { ptr, i32 } [ %.pn67, %bb.ab ], [ %i.cx, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit181

bb.ad:                                            ; preds = %bb.n, %.noexc92, %bb.p, %bb.o
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit178

.loopexit.split-lp405:                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i96
  %lpad.loopexit448 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ae:                                            ; preds = %bb.q, %.noexc111, %bb.s, %bb.r
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit175

bb.af:                                            ; preds = %bb.t, %.noexc130
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit154

.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i134, %bb.w
  %lpad.loopexit.split-lp582 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %21, align 8, !tbaa !180  ; 3 uses
  %.not.i152 = icmp eq ptr %i.dd, null
  br i1 %.not.i152, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit154, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i153

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i153: ; preds = %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !185
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(56) %i.dd) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit154

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit154: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i153, %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af
  %.pn73 = phi { ptr, i32 } [ %i.dc, %bb.af ], [ %lpad.loopexit.split-lp582, %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp582, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %.body157

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit151, %.lr.ph.i.i.i.i.i.i.i119.preheader
  %i.dh = phi ptr [ %i.cw, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit151 ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i119.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.di = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22
          to label %.noexc156 unwind label %.loopexit.split-lp410, !noalias !551 ; 3 uses

.noexc156:                                        ; preds = %bb.ag
  %i.dj = load ptr, ptr %14, align 8, !tbaa !195, !noalias !551
  store ptr %i.dj, ptr %6, align 8, !tbaa !195, !noalias !551
  store ptr %i.dh, ptr %i.u, align 8, !tbaa !196, !noalias !551
  %i.dk = load ptr, ptr %i.q, align 8, !tbaa !197, !noalias !551
  store ptr %i.dk, ptr %i.v, align 8, !tbaa !197, !noalias !551
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !noalias !551
  invoke void @_ZN6duckdb18OperatorExpressionC1ENS_14ExpressionTypeENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.di, i8 noundef zeroext -102, ptr noundef nonnull %6)
          to label %bb.ah unwind label %bb.aj, !noalias !551

bb.ah:                                            ; preds = %.noexc156
  %i.dl = load ptr, ptr %6, align 8, !tbaa !195, !noalias !551 ; 3 uses
  %i.dm = load ptr, ptr %i.u, align 8, !tbaa !196, !noalias !551 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dl, %i.dm
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ah, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dr, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.dl, %bb.ah ] ; 2 uses
  %i.dn = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !180, !noalias !551 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !185, !noalias !551
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !551
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(56) %i.dn) #21, !noalias !551, !inline_history !518
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i155 = icmp eq ptr %i.dr, %i.dm
  br i1 %.not.i.i.i.i155, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !195, !noalias !551
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.ah
  %i.ds = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dl, %bb.ah ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i1.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ds) #23, !noalias !551
  br label %bb.ak

bb.aj:                                            ; preds = %.noexc156
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #21, !noalias !551
  call void @_ZdlPv(ptr noundef nonnull %i.di) #23, !noalias !551
  br label %.body157

bb.ak:                                            ; preds = %bb.ai, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.du = load ptr, ptr %0, align 8, !tbaa !180   ; 3 uses
  store ptr %i.di, ptr %0, align 8, !tbaa !180
  %.not.i.i.i.i.i159 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i159, label %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i160

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i160: ; preds = %bb.ak
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !185
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(56) %i.du) #21, !inline_history !0
  br label %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ak, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i160
  %i.dy = load ptr, ptr %20, align 8, !tbaa !180  ; 3 uses
  %.not.i166 = icmp eq ptr %i.dy, null
  br i1 %.not.i166, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit168, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i167

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i167: ; preds = %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !185
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(56) %i.dy) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit168

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit168: ; preds = %_ZNSt10unique_ptrIN6duckdb18OperatorExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %i.ec = load ptr, ptr %19, align 8, !tbaa !180  ; 3 uses
  %.not.i169 = icmp eq ptr %i.ec, null
  br i1 %.not.i169, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit171, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i170

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i170: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit168
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !185
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(56) %i.ec) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit171

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit171: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit168, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.eg = load ptr, ptr %15, align 8, !tbaa !199  ; 3 uses
  %.not.i172 = icmp eq ptr %i.eg, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit171
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !185
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(120) %i.eg) #21, !inline_history !4
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit171, %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

.loopexit.split-lp410:                            ; preds = %bb.ag, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i115
  %lpad.loopexit451 = landingpad { ptr, i32 }
          cleanup
  br label %.body157

.body157:                                         ; preds = %.loopexit.split-lp410, %bb.aj, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit154
  %.pn75 = phi { ptr, i32 } [ %i.dt, %bb.aj ], [ %.pn73, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit154 ], [ %lpad.loopexit451, %.loopexit.split-lp410 ] ; 2 uses
  %i.ek = load ptr, ptr %20, align 8, !tbaa !180  ; 3 uses
  %.not.i173 = icmp eq ptr %i.ek, null
  br i1 %.not.i173, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit175, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i174

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i174: ; preds = %.body157
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !185
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(56) %i.ek) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit175

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit175: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i174, %.body157, %bb.ae
  %.pn75.pn = phi { ptr, i32 } [ %i.db, %bb.ae ], [ %.pn75, %.body157 ], [ %.pn75, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i174 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit175, %.loopexit.split-lp405
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit175 ], [ %lpad.loopexit448, %.loopexit.split-lp405 ] ; 2 uses
  %i.eo = load ptr, ptr %19, align 8, !tbaa !180  ; 3 uses
  %.not.i176 = icmp eq ptr %i.eo, null
  br i1 %.not.i176, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit178, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i177

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i177: ; preds = %bb.al
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !185
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(56) %i.eo) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit178

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit178: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i177, %bb.al, %bb.ad
  %.pn75.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.ad ], [ %.pn75.pn.pn, %bb.al ], [ %.pn75.pn.pn, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i177 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.es = load ptr, ptr %15, align 8, !tbaa !199  ; 3 uses
  %.not.i179 = icmp eq ptr %i.es, null
  br i1 %.not.i179, label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit181, label %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i180

_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i180: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit178
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !185
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(120) %i.es) #21, !inline_history !4
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit181

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit181: ; preds = %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i180, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit178, %bb.ac
  %.pn75.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn, %bb.ac ], [ %.pn75.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit178 ], [ %.pn75.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %.body216

bb.am:                                            ; preds = %.noexc90
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.7.0.copyload, ptr %5, align 8, !noalias !552
  %.not398 = icmp eq ptr %.sroa.7.0.copyload, null
  br i1 %.not398, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store ptr null, ptr %22, align 8, !tbaa !176
  br label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i186

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc182 unwind label %bb.at, !noalias !552

.noexc182:                                        ; preds = %bb.ao
  %i.ew = load ptr, ptr %5, align 8, !tbaa !182, !noalias !552
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %22, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ew)
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i186 unwind label %bb.at, !inline_history !183

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i186: ; preds = %bb.an, %.noexc182
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ex = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22
          to label %.lr.ph.i.i.i.i.i.i.i190.preheader unwind label %.loopexit.split-lp400 ; 6 uses

.lr.ph.i.i.i.i.i.i.i190.preheader:                ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i186
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i64, ptr %22, align 8, !tbaa !180
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !180
  store ptr null, ptr %22, align 8, !tbaa !180
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.fa = load i64, ptr %i.ac, align 8, !tbaa !180, !alias.scope !554
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !180, !alias.scope !553
  store ptr null, ptr %i.ac, align 8, !tbaa !180, !alias.scope !554
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %i.ac) #23
  %.pr376.pre = load ptr, ptr %22, align 8, !tbaa !180 ; 3 uses
  store ptr %i.ex, ptr %14, align 8, !tbaa !195
  store ptr %i.fb, ptr %i.p, align 8, !tbaa !196
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  store ptr %i.fc, ptr %i.q, align 8, !tbaa !197
  %.not.i201 = icmp eq ptr %.pr376.pre, null
  br i1 %.not.i201, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit203, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i202

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i202: ; preds = %.lr.ph.i.i.i.i.i.i.i190.preheader
  %i.fd = load ptr, ptr %.pr376.pre, align 8, !tbaa !185
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(56) %.pr376.pre) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit203

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit203: ; preds = %.lr.ph.i.i.i.i.i.i.i190.preheader, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.fg = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22
          to label %.noexc215 unwind label %bb.au, !noalias !555 ; 3 uses

.noexc215:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit203
  store ptr %i.ex, ptr %4, align 8, !tbaa !195, !noalias !555
  store ptr %i.fb, ptr %i.r, align 8, !tbaa !196, !noalias !555
  store ptr %i.fc, ptr %i.s, align 8, !tbaa !197, !noalias !555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !noalias !555
  invoke void @_ZN6duckdb18OperatorExpressionC1ENS_14ExpressionTypeENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.fg, i8 noundef zeroext -103, ptr noundef nonnull %4)
          to label %bb.ap unwind label %bb.ar, !noalias !555

bb.ap:                                            ; preds = %.noexc215
  %i.fh = load ptr, ptr %4, align 8, !tbaa !195, !noalias !555 ; 3 uses
  %i.fi = load ptr, ptr %i.r, align 8, !tbaa !196, !noalias !555 ; 2 uses
  %.not4.i.i.i.i204 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not4.i.i.i.i204, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i213, label %.lr.ph.i.i.i.i205

.lr.ph.i.i.i.i205:                                ; preds = %bb.ap, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i209
  %.05.i.i.i.i206 = phi ptr [ %i.fn, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i209 ], [ %i.fh, %bb.ap ] ; 2 uses
  %i.fj = load ptr, ptr %.05.i.i.i.i206, align 8, !tbaa !180, !noalias !555 ; 3 uses
  %.not.i.i.i.i.i.i207 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i207, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i209, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i208

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i208: ; preds = %.lr.ph.i.i.i.i205
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !185, !noalias !555
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !555
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(56) %i.fj) #21, !noalias !555, !inline_history !518
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i209

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i209: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i208, %.lr.ph.i.i.i.i205
  %i.fn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i206, i64 8 ; 2 uses
  %.not.i.i.i.i210 = icmp eq ptr %i.fn, %i.fi
  br i1 %.not.i.i.i.i210, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i211, label %.lr.ph.i.i.i.i205, !llvm.loop !3

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i211: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i209
  %.pr.i.i212 = load ptr, ptr %4, align 8, !tbaa !195, !noalias !555
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i213

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i213: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i211, %bb.ap
  %i.fo = phi ptr [ %.pr.i.i212, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i211 ], [ %i.fh, %bb.ap ] ; 2 uses
  %.not.i.i1.i.i214 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i1.i.i214, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i213
  call void @_ZdlPv(ptr noundef nonnull %i.fo) #23, !noalias !555
  br label %bb.as

bb.ar:                                            ; preds = %.noexc215
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #21, !noalias !555
  call void @_ZdlPv(ptr noundef nonnull %i.fg) #23, !noalias !555
  br label %.body216

bb.as:                                            ; preds = %bb.aq, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fq = load ptr, ptr %0, align 8, !tbaa !180   ; 3 uses
  store ptr %i.fg, ptr %0, align 8, !tbaa !180
  %.not.i.i.i.i.i219 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i219, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i220

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i220: ; preds = %bb.as
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !185
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(56) %i.fq) #21, !inline_history !0
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

bb.at:                                            ; preds = %bb.ao, %.noexc182
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit230

.loopexit.split-lp400:                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i186
  %lpad.loopexit445 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre481 = load ptr, ptr %22, align 8, !tbaa !180 ; 3 uses
  %.not.i228 = icmp eq ptr %.pre481, null
  br i1 %.not.i228, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit230, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i229

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i229: ; preds = %.loopexit.split-lp400
  %i.fv = load ptr, ptr %.pre481, align 8, !tbaa !185
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(56) %.pre481) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit230

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit230: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i229, %.loopexit.split-lp400, %bb.at
  %.pn65 = phi { ptr, i32 } [ %i.fu, %bb.at ], [ %lpad.loopexit445, %.loopexit.split-lp400 ], [ %lpad.loopexit445, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i229 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
end_hunk_0
begin_hunk_1_@_ZN6duckdb11Transformer22TransformAExprInternalERN17duckdb_libpgquery7PGAExprE:bb.a
  %.not.i.i.i = icmp eq ptr %i.ha, %i.gv
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %38, align 8, !tbaa !195
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.bc
  %i.hb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gu, %bb.bc ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.hb) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  %i.hc = load ptr, ptr %37, align 8, !tbaa !401  ; 3 uses
  %.not.i191 = icmp eq ptr %i.hc, null
  br i1 %.not.i191, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !185
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(240) %i.hc) #21, !inline_history !31
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  %i.hg = load ptr, ptr %36, align 8, !tbaa !398  ; 3 uses
  %.not.i192 = icmp eq ptr %i.hg, null
  br i1 %.not.i192, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !185
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(128) %i.hg) #21, !inline_history !27
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %i.hk = load ptr, ptr %35, align 8, !tbaa !386  ; 3 uses
  %.not.i193 = icmp eq ptr %i.hk, null
  br i1 %.not.i193, label %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !185
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(81) %i.hk) #21, !inline_history !34
  br label %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  %i.ho = load ptr, ptr %34, align 8, !tbaa !180  ; 3 uses
  %.not.i194 = icmp eq ptr %i.ho, null
  br i1 %.not.i194, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i195

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i195: ; preds = %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !185
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(56) %i.ho) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196: ; preds = %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  %i.hs = load ptr, ptr %33, align 8, !tbaa !180  ; 3 uses
  %.not.i197 = icmp eq ptr %i.hs, null
  br i1 %.not.i197, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit199, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i198

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i198: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !185
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(56) %i.hs) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit199

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit199: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit196, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %bb.gt

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183: ; preds = %bb.ba, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i182, %bb.aq, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.as, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit174
  %.pn116.pn = phi { ptr, i32 } [ %.pn116614, %bb.as ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.gj, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit12.i ], [ %i.gs, %bb.ba ], [ %.pn112, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit174 ], [ %i.fe, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit180 ], [ %i.fi, %bb.aq ], [ %i.fi, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i182 ] ; 2 uses
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %38) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  %i.hw = load ptr, ptr %37, align 8, !tbaa !401  ; 3 uses
  %.not.i200 = icmp eq ptr %i.hw, null
  br i1 %.not.i200, label %.body141, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !185
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(240) %i.hw) #21, !inline_history !31
  br label %.body141

.body141:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183, %bb.an, %bb.p
  %.pn116.pn.pn = phi { ptr, i32 } [ %i.au, %bb.p ], [ %i.eu, %bb.an ], [ %.pn116.pn, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit183 ], [ %.pn116.pn, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i201 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  %i.ia = load ptr, ptr %36, align 8, !tbaa !398  ; 3 uses
  %.not.i203 = icmp eq ptr %i.ia, null
  br i1 %.not.i203, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204: ; preds = %.body141
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !185
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(128) %i.ia) #21, !inline_history !27
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204, %.body141, %bb.am
  %.pn116.pn.pn.pn = phi { ptr, i32 } [ %i.et, %bb.am ], [ %.pn116.pn.pn, %.body141 ], [ %.pn116.pn.pn, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i204 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %i.ie = load ptr, ptr %35, align 8, !tbaa !386  ; 3 uses
  %.not.i206 = icmp eq ptr %i.ie, null
  br i1 %.not.i206, label %.body, label %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207

_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !185
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(81) %i.ie) #21, !inline_history !34
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205, %bb.al, %bb.m
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.m ], [ %i.es, %bb.al ], [ %.pn116.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit205 ], [ %.pn116.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i207 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  %i.ii = load ptr, ptr %34, align 8, !tbaa !180  ; 3 uses
  %.not.i209 = icmp eq ptr %i.ii, null
  br i1 %.not.i209, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i210

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i210: ; preds = %.body
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !185
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(56) %i.ii) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i210, %.body, %bb.ak
  %.pn116.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.er, %bb.ak ], [ %.pn116.pn.pn.pn.pn, %.body ], [ %.pn116.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i210 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  %i.im = load ptr, ptr %33, align 8, !tbaa !180  ; 3 uses
  %.not.i212 = icmp eq ptr %i.im, null
  br i1 %.not.i212, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit214, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i213

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i213: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !185
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(56) %i.im) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit214

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit214: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i213, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211, %bb.aj
  %.pn116.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eq, %bb.aj ], [ %.pn116.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit211 ], [ %.pn116.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i213 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %bb.gu

bb.be:                                            ; preds = %bb.e
  invoke void @_ZN6duckdb11Transformer21TransformInExpressionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN17duckdb_libpgquery7PGAExprE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.gt unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.bg:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !356 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  store ptr %i.is, ptr %26, align 8, !noalias !1449
  %.not642 = icmp eq ptr %i.is, null
  br i1 %.not642, label %.thread790, label %bb.bh

.thread790:                                       ; preds = %bb.bg
  store ptr null, ptr %43, align 8, !tbaa !176, !alias.scope !1449
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  %i.it = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %.noexc215 unwind label %bb.bt, !noalias !1449, !inline_history !183

.noexc215:                                        ; preds = %bb.bh
  %i.iv = load ptr, ptr %26, align 8, !tbaa !182, !noalias !1449
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %43, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.iv)
          to label %bb.bi unwind label %bb.bt, !inline_history !183

bb.bi:                                            ; preds = %.noexc215
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %42, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !196 ; 4 uses
  %.phi.trans.insert657 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %.pre658 = load ptr, ptr %.phi.trans.insert657, align 8, !tbaa !197 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  %i.iw = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %.not.i.i218 = icmp eq ptr %.pre, %.pre658
  br i1 %.not.i.i218, label %bb.bj, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233.thread: ; preds = %bb.bi
  %i.iy = load i64, ptr %43, align 8, !tbaa !180
  store i64 %i.iy, ptr %.pre, align 8, !tbaa !180
  %i.iz = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %i.iz, ptr %i.iw, align 8, !tbaa !196
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236

bb.bj:                                            ; preds = %.thread790, %bb.bi
  %i.ja = phi ptr [ %i.iu, %.thread790 ], [ %i.ix, %bb.bi ] ; 3 uses
  %i.jb = phi ptr [ %i.it, %.thread790 ], [ %i.iw, %bb.bi ] ; 3 uses
  %72 = phi ptr [ null, %.thread790 ], [ %.pre, %bb.bi ]
  %i.jc = phi ptr [ null, %.thread790 ], [ %.pre658, %bb.bi ] ; 3 uses
  %73 = ptrtoaddr ptr %i.jc to i64
  %i.jd = load ptr, ptr %42, align 8, !tbaa !195  ; 10 uses
  %i.je = ptrtoint ptr %72 to i64
  %i.jf = ptrtoint ptr %i.jd to i64               ; 2 uses
  %i.jg = sub i64 %i.je, %i.jf                    ; 3 uses
  %i.jh = icmp eq i64 %i.jg, 9223372036854775800
  br i1 %i.jh, label %bb.bk, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i219

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.noexc231 unwind label %bb.bu

.noexc231:                                        ; preds = %bb.bk
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i219: ; preds = %bb.bj
  %i.ji = ashr exact i64 %i.jg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i220 = call i64 @llvm.umax.i64(i64 %i.ji, i64 1)
  %i.jj = add nsw i64 %.sroa.speculated.i.i.i.i220, %i.ji ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %i.ji
  %i.jl = call i64 @llvm.umin.i64(i64 %i.jj, i64 1152921504606846975)
  %i.jm = select i1 %i.jk, i64 1152921504606846975, i64 %i.jl ; 3 uses
  %.not.i.i.i.i221 = icmp ne i64 %i.jm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i221)
  %i.jn = shl nuw nsw i64 %i.jm, 3
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jn) #22
          to label %.noexc232 unwind label %bb.bu ; 10 uses

.noexc232:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i219
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jg
  %i.jq = load i64, ptr %43, align 8, !tbaa !180
  store i64 %i.jq, ptr %i.jp, align 8, !tbaa !180
  store ptr null, ptr %43, align 8, !tbaa !180
  %.not10.i.i.i.i.i.i.i222 = icmp eq ptr %i.jd, %i.jc
  br i1 %.not10.i.i.i.i.i.i.i222, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227, label %.lr.ph.i.i.i.i.i.i.i223.preheader

.lr.ph.i.i.i.i.i.i.i223.preheader:                ; preds = %.noexc232
  %i.jr = add i64 %73, -8
  %i.js = sub i64 %i.jr, %i.jf                    ; 3 uses
  %i.jt = lshr i64 %i.js, 3
  %i.ju = add nuw nsw i64 %i.jt, 1                ; 2 uses
  %min.iters.check808 = icmp ult i64 %i.js, 136
  br i1 %min.iters.check808, label %.lr.ph.i.i.i.i.i.i.i223.preheader868, label %vector.memcheck809

vector.memcheck809:                               ; preds = %.lr.ph.i.i.i.i.i.i.i223.preheader
  %i.jv = and i64 %i.js, -8
  %i.jw = add i64 %i.jv, 8                        ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jo, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.jd, i64 %i.jw
  %bound0810 = icmp ult ptr %i.jo, %i.jy
  %bound1811 = icmp ult ptr %i.jd, %i.jx
  %found.conflict812 = and i1 %bound0810, %bound1811
  br i1 %found.conflict812, label %.lr.ph.i.i.i.i.i.i.i223.preheader868, label %vector.ph813

vector.ph813:                                     ; preds = %vector.memcheck809
  %n.vec814 = and i64 %i.ju, 4611686018427387900  ; 3 uses
  %i.jz = shl i64 %n.vec814, 3                    ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jo, i64 %i.jz  ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jd, i64 %i.jz
  br label %vector.body815

vector.body815:                                   ; preds = %vector.body815, %vector.ph813
  %index816 = phi i64 [ 0, %vector.ph813 ], [ %index.next821, %vector.body815 ] ; 2 uses
  %i.kc = shl i64 %index816, 3                    ; 2 uses
  %next.gep817 = getelementptr i8, ptr %i.jo, i64 %i.kc ; 2 uses
  %next.gep818 = getelementptr i8, ptr %i.jd, i64 %i.kc ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.kd = getelementptr i8, ptr %next.gep818, i64 16 ; 2 uses
  %wide.load819 = load <2 x i64>, ptr %next.gep818, align 8, !tbaa !180, !alias.scope !1452
  %wide.load820 = load <2 x i64>, ptr %i.kd, align 8, !tbaa !180, !alias.scope !1452
  %i.ke = getelementptr i8, ptr %next.gep817, i64 16
  store <2 x i64> %wide.load819, ptr %next.gep817, align 8, !tbaa !180, !alias.scope !1453, !noalias !1454
  store <2 x i64> %wide.load820, ptr %i.ke, align 8, !tbaa !180, !alias.scope !1453, !noalias !1454
  store <2 x ptr> splat (ptr null), ptr %next.gep818, align 8, !tbaa !180, !alias.scope !1452
  store <2 x ptr> splat (ptr null), ptr %i.kd, align 8, !tbaa !180, !alias.scope !1452
  %index.next821 = add nuw i64 %index816, 4       ; 2 uses
  %i.kf = icmp eq i64 %index.next821, %n.vec814
  br i1 %i.kf, label %middle.block822, label %vector.body815, !llvm.loop !1358

middle.block822:                                  ; preds = %vector.body815
  %cmp.n823 = icmp eq i64 %i.ju, %n.vec814
  br i1 %cmp.n823, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227, label %.lr.ph.i.i.i.i.i.i.i223.preheader868

.lr.ph.i.i.i.i.i.i.i223.preheader868:             ; preds = %vector.memcheck809, %.lr.ph.i.i.i.i.i.i.i223.preheader, %middle.block822
  %.012.i.i.i.i.i.i.i224.ph = phi ptr [ %i.jo, %vector.memcheck809 ], [ %i.jo, %.lr.ph.i.i.i.i.i.i.i223.preheader ], [ %i.ka, %middle.block822 ]
  %.0911.i.i.i.i.i.i.i225.ph = phi ptr [ %i.jd, %vector.memcheck809 ], [ %i.jd, %.lr.ph.i.i.i.i.i.i.i223.preheader ], [ %i.kb, %middle.block822 ]
  br label %.lr.ph.i.i.i.i.i.i.i223

.lr.ph.i.i.i.i.i.i.i223:                          ; preds = %.lr.ph.i.i.i.i.i.i.i223.preheader868, %.lr.ph.i.i.i.i.i.i.i223
  %.012.i.i.i.i.i.i.i224 = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i.i.i223 ], [ %.012.i.i.i.i.i.i.i224.ph, %.lr.ph.i.i.i.i.i.i.i223.preheader868 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i225 = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i.i.i223 ], [ %.0911.i.i.i.i.i.i.i225.ph, %.lr.ph.i.i.i.i.i.i.i223.preheader868 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.kg = load i64, ptr %.0911.i.i.i.i.i.i.i225, align 8, !tbaa !180, !alias.scope !1451
  store i64 %i.kg, ptr %.012.i.i.i.i.i.i.i224, align 8, !tbaa !180, !alias.scope !1450
  store ptr null, ptr %.0911.i.i.i.i.i.i.i225, align 8, !tbaa !180, !alias.scope !1451
  %i.kh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i225, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i224, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i226 = icmp eq ptr %i.kh, %i.jc
  br i1 %.not.i.i.i.i.i.i.i226, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227, label %.lr.ph.i.i.i.i.i.i.i223, !llvm.loop !1359

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227: ; preds = %.lr.ph.i.i.i.i.i.i.i223, %middle.block822, %.noexc232
  %.0.lcssa.i.i.i.i.i.i.i228 = phi ptr [ %i.jo, %.noexc232 ], [ %i.ka, %middle.block822 ], [ %i.ki, %.lr.ph.i.i.i.i.i.i.i223 ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i228, i64 8
  %.not.i23.i.i.i229 = icmp eq ptr %i.jd, null
  br i1 %.not.i23.i.i.i229, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227
  call void @_ZdlPv(ptr noundef nonnull %i.jd) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i227, %bb.bl
  store ptr %i.jo, ptr %42, align 8, !tbaa !195
  store ptr %i.kj, ptr %i.jb, align 8, !tbaa !196
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.jm
  store ptr %i.kk, ptr %i.ja, align 8, !tbaa !197
  %.pr = load ptr, ptr %43, align 8, !tbaa !180   ; 3 uses
  %.not.i234 = icmp eq ptr %.pr, null
  br i1 %.not.i234, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i235

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i235: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233
  %i.kl = load ptr, ptr %.pr, align 8, !tbaa !185
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #21, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i235
  %i.ko = phi ptr [ %i.ix, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233.thread ], [ %i.ja, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233 ], [ %i.ja, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i235 ] ; 2 uses
  %i.kp = phi ptr [ %i.iw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233.thread ], [ %i.jb, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit233 ], [ %i.jb, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i235 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !462 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  store ptr %i.kr, ptr %25, align 8, !noalias !1455
  %.not643 = icmp eq ptr %i.kr, null
  br i1 %.not643, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236
  store ptr null, ptr %44, align 8, !tbaa !176, !alias.scope !1455
  br label %bb.bo

bb.bn:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit236
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %.noexc237 unwind label %bb.bv, !noalias !1455, !inline_history !183

.noexc237:                                        ; preds = %bb.bn
  %i.ks = load ptr, ptr %25, align 8, !tbaa !182, !noalias !1455
  invoke void @_ZN6duckdb11Transformer19TransformExpressionERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %44, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ks)
          to label %bb.bo unwind label %bb.bv, !inline_history !183

bb.bo:                                            ; preds = %bb.bm, %.noexc237
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  %i.kt = load ptr, ptr %i.kp, align 8, !tbaa !196 ; 6 uses
  %i.ku = load ptr, ptr %i.ko, align 8, !tbaa !197
  %.not.i.i240 = icmp eq ptr %i.kt, %i.ku
  br i1 %.not.i.i240, label %bb.bp, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit255.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit255.thread: ; preds = %bb.bo
  %i.kv = load i64, ptr %44, align 8, !tbaa !180
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !180
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store ptr %i.kw, ptr %i.kp, align 8, !tbaa !196
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit258

bb.bp:                                            ; preds = %bb.bo
  %i.kx = load ptr, ptr %42, align 8, !tbaa !195  ; 7 uses
  %i.ky = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.kz = ptrtoint ptr %i.kx to i64               ; 2 uses
  %i.la = sub i64 %i.ky, %i.kz                    ; 3 uses
  %i.lb = icmp eq i64 %i.la, 9223372036854775800
  br i1 %i.lb, label %bb.bq, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i241

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #24
          to label %.noexc253 unwind label %bb.bw

.noexc253:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i241: ; preds = %bb.bp
  %i.lc = ashr exact i64 %i.la, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i242 = call i64 @llvm.umax.i64(i64 %i.lc, i64 1)
  %i.ld = add nsw i64 %.sroa.speculated.i.i.i.i242, %i.lc ; 2 uses
  %i.le = icmp ult i64 %i.ld, %i.lc
  %i.lf = call i64 @llvm.umin.i64(i64 %i.ld, i64 1152921504606846975)
  %i.lg = select i1 %i.le, i64 1152921504606846975, i64 %i.lf ; 3 uses
  %.not.i.i.i.i243 = icmp ne i64 %i.lg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i243)
  %i.lh = shl nuw nsw i64 %i.lg, 3
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lh) #22
          to label %.noexc254 unwind label %bb.bw ; 7 uses

.noexc254:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i241
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.la
  %i.lk = load i64, ptr %44, align 8, !tbaa !180
  store i64 %i.lk, ptr %i.lj, align 8, !tbaa !180
  store ptr null, ptr %44, align 8, !tbaa !180
  %.not10.i.i.i.i.i.i.i244 = icmp eq ptr %i.kx, %i.kt
  br i1 %.not10.i.i.i.i.i.i.i244, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i249, label %.lr.ph.i.i.i.i.i.i.i245.preheader

.lr.ph.i.i.i.i.i.i.i245.preheader:                ; preds = %.noexc254
  %i.ll = add i64 %i.ky, -8
  %i.lm = sub i64 %i.ll, %i.kz                    ; 2 uses
  %i.ln = lshr i64 %i.lm, 3
  %i.lo = add nuw nsw i64 %i.ln, 1                ; 2 uses
  %min.iters.check827 = icmp ult i64 %i.lm, 24
  br i1 %min.iters.check827, label %.lr.ph.i.i.i.i.i.i.i245.preheader866, label %vector.ph828

vector.ph828:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i245.preheader
  %n.vec829 = and i64 %i.lo, 4611686018427387900  ; 3 uses
  %i.lp = shl i64 %n.vec829, 3                    ; 2 uses
  %i.lq = getelementptr i8, ptr %i.li, i64 %i.lp  ; 2 uses
  %i.lr = getelementptr i8, ptr %i.kx, i64 %i.lp
  br label %vector.body830

vector.body830:                                   ; preds = %vector.body830, %vector.ph828
  %index831 = phi i64 [ 0, %vector.ph828 ], [ %index.next836, %vector.body830 ] ; 2 uses
  %i.ls = shl i64 %index831, 3                    ; 2 uses
  %next.gep832 = getelementptr i8, ptr %i.li, i64 %i.ls ; 2 uses
  %next.gep833 = getelementptr i8, ptr %i.kx, i64 %i.ls ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.lt = getelementptr i8, ptr %next.gep833, i64 16 ; 2 uses
  %wide.load834 = load <2 x i64>, ptr %next.gep833, align 8, !tbaa !180, !alias.scope !1457
  %wide.load835 = load <2 x i64>, ptr %i.lt, align 8, !tbaa !180, !alias.scope !1457
  %i.lu = getelementptr i8, ptr %next.gep832, i64 16
  store <2 x i64> %wide.load834, ptr %next.gep832, align 8, !tbaa !180, !alias.scope !1456
  store <2 x i64> %wide.load835, ptr %i.lu, align 8, !tbaa !180, !alias.scope !1456
  store <2 x ptr> splat (ptr null), ptr %next.gep833, align 8, !tbaa !180, !alias.scope !1457
  store <2 x ptr> splat (ptr null), ptr %i.lt, align 8, !tbaa !180, !alias.scope !1457
  %index.next836 = add nuw i64 %index831, 4       ; 2 uses
  %i.lv = icmp eq i64 %index.next836, %n.vec829
  br i1 %i.lv, label %middle.block837, label %vector.body830, !llvm.loop !1365

end_hunk_1
