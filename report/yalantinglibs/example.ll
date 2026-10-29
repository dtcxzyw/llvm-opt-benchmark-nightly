Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/example?download=true
inline.NumInlined: 58056
inline.NumDeleted: 19618
loop-unroll.NumCompletelyUnrolled: 81
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN7cinatra16coro_http_server6listenEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i116: ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.fg = add i64 %i.fd, %i.fc                    ; 3 uses
  %i.fh = load ptr, ptr %i.df, align 8, !tbaa !303 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.dl
  br i1 %i.fi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i122: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i116
  %i.fj = icmp ult i64 %i.fd, 16
  call void @llvm.assume(i1 %i.fj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i116
  %i.fk = load i64, ptr %i.dl, align 8, !tbaa !295
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i118: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i122
  %i.fl = phi i64 [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i122 ]
  %.not.i.i.i119 = icmp ugt i64 %i.fg, %i.fl
  br i1 %.not.i.i.i119, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i118
  %.not8.i.i.i120 = icmp eq i64 %i.fc, 0
  br i1 %.not8.i.i.i120, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fd ; 2 uses
  %cond.i.i.i121 = icmp eq i64 %i.fc, 1
  br i1 %cond.i.i.i121, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fn = load i8, ptr %i.fa, align 1, !tbaa !295
  store i8 %i.fn, ptr %i.fm, align 1, !tbaa !295
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr align 1 %i.fa, i64 %i.fc, i1 false)
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i118
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.df, i64 noundef %i.fd, i64 noundef 0, ptr noundef %i.fa, i64 noundef %i.fc)
          to label %bb.bd unwind label %bb.bl

bb.bd:                                            ; preds = %bb.bb, %bb.ba, %bb.ay, %bb.bc
  store i64 %i.fg, ptr %i.dg, align 8, !tbaa !304
  %i.fo = load ptr, ptr %i.df, align 8, !tbaa !303
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fg
  store i8 0, ptr %i.fp, align 1, !tbaa !295
  %i.fq = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %bb.be, label %_ZN7easylog6loggerILm0EE8instanceEv.exit129, !prof !274

bb.be:                                            ; preds = %bb.bd
  %i.fs = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  %.not.i126 = icmp eq i32 %i.fs, 0
  br i1 %.not.i126, label %_ZN7easylog6loggerILm0EE8instanceEv.exit129, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ft = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #45 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit129

bb.bh:                                            ; preds = %bb.bf
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %.body127

_ZN7easylog6loggerILm0EE8instanceEv.exit129:      ; preds = %bb.bg, %bb.be, %bb.bd
  %i.fv = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !518, !noundef !469
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit131, label %bb.bi, !prof !300

bb.bi:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit129
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %10)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit131 unwind label %bb.bl

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit131: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit129, %bb.bi
  %i.fx = load ptr, ptr %12, align 8, !tbaa !303  ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit131
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !295
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #45
  %i.gc = load ptr, ptr %i.df, align 8, !tbaa !303 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.dl
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ge = load i64, ptr %i.dl, align 8, !tbaa !295
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !303 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZN7easylog8record_tD2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i133
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !295
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #58
  br label %_ZN7easylog8record_tD2Ev.exit137

_ZN7easylog8record_tD2Ev.exit137:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  br label %bb.bn

bb.bj:                                            ; preds = %.invoke, %bb.av, %bb.as, %bb.am
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bk:                                            ; preds = %bb.aw
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.bl:                                            ; preds = %bb.bi, %bb.bc, %bb.ax
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body127

.body127:                                         ; preds = %bb.bh, %bb.bl
  %eh.lpad-body128 = phi { ptr, i32 } [ %i.go, %bb.bl ], [ %i.fu, %bb.bh ] ; 2 uses
  %i.gp = load ptr, ptr %12, align 8, !tbaa !303  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %.body127
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !295
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %.body127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.gn, %bb.bk ], [ %eh.lpad-body128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %eh.lpad-body128, %.body127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #45
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %bb.bj
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %i.gm, %bb.bj ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %10) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  br label %bb.gy

bb.bn:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit84, %_ZN7easylog8record_tD2Ev.exit137, %_ZN7easylog6loggerILm0EE8instanceEv.exit78
  %i.gu = load i32, ptr %7, align 8, !tbaa !440   ; 2 uses
  %.not = icmp eq i32 %i.gu, 0
  br i1 %.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.11346.0.copyload = load ptr, ptr %i.be, align 8, !tbaa !528
  %i.gv = insertvalue { i32, ptr } poison, i32 %i.gu, 0
  %i.gw = insertvalue { i32, ptr } %i.gv, ptr %.sroa.11346.0.copyload, 1
  br label %bb.gx

