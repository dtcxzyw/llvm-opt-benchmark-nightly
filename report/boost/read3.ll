Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read3?download=true
inline.NumInlined: 77476
inline.NumDeleted: 23382
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN5boost5beast4http6detail9read_someINS0_4test12basic_streamINS_4asio15any_io_executorEEENS0_13static_bufferILm1536EEELb1EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeE:bb.a
  resume { ptr, i32 } %i.bc

_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit: ; preds = %bb.q
  %i.bg = extractvalue { ptr, i32 } %i.bc, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #35, !noalias !7850 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !7850
  call void @_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 7, ptr noundef null) #35, !noalias !7850
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.5.0.copyload4.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i, align 8, !tbaa !1319, !noalias !7850 ; 3 uses
  %switch.i.i.i = icmp ult i64 %.sroa.5.0.copyload4.i.i, 2
  %i.bi = and i64 %.sroa.5.0.copyload4.i.i, 1
  %i.bj = or disjoint i64 %i.bi, ptrtoint (ptr @_ZZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_E7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.5.0.copyload4.i.i, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 16, i1 false), !noalias !7850
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !1319, !noalias !7850
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !7850
  call void @__cxa_end_catch(), !noalias !7850
  store i8 0, ptr %10, align 8, !tbaa !1790, !alias.scope !7850
  store i8 0, ptr %i.bb, align 8, !tbaa !1322, !alias.scope !7850
  %.pre106 = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !1332 ; 2 uses
  %i.bk = and i64 %.pre106, 1
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread79, label %bb.s

bb.s:                                             ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit
  %i.bl = icmp eq i64 %.pre106, 1
  br i1 %i.bl, label %_ZNK5boost6system10error_codecvbEv.exit, label %.thread95

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.s
  %i.bm = load i32, ptr %3, align 8, !tbaa !1578
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit.thread79, label %.thread95

_ZNK5boost6system10error_codecvbEv.exit.thread79: ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit.thread, %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit, %_ZNK5boost6system10error_codecvbEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bo = call noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @_ZN5boost5beast18static_buffer_base6commitEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.bo) #35
  %i.bp = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.t   ; 4 uses

.noexc.i:                                         ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread79
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1330, !noalias !7851
  %i.bs = and i64 %i.br, -2
  %switch.i.i.i.i = icmp eq i64 %i.bs, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.t:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread79
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #36
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !1313, !noalias !7851
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !7851
  %i.by = call noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(52) %i.bp, i32 noundef 2) #35, !noalias !7851, !inline_history !44 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.noexc.i
  %i.bz = load i64, ptr %i.bn, align 8, !tbaa !1332 ; 5 uses
  %i.ca = icmp eq i64 %i.bz, 1
  %i.cb = load i32, ptr %3, align 8, !tbaa !1322
  %.fr = freeze i32 %i.cb                         ; 2 uses
  br i1 %i.ca, label %_ZNK5boost6system10error_codecvbEv.exit62, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.cc = icmp eq i32 %.fr, 2
  br i1 %i.cc, label %bb.u, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.u:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %cond = icmp eq i64 %i.bz, 0
  br i1 %cond, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1322
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.u, %bb.v
  %.0.i18.i = phi ptr [ %i.ce, %bb.v ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.u ] ; 2 uses
  %i.cf = load i64, ptr %i.bq, align 8, !tbaa !1330 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = icmp eq ptr %.0.i18.i, %i.bp
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = icmp eq i64 %i.cj, %i.cf
  %i.cl = select i1 %i.cg, i1 %i.ch, i1 %i.ck
  br i1 %i.cl, label %bb.w, label %.thread

bb.w:                                             ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !1812
  %.not104 = icmp eq i32 %i.cn, 0
  br i1 %.not104, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %cond109 = icmp eq i64 %i.bz, 0
  br i1 %cond109, label %_ZNK5boost6system10error_code8categoryEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1322
  br label %_ZNK5boost6system10error_code8categoryEv.exit

_ZNK5boost6system10error_code8categoryEv.exit:    ; preds = %bb.x, %bb.y
  %.0.i47 = phi ptr [ %i.cp, %bb.y ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.x ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i47, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !1330
  %i.cs = and i64 %i.cr, -2
  %switch.i.i.i48 = icmp eq i64 %i.cs, -5572340897628102704
  br i1 %switch.i.i.i48, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit
  %i.ct = load ptr, ptr %.0.i47, align 8, !tbaa !1313
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(52) %.0.i47, i32 noundef 0) #35, !inline_history !45
  %spec.select = select i1 %i.cw, i64 3, i64 2
  br label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread: ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit, %_ZNK5boost6system10error_code8categoryEv.exit
  %i.cx = phi i64 [ 2, %_ZNK5boost6system10error_code8categoryEv.exit ], [ %spec.select, %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit ]
  store i32 0, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i50, align 4
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i47, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !1322
  store i64 %i.cx, ptr %i.bn, align 8, !tbaa !1319
  call void @_ZN5boost5beast4http12basic_parserILb1EE7put_eofERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %.thread95

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #36
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1633
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1319 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %switch.i.i57 = icmp ult i64 %.sroa.5.0.copyload, 2
  %i.da = and i64 %.sroa.5.0.copyload, 1
  %i.db = or disjoint i64 %i.da, ptrtoint (ptr @_ZZN5boost5beast4http6detail9read_someINS0_4test12basic_streamINS_4asio15any_io_executorEEENS0_13static_bufferILm1536EEELb1EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeEE7loc_bb__0 to i64)
  %.sroa.5.0.i58 = select i1 %switch.i.i57, i64 %.sroa.5.0.copyload, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i64 %.sroa.5.0.i58, ptr %i.bn, align 8, !tbaa !1319
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %_ZNK5boost6system10error_codecvbEv.exit62.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %i.dc = and i64 %i.bz, 1
  %.not.i.i60 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i60, label %.thread99, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

.thread:                                          ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.dd = and i64 %i.bz, 1
  %.not.i.i6084 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i6084, label %.thread99, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

_ZNK5boost6system10error_codecvbEv.exit62:        ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %.not105 = icmp eq i32 %.fr, 0
  br i1 %.not105, label %.thread99, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

.thread95:                                        ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, %_ZNK5boost6system10error_codecvbEv.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

.thread99:                                        ; preds = %_ZNK5boost6system10error_codecvbEv.exit62, %.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.b

