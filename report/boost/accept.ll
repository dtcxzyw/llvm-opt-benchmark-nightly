Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/accept?download=true
inline.NumInlined: 28608
inline.NumDeleted: 8922
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN5boost5beast4http6detail9read_someINS0_4test12basic_streamINS_4asio10io_context19basic_executor_typeISaIvELm0EEEEENS0_13static_bufferILm1536EEELb1EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeE:bb.a
  resume { ptr, i32 } %i.bc

_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit: ; preds = %bb.q
  %i.bg = extractvalue { ptr, i32 } %i.bc, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #35, !noalias !3507 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !3507
  call void @_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 7, ptr noundef null) #35, !noalias !3507
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.5.0.copyload4.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i, align 8, !tbaa !302, !noalias !3507 ; 3 uses
  %switch.i.i.i = icmp ult i64 %.sroa.5.0.copyload4.i.i, 2
  %i.bi = and i64 %.sroa.5.0.copyload4.i.i, 1
  %i.bj = or disjoint i64 %i.bi, ptrtoint (ptr @_ZZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_E7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.5.0.copyload4.i.i, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 16, i1 false), !noalias !3507
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !302, !noalias !3507
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !3507
  call void @__cxa_end_catch(), !noalias !3507
  store i8 0, ptr %10, align 8, !tbaa !781, !alias.scope !3507
  store i8 0, ptr %i.bb, align 8, !tbaa !305, !alias.scope !3507
  %.pre106 = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !315 ; 2 uses
  %i.bk = and i64 %.pre106, 1
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread79, label %bb.s

bb.s:                                             ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit
  %i.bl = icmp eq i64 %.pre106, 1
  br i1 %i.bl, label %_ZNK5boost6system10error_codecvbEv.exit, label %.thread95

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.s
  %i.bm = load i32, ptr %3, align 8, !tbaa !760
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit.thread79, label %.thread95

_ZNK5boost6system10error_codecvbEv.exit.thread79: ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit.thread, %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit, %_ZNK5boost6system10error_codecvbEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bo = call noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio10io_context19basic_executor_typeISaIvELm0EEEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @_ZN5boost5beast18static_buffer_base6commitEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.bo) #35
  %i.bp = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.t   ; 4 uses

.noexc.i:                                         ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread79
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !313, !noalias !3508
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
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !296, !noalias !3508
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !3508
  %i.by = call noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(52) %i.bp, i32 noundef 2) #35, !noalias !3508, !inline_history !51 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.noexc.i
  %i.bz = load i64, ptr %i.bn, align 8, !tbaa !315 ; 5 uses
  %i.ca = icmp eq i64 %i.bz, 1
  %i.cb = load i32, ptr %3, align 8, !tbaa !305
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
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !305
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.u, %bb.v
  %.0.i18.i = phi ptr [ %i.ce, %bb.v ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.u ] ; 2 uses
  %i.cf = load i64, ptr %i.bq, align 8, !tbaa !313 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = icmp eq ptr %.0.i18.i, %i.bp
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = icmp eq i64 %i.cj, %i.cf
  %i.cl = select i1 %i.cg, i1 %i.ch, i1 %i.ck
  br i1 %i.cl, label %bb.w, label %.thread

bb.w:                                             ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !466
  %.not104 = icmp eq i32 %i.cn, 0
  br i1 %.not104, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %cond109 = icmp eq i64 %i.bz, 0
  br i1 %cond109, label %_ZNK5boost6system10error_code8categoryEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !305
  br label %_ZNK5boost6system10error_code8categoryEv.exit