bb.bp:                                            ; preds = %bb.bn
  %i.gx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #63
  %i.gy = insertvalue { i32, ptr } { i32 99, ptr poison }, ptr %i.gx, 1
  br label %bb.gx

bb.bq:                                            ; preds = %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit
  %i.gz = load i16, ptr %8, align 4, !tbaa !295, !noalias !5083
  %i.ha = icmp eq i16 %i.gz, 2
  br i1 %i.ha, label %_ZN7coro_io6detail33should_create_dual_stack_acceptorERKN4asio2ip14basic_endpointINS2_3tcpEEE.exit.thread, label %_ZNK4asio2ip7address5to_v6Ev.exit.i.i

_ZNK4asio2ip7address5to_v6Ev.exit.i.i:            ; preds = %bb.bq
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.5.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.5.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 20
  %.sroa.5.sroa.16.0.copyload.i.i = load i8, ptr %.sroa.5.sroa.16.0..sroa_idx.i.i, align 4
  %.sroa.5.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 21
  %.sroa.5.sroa.17.0.copyload.i.i = load i8, ptr %.sroa.5.sroa.17.0..sroa_idx.i.i, align 1
  %.sroa.5.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 22
  %.sroa.5.sroa.18.0.copyload.i.i = load i8, ptr %.sroa.5.sroa.18.0..sroa_idx.i.i, align 2
  %i.hc = load <8 x i8>, ptr %i.hb, align 4
  %.fr = freeze <8 x i8> %i.hc
  %i.hd = icmp eq <8 x i8> %.fr, zeroinitializer  ; 2 uses
  %i.he = load <4 x i8>, ptr %.sroa.5.sroa.12.0..sroa_idx.i.i, align 4
  %.fr426 = freeze <4 x i8> %i.he
  %i.hf = icmp eq <4 x i8> %.fr426, zeroinitializer
  %i.hg = icmp eq i8 %.sroa.5.sroa.16.0.copyload.i.i, 0
  %.sroa.5.sroa.17.0.copyload.i.i.fr = freeze i8 %.sroa.5.sroa.17.0.copyload.i.i
  %i.hh = icmp eq i8 %.sroa.5.sroa.17.0.copyload.i.i.fr, 0
  %i.hi = icmp eq i8 %.sroa.5.sroa.18.0.copyload.i.i, 0
  %i.hj = shufflevector <8 x i1> %i.hd, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.hj, %i.hf
  %i.hk = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hl = shufflevector <8 x i1> %i.hk, <8 x i1> %i.hd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.hm = bitcast <8 x i1> %i.hl to i8
  %i.hn = icmp eq i8 %i.hm, -1
  %op.rdx = select i1 %i.hn, i1 %i.hg, i1 false
  %29 = freeze i1 %op.rdx
  %30 = and i1 %29, %i.hh
  %op.rdx425 = select i1 %30, i1 %i.hi, i1 false
  br i1 %op.rdx425, label %_ZN7coro_io6detail33should_create_dual_stack_acceptorERKN4asio2ip14basic_endpointINS2_3tcpEEE.exit, label %_ZN7coro_io6detail33should_create_dual_stack_acceptorERKN4asio2ip14basic_endpointINS2_3tcpEEE.exit.thread

_ZN7coro_io6detail33should_create_dual_stack_acceptorERKN4asio2ip14basic_endpointINS2_3tcpEEE.exit: ; preds = %_ZNK4asio2ip7address5to_v6Ev.exit.i.i
  %.sroa.5.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 23
  %.sroa.5.sroa.19.0.copyload.i.i = load i8, ptr %.sroa.5.sroa.19.0..sroa_idx.i.i, align 1
  %.sroa.5.sroa.19.0.copyload.i.i.fr = freeze i8 %.sroa.5.sroa.19.0.copyload.i.i
  %i.ho = icmp eq i8 %.sroa.5.sroa.19.0.copyload.i.i.fr, 0 ; 2 uses
  %spec.select = select i1 %i.ho, i32 1, i32 2
  br label %_ZN7coro_io6detail33should_create_dual_stack_acceptorERKN4asio2ip14basic_endpointINS2_3tcpEEE.exit.thread

