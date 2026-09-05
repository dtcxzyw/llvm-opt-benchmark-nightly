Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/http_examples?download=true
inline.NumInlined: 11863
inline.NumDeleted: 3773
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5boost5beast4http6detail9read_someINS0_4test12basic_streamINS_4asio15any_io_executorEEENS0_18basic_multi_bufferISaIcEEELb0EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeE:bb.a
  store i64 %i.fj, ptr %i.a, align 8, !tbaa !957
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit

bb.aq:                                            ; preds = %.peel.next.i
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !304 ; 4 uses
  store ptr %i.fk, ptr %i.cw, align 8, !tbaa !967
  %i.fl = sub nuw i64 %.020.i, %i.fg              ; 2 uses
  %i.fm = add i64 %i.fg, %i.fd                    ; 2 uses
  %.not14.i = icmp eq ptr %i.fk, %i.ew
  br i1 %.not14.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !103

._crit_edge.i:                                    ; preds = %bb.aq, %bb.ao, %bb.ap
  %i.fn = phi i64 [ %.pre31.i, %bb.ao ], [ %i.fc, %bb.ap ], [ %i.fm, %bb.aq ]
  %i.fo = phi i64 [ %.pre.i, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.ep, %bb.ao ], [ %i.fb, %bb.ap ], [ %i.fl, %bb.aq ]
  %.lcssa.i = phi ptr [ %i.et, %bb.ao ], [ %i.fa, %bb.ap ], [ %i.fk, %bb.aq ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !964
  %i.fr = sub i64 %i.fq, %i.fo
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.fr, i64 %.0.lcssa.i) ; 2 uses
  %i.fs = add i64 %.sroa.speculated.i, %i.fo      ; 2 uses
  store i64 %i.fs, ptr %.phi.trans.insert.i, align 8, !tbaa !968
  %i.ft = add i64 %.sroa.speculated.i, %i.fn
  store i64 %i.ft, ptr %i.a, align 8, !tbaa !957
  %i.fu = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !950
  %i.fw = icmp eq i64 %i.fs, %i.fv
  br i1 %i.fw, label %bb.ar, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit

bb.ar:                                            ; preds = %._crit_edge.i
  %i.fx = load ptr, ptr %.lcssa.i, align 8, !tbaa !304
  store ptr %i.fx, ptr %i.cw, align 8, !tbaa !967
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit

_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread85, %bb.an, %.thread.i, %._crit_edge.i, %bb.ar
  %i.fy = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.as  ; 4 uses

.noexc.i:                                         ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !144, !noalias !3810
  %i.gb = and i64 %i.ga, -2
  %switch.i.i.i.i = icmp eq i64 %i.gb, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.as:                                            ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #37
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !137, !noalias !3810
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !3810
  %i.gh = call noundef zeroext i1 %i.gg(ptr noundef nonnull align 8 dereferenceable(52) %i.fy, i32 noundef 2) #35, !noalias !3810, !inline_history !29 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.noexc.i
  %i.gi = load i64, ptr %i.eo, align 8, !tbaa !146 ; 5 uses
  %i.gj = icmp eq i64 %i.gi, 1
  %i.gk = load i32, ptr %3, align 8, !tbaa !134
  %.fr = freeze i32 %i.gk                         ; 2 uses
  br i1 %i.gj, label %_ZNK5boost6system10error_codecvbEv.exit63, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.gl = icmp eq i32 %.fr, 2
  br i1 %i.gl, label %bb.at, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.at:                                            ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %cond = icmp eq i64 %i.gi, 0
  br i1 %cond, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !134
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.at, %bb.au
  %.0.i18.i = phi ptr [ %i.gn, %bb.au ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.at ] ; 2 uses
  %i.go = load i64, ptr %i.fz, align 8, !tbaa !144 ; 2 uses
  %i.gp = icmp eq i64 %i.go, 0
  %i.gq = icmp eq ptr %.0.i18.i, %i.fy
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = icmp eq i64 %i.gs, %i.go
  %i.gu = select i1 %i.gp, i1 %i.gq, i1 %i.gt
  br i1 %i.gu, label %bb.av, label %.thread