_ZNK5boost6system10error_code8categoryEv.exit:    ; preds = %bb.x, %bb.y
  %.0.i47 = phi ptr [ %i.cp, %bb.y ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.x ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i47, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !313
  %i.cs = and i64 %i.cr, -2
  %switch.i.i.i48 = icmp eq i64 %i.cs, -5572340897628102704
  br i1 %switch.i.i.i48, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit
  %i.ct = load ptr, ptr %.0.i47, align 8, !tbaa !296
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef zeroext i1 %i.cv(ptr noundef nonnull align 8 dereferenceable(52) %.0.i47, i32 noundef 0) #35, !inline_history !52
  %spec.select = select i1 %i.cw, i64 3, i64 2
  br label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread: ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit, %_ZNK5boost6system10error_code8categoryEv.exit
  %i.cx = phi i64 [ 2, %_ZNK5boost6system10error_code8categoryEv.exit ], [ %spec.select, %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit ]
  store i32 0, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i50, align 4
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i47, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !305
  store i64 %i.cx, ptr %i.bn, align 8, !tbaa !302
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !423
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !302 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %switch.i.i57 = icmp ult i64 %.sroa.5.0.copyload, 2
  %i.da = and i64 %.sroa.5.0.copyload, 1
  %i.db = or disjoint i64 %i.da, ptrtoint (ptr @_ZZN5boost5beast4http6detail9read_someINS0_4test12basic_streamINS_4asio10io_context19basic_executor_typeISaIvELm0EEEEENS0_13static_bufferILm1536EEELb1EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeEE7loc_bb__0 to i64)
  %.sroa.5.0.i58 = select i1 %switch.i.i57, i64 %.sroa.5.0.copyload, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i64 %.sroa.5.0.i58, ptr %i.bn, align 8, !tbaa !302
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !762
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !782
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !762
  %i.h = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.e, i64 %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil = phi ptr [ %i.l, %.lr.ph.i.i.i.epil ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.epil = phi i64 [ %i.k, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !762
  %i.k = add i64 %i.j, %.068.i.i.i.epil           ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !3509

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
  %i.o = load i64, ptr %i.n, align 8, !tbaa !762  ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.sroa.6.015.i.i.i, i64 %i.o) ; 3 uses
  %.not.i.i4.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i4.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i29
  %i.q = load ptr, ptr %.01017.i.i.i, align 8, !tbaa !782
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.011.016.i.i.i, ptr align 1 %i.q, i64 %i.p, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i29
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i.i, i64 %i.p
  %i.s = sub nuw nsw i64 %.sroa.6.015.i.i.i, %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01017.i.i.i, i64 16 ; 2 uses
  %i.u = icmp ne i64 %i.s, 0
  %i.v = icmp ne ptr %i.t, %.0.i.i
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i.i29, label %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, !llvm.loop !53

_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i
  %i.x = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.h

bb.e:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !3512
  %i.aa = icmp ugt i64 %i.k, %i.z
  br i1 %i.aa, label %bb.f, label %.lr.ph.preheader.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #40, !noalias !3513
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !401 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !401
  %.not.i.i.i.i30 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i30, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #38
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.f
  store i64 %i.k, ptr %i.y, align 8, !tbaa !3512
  %.pre = load i64, ptr %i.b, align 8, !tbaa !762
  %i.ae = icmp eq i64 %.pre, 0
  %i.af = select i1 %i.ae, i64 16, i64 32
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %.not.i.i.i31 = phi i64 [ 32, %bb.e ], [ %i.af, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !401
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.not.i.i.i31
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.preheader.i.i
  %.01017.i.i = phi ptr [ %i.ao, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.011.016.i.i = phi ptr [ %i.am, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.ah, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi i64 [ %i.an, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.k, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01017.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !762 ; 2 uses
  %i.ak = tail call i64 @llvm.umin.i64(i64 %.sroa.6.015.i.i, i64 %i.aj) ; 3 uses
  %.not.i.i4.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i4.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.al = load ptr, ptr %.01017.i.i, align 8, !tbaa !782
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.011.016.i.i, ptr align 1 %i.al, i64 %i.ak, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i, i64 %i.ak
  %i.an = sub nuw i64 %.sroa.6.015.i.i, %i.ak     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01017.i.i, i64 16 ; 2 uses
  %i.ap = icmp ne i64 %i.an, 0
  %i.aq = icmp ne ptr %i.ao, %.0.i.i.i
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit, !llvm.loop !53

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !401
  %i.at = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.as, i64 %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit, %bb.b
  %.1 = phi i64 [ %i.at, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit ], [ %i.h, %bb.b ], [ %i.x, %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit ]
  ret i64 %.1
}

; Function Attrs: nounwind
declare void @_ZN5boost5beast18static_buffer_base4dataEv(ptr dead_on_unwind writable sret(%"class.boost::beast::detail::buffers_pair") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6systemneERKNS0_10error_codeES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !315  ; 2 uses
  %i.c = icmp eq i64 %i.b, 1                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !315  ; 2 uses
  %i.f = icmp eq i64 %i.e, 1                      ; 3 uses
  %i.g = xor i1 %i.c, %i.f
  br i1 %i.g, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i = and i1 %i.c, %i.f
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !318
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !318
  %i.l = icmp eq ptr %i.i, %i.k
  %i.m = load i32, ptr %0, align 8
  %i.n = load i32, ptr %1, align 8
  %i.o = icmp eq i32 %i.m, %i.n
  %i.p = select i1 %i.l, i1 %i.o, i1 false
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i32, ptr %0, align 8, !tbaa !305    ; 2 uses
  br i1 %i.c, label %bb.e, label %_ZNK5boost6system10error_code5valueEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !318
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = urem i64 %i.t, 2097143
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = mul nuw nsw i32 %i.v, 1000
  %i.x = add i32 %i.w, %i.q
  br label %_ZNK5boost6system10error_code5valueEv.exit.i

_ZNK5boost6system10error_code5valueEv.exit.i:     ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.x, %bb.e ], [ %i.q, %bb.d ]
  %i.y = load i32, ptr %1, align 8, !tbaa !305    ; 2 uses
  br i1 %i.f, label %bb.f, label %_ZNK5boost6system10error_code5valueEv.exit17.i

bb.f:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !318
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, 2097143
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 1000
  %i.af = add i32 %i.ae, %i.y
  br label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %bb.f, %_ZNK5boost6system10error_code5valueEv.exit.i
  %.0.i16.i = phi i32 [ %i.af, %bb.f ], [ %i.y, %_ZNK5boost6system10error_code5valueEv.exit.i ]
  %i.ag = icmp eq i32 %.0.i.i, %.0.i16.i
  br i1 %i.ag, label %bb.g, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

bb.g:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  switch i64 %i.b, label %bb.i [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i
end_hunk_0
begin_hunk_1_@_ZN5boost5beast4http6detail12read_some_opINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_13static_bufferILm1536EEELb0EEclINS4_6detail11composed_opISC_NSE_13composed_workIFvS8_EEENSF_INS2_7read_opIS9_SB_Lb0ENS2_14parser_is_doneEEESI_NS0_9websocket6streamIS9_Lb1EE12handshake_opINS0_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJSV_EEEEEvRT_SU_m:bb.a
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39: ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !423
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !302 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %switch.i.i42 = icmp ult i64 %.sroa.5.0.copyload, 2
  %i.eb = and i64 %.sroa.5.0.copyload, 1
  %i.ec = or disjoint i64 %i.eb, ptrtoint (ptr @_ZZN5boost5beast4http6detail12read_some_opINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_13static_bufferILm1536EEELb0EEclINS4_6detail11composed_opISC_NSE_13composed_workIFvS8_EEENSF_INS2_7read_opIS9_SB_Lb0ENS2_14parser_is_doneEEESI_NS0_9websocket6streamIS9_Lb1EE12handshake_opINS0_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJSV_EEEEEvRT_SU_mE7loc_bb__0 to i64)
  %.sroa.5.0.i43 = select i1 %switch.i.i42, i64 %.sroa.5.0.copyload, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i64 %.sroa.5.0.i43, ptr %i.cx, align 8, !tbaa !302
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %_ZNK5boost6system10error_codecvbEv.exit38

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %i.ed = and i64 %i.cy, 1
  %.not.i.i45 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i45, label %_ZNK5boost6system10error_codecvbEv.exit47.thread102, label %_ZNK5boost6system10error_codecvbEv.exit38

.thread97:                                        ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  %i.ee = and i64 %i.cy, 1
  %.not.i.i4598 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i4598, label %_ZNK5boost6system10error_codecvbEv.exit47.thread102, label %_ZNK5boost6system10error_codecvbEv.exit38

_ZNK5boost6system10error_codecvbEv.exit47:        ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %.not124 = icmp eq i32 %i.da, 0
  br i1 %.not124, label %_ZNK5boost6system10error_codecvbEv.exit47.thread102, label %_ZNK5boost6system10error_codecvbEv.exit38, !llvm.loop !8571

_ZNK5boost6system10error_codecvbEv.exit38:        ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, %.thread97, %_ZNK5boost6system10error_code5valueEv.exit17.i.i, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.thread92, %.thread, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, %_ZNK5boost6system10error_codecvbEv.exit47
  %.sroa.17.3 = phi i8 [ 1, %.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit39 ], [ 0, %_ZNK5boost6system10error_codecvbEv.exit47 ], [ 0, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit ], [ 1, %.thread92 ], [ 0, %_ZNK5boost6system10error_code5valueEv.exit17.i.i ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ], [ 0, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread ], [ 0, %.thread97 ], [ 0, %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread ], [ 0, %_ZNK5boost6system10error_code8categoryEv.exit20.i.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !8580, !range !334, !noundef !335
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %.noexc51, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit38
  store i32 63, ptr %0, align 8, !tbaa !677
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 512 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 216 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %18, i64 440
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 160
  %i.en = getelementptr inbounds nuw i8, ptr %18, i64 56
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  call void @_ZN5boost5beast17stable_async_baseINS0_4test7handlerENS_4asio15any_io_executorESaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(280) %i.ek) #35, !inline_history !1614
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.em) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.en) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  %i.eo = load i32, ptr %0, align 8, !tbaa !677
  %.not24 = icmp eq i32 %i.eo, 0
  br i1 %.not24, label %bb.ae, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  %i.ep = load ptr, ptr %i.ei, align 8, !tbaa !8582, !nonnull !335, !align !338
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  invoke void @_ZNK5boost4asio15any_io_executor7requireINS0_9execution6detail8blocking7never_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits14require_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEES7_NS3_11prefer_onlyINS5_10possibly_tILi0EEEEENSH_INS4_16outstanding_work9tracked_tILi0EEEEENSH_INSL_11untracked_tILi0EEEEENSH_INS4_12relationship6fork_tILi0EEEEENSH_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::any_io_executor") align 8 %17, ptr noundef nonnull align 8 dereferenceable(56) %i.eq, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4asio9execution6detail10blocking_tILi0EE5neverE, i32 noundef 0)
          to label %_ZN5boost4asio33get_associated_immediate_executorINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS2_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SE_Lb0ENS6_14parser_is_doneEEESI_NS4_9websocket6streamISC_Lb1EE12handshake_opINS4_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJSV_EEESB_EEDTclsr29associated_immediate_executorIT_T0_EE3getfp_fp0_EERKSY_RKSZ_NS0_10constraintIXoosr11is_executorISZ_EE5valuesr9execution11is_executorISZ_EE5valueEiE4typeE.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #36
  unreachable

_ZN5boost4asio33get_associated_immediate_executorINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS2_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SE_Lb0ENS6_14parser_is_doneEEESI_NS4_9websocket6streamISC_Lb1EE12handshake_opINS4_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJSV_EEESB_EEDTclsr29associated_immediate_executorIT_T0_EE3getfp_fp0_EERKSY_RKSZ_NS0_10constraintIXoosr11is_executorISZ_EE5valuesr9execution11is_executorISZ_EE5valueEiE4typeE.exit: ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  invoke void @_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SD_Lb0ENS5_14parser_is_doneEEESH_NS3_9websocket6streamISB_Lb1EE12handshake_opINS3_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJEEC2EOSW_(ptr noundef nonnull align 8 dereferenceable(536) %18, ptr noundef nonnull align 8 dereferenceable(508) %1)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %_ZN5boost4asio33get_associated_immediate_executorINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS2_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SE_Lb0ENS6_14parser_is_doneEEESI_NS4_9websocket6streamISC_Lb1EE12handshake_opINS4_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJSV_EEESB_EEDTclsr29associated_immediate_executorIT_T0_EE3getfp_fp0_EERKSY_RKSZ_NS0_10constraintIXoosr11is_executorISZ_EE5valuesr9execution11is_executorISZ_EE5valueEiE4typeE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !423
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %17) #35, !inline_history !8572
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @_ZN5boost4asio15any_io_executorC1EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %8) #35, !inline_history !8573
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i64 24, i1 false), !tbaa.struct !423
  invoke void @_ZNO5boost4asio12async_resultINS0_8append_tINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_13static_bufferILm1536EEELb0EEENS3_13composed_workIFvSC_EEENS4_INS7_7read_opISD_SF_Lb0ENS7_14parser_is_doneEEESJ_NS5_9websocket6streamISD_Lb1EE12handshake_opINS5_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJSW_EEEJSV_EEEJFvvEEE12init_wrapperINS3_31initiate_dispatch_with_executorISC_EEEclISY_JNS3_19empty_work_functionEEEEvOT_St5tupleIJSV_EEDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(536) %18, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ah unwind label %.body.i, !inline_history !8574

.body.i:                                          ; preds = %bb.ag
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #35, !inline_history !8573
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #35, !inline_history !8572
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @_ZN5boost4asio8append_tINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS2_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SE_Lb0ENS6_14parser_is_doneEEESI_NS4_9websocket6streamISC_Lb1EE12handshake_opINS4_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJSV_EEEJSU_EED2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %18) #35
  br label %bb.al

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #35, !inline_history !8573
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #35, !inline_history !8572
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE12handshake_opINS0_4test7handlerEEE, i64 16), ptr %i.ek, align 8, !tbaa !296
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !428 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ad, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = atomicrmw add ptr %i.ev, i32 -1 acq_rel, align 4
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.aj, label %bb.ad