_ZN7coro_io6detail33should_create_dual_stack_acceptorERKN4asio2ip14basic_endpointINS2_3tcpEEE.exit.thread: ; preds = %_ZN7coro_io6detail33should_create_dual_stack_acceptorERKN4asio2ip14basic_endpointINS2_3tcpEEE.exit, %bb.bq, %_ZNK4asio2ip7address5to_v6Ev.exit.i.i
  %i.hp = phi i1 [ false, %bb.bq ], [ %i.ho, %_ZN7coro_io6detail33should_create_dual_stack_acceptorERKN4asio2ip14basic_endpointINS2_3tcpEEE.exit ], [ false, %_ZNK4asio2ip7address5to_v6Ev.exit.i.i ]
  %i.hq = phi i32 [ 2, %bb.bq ], [ %spec.select, %_ZN7coro_io6detail33should_create_dual_stack_acceptorERKN4asio2ip14basic_endpointINS2_3tcpEEE.exit ], [ 2, %_ZNK4asio2ip7address5to_v6Ev.exit.i.i ]
  %i.hr = call { i32, ptr } @_ZN7coro_io6detail17init_tcp_acceptorERN4asio21basic_socket_acceptorINS1_2ip3tcpENS1_15any_io_executorEEERKNS3_14basic_endpointIS4_EENS0_14ipv6_only_modeE(ptr noundef nonnull align 8 dereferenceable(88) %i.bg, ptr noundef nonnull align 4 dereferenceable(28) %8, i32 noundef %i.hq) ; 5 uses
  %i.hs = extractvalue { i32, ptr } %i.hr, 0      ; 2 uses
  %i.ht = extractvalue { i32, ptr } %i.hr, 1      ; 2 uses
  %.not358 = icmp eq i32 %i.hs, 0
  br i1 %.not358, label %bb.cx, label %bb.br

bb.br:                                            ; preds = %_ZN7coro_io6detail33should_create_dual_stack_acceptorERKN4asio2ip14basic_endpointINS2_3tcpEEE.exit.thread
  %i.hu = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.hv = icmp eq i8 %i.hu, 0
  br i1 %i.hv, label %bb.bs, label %_ZN7easylog6loggerILm0EE8instanceEv.exit143, !prof !274

bb.bs:                                            ; preds = %bb.br
  %i.hw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  %.not.i142 = icmp eq i32 %i.hw, 0
  br i1 %.not.i142, label %_ZN7easylog6loggerILm0EE8instanceEv.exit143, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.hx = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #45 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit143

bb.bv:                                            ; preds = %bb.bt
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %common.resume

_ZN7easylog6loggerILm0EE8instanceEv.exit143:      ; preds = %bb.br, %bb.bs, %bb.bu
  %i.hz = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.ia = icmp slt i32 %i.hz, 6
  br i1 %i.ia, label %bb.bw, label %bb.gx

bb.bw:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit143
  %i.ib = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #45 ; 2 uses
  %i.ic = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %bb.bx, label %_ZN7easylog6loggerILm0EE8instanceEv.exit145, !prof !274

bb.bx:                                            ; preds = %bb.bw
  %i.ie = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  %.not.i144 = icmp eq i32 %i.ie, 0
  br i1 %.not.i144, label %_ZN7easylog6loggerILm0EE8instanceEv.exit145, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.if = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #45 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit145

bb.ca:                                            ; preds = %bb.by
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #45
  br label %common.resume

