Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZN7coro_io6detail24ib_socket_shared_state_t15add_recv_bufferENS_11ib_buffer_tEm:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 56 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !290 ; 5 uses
  %i.ep = icmp sgt i64 %i.eo, 9223372036854775795
  br i1 %i.ep, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i38

.invoke:                                          ; preds = %bb.ah, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #52
          to label %.cont unwind label %bb.ax

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i38: ; preds = %bb.ah
  %i.eq = add nsw i64 %i.eo, 12                   ; 3 uses
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !286 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 64 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i38
  %i.eu = icmp ult i64 %i.eo, 16
  call void @llvm.assume(i1 %i.eu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i38
  %i.ev = load i64, ptr %i.es, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i44
  %i.ew = phi i64 [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i44 ]
  %.not.i.i.i41 = icmp ugt i64 %i.eq, %i.ew
  br i1 %.not.i.i.i41, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ex, ptr noundef nonnull align 1 dereferenceable(12) @.str.411, i64 12, i1 false)
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.em, i64 noundef %i.eo, i64 noundef 0, ptr noundef nonnull @.str.411, i64 noundef 12)
          to label %bb.ak unwind label %bb.ax

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  store i64 %i.eq, ptr %i.en, align 8, !tbaa !290
  %i.ey = load ptr, ptr %i.em, align 8, !tbaa !286
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq
  store i8 0, ptr %i.ez, align 1, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.fa = load i32, ptr %i.ai, align 8, !tbaa !2609 ; 4 uses
  %i.fb = load i32, ptr %i.ak, align 4, !tbaa !2598 ; 4 uses
  %i.fc = icmp ugt i32 %i.fa, %i.fb
  br i1 %i.fc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !2253
  %i.ff = load ptr, ptr %i.ah, align 8, !tbaa !2249
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = sdiv exact i64 %i.fi, 24
  %i.fk = zext i32 %i.fb to i64
  %i.fl = zext i32 %i.fa to i64
  %i.fm = sub nsw i64 %i.fk, %i.fl
  %i.fn = add nsw i64 %i.fm, %i.fj
  br label %_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit48

bb.am:                                            ; preds = %bb.ak
  %i.fo = icmp eq i32 %i.fa, %i.fb
  br i1 %i.fo, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fq = load i8, ptr %i.fp, align 8, !range !414
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit48, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !2253
  %i.fu = load ptr, ptr %i.ah, align 8, !tbaa !2249
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = sdiv exact i64 %i.fx, 24
  br label %_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit48

bb.ap:                                            ; preds = %bb.am
  %i.fz = sub nuw i32 %i.fb, %i.fa
  %i.ga = zext i32 %i.fz to i64
  br label %_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit48

_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit48: ; preds = %bb.al, %bb.an, %bb.ao, %bb.ap
  %.0.i47 = phi i64 [ %i.fn, %bb.al ], [ %i.ga, %bb.ap ], [ %i.fy, %bb.ao ], [ 0, %bb.an ]
  store i64 %.0.i47, ptr %i.c, align 8, !tbaa !411
  %i.gb = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsImEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.el, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.aq unwind label %bb.ay

bb.aq:                                            ; preds = %_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit48
  %i.gc = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.gd = icmp eq i8 %i.gc, 0
  br i1 %i.gd, label %bb.ar, label %_ZN7easylog6loggerILm0EE8instanceEv.exit50, !prof !281

bb.ar:                                            ; preds = %bb.aq
  %i.ge = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  %.not.i49 = icmp eq i32 %i.ge, 0
  br i1 %.not.i49, label %_ZN7easylog6loggerILm0EE8instanceEv.exit50, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gf = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit50

bb.au:                                            ; preds = %bb.as
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit50:       ; preds = %bb.at, %bb.ar, %bb.aq
  %i.gh = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !414, !noundef !366
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.av, !prof !291

bb.av:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit50
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %i.gb)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %bb.ay

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit50, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.gj = load ptr, ptr %i.ch, align 8, !tbaa !286 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.cn
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit
  %i.gl = load i64, ptr %i.cn, align 8, !tbaa !279
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !286 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZN7easylog8record_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !279
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #50
  br label %_ZN7easylog8record_tD2Ev.exit