_ZNK5boost6system10error_codecvbEv.exit62.thread: ; preds = %_ZNK5boost6system10error_codecvbEv.exit62, %.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZNK5boost6system10error_code5valueEv.exit17.i.i, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.thread95, %.thread92, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, %_ZNK5boost6system10error_codecvbEv.exit62.thread
  %.5 = phi i64 [ %.140, %.thread95 ], [ %i.e, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit ], [ %.140, %_ZNK5boost6system10error_codecvbEv.exit62.thread ], [ %.140, %.thread92 ], [ %i.e, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ], [ %i.e, %_ZNK5boost6system10error_code5valueEv.exit17.i.i ], [ %i.e, %_ZNK5boost6system10error_code8categoryEv.exit20.i.i ]
  ret i64 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1553
  %.not.i.i = icmp eq i64 %i.c, 0                 ; 2 uses
  %.0.v.i.i = select i1 %.not.i.i, i64 16, i64 32
  %.0.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0.v.i.i
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.d = add nuw nsw i64 9, 1
  %xtraiter = and i64 %i.d, 7                     ; 2 uses
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.i.i.i.epil

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1552
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1553
  %i.h = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.e, i64 %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil = phi ptr [ %i.l, %.lr.ph.i.i.i.epil ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.epil = phi i64 [ %i.k, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1553
  %i.k = add i64 %i.j, %.068.i.i.i.epil           ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !7852

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit: ; preds = %.lr.ph.i.i.i.epil
  %i.m = icmp ult i64 %i.k, 8193
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  br label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %bb.c
  %.01017.i.i.i = phi ptr [ %i.t, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %1, %bb.c ] ; 3 uses
  %.sroa.011.016.i.i.i = phi ptr [ %i.r, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.6.015.i.i.i = phi i64 [ %i.s, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ 8192, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01017.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1553 ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.sroa.6.015.i.i.i, i64 %i.o) ; 3 uses
  %.not.i.i4.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i4.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i29
  %i.q = load ptr, ptr %.01017.i.i.i, align 8, !tbaa !1552
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.011.016.i.i.i, ptr align 1 %i.q, i64 %i.p, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i29
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i.i, i64 %i.p
  %i.s = sub nuw nsw i64 %.sroa.6.015.i.i.i, %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01017.i.i.i, i64 16 ; 2 uses
  %i.u = icmp ne i64 %i.s, 0
  %i.v = icmp ne ptr %i.t, %.0.i.i
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i.i29, label %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, !llvm.loop !46

_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i
  %i.x = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.h

bb.e:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !7855
  %i.aa = icmp ugt i64 %i.k, %i.z
  br i1 %i.aa, label %bb.f, label %.lr.ph.preheader.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #40, !noalias !7856
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1549 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !1549
  %.not.i.i.i.i30 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i30, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #38
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.f
  store i64 %i.k, ptr %i.y, align 8, !tbaa !7855
  %.pre = load i64, ptr %i.b, align 8, !tbaa !1553
  %i.ae = icmp eq i64 %.pre, 0
  %i.af = select i1 %i.ae, i64 16, i64 32
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %.not.i.i.i31 = phi i64 [ 32, %bb.e ], [ %i.af, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1549
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.not.i.i.i31
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.preheader.i.i
  %.01017.i.i = phi ptr [ %i.ao, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.011.016.i.i = phi ptr [ %i.am, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.ah, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi i64 [ %i.an, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.k, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01017.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1553 ; 2 uses
  %i.ak = tail call i64 @llvm.umin.i64(i64 %.sroa.6.015.i.i, i64 %i.aj) ; 3 uses
  %.not.i.i4.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i4.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.al = load ptr, ptr %.01017.i.i, align 8, !tbaa !1552
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.011.016.i.i, ptr align 1 %i.al, i64 %i.ak, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i, i64 %i.ak
  %i.an = sub nuw i64 %.sroa.6.015.i.i, %i.ak     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01017.i.i, i64 16 ; 2 uses
  %i.ap = icmp ne i64 %i.an, 0
  %i.aq = icmp ne ptr %i.ao, %.0.i.i.i
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit, !llvm.loop !46

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !1549
  %i.at = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.as, i64 %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit, %bb.b
  %.1 = phi i64 [ %i.at, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit ], [ %i.h, %bb.b ], [ %i.x, %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1441   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1868
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !1868
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1869 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.lr.ph.i.i.i.epil.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5boost5beast4test10fail_count4failERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.g, label %bb.s, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1553
  %.not.i.i.i.i.not = icmp eq i64 %i.i, 0
  %i.j = select i1 %.not.i.i.i.i.not, i64 1, i64 2
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi ptr [ %i.n, %.lr.ph.i.i.i.epil ], [ %1, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.068.i.i.i.epil = phi i64 [ %i.m, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1553
  %i.m = add i64 %i.l, %.068.i.i.i.epil           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.j
  br i1 %epil.iter.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit.epilog-lcssa, label %.lr.ph.i.i.i.epil, !llvm.loop !7857

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit.epilog-lcssa: ; preds = %.lr.ph.i.i.i.epil
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit.epilog-lcssa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.s

bb.d:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.p = load ptr, ptr %0, align 8, !tbaa !1441
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !1872
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.s = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #35 ; 2 uses
  %.not.i.i.i12 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i12, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.s) #37
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.d
  store i8 1, ptr %i.r, align 8, !tbaa !1873
  %i.t = load ptr, ptr %0, align 8, !tbaa !1441   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1874 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1443 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i2.i, label %_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i, label %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_6detail12buffers_pairILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESC_.exit

_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.noexc
  %i.z = phi ptr [ %i.ac, %.noexc ], [ %i.t, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 216
end_hunk_0
begin_hunk_1_@_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE10write_someINS3_12const_bufferEEEmRKT_RNS_6system10error_codeE:bb.a

bb.t:                                             ; preds = %bb.b, %_ZN5boost10shared_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit, %bb.d
  %.118 = phi i64 [ %.017, %_ZN5boost10shared_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i64 %.118
}

declare noundef zeroext i1 @_ZN5boost5beast9websocket6detail10check_utf8EPKcm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN5boost5beast9websocket6detail12utf8_checker5writeEPKhm(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(7104), ptr noundef nonnull align 8 dereferenceable(52), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

declare void @_ZN5boost5beast4zlib15make_error_codeENS1_5errorE(ptr dead_on_unwind writable sret(%"class.boost::system::error_code") align 8, i32 noundef) local_unnamed_addr #9

declare void @_ZN5boost5beast4zlib6detail14inflate_stream7doClearEv(ptr noundef nonnull align 8 dereferenceable(7104)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE10write_someINS0_6detail12buffers_pairILb1EEEEEmbRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.a = alloca [14 x i8], align 1                ; 12 uses
  %5 = alloca %"class.boost::asio::const_buffer", align 8 ; 5 uses
  %6 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.b = alloca [14 x i8], align 1                ; 12 uses
  %7 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::beast::detail::buffers_pair<true>>>>::const_iterator::increment", align 8 ; 4 uses
  %8 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::beast::detail::buffers_pair<true>>>>::const_iterator", align 8 ; 10 uses
  %i.c = alloca [14 x i8], align 1                ; 9 uses
  %9 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::beast::detail::buffers_pair<true>>::const_iterator", align 8 ; 6 uses
  %i.d = alloca [14 x i8], align 1                ; 9 uses
  %10 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.e = alloca [14 x i8], align 1                ; 12 uses
  %i.f = alloca i64, align 8                      ; 22 uses
  %11 = alloca %"class.boost::beast::buffers_suffix.330", align 8 ; 9 uses
  %12 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 13 uses
  %13 = alloca %"struct.std::array", align 1      ; 4 uses
  %14 = alloca %"class.boost::beast::flat_static_buffer.94", align 8 ; 10 uses
  %15 = alloca %"class.boost::beast::buffers_cat_view.340", align 8 ; 10 uses
  %16 = alloca %"class.boost::beast::flat_static_buffer.94", align 8 ; 9 uses
  %17 = alloca %"class.boost::beast::buffers_cat_view.345", align 8 ; 12 uses
  %18 = alloca %"class.boost::beast::buffers_suffix.330", align 8 ; 12 uses
  %19 = alloca %"class.boost::beast::flat_static_buffer.94", align 8 ; 10 uses
  %20 = alloca %"class.boost::beast::buffers_cat_view.349", align 8 ; 14 uses
  %21 = alloca %"class.boost::beast::buffers_prefix_view.353", align 8 ; 13 uses
  %22 = alloca %"struct.std::array", align 1      ; 6 uses
  %23 = alloca %"class.boost::beast::flat_static_buffer.94", align 8 ; 9 uses
  %24 = alloca %"class.boost::beast::buffers_suffix.330", align 8 ; 10 uses
  %25 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %26 = alloca %"class.boost::beast::buffers_cat_view.340", align 8 ; 10 uses
  %27 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %28 = alloca %"class.boost::beast::buffers_suffix.330", align 8 ; 9 uses
  %29 = alloca %"struct.std::array", align 1      ; 6 uses
  %30 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 8 uses
  %31 = alloca %"class.boost::beast::flat_static_buffer.94", align 8 ; 10 uses
  %32 = alloca %"class.boost::beast::buffers_cat_view.340", align 8 ; 10 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !1615   ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  store i64 0, ptr %i.f, align 8, !tbaa !1319
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = tail call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.h, label %bb.da, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2237 ; 7 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1794, !range !1351, !noundef !1352
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread632, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1553
  %.not.i.i.i.i.not = icmp eq i64 %i.m, 0
  %i.n = select i1 %.not.i.i.i.i.not, i64 1, i64 2
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi ptr [ %i.r, %.lr.ph.i.i.i.epil ], [ %2, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.068.i.i.i.epil = phi i64 [ %i.q, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1553
  %i.q = add i64 %i.p, %.068.i.i.i.epil           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.n
  br i1 %epil.iter.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !9262

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit: ; preds = %.lr.ph.i.i.i.epil
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 2239
  %i.t = load i8, ptr %i.s, align 1, !tbaa !1692, !range !1351, !noundef !1352
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 2238
  store i8 %i.t, ptr %i.u, align 2, !tbaa !2240
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1702
  %.not2.i = icmp eq ptr %i.w, null
  br i1 %.not2.i, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 2241
  %i.y = load i8, ptr %i.x, align 1, !tbaa !1693, !range !1351, !noundef !1352
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp uge i64 %i.q, %i.ab
  %narrow.i = select i1 %i.z, i1 %i.ac, i1 false
  %.ph.i = zext i1 %narrow.i to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 2240
  store i8 %.ph.i, ptr %i.ad, align 8, !tbaa !2241
  br label %bb.d

bb.c:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 2240
  store i8 0, ptr %i.ae, align 8, !tbaa !2241
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 2224
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !1913
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %.thread.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 2248 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1549
  %.not3.i = icmp eq ptr %i.aj, null
  br i1 %.not3.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !1695
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1859
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1695 ; 2 uses
  %.not.i = icmp eq i64 %i.al, %i.an
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.ao = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.an, %bb.e ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !1859
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #40, !noalias !9295
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !1549 ; 2 uses
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !1549
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1695
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  store i64 %i.at, ptr %i.au, align 8, !tbaa !1859
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 2248 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1549 ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !1549
  %.not.i.i.i.i145 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i145, label %bb.h, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i: ; preds = %bb.g, %bb.f
  %.sink.i = phi ptr [ %i.ar, %bb.f ], [ %i.aw, %bb.g ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sink.i) #38
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i, %bb.g, %bb.f, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 2240
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !2241, !range !1351, !noundef !1352
  %i.az = shl nuw nsw i8 %i.ay, 2                 ; 2 uses
  %.pre = load i8, ptr %i.i, align 1, !tbaa !1794, !range !1351
  %i.ba = trunc nuw i8 %.pre to i1
  br i1 %i.ba, label %.thread632, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 2242
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !1694
  br label %.thread632

.thread632:                                       ; preds = %bb.b, %bb.h, %bb.i
  %.sroa.29.0634 = phi i8 [ %i.az, %bb.i ], [ %i.az, %bb.h ], [ 0, %bb.b ] ; 5 uses
  %i.bd = phi i8 [ %i.bc, %bb.i ], [ 0, %bb.h ], [ 0, %bb.b ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 2224 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1913
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1553
  %.not.i.i.i.i146.not = icmp eq i64 %i.bh, 0
  %i.bi = select i1 %.not.i.i.i.i146.not, i64 1, i64 2
  br label %.lr.ph.i.i.i149.epil

.lr.ph.i.i.i149.epil:                             ; preds = %.lr.ph.i.i.i149.epil, %.thread632
  %.09.i.i.i150.epil = phi ptr [ %i.bm, %.lr.ph.i.i.i149.epil ], [ %2, %.thread632 ] ; 2 uses
  %.068.i.i.i151.epil = phi i64 [ %i.bl, %.lr.ph.i.i.i149.epil ], [ 0, %.thread632 ]
  %epil.iter682 = phi i64 [ %epil.iter682.next, %.lr.ph.i.i.i149.epil ], [ 0, %.thread632 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i150.epil, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !1553
  %i.bl = add i64 %i.bk, %.068.i.i.i151.epil      ; 16 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i.i.i150.epil, i64 16
  %epil.iter682.next = add i64 %epil.iter682, 1   ; 2 uses
  %epil.iter682.cmp.not = icmp eq i64 %epil.iter682.next, %i.bi
  br i1 %epil.iter682.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit153, label %.lr.ph.i.i.i149.epil, !llvm.loop !9265

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit153: ; preds = %.lr.ph.i.i.i149.epil
  %.not.not.not = icmp eq i32 %i.bf, 0            ; 2 uses
  %i.bn = select i1 %.not.not.not, i8 2, i8 0
  %i.bo = or disjoint i8 %i.bn, %.sroa.29.0634    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 2240
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !2241, !range !1351, !noundef !1352
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit153
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !1786
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %11, ptr %i.bs, align 8, !tbaa !2221
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.bt, align 8, !tbaa !2222
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 2248 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 2256 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !1549
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !1859
  store ptr %i.by, ptr %12, align 8
  store i64 %i.bz, ptr %i.bw, align 8
  %i.ca = call noundef zeroext i1 @_ZN5boost5beast9websocket6detail9impl_baseILb1EE7deflateINS0_6detail12buffers_pairILb1EEEEEbRNS_4asio14mutable_bufferERNS0_14buffers_suffixIT_EEbRmRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(48) %11, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.cb = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.cb, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 40
  %.2..2..2..2.gep.sroa_idx692 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.4..4..4..4.gep27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.10..10..10..10.gep28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cf = xor i1 %1, true
  %i.cg = zext i1 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.4383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 24
  %.ptr4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.2..2..2..2.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.1..1..1..1..sroa_idx690 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.2..2..2..2.gep.sroa_idx693 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.1..1..1..1..sroa_idx691 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %bb.k

.thread:                                          ; preds = %bb.y, %bb.j
  %i.cn = load i64, ptr %i.f, align 8, !tbaa !1319
  br label %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit

bb.k:                                             ; preds = %.lr.ph, %bb.y
  %i.co = phi i1 [ %i.ca, %.lr.ph ], [ %i.em, %bb.y ] ; 3 uses
  %.sroa.12.0535 = phi i32 [ undef, %.lr.ph ], [ %.sroa.12.1, %bb.y ]
  %.sroa.20.0534 = phi i8 [ %i.bd, %.lr.ph ], [ 0, %bb.y ]
  %.sroa.29.1533 = phi i8 [ %i.bo, %.lr.ph ], [ %i.ej, %bb.y ] ; 3 uses
  %.sroa.2.0.copyload = load i64, ptr %i.bw, align 8, !tbaa !1319 ; 6 uses
  %i.cp = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.cp, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = and i8 %.sroa.29.1533, 2
  %.not144 = icmp eq i8 %i.cq, 0                  ; 2 uses
  br i1 %.not144, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %0, align 8, !tbaa !1615
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2385
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !1696, !range !1351, !noundef !1352
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = call noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.cu)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %i.cw = call noundef i32 %i.cv(), !inline_history !77 ; 3 uses
  %.not.i154 = icmp eq i32 %i.cw, 0
  br i1 %.not.i154, label %bb.n, label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit, !llvm.loop !78

_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr noundef nonnull align 1 dereferenceable(4) %13, i32 noundef %i.cw)
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 1 dereferenceable(4) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit, %bb.l
  %.sroa.12.1 = phi i32 [ %.sroa.12.0535, %bb.l ], [ %i.cw, %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit ] ; 2 uses
  %i.cx = xor i1 %i.co, true
  %i.cy = zext i1 %i.cx to i8
  %i.cz = and i8 %.sroa.29.1533, -2
  %i.da = or disjoint i8 %i.cz, %i.cy             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %14, ptr noundef nonnull %i.cc, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.db = select i1 %i.co, i8 0, i8 -128
  %i.dc = shl nuw nsw i8 %.sroa.29.1533, 4
  %i.dd = and i8 %i.dc, 64
  %spec.select.i = or i8 %.sroa.20.0534, %i.dd
  %spec.select37.i = or i8 %spec.select.i, %i.db
  store i8 %spec.select37.i, ptr %i.e, align 1, !tbaa !1322
  %i.de = shl i8 %i.da, 6                         ; 3 uses
  %i.df = icmp ult i64 %.sroa.2.0.copyload, 126
  br i1 %i.df, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dg = and i8 %i.de, -128
  %i.dh = trunc nuw nsw i64 %.sroa.2.0.copyload to i8
  %i.di = or disjoint i8 %i.dg, %i.dh
  store i8 %i.di, ptr %.1..1..1..1..sroa_idx691, align 1, !tbaa !1322
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.dj = icmp ult i64 %.sroa.2.0.copyload, 65536
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = or i8 %i.de, 126
  store i8 %i.dk, ptr %.1..1..1..1..sroa_idx690, align 1, !tbaa !1322
  %i.dl = trunc nuw i64 %.sroa.2.0.copyload to i16
  %i.dm = call noundef i16 @llvm.bswap.i16(i16 %i.dl)
  store i16 %i.dm, ptr %.2..2..2..2.gep.sroa_idx693, align 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dn = or i8 %i.de, 127
  store i8 %i.dn, ptr %.1..1..1..1..sroa_idx, align 1, !tbaa !1322
  %i.do = call noundef i64 @llvm.bswap.i64(i64 %.sroa.2.0.copyload)
  store i64 %i.do, ptr %.2..2..2..2.gep.sroa_idx, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %.0.sroa.phi.i = phi ptr [ %.2..2..2..2.gep.sroa_idx692, %bb.p ], [ %.4..4..4..4.gep27.sroa_idx, %bb.r ], [ %.10..10..10..10.gep28.sroa_idx, %bb.s ]
  %.0.i = phi i64 [ 2, %bb.p ], [ 4, %bb.r ], [ 10, %bb.s ] ; 2 uses
  br i1 %.not144, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %.sroa.12.1, ptr %.0.sroa.phi.i, align 1
  %i.dp = add nuw nsw i64 %.0.i, 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.i = phi i64 [ %i.dp, %bb.u ], [ %.0.i, %bb.t ]
  %i.dq = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %14, i64 noundef %.1.i) ; 2 uses
  %i.dr = extractvalue { ptr, i64 } %i.dq, 1      ; 2 uses
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dr, i64 14) ; 2 uses
  %.not.i.i.i.i155 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i.i.i155, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = extractvalue { ptr, i64 } %i.dq, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dt, ptr nonnull align 1 %i.e, i64 %i.ds, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit: ; preds = %bb.v, %bb.w
  %i.du = load ptr, ptr %i.cd, align 8, !tbaa !2239
  %i.dv = load ptr, ptr %i.ce, align 8, !tbaa !2217 ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.dy, i64 %i.ds)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.speculated.i.i ; 3 uses
  store ptr %i.dz, ptr %i.ce, align 8, !tbaa !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 %i.cg, ptr %i.i, align 1, !tbaa !1794
  %i.ea = load ptr, ptr %i.ch, align 8, !tbaa !1683, !nonnull !1352, !align !1356
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.eb = load ptr, ptr %i.ci, align 8, !tbaa !2216 ; 3 uses
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  store ptr %i.eb, ptr %15, align 8, !tbaa !1357
  store i64 %i.ee, ptr %.sroa.4383.0..sroa_idx, align 8, !tbaa !1319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !1968
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !9296)
  call void @llvm.experimental.noalias.scope.decl(metadata !9297)
  store ptr %15, ptr %10, align 8, !tbaa !2245, !alias.scope !9298
  store i64 1, ptr %i.cl, align 8, !alias.scope !9298
  store ptr %15, ptr %i.ck, align 8, !tbaa !2246, !alias.scope !9298
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dz, %i.eb
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !2246, !alias.scope !9298
  store i8 2, ptr %i.cl, align 8, !tbaa !2247, !alias.scope !9298
  %i.ef = load i64, ptr %i.cm, align 8, !tbaa !1553, !noalias !9298
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr %.ptr4.i.i.i.i.i.i, ptr %i.ck, align 8, !tbaa !2246, !alias.scope !9298
  store i8 0, ptr %i.ck, align 8, !tbaa !2092, !alias.scope !9298
  store i8 3, ptr %i.cl, align 8, !tbaa !2247, !alias.scope !9298
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit, %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %i.eg = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferES9_EEENSA_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
end_hunk_1
begin_hunk_2_@_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE10write_someINS0_6detail12buffers_pairILb1EEEEEmbRKT_RNS_6system10error_codeE:bb.a

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.fb, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 40
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %16, ptr noundef nonnull %i.fc, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.fd = select i1 %1, i8 -128, i8 0
  %i.fe = shl nuw nsw i8 %.sroa.29.0634, 4
  %i.ff = or disjoint i8 %i.fe, %i.fd
  %spec.select37.i163 = or i8 %i.bd, %i.ff
  store i8 %spec.select37.i163, ptr %i.d, align 1, !tbaa !1322
  %i.fg = icmp ult i64 %i.bl, 126
  br i1 %i.fg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fh = trunc nuw nsw i64 %i.bl to i8
  %.1..1..1..1..sroa_idx694 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.fh, ptr %.1..1..1..1..sroa_idx694, align 1, !tbaa !1322
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.fi = icmp ult i64 %i.bl, 65536
  br i1 %i.fi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %.1..1..1..1..sroa_idx696 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 126, ptr %.1..1..1..1..sroa_idx696, align 1, !tbaa !1322
  %i.fj = trunc nuw i64 %i.bl to i16
  %i.fk = call noundef i16 @llvm.bswap.i16(i16 %i.fj)
  %.2..2..2..2.gep.sroa_idx698 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %i.fk, ptr %.2..2..2..2.gep.sroa_idx698, align 1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %.1..1..1..1..sroa_idx695 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 127, ptr %.1..1..1..1..sroa_idx695, align 1, !tbaa !1322
  %i.fl = call noundef i64 @llvm.bswap.i64(i64 %i.bl)
  %.2..2..2..2.gep.sroa_idx697 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i64 %i.fl, ptr %.2..2..2..2.gep.sroa_idx697, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %bb.ai, %bb.aj
  %.0.i166 = phi i64 [ 2, %bb.ag ], [ 4, %bb.ai ], [ 10, %bb.aj ]
  %i.fm = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %16, i64 noundef %.0.i166) ; 2 uses
  %i.fn = extractvalue { ptr, i64 } %i.fm, 1      ; 2 uses
  %i.fo = call i64 @llvm.umin.i64(i64 %i.fn, i64 14) ; 2 uses
  %.not.i.i.i.i169 = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i.i.i169, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit171, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fp = extractvalue { ptr, i64 } %i.fm, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fp, ptr nonnull align 1 %i.d, i64 %i.fo, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit171

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit171: ; preds = %bb.ak, %bb.al
  %i.fq = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !2239
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !2217 ; 2 uses
  %i.fu = ptrtoint ptr %i.fr to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %.sroa.speculated.i.i170 = call i64 @llvm.umin.i64(i64 %i.fw, i64 %i.fo)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.sroa.speculated.i.i170 ; 3 uses
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fy = xor i1 %1, true
  %i.fz = zext i1 %i.fy to i8
  store i8 %i.fz, ptr %i.i, align 1, !tbaa !1794
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !1683, !nonnull !1352, !align !1356
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  %i.gc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !2216 ; 3 uses
  %i.ge = ptrtoint ptr %i.fx to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  store ptr %i.gd, ptr %17, align 8, !tbaa !1357
  %.sroa.4379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.gg, ptr %.sroa.4379.0..sroa_idx, align 8, !tbaa !1319
  %i.gh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !1786
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !9299)
  call void @llvm.experimental.noalias.scope.decl(metadata !9300)
  store ptr %17, ptr %9, align 8, !tbaa !2250, !alias.scope !9301
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 1, ptr %i.gj, align 8, !alias.scope !9301
  store ptr %17, ptr %i.gi, align 8, !tbaa !2246, !alias.scope !9301
  %.not.i.i.i.i.i.i174 = icmp eq ptr %i.fx, %i.gd
  br i1 %.not.i.i.i.i.i.i174, label %._crit_edge.i.i.i.i.i.i175, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_6detail12buffers_pairILb1EEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i175:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit171
  store i8 2, ptr %i.gj, align 8, !tbaa !2247, !alias.scope !9301
  %i.gk = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !1553, !noalias !9301
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gl, 0  ; 2 uses
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 32, i64 48
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %17, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !1553, !noalias !9301
  %.not.i.i.i2.i.i.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not.i.i.i2.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_6detail12buffers_pairILb1EEEEE14const_iteratorC2ERKNS4_5tupleIJS3_S6_EEESt17integral_constantIbLb0EE.exit.loopexit.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %._crit_edge.i.i.i.i.i.i175
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i177, label %.lr.ph.i.i.i.i.i.i.i.lr.ph, !llvm.loop !79

.lr.ph.i.i.i.i.i.i.i.lr.ph:                       ; preds = %.lr.ph.i.i.i.i.preheader
  %i.go = getelementptr inbounds nuw i8, ptr %17, i64 32
  br label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !79

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.lr.ph, %.lr.ph.i.i.i.i
  %i.gp = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i.i.lr.ph ], [ %i.gt, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.gq = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i.i.lr.ph ], [ %i.gp, %.lr.ph.i.i.i.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !1553, !noalias !9301
  %.not.i.i.i.i.i.i.i176 = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i.i.i.i.i.i176, label %.lr.ph.i.i.i.i, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_6detail12buffers_pairILb1EEEEE14const_iteratorC2ERKNS4_5tupleIJS3_S6_EEESt17integral_constantIbLb0EE.exit.loopexit.i.i.i.i, !llvm.loop !79

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %.sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %i.gu, label %.lr.ph.i.i.i.i.._crit_edge.i.i.i.i.i.i.i177_crit_edge, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !79

.lr.ph.i.i.i.i.._crit_edge.i.i.i.i.i.i.i177_crit_edge: ; preds = %.lr.ph.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i177, !llvm.loop !79

._crit_edge.i.i.i.i.i.i.i177:                     ; preds = %.lr.ph.i.i.i.i.._crit_edge.i.i.i.i.i.i.i177_crit_edge, %.lr.ph.i.i.i.i.preheader
  store ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, ptr %i.gi, align 8, !alias.scope !9301
  store i8 0, ptr %i.gi, align 8, !tbaa !2092, !alias.scope !9301
  store i8 3, ptr %i.gj, align 8, !tbaa !2247, !alias.scope !9301
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_6detail12buffers_pairILb1EEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit

_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_6detail12buffers_pairILb1EEEEE14const_iteratorC2ERKNS4_5tupleIJS3_S6_EEESt17integral_constantIbLb0EE.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i175
  %.lcssa.i.i.i.i = phi ptr [ %i.gh, %._crit_edge.i.i.i.i.i.i175 ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.lcssa.i.i.i.i, ptr %i.gi, align 8, !alias.scope !9301
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_6detail12buffers_pairILb1EEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_6detail12buffers_pairILb1EEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit171, %._crit_edge.i.i.i.i.i.i.i177, %_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_6detail12buffers_pairILb1EEEEE14const_iteratorC2ERKNS4_5tupleIJS3_S6_EEESt17integral_constantIbLb0EE.exit.loopexit.i.i.i.i
  %i.gv = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferENS3_6detail12buffers_pairILb1EEEEEENSD_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.gb, ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  %i.gw = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.gx = load i64, ptr %i.f, align 8, !tbaa !1319 ; 2 uses
  br i1 %i.gw, label %.thread476, label %bb.am

.thread476:                                       ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_6detail12buffers_pairILb1EEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.da

bb.am:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_6detail12buffers_pairILb1EEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISF_EE5valueEiE4typeE.exit
  %i.gy = add i64 %i.gx, %i.bl
  store i64 %i.gy, ptr %i.f, align 8, !tbaa !1319
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.cz

bb.an:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !1786
  %i.gz = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 6 uses
  store ptr %18, ptr %i.gz, align 8, !tbaa !2221
  %i.ha = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 5 uses
  store i64 0, ptr %i.ha, align 8, !tbaa !2222
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  %i.hc = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.hd = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.he = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.hf = xor i1 %1, true
  %i.hg = zext i1 %i.hf to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.hi = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hj = ptrtoint ptr %18 to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.hm = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %21, i64 56
  %i.ho = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.hp = getelementptr inbounds nuw i8, ptr %21, i64 24
  %.sroa.gep372 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.4375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.hs = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.ht = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.hu = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.hv = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.hw = getelementptr inbounds nuw i8, ptr %20, i64 88
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 24
  %.sroa.gep376 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ib = shl nsw i8 %.sroa.29.0634, 4            ; 2 uses
  %i.ic = or disjoint i8 0, 127
  %i.id = or disjoint i8 0, 126
  %i.ie = shl nuw nsw i8 %i.bo, 1
  %i.if = and i8 %i.ie, 4
  %i.ig = zext nneg i8 %i.if to i64
  %i.ih = or i8 %i.bd, %i.ib
  %.1..1..1..1..sroa_idx699 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx702 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx700 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx703 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx701 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, %bb.an
  %.sroa.20.3 = phi i8 [ %i.ih, %bb.an ], [ %i.ib, %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit ]
  %.0127 = phi i64 [ %i.bl, %bb.an ], [ %i.ij, %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit ] ; 2 uses
  %i.ii = load i64, ptr %i.hb, align 8, !tbaa !1859
  %..i = call noundef i64 @llvm.umin.i64(i64 %.0127, i64 %i.ii) ; 14 uses
  %i.ij = sub nuw i64 %.0127, %..i                ; 2 uses
  %i.ik = icmp eq i64 %i.ij, 0                    ; 2 uses
  %i.il = and i1 %1, %i.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %19, ptr noundef nonnull %i.hc, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.im = select i1 %i.il, i8 -128, i8 0
  %spec.select37.i183 = or i8 %.sroa.20.3, %i.im
  store i8 %spec.select37.i183, ptr %i.c, align 1, !tbaa !1322
  %i.in = icmp ult i64 %..i, 126
  br i1 %i.in, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.io = trunc nuw nsw i64 %..i to i8
  %i.ip = or disjoint i8 0, %i.io
  store i8 %i.ip, ptr %.1..1..1..1..sroa_idx701, align 1, !tbaa !1322
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.iq = icmp ult i64 %..i, 65536
  br i1 %i.iq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i8 %i.id, ptr %.1..1..1..1..sroa_idx700, align 1, !tbaa !1322
  %i.ir = trunc nuw i64 %..i to i16
  %i.is = call noundef i16 @llvm.bswap.i16(i16 %i.ir)
  store i16 %i.is, ptr %.2..2..2..2.gep.sroa_idx703, align 1
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  store i8 %i.ic, ptr %.1..1..1..1..sroa_idx699, align 1, !tbaa !1322
  %i.it = call noundef i64 @llvm.bswap.i64(i64 %..i)
  store i64 %i.it, ptr %.2..2..2..2.gep.sroa_idx702, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ap
  %.0.i186 = phi i64 [ 2, %bb.ap ], [ 4, %bb.ar ], [ 10, %bb.as ]
  %spec.select = add nuw nsw i64 %.0.i186, %i.ig
  %i.iu = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %19, i64 noundef %spec.select) ; 2 uses
  %i.iv = extractvalue { ptr, i64 } %i.iu, 1      ; 2 uses
  %i.iw = call i64 @llvm.umin.i64(i64 %i.iv, i64 14) ; 2 uses
  %.not.i.i.i.i189 = icmp eq i64 %i.iv, 0
  br i1 %.not.i.i.i.i189, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ix = extractvalue { ptr, i64 } %i.iu, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ix, ptr nonnull align 1 %i.c, i64 %i.iw, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191: ; preds = %bb.at, %bb.au
  %i.iy = load ptr, ptr %i.hd, align 8, !tbaa !2239
  %i.iz = load ptr, ptr %i.he, align 8, !tbaa !2217 ; 2 uses
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %.sroa.speculated.i.i190 = call i64 @llvm.umin.i64(i64 %i.jc, i64 %i.iw)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.sroa.speculated.i.i190 ; 3 uses
  store ptr %i.jd, ptr %i.he, align 8, !tbaa !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.hg, ptr %i.i, align 1, !tbaa !1794
  %i.je = load ptr, ptr %i.hh, align 8, !tbaa !1683, !nonnull !1352, !align !1356
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #35
  %i.jf = load ptr, ptr %i.hi, align 8, !tbaa !2216 ; 3 uses
  %i.jg = ptrtoint ptr %i.jd to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !9302)
  %i.jj = load ptr, ptr %i.gz, align 8, !tbaa !2221, !noalias !9302
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = sub i64 %i.jk, %i.hj                    ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(48) %18, i64 32, i1 false), !tbaa.struct !1786
  %i.jm = getelementptr inbounds i8, ptr %21, i64 %i.jl ; 7 uses
  store ptr %i.jm, ptr %i.hk, align 8, !tbaa !2221, !alias.scope !9302
  %i.jn = load i64, ptr %i.ha, align 8, !tbaa !2222, !noalias !9302 ; 3 uses
  store i64 %i.jn, ptr %i.hl, align 8, !tbaa !2222, !alias.scope !9302
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i8 0, i64 16, i1 false), !alias.scope !9302
  store ptr %i.jm, ptr %i.ho, align 8, !tbaa !2246, !alias.scope !9302
  store ptr %21, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !2252, !alias.scope !9302
  %i.jo = load i64, ptr %i.hp, align 8, !tbaa !1553, !alias.scope !9302
  %.not.i.i.i.i.i.i194 = icmp eq i64 %i.jo, 0     ; 2 uses
  %.0.v.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i194, i64 16, i64 32 ; 2 uses
  %.0.v.i.i.i.i.i.i.sroa.sel = select i1 %.not.i.i.i.i.i.i194, ptr %.sroa.gep372, ptr %i.hk ; 3 uses
  %.not34.i.i.i = icmp eq i64 %i.jl, %.0.v.i.i.i.i.i.i
  br i1 %.not34.i.i.i, label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit, label %.lr.ph.split.i.preheader.i.i

.lr.ph.split.i.preheader.i.i:                     ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %.sroa.4.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !1319, !alias.scope !9302
  %i.jq = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.peel.i.i, i64 %i.jn) ; 6 uses
  %.not.i.peel.i.i = icmp ult i64 %i.jq, %..i
  br i1 %.not.i.peel.i.i, label %bb.av, label %.thread.i.i.i

bb.av:                                            ; preds = %.lr.ph.split.i.preheader.i.i
  store i64 %i.jq, ptr %i.hm, align 8, !tbaa !2255, !alias.scope !9302
  %i.jr = add nsw i64 %i.jl, 16
  %.not27.i.peel.i.i = icmp eq i64 %i.jr, %.0.v.i.i.i.i.i.i
  br i1 %.not27.i.peel.i.i, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.split.i.peel.next.i.i

.lr.ph.split.i.peel.next.i.i:                     ; preds = %bb.av
  %i.js = sub nuw i64 %..i, %i.jq
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.aw, %.lr.ph.split.i.peel.next.i.i
  %.01022.i.i.i = phi i64 [ %i.jy, %bb.aw ], [ %i.js, %.lr.ph.split.i.peel.next.i.i ] ; 3 uses
  %i.jt = phi ptr [ %i.jv, %bb.aw ], [ %i.jp, %.lr.ph.split.i.peel.next.i.i ] ; 2 uses
  %i.ju = phi i64 [ %i.jz, %bb.aw ], [ %i.jq, %.lr.ph.split.i.peel.next.i.i ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !1319, !alias.scope !9302 ; 4 uses
  %.not.i.i.i195 = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i, %.01022.i.i.i
  br i1 %.not.i.i.i195, label %bb.aw, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.i.preheader.i.i
  %.01022.i.lcssa.i.i = phi i64 [ %..i, %.lr.ph.split.i.preheader.i.i ], [ %.01022.i.i.i, %.lr.ph.split.i.i.i ] ; 2 uses
  %.lcssa9.i.i = phi i64 [ 0, %.lr.ph.split.i.preheader.i.i ], [ %i.ju, %.lr.ph.split.i.i.i ]
  %.lcssa.i.i = phi ptr [ %i.jp, %.lr.ph.split.i.preheader.i.i ], [ %i.jv, %.lr.ph.split.i.i.i ] ; 2 uses
  %.pn.i.i.lcssa.i.i = phi i64 [ %i.jq, %.lr.ph.split.i.preheader.i.i ], [ %.sroa.4.0.copyload.i.i.i.i, %.lr.ph.split.i.i.i ]
  store ptr %.lcssa.i.i, ptr %i.ho, align 8, !tbaa !2256, !alias.scope !9302
  %i.jw = add i64 %.lcssa9.i.i, %.01022.i.lcssa.i.i ; 2 uses
  store i64 %i.jw, ptr %i.hm, align 8, !tbaa !2255, !alias.scope !9302
  %i.jx = sub i64 %.01022.i.lcssa.i.i, %.pn.i.i.lcssa.i.i ; 2 uses
  store i64 %i.jx, ptr %i.hn, align 8, !tbaa !2257, !alias.scope !9302
  br label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit

bb.aw:                                            ; preds = %.lr.ph.split.i.i.i
  %i.jy = sub nuw i64 %.01022.i.i.i, %.sroa.4.0.copyload.i.i.i.i
  %i.jz = add i64 %.sroa.4.0.copyload.i.i.i.i, %i.ju ; 3 uses
  store i64 %i.jz, ptr %i.hm, align 8, !tbaa !2255, !alias.scope !9302
  %.not27.i.i.i = icmp eq ptr %i.jv, %.0.v.i.i.i.i.i.i.sroa.sel
  br i1 %.not27.i.i.i, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !80

..loopexit_crit_edge.i.i.i:                       ; preds = %bb.aw, %bb.av
  %i.ka = phi i64 [ %i.jq, %bb.av ], [ %i.jz, %bb.aw ]
  store ptr %.0.v.i.i.i.i.i.i.sroa.sel, ptr %i.ho, align 8, !tbaa !2256, !alias.scope !9302
  br label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit

_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191, %.thread.i.i.i, %..loopexit_crit_edge.i.i.i
  %i.kb = phi i64 [ 0, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191 ], [ %i.jx, %.thread.i.i.i ], [ 0, %..loopexit_crit_edge.i.i.i ]
  %i.kc = phi i64 [ 0, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191 ], [ %i.jw, %.thread.i.i.i ], [ %i.ka, %..loopexit_crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = phi ptr [ %i.jm, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit191 ], [ %.lcssa.i.i, %.thread.i.i.i ], [ %.0.v.i.i.i.i.i.i.sroa.sel, %..loopexit_crit_edge.i.i.i ] ; 2 uses
  store ptr %i.jf, ptr %20, align 8, !tbaa !1357
  store i64 %i.ji, ptr %.sroa.4375.0..sroa_idx, align 8, !tbaa !1319
  %.not = icmp eq ptr %i.jm, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.kd = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i.i.i to i64
  %i.ke = ptrtoaddr ptr %i.jm to i64
  %reass.sub.i.i.i.i.i.i = sub i64 %i.kd, %i.ke
  %i.kf = and i64 %reass.sub.i.i.i.i.i.i, -16
  %.0.lcssa.i.i.i.i.i.i.i = select i1 %.not, i64 0, i64 %i.kf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hq, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  %i.kg = getelementptr inbounds i8, ptr %i.hq, i64 %i.jl ; 3 uses
  store ptr %i.kg, ptr %i.hr, align 8, !tbaa !2221, !alias.scope !9303
  store i64 %i.jn, ptr %i.hs, align 8, !tbaa !2222, !alias.scope !9303
  store i64 %i.kc, ptr %i.ht, align 8, !tbaa !2255, !alias.scope !9303
  store i64 %i.kb, ptr %i.hu, align 8, !tbaa !2257, !alias.scope !9303
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.kg, i64 %.0.lcssa.i.i.i.i.i.i.i
  store ptr %scevgep.i.i.i.i.i.i.i.i, ptr %i.hv, align 8, !alias.scope !9303
  store ptr %i.hq, ptr %i.hw, align 8, !alias.scope !9303
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !9304)
  call void @llvm.experimental.noalias.scope.decl(metadata !9305)
  store ptr %20, ptr %8, align 8, !tbaa !2262, !alias.scope !9306
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hz, i8 0, i64 32, i1 false), !alias.scope !9306
  store ptr %20, ptr %i.hx, align 8, !tbaa !2246, !alias.scope !9306
  store i8 1, ptr %i.hy, align 8, !tbaa !2263, !alias.scope !9306
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !9306
  store ptr %8, ptr %7, align 8, !tbaa !2265, !noalias !9306
  %.not.i.i.i.i.i.i197 = icmp eq ptr %i.jd, %i.jf
  br i1 %.not.i.i.i.i.i.i197, label %._crit_edge.i.i.i.i.i.i198, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS2_6detail12buffers_pairILb1EEEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i198:                       ; preds = %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit
  store ptr %i.hq, ptr %i.hx, align 8, !tbaa !2246, !alias.scope !9306
  store i64 %i.kc, ptr %i.hz, align 8, !tbaa !1319, !alias.scope !9306
  store ptr %i.kg, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !2246, !alias.scope !9306
  store ptr %i.hq, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !2252, !alias.scope !9306
  store i8 2, ptr %i.hy, align 8, !tbaa !2263, !alias.scope !9306
  invoke void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEEEE14const_iterator9increment4nextESt17integral_constantImLm2EE(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS2_6detail12buffers_pairILb1EEEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit unwind label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i.i.i198
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #36
  unreachable

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS2_6detail12buffers_pairILb1EEEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS0_6detail12buffers_pairILb1EEEEEEENS0_19buffers_prefix_viewIT_EEmRKS8_.exit, %._crit_edge.i.i.i.i.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !9306
  %i.kj = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferENS3_19buffers_prefix_viewINS3_14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEEEENSH_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.je, ptr noundef nonnull align 8 dereferenceable(96) %20, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  %i.kk = load i64, ptr %i.f, align 8, !tbaa !1319
  %i.kl = add i64 %i.kk, %..i
  store i64 %i.kl, ptr %i.f, align 8, !tbaa !1319
  %i.km = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.km, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS2_6detail12buffers_pairILb1EEEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISJ_EE5valueEiE4typeE.exit
  br i1 %i.ik, label %.thread487, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kn = load i64, ptr %i.ia, align 8, !tbaa !1553
  %.not.i.i.i199 = icmp eq i64 %i.kn, 0
  %.0.v.i.i.i.sroa.sel = select i1 %.not.i.i.i199, ptr %.sroa.gep376, ptr %i.gz ; 2 uses
  %.not12.i = icmp eq i64 %..i, 0
  br i1 %.not12.i, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.az
  %.promoted.i = load ptr, ptr %i.gz, align 8     ; 3 uses
  %.not11.i.peel = icmp eq ptr %.promoted.i, %.0.v.i.i.i.sroa.sel
  br i1 %.not11.i.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i
end_hunk_2
begin_hunk_3_@_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE10write_someINS0_6detail12buffers_pairILb1EEEEEmbRKT_RNS_6system10error_codeE:bb.a
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.oa = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bv

bb.bv:                                            ; preds = %.preheader, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit
  %.1128 = phi i64 [ %i.oy, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit ], [ %i.nd, %.preheader ] ; 3 uses
  %.not143 = icmp eq i64 %.1128, 0
  br i1 %.not143, label %bb.cf, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ob = load i64, ptr %i.md, align 8, !tbaa !1859 ; 2 uses
  %..i247 = call noundef i64 @llvm.umin.i64(i64 %.1128, i64 %i.ob) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #35
  %i.oc = load ptr, ptr %i.mf, align 8, !tbaa !1549 ; 2 uses
  store ptr %i.oc, ptr %27, align 8
  store i64 %..i247, ptr %i.ny, align 8
  %i.od = load i64, ptr %i.mi, align 8, !tbaa !1553
  %.not.i.i.i.i.i250 = icmp eq i64 %i.od, 0
  %.0.v.i.i.i.i.i251.sroa.sel = select i1 %.not.i.i.i.i.i250, ptr %.sroa.gep364, ptr %i.mb
  %.not16.i.i253 = icmp eq i64 %i.ob, 0
  br i1 %.not16.i.i253, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %.lr.ph.i.i254

.lr.ph.i.i254:                                    ; preds = %bb.bw
  %i.oe = load ptr, ptr %i.mb, align 8, !tbaa !2221
  br label %.lr.ph.split.i.i255

.lr.ph.split.i.i255:                              ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268, %.lr.ph.i.i254
  %.sroa.07.019.i.i257 = phi ptr [ %i.ol, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268 ], [ %i.oc, %.lr.ph.i.i254 ] ; 2 uses
  %.sroa.6.018.i.i258 = phi i64 [ %i.om, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268 ], [ %..i247, %.lr.ph.i.i254 ] ; 2 uses
  %.sroa.011.017.i.i259 = phi ptr [ %i.on, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268 ], [ %i.oe, %.lr.ph.i.i254 ] ; 5 uses
  %.not23.i.i260 = icmp eq ptr %.sroa.011.017.i.i259, %.0.v.i.i.i.i.i251.sroa.sel
  br i1 %.not23.i.i260, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit272, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.split.i.i255
  %i.of = load ptr, ptr %i.mb, align 8, !tbaa !2221
  %i.og = icmp eq ptr %.sroa.011.017.i.i259, %i.of
  %.sroa.0.0.copyload1.i.i.i261 = load ptr, ptr %.sroa.011.017.i.i259, align 8, !tbaa !1357 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i262 = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i259, i64 8
  %.sroa.4.0.copyload.i.i.i263 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i262, align 8, !tbaa !1319 ; 3 uses
  br i1 %i.og, label %bb.by, label %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i264

bb.by:                                            ; preds = %bb.bx
  %i.oh = load i64, ptr %i.mc, align 8, !tbaa !2222
  %spec.select.i.i.i.i271 = call i64 @llvm.umin.i64(i64 %i.oh, i64 %.sroa.4.0.copyload.i.i.i263) ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i261, i64 %spec.select.i.i.i.i271
  %i.oj = sub i64 %.sroa.4.0.copyload.i.i.i263, %spec.select.i.i.i.i271
  br label %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i264

_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i264: ; preds = %bb.by, %bb.bx
  %.pn3.i.i.i265 = phi ptr [ %i.oi, %bb.by ], [ %.sroa.0.0.copyload1.i.i.i261, %bb.bx ]
  %.pn.i.i.i266 = phi i64 [ %i.oj, %bb.by ], [ %.sroa.4.0.copyload.i.i.i263, %bb.bx ] ; 2 uses
  %i.ok = call i64 @llvm.umin.i64(i64 %.sroa.6.018.i.i258, i64 %.pn.i.i.i266) ; 3 uses
  %.not.i.i.i267 = icmp eq i64 %.pn.i.i.i266, 0
  br i1 %.not.i.i.i267, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268, label %bb.bz

bb.bz:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i264
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.07.019.i.i257, ptr align 1 %.pn3.i.i.i265, i64 %i.ok, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268: ; preds = %bb.bz, %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i264
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i257, i64 %i.ok
  %i.om = sub nuw i64 %.sroa.6.018.i.i258, %i.ok  ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i259, i64 16
  %.not.i.i269 = icmp eq i64 %i.om, 0
  br i1 %.not.i.i269, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit272, label %.lr.ph.split.i.i255, !llvm.loop !81

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit272: ; preds = %.lr.ph.split.i.i255, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i268
  %i.oo = load i64, ptr %i.mi, align 8, !tbaa !1553
  %.not.i.i.i273 = icmp eq i64 %i.oo, 0
  %.0.v.i.i.i274.sroa.sel = select i1 %.not.i.i.i273, ptr %.sroa.gep364, ptr %i.mb ; 2 uses
  %.promoted.i278 = load ptr, ptr %i.mb, align 8  ; 3 uses
  %.not11.i282.peel = icmp eq ptr %.promoted.i278, %.0.v.i.i.i274.sroa.sel
  br i1 %.not11.i282.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %bb.ca

bb.ca:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit272
  %.promoted16.i279 = load i64, ptr %i.mc, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i283.peel = getelementptr inbounds nuw i8, ptr %.promoted.i278, i64 8
  %.sroa.2.0.copyload.i284.peel = load i64, ptr %.sroa.2.0..sroa_idx.i283.peel, align 8, !tbaa !1319
  %i.op = sub i64 %.sroa.2.0.copyload.i284.peel, %.promoted16.i279 ; 2 uses
  %i.oq = icmp ult i64 %..i247, %i.op             ; 2 uses
  %i.or = add i64 %..i247, %.promoted16.i279
  %storemerge.i285.peel = select i1 %i.oq, i64 %i.or, i64 0
  store i64 %storemerge.i285.peel, ptr %i.mc, align 8, !tbaa !2222
  br i1 %i.oq, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.os = sub nuw i64 %..i247, %i.op              ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.promoted.i278, i64 16 ; 2 uses
  store ptr %i.ot, ptr %i.mb, align 8, !tbaa !2221
  %.not.i286.peel = icmp eq i64 %i.os, 0
  br i1 %.not.i286.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %.peel.next560

.peel.next560:                                    ; preds = %bb.cb, %bb.cd
  %.0813.i281 = phi i64 [ %i.ow, %bb.cd ], [ %i.os, %bb.cb ] ; 3 uses
  %i.ou = phi ptr [ %i.ox, %bb.cd ], [ %i.ot, %bb.cb ] ; 3 uses
  %.not11.i282 = icmp eq ptr %i.ou, %.0.v.i.i.i274.sroa.sel
  br i1 %.not11.i282, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %bb.cc

bb.cc:                                            ; preds = %.peel.next560
  %.sroa.2.0..sroa_idx.i283 = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %.sroa.2.0.copyload.i284 = load i64, ptr %.sroa.2.0..sroa_idx.i283, align 8, !tbaa !1319 ; 2 uses
  %i.ov = icmp ult i64 %.0813.i281, %.sroa.2.0.copyload.i284 ; 2 uses
  %storemerge.i285 = select i1 %i.ov, i64 %.0813.i281, i64 0
  store i64 %storemerge.i285, ptr %i.mc, align 8, !tbaa !2222
  br i1 %i.ov, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ow = sub nuw i64 %.0813.i281, %.sroa.2.0.copyload.i284 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 16 ; 2 uses
  store ptr %i.ox, ptr %i.mb, align 8, !tbaa !2221
  %.not.i286 = icmp eq i64 %i.ow, 0
  br i1 %.not.i286, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, label %.peel.next560, !llvm.loop !9288

_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287: ; preds = %.peel.next560, %bb.cc, %bb.cd, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit272, %bb.ca, %bb.cb, %bb.bw
  %i.oy = sub nuw i64 %.1128, %..i247
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 1 dereferenceable(4) %22)
  %i.oz = load ptr, ptr %i.ng, align 8, !tbaa !1683, !nonnull !1352, !align !1356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.pa = load ptr, ptr %27, align 8, !tbaa !1552
  %i.pb = load i64, ptr %i.ny, align 8, !tbaa !1553 ; 3 uses
  %.not17.not.i.i.i = icmp eq i64 %i.pb, 0
  br i1 %.not17.not.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit, label %.lr.ph.i.i.i288

.lr.ph.i.i.i288:                                  ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i
  %.sroa.7.018.i.i.i = phi i64 [ %i.pj, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i ], [ 0, %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287 ] ; 3 uses
  %i.pc = load i64, ptr %i.nz, align 8, !tbaa !1332 ; 2 uses
  %i.pd = and i64 %i.pc, 1
  %.not.i.i.i.i.i.i289 = icmp eq i64 %i.pd, 0
  br i1 %.not.i.i.i.i.i.i289, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i.i288
  %i.pe = icmp eq i64 %i.pc, 1
  %i.pf = load i32, ptr %3, align 8
  %.fr.i.i.i.i = freeze i32 %i.pf
  %.not.i.i.i.i290 = icmp eq i32 %.fr.i.i.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.pe, %.not.i.i.i.i290
  br i1 %or.cond.i.i.i.i, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit

_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i: ; preds = %bb.ce, %.lr.ph.i.i.i288
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 %.sroa.7.018.i.i.i
  %i.ph = sub nuw i64 %i.pb, %.sroa.7.018.i.i.i
  %spec.select.i1.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ph, i64 65536)
  store ptr %i.pg, ptr %5, align 8
  store i64 %spec.select.i1.i.i.i.i, ptr %i.oa, align 8
  %i.pi = call noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE10write_someINS3_12const_bufferEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.oz, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.pj = add i64 %i.pi, %.sroa.7.018.i.i.i       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %.not.i.i.i291 = icmp ult i64 %i.pj, %i.pb
  br i1 %.not.i.i.i291, label %.lr.ph.i.i.i288, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit: ; preds = %bb.ce, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit287
  %i.pk = load i64, ptr %i.f, align 8, !tbaa !1319
  %i.pl = add i64 %i.pk, %..i247
  store i64 %i.pl, ptr %i.f, align 8, !tbaa !1319
  %i.pm = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.pn = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  br i1 %i.pm, label %.thread495, label %bb.bv, !llvm.loop !9289

.thread495:                                       ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit246
  %.10.ph = phi i64 [ %i.nx, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit246 ], [ %i.pn, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  br label %bb.da

bb.cf:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  br label %bb.cz

bb.cg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !1786
  %i.po = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 8 uses
  store ptr %28, ptr %i.po, align 8, !tbaa !2221
  %i.pp = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 5 uses
  store i64 0, ptr %i.pp, align 8, !tbaa !2222
  %i.pq = getelementptr inbounds nuw i8, ptr %i.g, i64 2256
  %i.pr = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  %i.ps = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.pt = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %31, i64 40
  %.2..2..2..2.gep.sroa_idx716 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.4..4..4..4.gep27.sroa_idx718 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.10..10..10..10.gep28.sroa_idx719 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.pv = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.pw = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.py = getelementptr inbounds nuw i8, ptr %31, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.pz = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %32, i64 24
  %.ptr4.i.i.i.i.i.i341 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.qd = shl nsw i8 %.sroa.29.0634, 4            ; 2 uses
  %i.qe = or disjoint i8 -128, 127
  %i.qf = or disjoint i8 -128, 126
  %i.qg = or i8 %i.bd, %i.qd
  %.1..1..1..1..sroa_idx712 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx715 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx713 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx717 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx714 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, %bb.cg
  %.sroa.20.5 = phi i8 [ %i.qg, %bb.cg ], [ %i.qd, %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357 ]
  %.2129 = phi i64 [ %i.bl, %bb.cg ], [ %i.ra, %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357 ] ; 2 uses
  %i.qh = load ptr, ptr %0, align 8, !tbaa !1615
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 2385
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !1696, !range !1351, !noundef !1352
  %i.qk = trunc nuw i8 %i.qj to i1
  %i.ql = call noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.qk)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %i.qm = call noundef i32 %i.ql(), !inline_history !77 ; 3 uses
  %.not.i292 = icmp eq i32 %i.qm, 0
  br i1 %.not.i292, label %bb.ci, label %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit293, !llvm.loop !78

_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit293: ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #35
  call void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr noundef nonnull align 1 dereferenceable(4) %29, i32 noundef %i.qm)
  %i.qn = load i64, ptr %i.pq, align 8, !tbaa !1859
  %..i294 = call noundef i64 @llvm.umin.i64(i64 %.2129, i64 %i.qn) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #35
  %i.qo = load ptr, ptr %i.pr, align 8, !tbaa !1549 ; 2 uses
  store ptr %i.qo, ptr %30, align 8
  store i64 %..i294, ptr %i.ps, align 8
  %i.qp = load i64, ptr %i.pt, align 8, !tbaa !1553
  %.not.i.i.i.i.i297 = icmp eq i64 %i.qp, 0
  %.0.v.i.i.i.i.i298.sroa.sel = select i1 %.not.i.i.i.i.i297, ptr %.sroa.gep, ptr %i.po
  %.not16.i.i300 = icmp eq i64 %..i294, 0         ; 2 uses
  br i1 %.not16.i.i300, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319, label %.lr.ph.i.i301

.lr.ph.i.i301:                                    ; preds = %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit293
  %i.qq = load ptr, ptr %i.po, align 8, !tbaa !2221
  br label %.lr.ph.split.i.i302

.lr.ph.split.i.i302:                              ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315, %.lr.ph.i.i301
  %.sroa.07.019.i.i304 = phi ptr [ %i.qx, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315 ], [ %i.qo, %.lr.ph.i.i301 ] ; 2 uses
  %.sroa.6.018.i.i305 = phi i64 [ %i.qy, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315 ], [ %..i294, %.lr.ph.i.i301 ] ; 2 uses
  %.sroa.011.017.i.i306 = phi ptr [ %i.qz, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315 ], [ %i.qq, %.lr.ph.i.i301 ] ; 5 uses
  %.not23.i.i307 = icmp eq ptr %.sroa.011.017.i.i306, %.0.v.i.i.i.i.i298.sroa.sel
  br i1 %.not23.i.i307, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.split.i.i302
  %i.qr = load ptr, ptr %i.po, align 8, !tbaa !2221
  %i.qs = icmp eq ptr %.sroa.011.017.i.i306, %i.qr
  %.sroa.0.0.copyload1.i.i.i308 = load ptr, ptr %.sroa.011.017.i.i306, align 8, !tbaa !1357 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i309 = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i306, i64 8
  %.sroa.4.0.copyload.i.i.i310 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i309, align 8, !tbaa !1319 ; 3 uses
  br i1 %i.qs, label %bb.ck, label %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i311

bb.ck:                                            ; preds = %bb.cj
  %i.qt = load i64, ptr %i.pp, align 8, !tbaa !2222
  %spec.select.i.i.i.i318 = call i64 @llvm.umin.i64(i64 %i.qt, i64 %.sroa.4.0.copyload.i.i.i310) ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i308, i64 %spec.select.i.i.i.i318
  %i.qv = sub i64 %.sroa.4.0.copyload.i.i.i310, %spec.select.i.i.i.i318
  br label %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i311

_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i311: ; preds = %bb.ck, %bb.cj
  %.pn3.i.i.i312 = phi ptr [ %i.qu, %bb.ck ], [ %.sroa.0.0.copyload1.i.i.i308, %bb.cj ]
  %.pn.i.i.i313 = phi i64 [ %i.qv, %bb.ck ], [ %.sroa.4.0.copyload.i.i.i310, %bb.cj ] ; 2 uses
  %i.qw = call i64 @llvm.umin.i64(i64 %.sroa.6.018.i.i305, i64 %.pn.i.i.i313) ; 3 uses
  %.not.i.i.i314 = icmp eq i64 %.pn.i.i.i313, 0
  br i1 %.not.i.i.i314, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315, label %bb.cl

bb.cl:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i311
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.07.019.i.i304, ptr align 1 %.pn3.i.i.i312, i64 %i.qw, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315: ; preds = %bb.cl, %_ZNK5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE14const_iteratordeEv.exit.i.i311
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.07.019.i.i304, i64 %i.qw
  %i.qy = sub nuw i64 %.sroa.6.018.i.i305, %i.qw  ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i306, i64 16
  %.not.i.i316 = icmp eq i64 %i.qy, 0
  br i1 %.not.i.i316, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319, label %.lr.ph.split.i.i302, !llvm.loop !81

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319: ; preds = %.lr.ph.split.i.i302, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i315, %_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit293
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 1 dereferenceable(4) %29)
  %i.ra = sub nuw i64 %.2129, %..i294             ; 2 uses
  %i.rb = icmp eq i64 %i.ra, 0                    ; 2 uses
  %i.rc = select i1 %1, i1 %i.rb, i1 false        ; 2 uses
  %i.rd = xor i1 %i.rc, true
  %i.re = zext i1 %i.rd to i8
  store i8 %i.re, ptr %i.i, align 1, !tbaa !1794
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %31, ptr noundef nonnull %i.pu, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.rf = select i1 %i.rc, i8 -128, i8 0
  %spec.select37.i325 = or i8 %.sroa.20.5, %i.rf
  store i8 %spec.select37.i325, ptr %i.a, align 1, !tbaa !1322
  %i.rg = icmp ult i64 %..i294, 126
  br i1 %i.rg, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319
  %i.rh = trunc nuw nsw i64 %..i294 to i8
  %i.ri = or disjoint i8 -128, %i.rh
  store i8 %i.ri, ptr %.1..1..1..1..sroa_idx714, align 1, !tbaa !1322
  br label %bb.cq

bb.cn:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319
  %i.rj = icmp ult i64 %..i294, 65536
  br i1 %i.rj, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i8 %i.qf, ptr %.1..1..1..1..sroa_idx713, align 1, !tbaa !1322
  %i.rk = trunc nuw i64 %..i294 to i16
  %i.rl = call noundef i16 @llvm.bswap.i16(i16 %i.rk)
  store i16 %i.rl, ptr %.2..2..2..2.gep.sroa_idx717, align 1
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  store i8 %i.qe, ptr %.1..1..1..1..sroa_idx712, align 1, !tbaa !1322
  %i.rm = call noundef i64 @llvm.bswap.i64(i64 %..i294)
  store i64 %i.rm, ptr %.2..2..2..2.gep.sroa_idx715, align 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cm
  %.0.sroa.phi.i327 = phi ptr [ %.2..2..2..2.gep.sroa_idx716, %bb.cm ], [ %.4..4..4..4.gep27.sroa_idx718, %bb.co ], [ %.10..10..10..10.gep28.sroa_idx719, %bb.cp ]
  %.0.i328 = phi i64 [ 6, %bb.cm ], [ 8, %bb.co ], [ 14, %bb.cp ]
  store i32 %i.qm, ptr %.0.sroa.phi.i327, align 1
  %i.rn = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %31, i64 noundef %.0.i328) ; 2 uses
  %i.ro = extractvalue { ptr, i64 } %i.rn, 1      ; 2 uses
  %i.rp = call i64 @llvm.umin.i64(i64 %i.ro, i64 14) ; 2 uses
  %.not.i.i.i.i331 = icmp eq i64 %i.ro, 0
  br i1 %.not.i.i.i.i331, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rq = extractvalue { ptr, i64 } %i.rn, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr nonnull align 1 %i.a, i64 %i.rp, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333: ; preds = %bb.cq, %bb.cr
  %i.rr = load ptr, ptr %i.pv, align 8, !tbaa !2239
  %i.rs = load ptr, ptr %i.pw, align 8, !tbaa !2217 ; 2 uses
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = sub i64 %i.rt, %i.ru
  %.sroa.speculated.i.i332 = call i64 @llvm.umin.i64(i64 %i.rv, i64 %i.rp)
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 %.sroa.speculated.i.i332 ; 3 uses
  store ptr %i.rw, ptr %i.pw, align 8, !tbaa !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.rx = load ptr, ptr %i.px, align 8, !tbaa !1683, !nonnull !1352, !align !1356
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #35
  %i.ry = load ptr, ptr %i.py, align 8, !tbaa !2216 ; 3 uses
  %i.rz = ptrtoint ptr %i.rw to i64
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = sub i64 %i.rz, %i.sa
  store ptr %i.ry, ptr %32, align 8, !tbaa !1357
  store i64 %i.sb, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pz, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !1968
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !9310)
  call void @llvm.experimental.noalias.scope.decl(metadata !9311)
  store ptr %32, ptr %4, align 8, !tbaa !2245, !alias.scope !9312
  store i64 1, ptr %i.qb, align 8, !alias.scope !9312
  store ptr %32, ptr %i.qa, align 8, !tbaa !2246, !alias.scope !9312
  %.not.i.i.i.i.i.i336 = icmp eq ptr %i.rw, %i.ry
  br i1 %.not.i.i.i.i.i.i336, label %._crit_edge.i.i.i.i.i.i337, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342