bb.av:                                            ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !848
  %.not111 = icmp eq i32 %i.gw, 0
  br i1 %.not111, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %cond190 = icmp eq i64 %i.gi, 0
  br i1 %cond190, label %_ZNK5boost6system10error_code8categoryEv.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !134
  br label %_ZNK5boost6system10error_code8categoryEv.exit

_ZNK5boost6system10error_code8categoryEv.exit:    ; preds = %bb.aw, %bb.ax
  %.0.i48 = phi ptr [ %i.gy, %bb.ax ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.aw ] ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i48, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !144
  %i.hb = and i64 %i.ha, -2
  %switch.i.i.i49 = icmp eq i64 %i.hb, -5572340897628102704
  br i1 %switch.i.i.i49, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit
  %i.hc = load ptr, ptr %.0.i48, align 8, !tbaa !137
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = call noundef zeroext i1 %i.he(ptr noundef nonnull align 8 dereferenceable(52) %.0.i48, i32 noundef 0) #35, !inline_history !30
  %spec.select = select i1 %i.hf, i64 3, i64 2
  br label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread: ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit, %_ZNK5boost6system10error_code8categoryEv.exit
  %i.hg = phi i64 [ 2, %_ZNK5boost6system10error_code8categoryEv.exit ], [ %spec.select, %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit ]
  store i32 0, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i51, align 4
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i48, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !134
  store i64 %i.hg, ptr %i.eo, align 8, !tbaa !131
  call void @_ZN5boost5beast4http12basic_parserILb0EE7put_eofERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %.thread101

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit55 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #37
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit55: ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !533
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !131 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %switch.i.i58 = icmp ult i64 %.sroa.5.0.copyload, 2
  %i.hj = and i64 %.sroa.5.0.copyload, 1
  %i.hk = or disjoint i64 %i.hj, ptrtoint (ptr @_ZZN5boost5beast4http6detail9read_someINS0_4test12basic_streamINS_4asio15any_io_executorEEENS0_18basic_multi_bufferISaIcEEELb0EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeEE7loc_bb__0 to i64)
  %.sroa.5.0.i59 = select i1 %switch.i.i58, i64 %.sroa.5.0.copyload, i64 %i.hk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i64 %.sroa.5.0.i59, ptr %i.eo, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %_ZNK5boost6system10error_codecvbEv.exit63.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %i.hl = and i64 %i.gi, 1
  %.not.i.i61 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i61, label %thread-pre-split, label %_ZNK5boost6system10error_codecvbEv.exit63.thread

.thread:                                          ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.hm = and i64 %i.gi, 1
  %.not.i.i6190 = icmp eq i64 %i.hm, 0
  br i1 %.not.i.i6190, label %thread-pre-split, label %_ZNK5boost6system10error_codecvbEv.exit63.thread

_ZNK5boost6system10error_codecvbEv.exit63:        ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %.not112 = icmp eq i32 %.fr, 0
  br i1 %.not112, label %thread-pre-split, label %_ZNK5boost6system10error_codecvbEv.exit63.thread

.thread101:                                       ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, %_ZNK5boost6system10error_codecvbEv.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZNK5boost6system10error_codecvbEv.exit63.thread: ; preds = %_ZNK5boost6system10error_codecvbEv.exit63, %.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZNK5boost6system10error_code5valueEv.exit17.i.i, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.thread101, %.thread98, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, %_ZNK5boost6system10error_codecvbEv.exit63.thread
  %.5 = phi i64 [ %.140, %.thread101 ], [ %i.bi, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit ], [ %.140, %_ZNK5boost6system10error_codecvbEv.exit63.thread ], [ %.140, %.thread98 ], [ %i.bi, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ], [ %i.bi, %_ZNK5boost6system10error_code5valueEv.exit17.i.i ], [ %i.bi, %_ZNK5boost6system10error_code8categoryEv.exit20.i.i ]
  ret i64 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.25.i = alloca ptr, align 8               ; 4 uses
  %.sroa.25.i.i = alloca ptr, align 8             ; 4 uses
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !963, !noalias !3835 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !963, !noalias !3836 ; 6 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %3, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !304, !noalias !3837
  %i.h = icmp eq ptr %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !305  ; 3 uses
  br i1 %i.h, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit, label %.lr.ph.i.i.i

