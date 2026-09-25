Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/example?download=true
inline.NumInlined: 58056
inline.NumDeleted: 19618
loop-unroll.NumCompletelyUnrolled: 80
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN7cinatra16coro_http_client13async_read_wsEv.resume:resume.entry
          to label %.from._ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit161 unwind label %bb.aq, !inline_history !97

bb.aq:                                            ; preds = %bb.ap
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  tail call void @__clang_call_terminate(ptr %i.hb) #57
  unreachable

AfterCoroSuspend613:                              ; preds = %resume.entry
  %i.hc = load ptr, ptr %.reload.addr824, align 8, !tbaa !1572, !noalias !13158
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNO12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE6resultEv(ptr noundef nonnull align 8 dereferenceable(56) %i.hd)
          to label %.noexc140 unwind label %bb.ao ; 3 uses

.noexc140:                                        ; preds = %AfterCoroSuspend613
  %i.hf = load <2 x i32>, ptr %i.he, align 8
  %.sroa.0269.0.copyload = load i32, ptr %i.he, align 8
  %.sroa.6271.sroa.5.0..sroa.6271.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.sroa.6271.sroa.5.0.copyload = load ptr, ptr %.sroa.6271.sroa.5.0..sroa.6271.0..sroa_idx.sroa_idx, align 8
  %i.hg = load ptr, ptr %.reload.addr824, align 8, !tbaa !1572, !noalias !13158 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  invoke void %i.hi(ptr %i.hg)
          to label %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit146 unwind label %bb.ao, !inline_history !227

_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit146: ; preds = %.noexc140
  store ptr null, ptr %.reload.addr824, align 8, !tbaa !1572, !noalias !13158
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !491 ; 8 uses
  %.not.i.i147 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i147, label %_ZNSt12__shared_ptrIN7cinatra16coro_http_client8socket_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, label %bb.ar

bb.ar:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit146
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 4 uses
  %i.hm = load atomic i64, ptr %i.hl acquire, align 8 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 4294967297
  %i.ho = trunc i64 %i.hm to i32                  ; 2 uses
  br i1 %i.hn, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.hl, align 8, !tbaa !480
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store i32 0, ptr %i.hp, align 4, !tbaa !481
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !279
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8
  tail call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #45, !inline_history !7
  %i.ht = load ptr, ptr %i.hk, align 8, !tbaa !279
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  tail call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #45, !inline_history !7
  br label %_ZNSt12__shared_ptrIN7cinatra16coro_http_client8socket_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

bb.at:                                            ; preds = %bb.ar
  %i.hw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i148 = icmp eq i8 %i.hw, 0
  br i1 %.not.i.i.i148, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149.from.691

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149.from.691: ; preds = %bb.at
  %i.hx = add nsw i32 %i.ho, -1
  store i32 %i.hx, ptr %i.hl, align 8, !tbaa !296
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149.from.: ; preds = %bb.at
  %i.hy = atomicrmw volatile add ptr %i.hl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149.from.691
  %.0.i.i.i.i150 = phi i32 [ %i.ho, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149.from.691 ], [ %i.hy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149.from. ]
  %i.hz = icmp eq i32 %.0.i.i.i.i150, 1
  br i1 %i.hz, label %bb.au, label %_ZNSt12__shared_ptrIN7cinatra16coro_http_client8socket_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, !prof !300

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #45
  br label %_ZNSt12__shared_ptrIN7cinatra16coro_http_client8socket_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

_ZNSt12__shared_ptrIN7cinatra16coro_http_client8socket_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151: ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit146, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149, %bb.au
  %.not443 = icmp eq i32 %.sroa.0269.0.copyload, 0
  br i1 %.not443, label %.thread412, label %bb.av

bb.av:                                            ; preds = %_ZNSt12__shared_ptrIN7cinatra16coro_http_client8socket_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151
  %i.ia = load ptr, ptr %.reload.addr830, align 8, !tbaa !2744 ; 3 uses
  store i32 0, ptr %.reload.addr824, align 8, !tbaa !440
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ic = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #63
  store ptr %i.ic, ptr %i.ib, align 8, !tbaa !441
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !474
  %i.if = invoke noundef i32 @_ZN4asio6detail10socket_ops8shutdownEiiRSt10error_code(i32 noundef %i.ie, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr824)
          to label %.noexc152 unwind label %.from.743 ; 0 uses