._crit_edge.i.i.i.i.i.i337:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333
  store ptr %i.pz, ptr %i.qa, align 8, !tbaa !2246, !alias.scope !9312
  store i8 2, ptr %i.qb, align 8, !tbaa !2247, !alias.scope !9312
  %i.sc = load i64, ptr %i.qc, align 8, !tbaa !1553, !noalias !9312
  %.not.i.i.i.i.i.i.i339 = icmp eq i64 %i.sc, 0
  br i1 %.not.i.i.i.i.i.i.i339, label %._crit_edge.i.i.i.i.i.i.i340, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342

._crit_edge.i.i.i.i.i.i.i340:                     ; preds = %._crit_edge.i.i.i.i.i.i337
  store ptr %.ptr4.i.i.i.i.i.i341, ptr %i.qa, align 8, !tbaa !2246, !alias.scope !9312
  store i8 0, ptr %i.qa, align 8, !tbaa !2092, !alias.scope !9312
  store i8 3, ptr %i.qb, align 8, !tbaa !2247, !alias.scope !9312
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333, %._crit_edge.i.i.i.i.i.i337, %._crit_edge.i.i.i.i.i.i.i340
  %i.sd = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferES9_EEENSA_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.rx, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #35
  %i.se = load i64, ptr %i.f, align 8, !tbaa !1319
  %i.sf = add i64 %i.se, %..i294
  store i64 %i.sf, ptr %i.f, align 8, !tbaa !1319
  %i.sg = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.sg, label %bb.cy, label %bb.cs