3:                                                ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.k

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit: ; preds = %.preheader.preheader
  %i.k = icmp eq ptr %i.c, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.in.i = select i1 %i.k, ptr %i.l, ptr %i.m
  %.sroa.6.0.i = load i64, ptr %.sroa.6.0.in.i, align 8, !tbaa !131 ; 2 uses
  %.sroa.06.0.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !965
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.sroa.6.0.i) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 %..i.i
  %i.q = sub i64 %.sroa.6.0.i, %..i.i
  %i.r = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.p, i64 %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

.lr.ph.i.i.i:                                     ; preds = %.preheader.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i, %.lr.ph.i.i.i
  %.sroa.5.010.i.i.i = phi ptr [ %.sroa.5.0.i.i.i, %.lr.ph.split.i.i.i ], [ %i.c, %.lr.ph.i.i.i ] ; 4 uses
  %.09.i.i.i = phi i64 [ %i.z, %.lr.ph.split.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.v = icmp eq ptr %.sroa.5.010.i.i.i, %i.j
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.5.010.i.i.i, i64 16
  %.sroa.6.0.in.i.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.w
  %.sroa.6.0.i.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i.i, align 8, !tbaa !131 ; 2 uses
  %i.x = icmp eq ptr %.sroa.5.010.i.i.i, %i.c
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i, i64 %i.u)
  %.sroa.6.1.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %.sroa.6.0.i.i.i.i
  %i.z = add i64 %.sroa.6.1.i.i.i.i, %.09.i.i.i   ; 8 uses
  %.sroa.5.0.i.i.i = load ptr, ptr %.sroa.5.010.i.i.i, align 8, !tbaa !849 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.5.0.i.i.i, %i.e
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !104

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit: ; preds = %.lr.ph.split.i.i.i
  %i.aa = icmp ult i64 %i.z, 8193
  br i1 %i.aa, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i.i)
  store ptr %i.c, ptr %.sroa.25.i.i, align 8, !tbaa !945, !alias.scope !3838
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %bb.b
  %.sroa.5.022.in.i.i.i = phi ptr [ %.sroa.25.i.i, %bb.b ], [ %.sroa.5.022.i.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ]
  %.sroa.09.020.i.i.i = phi ptr [ %i.a, %bb.b ], [ %i.ag, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ] ; 2 uses
  %.sroa.6.019.i.i.i = phi i64 [ 8192, %bb.b ], [ %i.ah, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ] ; 2 uses
  %.sroa.5.022.i.i.i = load ptr, ptr %.sroa.5.022.in.i.i.i, align 8, !tbaa !849 ; 6 uses
  %.not.i.i20 = icmp eq ptr %.sroa.5.022.i.i.i, %i.e
  br i1 %.not.i.i20, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i: ; preds = %bb.c
  %i.ab = icmp eq ptr %.sroa.5.022.i.i.i, %i.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i.i, i64 16
  %.sroa.6.0.in.i.i.i.i21 = select i1 %i.ab, ptr %i.s, ptr %i.ac
  %.sroa.6.0.i.i.i.i22 = load i64, ptr %.sroa.6.0.in.i.i.i.i21, align 8, !tbaa !131 ; 3 uses
  %i.ad = icmp eq ptr %.sroa.5.022.i.i.i, %i.c
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %.sroa.6.0.i.i.i.i22)
  %i.ae = select i1 %i.ad, i64 %..i.i.i.i.i, i64 0 ; 3 uses
  %.sroa.6.1.i.i.i.i23 = sub i64 %.sroa.6.0.i.i.i.i22, %i.ae
  %i.af = tail call i64 @llvm.umin.i64(i64 %.sroa.6.019.i.i.i, i64 %.sroa.6.1.i.i.i.i23) ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.6.0.i.i.i.i22, %i.ae
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i
  %.sroa.06.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i.i, i64 24
  %.sroa.06.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.09.020.i.i.i, ptr nonnull align 1 %.sroa.06.1.i.i.i.i, i64 %i.af, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.d, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.020.i.i.i, i64 %i.af
  %i.ah = sub nuw nsw i64 %.sroa.6.019.i.i.i, %i.af ; 2 uses
  %.not.i.i.i24 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i24, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, label %bb.c, !llvm.loop !105