bb.aj:                                            ; preds = %bb.ai
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !296
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #35, !inline_history !8575
  br label %bb.ad

bb.ak:                                            ; preds = %_ZN5boost4asio33get_associated_immediate_executorINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS2_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SE_Lb0ENS6_14parser_is_doneEEESI_NS4_9websocket6streamISC_Lb1EE12handshake_opINS4_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJSV_EEESB_EEDTclsr29associated_immediate_executorIT_T0_EE3getfp_fp0_EERKSY_RKSZ_NS0_10constraintIXoosr11is_executorISZ_EE5valuesr9execution11is_executorISZ_EE5valueEiE4typeE.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.body.i, %bb.ak
  %.pn22 = phi { ptr, i32 } [ %i.et, %.body.i ], [ %i.fb, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit53

.noexc51:                                         ; preds = %bb.a, %_ZNK5boost6system10error_codecvbEv.exit38
  %.sroa.17.4 = phi i8 [ %.sroa.17.3, %_ZNK5boost6system10error_codecvbEv.exit38 ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !8579
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !1948 ; 2 uses
  %.not.i = icmp eq i32 %i.fg, -1
  br i1 %.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.noexc51
  %i.fh = add nuw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 8, !tbaa !1948
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.noexc51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.fe, align 8, !tbaa !1307
  store ptr %.sroa.0.0.copyload.i.i, ptr %4, align 8
  invoke void @_ZN5boost4asio17cancellation_slot5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc54 unwind label %bb.ap, !inline_history !8576

.noexc54:                                         ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_ZN5boost5beast4http6detail7read_opINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_13static_bufferILm1536EEELb0ENS2_14parser_is_doneEEclINS4_6detail11composed_opISD_NSF_13composed_workIFvS8_EEENS0_9websocket6streamIS9_Lb1EE12handshake_opINS0_4test7handlerEEEJFvNS_6system10error_codeEmEEEEEEvRT_SS_m(ptr noundef nonnull align 8 dereferenceable(40) %i.fi, ptr noundef nonnull align 8 dereferenceable(388) %i.fe, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %5, i64 noundef %i.fd)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc54
  %i.fj = trunc nuw i8 %.sroa.17.4 to i1
  br i1 %i.fj, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split

_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split: ; preds = %bb.ao, %bb.a
  store i32 -1, ptr %0, align 8, !tbaa !677
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

_ZN5boost4asio6detail13coroutine_refD2Ev.exit:    ; preds = %bb.o, %bb.ad, %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split, %bb.ao
  ret void

bb.ap:                                            ; preds = %bb.an, %.noexc54
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = trunc nuw i8 %.sroa.17.4 to i1
  br i1 %i.fl, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit53, label %bb.aq

bb.aq:                                            ; preds = %.thread118, %.thread114, %bb.ap
  %.pn25117 = phi { ptr, i32 } [ %i.ba, %.thread114 ], [ %i.fk, %bb.ap ], [ %i.dy, %.thread118 ]
  store i32 -1, ptr %0, align 8, !tbaa !677
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit53

_ZN5boost4asio6detail13coroutine_refD2Ev.exit53:  ; preds = %.body, %bb.al, %bb.ap, %bb.aq
  %.pn25113 = phi { ptr, i32 } [ %.pn25117, %bb.aq ], [ %i.fk, %bb.ap ], [ %eh.lpad-body, %.body ], [ %.pn22, %bb.al ]
  resume { ptr, i32 } %.pn25113
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !762
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !782
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !762
  %i.h = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.e, i64 %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil = phi ptr [ %i.l, %.lr.ph.i.i.i.epil ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.epil = phi i64 [ %i.k, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !762
  %i.k = add i64 %i.j, %.068.i.i.i.epil           ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !8584

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
  %i.o = load i64, ptr %i.n, align 8, !tbaa !762  ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.sroa.6.015.i.i.i, i64 %i.o) ; 3 uses
  %.not.i.i4.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i4.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i29
  %i.q = load ptr, ptr %.01017.i.i.i, align 8, !tbaa !782
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.011.016.i.i.i, ptr align 1 %i.q, i64 %i.p, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i29
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i.i, i64 %i.p
  %i.s = sub nuw nsw i64 %.sroa.6.015.i.i.i, %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01017.i.i.i, i64 16 ; 2 uses
  %i.u = icmp ne i64 %i.s, 0
  %i.v = icmp ne ptr %i.t, %.0.i.i
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i.i29, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, !llvm.loop !53

_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i
  %i.x = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.h

bb.e:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb1EEEvEEmRKT_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !8587
  %i.aa = icmp ugt i64 %i.k, %i.z
  br i1 %i.aa, label %bb.f, label %.lr.ph.preheader.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #40, !noalias !8588
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !401 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !401
  %.not.i.i.i.i30 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i30, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #38
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.f
  store i64 %i.k, ptr %i.y, align 8, !tbaa !8587
  %.pre = load i64, ptr %i.b, align 8, !tbaa !762
  %i.ae = icmp eq i64 %.pre, 0
  %i.af = select i1 %i.ae, i64 16, i64 32
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %.not.i.i.i31 = phi i64 [ 32, %bb.e ], [ %i.af, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !401
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.not.i.i.i31
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.preheader.i.i
  %.01017.i.i = phi ptr [ %i.ao, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.011.016.i.i = phi ptr [ %i.am, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.ah, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi i64 [ %i.an, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ], [ %i.k, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01017.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !762 ; 2 uses
  %i.ak = tail call i64 @llvm.umin.i64(i64 %.sroa.6.015.i.i, i64 %i.aj) ; 3 uses
  %.not.i.i4.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i4.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.al = load ptr, ptr %.01017.i.i, align 8, !tbaa !782
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.011.016.i.i, ptr align 1 %i.al, i64 %i.ak, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i, i64 %i.ak
  %i.an = sub nuw i64 %.sroa.6.015.i.i, %i.ak     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01017.i.i, i64 16 ; 2 uses
  %i.ap = icmp ne i64 %i.an, 0
  %i.aq = icmp ne ptr %i.ao, %.0.i.i.i
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit, !llvm.loop !53

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !401
  %i.at = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.as, i64 %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit, %bb.b
  %.1 = phi i64 [ %i.at, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail12buffers_pairILb1EEEEEmRKT_RKT0_.exit ], [ %i.h, %bb.b ], [ %i.x, %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail12buffers_pairILb1EEEEEmmRKT_RNS_6system10error_codeE.exit ]
  ret i64 %.1
}

declare void @_ZN5boost5beast4http12basic_parserILb0EE7put_eofERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio8append_tINS0_6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS2_13composed_workIFvSB_EEENS3_INS6_7read_opISC_SE_Lb0ENS6_14parser_is_doneEEESI_NS4_9websocket6streamISC_Lb1EE12handshake_opINS4_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJSV_EEEJSU_EED2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9websocket6streamINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb1EE12handshake_opINS0_4test7handlerEEE, i64 16), ptr %i.a, align 8, !tbaa !296
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !428  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SD_Lb0ENS5_14parser_is_doneEEESH_NS3_9websocket6streamISB_Lb1EE12handshake_opINS3_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = atomicrmw add ptr %i.d, i32 -1 acq_rel, align 4
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SD_Lb0ENS5_14parser_is_doneEEESH_NS3_9websocket6streamISB_Lb1EE12handshake_opINS3_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !296
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #35, !inline_history !195
  br label %_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SD_Lb0ENS5_14parser_is_doneEEESH_NS3_9websocket6streamISB_Lb1EE12handshake_opINS3_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJEED2Ev.exit

_ZN5boost4asio6detail11composed_opINS_5beast4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSA_EEENS2_INS5_7read_opISB_SD_Lb0ENS5_14parser_is_doneEEESH_NS3_9websocket6streamISB_Lb1EE12handshake_opINS3_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN5boost5beast17stable_async_baseINS0_4test7handlerENS_4asio15any_io_executorESaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(280) %i.a) #35, !inline_history !1614
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.j) #35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.k) #35
  ret void
}

declare noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80), ptr, i64, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail28reactive_socket_service_base13async_receiveINS_5beast6detail12buffers_pairILb1EEENS1_11composed_opINS4_4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS4_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSF_EEENS8_INSA_7read_opISG_SI_Lb0ENSA_14parser_is_doneEEESM_NS4_9websocket6streamISG_Lb1EE12handshake_opINS4_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJSZ_EEESF_EEvRNS2_24base_implementation_typeERKT_iRT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(508) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::asio::cancellation_slot::auto_delete_helper", align 8 ; 5 uses
  %7 = alloca %"class.boost::asio::cancellation_slot", align 8 ; 6 uses
  %8 = alloca %"struct.boost::asio::detail::reactive_socket_recv_op<boost::beast::detail::buffers_pair<true>, boost::asio::detail::composed_op<boost::beast::http::detail::read_some_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::static_buffer<1536>, false>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::beast::http::detail::read_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::beast::static_buffer<1536>, false, boost::beast::http::detail::parser_is_done>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::beast::websocket::stream<boost::asio::basic_stream_socket<boost::asio::ip::tcp>>::handshake_op<boost::beast::test::handler>, void (boost::system::error_code, unsigned long)>, void (boost::system::error_code, unsigned long)>, boost::asio::any_io_executor>::ptr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 504
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1962
  %i.c = icmp ugt i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 496
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ugt i32 %i.e, 1
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.h = load ptr, ptr %4, align 8, !tbaa !1295   ; 2 uses
  store ptr %i.h, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  store ptr %4, ptr %8, align 8, !tbaa !1966
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.j = tail call noundef ptr @_ZN5boost4asio6detail14thread_context24top_of_thread_call_stackEv()
  %i.k = tail call noundef ptr @_ZN5boost4asio6detail16thread_info_base8allocateINS2_11default_tagEEEPvT_PS2_mm(ptr noundef %i.j, i64 noundef 744, i64 noundef 8) ; 15 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !1967
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr null, ptr %i.l, align 8, !tbaa !1968
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %1, align 8, !tbaa !1609
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !1644
  store ptr null, ptr %i.k, align 8, !tbaa !653
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_ZN5boost4asio6detail23reactive_socket_recv_opINS_5beast6detail12buffers_pairILb1EEENS1_11composed_opINS3_4http6detail12read_some_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS3_13static_bufferILm1536EEELb0EEENS1_13composed_workIFvSE_EEENS7_INS9_7read_opISF_SH_Lb0ENS9_14parser_is_doneEEESL_NS3_9websocket6streamISF_Lb1EE12handshake_opINS3_4test7handlerEEEJFvNS_6system10error_codeEmEEEEJSY_EEESE_E11do_completeEPvPNS1_19scheduler_operationERKSX_m, ptr %i.q, align 8, !tbaa !655
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !669
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !423
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 64
end_hunk_1