bb.cs:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342
  br i1 %i.rb, label %.thread507, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sh = load i64, ptr %i.pt, align 8, !tbaa !1553
  %.not.i.i.i343 = icmp eq i64 %i.sh, 0
  %.0.v.i.i.i344.sroa.sel = select i1 %.not.i.i.i343, ptr %.sroa.gep, ptr %i.po ; 2 uses
  br i1 %.not16.i.i300, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %.lr.ph.i347

.lr.ph.i347:                                      ; preds = %bb.ct
  %.promoted.i348 = load ptr, ptr %i.po, align 8  ; 3 uses
  %.not11.i352.peel = icmp eq ptr %.promoted.i348, %.0.v.i.i.i344.sroa.sel
  br i1 %.not11.i352.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i347
  %.promoted16.i349 = load i64, ptr %i.pp, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i353.peel = getelementptr inbounds nuw i8, ptr %.promoted.i348, i64 8
  %.sroa.2.0.copyload.i354.peel = load i64, ptr %.sroa.2.0..sroa_idx.i353.peel, align 8, !tbaa !1319
  %i.si = sub i64 %.sroa.2.0.copyload.i354.peel, %.promoted16.i349 ; 2 uses
  %i.sj = icmp ult i64 %..i294, %i.si             ; 2 uses
  %i.sk = add i64 %..i294, %.promoted16.i349
  %storemerge.i355.peel = select i1 %i.sj, i64 %i.sk, i64 0
  store i64 %storemerge.i355.peel, ptr %i.pp, align 8, !tbaa !2222
  br i1 %i.sj, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.sl = sub nuw i64 %..i294, %i.si              ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.promoted.i348, i64 16 ; 2 uses
  store ptr %i.sm, ptr %i.po, align 8, !tbaa !2221
  %.not.i356.peel = icmp eq i64 %i.sl, 0
  br i1 %.not.i356.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %.peel.next563

.peel.next563:                                    ; preds = %bb.cv, %bb.cx
  %.0813.i351 = phi i64 [ %i.sp, %bb.cx ], [ %i.sl, %bb.cv ] ; 3 uses
  %i.sn = phi ptr [ %i.sq, %bb.cx ], [ %i.sm, %bb.cv ] ; 3 uses
  %.not11.i352 = icmp eq ptr %i.sn, %.0.v.i.i.i344.sroa.sel
  br i1 %.not11.i352, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %bb.cw

bb.cw:                                            ; preds = %.peel.next563
  %.sroa.2.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %.sroa.2.0.copyload.i354 = load i64, ptr %.sroa.2.0..sroa_idx.i353, align 8, !tbaa !1319 ; 2 uses
  %i.so = icmp ult i64 %.0813.i351, %.sroa.2.0.copyload.i354 ; 2 uses
  %storemerge.i355 = select i1 %i.so, i64 %.0813.i351, i64 0
  store i64 %storemerge.i355, ptr %i.pp, align 8, !tbaa !2222
  br i1 %i.so, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sp = sub nuw i64 %.0813.i351, %.sroa.2.0.copyload.i354 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 16 ; 2 uses
  store ptr %i.sq, ptr %i.po, align 8, !tbaa !2221
  %.not.i356 = icmp eq i64 %i.sp, 0
  br i1 %.not.i356, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %.peel.next563, !llvm.loop !9294