_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit: ; preds = %bb.c, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.i)
  %i.ai = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.k

bb.e:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !3839
  %i.al = icmp ugt i64 %i.z, %i.ak
  br i1 %i.al, label %bb.f, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.e
  %i.am = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #40, !noalias !3840
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !326 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !326
  %.not.i.i.i.i25 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i25, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #38
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.f
  store i64 %i.z, ptr %i.aj, align 8, !tbaa !3839
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !963, !noalias !3841
  %.pre52 = load ptr, ptr %i.d, align 8, !tbaa !963, !noalias !3842
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.ap = phi ptr [ %i.e, %bb.e ], [ %.pre52, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.aq = phi ptr [ %i.c, %bb.e ], [ %.pre, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3844)
  store ptr %i.aq, ptr %.sroa.25.i, align 8, !tbaa !945, !alias.scope !3841
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.i.i
  %.sroa.5.022.in.i.i = phi ptr [ %.sroa.25.i, %.lr.ph.i.i ], [ %.sroa.5.022.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %.sroa.09.020.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.be, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %i.bf, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.5.022.i.i = load ptr, ptr %.sroa.5.022.in.i.i, align 8, !tbaa !849 ; 6 uses
  %.not.i28 = icmp eq ptr %.sroa.5.022.i.i, %i.ap
  br i1 %.not.i28, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !963
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !305
  %i.aw = icmp eq ptr %.sroa.5.022.i.i, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i, i64 16
  %.sroa.6.0.in.i.i.i = select i1 %i.aw, ptr %i.s, ptr %i.ax
  %.sroa.6.0.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i, align 8, !tbaa !131 ; 3 uses
  %.sroa.06.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !963
  %i.az = icmp eq ptr %.sroa.5.022.i.i, %i.ay
  br i1 %i.az, label %bb.i, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !965
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %.sroa.6.0.i.i.i) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 %..i.i.i.i
  %i.bc = sub i64 %.sroa.6.0.i.i.i, %..i.i.i.i
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.06.1.i.i.i = phi ptr [ %i.bb, %bb.i ], [ %.sroa.06.0.i.i.i, %bb.h ]
  %.sroa.6.1.i.i.i = phi i64 [ %i.bc, %bb.i ], [ %.sroa.6.0.i.i.i, %bb.h ] ; 2 uses
  %i.bd = tail call i64 @llvm.umin.i64(i64 %.sroa.6.019.i.i, i64 %.sroa.6.1.i.i.i) ; 3 uses
  %.not.i.i.i29 = icmp eq i64 %.sroa.6.1.i.i.i, 0
  br i1 %.not.i.i.i29, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.09.020.i.i, ptr nonnull align 1 %.sroa.06.1.i.i.i, i64 %i.bd, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.j, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.09.020.i.i, i64 %i.bd
  %i.bf = sub nuw i64 %.sroa.6.019.i.i, %i.bd     ; 2 uses
  %.not.i.i30 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i30, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit, label %bb.g, !llvm.loop !105

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit: ; preds = %bb.g, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i)
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !326
  %i.bh = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.bg, i64 %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit, %3
  %.1 = phi i64 [ 0, %3 ], [ %i.r, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit ], [ %i.ai, %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit ], [ %i.bh, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferISaIcEE7consumeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  %i.c = icmp eq ptr %i.b, %i.a
  %i.d = or i1 %.not.i.i, %i.c
  br i1 %i.d, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !967
  %.not2228 = icmp eq ptr %i.b, %i.f
  br i1 %.not2228, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.i = phi ptr [ %i.b, %.lr.ph ], [ %i.aa, %bb.c ] ; 4 uses
  %.01429 = phi i64 [ %1, %.lr.ph ], [ %i.r, %bb.c ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5boost5beast4http6detail9read_someINS0_4test12basic_streamINS_4asio15any_io_executorEEENS0_18basic_multi_bufferISaIcEEELb1EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeE:bb.a
  store i64 %i.fj, ptr %i.a, align 8, !tbaa !957
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit

bb.aq:                                            ; preds = %.peel.next.i
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !304 ; 4 uses
  store ptr %i.fk, ptr %i.cw, align 8, !tbaa !967
  %i.fl = sub nuw i64 %.020.i, %i.fg              ; 2 uses
  %i.fm = add i64 %i.fg, %i.fd                    ; 2 uses
  %.not14.i = icmp eq ptr %i.fk, %i.ew
  br i1 %.not14.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !103

._crit_edge.i:                                    ; preds = %bb.aq, %bb.ao, %bb.ap
  %i.fn = phi i64 [ %.pre31.i, %bb.ao ], [ %i.fc, %bb.ap ], [ %i.fm, %bb.aq ]
  %i.fo = phi i64 [ %.pre.i, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.ep, %bb.ao ], [ %i.fb, %bb.ap ], [ %i.fl, %bb.aq ]
  %.lcssa.i = phi ptr [ %i.et, %bb.ao ], [ %i.fa, %bb.ap ], [ %i.fk, %bb.aq ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !964
  %i.fr = sub i64 %i.fq, %i.fo
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.fr, i64 %.0.lcssa.i) ; 2 uses
  %i.fs = add i64 %.sroa.speculated.i, %i.fo      ; 2 uses
  store i64 %i.fs, ptr %.phi.trans.insert.i, align 8, !tbaa !968
  %i.ft = add i64 %.sroa.speculated.i, %i.fn
  store i64 %i.ft, ptr %i.a, align 8, !tbaa !957
  %i.fu = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !950
  %i.fw = icmp eq i64 %i.fs, %i.fv
  br i1 %i.fw, label %bb.ar, label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit

bb.ar:                                            ; preds = %._crit_edge.i
  %i.fx = load ptr, ptr %.lcssa.i, align 8, !tbaa !304
  store ptr %i.fx, ptr %i.cw, align 8, !tbaa !967
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit

_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread85, %bb.an, %.thread.i, %._crit_edge.i, %bb.ar
  %i.fy = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.as  ; 4 uses

.noexc.i:                                         ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !144, !noalias !4104
  %i.gb = and i64 %i.ga, -2
  %switch.i.i.i.i = icmp eq i64 %i.gb, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.as:                                            ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE6commitEm.exit
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #37
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !137, !noalias !4104
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !4104
  %i.gh = call noundef zeroext i1 %i.gg(ptr noundef nonnull align 8 dereferenceable(52) %i.fy, i32 noundef 2) #35, !noalias !4104, !inline_history !29 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.noexc.i
  %i.gi = load i64, ptr %i.eo, align 8, !tbaa !146 ; 5 uses
  %i.gj = icmp eq i64 %i.gi, 1
  %i.gk = load i32, ptr %3, align 8, !tbaa !134
  %.fr = freeze i32 %i.gk                         ; 2 uses
  br i1 %i.gj, label %_ZNK5boost6system10error_codecvbEv.exit63, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.gl = icmp eq i32 %.fr, 2
  br i1 %i.gl, label %bb.at, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.at:                                            ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %cond = icmp eq i64 %i.gi, 0
  br i1 %cond, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !134
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.at, %bb.au
  %.0.i18.i = phi ptr [ %i.gn, %bb.au ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.at ] ; 2 uses
  %i.go = load i64, ptr %i.fz, align 8, !tbaa !144 ; 2 uses
  %i.gp = icmp eq i64 %i.go, 0
  %i.gq = icmp eq ptr %.0.i18.i, %i.fy
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = icmp eq i64 %i.gs, %i.go
  %i.gu = select i1 %i.gp, i1 %i.gq, i1 %i.gt
  br i1 %i.gu, label %bb.av, label %.thread

bb.av:                                            ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !509
  %.not111 = icmp eq i32 %i.gw, 0
  br i1 %.not111, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %cond190 = icmp eq i64 %i.gi, 0
  br i1 %cond190, label %_ZNK5boost6system10error_code8categoryEv.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !134
  br label %_ZNK5boost6system10error_code8categoryEv.exit

_ZNK5boost6system10error_code8categoryEv.exit:    ; preds = %bb.aw, %bb.ax
  %.0.i48 = phi ptr [ %i.gy, %bb.ax ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.aw ] ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i48, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !144
  %i.hb = and i64 %i.ha, -2
  %switch.i.i.i49 = icmp eq i64 %i.hb, -5572340897628102704
  br i1 %switch.i.i.i49, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit
  %i.hc = load ptr, ptr %.0.i48, align 8, !tbaa !137
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = call noundef zeroext i1 %i.he(ptr noundef nonnull align 8 dereferenceable(52) %.0.i48, i32 noundef 0) #35, !inline_history !30
  %spec.select = select i1 %i.hf, i64 3, i64 2
  br label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread: ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit, %_ZNK5boost6system10error_code8categoryEv.exit
  %i.hg = phi i64 [ 2, %_ZNK5boost6system10error_code8categoryEv.exit ], [ %spec.select, %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit ]
  store i32 0, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i51, align 4
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i48, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !134
  store i64 %i.hg, ptr %i.eo, align 8, !tbaa !131
  call void @_ZN5boost5beast4http12basic_parserILb1EE7put_eofERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %.thread101

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit55 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #37
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit55: ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !533
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !131 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %switch.i.i58 = icmp ult i64 %.sroa.5.0.copyload, 2
  %i.hj = and i64 %.sroa.5.0.copyload, 1
  %i.hk = or disjoint i64 %i.hj, ptrtoint (ptr @_ZZN5boost5beast4http6detail9read_someINS0_4test12basic_streamINS_4asio15any_io_executorEEENS0_18basic_multi_bufferISaIcEEELb1EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeEE7loc_bb__0 to i64)
  %.sroa.5.0.i59 = select i1 %switch.i.i58, i64 %.sroa.5.0.copyload, i64 %i.hk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i64 %.sroa.5.0.i59, ptr %i.eo, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %_ZNK5boost6system10error_codecvbEv.exit63.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %i.hl = and i64 %i.gi, 1
  %.not.i.i61 = icmp eq i64 %i.hl, 0
  br i1 %.not.i.i61, label %thread-pre-split, label %_ZNK5boost6system10error_codecvbEv.exit63.thread

.thread:                                          ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.hm = and i64 %i.gi, 1
  %.not.i.i6190 = icmp eq i64 %i.hm, 0
  br i1 %.not.i.i6190, label %thread-pre-split, label %_ZNK5boost6system10error_codecvbEv.exit63.thread

_ZNK5boost6system10error_codecvbEv.exit63:        ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %.not112 = icmp eq i32 %.fr, 0
  br i1 %.not112, label %thread-pre-split, label %_ZNK5boost6system10error_codecvbEv.exit63.thread

.thread101:                                       ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, %_ZNK5boost6system10error_codecvbEv.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZNK5boost6system10error_codecvbEv.exit63.thread: ; preds = %_ZNK5boost6system10error_codecvbEv.exit63, %.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZNK5boost6system10error_code5valueEv.exit17.i.i, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.thread101, %.thread98, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, %_ZNK5boost6system10error_codecvbEv.exit63.thread
  %.5 = phi i64 [ %.140, %.thread101 ], [ %i.bi, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit ], [ %.140, %_ZNK5boost6system10error_codecvbEv.exit63.thread ], [ %.140, %.thread98 ], [ %i.bi, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ], [ %i.bi, %_ZNK5boost6system10error_code5valueEv.exit17.i.i ], [ %i.bi, %_ZNK5boost6system10error_code8categoryEv.exit20.i.i ]
  ret i64 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.25.i = alloca ptr, align 8               ; 4 uses
  %.sroa.25.i.i = alloca ptr, align 8             ; 4 uses
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !963, !noalias !4129 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !963, !noalias !4130 ; 6 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %3, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !304, !noalias !4131
  %i.h = icmp eq ptr %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !305  ; 3 uses
  br i1 %i.h, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit, label %.lr.ph.i.i.i

3:                                                ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.k

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit: ; preds = %.preheader.preheader
  %i.k = icmp eq ptr %i.c, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.in.i = select i1 %i.k, ptr %i.l, ptr %i.m
  %.sroa.6.0.i = load i64, ptr %.sroa.6.0.in.i, align 8, !tbaa !131 ; 2 uses
  %.sroa.06.0.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !965
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.sroa.6.0.i) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 %..i.i
  %i.q = sub i64 %.sroa.6.0.i, %..i.i
  %i.r = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.p, i64 %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

.lr.ph.i.i.i:                                     ; preds = %.preheader.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i, %.lr.ph.i.i.i
  %.sroa.5.010.i.i.i = phi ptr [ %.sroa.5.0.i.i.i, %.lr.ph.split.i.i.i ], [ %i.c, %.lr.ph.i.i.i ] ; 4 uses
  %.09.i.i.i = phi i64 [ %i.z, %.lr.ph.split.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.v = icmp eq ptr %.sroa.5.010.i.i.i, %i.j
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.5.010.i.i.i, i64 16
  %.sroa.6.0.in.i.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.w
  %.sroa.6.0.i.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i.i, align 8, !tbaa !131 ; 2 uses
  %i.x = icmp eq ptr %.sroa.5.010.i.i.i, %i.c
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i, i64 %i.u)
  %.sroa.6.1.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %.sroa.6.0.i.i.i.i
  %i.z = add i64 %.sroa.6.1.i.i.i.i, %.09.i.i.i   ; 8 uses
  %.sroa.5.0.i.i.i = load ptr, ptr %.sroa.5.010.i.i.i, align 8, !tbaa !849 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.5.0.i.i.i, %i.e
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !104

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit: ; preds = %.lr.ph.split.i.i.i
  %i.aa = icmp ult i64 %i.z, 8193
  br i1 %i.aa, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i.i)
  store ptr %i.c, ptr %.sroa.25.i.i, align 8, !tbaa !945, !alias.scope !4132
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, %bb.b
  %.sroa.5.022.in.i.i.i = phi ptr [ %.sroa.25.i.i, %bb.b ], [ %.sroa.5.022.i.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ]
  %.sroa.09.020.i.i.i = phi ptr [ %i.a, %bb.b ], [ %i.ag, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ] ; 2 uses
  %.sroa.6.019.i.i.i = phi i64 [ 8192, %bb.b ], [ %i.ah, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i ] ; 2 uses
  %.sroa.5.022.i.i.i = load ptr, ptr %.sroa.5.022.in.i.i.i, align 8, !tbaa !849 ; 6 uses
  %.not.i.i20 = icmp eq ptr %.sroa.5.022.i.i.i, %i.e
  br i1 %.not.i.i20, label %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i: ; preds = %bb.c
  %i.ab = icmp eq ptr %.sroa.5.022.i.i.i, %i.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i.i, i64 16
  %.sroa.6.0.in.i.i.i.i21 = select i1 %i.ab, ptr %i.s, ptr %i.ac
  %.sroa.6.0.i.i.i.i22 = load i64, ptr %.sroa.6.0.in.i.i.i.i21, align 8, !tbaa !131 ; 3 uses
  %i.ad = icmp eq ptr %.sroa.5.022.i.i.i, %i.c
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %.sroa.6.0.i.i.i.i22)
  %i.ae = select i1 %i.ad, i64 %..i.i.i.i.i, i64 0 ; 3 uses
  %.sroa.6.1.i.i.i.i23 = sub i64 %.sroa.6.0.i.i.i.i22, %i.ae
  %i.af = tail call i64 @llvm.umin.i64(i64 %.sroa.6.019.i.i.i, i64 %.sroa.6.1.i.i.i.i23) ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.6.0.i.i.i.i22, %i.ae
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i
  %.sroa.06.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i.i, i64 24
  %.sroa.06.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.09.020.i.i.i, ptr nonnull align 1 %.sroa.06.1.i.i.i.i, i64 %i.af, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i: ; preds = %bb.d, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.020.i.i.i, i64 %i.af
  %i.ah = sub nuw nsw i64 %.sroa.6.019.i.i.i, %i.af ; 2 uses
  %.not.i.i.i24 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i24, label %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, label %bb.c, !llvm.loop !105