.noexc152:                                        ; preds = %bb.av
  %i.ig = load ptr, ptr %i.ia, align 8, !tbaa !471
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  %i.ii = invoke { i32, ptr } @_ZN4asio6detail28reactive_socket_service_base5closeERNS1_24base_implementation_typeERSt10error_code(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, ptr noundef nonnull align 8 dereferenceable(16) %i.id, ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr824)
          to label %bb.aw unwind label %.from.743 ; 0 uses

bb.aw:                                            ; preds = %.noexc152
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 88
  store atomic i8 1, ptr %i.ik seq_cst, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.im = load i8, ptr %i.ij, align 8, !tbaa !588 ; 2 uses
  %.not.i.i.i.i.i155 = icmp eq i8 %i.im, -1
  br i1 %.not.i.i.i.i.i155, label %.thread383.from..thread420, label %bb.ax, !prof !300

bb.ax:                                            ; preds = %bb.aw
  %i.in = icmp ne i8 %i.im, 2
  %i.io = load ptr, ptr %i.il, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i156 = icmp eq ptr %i.io, null
  %or.cond.i.i.i.i.i.i157 = select i1 %i.in, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i156
  br i1 %or.cond.i.i.i.i.i.i157, label %.thread383.from..thread420, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(57) %i.il) #45
  br label %.thread383.from..thread420

.thread383.from..thread420:                       ; preds = %bb.aw, %bb.ax, %bb.ay
  store <2 x i32> %i.hf, ptr %i.il, align 8
  %.sroa.17.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.6271.sroa.5.0.copyload, ptr %.sroa.17.0..sroa_idx308, align 8, !tbaa !528
  %.sroa.20.0..sroa_idx319 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 404, ptr %.sroa.20.0..sroa_idx319, align 8, !tbaa !296
  %.sroa.26.0..sroa_idx329 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %.sroa.26.0..sroa_idx329, align 4, !tbaa !592
  %.sroa.27340.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.30.0..sroa_idx363 = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27340.0..sroa_idx345, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.30.0..sroa_idx363, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.30.reload.addr, i64 16, i1 false), !tbaa.struct !4023
  store i8 1, ptr %i.ij, align 8, !tbaa !588
  br label %.thread383

.from._ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit161: ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit161.from., %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit161.from.693, %bb.ao, %bb.ap
  %.pn61 = phi { ptr, i32 } [ %i.go, %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit161.from. ], [ %i.gv, %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit161.from.693 ], [ %i.gw, %bb.ao ], [ %i.gw, %bb.ap ]
  tail call void @_ZNSt12__shared_ptrIN7cinatra16coro_http_client8socket_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.reload.addr833) #45
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

.from.743:                                        ; preds = %bb.av, %.noexc152
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

.thread412:                                       ; preds = %_ZNSt12__shared_ptrIN7cinatra16coro_http_client8socket_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151
  %.reload.addr818 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.reload819 = load i16, ptr %.reload.addr818, align 8, !tbaa !13142
  %.reload.addr809 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.reload.addr785 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.reload786 = load ptr, ptr %.reload.addr785, align 8, !tbaa !13142 ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.reload786, i64 120 ; 2 uses
  %i.ir = and i16 %.reload819, 15
  %i.is = icmp eq i16 %i.ir, 8
  %i.it = getelementptr inbounds nuw i8, ptr %.reload786, i64 136
  %i.iu = getelementptr inbounds nuw i8, ptr %.reload786, i64 112 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !1439 ; 4 uses
  %.spill.addr820 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.iv, ptr %.spill.addr820, align 8
  %i.iw = load ptr, ptr %i.it, align 8, !tbaa !1407 ; 3 uses
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = load ptr, ptr %i.iq, align 8, !tbaa !1441
  %i.jb = icmp ult ptr %i.ja, %i.iw
  br i1 %i.jb, label %bb.az, label %_ZN4asio15basic_streambufISaIcEE7consumeEm.exit166

bb.az:                                            ; preds = %.thread412
  %i.jc = getelementptr inbounds nuw i8, ptr %.reload786, i64 168
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !1405
  %i.je = getelementptr inbounds nuw i8, ptr %.reload786, i64 104
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !1440
  store ptr %i.iw, ptr %i.iq, align 8, !tbaa !1441
  br label %_ZN4asio15basic_streambufISaIcEE7consumeEm.exit166