_ZN7easylog8record_tD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.bb

bb.aw:                                            ; preds = %bb.w, %bb.u
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ax:                                            ; preds = %.invoke, %bb.aj, %bb.af, %bb.ag, %_ZNK7coro_io6detail13circle_bufferINS_11ib_buffer_tEE4sizeEv.exit27
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.av, %_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit48
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.au, %bb.ay
  %eh.lpad-body = phi { ptr, i32 } [ %i.gv, %bb.ay ], [ %i.gg, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.az

bb.az:                                            ; preds = %.body, %bb.ax
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.gu, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.az ], [ %i.gt, %bb.aw ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.cd

bb.bb:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZN7easylog8record_tD2Ev.exit, %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 449
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !1306, !range !414, !noundef !366
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.cc, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %8 = load i32, ptr %i.g, align 4, !tbaa !1615
  %9 = load i32, ptr %i.e, align 8, !tbaa !1418
  %10 = icmp ne i32 %8, %9
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ha = load i8, ptr %i.gz, align 8, !range !414
  %i.hb = trunc nuw i8 %i.ha to i1
  %.not62 = select i1 %10, i1 true, i1 %i.hb
  br i1 %.not62, label %bb.bd, label %bb.cc

bb.bd:                                            ; preds = %bb.bc
  %i.hc = load i64, ptr %i.a, align 8, !tbaa !411
  %i.hd = load i32, ptr %i.ai, align 8, !tbaa !2609 ; 4 uses
  %i.he = load i32, ptr %i.ak, align 4, !tbaa !2598 ; 4 uses
  %i.hf = icmp ugt i32 %i.hd, %i.he
  br i1 %i.hf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !2253
  %i.hi = load ptr, ptr %i.ah, align 8, !tbaa !2249
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = sdiv exact i64 %i.hl, 24
  %i.hn = zext i32 %i.he to i64
  %i.ho = zext i32 %i.hd to i64
  %i.hp = sub nsw i64 %i.hn, %i.ho
  %i.hq = add nsw i64 %i.hp, %i.hm
  br label %_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit53

bb.bf:                                            ; preds = %bb.bd
  %i.hr = icmp eq i32 %i.hd, %i.he
  br i1 %i.hr, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ht = load i8, ptr %i.hs, align 8, !range !414
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit53, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !2253
  %i.hx = load ptr, ptr %i.ah, align 8, !tbaa !2249
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = sdiv exact i64 %i.ia, 24
  br label %_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit53

bb.bi:                                            ; preds = %bb.bf
  %i.ic = sub nuw i32 %i.he, %i.hd
  %i.id = zext i32 %i.ic to i64
  br label %_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit53

_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit53: ; preds = %bb.be, %bb.bg, %bb.bh, %bb.bi
  %.0.i52 = phi i64 [ %i.hq, %bb.be ], [ %i.id, %bb.bi ], [ %i.ib, %bb.bh ], [ 0, %bb.bg ]
  %i.ie = add i64 %.0.i52, %2
  %i.if = icmp ult i64 %i.hc, %i.ie
  br i1 %i.if, label %bb.bj, label %bb.cc

bb.bj:                                            ; preds = %_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit53
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ih, null
  br i1 %.not, label %bb.bk, label %.thread

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !1616 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8186)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 72
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !1444, !noalias !8186 ; 3 uses
  store ptr %i.il, ptr %6, align 8, !tbaa !1444, !alias.scope !8186
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 80
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !308, !noalias !8186 ; 3 uses
  store ptr %i.io, ptr %i.im, align 8, !tbaa !308, !alias.scope !8186
  %.not.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i, label %_ZNK7coro_io11ib_device_t15get_buffer_poolEv.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 3 uses
  %i.iq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279, !noalias !8186
  %.not.i.i.i.i.i = icmp eq i8 %i.iq, 0
  br i1 %.not.i.i.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ir = load i32, ptr %i.ip, align 4, !tbaa !280, !noalias !8186
  %i.is = add nsw i32 %i.ir, 1
  store i32 %i.is, ptr %i.ip, align 4, !tbaa !280, !noalias !8186
  br label %_ZNK7coro_io11ib_device_t15get_buffer_poolEv.exit