_ZN7easylog6loggerILm0EE8instanceEv.exit145:      ; preds = %bb.bw, %bb.bx, %bb.bz
  %i.ih = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.ii = icmp slt i64 %i.ih, 1
  br i1 %i.ii, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit148.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit148

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit148: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit145
  %.sroa.0.0.copyload.i2.i.i146 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !502
  %i.ij = sub nsw i64 %i.ib, %.sroa.0.0.copyload.i2.i.i146
  %i.ik = sdiv i64 %i.ij, 1000000
  %i.il = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.im = srem i64 %i.ik, %i.il
  %i.in = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.io = icmp slt i64 %i.im, %i.in
  br i1 %i.io, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit148.thread, label %bb.gx

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit148.thread: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit145, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit148
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #45
  store i8 91, ptr %14, align 1, !alias.scope !5084
  %.sroa.0.i.sroa.4.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %14, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.i.sroa.4.0..sroa_idx.i149, ptr noundef nonnull align 1 dereferenceable(24) @__const._ZZN7cinatra16coro_http_server6listenEvENKUlvE1_clEv.prefix, i64 24, i1 false), !tbaa.struct !516
  %.sroa.0.i.sroa.5.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %14, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i150, ptr noundef nonnull align 1 dereferenceable(3) @.str.1041, i64 3, i1 false), !tbaa.struct !517
  call void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %13, i64 %i.ib, i32 noundef 5, i64 27, ptr nonnull %14)
  %i.ip = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 10 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 6 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !304 ; 5 uses
  %i.is = icmp sgt i64 %i.ir, 9223372036854775787
  br i1 %i.is, label %.invoke418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152: ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit148.thread
  %i.it = add nsw i64 %i.ir, 20                   ; 3 uses
  %i.iu = load ptr, ptr %i.ip, align 8, !tbaa !303 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 8 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152
  %i.ix = icmp ult i64 %i.ir, 16
  call void @llvm.assume(i1 %i.ix)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i153: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152
  %i.iy = load i64, ptr %i.iv, align 8, !tbaa !295
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158
  %i.iz = phi i64 [ %i.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i153 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158 ]
  %.not.i.i.i155 = icmp ugt i64 %i.it, %i.iz
  br i1 %.not.i.i.i155, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.ir
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ja, ptr noundef nonnull align 1 dereferenceable(20) @.str.1034, i64 20, i1 false)
  br label %bb.cd

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, i64 noundef %i.ir, i64 noundef 0, ptr noundef nonnull @.str.1034, i64 noundef 20)
          to label %bb.cd unwind label %bb.ct

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  store i64 %i.it, ptr %i.iq, align 8, !tbaa !304
  %i.jb = load ptr, ptr %i.ip, align 8, !tbaa !303
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.it
  store i8 0, ptr %i.jc, align 1, !tbaa !295
  %i.jd = load i64, ptr %i.iq, align 8, !tbaa !304 ; 5 uses
  %i.je = and i64 %i.jd, -8
  %i.jf = icmp eq i64 %i.je, 9223372036854775800
  br i1 %i.jf, label %.invoke418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i161

.invoke418:                                       ; preds = %bb.cd, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit148.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.992) #59
          to label %.cont419 unwind label %bb.ct

.cont419:                                         ; preds = %.invoke418
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i161: ; preds = %bb.cd
  %i.jg = add nsw i64 %i.jd, 8                    ; 3 uses
  %i.jh = load ptr, ptr %i.ip, align 8, !tbaa !303 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.iv
  br i1 %i.ji, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i167: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i161
  %i.jj = icmp ult i64 %i.jd, 16
  call void @llvm.assume(i1 %i.jj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i162: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i161
  %i.jk = load i64, ptr %i.iv, align 8, !tbaa !295
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i163: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i167
  %i.jl = phi i64 [ %i.jk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i162 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i167 ]
  %.not.i.i.i164 = icmp ugt i64 %i.jg, %i.jl
  br i1 %.not.i.i.i164, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i163
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jd
  store i64 2322294380849947936, ptr %i.jm, align 1
  br label %bb.cg

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i163
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, i64 noundef %i.jd, i64 noundef 0, ptr noundef nonnull @.str.1033, i64 noundef 8)
          to label %bb.cg unwind label %bb.ct

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  store i64 %i.jg, ptr %i.iq, align 8, !tbaa !304
  %i.jn = load ptr, ptr %i.ip, align 8, !tbaa !303
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jg
  store i8 0, ptr %i.jo, align 1, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #45
  %i.jp = load ptr, ptr %i.ht, align 8, !tbaa !279, !noalias !5085
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !5085
  invoke void %i.jr(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.ht, i32 noundef %i.hs)
          to label %_ZNKSt10error_code7messageB5cxx11Ev.exit172 unwind label %bb.cu, !inline_history !30

_ZNKSt10error_code7messageB5cxx11Ev.exit172:      ; preds = %bb.cg
  %i.js = load ptr, ptr %15, align 8, !tbaa !303  ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !304 ; 6 uses
  %i.jv = load i64, ptr %i.iq, align 8, !tbaa !304 ; 5 uses
  %i.jw = sub i64 9223372036854775807, %i.jv
  %i.jx = icmp ult i64 %i.jw, %i.ju
end_hunk_0