_ZN4asio15basic_streambufISaIcEE7consumeEm.exit166: ; preds = %bb.az, %.thread412
  %sext.i165 = shl i64 %i.iz, 32
  %i.jf = ashr exact i64 %sext.i165, 32
  %i.jg = getelementptr inbounds i8, ptr %i.iv, i64 %i.jf
  store ptr %i.jg, ptr %i.iu, align 8, !tbaa !1439
  br i1 %i.is, label %.from..lr.ph.i.i, label %bb.cb

.from..lr.ph.i.i:                                 ; preds = %_ZN4asio15basic_streambufISaIcEE7consumeEm.exit166
  %scevgep.i752 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.jh, ptr %.reload.addr824, align 8, !tbaa !299
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.jh, ptr noundef nonnull align 1 dereferenceable(5) @.str.1346, i64 5, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i64 5, ptr %i.ji, align 8, !tbaa !304
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 0, ptr %i.jj, align 1, !tbaa !295
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  store ptr %i.jk, ptr %.reload.addr825, align 8, !tbaa !299, !alias.scope !13159
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 7, ptr %i.jl, align 8, !tbaa !304, !alias.scope !13159
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 215
  store i8 0, ptr %i.jm, align 1, !tbaa !295
  store i16 -6141, ptr %i.jk, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 210
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.jn, ptr noundef nonnull align 1 dereferenceable(5) @.str.1346, i64 5, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 142 ; 2 uses
  store i16 -30840, ptr %i.jo, align 2
  %i.jp = tail call i32 @rand() #45               ; 6 uses
  store i32 %i.jp, ptr %scevgep.i752, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.jp, ptr %1, align 8
  %2 = trunc i32 %i.jp to i8
  %i.jq = lshr i32 %i.jp, 8
  %i.jr = trunc i32 %i.jq to i8
  %3 = lshr i32 %i.jp, 16
  %i.js = trunc i32 %3 to i8
  %i.jt = load <4 x i8>, ptr %i.jk, align 8, !tbaa !295
  %4 = bitcast i32 %i.jp to <4 x i8>
  %i.ju = xor <4 x i8> %i.jt, %4
  store <4 x i8> %i.ju, ptr %i.jk, align 8, !tbaa !295
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 4, !tbaa !295
  %i.jx = xor i8 %i.jw, %2
  store i8 %i.jx, ptr %i.jv, align 4, !tbaa !295
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 213 ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !295
  %i.ka = xor i8 %i.jz, %i.jr
  store i8 %i.ka, ptr %i.jy, align 1, !tbaa !295
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 214 ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 2, !tbaa !295
  %i.kd = xor i8 %i.kc, %i.js
  store i8 %i.kd, ptr %i.kb, align 2, !tbaa !295
  %.pre509 = load i64, ptr %i.ji, align 8, !tbaa !304 ; 2 uses
  %.pre510 = load ptr, ptr %.reload.addr824, align 8
  %i.ke = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #60
          to label %bb.ba unwind label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit227.from.727 ; 6 uses

bb.ba:                                            ; preds = %.from..lr.ph.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.not.i183 = icmp eq i64 %.pre509, 0
  %spec.select.i184 = select i1 %.not.i183, ptr null, ptr %.pre510
  store ptr %i.ke, ptr %.reload.addr826, align 8, !tbaa !1428
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 32 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.kg, ptr %i.kh, align 8, !tbaa !1427
  store ptr %i.jo, ptr %i.ke, align 8
  %.sroa.5256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i64 6, ptr %.sroa.5256.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store ptr %spec.select.i184, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  store i64 %.pre509, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.kg, ptr %i.ki, align 8, !tbaa !1429
  %i.kj = load ptr, ptr %i.kf, align 8, !tbaa !491 ; 2 uses
  %i.kk = load <2 x ptr>, ptr %.reload.addr830, align 8, !tbaa !325
  store <2 x ptr> %i.kk, ptr %.reload.addr829, align 8, !tbaa !325
  %.not.i.i.i188 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i188, label %_ZNSt10shared_ptrIN7cinatra16coro_http_client8socket_tEEC2ERKS3_.exit190, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 3 uses
  %i.km = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i.i189 = icmp eq i8 %i.km, 0
  br i1 %.not.i.i.i.i189, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kn = load i32, ptr %i.kl, align 4, !tbaa !296
  %i.ko = add nsw i32 %i.kn, 1
  store i32 %i.ko, ptr %i.kl, align 4, !tbaa !296
  br label %_ZNSt10shared_ptrIN7cinatra16coro_http_client8socket_tEEC2ERKS3_.exit190