_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357: ; preds = %bb.cx, %bb.cw, %.peel.next563, %.lr.ph.i347, %bb.cu, %bb.cv, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  br label %bb.ch

.thread507:                                       ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  br label %bb.cz

bb.cy:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342
  %i.sr = load i64, ptr %i.f, align 8, !tbaa !1319
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  br label %bb.da

bb.cz:                                            ; preds = %.thread507, %bb.cf, %.thread487, %bb.am, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread
  %i.ss = load i64, ptr %i.f, align 8, !tbaa !1319
  br label %bb.da

bb.da:                                            ; preds = %bb.a, %bb.cz, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit, %.thread476, %bb.be, %.thread495, %bb.cy
  %.14 = phi i64 [ %i.gx, %.thread476 ], [ %i.ss, %bb.cz ], [ %.3454, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit ], [ %i.sr, %bb.cy ], [ %.10.ph, %.thread495 ], [ %i.kx, %bb.be ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  ret i64 %.14
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5beast9websocket6detail9impl_baseILb1EE7deflateINS0_6detail12buffers_pairILb1EEEEEbRNS_4asio14mutable_bufferERNS0_14buffers_suffixIT_EEbRmRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::optional", align 4   ; 5 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %8 = alloca %"class.boost::optional", align 4   ; 5 uses
  %9 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %10 = alloca %"class.boost::optional", align 4  ; 5 uses
  %11 = alloca %"struct.boost::beast::zlib::z_params", align 8 ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1702
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !2224
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !2225
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 2, ptr %i.e, align 8, !tbaa !2226
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1553
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !2228
  %i.j = load ptr, ptr %1, align 8, !tbaa !1552
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !2227
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2221 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5boost5beast4http6detail9read_someINS0_4test12basic_streamINS_4asio15any_io_executorEEENS0_13static_bufferILm1536EEELb0EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeE:bb.a
  resume { ptr, i32 } %i.bc

_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit: ; preds = %bb.q
  %i.bg = extractvalue { ptr, i32 } %i.bc, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #35, !noalias !11772 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !11772
  call void @_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 7, ptr noundef null) #35, !noalias !11772
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.5.0.copyload4.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i, align 8, !tbaa !1319, !noalias !11772 ; 3 uses
  %switch.i.i.i = icmp ult i64 %.sroa.5.0.copyload4.i.i, 2
  %i.bi = and i64 %.sroa.5.0.copyload4.i.i, 1
  %i.bj = or disjoint i64 %i.bi, ptrtoint (ptr @_ZZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_E7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.5.0.copyload4.i.i, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 16, i1 false), !noalias !11772
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !1319, !noalias !11772
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !11772
  call void @__cxa_end_catch(), !noalias !11772
  store i8 0, ptr %10, align 8, !tbaa !1790, !alias.scope !11772
  store i8 0, ptr %i.bb, align 8, !tbaa !1322, !alias.scope !11772
  %.pre106 = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !1332 ; 2 uses
  %i.bk = and i64 %.pre106, 1
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread79, label %bb.s

bb.s:                                             ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit
  %i.bl = icmp eq i64 %.pre106, 1
  br i1 %i.bl, label %_ZNK5boost6system10error_codecvbEv.exit, label %.thread95

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.s
  %i.bm = load i32, ptr %3, align 8, !tbaa !1578
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit.thread79, label %.thread95

_ZNK5boost6system10error_codecvbEv.exit.thread79: ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit.thread, %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit, %_ZNK5boost6system10error_codecvbEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bo = call noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @_ZN5boost5beast18static_buffer_base6commitEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.bo) #35
  %i.bp = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.t   ; 4 uses

.noexc.i:                                         ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread79
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !1330, !noalias !11773
  %i.bs = and i64 %i.br, -2
  %switch.i.i.i.i = icmp eq i64 %i.bs, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.t:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread79
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #36
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !1313, !noalias !11773
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !11773
  %i.by = call noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(52) %i.bp, i32 noundef 2) #35, !noalias !11773, !inline_history !44 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.noexc.i
  %i.bz = load i64, ptr %i.bn, align 8, !tbaa !1332 ; 5 uses
  %i.ca = icmp eq i64 %i.bz, 1
  %i.cb = load i32, ptr %3, align 8, !tbaa !1322
  %.fr = freeze i32 %i.cb                         ; 2 uses
  br i1 %i.ca, label %_ZNK5boost6system10error_codecvbEv.exit62, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.cc = icmp eq i32 %.fr, 2
  br i1 %i.cc, label %bb.u, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.u:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %cond = icmp eq i64 %i.bz, 0
  br i1 %cond, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1322
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.u, %bb.v
  %.0.i18.i = phi ptr [ %i.ce, %bb.v ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.u ] ; 2 uses
  %i.cf = load i64, ptr %i.bq, align 8, !tbaa !1330 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = icmp eq ptr %.0.i18.i, %i.bp
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = icmp eq i64 %i.cj, %i.cf
  %i.cl = select i1 %i.cg, i1 %i.ch, i1 %i.ck
  br i1 %i.cl, label %bb.w, label %.thread

bb.w:                                             ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !2859
  %.not104 = icmp eq i32 %i.cn, 0
  br i1 %.not104, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %cond109 = icmp eq i64 %i.bz, 0
  br i1 %cond109, label %_ZNK5boost6system10error_code8categoryEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1322
  br label %_ZNK5boost6system10error_code8categoryEv.exit

_ZNK5boost6system10error_code8categoryEv.exit:    ; preds = %bb.x, %bb.y
  %.0.i47 = phi ptr [ %i.cp, %bb.y ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.x ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i47, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !1330
  %i.cs = and i64 %i.cr, -2
  %switch.i.i.i48 = icmp eq i64 %i.cs, -5572340897628102704
  br i1 %switch.i.i.i48, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit
  %i.ct = load ptr, ptr %.0.i47, align 8, !tbaa !1313
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(52) %.0.i47, i32 noundef 0) #35, !inline_history !45
  %spec.select = select i1 %i.cw, i64 3, i64 2
  br label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread: ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit, %_ZNK5boost6system10error_code8categoryEv.exit
  %i.cx = phi i64 [ 2, %_ZNK5boost6system10error_code8categoryEv.exit ], [ %spec.select, %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit ]
  store i32 0, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i50, align 4
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i47, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !1322
  store i64 %i.cx, ptr %i.bn, align 8, !tbaa !1319
  call void @_ZN5boost5beast4http12basic_parserILb0EE7put_eofERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %.thread95

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #36
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1633
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1319 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %switch.i.i57 = icmp ult i64 %.sroa.5.0.copyload, 2
  %i.da = and i64 %.sroa.5.0.copyload, 1
  %i.db = or disjoint i64 %i.da, ptrtoint (ptr @_ZZN5boost5beast4http6detail9read_someINS0_4test12basic_streamINS_4asio15any_io_executorEEENS0_13static_bufferILm1536EEELb0EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeEE7loc_bb__0 to i64)
  %.sroa.5.0.i58 = select i1 %switch.i.i57, i64 %.sroa.5.0.copyload, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i64 %.sroa.5.0.i58, ptr %i.bn, align 8, !tbaa !1319
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %_ZNK5boost6system10error_codecvbEv.exit62.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %i.dc = and i64 %i.bz, 1
  %.not.i.i60 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i60, label %.thread99, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

.thread:                                          ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.dd = and i64 %i.bz, 1
  %.not.i.i6084 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i6084, label %.thread99, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

_ZNK5boost6system10error_codecvbEv.exit62:        ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %.not105 = icmp eq i32 %.fr, 0
  br i1 %.not105, label %.thread99, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

.thread95:                                        ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, %_ZNK5boost6system10error_codecvbEv.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

.thread99:                                        ; preds = %_ZNK5boost6system10error_codecvbEv.exit62, %.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.b

_ZNK5boost6system10error_codecvbEv.exit62.thread: ; preds = %_ZNK5boost6system10error_codecvbEv.exit62, %.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZNK5boost6system10error_code5valueEv.exit17.i.i, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.thread95, %.thread92, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, %_ZNK5boost6system10error_codecvbEv.exit62.thread
  %.5 = phi i64 [ %.140, %.thread95 ], [ %i.e, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit ], [ %.140, %_ZNK5boost6system10error_codecvbEv.exit62.thread ], [ %.140, %.thread92 ], [ %i.e, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ], [ %i.e, %_ZNK5boost6system10error_code5valueEv.exit17.i.i ], [ %i.e, %_ZNK5boost6system10error_code8categoryEv.exit20.i.i ]
  ret i64 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1553
  %.not.i.i = icmp eq i64 %i.c, 0                 ; 2 uses
  %.0.v.i.i = select i1 %.not.i.i, i64 16, i64 32
  %.0.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0.v.i.i
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.d = add nuw nsw i64 9, 1
  %xtraiter = and i64 %i.d, 7                     ; 2 uses
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.i.i.i.epil

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1552
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1553
  %i.h = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.e, i64 %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil = phi ptr [ %i.l, %.lr.ph.i.i.i.epil ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.epil = phi i64 [ %i.k, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1553
  %i.k = add i64 %i.j, %.068.i.i.i.epil           ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !11774

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit: ; preds = %.lr.ph.i.i.i.epil
  %i.m = icmp ult i64 %i.k, 8193
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  br label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %bb.c
  %.01017.i.i.i = phi ptr [ %i.t, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %1, %bb.c ] ; 3 uses
  %.sroa.011.016.i.i.i = phi ptr [ %i.r, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.6.015.i.i.i = phi i64 [ %i.s, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ], [ 8192, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01017.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1553 ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.sroa.6.015.i.i.i, i64 %i.o) ; 3 uses
  %.not.i.i4.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i4.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i29
  %i.q = load ptr, ptr %.01017.i.i.i, align 8, !tbaa !1552
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.011.016.i.i.i, ptr align 1 %i.q, i64 %i.p, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i29
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i.i, i64 %i.p
  %i.s = sub nuw nsw i64 %.sroa.6.015.i.i.i, %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01017.i.i.i, i64 16 ; 2 uses
  %i.u = icmp ne i64 %i.s, 0
  %i.v = icmp ne ptr %i.t, %.0.i.i
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i.i29, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, !llvm.loop !46

_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i
  %i.x = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.h

bb.e:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11777
  %i.aa = icmp ugt i64 %i.k, %i.z
  br i1 %i.aa, label %bb.f, label %.lr.ph.preheader.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #40, !noalias !11778
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1549 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !1549
  %.not.i.i.i.i30 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i30, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #38
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.f
  store i64 %i.k, ptr %i.y, align 8, !tbaa !11777
  %.pre = load i64, ptr %i.b, align 8, !tbaa !1553
  %i.ae = icmp eq i64 %.pre, 0
  %i.af = select i1 %i.ae, i64 16, i64 32
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %.not.i.i.i31 = phi i64 [ 32, %bb.e ], [ %i.af, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1549
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.not.i.i.i31
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.preheader.i.i
  %.01017.i.i = phi ptr [ %i.ao, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.011.016.i.i = phi ptr [ %i.am, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.ah, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi i64 [ %i.an, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.k, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01017.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1553 ; 2 uses
  %i.ak = tail call i64 @llvm.umin.i64(i64 %.sroa.6.015.i.i, i64 %i.aj) ; 3 uses
  %.not.i.i4.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i4.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.al = load ptr, ptr %.01017.i.i, align 8, !tbaa !1552
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.011.016.i.i, ptr align 1 %i.al, i64 %i.ak, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i, i64 %i.ak
  %i.an = sub nuw i64 %.sroa.6.015.i.i, %i.ak     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01017.i.i, i64 16 ; 2 uses
  %i.ap = icmp ne i64 %i.an, 0
  %i.aq = icmp ne ptr %i.ao, %.0.i.i.i
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit, !llvm.loop !46

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !1549
  %i.at = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.as, i64 %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit, %bb.b
  %.1 = phi i64 [ %i.at, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit ], [ %i.h, %bb.b ], [ %i.x, %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit ]
  ret i64 %.1
}

declare void @_ZN5boost5beast4http12basic_parserILb0EE7put_eofERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

declare noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80), ptr, i64, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http6detail9read_someINS0_4test12basic_streamINS_4asio15any_io_executorEEENS0_17basic_flat_bufferISaIcEEELb0EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %5 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %6 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %.sroa.069 = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  %8 = alloca %"class.boost::optional.931", align 8 ; 8 uses
  %.sroa.0 = alloca %"struct.boost::system::error_code::data", align 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1874 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1443 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %bb.o, label %bb.b

bb.b:                                             ; preds = %.thread101, %bb.a
  %i.f = phi ptr [ %.pre113, %.thread101 ], [ %i.d, %bb.a ]
  %i.g = phi ptr [ %.pre112, %.thread101 ], [ %i.b, %bb.a ] ; 2 uses
  %.039 = phi i64 [ %.140, %.thread101 ], [ 0, %bb.a ]
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr %i.g, i64 %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  %i.l = add i64 %i.k, %.039                      ; 5 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1874 ; 2 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !1443
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  %.not.i = icmp ult i64 %i.k, %i.q
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !1575   ; 2 uses
  store ptr %i.r, ptr %i.c, align 8, !tbaa !1443
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit

_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi ptr [ %i.s, %bb.d ], [ %i.r, %bb.c ]
  store ptr %.sink.i, ptr %i.a, align 8, !tbaa !1874
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %7, i32 noundef 3)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #36
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit
  %.sroa.071.0.copyload = load i32, ptr %7, align 8 ; 3 uses
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.674.0.copyload = load ptr, ptr %.sroa.674.0..sroa_idx, align 8, !tbaa !1322 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1319 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1332 ; 2 uses
  %i.x = icmp eq i64 %i.w, 1                      ; 3 uses
  %i.y = icmp eq i64 %.sroa.9.0.copyload, 1       ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN5boost5beast9unit_test6detail11make_reasonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_RKT_PKci:bb.a
.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit20, %._crit_edge67, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #37
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.165, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit31 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %.invoke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.p
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %4, align 8, !tbaa !1321  ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.at
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.r
  %i.cs = load i64, ptr %i.at, align 8, !tbaa !1322
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i28
  ret void

bb.s:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn.pn = phi { ptr, i32 } [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.co, %bb.q ]
  %i.cu = load ptr, ptr %0, align 8, !tbaa !1321  ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.b
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.s
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !1322
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE10write_someINS5_12const_bufferEEEmbRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.a = alloca [14 x i8], align 1                ; 12 uses
  %5 = alloca %"class.boost::asio::const_buffer", align 8 ; 5 uses
  %6 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.b = alloca [14 x i8], align 1                ; 12 uses
  %7 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>>::const_iterator::increment", align 8 ; 4 uses
  %8 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::beast::buffers_prefix_view<boost::beast::buffers_suffix<boost::asio::const_buffer>>>::const_iterator", align 8 ; 10 uses
  %i.c = alloca [14 x i8], align 1                ; 9 uses
  %9 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::const_buffer>::const_iterator", align 8 ; 6 uses
  %i.d = alloca [14 x i8], align 1                ; 9 uses
  %10 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::mutable_buffer, boost::asio::mutable_buffer>::const_iterator", align 8 ; 6 uses
  %i.e = alloca [14 x i8], align 1                ; 12 uses
  %i.f = alloca i64, align 8                      ; 22 uses
  %11 = alloca %"class.boost::beast::buffers_suffix.233", align 8 ; 9 uses
  %12 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 13 uses
  %13 = alloca %"struct.std::array", align 1      ; 4 uses
  %14 = alloca %"class.boost::beast::flat_static_buffer.94", align 8 ; 10 uses
  %15 = alloca %"class.boost::beast::buffers_cat_view.340", align 8 ; 10 uses
  %16 = alloca %"class.boost::beast::flat_static_buffer.94", align 8 ; 9 uses
  %17 = alloca %"class.boost::beast::buffers_cat_view.1438", align 8 ; 10 uses
  %18 = alloca %"class.boost::beast::buffers_suffix.233", align 8 ; 11 uses
  %19 = alloca %"class.boost::beast::flat_static_buffer.94", align 8 ; 10 uses
  %20 = alloca %"class.boost::beast::buffers_cat_view.1441", align 8 ; 14 uses
  %21 = alloca %"class.boost::beast::buffers_prefix_view.1445", align 8 ; 12 uses
  %22 = alloca %"struct.std::array", align 1      ; 6 uses
  %23 = alloca %"class.boost::beast::flat_static_buffer.94", align 8 ; 9 uses
  %24 = alloca %"class.boost::beast::buffers_suffix.233", align 8 ; 9 uses
  %25 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %26 = alloca %"class.boost::beast::buffers_cat_view.340", align 8 ; 10 uses
  %27 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %28 = alloca %"class.boost::beast::buffers_suffix.233", align 8 ; 7 uses
  %29 = alloca %"struct.std::array", align 1      ; 6 uses
  %30 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 8 uses
  %31 = alloca %"class.boost::beast::flat_static_buffer.94", align 8 ; 10 uses
  %32 = alloca %"class.boost::beast::buffers_cat_view.340", align 8 ; 10 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !1433   ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  store i64 0, ptr %i.f, align 8, !tbaa !1319
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = tail call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.h, label %bb.cz, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2261 ; 7 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !2855, !range !1351, !noundef !1352
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread577, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.247.0.copyload = load i64, ptr %.sroa.247.0..sroa_idx, align 8, !tbaa !1319
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 2263
  %i.m = load i8, ptr %i.l, align 1, !tbaa !2842, !range !1351, !noundef !1352
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2262
  store i8 %i.m, ptr %i.n, align 2, !tbaa !14370
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1702
  %.not2.i = icmp eq ptr %i.p, null
  br i1 %.not2.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 2265
  %i.r = load i8, ptr %i.q, align 1, !tbaa !2843, !range !1351, !noundef !1352
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp uge i64 %.sroa.247.0.copyload, %i.u
  %narrow.i = select i1 %i.s, i1 %i.v, i1 false
  %.ph.i = zext i1 %narrow.i to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  store i8 %.ph.i, ptr %i.w, align 8, !tbaa !14371
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  store i8 0, ptr %i.x, align 8, !tbaa !14371
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 2248
  %i.z = load i32, ptr %i.y, align 8, !tbaa !2887
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 2272 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1549
  %.not3.i = icmp eq ptr %i.ac, null
  br i1 %.not3.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2288
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !2845
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 2280
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !2888
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 2288
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !2845 ; 2 uses
  %.not.i = icmp eq i64 %i.ae, %i.ag
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.ah = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 2280
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !2888
  %i.aj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #40, !noalias !14372
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !1549 ; 2 uses
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !1549
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 2288
  %i.am = load i64, ptr %i.al, align 8, !tbaa !2845
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 2280
  store i64 %i.am, ptr %i.an, align 8, !tbaa !2888
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 2272 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1549 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !1549
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i: ; preds = %bb.h, %bb.g
  %.sink.i = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %bb.h ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sink.i) #38
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.sink.split.i, %bb.h, %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !14371, !range !1351, !noundef !1352
  %i.as = shl nuw nsw i8 %i.ar, 2                 ; 2 uses
  %.pre = load i8, ptr %i.i, align 1, !tbaa !2855, !range !1351
  %i.at = trunc nuw i8 %.pre to i1
  br i1 %i.at, label %.thread577, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 2266
  %i.av = load i8, ptr %i.au, align 2, !tbaa !2844
  br label %.thread577

.thread577:                                       ; preds = %bb.b, %bb.i, %bb.j
  %.sroa.29.0579 = phi i8 [ %i.as, %bb.j ], [ %i.as, %bb.i ], [ 0, %bb.b ] ; 5 uses
  %i.aw = phi i8 [ %i.av, %bb.j ], [ 0, %bb.i ], [ 0, %bb.b ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 2248 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !2887
  %.not.not.not = icmp eq i32 %i.ay, 0            ; 2 uses
  %i.az = select i1 %.not.not.not, i8 2, i8 0
  %i.ba = or disjoint i8 %i.az, %.sroa.29.0579    ; 2 uses
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.229.0.copyload = load i64, ptr %.sroa.229.0..sroa_idx, align 8, !tbaa !1319 ; 15 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 2264
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !14371, !range !1351, !noundef !1352
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.k, label %bb.ae

bb.k:                                             ; preds = %.thread577
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1968
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %11, ptr %i.be, align 8, !tbaa !1951
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 0, ptr %i.bf, align 8, !tbaa !2016
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 2272 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 2280 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !1549
  %i.bl = load i64, ptr %i.bh, align 8, !tbaa !2888
  store ptr %i.bk, ptr %12, align 8
  store i64 %i.bl, ptr %i.bi, align 8
  %i.bm = call noundef zeroext i1 @_ZN5boost5beast9websocket6detail9impl_baseILb1EE7deflateINS_4asio12const_bufferEEEbRNS6_14mutable_bufferERNS0_14buffers_suffixIT_EEbRmRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.bn = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.bn, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 40
  %.2..2..2..2.gep.sroa_idx614 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.4..4..4..4.gep27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.10..10..10..10.gep28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.br = xor i1 %1, true
  %i.bs = zext i1 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.4343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 24
  %.ptr4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.1..1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.2..2..2..2.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.1..1..1..1..sroa_idx612 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.2..2..2..2.gep.sroa_idx615 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.1..1..1..1..sroa_idx613 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %bb.l

.thread:                                          ; preds = %bb.z, %bb.k
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !1319
  br label %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit

bb.l:                                             ; preds = %.lr.ph, %bb.z
  %i.ca = phi i1 [ %i.bm, %.lr.ph ], [ %i.dx, %bb.z ] ; 3 uses
  %.sroa.12.0487 = phi i32 [ undef, %.lr.ph ], [ %.sroa.12.1, %bb.z ]
  %.sroa.20.0486 = phi i8 [ %i.aw, %.lr.ph ], [ 0, %bb.z ]
  %.sroa.29.1485 = phi i8 [ %i.ba, %.lr.ph ], [ %i.du, %bb.z ] ; 3 uses
  %.sroa.2.0.copyload = load i64, ptr %i.bi, align 8, !tbaa !1319 ; 6 uses
  %i.cb = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.cb, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = and i8 %.sroa.29.1485, 2
  %.not148 = icmp eq i8 %i.cc, 0                  ; 2 uses
  br i1 %.not148, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %0, align 8, !tbaa !1433
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2409
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !2846, !range !1351, !noundef !1352
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = call noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.cg)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %i.ci = call noundef i32 %i.ch(), !inline_history !241 ; 3 uses
  %.not.i149 = icmp eq i32 %i.ci, 0
  br i1 %.not.i149, label %bb.o, label %_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit, !llvm.loop !242

_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr noundef nonnull align 1 dereferenceable(4) %13, i32 noundef %i.ci)
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 1 dereferenceable(4) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit, %bb.m
  %.sroa.12.1 = phi i32 [ %.sroa.12.0487, %bb.m ], [ %i.ci, %_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit ] ; 2 uses
  %i.cj = xor i1 %i.ca, true
  %i.ck = zext i1 %i.cj to i8
  %i.cl = and i8 %.sroa.29.1485, -2
  %i.cm = or disjoint i8 %i.cl, %i.ck             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %14, ptr noundef nonnull %i.bo, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cn = select i1 %i.ca, i8 0, i8 -128
  %i.co = shl nuw nsw i8 %.sroa.29.1485, 4
  %i.cp = and i8 %i.co, 64
  %spec.select.i = or i8 %.sroa.20.0486, %i.cp
  %spec.select37.i = or i8 %spec.select.i, %i.cn
  store i8 %spec.select37.i, ptr %i.e, align 1, !tbaa !1322
  %i.cq = shl i8 %i.cm, 6                         ; 3 uses
  %i.cr = icmp ult i64 %.sroa.2.0.copyload, 126
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = and i8 %i.cq, -128
  %i.ct = trunc nuw nsw i64 %.sroa.2.0.copyload to i8
  %i.cu = or disjoint i8 %i.cs, %i.ct
  store i8 %i.cu, ptr %.1..1..1..1..sroa_idx613, align 1, !tbaa !1322
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.cv = icmp ult i64 %.sroa.2.0.copyload, 65536
  br i1 %i.cv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cw = or i8 %i.cq, 126
  store i8 %i.cw, ptr %.1..1..1..1..sroa_idx612, align 1, !tbaa !1322
  %i.cx = trunc nuw i64 %.sroa.2.0.copyload to i16
  %i.cy = call noundef i16 @llvm.bswap.i16(i16 %i.cx)
  store i16 %i.cy, ptr %.2..2..2..2.gep.sroa_idx615, align 1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cz = or i8 %i.cq, 127
  store i8 %i.cz, ptr %.1..1..1..1..sroa_idx, align 1, !tbaa !1322
  %i.da = call noundef i64 @llvm.bswap.i64(i64 %.sroa.2.0.copyload)
  store i64 %i.da, ptr %.2..2..2..2.gep.sroa_idx, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %.0.sroa.phi.i = phi ptr [ %.2..2..2..2.gep.sroa_idx614, %bb.q ], [ %.4..4..4..4.gep27.sroa_idx, %bb.s ], [ %.10..10..10..10.gep28.sroa_idx, %bb.t ]
  %.0.i = phi i64 [ 2, %bb.q ], [ 4, %bb.s ], [ 10, %bb.t ] ; 2 uses
  br i1 %.not148, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %.sroa.12.1, ptr %.0.sroa.phi.i, align 1
  %i.db = add nuw nsw i64 %.0.i, 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.i = phi i64 [ %i.db, %bb.v ], [ %.0.i, %bb.u ]
  %i.dc = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %14, i64 noundef %.1.i) ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.dc, 1      ; 2 uses
  %i.de = call i64 @llvm.umin.i64(i64 %i.dd, i64 14) ; 2 uses
  %.not.i.i.i.i150 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i150, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = extractvalue { ptr, i64 } %i.dc, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr nonnull align 1 %i.e, i64 %i.de, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit: ; preds = %bb.w, %bb.x
  %i.dg = load ptr, ptr %i.bp, align 8, !tbaa !2239
  %i.dh = load ptr, ptr %i.bq, align 8, !tbaa !2217 ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.de)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.speculated.i.i ; 3 uses
  store ptr %i.dl, ptr %i.bq, align 8, !tbaa !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 %i.bs, ptr %i.i, align 1, !tbaa !2855
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.dm = load ptr, ptr %i.bu, align 8, !tbaa !2216 ; 3 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  store ptr %i.dm, ptr %15, align 8, !tbaa !1357
  store i64 %i.dp, ptr %.sroa.4343.0..sroa_idx, align 8, !tbaa !1319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !1968
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !14373)
  call void @llvm.experimental.noalias.scope.decl(metadata !14374)
  store ptr %15, ptr %10, align 8, !tbaa !2245, !alias.scope !14375
  store i64 1, ptr %i.bx, align 8, !alias.scope !14375
  store ptr %15, ptr %i.bw, align 8, !tbaa !2246, !alias.scope !14375
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !2246, !alias.scope !14375
  store i8 2, ptr %i.bx, align 8, !tbaa !2247, !alias.scope !14375
  %i.dq = load i64, ptr %i.by, align 8, !tbaa !1553, !noalias !14375
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr %.ptr4.i.i.i.i.i.i, ptr %i.bw, align 8, !tbaa !2246, !alias.scope !14375
  store i8 0, ptr %i.bw, align 8, !tbaa !2092, !alias.scope !14375
  store i8 3, ptr %i.bx, align 8, !tbaa !2247, !alias.scope !14375
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit, %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE10write_someINS5_12const_bufferEEEmbRKT_RNS_6system10error_codeE:bb.a
  %i.ea = icmp eq i32 %i.dz, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 125
  %i.ec = load i8, ptr %i.eb, align 1, !range !1351
  %i.ed = trunc nuw i8 %i.ec to i1
  %or.cond.i = select i1 %i.ea, i1 %i.ed, i1 false
  br i1 %or.cond.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = icmp eq i32 %i.dz, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  %i.eg = load i8, ptr %i.ef, align 4, !range !1351
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond6.i = select i1 %i.ee, i1 %i.eh, i1 false
  br i1 %or.cond6.i, label %bb.ad, label %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ei = load ptr, ptr %i.bj, align 8, !tbaa !1702
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  call void @_ZN5boost5beast4zlib6detail14deflate_stream7doResetEv(ptr noundef nonnull align 8 dereferenceable(5928) %i.ej)
  br label %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread

_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread: ; preds = %bb.aa, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.cy

_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit: ; preds = %.thread423, %.thread
  %.3414 = phi i64 [ %i.dt, %.thread423 ], [ %i.bz, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.cz

bb.ae:                                            ; preds = %.thread577
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 2262
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !14370, !range !1351, !noundef !1352
  %i.em = trunc nuw i8 %i.el to i1                ; 2 uses
  br i1 %.not.not.not, label %bb.bg, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.em, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.en = getelementptr inbounds nuw i8, ptr %16, i64 40
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %16, ptr noundef nonnull %i.en, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.eo = select i1 %1, i8 -128, i8 0
  %i.ep = shl nuw nsw i8 %.sroa.29.0579, 4
  %i.eq = or disjoint i8 %i.ep, %i.eo
  %spec.select37.i158 = or i8 %i.aw, %i.eq
  store i8 %spec.select37.i158, ptr %i.d, align 1, !tbaa !1322
  %i.er = icmp ult i64 %.sroa.229.0.copyload, 126
  br i1 %i.er, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.es = trunc nuw nsw i64 %.sroa.229.0.copyload to i8
  %.1..1..1..1..sroa_idx616 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.es, ptr %.1..1..1..1..sroa_idx616, align 1, !tbaa !1322
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.et = icmp ult i64 %.sroa.229.0.copyload, 65536
  br i1 %i.et, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.1..1..1..1..sroa_idx618 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 126, ptr %.1..1..1..1..sroa_idx618, align 1, !tbaa !1322
  %i.eu = trunc nuw i64 %.sroa.229.0.copyload to i16
  %i.ev = call noundef i16 @llvm.bswap.i16(i16 %i.eu)
  %.2..2..2..2.gep.sroa_idx620 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %i.ev, ptr %.2..2..2..2.gep.sroa_idx620, align 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %.1..1..1..1..sroa_idx617 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 127, ptr %.1..1..1..1..sroa_idx617, align 1, !tbaa !1322
  %i.ew = call noundef i64 @llvm.bswap.i64(i64 %.sroa.229.0.copyload)
  %.2..2..2..2.gep.sroa_idx619 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i64 %i.ew, ptr %.2..2..2..2.gep.sroa_idx619, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.aj, %bb.ak
  %.0.i161 = phi i64 [ 2, %bb.ah ], [ 4, %bb.aj ], [ 10, %bb.ak ]
  %i.ex = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %16, i64 noundef %.0.i161) ; 2 uses
  %i.ey = extractvalue { ptr, i64 } %i.ex, 1      ; 2 uses
  %i.ez = call i64 @llvm.umin.i64(i64 %i.ey, i64 14) ; 2 uses
  %.not.i.i.i.i164 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i.i164, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = extractvalue { ptr, i64 } %i.ex, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr nonnull align 1 %i.d, i64 %i.ez, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166: ; preds = %bb.al, %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !2239
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !2217 ; 2 uses
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %.sroa.speculated.i.i165 = call i64 @llvm.umin.i64(i64 %i.fh, i64 %i.ez)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.speculated.i.i165 ; 3 uses
  store ptr %i.fi, ptr %i.fd, align 8, !tbaa !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fj = xor i1 %1, true
  %i.fk = zext i1 %i.fj to i8
  store i8 %i.fk, ptr %i.i, align 1, !tbaa !2855
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !2216 ; 3 uses
  %i.fo = ptrtoint ptr %i.fi to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  store ptr %i.fn, ptr %17, align 8, !tbaa !1357
  %.sroa.4341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.fq, ptr %.sroa.4341.0..sroa_idx, align 8, !tbaa !1319
  %i.fr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1968
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !14376)
  call void @llvm.experimental.noalias.scope.decl(metadata !14377)
  store ptr %17, ptr %9, align 8, !tbaa !3320, !alias.scope !14378
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 1, ptr %i.ft, align 8, !alias.scope !14378
  store ptr %17, ptr %i.fs, align 8, !tbaa !2246, !alias.scope !14378
  %.not.i.i.i.i.i.i169 = icmp eq ptr %i.fi, %i.fn
  br i1 %.not.i.i.i.i.i.i169, label %._crit_edge.i.i.i.i.i.i170, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISD_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i170:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !1952, !alias.scope !14378
  store i8 2, ptr %i.ft, align 8, !tbaa !3321, !alias.scope !14378
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 24
  %.sroa.3.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !1319, !noalias !14378
  %.not.i.i.i.i.i.i.i172 = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i172, label %._crit_edge.i.i.i.i.i.i.i173, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISD_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i.i173:                     ; preds = %._crit_edge.i.i.i.i.i.i170
  %.ptr4.i.i.i.i.i.i174 = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %.ptr4.i.i.i.i.i.i174, ptr %i.fs, align 8, !tbaa !1952, !alias.scope !14378
  store i8 0, ptr %i.fs, align 8, !tbaa !2092, !alias.scope !14378
  store i8 3, ptr %i.ft, align 8, !tbaa !3321, !alias.scope !14378
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISD_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISD_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit166, %._crit_edge.i.i.i.i.i.i170, %._crit_edge.i.i.i.i.i.i.i173
  %i.fu = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEENSB_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  %i.fv = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.fw = load i64, ptr %i.f, align 8, !tbaa !1319 ; 2 uses
  br i1 %i.fv, label %.thread436, label %bb.an

.thread436:                                       ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISD_EE5valueEiE4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.cz

bb.an:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS0_12const_bufferEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISD_EE5valueEiE4typeE.exit
  %i.fx = add i64 %i.fw, %.sroa.229.0.copyload
  store i64 %i.fx, ptr %i.f, align 8, !tbaa !1319
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.cy

bb.ao:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1968
  %i.fy = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %18, ptr %i.fy, align 8, !tbaa !1951
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 5 uses
  store i64 0, ptr %i.fz, align 8, !tbaa !2016
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 2280
  %i.gb = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.gc = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.gd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ge = xor i1 %1, true
  %i.gf = zext i1 %i.ge to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gi = ptrtoint ptr %18 to i64
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.gm = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 56
  %.sroa.4339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.gq = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.gr = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.gs = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.gx = shl nsw i8 %.sroa.29.0579, 4            ; 2 uses
  %i.gy = or disjoint i8 0, 127
  %i.gz = or disjoint i8 0, 126
  %i.ha = shl nuw nsw i8 %i.ba, 1
  %i.hb = and i8 %i.ha, 4
  %i.hc = zext nneg i8 %i.hb to i64
  %i.hd = or i8 %i.aw, %i.gx
  %.1..1..1..1..sroa_idx621 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx624 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx622 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.2..2..2..2.gep.sroa_idx625 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.1..1..1..1..sroa_idx623 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit, %bb.ao
  %.sroa.20.3 = phi i8 [ %i.hd, %bb.ao ], [ %i.gx, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit ]
  %.0143 = phi i64 [ %.sroa.229.0.copyload, %bb.ao ], [ %i.hf, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit ] ; 2 uses
  %i.he = load i64, ptr %i.ga, align 8, !tbaa !2888
  %..i = call noundef i64 @llvm.umin.i64(i64 %.0143, i64 %i.he) ; 14 uses
  %i.hf = sub nuw i64 %.0143, %..i                ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 0                    ; 2 uses
  %i.hh = and i1 %1, %i.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %19, ptr noundef nonnull %i.gb, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.hi = select i1 %i.hh, i8 -128, i8 0
  %spec.select37.i180 = or i8 %.sroa.20.3, %i.hi
  store i8 %spec.select37.i180, ptr %i.c, align 1, !tbaa !1322
  %i.hj = icmp ult i64 %..i, 126
  br i1 %i.hj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hk = trunc nuw nsw i64 %..i to i8
  %i.hl = or disjoint i8 0, %i.hk
  store i8 %i.hl, ptr %.1..1..1..1..sroa_idx623, align 1, !tbaa !1322
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.hm = icmp ult i64 %..i, 65536
  br i1 %i.hm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i8 %i.gz, ptr %.1..1..1..1..sroa_idx622, align 1, !tbaa !1322
  %i.hn = trunc nuw i64 %..i to i16
  %i.ho = call noundef i16 @llvm.bswap.i16(i16 %i.hn)
  store i16 %i.ho, ptr %.2..2..2..2.gep.sroa_idx625, align 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  store i8 %i.gy, ptr %.1..1..1..1..sroa_idx621, align 1, !tbaa !1322
  %i.hp = call noundef i64 @llvm.bswap.i64(i64 %..i)
  store i64 %i.hp, ptr %.2..2..2..2.gep.sroa_idx624, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.aq
  %.0.i183 = phi i64 [ 2, %bb.aq ], [ 4, %bb.as ], [ 10, %bb.at ]
  %spec.select = add nuw nsw i64 %.0.i183, %i.hc
  %i.hq = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %19, i64 noundef %spec.select) ; 2 uses
  %i.hr = extractvalue { ptr, i64 } %i.hq, 1      ; 2 uses
  %i.hs = call i64 @llvm.umin.i64(i64 %i.hr, i64 14) ; 2 uses
  %.not.i.i.i.i186 = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i.i.i186, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ht = extractvalue { ptr, i64 } %i.hq, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ht, ptr nonnull align 1 %i.c, i64 %i.hs, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188: ; preds = %bb.au, %bb.av
  %i.hu = load ptr, ptr %i.gc, align 8, !tbaa !2239
  %i.hv = load ptr, ptr %i.gd, align 8, !tbaa !2217 ; 2 uses
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %.sroa.speculated.i.i187 = call i64 @llvm.umin.i64(i64 %i.hy, i64 %i.hs)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.sroa.speculated.i.i187 ; 3 uses
  store ptr %i.hz, ptr %i.gd, align 8, !tbaa !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.gf, ptr %i.i, align 1, !tbaa !2855
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #35
  %i.ia = load ptr, ptr %i.gh, align 8, !tbaa !2216 ; 3 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !14379)
  %i.ie = load ptr, ptr %i.fy, align 8, !tbaa !1951, !noalias !14379 ; 2 uses
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = sub i64 %i.if, %i.gi                    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %21, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 16, i1 false), !tbaa.struct !1968
  %.sink.i.i.i.ptr.i.i = getelementptr inbounds i8, ptr %21, i64 %i.ig ; 7 uses
  store ptr %.sink.i.i.i.ptr.i.i, ptr %.ptr.i.i, align 8, !tbaa !1951, !alias.scope !14379
  %i.ih = load i64, ptr %i.fz, align 8, !tbaa !2016, !noalias !14379 ; 3 uses
  store i64 %i.ih, ptr %i.gj, align 8, !tbaa !2016, !alias.scope !14379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i8 0, i64 16, i1 false), !alias.scope !14379
  store ptr %.sink.i.i.i.ptr.i.i, ptr %i.gm, align 8, !tbaa !1952, !alias.scope !14379
  store ptr %21, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !1948, !alias.scope !14379
  %.not26.i.i.i = icmp eq i64 %i.ig, 16
  br i1 %.not26.i.i.i, label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio12const_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit, label %.lr.ph.split.i.preheader.i.i