_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit: ; preds = %bb.c, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.i)
  %i.ai = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.k

bb.e:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !4133
  %i.al = icmp ugt i64 %i.z, %i.ak
  br i1 %i.al, label %bb.f, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.e
  %i.am = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #40, !noalias !4134
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !326 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !326
  %.not.i.i.i.i25 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i25, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #38
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.f
  store i64 %i.z, ptr %i.aj, align 8, !tbaa !4133
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !963, !noalias !4135
  %.pre52 = load ptr, ptr %i.d, align 8, !tbaa !963, !noalias !4136
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.ap = phi ptr [ %i.e, %bb.e ], [ %.pre52, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.aq = phi ptr [ %i.c, %bb.e ], [ %.pre, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4138)
  store ptr %i.aq, ptr %.sroa.25.i, align 8, !tbaa !945, !alias.scope !4135
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.i.i
  %.sroa.5.022.in.i.i = phi ptr [ %.sroa.25.i, %.lr.ph.i.i ], [ %.sroa.5.022.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %.sroa.09.020.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.be, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %i.bf, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.5.022.i.i = load ptr, ptr %.sroa.5.022.in.i.i, align 8, !tbaa !849 ; 6 uses
  %.not.i28 = icmp eq ptr %.sroa.5.022.i.i, %i.ap
  br i1 %.not.i28, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !963
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !305
  %i.aw = icmp eq ptr %.sroa.5.022.i.i, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i, i64 16
  %.sroa.6.0.in.i.i.i = select i1 %i.aw, ptr %i.s, ptr %i.ax
  %.sroa.6.0.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i, align 8, !tbaa !131 ; 3 uses
  %.sroa.06.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !963
  %i.az = icmp eq ptr %.sroa.5.022.i.i, %i.ay
  br i1 %i.az, label %bb.i, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !965
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %.sroa.6.0.i.i.i) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 %..i.i.i.i
  %i.bc = sub i64 %.sroa.6.0.i.i.i, %..i.i.i.i
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.06.1.i.i.i = phi ptr [ %i.bb, %bb.i ], [ %.sroa.06.0.i.i.i, %bb.h ]
  %.sroa.6.1.i.i.i = phi i64 [ %i.bc, %bb.i ], [ %.sroa.6.0.i.i.i, %bb.h ] ; 2 uses
  %i.bd = tail call i64 @llvm.umin.i64(i64 %.sroa.6.019.i.i, i64 %.sroa.6.1.i.i.i) ; 3 uses
  %.not.i.i.i29 = icmp eq i64 %.sroa.6.1.i.i.i, 0
  br i1 %.not.i.i.i29, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.09.020.i.i, ptr nonnull align 1 %.sroa.06.1.i.i.i, i64 %i.bd, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.j, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.09.020.i.i, i64 %i.bd
  %i.bf = sub nuw i64 %.sroa.6.019.i.i, %i.bd     ; 2 uses
  %.not.i.i30 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i30, label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit, label %bb.g, !llvm.loop !105

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit: ; preds = %bb.g, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i)
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !326
  %i.bh = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.bg, i64 %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit, %3
  %.1 = phi i64 [ 0, %3 ], [ %i.r, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit ], [ %i.ai, %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmmRKT_RNS_6system10error_codeE.exit ], [ %i.bh, %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RKT0_.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http12read_istreamISaIcELb0ENS1_17basic_string_bodyIcSt11char_traitsIcES3_EEEEvRSiRNS0_17basic_flat_bufferIT_EERNS1_7messageIXT0_ET1_NS1_12basic_fieldsIS3_EEEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %5 = alloca %"class.boost::beast::http::parser.312", align 8 ; 24 uses
  %6 = alloca %"class.boost::beast::http::message.303", align 16 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @_ZN5boost5beast4http6parserILb0ENS1_17basic_string_bodyIcSt11char_traitsIcESaIcEEES6_EC2INS1_7messageILb0ES7_NS1_12basic_fieldsIS6_EEEEJEvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(280) %5, ptr noundef nonnull align 8 dereferenceable(120) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 72
  br label %bb.b

bb.b:                                             ; preds = %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !137
end_hunk_1