bb.bd:                                            ; preds = %bb.bb
  %i.kp = atomicrmw volatile add ptr %i.kl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7cinatra16coro_http_client8socket_tEEC2ERKS3_.exit190

_ZNSt10shared_ptrIN7cinatra16coro_http_client8socket_tEEC2ERKS3_.exit190: ; preds = %bb.bd, %bb.bc, %bb.ba
  %.reload.addr800 = getelementptr inbounds nuw i8, ptr %0, i64 395
  %.reload801 = load i8, ptr %.reload.addr800, align 1, !tbaa !13142
  %.reload.addr767 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.reload768 = load ptr, ptr %.reload.addr767, align 8, !tbaa !13142
  %i.kq = trunc nuw i8 %.reload801 to i1
  invoke void @_ZN7cinatra16coro_http_client14async_write_wsIRSt6vectorIN4asio12const_bufferESaIS4_EESt10shared_ptrINS0_8socket_tEEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEET0_OT_b(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::coro::Lazy.1170") align 8 %.reload.addr832, ptr noundef nonnull align 8 dereferenceable(4448) %.reload768, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %.reload.addr829, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr826, i1 noundef zeroext %i.kq) #71
          to label %bb.be unwind label %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit221.from.720

bb.be:                                            ; preds = %_ZNSt10shared_ptrIN7cinatra16coro_http_client8socket_tEEC2ERKS3_.exit190
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13160)
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !549, !noalias !13160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13161)
  %i.kt = load ptr, ptr %.reload.addr832, align 8, !tbaa !1572, !noalias !13162 ; 4 uses
  %.not.i.i.i191 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i191, label %bb.bf, label %AfterCoroSave615, !prof !300

bb.bf:                                            ; preds = %bb.be
  %i.ku = tail call ptr @__cxa_allocate_exception(i64 16) #45, !noalias !13162 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ku, ptr noundef nonnull @.str.1079)
          to label %bb.bg unwind label %.body194.from.717, !noalias !13162

bb.bg:                                            ; preds = %bb.bf
  invoke void @__cxa_throw(ptr nonnull %i.ku, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #59
          to label %.noexc193 unwind label %.body194.from.716

.noexc193:                                        ; preds = %bb.bg
  unreachable

.body194.from.717:                                ; preds = %bb.bf
  %i.kv = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.ku) #45, !noalias !13162
  br label %.body194

AfterCoroSave615:                                 ; preds = %bb.be
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  store ptr %i.ks, ptr %i.kw, align 8, !tbaa !549, !noalias !13162
  store ptr null, ptr %.reload.addr832, align 8, !tbaa !1572, !noalias !13162
  store ptr %i.kt, ptr %.reload.addr836, align 8, !alias.scope !13163
  store i8 3, ptr %index.addr, align 2
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store ptr %0, ptr %i.kx, align 8, !tbaa !325
  %i.ky = load ptr, ptr %.reload.addr836, align 8, !tbaa !1572 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !1631
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %bb.bh, label %_ZN7cinatra16coro_http_client13async_read_wsEv.__await_suspend_wrapper__await3.exit

bb.bh:                                            ; preds = %AfterCoroSave615
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !1630
  store ptr %i.ld, ptr %i.kz, align 8, !tbaa !1631
  %.sroa.0.0.copyload.i.pre.i6 = load ptr, ptr %.reload.addr836, align 8, !tbaa !325
  br label %_ZN7cinatra16coro_http_client13async_read_wsEv.__await_suspend_wrapper__await3.exit

_ZN7cinatra16coro_http_client13async_read_wsEv.__await_suspend_wrapper__await3.exit: ; preds = %bb.bh, %AfterCoroSave615
  %.sroa.0.0.copyload.i.i5 = phi ptr [ %i.ky, %AfterCoroSave615 ], [ %.sroa.0.0.copyload.i.pre.i6, %bb.bh ] ; 2 uses
  %i.le = load ptr, ptr %.sroa.0.0.copyload.i.i5, align 8
  musttail call void %i.le(ptr nonnull %.sroa.0.0.copyload.i.i5)
  ret void