bb.bn:                                            ; preds = %bb.bl
  %i.it = atomicrmw volatile add ptr %i.ip, i32 1 acq_rel, align 4, !noalias !8186 ; 0 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !1444
  br label %_ZNK7coro_io11ib_device_t15get_buffer_poolEv.exit

_ZNK7coro_io11ib_device_t15get_buffer_poolEv.exit: ; preds = %bb.bk, %bb.bm, %bb.bn
  %i.iu = phi ptr [ %i.il, %bb.bk ], [ %i.il, %bb.bm ], [ %.pre, %bb.bn ]
  invoke void @_ZN7coro_io16ib_buffer_pool_t10get_bufferEi(ptr dead_on_unwind nonnull writable sret(%"struct.coro_io::ib_buffer_t") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1352) %i.iu, i32 noundef -1)
          to label %bb.bo unwind label %bb.bw

bb.bo:                                            ; preds = %_ZNK7coro_io11ib_device_t15get_buffer_poolEv.exit
  %i.iv = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN7coro_io11ib_buffer_taSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.bp unwind label %bb.bx     ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #36
  %i.iw = load ptr, ptr %i.im, align 8, !tbaa !308 ; 8 uses
  %.not.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i, label %bb.bz, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 4 uses
  %i.iy = load atomic i64, ptr %i.ix acquire, align 8 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 4294967297
  %i.ja = trunc i64 %i.iy to i32                  ; 2 uses
  br i1 %i.iz, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.ix, align 8, !tbaa !310
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store i32 0, ptr %i.jb, align 4, !tbaa !311
  %i.jc = load ptr, ptr %i.iw, align 8, !tbaa !263
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #36, !inline_history !89
  %i.jf = load ptr, ptr %i.iw, align 8, !tbaa !263
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #36, !inline_history !89
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bq
  %i.ji = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i54 = icmp eq i8 %i.ji, 0
  br i1 %.not.i.i.i54, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jj = add nsw i32 %i.ja, -1
  store i32 %i.jj, ptr %i.ix, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.jk = atomicrmw volatile add ptr %i.ix, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i = phi i32 [ %i.ja, %bb.bt ], [ %i.jk, %bb.bu ]
  %i.jl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.jl, label %bb.bv, label %bb.bz, !prof !291

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #36
  br label %bb.bz

bb.bw:                                            ; preds = %_ZNK7coro_io11ib_device_t15get_buffer_poolEv.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bo
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #36
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn17 = phi { ptr, i32 } [ %i.jn, %bb.bx ], [ %i.jm, %bb.bw ]
  call void @_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.br, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.pr = load ptr, ptr %i.ig, align 8             ; 2 uses
  %.not63.a = icmp eq ptr %.pr, null
  br i1 %.not63.a, label %.thread59, label %.thread

.thread:                                          ; preds = %bb.bj, %bb.bz
  %.in = phi ptr [ %i.ih, %bb.bj ], [ %.pr, %bb.bz ]
  %i.jo = ptrtoint ptr %.in to i64
  %i.jp = load <2 x ptr>, ptr %1, align 8, !tbaa !376
  store <2 x ptr> %i.jp, ptr %7, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 16, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !1423
  store ptr %i.js, ptr %i.jq, align 16, !tbaa !1423
  %i.jt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !1424
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !1424
  %i.jw = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jz = load <2 x ptr>, ptr %i.jx, align 8, !tbaa !376
  store ptr null, ptr %i.jy, align 8, !tbaa !308
  store <2 x ptr> %i.jz, ptr %i.jw, align 16, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jr, i8 0, i64 24, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %i.jo, ptr %i.ka, align 16, !tbaa !1426
  store ptr null, ptr %i.ig, align 8, !tbaa !1426
  %i.kb = invoke { i32, ptr } @_ZN7coro_io6detail15ib_buffer_queue9push_recvENS_11ib_buffer_tEPNS0_24ib_socket_shared_state_tE(ptr noundef nonnull align 8 dereferenceable(33) %i.d, ptr nofreeobj noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull %0)
          to label %bb.ca unwind label %bb.cb
end_hunk_0