.lr.ph.split.i.preheader.i.i:                     ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188
  %i.ii = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.ptr.i.i, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.ptr.i.i, i64 8
  %.sroa.4.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !1319, !alias.scope !14379
  %i.ij = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.peel.i.i, i64 %i.ih) ; 6 uses
  %.not.i.peel.i.i = icmp ult i64 %i.ij, %..i
  br i1 %.not.i.peel.i.i, label %bb.aw, label %.thread.i.i.i

bb.aw:                                            ; preds = %.lr.ph.split.i.preheader.i.i
  store i64 %i.ij, ptr %i.gk, align 8, !tbaa !3323, !alias.scope !14379
  %.not27.i.peel.i.i = icmp eq ptr %i.ie, %18
  br i1 %.not27.i.peel.i.i, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.split.i.peel.next.i.i

.lr.ph.split.i.peel.next.i.i:                     ; preds = %bb.aw
  %i.ik = sub nuw i64 %..i, %i.ij
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.ax, %.lr.ph.split.i.peel.next.i.i
  %.01022.i.i.i = phi i64 [ %i.iq, %bb.ax ], [ %i.ik, %.lr.ph.split.i.peel.next.i.i ] ; 3 uses
  %i.il = phi ptr [ %i.in, %bb.ax ], [ %i.ii, %.lr.ph.split.i.peel.next.i.i ] ; 3 uses
  %i.im = phi i64 [ %i.ir, %bb.ax ], [ %i.ij, %.lr.ph.split.i.peel.next.i.i ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !1319, !alias.scope !14379 ; 4 uses
  %.not.i.i.i = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i, %.01022.i.i.i
  br i1 %.not.i.i.i, label %bb.ax, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.i.preheader.i.i
  %.01022.i.lcssa.i.i = phi i64 [ %..i, %.lr.ph.split.i.preheader.i.i ], [ %.01022.i.i.i, %.lr.ph.split.i.i.i ] ; 2 uses
  %.lcssa11.i.i = phi i64 [ 0, %.lr.ph.split.i.preheader.i.i ], [ %i.im, %.lr.ph.split.i.i.i ]
  %.lcssa.i.i = phi ptr [ %i.ii, %.lr.ph.split.i.preheader.i.i ], [ %i.in, %.lr.ph.split.i.i.i ] ; 2 uses
  %.pn.i.i.lcssa.i.i = phi i64 [ %i.ij, %.lr.ph.split.i.preheader.i.i ], [ %.sroa.4.0.copyload.i.i.i.i, %.lr.ph.split.i.i.i ]
  store ptr %.lcssa.i.i, ptr %i.gm, align 8, !tbaa !1956, !alias.scope !14379
  %i.io = add i64 %.lcssa11.i.i, %.01022.i.lcssa.i.i ; 2 uses
  store i64 %i.io, ptr %i.gk, align 8, !tbaa !3323, !alias.scope !14379
  %i.ip = sub i64 %.01022.i.lcssa.i.i, %.pn.i.i.lcssa.i.i ; 2 uses
  store i64 %i.ip, ptr %i.gl, align 8, !tbaa !3324, !alias.scope !14379
  br label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio12const_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit

bb.ax:                                            ; preds = %.lr.ph.split.i.i.i
  %i.iq = sub nuw i64 %.01022.i.i.i, %.sroa.4.0.copyload.i.i.i.i
  %i.ir = add i64 %.sroa.4.0.copyload.i.i.i.i, %i.im ; 3 uses
  store i64 %i.ir, ptr %i.gk, align 8, !tbaa !3323, !alias.scope !14379
  %.not27.i.i.i = icmp eq ptr %i.il, %21
  br i1 %.not27.i.i.i, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !14349

..loopexit_crit_edge.i.i.i:                       ; preds = %bb.ax, %bb.aw
  %i.is = phi i64 [ %i.ij, %bb.aw ], [ %i.ir, %bb.ax ]
  %.lcssa10.i.i = phi ptr [ %i.ii, %bb.aw ], [ %i.in, %bb.ax ] ; 2 uses
  store ptr %.lcssa10.i.i, ptr %i.gm, align 8, !tbaa !1956, !alias.scope !14379
  br label %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio12const_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit

_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio12const_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188, %.thread.i.i.i, %..loopexit_crit_edge.i.i.i
  %i.it = phi i64 [ 0, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188 ], [ %i.ip, %.thread.i.i.i ], [ 0, %..loopexit_crit_edge.i.i.i ]
  %i.iu = phi i64 [ 0, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188 ], [ %i.io, %.thread.i.i.i ], [ %i.is, %..loopexit_crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = phi ptr [ %.sink.i.i.i.ptr.i.i, %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit188 ], [ %.lcssa.i.i, %.thread.i.i.i ], [ %.lcssa10.i.i, %..loopexit_crit_edge.i.i.i ] ; 2 uses
  store ptr %i.ia, ptr %20, align 8, !tbaa !1357
  store i64 %i.id, ptr %.sroa.4339.0..sroa_idx, align 8, !tbaa !1319
  %.not = icmp eq ptr %.sink.i.i.i.ptr.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.iv = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i.i.i to i64
  %i.iw = ptrtoaddr ptr %.sink.i.i.i.ptr.i.i to i64
  %reass.sub.i.i.i.i.i.i = sub i64 %i.iv, %i.iw
  %i.ix = and i64 %reass.sub.i.i.i.i.i.i, -16
  %.0.lcssa.i.i.i.i.i.i.i = select i1 %.not, i64 0, i64 %i.ix
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false)
  %i.iy = getelementptr inbounds i8, ptr %i.gn, i64 %i.ig ; 3 uses
  store ptr %i.iy, ptr %i.go, align 8, !tbaa !1951, !alias.scope !14380
  store i64 %i.ih, ptr %i.gp, align 8, !tbaa !2016, !alias.scope !14380
  store i64 %i.iu, ptr %i.gq, align 8, !tbaa !3323, !alias.scope !14380
  store i64 %i.it, ptr %i.gr, align 8, !tbaa !3324, !alias.scope !14380
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.iy, i64 %.0.lcssa.i.i.i.i.i.i.i
  store ptr %scevgep.i.i.i.i.i.i.i.i, ptr %i.gs, align 8, !alias.scope !14380
  store ptr %i.gn, ptr %i.gt, align 8, !alias.scope !14380
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !14381)
  call void @llvm.experimental.noalias.scope.decl(metadata !14382)
  store ptr %20, ptr %8, align 8, !tbaa !3328, !alias.scope !14383
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gw, i8 0, i64 32, i1 false), !alias.scope !14383
  store ptr %20, ptr %i.gu, align 8, !tbaa !2246, !alias.scope !14383
  store i8 1, ptr %i.gv, align 8, !tbaa !3329, !alias.scope !14383
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !14383
  store ptr %8, ptr %7, align 8, !tbaa !3331, !noalias !14383
  %.not.i.i.i.i.i.i191 = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i.i.i.i.i.i191, label %._crit_edge.i.i.i.i.i.i192, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISH_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i192:                       ; preds = %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio12const_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit
  store ptr %i.gn, ptr %i.gu, align 8, !tbaa !3333, !alias.scope !14383
  store i64 %i.iu, ptr %i.gw, align 8, !tbaa !1319, !alias.scope !14383
  store ptr %i.iy, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !1952, !alias.scope !14383
  store ptr %i.gn, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !1948, !alias.scope !14383
  store i8 2, ptr %i.gv, align 8, !tbaa !3329, !alias.scope !14383
  invoke void @_ZN5boost5beast16buffers_cat_viewIJNS_4asio14mutable_bufferENS0_19buffers_prefix_viewINS0_14buffers_suffixINS2_12const_bufferEEEEEEE14const_iterator9increment4nextESt17integral_constantImLm2EE(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISH_EE5valueEiE4typeE.exit unwind label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i.i.i192
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #36
  unreachable

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISH_EE5valueEiE4typeE.exit: ; preds = %_ZN5boost5beast14buffers_prefixINS0_14buffers_suffixINS_4asio12const_bufferEEEEENS0_19buffers_prefix_viewIT_EEmRKS7_.exit, %._crit_edge.i.i.i.i.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !14383
  %i.jb = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferENS3_19buffers_prefix_viewINS3_14buffers_suffixINS0_12const_bufferEEEEEEEENSF_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.gg, ptr noundef nonnull align 8 dereferenceable(80) %20, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  %i.jc = load i64, ptr %i.f, align 8, !tbaa !1319
  %i.jd = add i64 %i.jc, %..i
  store i64 %i.jd, ptr %i.f, align 8, !tbaa !1319
  %i.je = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.je, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferENS2_19buffers_prefix_viewINS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISH_EE5valueEiE4typeE.exit
  br i1 %i.hg, label %.thread447, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not12.i = icmp eq i64 %..i, 0
  br i1 %.not12.i, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ba
  %.promoted.i = load ptr, ptr %i.fy, align 8     ; 3 uses
  %.not11.i.peel = icmp eq ptr %.promoted.i, %i.fy
  br i1 %.not11.i.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i
  %.promoted16.i = load i64, ptr %i.fz, align 8   ; 2 uses
  %.sroa.2.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 8
  %.sroa.2.0.copyload.i.peel = load i64, ptr %.sroa.2.0..sroa_idx.i.peel, align 8, !tbaa !1319
  %i.jf = sub i64 %.sroa.2.0.copyload.i.peel, %.promoted16.i ; 2 uses
  %i.jg = icmp ult i64 %..i, %i.jf                ; 2 uses
  %i.jh = add i64 %..i, %.promoted16.i
  %storemerge.i.peel = select i1 %i.jg, i64 %i.jh, i64 0
  store i64 %storemerge.i.peel, ptr %i.fz, align 8, !tbaa !2016
end_hunk_6
begin_hunk_7_@_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE10write_someINS5_12const_bufferEEEmbRKT_RNS_6system10error_codeE:bb.a
  %i.ma = add i64 %i.lz, %..i210
  store i64 %i.ma, ptr %i.f, align 8, !tbaa !1319
  %i.mb = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.mc = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #35
  br i1 %i.mb, label %.thread451, label %.preheader

.preheader:                                       ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit236
  %i.md = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bu

bb.bu:                                            ; preds = %.preheader, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit
  %.1144 = phi i64 [ %i.nb, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit ], [ %i.lj, %.preheader ] ; 3 uses
  %.not147 = icmp eq i64 %.1144, 0
  br i1 %.not147, label %bb.ce, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mg = load i64, ptr %i.ku, align 8, !tbaa !2888 ; 2 uses
  %..i237 = call noundef i64 @llvm.umin.i64(i64 %.1144, i64 %i.mg) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #35
  %i.mh = load ptr, ptr %i.kw, align 8, !tbaa !1549 ; 2 uses
  store ptr %i.mh, ptr %27, align 8
  store i64 %..i237, ptr %i.md, align 8
  %.not14.i.i240 = icmp eq i64 %i.mg, 0
  br i1 %.not14.i.i240, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %.lr.ph.i.i241

.lr.ph.i.i241:                                    ; preds = %bb.bv
  %i.mi = load ptr, ptr %i.ks, align 8, !tbaa !1951
  br label %.lr.ph.split.i.i242

.lr.ph.split.i.i242:                              ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255, %.lr.ph.i.i241
  %.sroa.05.017.i.i244 = phi ptr [ %i.mp, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255 ], [ %i.mh, %.lr.ph.i.i241 ] ; 2 uses
  %.sroa.6.016.i.i245 = phi i64 [ %i.mq, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255 ], [ %..i237, %.lr.ph.i.i241 ] ; 2 uses
  %.sroa.09.015.i.i246 = phi ptr [ %i.mr, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255 ], [ %i.mi, %.lr.ph.i.i241 ] ; 5 uses
  %.not21.i.i247 = icmp eq ptr %.sroa.09.015.i.i246, %i.ks
  br i1 %.not21.i.i247, label %.lr.ph.i261, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.split.i.i242
  %i.mj = load ptr, ptr %i.ks, align 8, !tbaa !1951
  %i.mk = icmp eq ptr %.sroa.09.015.i.i246, %i.mj
  %.sroa.0.0.copyload1.i.i.i248 = load ptr, ptr %.sroa.09.015.i.i246, align 8, !tbaa !1357 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i249 = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i246, i64 8
  %.sroa.4.0.copyload.i.i.i250 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i249, align 8, !tbaa !1319 ; 3 uses
  br i1 %i.mk, label %bb.bx, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i251

bb.bx:                                            ; preds = %bb.bw
  %i.ml = load i64, ptr %i.kt, align 8, !tbaa !2016
  %spec.select.i.i.i.i258 = call i64 @llvm.umin.i64(i64 %i.ml, i64 %.sroa.4.0.copyload.i.i.i250) ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i248, i64 %spec.select.i.i.i.i258
  %i.mn = sub i64 %.sroa.4.0.copyload.i.i.i250, %spec.select.i.i.i.i258
  br label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i251

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i251: ; preds = %bb.bx, %bb.bw
  %.pn3.i.i.i252 = phi ptr [ %i.mm, %bb.bx ], [ %.sroa.0.0.copyload1.i.i.i248, %bb.bw ]
  %.pn.i.i.i253 = phi i64 [ %i.mn, %bb.bx ], [ %.sroa.4.0.copyload.i.i.i250, %bb.bw ] ; 2 uses
  %i.mo = call i64 @llvm.umin.i64(i64 %.sroa.6.016.i.i245, i64 %.pn.i.i.i253) ; 3 uses
  %.not.i.i.i254 = icmp eq i64 %.pn.i.i.i253, 0
  br i1 %.not.i.i.i254, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255, label %bb.by

bb.by:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i251
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.05.017.i.i244, ptr align 1 %.pn3.i.i.i252, i64 %i.mo, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255: ; preds = %bb.by, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i251
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i244, i64 %i.mo
  %i.mq = sub nuw i64 %.sroa.6.016.i.i245, %i.mo  ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i246, i64 16
  %.not.i.i256 = icmp eq i64 %i.mq, 0
  br i1 %.not.i.i256, label %.lr.ph.i261, label %.lr.ph.split.i.i242, !llvm.loop !14362

.lr.ph.i261:                                      ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i255, %.lr.ph.split.i.i242
  %.promoted.i262 = load ptr, ptr %i.ks, align 8  ; 3 uses
  %.not11.i266.peel = icmp eq ptr %.promoted.i262, %i.ks
  br i1 %.not11.i266.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i261
  %.promoted16.i263 = load i64, ptr %i.kt, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i267.peel = getelementptr inbounds nuw i8, ptr %.promoted.i262, i64 8
  %.sroa.2.0.copyload.i268.peel = load i64, ptr %.sroa.2.0..sroa_idx.i267.peel, align 8, !tbaa !1319
  %i.ms = sub i64 %.sroa.2.0.copyload.i268.peel, %.promoted16.i263 ; 2 uses
  %i.mt = icmp ult i64 %..i237, %i.ms             ; 2 uses
  %i.mu = add i64 %..i237, %.promoted16.i263
  %storemerge.i269.peel = select i1 %i.mt, i64 %i.mu, i64 0
  store i64 %storemerge.i269.peel, ptr %i.kt, align 8, !tbaa !2016
  br i1 %i.mt, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mv = sub nuw i64 %..i237, %i.ms              ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.promoted.i262, i64 16 ; 2 uses
  store ptr %i.mw, ptr %i.ks, align 8, !tbaa !1951
  %.not.i270.peel = icmp eq i64 %i.mv, 0
  br i1 %.not.i270.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %.peel.next508

.peel.next508:                                    ; preds = %bb.ca, %bb.cc
  %.0813.i265 = phi i64 [ %i.mz, %bb.cc ], [ %i.mv, %bb.ca ] ; 3 uses
  %i.mx = phi ptr [ %i.na, %bb.cc ], [ %i.mw, %bb.ca ] ; 3 uses
  %.not11.i266 = icmp eq ptr %i.mx, %i.ks
  br i1 %.not11.i266, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %bb.cb

bb.cb:                                            ; preds = %.peel.next508
  %.sroa.2.0..sroa_idx.i267 = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %.sroa.2.0.copyload.i268 = load i64, ptr %.sroa.2.0..sroa_idx.i267, align 8, !tbaa !1319 ; 2 uses
  %i.my = icmp ult i64 %.0813.i265, %.sroa.2.0.copyload.i268 ; 2 uses
  %storemerge.i269 = select i1 %i.my, i64 %.0813.i265, i64 0
  store i64 %storemerge.i269, ptr %i.kt, align 8, !tbaa !2016
  br i1 %i.my, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mz = sub nuw i64 %.0813.i265, %.sroa.2.0.copyload.i268 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 16 ; 2 uses
  store ptr %i.na, ptr %i.ks, align 8, !tbaa !1951
  %.not.i270 = icmp eq i64 %i.mz, 0
  br i1 %.not.i270, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, label %.peel.next508, !llvm.loop !14363

_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271: ; preds = %.peel.next508, %bb.cb, %bb.cc, %.lr.ph.i261, %bb.bz, %bb.ca, %bb.bv
  %i.nb = sub nuw i64 %.1144, %..i237
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 1 dereferenceable(4) %22)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.nc = load ptr, ptr %27, align 8, !tbaa !1552
  %i.nd = load i64, ptr %i.md, align 8, !tbaa !1553 ; 3 uses
  %.not17.not.i.i.i = icmp eq i64 %i.nd, 0
  br i1 %.not17.not.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i
  %.sroa.7.018.i.i.i = phi i64 [ %i.nl, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i ], [ 0, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271 ] ; 3 uses
  %i.ne = load i64, ptr %i.me, align 8, !tbaa !1332 ; 2 uses
  %i.nf = and i64 %i.ne, 1
  %.not.i.i.i.i.i.i272 = icmp eq i64 %i.nf, 0
  br i1 %.not.i.i.i.i.i.i272, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i
  %i.ng = icmp eq i64 %i.ne, 1
  %i.nh = load i32, ptr %3, align 8
  %.fr.i.i.i.i = freeze i32 %i.nh
  %.not.i.i.i.i273 = icmp eq i32 %.fr.i.i.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.ng, %.not.i.i.i.i273
  br i1 %or.cond.i.i.i.i, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit

_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i: ; preds = %bb.cd, %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nc, i64 %.sroa.7.018.i.i.i
  %i.nj = sub nuw i64 %i.nd, %.sroa.7.018.i.i.i
  %spec.select.i1.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.nj, i64 65536)
  store ptr %i.ni, ptr %5, align 8
  store i64 %spec.select.i1.i.i.i.i, ptr %i.mf, align 8
  %i.nk = call noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE10write_someINS3_12const_bufferEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.nl = add i64 %i.nk, %.sroa.7.018.i.i.i       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %.not.i.i.i274 = icmp ult i64 %i.nl, %i.nd
  br i1 %.not.i.i.i274, label %.lr.ph.i.i.i, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit: ; preds = %bb.cd, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.i.i.i, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit271
  %i.nm = load i64, ptr %i.f, align 8, !tbaa !1319
  %i.nn = add i64 %i.nm, %..i237
  store i64 %i.nn, ptr %i.f, align 8, !tbaa !1319
  %i.no = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.np = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  br i1 %i.no, label %.thread451, label %bb.bu, !llvm.loop !14364

.thread451:                                       ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit236
  %.10.ph = phi i64 [ %i.mc, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit236 ], [ %i.np, %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS0_14mutable_bufferEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISA_EE5valueEiE4typeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  br label %bb.cz

bb.ce:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  br label %bb.cy

bb.cf:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1968
  %i.nq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 9 uses
  store ptr %28, ptr %i.nq, align 8, !tbaa !1951
  %i.nr = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 5 uses
  store i64 0, ptr %i.nr, align 8, !tbaa !2016
  %i.ns = getelementptr inbounds nuw i8, ptr %i.g, i64 2280
  %i.nt = getelementptr inbounds nuw i8, ptr %i.g, i64 2272
  %i.nu = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.nv = getelementptr inbounds nuw i8, ptr %31, i64 40
  %.2..2..2..2.gep.sroa_idx638 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.4..4..4..4.gep27.sroa_idx640 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.10..10..10..10.gep28.sroa_idx641 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.nw = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.nx = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.nz = getelementptr inbounds nuw i8, ptr %31, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %32, i64 24
  %.ptr4.i.i.i.i.i.i321 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.oe = shl nsw i8 %.sroa.29.0579, 4            ; 2 uses
  %i.of = or disjoint i8 -128, 127
  %i.og = or disjoint i8 -128, 126
  %i.oh = or i8 %i.aw, %i.oe
  %.1..1..1..1..sroa_idx634 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx637 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx635 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..2..2..2.gep.sroa_idx639 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.1..1..1..1..sroa_idx636 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, %bb.cf
  %.sroa.20.5 = phi i8 [ %i.oh, %bb.cf ], [ %i.oe, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334 ]
  %.2145 = phi i64 [ %.sroa.229.0.copyload, %bb.cf ], [ %i.pa, %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334 ] ; 2 uses
  %i.oi = load ptr, ptr %0, align 8, !tbaa !1433
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 2409
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !2846, !range !1351, !noundef !1352
  %i.ol = trunc nuw i8 %i.ok to i1
  %i.om = call noundef ptr @_ZN5boost5beast9websocket6detail9make_prngEb(i1 noundef zeroext %i.ol)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %bb.cg
  %i.on = call noundef i32 %i.om(), !inline_history !241 ; 3 uses
  %.not.i275 = icmp eq i32 %i.on, 0
  br i1 %.not.i275, label %bb.ch, label %_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit276, !llvm.loop !242

_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit276: ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #35
  call void @_ZN5boost5beast9websocket6detail11prepare_keyERSt5arrayIhLm4EEj(ptr noundef nonnull align 1 dereferenceable(4) %29, i32 noundef %i.on)
  %i.oo = load i64, ptr %i.ns, align 8, !tbaa !2888
  %..i277 = call noundef i64 @llvm.umin.i64(i64 %.2145, i64 %i.oo) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #35
  %i.op = load ptr, ptr %i.nt, align 8, !tbaa !1549 ; 2 uses
  store ptr %i.op, ptr %30, align 8
  store i64 %..i277, ptr %i.nu, align 8
  %.not14.i.i280 = icmp eq i64 %..i277, 0         ; 2 uses
  br i1 %.not14.i.i280, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit299, label %.lr.ph.i.i281

.lr.ph.i.i281:                                    ; preds = %_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit276
  %i.oq = load ptr, ptr %i.nq, align 8, !tbaa !1951
  br label %.lr.ph.split.i.i282

.lr.ph.split.i.i282:                              ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295, %.lr.ph.i.i281
  %.sroa.05.017.i.i284 = phi ptr [ %i.ox, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295 ], [ %i.op, %.lr.ph.i.i281 ] ; 2 uses
  %.sroa.6.016.i.i285 = phi i64 [ %i.oy, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295 ], [ %..i277, %.lr.ph.i.i281 ] ; 2 uses
  %.sroa.09.015.i.i286 = phi ptr [ %i.oz, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295 ], [ %i.oq, %.lr.ph.i.i281 ] ; 5 uses
  %.not21.i.i287 = icmp eq ptr %.sroa.09.015.i.i286, %i.nq
  br i1 %.not21.i.i287, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit299, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.split.i.i282
  %i.or = load ptr, ptr %i.nq, align 8, !tbaa !1951
  %i.os = icmp eq ptr %.sroa.09.015.i.i286, %i.or
  %.sroa.0.0.copyload1.i.i.i288 = load ptr, ptr %.sroa.09.015.i.i286, align 8, !tbaa !1357 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i289 = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i286, i64 8
  %.sroa.4.0.copyload.i.i.i290 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i289, align 8, !tbaa !1319 ; 3 uses
  br i1 %i.os, label %bb.cj, label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i291

bb.cj:                                            ; preds = %bb.ci
  %i.ot = load i64, ptr %i.nr, align 8, !tbaa !2016
  %spec.select.i.i.i.i298 = call i64 @llvm.umin.i64(i64 %i.ot, i64 %.sroa.4.0.copyload.i.i.i290) ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.i288, i64 %spec.select.i.i.i.i298
  %i.ov = sub i64 %.sroa.4.0.copyload.i.i.i290, %spec.select.i.i.i.i298
  br label %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i291

_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i291: ; preds = %bb.cj, %bb.ci
  %.pn3.i.i.i292 = phi ptr [ %i.ou, %bb.cj ], [ %.sroa.0.0.copyload1.i.i.i288, %bb.ci ]
  %.pn.i.i.i293 = phi i64 [ %i.ov, %bb.cj ], [ %.sroa.4.0.copyload.i.i.i290, %bb.ci ] ; 2 uses
  %i.ow = call i64 @llvm.umin.i64(i64 %.sroa.6.016.i.i285, i64 %.pn.i.i.i293) ; 3 uses
  %.not.i.i.i294 = icmp eq i64 %.pn.i.i.i293, 0
  br i1 %.not.i.i.i294, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295, label %bb.ck

bb.ck:                                            ; preds = %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i291
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.05.017.i.i284, ptr align 1 %.pn3.i.i.i292, i64 %i.ow, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295: ; preds = %bb.ck, %_ZNK5boost5beast14buffers_suffixINS_4asio12const_bufferEE14const_iteratordeEv.exit.i.i291
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i284, i64 %i.ow
  %i.oy = sub nuw i64 %.sroa.6.016.i.i285, %i.ow  ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i286, i64 16
  %.not.i.i296 = icmp eq i64 %i.oy, 0
  br i1 %.not.i.i296, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit299, label %.lr.ph.split.i.i282, !llvm.loop !14362

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit299: ; preds = %.lr.ph.split.i.i282, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i295, %_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type11create_maskEv.exit276
  call void @_ZN5boost5beast9websocket6detail12mask_inplaceERKNS_4asio14mutable_bufferERSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 1 dereferenceable(4) %29)
  %i.pa = sub nuw i64 %.2145, %..i277             ; 2 uses
  %i.pb = icmp eq i64 %i.pa, 0                    ; 2 uses
  %i.pc = select i1 %1, i1 %i.pb, i1 false        ; 2 uses
  %i.pd = xor i1 %i.pc, true
  %i.pe = zext i1 %i.pd to i8
  store i8 %i.pe, ptr %i.i, align 1, !tbaa !2855
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %31, ptr noundef nonnull %i.nv, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.pf = select i1 %i.pc, i8 -128, i8 0
  %spec.select37.i305 = or i8 %.sroa.20.5, %i.pf
  store i8 %spec.select37.i305, ptr %i.a, align 1, !tbaa !1322
  %i.pg = icmp ult i64 %..i277, 126
  br i1 %i.pg, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit299
  %i.ph = trunc nuw nsw i64 %..i277 to i8
  %i.pi = or disjoint i8 -128, %i.ph
  store i8 %i.pi, ptr %.1..1..1..1..sroa_idx636, align 1, !tbaa !1322
  br label %bb.cp

bb.cm:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS0_12const_bufferEEEEEmRKT_RKT0_.exit299
  %i.pj = icmp ult i64 %..i277, 65536
  br i1 %i.pj, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i8 %i.og, ptr %.1..1..1..1..sroa_idx635, align 1, !tbaa !1322
  %i.pk = trunc nuw i64 %..i277 to i16
  %i.pl = call noundef i16 @llvm.bswap.i16(i16 %i.pk)
  store i16 %i.pl, ptr %.2..2..2..2.gep.sroa_idx639, align 1
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  store i8 %i.of, ptr %.1..1..1..1..sroa_idx634, align 1, !tbaa !1322
  %i.pm = call noundef i64 @llvm.bswap.i64(i64 %..i277)
  store i64 %i.pm, ptr %.2..2..2..2.gep.sroa_idx637, align 1
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cl
  %.0.sroa.phi.i307 = phi ptr [ %.2..2..2..2.gep.sroa_idx638, %bb.cl ], [ %.4..4..4..4.gep27.sroa_idx640, %bb.cn ], [ %.10..10..10..10.gep28.sroa_idx641, %bb.co ]
  %.0.i308 = phi i64 [ 6, %bb.cl ], [ 8, %bb.cn ], [ 14, %bb.co ]
  store i32 %i.on, ptr %.0.sroa.phi.i307, align 1
  %i.pn = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %31, i64 noundef %.0.i308) ; 2 uses
  %i.po = extractvalue { ptr, i64 } %i.pn, 1      ; 2 uses
  %i.pp = call i64 @llvm.umin.i64(i64 %i.po, i64 14) ; 2 uses
  %.not.i.i.i.i311 = icmp eq i64 %i.po, 0
  br i1 %.not.i.i.i.i311, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit313, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pq = extractvalue { ptr, i64 } %i.pn, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pq, ptr nonnull align 1 %i.a, i64 %i.pp, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit313

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit313: ; preds = %bb.cp, %bb.cq
  %i.pr = load ptr, ptr %i.nw, align 8, !tbaa !2239
  %i.ps = load ptr, ptr %i.nx, align 8, !tbaa !2217 ; 2 uses
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = sub i64 %i.pt, %i.pu
  %.sroa.speculated.i.i312 = call i64 @llvm.umin.i64(i64 %i.pv, i64 %i.pp)
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 %.sroa.speculated.i.i312 ; 3 uses
  store ptr %i.pw, ptr %i.nx, align 8, !tbaa !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #35
  %i.px = load ptr, ptr %i.nz, align 8, !tbaa !2216 ; 3 uses
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = sub i64 %i.py, %i.pz
  store ptr %i.px, ptr %32, align 8, !tbaa !1357
  store i64 %i.qa, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oa, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !1968
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !14387)
  call void @llvm.experimental.noalias.scope.decl(metadata !14388)
  store ptr %32, ptr %4, align 8, !tbaa !2245, !alias.scope !14389
  store i64 1, ptr %i.oc, align 8, !alias.scope !14389
  store ptr %32, ptr %i.ob, align 8, !tbaa !2246, !alias.scope !14389
  %.not.i.i.i.i.i.i316 = icmp eq ptr %i.pw, %i.px
  br i1 %.not.i.i.i.i.i.i316, label %._crit_edge.i.i.i.i.i.i317, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit322

._crit_edge.i.i.i.i.i.i317:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit313
  store ptr %i.oa, ptr %i.ob, align 8, !tbaa !2246, !alias.scope !14389
  store i8 2, ptr %i.oc, align 8, !tbaa !2247, !alias.scope !14389
  %i.qb = load i64, ptr %i.od, align 8, !tbaa !1553, !noalias !14389
  %.not.i.i.i.i.i.i.i319 = icmp eq i64 %i.qb, 0
  br i1 %.not.i.i.i.i.i.i.i319, label %._crit_edge.i.i.i.i.i.i.i320, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit322

._crit_edge.i.i.i.i.i.i.i320:                     ; preds = %._crit_edge.i.i.i.i.i.i317
  store ptr %.ptr4.i.i.i.i.i.i321, ptr %i.ob, align 8, !tbaa !2246, !alias.scope !14389
  store i8 0, ptr %i.ob, align 8, !tbaa !2092, !alias.scope !14389
  store i8 3, ptr %i.oc, align 8, !tbaa !2247, !alias.scope !14389
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit322

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit322: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit313, %._crit_edge.i.i.i.i.i.i317, %._crit_edge.i.i.i.i.i.i.i320
  %i.qc = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferES9_EEENSA_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ny, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #35
  %i.qd = load i64, ptr %i.f, align 8, !tbaa !1319
  %i.qe = add i64 %i.qd, %..i277
  store i64 %i.qe, ptr %i.f, align 8, !tbaa !1319
  %i.qf = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamINS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2488) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.qf, label %bb.cx, label %bb.cr

bb.cr:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit322
  br i1 %i.pb, label %.thread463, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  br i1 %.not14.i.i280, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %.lr.ph.i324

.lr.ph.i324:                                      ; preds = %bb.cs
  %.promoted.i325 = load ptr, ptr %i.nq, align 8  ; 3 uses
  %.not11.i329.peel = icmp eq ptr %.promoted.i325, %i.nq
  br i1 %.not11.i329.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i324
  %.promoted16.i326 = load i64, ptr %i.nr, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i330.peel = getelementptr inbounds nuw i8, ptr %.promoted.i325, i64 8
  %.sroa.2.0.copyload.i331.peel = load i64, ptr %.sroa.2.0..sroa_idx.i330.peel, align 8, !tbaa !1319
  %i.qg = sub i64 %.sroa.2.0.copyload.i331.peel, %.promoted16.i326 ; 2 uses
  %i.qh = icmp ult i64 %..i277, %i.qg             ; 2 uses
  %i.qi = add i64 %..i277, %.promoted16.i326
  %storemerge.i332.peel = select i1 %i.qh, i64 %i.qi, i64 0
  store i64 %storemerge.i332.peel, ptr %i.nr, align 8, !tbaa !2016
  br i1 %i.qh, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qj = sub nuw i64 %..i277, %i.qg              ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.promoted.i325, i64 16 ; 2 uses
  store ptr %i.qk, ptr %i.nq, align 8, !tbaa !1951
  %.not.i333.peel = icmp eq i64 %i.qj, 0
  br i1 %.not.i333.peel, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %.peel.next511

.peel.next511:                                    ; preds = %bb.cu, %bb.cw
  %.0813.i328 = phi i64 [ %i.qn, %bb.cw ], [ %i.qj, %bb.cu ] ; 3 uses
  %i.ql = phi ptr [ %i.qo, %bb.cw ], [ %i.qk, %bb.cu ] ; 3 uses
  %.not11.i329 = icmp eq ptr %i.ql, %i.nq
  br i1 %.not11.i329, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %bb.cv

bb.cv:                                            ; preds = %.peel.next511
  %.sroa.2.0..sroa_idx.i330 = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %.sroa.2.0.copyload.i331 = load i64, ptr %.sroa.2.0..sroa_idx.i330, align 8, !tbaa !1319 ; 2 uses
  %i.qm = icmp ult i64 %.0813.i328, %.sroa.2.0.copyload.i331 ; 2 uses
  %storemerge.i332 = select i1 %i.qm, i64 %.0813.i328, i64 0
  store i64 %storemerge.i332, ptr %i.nr, align 8, !tbaa !2016
  br i1 %i.qm, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qn = sub nuw i64 %.0813.i328, %.sroa.2.0.copyload.i331 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 16 ; 2 uses
  store ptr %i.qo, ptr %i.nq, align 8, !tbaa !1951
  %.not.i333 = icmp eq i64 %i.qn, 0
  br i1 %.not.i333, label %_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334, label %.peel.next511, !llvm.loop !14369

_ZN5boost5beast14buffers_suffixINS_4asio12const_bufferEE7consumeEm.exit334: ; preds = %bb.cw, %bb.cv, %.peel.next511, %.lr.ph.i324, %bb.ct, %bb.cu, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  br label %bb.cg

.thread463:                                       ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  br label %bb.cy

bb.cx:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit322
  %i.qp = load i64, ptr %i.f, align 8, !tbaa !1319
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  br label %bb.cz

bb.cy:                                            ; preds = %.thread463, %bb.ce, %.thread447, %bb.an, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread
  %i.qq = load i64, ptr %i.f, align 8, !tbaa !1319
  br label %bb.cz

bb.cz:                                            ; preds = %bb.a, %bb.cy, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit, %.thread436, %bb.bf, %.thread451, %bb.cx
  %.14 = phi i64 [ %i.fw, %.thread436 ], [ %i.qq, %bb.cy ], [ %.3414, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit ], [ %i.qp, %bb.cx ], [ %.10.ph, %.thread451 ], [ %i.jo, %bb.bf ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  ret i64 %.14
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5beast9websocket6detail9impl_baseILb1EE7deflateINS_4asio12const_bufferEEEbRNS6_14mutable_bufferERNS0_14buffers_suffixIT_EEbRmRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::optional", align 4   ; 5 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %8 = alloca %"class.boost::optional", align 4   ; 5 uses
  %9 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %10 = alloca %"class.boost::optional", align 4  ; 5 uses
  %11 = alloca %"struct.boost::beast::zlib::z_params", align 8 ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1702
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !2224
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !2225
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 2, ptr %i.e, align 8, !tbaa !2226
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1553
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !2228
  %i.j = load ptr, ptr %1, align 8, !tbaa !1552
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !2227
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1951 ; 3 uses
  %.not91 = icmp eq ptr %i.m, %i.l
  br i1 %.not91, label %.thread76, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_7