_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit227.from.727: ; preds = %.from..lr.ph.i.i
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit227

_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit221.from.720: ; preds = %_ZNSt10shared_ptrIN7cinatra16coro_http_client8socket_tEEC2ERKS3_.exit190
  %i.lg = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit221

.body194.from.716:                                ; preds = %bb.bg
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  br label %.body194

AfterCoroSuspend617:                              ; preds = %resume.entry
  %i.li = load ptr, ptr %.reload.addr836, align 8, !tbaa !1572, !noalias !13164
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNO12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE6resultEv(ptr noundef nonnull align 8 dereferenceable(56) %i.lj)
          to label %.noexc197 unwind label %bb.bt ; 0 uses

.noexc197:                                        ; preds = %AfterCoroSuspend617
  %i.ll = load ptr, ptr %.reload.addr836, align 8, !tbaa !1572, !noalias !13164 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8
  invoke void %i.ln(ptr %i.ll)
          to label %_ZN12async_simple4coro6detail15LazyAwaiterBaseISt4pairISt10error_codemEED2Ev.exit201 unwind label %bb.bt, !inline_history !227

_ZN12async_simple4coro6detail15LazyAwaiterBaseISt4pairISt10error_codemEED2Ev.exit201: ; preds = %.noexc197
  store ptr null, ptr %.reload.addr836, align 8, !tbaa !1572, !noalias !13164
  %i.lo = load ptr, ptr %.reload.addr832, align 8, !tbaa !1572 ; 3 uses
  %.not.i202 = icmp eq ptr %i.lo, null
  br i1 %.not.i202, label %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit203, label %bb.bi

bb.bi:                                            ; preds = %_ZN12async_simple4coro6detail15LazyAwaiterBaseISt4pairISt10error_codemEED2Ev.exit201
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8
  invoke void %i.lq(ptr nonnull %i.lo)
          to label %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit203 unwind label %bb.bj, !inline_history !97

bb.bj:                                            ; preds = %bb.bi
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  tail call void @__clang_call_terminate(ptr %i.ls) #57
  unreachable

_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit203: ; preds = %bb.bi, %_ZN12async_simple4coro6detail15LazyAwaiterBaseISt4pairISt10error_codemEED2Ev.exit201
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !491 ; 8 uses
  %.not.i.i204 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i204, label %_ZNSt12__shared_ptrIN7cinatra16coro_http_client8socket_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208, label %bb.bk

bb.bk:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EED2Ev.exit203
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 4 uses
  %i.lw = load atomic i64, ptr %i.lv acquire, align 8 ; 2 uses
  %i.lx = icmp eq i64 %i.lw, 4294967297
  %i.ly = trunc i64 %i.lw to i32                  ; 2 uses
  br i1 %i.lx, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.lv, align 8, !tbaa !480
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  store i32 0, ptr %i.lz, align 4, !tbaa !481
  %i.ma = load ptr, ptr %i.lu, align 8, !tbaa !279
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8
  tail call void %i.mc(ptr noundef nonnull align 8 dereferenceable(16) %i.lu) #45, !inline_history !7
  %i.md = load ptr, ptr %i.lu, align 8, !tbaa !279
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.mf = load ptr, ptr %i.me, align 8
  tail call void %i.mf(ptr noundef nonnull align 8 dereferenceable(16) %i.lu) #45, !inline_history !7
  br label %_ZNSt12__shared_ptrIN7cinatra16coro_http_client8socket_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208

bb.bm:                                            ; preds = %bb.bk
  %i.mg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i205 = icmp eq i8 %i.mg, 0
  br i1 %.not.i.i.i205, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206.from.708

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206.from.708: ; preds = %bb.bm
  %i.mh = add nsw i32 %i.ly, -1
  store i32 %i.mh, ptr %i.lv, align 8, !tbaa !296
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206.from.: ; preds = %bb.bm
  %i.mi = atomicrmw volatile add ptr %i.lv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206.from.708
  %.0.i.i.i.i207 = phi i32 [ %i.ly, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206.from.708 ], [ %i.mi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206.from. ]
  %i.mj = icmp eq i32 %.0.i.i.i.i207, 1
  br i1 %i.mj, label %bb.bn, label %_ZNSt12__shared_ptrIN7cinatra16coro_http_client8socket_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208, !prof !300
end_hunk_0
